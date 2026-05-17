// =======================================================================
// Micro-Dhrystone 2.1 C Program for 2KB RV32I MCU
// =======================================================================

#define fence nop

/* GCC 링커를 위한 C 스타트업 인라인 어셈블리 주입 */
__asm__(
    ".section .text.init;\n"
    ".globl _start;\n"
    "_start:\n"
    "        li x1, 0;\n"
    "        li x2, 0;\n"
    "        li sp, 0x800;\n" // Set sp to 2KB physical memory end (0x800)
    "        li gp, 0;\n"
    "        li tp, 0;\n"
    "        li t0, 0;\n"
    "        li t1, 0;\n"
    "        li t2, 0;\n"
    "        li s0, 0;\n"
    "        li s1, 0;\n"
    "        li a0, 0;\n"
    "        li a1, 0;\n"
    "        li a2, 0;\n"
    "        li a3, 0;\n"
    "        li a4, 0;\n"
    "        li a5, 0;\n"
    "        li a6, 0;\n"
    "        li a7, 0;\n"
    "        li s2, 0;\n"
    "        li s3, 0;\n"
    "        li s4, 0;\n"
    "        li s5, 0;\n"
    "        li s6, 0;\n"
    "        li s7, 0;\n"
    "        li s8, 0;\n"
    "        li s9, 0;\n"
    "        li s10, 0;\n"
    "        li s11, 0;\n"
    "        li t3, 0;\n"
    "        li t4, 0;\n"
    "        li t5, 0;\n"
    "        li t6, 0;\n"
    "        jal main;\n"
    "        sw a0, 0x700(zero);\n" // Write main's return code to 0x700
    "self_loop:\n"
    "        j self_loop;\n"
);

/* Dhrystone 글로벌 데이터 정적 선언 (malloc 오버헤드 극복) */
typedef struct struct_type {
    struct struct_type *Ptr_Comp;
    int                 Discr;
    int                 Enum_Comp;
    int                 Int_Comp;
    char                Char_Comp[20];
} Rec_Type, *Rec_Pointer;

#define Ident_1 0
#define Ident_2 1

/* 정적 레코드 할당 */
Rec_Type Glob_1;
Rec_Type Glob_2;
Rec_Pointer Ptr_Glob = &Glob_1;
Rec_Pointer Next_Ptr_Glob = &Glob_2;

int    Int_Glob = 0;
char   Char_Glob_1 = '\0';
char   Char_Glob_2 = '\0';
int    Arr_1_Glob[50];
int    Arr_2_Glob[50][50];

/* 함수 프로토타입 */
void Proc_1(Rec_Pointer Ptr_Val_Par);
void Proc_2(int *Int_Par_Ref);
void Proc_3(Rec_Pointer *Ptr_Ref_Par);
void Proc_4(void);
void Proc_5(void);
int  Func_1(char Ch_1_Par_Val, char Ch_2_Par_Val);

/* C 런타임 main */
int main(void) {
    /* 1. 변수 초기화 */
    Glob_1.Ptr_Comp = &Glob_2;
    Glob_1.Discr = Ident_1;
    Glob_1.Enum_Comp = Ident_1;
    Glob_1.Int_Comp = 40;
    
    Glob_2.Ptr_Comp = &Glob_1;
    Glob_2.Discr = Ident_1;
    Glob_2.Enum_Comp = Ident_2;
    Glob_2.Int_Comp = 30;

    /* 2. 벤치마크 핵심 연산 루프 (루프 50회 구동 - 시뮬레이션 최적) */
    int Number_Of_Runs = 50;
    int Run_Index;
    
    for (Run_Index = 1; Run_Index <= Number_Of_Runs; ++Run_Index) {
        Proc_5();
        Proc_4();
        
        Int_Glob = 2;
        Char_Glob_1 = 'A';
        Char_Glob_2 = 'B';
        
        Arr_1_Glob[8] = 7;
        Arr_2_Glob[8][7] = 10;
        
        Proc_1(Ptr_Glob);
    }
    
    /* 3. 최종 연산 결과 무결성 체크섬 검증 */
    /* 성공 시 1 반환 -> 0x700에 sw 됨. 실패 시 개별 에러 마커 반환 */
    if (Int_Glob != 2) return 0x101; 
    if (Char_Glob_1 != 'A') return 0x102;
    if (Char_Glob_2 != 'B') return 0x103;
    if (Arr_1_Glob[8] != 7) return 0x104;
    if (Glob_1.Int_Comp != 15) return 0x105;
    if (Glob_2.Int_Comp != 5) return 0x106;

    return 1; /* 대성공! */
}

void Proc_1(Rec_Pointer Ptr_Val_Par) {
    Rec_Pointer Next_Record = Ptr_Val_Par->Ptr_Comp;
    *Ptr_Val_Par->Ptr_Comp = Glob_1;
    Ptr_Val_Par->Int_Comp = 5;
    Next_Record->Int_Comp = Ptr_Val_Par->Int_Comp;
    Next_Record->Ptr_Comp = Ptr_Val_Par->Ptr_Comp;
    Proc_3((Rec_Pointer *)&Next_Record->Ptr_Comp);
}

void Proc_2(int *Int_Par_Ref) {
    int One_To_Thirty = *Int_Par_Ref + 10;
    *Int_Par_Ref = One_To_Thirty;
}

void Proc_3(Rec_Pointer *Ptr_Ref_Par) {
    if (Ptr_Glob != 0) {
        *Ptr_Ref_Par = Ptr_Glob->Ptr_Comp;
    }
    Proc_2(&Ptr_Glob->Int_Comp);
}

void Proc_4(void) {
    int Bool_Val = 1;
    Bool_Val = Bool_Val || 0;
    Char_Glob_2 = 'B';
}

void Proc_5(void) {
    Char_Glob_1 = 'A';
}

int Func_1(char Ch_1_Par_Val, char Ch_2_Par_Val) {
    char Ch_1_Loc = Ch_1_Par_Val;
    char Ch_2_Loc = Ch_2_Par_Val;
    if (Ch_2_Loc != Ch_1_Loc) return 1;
    else return 0;
}
