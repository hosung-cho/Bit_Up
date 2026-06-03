# serv_exec_unit top pin side 재배치 및 PnR 결과

## 목적

MPW 28핀 pad frame에 `serv_exec_unit_Core.mag`를 올릴 때 core top pin이 무작위로 흩어져 있으면 pad-to-core 수동 배선이 어려워진다. 따라서 qflow placement hint 파일인 `layout/serv_exec_unit.cel2`에 전체 신호핀의 side constraint를 지정하고 PnR을 다시 수행했다.

## 적용한 side constraint

전원핀 `vdd`, `gnd`는 qflow 전원망 처리 대상으로 두고, 논리 신호 25개만 side를 지정했다.

| Side | Pin group |
|---|---|
| Top | `clk`, `rst_n`, `cmd_op[3:0]` |
| Left | `cmd_valid`, `cmd_ready`, `cmd_a`, `cmd_b`, `cmd_last` |
| Right | `rsp_valid`, `rsp_ready`, `rsp_last`, `rsp_result`, `busy`, `rsp_flags[1:0]` |
| Bottom | `rsp_flags[5:2]`, `debug_state[2:0]` |

이 배치는 28핀 package에서 한쪽 변에 과도하게 신호가 몰리지 않도록 top 6개, left 5개, right 7개, bottom 7개로 분산한 것이다. 디버그 신호는 bottom에 모으고, response flag는 right/bottom으로 나눠 pad routing 혼잡을 낮췄다.

## 수행 명령

작업 위치:

```sh
MPW_workspace/Bit_Up/C_SERV_ALU_FPGA/backend_physical_qflow
```

수행 명령:

```sh
make place sta route migrate
```

## 결과

- `layout/serv_exec_unit.cel2`에 전체 top pin side constraint 반영 완료
- `layout/serv_exec_unit.def` 재생성 완료
- `layout/serv_exec_unit.mag` 재생성 완료
- `chiptop/serv_exec_unit_Core.mag`는 `../layout/serv_exec_unit.mag` symlink이므로 최신 PnR 결과를 자동 참조
- qrouter 결과: `Final: No failed routes!`
- STA 결과: `Design meets minimum hold timing.`
- Magic batch load 확인: `chiptop/.magicrc` 기준으로 `serv_exec_unit_Core` 로드 가능

참고로 qflow migrate 중 Magic DEF reader가 `END VIAS`에 대해 `out of context` 메시지를 출력하지만, 이후 subcell, pin, net 처리를 계속 수행하고 `.mag`, `.lef`, `.ext`, `.spice` 산출물을 생성했다. 현재 critical blocker로 보이지는 않지만, 최종 GDS 직전에는 GUI에서 DRC/LVS 및 via stack rule 확인과 함께 다시 점검해야 한다.

## 확인된 DEF pin 위치 요약

`layout/serv_exec_unit.def` 기준:

- Top: `clk`, `rst_n`, `cmd_op[3]`, `cmd_op[2]`, `cmd_op[1]`, `cmd_op[0]`
- Left: `cmd_valid`, `cmd_ready`, `cmd_a`, `cmd_b`, `cmd_last`
- Right: `rsp_valid`, `rsp_ready`, `rsp_result`, `rsp_flags[1]`, `rsp_flags[0]`, `rsp_last`, `busy`
- Bottom: `rsp_flags[5]`, `rsp_flags[4]`, `rsp_flags[3]`, `rsp_flags[2]`, `debug_state[2]`, `debug_state[1]`, `debug_state[0]`

## 다음 GUI 작업

1. Magic을 `backend_physical_qflow/chiptop`에서 실행한다.
2. `serv_exec_unit_Core.mag`와 `pads_ETRI/MPW_PAD_28Pin_IO.mag`를 같은 top layout에 배치한다.
3. pad frame 안쪽에 core를 넣고, 각 pad의 실제 pin assignment를 위 side plan에 맞춰 정한다.
4. pad-to-core 배선을 수동으로 수행한다.
5. stacked via가 생기지 않도록 확인한다. 이 프로젝트는 `via_stacks = "none"` 설정을 사용한다.
6. DRC 확인 후 DK script의 `xPad.py`, `xPin_Route.py`, `generate_chip.sh` 단계로 넘어간다.

