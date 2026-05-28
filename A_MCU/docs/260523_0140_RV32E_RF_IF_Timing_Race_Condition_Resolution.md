# RV32E RF Interface 래치 타이밍 레이스 컨디션 해결 정리

## 1. 발견된 문제점
RV32E 모드(`RV32E_MODE=1`) 하에서 RISC-V 공식 Compliance Test 37종을 전수 검증하기 위해 E2E Regression 시뮬레이션을 돌리던 중, `add` 테스트 케이스에서 mismatch 오류가 검출되었습니다.
- **오류 발생 로그 예시**:
  ```
  [SYS_CLK] TIME: 6116969, PC: 000000e4, ack: 1, inst: 00c58733, rreq: 1, wreq: 0, ready: 0
      [TB_MON] rf_if_i_rreq=1, rf_if_i_rreg0=11, rf_if_rreg0_latched=15, has_fetched_first_insn=1
      READ: rreg0=31 (rdata0=18), rreg1=0 (rdata1=0)
  ```
  `add x14, x11, x12` 명령어(`inst: 00c58733`)가 Fetch되는 시점에, RF 인터페이스(`serv_rf_ram_if.v`)에 인가되는 `i_rreg0`은 11(x11)이지만 실제로 래치된 `rreg0_latched`는 `15`(이전 `lui` 명령어의 잔재인 x31의 하위 4비트)로 기록되어 엉뚱한 레지스터 데이터를 읽어오는 문제가 발생하였습니다.

- **원인 분석**:
  `wb_ibus_ack`가 1인 시점에 CPU 코어와 버스 인터페이스의 타이밍이 겹치면서 RF 어댑터의 `i_rreq` 입력이 들어옵니다. 이때 `i_rreg0`/`i_rreg1`을 래치하는 `always @(posedge i_clk)`의 래치 엣지가 `wb_ibus_ack` 엣지와 물리적으로 거의 동시에 발생하면서, 디코더 주소 신호의 셋업/홀드 타임 마진 부족(또는 레이스 컨디션)으로 인해 이전 레지스터 주소가 래치되는 꼬임 현상이 유발되었습니다.

---

## 2. 해결 방안 (래치 타이밍 지연 안정화)
`i_rreg0` 및 `i_rreg1` 입력은 `wb_ibus_ack`가 0으로 내려간 이후에도 해당 비트-시리얼 명령어의 실행 주기 내내 계속 동일한 값(안정화된 디코드 레지스터 주소)을 유지합니다.
따라서, `i_rreq`가 들어오는 시점 즉시 래치하지 않고, **1사이클 딜레이되어 실제 읽기(prefetch)가 시작되는 `prefetch_active` 활성화 엣지에 래치하도록 로직을 변경**하였습니다. 이 시점에는 CPU 디코드 출력이 완벽하게 안정되어 셋업 타임 레이스 컨디션이 완벽하게 해결됩니다.

---

## 3. RTL 수정 내역
[serv_rf_ram_if.v](file:///home/hosung/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/src/rtl/serv/serv_rf_ram_if.v) 내부의 `always @(posedge i_clk)` 블록 수정:

```diff
-      if (i_rreq) begin
-         pending_read <= 1'b1;
-         rreg0_latched <= i_rreg0;
-         rreg1_latched <= i_rreg1;
-         $display("[RF_IF] LATCH TIME: %d, i_rreg0=%d, i_rreg1=%d, i_stream_rs2_en=%b", $time, i_rreg0, i_rreg1, i_stream_rs2_en);
-      end
-
-      if (!prefetch_active && (write_wait == 2'd0) && pending_read) begin
-         prefetch_active <= 1'b1;
-         pending_read <= 1'b0;
-         issue_idx <= 6'd0;
-      end else if (prefetch_active) begin
+      if (i_rreq) begin
+         pending_read <= 1'b1;
+      end
+
+      if (!prefetch_active && (write_wait == 2'd0) && pending_read) begin
+         prefetch_active <= 1'b1;
+         pending_read <= 1'b0;
+         issue_idx <= 6'd0;
+         rreg0_latched <= i_rreg0;
+         rreg1_latched <= i_rreg1;
+         $display("[RF_IF] LATCH TIME: %d, i_rreg0=%d, i_rreg1=%d, i_stream_rs2_en=%b (LATELY)", $time, i_rreg0, i_rreg1, i_stream_rs2_en);
+      end else if (prefetch_active) begin
```

---

## 4. 검증 현황
수정이 반영된 뒤, `testbench/7_testbench_rv32i_compliance/sim` 디렉토리 하에서 `./build_compliance_e.sh && ./run_compliance_e.sh` 스크립트를 통해 RV32E Compliance Regression 전체를 다시 수행하여 `add` 케이스 통과 및 타 테스트 케이스들에 대한 정합성을 확인 중입니다.
