/* Verilog module written by vlog2Verilog (qflow) */
/* With bit-blasted vectors */
/* With power connections converted to binary 1, 0 */

module my_mcu_top(
    input i_clk_fast,
    input i_clk_sys_ext,
    input i_rst_n,
    output o_rf_sync,
    output o_rf_sck,
    output o_rf_mosi,
    input i_rf_miso,
    output o_mem_sync,
    output o_mem_sck,
    output o_mem_mosi,
    input i_mem_miso
);

wire [4:1] rf_read_reg0_to_if ;
wire o_mem_sck ;
wire current_stream_rs2_hint ;
wire _588_ ;
wire _168_ ;
wire _800_ ;
wire _60_ ;
wire _1066_ ;
wire _397_ ;
wire \u_cpu.ctrl.pc_plus_4_cy_r_w  ;
wire _703_ ;
wire [2:0] \u_cpu.decode.opcode  ;
wire _19_ ;
wire _932_ ;
wire _512_ ;
wire _741_ ;
wire _321_ ;
wire _57_ ;
wire _970_ ;
wire _550_ ;
wire _130_ ;
wire [2:2] \u_cpu.state.o_cnt  ;
wire _606_ ;
wire _835_ ;
wire _415_ ;
wire _95_ ;
wire _644_ ;
wire _224_ ;
wire _1122_ ;
wire _873_ ;
wire _453_ ;
wire _929_ ;
wire _509_ ;
wire _682_ ;
wire _262_ ;
wire _738_ ;
wire _318_ ;
wire _491_ ;
wire _967_ ;
wire _547_ ;
wire _127_ ;
wire _1025_ ;
wire _776_ ;
wire _356_ ;
wire _585_ ;
wire _165_ ;
wire _1063_ ;
wire _394_ ;
wire _1119_ ;
wire _679_ ;
wire _259_ ;
wire _488_ ;
wire _700_ ;
wire _297_ ;
wire _16_ ;
wire _54_ ;
wire _603_ ;
wire _832_ ;
wire _412_ ;
wire _92_ ;
wire _1098_ ;
wire [0:0] _641_ ;
wire _221_ ;
wire _870_ ;
wire _450_ ;
wire _926_ ;
wire _506_ ;
wire _735_ ;
wire _315_ ;
wire [3:0] rf_wreg0_to_if ;
wire _964_ ;
wire _544_ ;
wire _124_ ;
wire _1022_ ;
wire _773_ ;
wire _353_ ;
wire _829_ ;
wire _409_ ;
wire _89_ ;
wire _582_ ;
wire _162_ ;
wire _638_ ;
wire _218_ ;
wire _1060_ ;
wire _391_ ;
wire _1116_ ;
wire _867_ ;
wire _447_ ;
wire _676_ ;
wire _256_ ;
wire _1154_ ;
wire _485_ ;
wire \u_mem_serial.req_pending  ;
wire _294_ ;
wire _13_ ;
wire _1019_ ;
wire _999_ ;
wire _579_ ;
wire _159_ ;
wire _51_ ;
wire _1057_ ;
wire _388_ ;
wire _600_ ;
wire _197_ ;
wire [4:0] \u_rf_if.stream_cnt  ;
wire _1095_ ;
wire _947__bF$buf0 ;
wire _947__bF$buf1 ;
wire _947__bF$buf2 ;
wire _947__bF$buf3 ;
wire _947__bF$buf4 ;
wire \u_rf_if.pending_read  ;
wire _7_ ;
wire _923_ ;
wire _503_ ;
wire _732_ ;
wire _312_ ;
wire _48_ ;
wire _961_ ;
wire _541_ ;
wire _121_ ;
wire _770_ ;
wire _350_ ;
wire _826_ ;
wire _406_ ;
wire _86_ ;
wire _635_ ;
wire _215_ ;
wire o_rf_sync ;
wire _1113_ ;
wire _864_ ;
wire _444_ ;
wire _673_ ;
wire _253_ ;
wire _729_ ;
wire _309_ ;
wire _1151_ ;
wire _482_ ;
wire _958_ ;
wire _538_ ;
wire _118_ ;
wire _291_ ;
wire _10_ ;
wire _1016_ ;
wire _767_ ;
wire _347_ ;
wire _996_ ;
wire _576_ ;
wire _156_ ;
wire _1054_ ;
wire _385_ ;
wire _194_ ;
wire _1092_ ;
wire _1148_ ;
wire _899_ ;
wire _479_ ;
wire _288_ ;
wire _4_ ;
wire _920_ ;
wire _500_ ;
wire _45_ ;
wire _823_ ;
wire _403_ ;
wire _83_ ;
wire _1089_ ;
wire _632_ ;
wire _212_ ;
wire _1110_ ;
wire _861_ ;
wire _441_ ;
wire _917_ ;
wire _670_ ;
wire _250_ ;
wire _726_ ;
wire _306_ ;
wire _955_ ;
wire _535_ ;
wire _115_ ;
wire _1013_ ;
wire i_mem_miso ;
wire _764_ ;
wire _344_ ;
wire _993_ ;
wire _573_ ;
wire _153_ ;
wire _629_ ;
wire _209_ ;
wire _1051_ ;
wire \u_rf_if.i_stream_rs2_en  ;
wire _382_ ;
wire _1107_ ;
wire _858_ ;
wire _438_ ;
wire _191_ ;
wire _667_ ;
wire _247_ ;
wire _1145_ ;
wire _896_ ;
wire _476_ ;
wire _285_ ;
wire _1_ ;
wire [0:0] \u_rf_if.read_buf1  ;
wire \u_cpu.bne_or_bge  ;
wire _42_ ;
wire _1048_ ;
wire _799_ ;
wire _379_ ;
wire _188_ ;
wire \u_cpu.decode.co_ebreak  ;
wire _820_ ;
wire _400_ ;
wire _80_ ;
wire _1086_ ;
wire \u_cpu.alu.add_cy_r  ;
wire _914_ ;
wire _723_ ;
wire _303_ ;
wire _39_ ;
wire _952_ ;
wire _532_ ;
wire _112_ ;
wire _1010_ ;
wire _761_ ;
wire _341_ ;
wire _817_ ;
wire _77_ ;
wire _990_ ;
wire _570_ ;
wire _150_ ;
wire _626_ ;
wire _206_ ;
wire _1104_ ;
wire _855_ ;
wire _435_ ;
wire _664_ ;
wire _244_ ;
wire _1142_ ;
wire _893_ ;
wire _473_ ;
wire _949_ ;
wire _529_ ;
wire _109_ ;
wire _282_ ;
wire _1007_ ;
wire _758_ ;
wire _338_ ;
wire _987_ ;
wire _567_ ;
wire _147_ ;
wire _1045_ ;
wire _796_ ;
wire _376_ ;
wire _185_ ;
wire _1083_ ;
wire _1139_ ;
wire _699_ ;
wire _279_ ;
wire _911_ ;
wire _720_ ;
wire _300_ ;
wire _36_ ;
wire _814_ ;
wire _74_ ;
wire _623_ ;
wire _203_ ;
wire _1101_ ;
wire _852_ ;
wire _432_ ;
wire _908_ ;
wire _661_ ;
wire _241_ ;
wire _717_ ;
wire _890_ ;
wire _470_ ;
wire _946_ ;
wire _526_ ;
wire _106_ ;
wire _1004_ ;
wire _755_ ;
wire _335_ ;
wire _984_ ;
wire _564_ ;
wire _144_ ;
wire _1042_ ;
wire _793_ ;
wire _373_ ;
wire _849_ ;
wire _429_ ;
wire _182_ ;
wire [0:0] \u_rf_if.wdata0_r  ;
wire _658_ ;
wire _238_ ;
wire _1080_ ;
wire _1136_ ;
wire _887_ ;
wire _467_ ;
wire \u_mem_serial.active_ibus  ;
wire _696_ ;
wire _276_ ;
wire \u_rf_if.stream_active_bF$buf3  ;
wire _33_ ;
wire _1039_ ;
wire _599_ ;
wire _179_ ;
wire _811_ ;
wire _71_ ;
wire _1077_ ;
wire [2:1] _620_ ;
wire _200_ ;
wire [1:0] \u_rf_if.shift_rx  ;
wire _905_ ;
wire [31:0] \u_mem_serial.shift_reg  ;
wire _714_ ;
wire _943_ ;
wire _523_ ;
wire _103_ ;
wire _1001_ ;
wire _752_ ;
wire _332_ ;
wire _808_ ;
wire _68_ ;
wire _981_ ;
wire _561_ ;
wire _141_ ;
wire \u_cpu.bufreg.c_r  ;
wire _617_ ;
wire _790_ ;
wire _370_ ;
wire _846_ ;
wire _426_ ;
wire _655_ ;
wire _235_ ;
wire _990__bF$buf0 ;
wire _990__bF$buf1 ;
wire _990__bF$buf2 ;
wire _990__bF$buf3 ;
wire _990__bF$buf4 ;
wire _1133_ ;
wire [3:0] \u_rf_if.o_waddr  ;
wire _884_ ;
wire _464_ ;
wire _693_ ;
wire _273_ ;
wire _749_ ;
wire _329_ ;
wire \u_rf_if.stream_active_bF$buf0  ;
wire _978_ ;
wire _558_ ;
wire _138_ ;
wire _30_ ;
wire _1036_ ;
wire ren ;
wire _787_ ;
wire _367_ ;
wire _596_ ;
wire _176_ ;
wire _1074_ ;
wire \u_cpu.bufreg.i_sh_signed  ;
wire _902_ ;
wire _499_ ;
wire _711_ ;
wire _27_ ;
wire _940_ ;
wire _520_ ;
wire _100_ ;
wire _805_ ;
wire _65_ ;
wire _614_ ;
wire _843_ ;
wire _423_ ;
wire _652_ ;
wire _232_ ;
wire \u_rf_if.prefetch_active  ;
wire _708_ ;
wire _1130_ ;
wire _881_ ;
wire _461_ ;
wire _937_ ;
wire _517_ ;
wire _690_ ;
wire _270_ ;
wire _746_ ;
wire _326_ ;
wire _975_ ;
wire _555_ ;
wire _135_ ;
wire [1:0] \u_mem_serial.state  ;
wire _1033_ ;
wire _784_ ;
wire _364_ ;
wire _593_ ;
wire _173_ ;
wire _649_ ;
wire _229_ ;
wire _1071_ ;
wire _1127_ ;
wire _878_ ;
wire _458_ ;
wire _687_ ;
wire _267_ ;
wire _496_ ;
wire \u_rf_if.wen0_r  ;
wire _24_ ;
wire _802_ ;
wire _62_ ;
wire _1068_ ;
wire _399_ ;
wire _611_ ;
wire _840_ ;
wire _420_ ;
wire \u_rf_if.rtrig1  ;
wire _413__bF$buf0 ;
wire _413__bF$buf1 ;
wire _413__bF$buf2 ;
wire _413__bF$buf3 ;
wire _413__bF$buf4 ;
wire _705_ ;
wire _934_ ;
wire _514_ ;
wire _743_ ;
wire _323_ ;
wire _59_ ;
wire _972_ ;
wire _552_ ;
wire _132_ ;
wire _608_ ;
wire _1030_ ;
wire _781_ ;
wire _361_ ;
wire _551__bF$buf0 ;
wire _551__bF$buf1 ;
wire _551__bF$buf2 ;
wire _551__bF$buf3 ;
wire _551__bF$buf4 ;
wire _551__bF$buf5 ;
wire _837_ ;
wire _417_ ;
wire _97_ ;
wire _590_ ;
wire _170_ ;
wire _646_ ;
wire _226_ ;
wire _1124_ ;
wire _875_ ;
wire _455_ ;
wire _684_ ;
wire _264_ ;
wire _493_ ;
wire _969_ ;
wire _549_ ;
wire _129_ ;
wire _21_ ;
wire _1027_ ;
wire _778_ ;
wire _358_ ;
wire _587_ ;
wire _167_ ;
wire _1065_ ;
wire _396_ ;
wire _702_ ;
wire _299_ ;
wire _18_ ;
wire _931_ ;
wire _511_ ;
wire [5:0] \u_rf_if.issue_idx  ;
wire _740_ ;
wire _320_ ;
wire [6:0] \u_mem_serial.bit_count  ;
wire _56_ ;
wire i_rst_n ;
wire _605_ ;
wire _834_ ;
wire _414_ ;
wire _94_ ;
wire _643_ ;
wire _223_ ;
wire _1121_ ;
wire _872_ ;
wire _452_ ;
wire _928_ ;
wire _508_ ;
wire _681_ ;
wire _261_ ;
wire _737_ ;
wire _317_ ;
wire _490_ ;
wire _966_ ;
wire _546_ ;
wire _126_ ;
wire _1024_ ;
wire _775_ ;
wire _355_ ;
wire _584_ ;
wire _164_ ;
wire _1062_ ;
wire _393_ ;
wire _1118_ ;
wire _869_ ;
wire _449_ ;
wire _678_ ;
wire _258_ ;
wire _487_ ;
wire _296_ ;
wire _15_ ;
wire _53_ ;
wire _1059_ ;
wire _602_ ;
wire _199_ ;
wire [2:0] \u_cpu.bufreg.i_shamt  ;
wire _831_ ;
wire _411_ ;
wire _91_ ;
wire _1097_ ;
wire _640_ ;
wire _220_ ;
wire _9_ ;
wire _925_ ;
wire _505_ ;
wire _734_ ;
wire _314_ ;
wire \u_cpu.branch_op  ;
wire _963_ ;
wire _543_ ;
wire _123_ ;
wire _1021_ ;
wire _772_ ;
wire _352_ ;
wire _828_ ;
wire _408_ ;
wire _88_ ;
wire _581_ ;
wire _161_ ;
wire _637_ ;
wire _217_ ;
wire _390_ ;
wire _1115_ ;
wire _866_ ;
wire _446_ ;
wire _675_ ;
wire _255_ ;
wire _1153_ ;
wire _484_ ;
wire _293_ ;
wire _12_ ;
wire _1018_ ;
wire _769_ ;
wire _349_ ;
wire _998_ ;
wire _578_ ;
wire _158_ ;
wire i_clk_sys_ext_bF$buf0 ;
wire i_clk_sys_ext_bF$buf1 ;
wire i_clk_sys_ext_bF$buf2 ;
wire i_clk_sys_ext_bF$buf3 ;
wire i_clk_sys_ext_bF$buf4 ;
wire i_clk_sys_ext_bF$buf5 ;
wire i_clk_sys_ext_bF$buf6 ;
wire i_clk_sys_ext_bF$buf7 ;
wire i_clk_sys_ext_bF$buf8 ;
wire i_clk_sys_ext_bF$buf9 ;
wire _50_ ;
wire _1056_ ;
wire _387_ ;
wire _505__bF$buf0 ;
wire _505__bF$buf1 ;
wire _505__bF$buf2 ;
wire _505__bF$buf3 ;
wire _505__bF$buf4 ;
wire _196_ ;
wire _1094_ ;
wire _6_ ;
wire _922_ ;
wire _502_ ;
wire _731_ ;
wire _311_ ;
wire _47_ ;
wire _960_ ;
wire _540_ ;
wire _120_ ;
wire _825_ ;
wire _405_ ;
wire _85_ ;
wire _634_ ;
wire _214_ ;
wire _1112_ ;
wire _863_ ;
wire _443_ ;
wire _919_ ;
wire _672_ ;
wire _252_ ;
wire _728_ ;
wire _308_ ;
wire _1150_ ;
wire _481_ ;
wire _957_ ;
wire _537_ ;
wire _117_ ;
wire _290_ ;
wire _1015_ ;
wire _766_ ;
wire _346_ ;
wire _995_ ;
wire _575_ ;
wire _155_ ;
wire _1053_ ;
wire _384_ ;
wire _1109_ ;
wire _193_ ;
wire \u_cpu.bufreg2.i_op_b_sel  ;
wire _669_ ;
wire _249_ ;
wire _1091_ ;
wire _1147_ ;
wire _898_ ;
wire _478_ ;
wire _287_ ;
wire _3_ ;
wire _44_ ;
wire [4:0] rf_read_reg1_to_if ;
wire _822_ ;
wire _402_ ;
wire _82_ ;
wire _1088_ ;
wire i_clk_sys_ext ;
wire _631_ ;
wire _211_ ;
wire _860_ ;
wire _440_ ;
wire _916_ ;
wire \u_cpu.immdec.gen_immdec_w_eq_1.imm31  ;
wire \u_rf_if.wdata0_next_phase  ;
wire [3:0] \u_rf_if.rreg0_latched  ;
wire _725_ ;
wire _305_ ;
wire _954_ ;
wire _534_ ;
wire _114_ ;
wire _1012_ ;
wire _763_ ;
wire _343_ ;
wire _819_ ;
wire _79_ ;
wire _992_ ;
wire _572_ ;
wire _152_ ;
wire _628_ ;
wire _208_ ;
wire _1050_ ;
wire _381_ ;
wire _1106_ ;
wire _857_ ;
wire _437_ ;
wire _190_ ;
wire _666_ ;
wire _246_ ;
wire _1144_ ;
wire _895_ ;
wire _475_ ;
wire _284_ ;
wire _0_ ;
wire _1009_ ;
wire [31:0] \u_rf_if.read_buf0  ;
wire i_clk_fast ;
wire _989_ ;
wire _569_ ;
wire _149_ ;
wire _41_ ;
wire _1047_ ;
wire _798_ ;
wire _378_ ;
wire _187_ ;
wire _1085_ ;
wire _913_ ;
wire [6:3] \u_cpu.bufreg2.dhi  ;
wire _722_ ;
wire _302_ ;
wire _38_ ;
wire _951_ ;
wire _531_ ;
wire _111_ ;
wire _760_ ;
wire _340_ ;
wire _816_ ;
wire _76_ ;
wire _440__bF$buf0 ;
wire _440__bF$buf1 ;
wire _440__bF$buf2 ;
wire _440__bF$buf3 ;
wire _440__bF$buf4 ;
wire _440__bF$buf5 ;
wire _625_ ;
wire _205_ ;
wire \u_cpu.csr_imm  ;
wire _1103_ ;
wire _854_ ;
wire _434_ ;
wire _663_ ;
wire _243_ ;
wire _719_ ;
wire _1141_ ;
wire _892_ ;
wire _472_ ;
wire _948_ ;
wire _528_ ;
wire _108_ ;
wire _281_ ;
wire _1006_ ;
wire _757_ ;
wire _337_ ;
wire [0:0] \u_rf_if.wdata0_next  ;
wire _986_ ;
wire _566_ ;
wire _146_ ;
wire _1044_ ;
wire _795_ ;
wire _375_ ;
wire _184_ ;
wire _1082_ ;
wire _1138_ ;
wire _889_ ;
wire _469_ ;
wire _698_ ;
wire _278_ ;
wire _910_ ;
wire _35_ ;
wire i_clk_sys_ext_bF$buf10 ;
wire i_clk_sys_ext_bF$buf11 ;
wire i_clk_sys_ext_bF$buf12 ;
wire i_clk_sys_ext_bF$buf13 ;
wire _813_ ;
wire _73_ ;
wire _1079_ ;
wire _622_ ;
wire _202_ ;
wire _1100_ ;
wire _851_ ;
wire _431_ ;
wire _907_ ;
wire _660_ ;
wire _240_ ;
wire _716_ ;
wire _945_ ;
wire _525_ ;
wire _105_ ;
wire _1003_ ;
wire _754_ ;
wire _334_ ;
wire _983_ ;
wire _563_ ;
wire _143_ ;
wire _619_ ;
wire _1041_ ;
wire _792_ ;
wire _372_ ;
wire _848_ ;
wire _428_ ;
wire _181_ ;
wire _657_ ;
wire _237_ ;
wire _1135_ ;
wire _886_ ;
wire _466_ ;
wire _695_ ;
wire _275_ ;
wire o_rf_sck ;
wire \u_rf_if.stream_active_bF$buf2  ;
wire _32_ ;
wire _1038_ ;
wire _789_ ;
wire _369_ ;
wire _598_ ;
wire _178_ ;
wire _810_ ;
wire _70_ ;
wire _1076_ ;
wire _383__bF$buf0 ;
wire _383__bF$buf1 ;
wire _383__bF$buf2 ;
wire _383__bF$buf3 ;
wire _383__bF$buf4 ;
wire i_clk_fast_bF$buf0 ;
wire i_clk_fast_bF$buf1 ;
wire i_clk_fast_bF$buf2 ;
wire i_clk_fast_bF$buf3 ;
wire i_clk_fast_bF$buf4 ;
wire i_clk_fast_bF$buf5 ;
wire i_clk_fast_bF$buf6 ;
wire i_clk_fast_bF$buf7 ;
wire [3:0] \u_cpu.state.cnt_r  ;
wire _904_ ;
wire _713_ ;
wire _29_ ;
wire _942_ ;
wire _522_ ;
wire _102_ ;
wire _1000_ ;
wire _751_ ;
wire _331_ ;
wire _807_ ;
wire _67_ ;
wire _980_ ;
wire _560_ ;
wire _140_ ;
wire [31:1] \u_cpu.ctrl.o_ibus_adr  ;
wire _616_ ;
wire _845_ ;
wire _425_ ;
wire _654_ ;
wire _234_ ;
wire _1132_ ;
wire _883_ ;
wire _463_ ;
wire _939_ ;
wire _519_ ;
wire _692_ ;
wire _272_ ;
wire _748_ ;
wire _328_ ;
wire _977_ ;
wire _557_ ;
wire _137_ ;
wire _1035_ ;
wire _786_ ;
wire _366_ ;
wire _595_ ;
wire _175_ ;
wire _1073_ ;
wire _1129_ ;
wire _689_ ;
wire _269_ ;
wire _901_ ;
wire _498_ ;
wire _710_ ;
wire _26_ ;
wire _804_ ;
wire _64_ ;
wire _613_ ;
wire _842_ ;
wire _422_ ;
wire [4:0] \u_rf_if.tx_state  ;
wire _651_ ;
wire _231_ ;
wire _707_ ;
wire _880_ ;
wire _460_ ;
wire \u_rf_if.stream_active  ;
wire _936_ ;
wire _516_ ;
wire \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
wire _745_ ;
wire _325_ ;
wire _974_ ;
wire _554_ ;
wire _134_ ;
wire _1032_ ;
wire _783_ ;
wire _363_ ;
wire mem_ibus_ack_bF$buf0 ;
wire mem_ibus_ack_bF$buf1 ;
wire mem_ibus_ack_bF$buf2 ;
wire mem_ibus_ack_bF$buf3 ;
wire mem_ibus_ack_bF$buf4 ;
wire mem_ibus_ack_bF$buf5 ;
wire mem_ibus_ack_bF$buf6 ;
wire mem_ibus_ack_bF$buf7 ;
wire _839_ ;
wire _419_ ;
wire _99_ ;
wire _592_ ;
wire _172_ ;
wire _648_ ;
wire _228_ ;
wire _1070_ ;
wire _1126_ ;
wire _877_ ;
wire _457_ ;
wire _686_ ;
wire _266_ ;
wire \u_cpu.decode.co_mem_word  ;
wire _495_ ;
wire _23_ ;
wire _1029_ ;
wire _589_ ;
wire _169_ ;
wire _801_ ;
wire _61_ ;
wire _1067_ ;
wire _398_ ;
wire _610_ ;
wire \u_rf_if.ready_pulse  ;
wire \u_rf_if.rtrig0  ;
wire _704_ ;
wire _933_ ;
wire _513_ ;
wire _742_ ;
wire _322_ ;
wire _58_ ;
wire _971_ ;
wire _551_ ;
wire _131_ ;
wire _607_ ;
wire _780_ ;
wire _360_ ;
wire _836_ ;
wire _416_ ;
wire _96_ ;
wire _645_ ;
wire _225_ ;
wire \u_rf_if.req_seen  ;
wire _1123_ ;
wire _874_ ;
wire _454_ ;
wire _683_ ;
wire _263_ ;
wire _739_ ;
wire _319_ ;
wire _492_ ;
wire _968_ ;
wire _548_ ;
wire _128_ ;
wire _20_ ;
wire _1026_ ;
wire _777_ ;
wire _357_ ;
wire _586_ ;
wire _166_ ;
wire \u_cpu.state.ibus_cyc  ;
wire o_mem_mosi ;
wire _1064_ ;
wire _395_ ;
wire _489_ ;
wire _701_ ;
wire _298_ ;
wire _17_ ;
wire _930_ ;
wire _510_ ;
wire _55_ ;
wire _604_ ;
wire _833_ ;
wire _413_ ;
wire _93_ ;
wire _1099_ ;
wire _642_ ;
wire _222_ ;
wire _1120_ ;
wire _871_ ;
wire _451_ ;
wire _927_ ;
wire _507_ ;
wire _680_ ;
wire _260_ ;
wire _736_ ;
wire _316_ ;
wire _965_ ;
wire _545_ ;
wire _125_ ;
wire _1023_ ;
wire _774_ ;
wire _354_ ;
wire _583_ ;
wire _163_ ;
wire _639_ ;
wire _219_ ;
wire _1061_ ;
wire _392_ ;
wire _1117_ ;
wire _868_ ;
wire _448_ ;
wire _677_ ;
wire _257_ ;
wire _486_ ;
wire _295_ ;
wire _14_ ;
wire [5:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25  ;
wire \u_cpu.alu.cmp_r  ;
wire _52_ ;
wire _1058_ ;
wire _389_ ;
wire _601_ ;
wire [2:0] \u_rf_if.rcnt  ;
wire _198_ ;
wire _830_ ;
wire _410_ ;
wire _90_ ;
wire _1096_ ;
wire _8_ ;
wire _924_ ;
wire _504_ ;
wire _733_ ;
wire _313_ ;
wire _49_ ;
wire _962_ ;
wire _542_ ;
wire _122_ ;
wire _1020_ ;
wire _771_ ;
wire _351_ ;
wire _827_ ;
wire _407_ ;
wire _87_ ;
wire _580_ ;
wire _160_ ;
wire _636_ ;
wire _216_ ;
wire _1114_ ;
wire _865_ ;
wire _445_ ;
wire _674_ ;
wire _254_ ;
wire _1152_ ;
wire _483_ ;
wire _959_ ;
wire _539_ ;
wire _119_ ;
wire _292_ ;
wire _11_ ;
wire _1017_ ;
wire _768_ ;
wire _348_ ;
wire _997_ ;
wire _577_ ;
wire _157_ ;
wire \u_rf_if.launch_pending  ;
wire _1055_ ;
wire _386_ ;
wire _195_ ;
wire _1093_ ;
wire _1149_ ;
wire _289_ ;
wire _5_ ;
wire _921_ ;
wire _501_ ;
wire [31:0] \u_cpu.bufreg.data  ;
wire _552__bF$buf0 ;
wire _552__bF$buf1 ;
wire _552__bF$buf2 ;
wire _552__bF$buf3 ;
wire _552__bF$buf4 ;
wire _730_ ;
wire _310_ ;
wire _46_ ;
wire _824_ ;
wire _404_ ;
wire _84_ ;
wire [1:0] \u_rf_if.write_wait  ;
wire _633_ ;
wire _213_ ;
wire _1111_ ;
wire _862_ ;
wire _442_ ;
wire _918_ ;
wire _671_ ;
wire _251_ ;
wire [7:0] raddr ;
wire _727_ ;
wire _307_ ;
wire _480_ ;
wire \u_cpu.ctrl.i_jump  ;
wire _956_ ;
wire _536_ ;
wire _116_ ;
wire _1014_ ;
wire _765_ ;
wire _345_ ;
wire _994_ ;
wire _574_ ;
wire _154_ ;
wire _1052_ ;
wire _383_ ;
wire _1108_ ;
wire _859_ ;
wire _439_ ;
wire _192_ ;
wire _668_ ;
wire _248_ ;
wire _1090_ ;
wire _1146_ ;
wire _897_ ;
wire _477_ ;
wire _286_ ;
wire _2_ ;
wire i_rst_n_bF$buf0 ;
wire i_rst_n_bF$buf1 ;
wire i_rst_n_bF$buf2 ;
wire i_rst_n_bF$buf3 ;
wire _43_ ;
wire _1049_ ;
wire i_rf_miso ;
wire _189_ ;
wire _821_ ;
wire _401_ ;
wire _81_ ;
wire _1087_ ;
wire _630_ ;
wire _210_ ;
wire _915_ ;
wire _724_ ;
wire _304_ ;
wire o_rf_mosi ;
wire _953_ ;
wire _533_ ;
wire _113_ ;
wire _1011_ ;
wire _762_ ;
wire _342_ ;
wire _818_ ;
wire _78_ ;
wire _991_ ;
wire _571_ ;
wire _151_ ;
wire _627_ ;
wire _207_ ;
wire _380_ ;
wire _1105_ ;
wire _856_ ;
wire _436_ ;
wire _665_ ;
wire _245_ ;
wire _1143_ ;
wire _894_ ;
wire _474_ ;
wire [1:0] \u_cpu.bufreg2.i_bytecnt  ;
wire _283_ ;
wire _1008_ ;
wire _759_ ;
wire _339_ ;
wire _988_ ;
wire _568_ ;
wire _148_ ;
wire _40_ ;
wire _1046_ ;
wire _797_ ;
wire _377_ ;
wire _186_ ;
wire _1084_ ;
wire _912_ ;
wire _704__bF$buf0 ;
wire _704__bF$buf1 ;
wire _704__bF$buf2 ;
wire _704__bF$buf3 ;
wire _721_ ;
wire _301_ ;
wire \u_cpu.state.i_ctrl_misalign  ;
wire _37_ ;
wire _950_ ;
wire _530_ ;
wire _110_ ;
wire _815_ ;
wire _75_ ;
wire _624_ ;
wire _204_ ;
wire _1102_ ;
wire _853_ ;
wire _433_ ;
wire _909_ ;
wire _662_ ;
wire _242_ ;
wire _718_ ;
wire _1140_ ;
wire _891_ ;
wire _471_ ;
wire _947_ ;
wire _527_ ;
wire _107_ ;
wire _280_ ;
wire _1005_ ;
wire _756_ ;
wire _336_ ;
wire _985_ ;
wire _565_ ;
wire _145_ ;
wire ren_bF$buf0 ;
wire ren_bF$buf1 ;
wire ren_bF$buf2 ;
wire ren_bF$buf3 ;
wire _1043_ ;
wire _794_ ;
wire _374_ ;
wire _183_ ;
wire [6:6] \u_cpu.bufreg2.cnt_next  ;
wire _659_ ;
wire _239_ ;
wire _1081_ ;
wire _1137_ ;
wire _888_ ;
wire _468_ ;
wire _697_ ;
wire _277_ ;
wire \u_cpu.ctrl.pc  ;
wire _34_ ;
wire _812_ ;
wire _72_ ;
wire [9:0] \u_rf_if.last_req_key  ;
wire _1078_ ;
wire _621_ ;
wire _201_ ;
wire \u_cpu.state.init_done  ;
wire _850_ ;
wire _430_ ;
wire _906_ ;
wire _715_ ;
wire _944_ ;
wire _524_ ;
wire _104_ ;
wire _1002_ ;
wire _753_ ;
wire _333_ ;
wire _809_ ;
wire _69_ ;
wire _982_ ;
wire _562_ ;
wire _142_ ;
wire _618_ ;
wire _1040_ ;
wire _791_ ;
wire _371_ ;
wire _847_ ;
wire _427_ ;
wire _180_ ;
wire _656_ ;
wire _236_ ;
wire _1134_ ;
wire _885_ ;
wire _465_ ;
wire _694_ ;
wire _274_ ;
wire \u_rf_if.stream_active_bF$buf1  ;
wire _979_ ;
wire _559_ ;
wire _139_ ;
wire _31_ ;
wire _1037_ ;
wire _788_ ;
wire _368_ ;
wire [4:4] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7  ;
wire _597_ ;
wire _177_ ;
wire _1075_ ;
wire [3:0] \u_rf_if.rreg1_latched  ;
wire _903_ ;
wire _712_ ;
wire _28_ ;
wire _941_ ;
wire _521_ ;
wire _101_ ;
wire _750_ ;
wire _330_ ;
wire _806_ ;
wire _66_ ;
wire \u_cpu.o_wdata0  ;
wire _615_ ;
wire \u_cpu.bufreg.i_right_shift_op  ;
wire _844_ ;
wire _424_ ;
wire \u_cpu.immdec.gen_immdec_w_eq_1.imm7  ;
wire _653_ ;
wire _233_ ;
wire _709_ ;
wire _1131_ ;
wire _882_ ;
wire _462_ ;
wire _938_ ;
wire _518_ ;
wire _691_ ;
wire _271_ ;
wire _747_ ;
wire _327_ ;
wire _976_ ;
wire _556_ ;
wire _136_ ;
wire _1034_ ;
wire _785_ ;
wire _365_ ;
wire _594_ ;
wire _174_ ;
wire [3:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20  ;
wire _1072_ ;
wire _1128_ ;
wire _879_ ;
wire _459_ ;
wire _688_ ;
wire _268_ ;
wire _900_ ;
wire o_mem_sync ;
wire _497_ ;
wire _25_ ;
wire _803_ ;
wire _63_ ;
wire _1069_ ;
wire _612_ ;
wire _841_ ;
wire _421_ ;
wire _650_ ;
wire _230_ ;
wire _706_ ;
wire _935_ ;
wire _515_ ;
wire _744_ ;
wire _324_ ;
wire _973_ ;
wire _553_ ;
wire _133_ ;
wire _609_ ;
wire _1031_ ;
wire _782_ ;
wire _362_ ;
wire _838_ ;
wire _418_ ;
wire _98_ ;
wire _591_ ;
wire _171_ ;
wire _647_ ;
wire _227_ ;
wire \u_mem_serial.clk_sys_prev  ;
wire _1125_ ;
wire _876_ ;
wire _456_ ;
wire mem_ibus_ack ;
wire [1:0] \u_rf_if.rs2_stream_buf  ;
wire _685_ ;
wire _265_ ;
wire _494_ ;
wire _22_ ;
wire _1028_ ;
wire _779_ ;
wire _359_ ;

NOR2X1 _1677_ (
    .A(_1020_),
    .B(_1021_),
    .Y(_777_)
);

NOR2X1 _1257_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_472_),
    .Y(_452_)
);

FILL FILL99150x72150 (
);

FILL FILL99150x39750 (
);

OAI21X1 _1486_ (
    .A(_859_),
    .B(_867_),
    .C(_722_),
    .Y(_874_)
);

OAI21X1 _1295_ (
    .A(_438_),
    .B(\u_cpu.decode.opcode [2]),
    .C(_493_),
    .Y(_417_)
);

DFFPOSX1 _2521_ (
    .D(_614_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [15])
);

OAI21X1 _2101_ (
    .A(\u_cpu.decode.opcode [1]),
    .B(_437_),
    .C(\u_cpu.branch_op ),
    .Y(_154_)
);

NOR2X1 _1389_ (
    .A(\u_rf_if.last_req_key [3]),
    .B(_327_),
    .Y(_325_)
);

DFFPOSX1 _2330_ (
    .D(_664_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [28])
);

NAND3X1 _1601_ (
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_970_),
    .C(_969_),
    .Y(_971_)
);

NAND2X1 _1198_ (
    .A(\u_mem_serial.shift_reg [0]),
    .B(_510_),
    .Y(_509_)
);

OAI21X1 _1830_ (
    .A(_552__bF$buf0),
    .B(_1127_),
    .C(_1128_),
    .Y(_725_)
);

AND2X2 _1410_ (
    .A(_305_),
    .B(_315_),
    .Y(_304_)
);

BUFX2 BUFX2_insert37 (
    .A(_440_),
    .Y(_440__bF$buf5)
);

BUFX2 BUFX2_insert38 (
    .A(_440_),
    .Y(_440__bF$buf4)
);

BUFX2 BUFX2_insert39 (
    .A(_440_),
    .Y(_440__bF$buf3)
);

DFFPOSX1 _2424_ (
    .D(_601_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

OAI21X1 _2004_ (
    .A(_93_),
    .B(_95_),
    .C(_96_),
    .Y(_674_)
);

INVX1 _2233_ (
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_253_)
);

INVX1 _1924_ (
    .A(\u_cpu.bufreg.data [6]),
    .Y(_41_)
);

NAND2X1 _1504_ (
    .A(_889_),
    .B(_446_),
    .Y(_834_)
);

DFFPOSX1 _2462_ (
    .D(_768_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [28])
);

OAI21X1 _2042_ (
    .A(_122_),
    .B(_93_),
    .C(_125_),
    .Y(_665_)
);

INVX1 _1733_ (
    .A(rf_read_reg1_to_if[0]),
    .Y(_1059_)
);

OAI21X1 _1313_ (
    .A(_491_),
    .B(_489_),
    .C(_492_),
    .Y(_399_)
);

DFFPOSX1 _2518_ (
    .D(_813_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.stream_cnt [3])
);

MUX2X1 _2271_ (
    .A(_267_),
    .B(_264_),
    .S(_440__bF$buf2),
    .Y(_576_)
);

AOI21X1 _1962_ (
    .A(_64_),
    .B(_56_),
    .C(_66_),
    .Y(_686_)
);

INVX1 _1542_ (
    .A(_922_),
    .Y(_923_)
);

DFFPOSX1 _2327_ (
    .D(_817_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_if.shift_rx [1])
);

INVX1 _2080_ (
    .A(\u_cpu.bufreg.data [10]),
    .Y(_145_)
);

OAI21X1 _1771_ (
    .A(\u_rf_if.last_req_key [3]),
    .B(_704__bF$buf3),
    .C(i_rst_n_bF$buf3),
    .Y(_1081_)
);

NAND2X1 _1351_ (
    .A(_377_),
    .B(_363_),
    .Y(_361_)
);

DFFPOSX1 _2556_ (
    .D(_841_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [9])
);

NAND3X1 _2136_ (
    .A(i_mem_miso),
    .B(_178_),
    .C(_179_),
    .Y(_180_)
);

AOI21X1 _1827_ (
    .A(_505__bF$buf0),
    .B(_1119_),
    .C(_1126_),
    .Y(_726_)
);

NAND2X1 _1407_ (
    .A(\u_rf_if.last_req_key [2]),
    .B(_309_),
    .Y(_307_)
);

OAI21X1 _1580_ (
    .A(_941_),
    .B(_955_),
    .C(_954_),
    .Y(_956_)
);

BUFX2 _1160_ (
    .A(_0_),
    .Y(o_mem_mosi)
);

DFFPOSX1 _2365_ (
    .D(_696_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.branch_op )
);

NOR2X1 _1636_ (
    .A(_994_),
    .B(_995_),
    .Y(_792_)
);

NAND2X1 _1216_ (
    .A(_500_),
    .B(_494_),
    .Y(_493_)
);

INVX1 _2174_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_212_)
);

INVX1 _1865_ (
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_1154_)
);

OR2X2 _1445_ (
    .A(_724_),
    .B(i_rf_miso),
    .Y(_797_)
);

FILL FILL98550x32550 (
);

FILL FILL98850x150 (
);

AOI21X1 _1674_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_1017_),
    .C(_1019_),
    .Y(_778_)
);

NAND3X1 _1254_ (
    .A(_458_),
    .B(_456_),
    .C(_465_),
    .Y(_455_)
);

DFFPOSX1 _2459_ (
    .D(_611_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [25])
);

NOR2X1 _2039_ (
    .A(_123_),
    .B(_86_),
    .Y(_124_)
);

NAND2X1 _1483_ (
    .A(_809_),
    .B(_870_),
    .Y(_871_)
);

MUX2X1 _2268_ (
    .A(_266_),
    .B(_265_),
    .S(_440__bF$buf5),
    .Y(_578_)
);

FILL FILL99150x93750 (
);

INVX1 _1959_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_64_)
);

NOR2X1 _1539_ (
    .A(_918_),
    .B(_919_),
    .Y(_920_)
);

NOR2X1 _1292_ (
    .A(\u_cpu.state.o_cnt [2]),
    .B(_421_),
    .Y(_420_)
);

FILL FILL98850x75750 (
);

DFFPOSX1 _2497_ (
    .D(_795_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_rf_if.read_buf0 [1])
);

MUX2X1 _2077_ (
    .A(_142_),
    .B(_143_),
    .S(_413__bF$buf0),
    .Y(_648_)
);

AOI21X1 _1768_ (
    .A(_323_),
    .B(_704__bF$buf2),
    .C(_1079_),
    .Y(_744_)
);

OAI21X1 _1348_ (
    .A(\u_cpu.branch_op ),
    .B(_373_),
    .C(_367_),
    .Y(_364_)
);

MUX2X1 _1997_ (
    .A(_1059_),
    .B(_90_),
    .S(_86_),
    .Y(_675_)
);

AOI21X1 _1577_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(_952_),
    .C(_953_),
    .Y(_825_)
);

BUFX2 _1157_ (
    .A(_1122_),
    .Y(o_rf_mosi)
);

OAI21X1 _1386_ (
    .A(ren_bF$buf3),
    .B(\u_rf_if.o_waddr [3]),
    .C(_329_),
    .Y(_328_)
);

INVX1 _1195_ (
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_512_)
);

DFFPOSX1 _2421_ (
    .D(_745_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_if.last_req_key [0])
);

NOR2X1 _2001_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(_429_),
    .Y(_94_)
);

NOR2X1 _1289_ (
    .A(_437_),
    .B(_424_),
    .Y(_423_)
);

MUX2X1 _2230_ (
    .A(_250_),
    .B(_251_),
    .S(_440__bF$buf2),
    .Y(_601_)
);

OAI21X1 _1921_ (
    .A(\u_mem_serial.bit_count [4]),
    .B(_31_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_39_)
);

NOR2X1 _1501_ (
    .A(\u_mem_serial.shift_reg [27]),
    .B(_505__bF$buf4),
    .Y(_888_)
);

INVX1 _1730_ (
    .A(rf_read_reg0_to_if[2]),
    .Y(_1057_)
);

INVX1 _1310_ (
    .A(_403_),
    .Y(_402_)
);

INVX1 _2515_ (
    .A(_554_),
    .Y(_553_)
);

DFFPOSX1 _2324_ (
    .D(_659_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [23])
);

DFFPOSX1 _2553_ (
    .D(_625_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [5])
);

OAI21X1 _2133_ (
    .A(_514_),
    .B(_505__bF$buf2),
    .C(_177_),
    .Y(_625_)
);

NOR2X1 _1824_ (
    .A(_567_),
    .B(_551__bF$buf0),
    .Y(_1118_)
);

NAND2X1 _1404_ (
    .A(_337_),
    .B(_311_),
    .Y(_310_)
);

DFFPOSX1 _2362_ (
    .D(_693_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [3])
);

NOR2X1 _1633_ (
    .A(_992_),
    .B(_993_),
    .Y(_793_)
);

NOR2X1 _1213_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .Y(_496_)
);

DFFPOSX1 _2418_ (
    .D(_598_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

OAI21X1 _2171_ (
    .A(_187_),
    .B(_208_),
    .C(_209_),
    .Y(_210_)
);

INVX1 _1862_ (
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_1151_)
);

INVX1 _1442_ (
    .A(\u_rf_if.tx_state [0]),
    .Y(_722_)
);

INVX1 _2227_ (
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_250_)
);

NAND2X1 _1918_ (
    .A(_35_),
    .B(_33_),
    .Y(_36_)
);

OAI22X1 _1671_ (
    .A(_383__bF$buf0),
    .B(\u_rf_if.read_buf0 [18]),
    .C(\u_rf_if.read_buf0 [17]),
    .D(_990__bF$buf4),
    .Y(_1018_)
);

NAND2X1 _1251_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .B(_459_),
    .Y(_458_)
);

DFFPOSX1 _2456_ (
    .D(_764_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.issue_idx [2])
);

INVX1 _2036_ (
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_121_)
);

INVX1 _1727_ (
    .A(rf_read_reg0_to_if[1]),
    .Y(_1055_)
);

NOR2X1 _1307_ (
    .A(_438_),
    .B(_472_),
    .Y(_405_)
);

INVX1 _1480_ (
    .A(_867_),
    .Y(_868_)
);

MUX2X1 _2265_ (
    .A(_264_),
    .B(_246_),
    .S(_440__bF$buf5),
    .Y(_579_)
);

OAI21X1 _1956_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(_1053_),
    .C(_48_),
    .Y(_62_)
);

INVX1 _1536_ (
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_917_)
);

DFFPOSX1 _2494_ (
    .D(_792_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [4])
);

INVX1 _2074_ (
    .A(\u_cpu.bufreg.data [13]),
    .Y(_142_)
);

OAI21X1 _1765_ (
    .A(\u_rf_if.last_req_key [0]),
    .B(_704__bF$buf1),
    .C(i_rst_n_bF$buf3),
    .Y(_1078_)
);

OAI21X1 _1345_ (
    .A(_371_),
    .B(_369_),
    .C(_368_),
    .Y(_367_)
);

MUX2X1 _1994_ (
    .A(\u_mem_serial.shift_reg [21]),
    .B(rf_read_reg1_to_if[2]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_89_)
);

OAI21X1 _1574_ (
    .A(_947__bF$buf0),
    .B(_951_),
    .C(_950_),
    .Y(_826_)
);

DFFPOSX1 _2359_ (
    .D(_691_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(rf_read_reg0_to_if[3])
);

NAND2X1 _1383_ (
    .A(\u_rf_if.last_req_key [7]),
    .B(_333_),
    .Y(_331_)
);

DFFPOSX1 _2588_ (
    .D(_726_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [30])
);

OAI21X1 _2168_ (
    .A(_201_),
    .B(_206_),
    .C(_465_),
    .Y(_207_)
);

NOR2X1 _1859_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(_484_),
    .Y(_1149_)
);

INVX4 _1439_ (
    .A(_276_),
    .Y(_704_)
);

INVX1 _1192_ (
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_515_)
);

DFFPOSX1 _2397_ (
    .D(_589_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

OAI22X1 _1668_ (
    .A(\u_rf_if.read_buf0 [18]),
    .B(_947__bF$buf4),
    .C(\u_rf_if.read_buf0 [16]),
    .D(_990__bF$buf4),
    .Y(_1016_)
);

NOR2X1 _1248_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_462_),
    .Y(_461_)
);

INVX1 _1897_ (
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_20_)
);

AND2X2 _1477_ (
    .A(_863_),
    .B(_864_),
    .Y(_865_)
);

NAND2X1 _1286_ (
    .A(_426_),
    .B(_440__bF$buf1),
    .Y(_425_)
);

NAND2X1 _2512_ (
    .A(\u_mem_serial.shift_reg [9]),
    .B(_551__bF$buf2),
    .Y(_550_)
);

DFFPOSX1 _2321_ (
    .D(_656_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [20])
);

INVX4 _1189_ (
    .A(mem_ibus_ack_bF$buf0),
    .Y(_518_)
);

DFFPOSX1 _2550_ (
    .D(_838_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(_1124_)
);

NAND3X1 _2130_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(_551__bF$buf1),
    .C(_505__bF$buf0),
    .Y(_176_)
);

NOR2X1 _1821_ (
    .A(\u_mem_serial.shift_reg [28]),
    .B(_504_),
    .Y(_1116_)
);

INVX1 _1401_ (
    .A(_323_),
    .Y(_313_)
);

AOI21X1 _1630_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_988_),
    .C(_991_),
    .Y(_794_)
);

INVX2 _1210_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_499_)
);

DFFPOSX1 _2415_ (
    .D(_742_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_if.last_req_key [3])
);

MUX2X1 _2224_ (
    .A(_247_),
    .B(_248_),
    .S(_440__bF$buf5),
    .Y(_604_)
);

OAI21X1 _1915_ (
    .A(_504_),
    .B(_33_),
    .C(_562_),
    .Y(_34_)
);

DFFPOSX1 _2453_ (
    .D(_609_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

AOI21X1 _2033_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(mem_ibus_ack_bF$buf6),
    .C(_75_),
    .Y(_119_)
);

INVX1 _1724_ (
    .A(\u_cpu.csr_imm ),
    .Y(_1053_)
);

NOR2X1 _1304_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_409_),
    .Y(_408_)
);

NAND2X1 _2509_ (
    .A(\u_mem_serial.shift_reg [6]),
    .B(_551__bF$buf1),
    .Y(_548_)
);

NOR2X1 _2262_ (
    .A(\u_cpu.ctrl.pc ),
    .B(_440__bF$buf0),
    .Y(_263_)
);

MUX2X1 _1953_ (
    .A(\u_mem_serial.shift_reg [15]),
    .B(rf_read_reg0_to_if[1]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_60_)
);

NOR2X1 _1533_ (
    .A(_913_),
    .B(_370_),
    .Y(_914_)
);

DFFPOSX1 _2318_ (
    .D(_653_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [17])
);

DFFPOSX1 _2491_ (
    .D(_789_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [7])
);

MUX2X1 _2071_ (
    .A(_139_),
    .B(_140_),
    .S(_413__bF$buf3),
    .Y(_651_)
);

OAI21X1 _1762_ (
    .A(_799_),
    .B(_442_),
    .C(_1076_),
    .Y(_1077_)
);

INVX1 _1342_ (
    .A(\u_rf_if.i_stream_rs2_en ),
    .Y(_370_)
);

DFFPOSX1 _2547_ (
    .D(_571_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.alu.add_cy_r )
);

INVX1 _2127_ (
    .A(\u_mem_serial.state [1]),
    .Y(_174_)
);

MUX2X1 _1818_ (
    .A(_1112_),
    .B(_1113_),
    .S(_567_),
    .Y(_1114_)
);

FILL FILL99150x150 (
);

MUX2X1 _1991_ (
    .A(_906_),
    .B(_87_),
    .S(_86_),
    .Y(_678_)
);

OAI21X1 _1571_ (
    .A(_947__bF$buf0),
    .B(_938_),
    .C(_949_),
    .Y(_827_)
);

DFFPOSX1 _2356_ (
    .D(_688_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.csr_imm )
);

OAI21X1 _1627_ (
    .A(_988_),
    .B(_947__bF$buf1),
    .C(_989_),
    .Y(_795_)
);

AOI21X1 _1207_ (
    .A(_505__bF$buf3),
    .B(_503_),
    .C(_502_),
    .Y(_847_)
);

AOI22X1 _1380_ (
    .A(ren_bF$buf0),
    .B(raddr[7]),
    .C(_336_),
    .D(_335_),
    .Y(_334_)
);

DFFPOSX1 _2585_ (
    .D(_637_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_cpu.bufreg.data [2])
);

OAI21X1 _2165_ (
    .A(_188_),
    .B(_197_),
    .C(_204_),
    .Y(_205_)
);

OAI21X1 _1856_ (
    .A(_473_),
    .B(_1147_),
    .C(_1136_),
    .Y(_718_)
);

AND2X2 _1436_ (
    .A(_279_),
    .B(_296_),
    .Y(_278_)
);

DFFPOSX1 _2394_ (
    .D(_588_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

INVX1 _1665_ (
    .A(\u_rf_if.read_buf0 [17]),
    .Y(_1014_)
);

INVX1 _1245_ (
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_464_)
);

OAI21X1 _1894_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_437_),
    .C(_18_),
    .Y(_706_)
);

INVX1 _1474_ (
    .A(_861_),
    .Y(_862_)
);

MUX2X1 _2259_ (
    .A(_532_),
    .B(_242_),
    .S(_440__bF$buf1),
    .Y(_582_)
);

NAND2X1 _1283_ (
    .A(_430_),
    .B(_429_),
    .Y(_428_)
);

DFFPOSX1 _2488_ (
    .D(_786_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [10])
);

INVX1 _2068_ (
    .A(\u_cpu.bufreg.data [16]),
    .Y(_139_)
);

OAI21X1 _1759_ (
    .A(_520_),
    .B(_522_),
    .C(i_rst_n_bF$buf2),
    .Y(_1075_)
);

OAI21X1 _1339_ (
    .A(_376_),
    .B(_375_),
    .C(_374_),
    .Y(_373_)
);

INVX1 _2297_ (
    .A(\u_mem_serial.bit_count [3]),
    .Y(_559_)
);

NAND3X1 _1988_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_437_),
    .C(_404_),
    .Y(_85_)
);

NAND2X1 _1568_ (
    .A(_383__bF$buf4),
    .B(_946_),
    .Y(_947_)
);

MUX2X1 _1797_ (
    .A(_1096_),
    .B(_1097_),
    .S(_927_),
    .Y(_733_)
);

INVX2 _1377_ (
    .A(ren_bF$buf2),
    .Y(_337_)
);

FILL FILL99150x32550 (
);

INVX1 _1186_ (
    .A(_521_),
    .Y(_520_)
);

DFFPOSX1 _2412_ (
    .D(_595_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

INVX1 _2221_ (
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_247_)
);

NAND2X1 _1912_ (
    .A(_562_),
    .B(_28_),
    .Y(_31_)
);

DFFPOSX1 _2450_ (
    .D(_761_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_rf_if.rreg0_latched [0])
);

OAI21X1 _2030_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_114_),
    .C(_115_),
    .Y(_116_)
);

NOR2X1 _1721_ (
    .A(_1051_),
    .B(_1050_),
    .Y(_763_)
);

NOR2X1 _1301_ (
    .A(_418_),
    .B(_412_),
    .Y(_411_)
);

NAND2X1 _2506_ (
    .A(\u_mem_serial.shift_reg [10]),
    .B(_551__bF$buf2),
    .Y(_546_)
);

MUX2X1 _1950_ (
    .A(_1057_),
    .B(_58_),
    .S(_56_),
    .Y(_690_)
);

NOR2X1 _1530_ (
    .A(\u_rf_if.issue_idx [1]),
    .B(\u_rf_if.issue_idx [0]),
    .Y(_911_)
);

DFFPOSX1 _2315_ (
    .D(\u_cpu.state.cnt_r [0]),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.state.cnt_r [1])
);

DFFPOSX1 _2544_ (
    .D(_576_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

NAND2X1 _2124_ (
    .A(\u_mem_serial.bit_count [0]),
    .B(_551__bF$buf2),
    .Y(_172_)
);

NAND2X1 _1815_ (
    .A(_536_),
    .B(_551__bF$buf5),
    .Y(_1111_)
);

DFFPOSX1 _2353_ (
    .D(_685_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

OAI21X1 _1624_ (
    .A(_986_),
    .B(_947__bF$buf1),
    .C(_987_),
    .Y(_796_)
);

INVX2 _1204_ (
    .A(_551__bF$buf2),
    .Y(_504_)
);

DFFPOSX1 _2409_ (
    .D(_739_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [6])
);

DFFPOSX1 _2582_ (
    .D(_635_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [30])
);

NOR2X1 _2162_ (
    .A(_200_),
    .B(_201_),
    .Y(_202_)
);

OAI21X1 _1853_ (
    .A(_1137_),
    .B(_1139_),
    .C(_1144_),
    .Y(_1145_)
);

NAND2X1 _1433_ (
    .A(\u_rf_if.last_req_key [5]),
    .B(_283_),
    .Y(_281_)
);

INVX1 _2218_ (
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_245_)
);

DFFPOSX1 _2391_ (
    .D(_716_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_cpu.state.ibus_cyc )
);

NOR2X1 _1909_ (
    .A(_559_),
    .B(_24_),
    .Y(_29_)
);

NOR2X1 _1662_ (
    .A(\u_rf_if.read_buf0 [15]),
    .B(_383__bF$buf1),
    .Y(_1012_)
);

OAI21X1 _1242_ (
    .A(_499_),
    .B(_483_),
    .C(_468_),
    .Y(_467_)
);

DFFPOSX1 _2447_ (
    .D(_758_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg1_latched [0])
);

NAND2X1 _2027_ (
    .A(\u_cpu.branch_op ),
    .B(_437_),
    .Y(_113_)
);

NOR2X1 _1718_ (
    .A(_1049_),
    .B(_1048_),
    .Y(_764_)
);

AOI21X1 _1891_ (
    .A(_516_),
    .B(mem_ibus_ack_bF$buf1),
    .C(_17_),
    .Y(_708_)
);

INVX1 _1471_ (
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_859_)
);

MUX2X1 _2256_ (
    .A(_42_),
    .B(_1154_),
    .S(_440__bF$buf1),
    .Y(_585_)
);

MUX2X1 _1947_ (
    .A(\u_mem_serial.shift_reg [18]),
    .B(rf_read_reg0_to_if[4]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_57_)
);

INVX2 _1527_ (
    .A(\u_rf_if.prefetch_active ),
    .Y(_908_)
);

NAND2X1 _1280_ (
    .A(_433_),
    .B(_432_),
    .Y(_431_)
);

DFFPOSX1 _2485_ (
    .D(_784_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [12])
);

MUX2X1 _2065_ (
    .A(_136_),
    .B(_137_),
    .S(_413__bF$buf2),
    .Y(_654_)
);

NOR2X1 _1756_ (
    .A(\u_rf_if.write_wait [0]),
    .B(_1073_),
    .Y(_750_)
);

INVX1 _1336_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_376_)
);

AOI21X1 _2294_ (
    .A(_563_),
    .B(_568_),
    .C(\u_mem_serial.state [1]),
    .Y(_562_)
);

INVX1 _1985_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .Y(_83_)
);

NAND3X1 _1565_ (
    .A(\u_rf_if.issue_idx [4]),
    .B(_943_),
    .C(_912_),
    .Y(_944_)
);

OAI21X1 _1794_ (
    .A(_908_),
    .B(_915_),
    .C(_330_),
    .Y(_1095_)
);

NAND3X1 _1374_ (
    .A(\u_mem_serial.shift_reg [5]),
    .B(_551__bF$buf1),
    .C(_505__bF$buf0),
    .Y(_339_)
);

DFFPOSX1 _2579_ (
    .D(_631_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [31])
);

NAND2X1 _2159_ (
    .A(_196_),
    .B(_199_),
    .Y(_621_)
);

NOR2X1 _1183_ (
    .A(\u_rf_if.tx_state [2]),
    .B(_524_),
    .Y(_523_)
);

DFFPOSX1 _2388_ (
    .D(_587_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

AOI21X1 _1659_ (
    .A(_1009_),
    .B(_997_),
    .C(_1010_),
    .Y(_784_)
);

INVX1 _1239_ (
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_470_)
);

OAI21X1 _2197_ (
    .A(_551__bF$buf0),
    .B(_229_),
    .C(_227_),
    .Y(_230_)
);

INVX1 _1888_ (
    .A(_513_),
    .Y(_16_)
);

OAI21X1 _1468_ (
    .A(_806_),
    .B(_837_),
    .C(_846_),
    .Y(_848_)
);

OAI22X1 _1697_ (
    .A(\u_rf_if.read_buf0 [29]),
    .B(_947__bF$buf0),
    .C(\u_rf_if.read_buf0 [27]),
    .D(_990__bF$buf1),
    .Y(_1034_)
);

NOR2X1 _1277_ (
    .A(_435_),
    .B(_436_),
    .Y(_434_)
);

OAI21X1 _2503_ (
    .A(_552__bF$buf3),
    .B(_546_),
    .C(_545_),
    .Y(_854_)
);

DFFPOSX1 _2312_ (
    .D(_649_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [13])
);

DFFPOSX1 _2541_ (
    .D(_823_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.stream_active )
);

OAI21X1 _2121_ (
    .A(_552__bF$buf1),
    .B(_169_),
    .C(_170_),
    .Y(_630_)
);

OAI21X1 _1812_ (
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_956_),
    .C(_925_),
    .Y(_1109_)
);

DFFPOSX1 _2350_ (
    .D(_683_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

AOI22X1 _1621_ (
    .A(_917_),
    .B(_985_),
    .C(_984_),
    .D(_978_),
    .Y(_813_)
);

OAI21X1 _1201_ (
    .A(_516_),
    .B(_515_),
    .C(_507_),
    .Y(_506_)
);

DFFPOSX1 _2406_ (
    .D(_592_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

NOR2X1 _1850_ (
    .A(_1140_),
    .B(_1141_),
    .Y(_1142_)
);

NOR2X1 _1430_ (
    .A(ren_bF$buf1),
    .B(_439_),
    .Y(_284_)
);

MUX2X1 _2215_ (
    .A(_148_),
    .B(_242_),
    .S(_567_),
    .Y(_243_)
);

OAI21X1 _1906_ (
    .A(_560_),
    .B(_562_),
    .C(_26_),
    .Y(_702_)
);

DFFPOSX1 _2444_ (
    .D(_755_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rcnt [0])
);

OAI21X1 _2024_ (
    .A(_476_),
    .B(_105_),
    .C(_110_),
    .Y(_668_)
);

NAND2X1 _1715_ (
    .A(\u_rf_if.issue_idx [2]),
    .B(_1046_),
    .Y(_1047_)
);

MUX2X1 _2253_ (
    .A(_228_),
    .B(_224_),
    .S(_440__bF$buf0),
    .Y(_588_)
);

FILL FILL98250x93750 (
);

OAI21X1 _1944_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_472_),
    .C(_409_),
    .Y(_54_)
);

INVX1 _1524_ (
    .A(rf_read_reg1_to_if[3]),
    .Y(_906_)
);

DFFPOSX1 _2309_ (
    .D(_646_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [10])
);

DFFPOSX1 _2482_ (
    .D(_781_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [15])
);

INVX1 _2062_ (
    .A(\u_cpu.bufreg.data [19]),
    .Y(_136_)
);

NOR2X1 _1753_ (
    .A(_894_),
    .B(_1071_),
    .Y(_1072_)
);

INVX1 _1333_ (
    .A(\u_cpu.alu.add_cy_r ),
    .Y(_379_)
);

DFFPOSX1 _2538_ (
    .D(_828_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.stream_cnt [4])
);

MUX2X1 _2118_ (
    .A(_168_),
    .B(_153_),
    .S(_413__bF$buf3),
    .Y(_631_)
);

INVX1 _2291_ (
    .A(i_clk_sys_ext_bF$buf4),
    .Y(_565_)
);

INVX1 _1809_ (
    .A(\u_rf_if.rs2_stream_buf [0]),
    .Y(_1106_)
);

INVX1 _1982_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .Y(_81_)
);

INVX1 _1562_ (
    .A(_940_),
    .Y(_941_)
);

DFFPOSX1 _2347_ (
    .D(_681_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

OAI21X1 _1618_ (
    .A(_981_),
    .B(_983_),
    .C(_980_),
    .Y(_814_)
);

OAI21X1 _1791_ (
    .A(\u_rf_if.issue_idx [2]),
    .B(_1043_),
    .C(_927_),
    .Y(_1093_)
);

NOR2X1 _1371_ (
    .A(_342_),
    .B(_343_),
    .Y(_341_)
);

DFFPOSX1 _2576_ (
    .D(_579_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

FILL FILL98850x3750 (
);

NOR2X1 _2156_ (
    .A(_194_),
    .B(_465_),
    .Y(_197_)
);

AOI22X1 _1847_ (
    .A(_1138_),
    .B(_419_),
    .C(_362_),
    .D(_361_),
    .Y(_1139_)
);

AND2X2 _1427_ (
    .A(_288_),
    .B(\u_rf_if.last_req_key [0]),
    .Y(_287_)
);

OAI21X1 _1180_ (
    .A(ren_bF$buf2),
    .B(_527_),
    .C(i_rst_n_bF$buf2),
    .Y(_526_)
);

DFFPOSX1 _2385_ (
    .D(_711_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.decode.co_mem_word )
);

NOR2X1 _1656_ (
    .A(_1007_),
    .B(_1008_),
    .Y(_785_)
);

NAND2X1 _1236_ (
    .A(\u_cpu.branch_op ),
    .B(_482_),
    .Y(_473_)
);

NAND2X1 _2194_ (
    .A(_222_),
    .B(_551__bF$buf0),
    .Y(_227_)
);

OAI21X1 _1885_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_498_),
    .C(_14_),
    .Y(_711_)
);

OAI21X1 _1465_ (
    .A(_810_),
    .B(_836_),
    .C(_808_),
    .Y(_837_)
);

INVX1 _1694_ (
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_1032_)
);

INVX2 _1274_ (
    .A(\u_cpu.decode.opcode [0]),
    .Y(_437_)
);

DFFPOSX1 _2479_ (
    .D(_778_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [18])
);

MUX2X1 _2059_ (
    .A(_133_),
    .B(_134_),
    .S(_413__bF$buf0),
    .Y(_657_)
);

FILL FILL98550x68550 (
);

INVX1 _2288_ (
    .A(\u_mem_serial.state [0]),
    .Y(_568_)
);

INVX1 _1979_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .Y(_79_)
);

OAI21X1 _1559_ (
    .A(_935_),
    .B(_937_),
    .C(\u_rf_if.shift_rx [0]),
    .Y(_938_)
);

INVX1 _2500_ (
    .A(_544_),
    .Y(_543_)
);

INVX1 _2097_ (
    .A(\u_cpu.bufreg.data [30]),
    .Y(_152_)
);

NAND3X1 _1788_ (
    .A(_921_),
    .B(_1090_),
    .C(_968_),
    .Y(_1091_)
);

INVX1 _1368_ (
    .A(_345_),
    .Y(_344_)
);

OAI21X1 _1597_ (
    .A(_908_),
    .B(_915_),
    .C(_966_),
    .Y(_819_)
);

INVX1 _1177_ (
    .A(\u_rf_if.wen0_r ),
    .Y(_529_)
);

DFFPOSX1 _2403_ (
    .D(_620_[2]),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

MUX2X1 _2212_ (
    .A(_239_),
    .B(_240_),
    .S(_552__bF$buf4),
    .Y(_608_)
);

NOR2X1 _1903_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(_22_),
    .Y(_24_)
);

DFFPOSX1 _2441_ (
    .D(_753_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.o_waddr [0])
);

NOR2X1 _2021_ (
    .A(_56_),
    .B(_108_),
    .Y(_109_)
);

NOR2X1 _1712_ (
    .A(_943_),
    .B(_1043_),
    .Y(_1044_)
);

MUX2X1 _2250_ (
    .A(_260_),
    .B(_261_),
    .S(_440__bF$buf3),
    .Y(_591_)
);

OAI21X1 _1941_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_375_),
    .C(_51_),
    .Y(_692_)
);

NOR2X1 _1521_ (
    .A(_501_),
    .B(_903_),
    .Y(_904_)
);

DFFPOSX1 _2306_ (
    .D(_643_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.bufreg.data [7])
);

OAI21X1 _1750_ (
    .A(\u_rf_if.o_waddr [1]),
    .B(_892_),
    .C(_446_),
    .Y(_1070_)
);

INVX1 _1330_ (
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_382_)
);

DFFPOSX1 _2535_ (
    .D(_826_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [31])
);

AOI21X1 _2115_ (
    .A(_160_),
    .B(_163_),
    .C(_412_),
    .Y(_632_)
);

OAI21X1 _1806_ (
    .A(_968_),
    .B(_1102_),
    .C(_1103_),
    .Y(_730_)
);

DFFPOSX1 _2344_ (
    .D(_678_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(rf_read_reg1_to_if[3])
);

NOR2X1 _1615_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [0]),
    .Y(_981_)
);

DFFPOSX1 _2573_ (
    .D(_629_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [4])
);

INVX1 _2153_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_194_)
);

CLKBUF1 CLKBUF1_insert50 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

OAI21X1 _1844_ (
    .A(_492_),
    .B(_485_),
    .C(\u_cpu.ctrl.i_jump ),
    .Y(_1136_)
);

OR2X2 _1424_ (
    .A(_337_),
    .B(raddr[0]),
    .Y(_290_)
);

AOI21X1 _2209_ (
    .A(_366_),
    .B(_189_),
    .C(_238_),
    .Y(_609_)
);

DFFPOSX1 _2382_ (
    .D(_708_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.decode.opcode [2])
);

NOR2X1 _1653_ (
    .A(_1005_),
    .B(_1006_),
    .Y(_786_)
);

INVX2 _1233_ (
    .A(_477_),
    .Y(_476_)
);

DFFPOSX1 _2438_ (
    .D(_606_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

OAI21X1 _2018_ (
    .A(mem_ibus_ack_bF$buf7),
    .B(\u_cpu.branch_op ),
    .C(_105_),
    .Y(_106_)
);

MUX2X1 _2191_ (
    .A(_147_),
    .B(_224_),
    .S(_567_),
    .Y(_225_)
);

OAI21X1 _1709_ (
    .A(\u_rf_if.issue_idx [1]),
    .B(_969_),
    .C(_966_),
    .Y(_1042_)
);

OAI21X1 _1882_ (
    .A(_551__bF$buf4),
    .B(_12_),
    .C(_9_),
    .Y(_13_)
);

INVX1 _1462_ (
    .A(_809_),
    .Y(_810_)
);

INVX1 _2247_ (
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_260_)
);

NAND3X1 _1938_ (
    .A(\u_mem_serial.shift_reg [2]),
    .B(_551__bF$buf3),
    .C(_505__bF$buf2),
    .Y(_50_)
);

NOR2X1 _1518_ (
    .A(_445_),
    .B(_901_),
    .Y(_832_)
);

AOI21X1 _1691_ (
    .A(_1029_),
    .B(_997_),
    .C(_1030_),
    .Y(_772_)
);

NOR2X1 _1271_ (
    .A(_476_),
    .B(_468_),
    .Y(_440_)
);

DFFPOSX1 _2476_ (
    .D(_777_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [19])
);

INVX1 _2056_ (
    .A(\u_cpu.bufreg.data [22]),
    .Y(_133_)
);

OAI21X1 _1747_ (
    .A(_890_),
    .B(_891_),
    .C(_446_),
    .Y(_1068_)
);

NOR2X1 _1327_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .Y(_385_)
);

NAND3X1 _2285_ (
    .A(\u_mem_serial.shift_reg [1]),
    .B(_551__bF$buf3),
    .C(_505__bF$buf4),
    .Y(_275_)
);

INVX1 _1976_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .Y(_77_)
);

NAND2X1 _1556_ (
    .A(_294_),
    .B(_283_),
    .Y(_935_)
);

NAND3X1 _2094_ (
    .A(_479_),
    .B(_420_),
    .C(_468_),
    .Y(_150_)
);

NOR2X1 _1785_ (
    .A(_1088_),
    .B(_1087_),
    .Y(_736_)
);

AND2X2 _1365_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_347_)
);

INVX1 _1594_ (
    .A(_966_),
    .Y(_967_)
);

MUX2X1 _1174_ (
    .A(_533_),
    .B(_532_),
    .S(_567_),
    .Y(_531_)
);

DFFPOSX1 _2379_ (
    .D(_706_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.decode.opcode [0])
);

INVX1 _2188_ (
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_222_)
);

INVX1 _1879_ (
    .A(\u_cpu.bufreg.data [7]),
    .Y(_10_)
);

NOR2X1 _1459_ (
    .A(_802_),
    .B(_722_),
    .Y(_807_)
);

DFFPOSX1 _2400_ (
    .D(_590_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

NOR2X1 _1688_ (
    .A(_1027_),
    .B(_1028_),
    .Y(_773_)
);

NOR2X1 _1268_ (
    .A(_520_),
    .B(_522_),
    .Y(_442_)
);

INVX1 _1900_ (
    .A(_21_),
    .Y(_22_)
);

AOI21X1 _1497_ (
    .A(_884_),
    .B(_880_),
    .C(_879_),
    .Y(_885_)
);

DFFPOSX1 _2303_ (
    .D(\u_cpu.state.cnt_r [1]),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.state.cnt_r [2])
);

DFFPOSX1 _2532_ (
    .D(_822_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.ready_pulse )
);

AND2X2 _2112_ (
    .A(_163_),
    .B(_164_),
    .Y(_165_)
);

OAI21X1 _1803_ (
    .A(_968_),
    .B(_1100_),
    .C(_1101_),
    .Y(_731_)
);

DFFPOSX1 _2341_ (
    .D(_675_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(rf_read_reg1_to_if[0])
);

NOR2X1 _1612_ (
    .A(\u_rf_if.stream_cnt [1]),
    .B(_933_),
    .Y(_979_)
);

DFFPOSX1 _2570_ (
    .D(_853_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.state [0])
);

NAND3X1 _2150_ (
    .A(_189_),
    .B(_191_),
    .C(_454_),
    .Y(_192_)
);

CLKBUF1 CLKBUF1_insert23 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf13)
);

CLKBUF1 CLKBUF1_insert24 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf12)
);

CLKBUF1 CLKBUF1_insert25 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf11)
);

CLKBUF1 CLKBUF1_insert26 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf10)
);

CLKBUF1 CLKBUF1_insert27 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf9)
);

CLKBUF1 CLKBUF1_insert28 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf8)
);

CLKBUF1 CLKBUF1_insert29 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf7)
);

NOR2X1 _1841_ (
    .A(\u_mem_serial.shift_reg [27]),
    .B(_504_),
    .Y(_1134_)
);

INVX1 _1421_ (
    .A(_294_),
    .Y(_293_)
);

NAND2X1 _2206_ (
    .A(\u_mem_serial.shift_reg [9]),
    .B(_552__bF$buf2),
    .Y(_237_)
);

AOI21X1 _1650_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1002_),
    .C(_1004_),
    .Y(_787_)
);

OR2X2 _1230_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_479_)
);

DFFPOSX1 _2435_ (
    .D(_832_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.wdata0_next_phase )
);

AOI21X1 _2015_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(_20_),
    .C(_103_),
    .Y(_670_)
);

OAI21X1 _1706_ (
    .A(_942_),
    .B(_819_),
    .C(_1039_),
    .Y(_766_)
);

MUX2X1 _2244_ (
    .A(_257_),
    .B(_258_),
    .S(_440__bF$buf2),
    .Y(_594_)
);

OAI21X1 _1935_ (
    .A(mem_ibus_ack_bF$buf7),
    .B(_499_),
    .C(_48_),
    .Y(_695_)
);

INVX1 _1515_ (
    .A(\u_rf_if.rcnt [2]),
    .Y(_899_)
);

DFFPOSX1 _2473_ (
    .D(\u_cpu.o_wdata0 ),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.wdata0_next [0])
);

MUX2X1 _2053_ (
    .A(_130_),
    .B(_131_),
    .S(_413__bF$buf1),
    .Y(_660_)
);

OAI21X1 _1744_ (
    .A(_501_),
    .B(_903_),
    .C(_899_),
    .Y(_1066_)
);

NAND2X1 _1324_ (
    .A(_390_),
    .B(_397_),
    .Y(_388_)
);

DFFPOSX1 _2529_ (
    .D(_818_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(raddr[7])
);

NAND2X1 _2109_ (
    .A(_161_),
    .B(_160_),
    .Y(_162_)
);

OAI21X1 _2282_ (
    .A(_477_),
    .B(_372_),
    .C(_273_),
    .Y(_571_)
);

OAI21X1 _1973_ (
    .A(_437_),
    .B(_74_),
    .C(_53_),
    .Y(_75_)
);

NOR2X1 _1553_ (
    .A(_383__bF$buf3),
    .B(_932_),
    .Y(_933_)
);

DFFPOSX1 _2338_ (
    .D(_672_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(rf_wreg0_to_if[1])
);

INVX1 _2091_ (
    .A(\u_cpu.bufreg.data [2]),
    .Y(_148_)
);

AOI21X1 _1609_ (
    .A(_975_),
    .B(_976_),
    .C(_977_),
    .Y(_817_)
);

AOI21X1 _1782_ (
    .A(_321_),
    .B(_276_),
    .C(_1086_),
    .Y(_737_)
);

OAI21X1 _1362_ (
    .A(_384_),
    .B(_360_),
    .C(_351_),
    .Y(_350_)
);

DFFPOSX1 _2567_ (
    .D(_577_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

OAI21X1 _2147_ (
    .A(_187_),
    .B(_465_),
    .C(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_190_)
);

OAI21X1 _1838_ (
    .A(_543_),
    .B(_563_),
    .C(_1132_),
    .Y(_721_)
);

NOR2X1 _1418_ (
    .A(\u_rf_if.launch_pending ),
    .B(_297_),
    .Y(_296_)
);

INVX1 _1591_ (
    .A(\u_rf_if.pending_read ),
    .Y(_964_)
);

NAND2X1 _1171_ (
    .A(_535_),
    .B(_551__bF$buf5),
    .Y(_534_)
);

FILL FILL98250x32550 (
);

DFFPOSX1 _2376_ (
    .D(_702_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [2])
);

OAI22X1 _1647_ (
    .A(_383__bF$buf3),
    .B(\u_rf_if.read_buf0 [9]),
    .C(\u_rf_if.read_buf0 [8]),
    .D(_990__bF$buf3),
    .Y(_1003_)
);

NOR2X1 _1227_ (
    .A(_493_),
    .B(_483_),
    .Y(_482_)
);

AOI22X1 _2185_ (
    .A(\u_mem_serial.shift_reg [14]),
    .B(_551__bF$buf1),
    .C(_1118_),
    .D(\u_cpu.ctrl.pc ),
    .Y(_220_)
);

INVX1 _1876_ (
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_7_)
);

INVX1 _1456_ (
    .A(_1124_),
    .Y(_805_)
);

AOI21X1 _1685_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_1024_),
    .C(_1026_),
    .Y(_774_)
);

NOR2X1 _1265_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(_445_),
    .Y(_444_)
);

FILL FILL98550x75750 (
);

OAI21X1 _1494_ (
    .A(\u_rf_if.tx_state [0]),
    .B(_327_),
    .C(_809_),
    .Y(_882_)
);

OAI21X1 _2279_ (
    .A(\u_cpu.ctrl.i_jump ),
    .B(_341_),
    .C(_440__bF$buf3),
    .Y(_272_)
);

BUFX2 BUFX2_insert0 (
    .A(_990_),
    .Y(_990__bF$buf4)
);

BUFX2 BUFX2_insert1 (
    .A(_990_),
    .Y(_990__bF$buf3)
);

BUFX2 BUFX2_insert2 (
    .A(_990_),
    .Y(_990__bF$buf2)
);

BUFX2 BUFX2_insert3 (
    .A(_990_),
    .Y(_990__bF$buf1)
);

BUFX2 BUFX2_insert4 (
    .A(_990_),
    .Y(_990__bF$buf0)
);

BUFX2 BUFX2_insert5 (
    .A(ren),
    .Y(ren_bF$buf3)
);

BUFX2 BUFX2_insert6 (
    .A(ren),
    .Y(ren_bF$buf2)
);

BUFX2 BUFX2_insert7 (
    .A(ren),
    .Y(ren_bF$buf1)
);

BUFX2 BUFX2_insert8 (
    .A(ren),
    .Y(ren_bF$buf0)
);

BUFX2 BUFX2_insert9 (
    .A(_552_),
    .Y(_552__bF$buf4)
);

MUX2X1 _2088_ (
    .A(_41_),
    .B(_1153_),
    .S(_413__bF$buf4),
    .Y(_640_)
);

OAI21X1 _1779_ (
    .A(\u_rf_if.last_req_key [7]),
    .B(_704__bF$buf2),
    .C(i_rst_n_bF$buf1),
    .Y(_1085_)
);

OAI21X1 _1359_ (
    .A(_359_),
    .B(_358_),
    .C(_354_),
    .Y(_353_)
);

INVX1 _2300_ (
    .A(_557_),
    .Y(_556_)
);

OAI21X1 _1588_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_962_),
    .C(_954_),
    .Y(_823_)
);

OAI21X1 _1168_ (
    .A(_552__bF$buf2),
    .B(_538_),
    .C(_537_),
    .Y(_851_)
);

OAI21X1 _1800_ (
    .A(_968_),
    .B(_1098_),
    .C(_1099_),
    .Y(_732_)
);

NAND2X1 _1397_ (
    .A(\u_rf_if.last_req_key [9]),
    .B(_527_),
    .Y(_317_)
);

OAI21X1 _2203_ (
    .A(_551__bF$buf0),
    .B(_234_),
    .C(_232_),
    .Y(_235_)
);

FILL FILL99150x68550 (
);

DFFPOSX1 _2432_ (
    .D(_604_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

AOI22X1 _2012_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_93_),
    .D(rf_wreg0_to_if[0]),
    .Y(_102_)
);

OAI22X1 _1703_ (
    .A(\u_rf_if.read_buf0 [31]),
    .B(_947__bF$buf0),
    .C(\u_rf_if.read_buf0 [29]),
    .D(_990__bF$buf1),
    .Y(_1038_)
);

INVX1 _2241_ (
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_257_)
);

AOI21X1 _1932_ (
    .A(_45_),
    .B(_46_),
    .C(_47_),
    .Y(_697_)
);

NOR2X1 _1512_ (
    .A(_895_),
    .B(_896_),
    .Y(_897_)
);

DFFPOSX1 _2470_ (
    .D(_775_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [21])
);

INVX1 _2050_ (
    .A(\u_cpu.bufreg.data [25]),
    .Y(_130_)
);

AOI21X1 _1741_ (
    .A(mem_ibus_ack_bF$buf7),
    .B(_1063_),
    .C(_1064_),
    .Y(_756_)
);

NAND2X1 _1321_ (
    .A(_396_),
    .B(_393_),
    .Y(_391_)
);

DFFPOSX1 _2526_ (
    .D(_734_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(raddr[2])
);

NAND2X1 _2106_ (
    .A(_154_),
    .B(_381_),
    .Y(_159_)
);

MUX2X1 _1970_ (
    .A(_70_),
    .B(_72_),
    .S(_56_),
    .Y(_684_)
);

OAI21X1 _1550_ (
    .A(_383__bF$buf4),
    .B(_929_),
    .C(_925_),
    .Y(_930_)
);

DFFPOSX1 _2335_ (
    .D(_669_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(rf_read_reg0_to_if[4])
);

INVX1 _1606_ (
    .A(i_rf_miso),
    .Y(_975_)
);

DFFPOSX1 _2564_ (
    .D(_850_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [18])
);

NOR2X1 _2144_ (
    .A(_476_),
    .B(_186_),
    .Y(_187_)
);

NOR2X1 _1835_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(_486_),
    .Y(_1131_)
);

NAND2X1 _1415_ (
    .A(\u_rf_if.last_req_key [6]),
    .B(_300_),
    .Y(_299_)
);

BUFX2 BUFX2_insert80 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf7)
);

BUFX2 BUFX2_insert81 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf6)
);

BUFX2 BUFX2_insert82 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf5)
);

BUFX2 BUFX2_insert83 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf4)
);

BUFX2 BUFX2_insert84 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf3)
);

BUFX2 BUFX2_insert85 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf2)
);

BUFX2 BUFX2_insert86 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf1)
);

BUFX2 BUFX2_insert87 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf0)
);

DFFPOSX1 _2373_ (
    .D(_584_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

OAI22X1 _1644_ (
    .A(\u_rf_if.read_buf0 [9]),
    .B(_947__bF$buf3),
    .C(\u_rf_if.read_buf0 [7]),
    .D(_990__bF$buf3),
    .Y(_1001_)
);

INVX1 _1224_ (
    .A(_486_),
    .Y(_485_)
);

DFFPOSX1 _2429_ (
    .D(_856_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [10])
);

NAND2X1 _2009_ (
    .A(rf_wreg0_to_if[1]),
    .B(_93_),
    .Y(_100_)
);

NAND2X1 _2182_ (
    .A(\u_mem_serial.shift_reg [12]),
    .B(_551__bF$buf3),
    .Y(_218_)
);

INVX1 _1873_ (
    .A(_564_),
    .Y(_5_)
);

NAND2X1 _1453_ (
    .A(_802_),
    .B(_723_),
    .Y(_803_)
);

MUX2X1 _2238_ (
    .A(_254_),
    .B(_255_),
    .S(_440__bF$buf4),
    .Y(_597_)
);

INVX1 _1929_ (
    .A(\u_mem_serial.req_pending ),
    .Y(_45_)
);

NOR2X1 _1509_ (
    .A(_311_),
    .B(_893_),
    .Y(_894_)
);

OAI22X1 _1682_ (
    .A(_383__bF$buf2),
    .B(\u_rf_if.read_buf0 [22]),
    .C(\u_rf_if.read_buf0 [21]),
    .D(_990__bF$buf0),
    .Y(_1025_)
);

NAND3X1 _1262_ (
    .A(_473_),
    .B(_448_),
    .C(_453_),
    .Y(_447_)
);

DFFPOSX1 _2467_ (
    .D(_773_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_rf_if.read_buf0 [23])
);

MUX2X1 _2047_ (
    .A(_126_),
    .B(_128_),
    .S(_413__bF$buf1),
    .Y(_663_)
);

AOI21X1 _1738_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_1061_),
    .C(_1062_),
    .Y(_757_)
);

OAI21X1 _1318_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .C(_395_),
    .Y(_394_)
);

NAND2X1 _1491_ (
    .A(_843_),
    .B(_878_),
    .Y(_879_)
);

NOR2X1 _2276_ (
    .A(_347_),
    .B(_343_),
    .Y(_270_)
);

INVX1 _1967_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_70_)
);

OAI21X1 _1547_ (
    .A(_908_),
    .B(_915_),
    .C(_927_),
    .Y(_829_)
);

MUX2X1 _2085_ (
    .A(_146_),
    .B(_147_),
    .S(_413__bF$buf4),
    .Y(_644_)
);

AOI21X1 _1776_ (
    .A(_283_),
    .B(_704__bF$buf0),
    .C(_1083_),
    .Y(_740_)
);

OAI21X1 _1356_ (
    .A(_383__bF$buf2),
    .B(_382_),
    .C(_366_),
    .Y(_356_)
);

OAI21X1 _1585_ (
    .A(_383__bF$buf4),
    .B(\u_rf_if.stream_cnt [0]),
    .C(_960_),
    .Y(_961_)
);

OAI21X1 _1165_ (
    .A(_552__bF$buf0),
    .B(_540_),
    .C(_539_),
    .Y(_852_)
);

NAND2X1 _1394_ (
    .A(ren_bF$buf2),
    .B(_321_),
    .Y(_320_)
);

NAND2X1 _2179_ (
    .A(_214_),
    .B(_216_),
    .Y(_617_)
);

OAI22X1 _1679_ (
    .A(_383__bF$buf0),
    .B(\u_rf_if.read_buf0 [21]),
    .C(\u_rf_if.read_buf0 [20]),
    .D(_990__bF$buf4),
    .Y(_1023_)
);

NAND2X1 _1259_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_499_),
    .Y(_450_)
);

NAND2X1 _2200_ (
    .A(_121_),
    .B(_551__bF$buf0),
    .Y(_232_)
);

AOI22X1 _1488_ (
    .A(_313_),
    .B(_525_),
    .C(_288_),
    .D(_807_),
    .Y(_876_)
);

OAI22X1 _1700_ (
    .A(\u_rf_if.read_buf0 [30]),
    .B(_947__bF$buf0),
    .C(\u_rf_if.read_buf0 [28]),
    .D(_990__bF$buf1),
    .Y(_1036_)
);

NOR2X1 _1297_ (
    .A(_500_),
    .B(_469_),
    .Y(_415_)
);

DFFPOSX1 _2523_ (
    .D(_570_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.alu.cmp_r )
);

OAI21X1 _2103_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_410_),
    .C(_155_),
    .Y(_156_)
);

DFFPOSX1 _2332_ (
    .D(_666_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(rf_read_reg1_to_if[4])
);

OAI21X1 _1603_ (
    .A(_908_),
    .B(_970_),
    .C(_927_),
    .Y(_973_)
);

DFFPOSX1 _2561_ (
    .D(_574_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

AOI21X1 _2141_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_471_),
    .Y(_184_)
);

NOR2X1 _1832_ (
    .A(_1129_),
    .B(_488_),
    .Y(_641_[0])
);

AOI21X1 _1412_ (
    .A(_332_),
    .B(_331_),
    .C(_303_),
    .Y(_302_)
);

BUFX2 BUFX2_insert51 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf3 )
);

BUFX2 BUFX2_insert52 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf2 )
);

BUFX2 BUFX2_insert53 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf1 )
);

BUFX2 BUFX2_insert54 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf0 )
);

BUFX2 BUFX2_insert55 (
    .A(_704_),
    .Y(_704__bF$buf3)
);

BUFX2 BUFX2_insert56 (
    .A(_704_),
    .Y(_704__bF$buf2)
);

BUFX2 BUFX2_insert57 (
    .A(_704_),
    .Y(_704__bF$buf1)
);

BUFX2 BUFX2_insert58 (
    .A(_704_),
    .Y(_704__bF$buf0)
);

BUFX2 BUFX2_insert59 (
    .A(_551_),
    .Y(_551__bF$buf5)
);

DFFPOSX1 _2370_ (
    .D(_699_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [5])
);

OAI22X1 _1641_ (
    .A(\u_rf_if.read_buf0 [8]),
    .B(_947__bF$buf1),
    .C(\u_rf_if.read_buf0 [6]),
    .D(_990__bF$buf3),
    .Y(_999_)
);

NOR2X1 _1221_ (
    .A(_490_),
    .B(_489_),
    .Y(_488_)
);

DFFPOSX1 _2426_ (
    .D(_750_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.write_wait [0])
);

NAND2X1 _2006_ (
    .A(rf_wreg0_to_if[2]),
    .B(_93_),
    .Y(_98_)
);

OAI21X1 _1870_ (
    .A(_542_),
    .B(_562_),
    .C(_2_),
    .Y(_714_)
);

OAI21X1 _1450_ (
    .A(\u_rf_if.tx_state [3]),
    .B(_522_),
    .C(\u_rf_if.tx_state [4]),
    .Y(_801_)
);

INVX1 _2235_ (
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_254_)
);

MUX2X1 _1926_ (
    .A(_41_),
    .B(_42_),
    .S(_567_),
    .Y(_43_)
);

NAND2X1 _1506_ (
    .A(\u_rf_if.wen0_r ),
    .B(\u_rf_if.rtrig0 ),
    .Y(_891_)
);

DFFPOSX1 _2464_ (
    .D(_770_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [26])
);

INVX1 _2044_ (
    .A(\u_cpu.bufreg.data [29]),
    .Y(_127_)
);

AOI21X1 _1735_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(_1059_),
    .C(_1060_),
    .Y(_758_)
);

AOI22X1 _1315_ (
    .A(_400_),
    .B(_398_),
    .C(_411_),
    .D(_422_),
    .Y(_397_)
);

NAND2X1 _2273_ (
    .A(\u_mem_serial.bit_count [6]),
    .B(_38_),
    .Y(_269_)
);

OAI21X1 _1964_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(_64_),
    .C(_15_),
    .Y(_68_)
);

INVX1 _1544_ (
    .A(_924_),
    .Y(_925_)
);

DFFPOSX1 _2329_ (
    .D(_663_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [27])
);

INVX1 _2082_ (
    .A(\u_cpu.bufreg.data [9]),
    .Y(_146_)
);

OAI21X1 _1773_ (
    .A(\u_rf_if.last_req_key [4]),
    .B(_704__bF$buf3),
    .C(i_rst_n_bF$buf0),
    .Y(_1082_)
);

INVX1 _1353_ (
    .A(_497_),
    .Y(_359_)
);

DFFPOSX1 _2558_ (
    .D(_842_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [6])
);

AOI21X1 _2138_ (
    .A(_505__bF$buf4),
    .B(_180_),
    .C(_181_),
    .Y(_624_)
);

NAND2X1 _1829_ (
    .A(\u_mem_serial.shift_reg [1]),
    .B(_552__bF$buf0),
    .Y(_1128_)
);

NOR2X1 _1409_ (
    .A(_306_),
    .B(_312_),
    .Y(_305_)
);

NAND2X1 _1582_ (
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(_956_),
    .Y(_958_)
);

OAI21X1 _1162_ (
    .A(_543_),
    .B(_563_),
    .C(_541_),
    .Y(_853_)
);

DFFPOSX1 _2367_ (
    .D(_697_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.req_pending )
);

INVX2 _1638_ (
    .A(_947__bF$buf1),
    .Y(_997_)
);

INVX1 _1218_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_491_)
);

OAI21X1 _1391_ (
    .A(ren_bF$buf3),
    .B(\u_rf_if.o_waddr [1]),
    .C(_324_),
    .Y(_323_)
);

OAI21X1 _2176_ (
    .A(_463_),
    .B(_213_),
    .C(_465_),
    .Y(_214_)
);

OAI21X1 _1867_ (
    .A(_551__bF$buf4),
    .B(_1125_),
    .C(_1152_),
    .Y(_1_)
);

INVX1 _1447_ (
    .A(i_rst_n_bF$buf2),
    .Y(_799_)
);

OAI22X1 _1676_ (
    .A(_383__bF$buf0),
    .B(\u_rf_if.read_buf0 [20]),
    .C(\u_rf_if.read_buf0 [19]),
    .D(_990__bF$buf4),
    .Y(_1021_)
);

OAI21X1 _1256_ (
    .A(_499_),
    .B(_454_),
    .C(_471_),
    .Y(_453_)
);

AND2X2 _1485_ (
    .A(\u_cpu.o_wdata0 ),
    .B(_867_),
    .Y(_873_)
);

INVX1 _1294_ (
    .A(\u_cpu.bufreg.data [0]),
    .Y(_418_)
);

DFFPOSX1 _2499_ (
    .D(_736_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(raddr[0])
);

MUX2X1 _2079_ (
    .A(_143_),
    .B(_144_),
    .S(_413__bF$buf2),
    .Y(_647_)
);

NAND2X1 _1999_ (
    .A(_518_),
    .B(_91_),
    .Y(_92_)
);

NAND2X1 _1579_ (
    .A(_945_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_955_)
);

BUFX2 _1159_ (
    .A(_1120_),
    .Y(o_mem_sck)
);

DFFPOSX1 _2520_ (
    .D(_814_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.stream_cnt [2])
);

MUX2X1 _2100_ (
    .A(_152_),
    .B(_127_),
    .S(_413__bF$buf0),
    .Y(_634_)
);

AND2X2 _1388_ (
    .A(_327_),
    .B(\u_rf_if.last_req_key [3]),
    .Y(_326_)
);

NAND3X1 _1600_ (
    .A(\u_rf_if.issue_idx [4]),
    .B(_910_),
    .C(_914_),
    .Y(_970_)
);

INVX1 _1197_ (
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_510_)
);

FILL FILL99150x75750 (
);

BUFX2 BUFX2_insert20 (
    .A(_505_),
    .Y(_505__bF$buf2)
);

BUFX2 BUFX2_insert21 (
    .A(_505_),
    .Y(_505__bF$buf1)
);

BUFX2 BUFX2_insert22 (
    .A(_505_),
    .Y(_505__bF$buf0)
);

FILL FILL98850x57750 (
);

DFFPOSX1 _2423_ (
    .D(_746_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [3])
);

NAND2X1 _2003_ (
    .A(rf_wreg0_to_if[3]),
    .B(_93_),
    .Y(_96_)
);

MUX2X1 _2232_ (
    .A(_251_),
    .B(_252_),
    .S(_440__bF$buf4),
    .Y(_600_)
);

NAND2X1 _1923_ (
    .A(_1151_),
    .B(_551__bF$buf4),
    .Y(_40_)
);

NAND2X1 _1503_ (
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .Y(_889_)
);

DFFPOSX1 _2461_ (
    .D(_767_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [29])
);

AOI22X1 _2041_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_reg [11]),
    .C(_91_),
    .D(_94_),
    .Y(_125_)
);

AOI21X1 _1732_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_1057_),
    .C(_1058_),
    .Y(_759_)
);

OAI21X1 _1312_ (
    .A(_484_),
    .B(_406_),
    .C(_401_),
    .Y(_400_)
);

DFFPOSX1 _2517_ (
    .D(_612_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [24])
);

MUX2X1 _2270_ (
    .A(_265_),
    .B(_267_),
    .S(_440__bF$buf2),
    .Y(_577_)
);

NOR2X1 _1961_ (
    .A(_65_),
    .B(_56_),
    .Y(_66_)
);

NOR2X1 _1541_ (
    .A(_917_),
    .B(_921_),
    .Y(_922_)
);

DFFPOSX1 _2326_ (
    .D(_661_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [25])
);

AOI21X1 _1770_ (
    .A(_309_),
    .B(_704__bF$buf1),
    .C(_1080_),
    .Y(_743_)
);

OR2X2 _1350_ (
    .A(_363_),
    .B(_377_),
    .Y(_362_)
);

DFFPOSX1 _2555_ (
    .D(_575_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [6])
);

NOR2X1 _2135_ (
    .A(\u_mem_serial.bit_count [6]),
    .B(_504_),
    .Y(_179_)
);

NOR2X1 _1826_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(_505__bF$buf0),
    .Y(_1126_)
);

OR2X2 _1406_ (
    .A(_309_),
    .B(\u_rf_if.last_req_key [2]),
    .Y(_308_)
);

DFFPOSX1 _2364_ (
    .D(_695_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

OAI22X1 _1635_ (
    .A(_383__bF$buf0),
    .B(\u_rf_if.read_buf0 [5]),
    .C(\u_rf_if.read_buf0 [4]),
    .D(_990__bF$buf2),
    .Y(_995_)
);

OAI21X1 _1215_ (
    .A(_497_),
    .B(_495_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_494_)
);

INVX1 _2173_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_211_)
);

INVX1 _1864_ (
    .A(\u_cpu.bufreg.data [5]),
    .Y(_1153_)
);

NAND3X1 _1444_ (
    .A(\u_rf_if.tx_state [1]),
    .B(_722_),
    .C(_723_),
    .Y(_724_)
);

INVX1 _2229_ (
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_251_)
);

OAI22X1 _1673_ (
    .A(\u_rf_if.read_buf0 [20]),
    .B(_947__bF$buf4),
    .C(\u_rf_if.read_buf0 [18]),
    .D(_990__bF$buf4),
    .Y(_1019_)
);

OAI21X1 _1253_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_460_),
    .C(_457_),
    .Y(_456_)
);

DFFPOSX1 _2458_ (
    .D(_765_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.issue_idx [1])
);

OAI21X1 _2038_ (
    .A(_518_),
    .B(_121_),
    .C(_122_),
    .Y(_123_)
);

AOI21X1 _1729_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_1055_),
    .C(_1056_),
    .Y(_760_)
);

OAI21X1 _1309_ (
    .A(_499_),
    .B(_404_),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_403_)
);

OAI21X1 _1482_ (
    .A(_859_),
    .B(_868_),
    .C(_869_),
    .Y(_870_)
);

INVX1 _2267_ (
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_266_)
);

AOI21X1 _1958_ (
    .A(_61_),
    .B(_56_),
    .C(_63_),
    .Y(_687_)
);

INVX1 _1538_ (
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_919_)
);

NAND2X1 _1291_ (
    .A(_491_),
    .B(_492_),
    .Y(_421_)
);

DFFPOSX1 _2496_ (
    .D(_794_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_rf_if.read_buf0 [2])
);

INVX1 _2076_ (
    .A(\u_cpu.bufreg.data [12]),
    .Y(_143_)
);

OAI21X1 _1767_ (
    .A(\u_rf_if.last_req_key [1]),
    .B(_704__bF$buf2),
    .C(i_rst_n_bF$buf1),
    .Y(_1079_)
);

NAND2X1 _1347_ (
    .A(_372_),
    .B(_366_),
    .Y(_365_)
);

AOI21X1 _1996_ (
    .A(_518_),
    .B(rf_read_reg1_to_if[1]),
    .C(_71_),
    .Y(_90_)
);

NOR2X1 _1576_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_rf_if.rreg0_latched [3]),
    .Y(_953_)
);

BUFX2 _1156_ (
    .A(_1123_),
    .Y(o_rf_sck)
);

NAND2X1 _1385_ (
    .A(ren_bF$buf3),
    .B(_330_),
    .Y(_329_)
);

NOR2X1 _1194_ (
    .A(_518_),
    .B(_514_),
    .Y(_513_)
);

DFFPOSX1 _2399_ (
    .D(_720_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.state.cnt_r [0])
);

NOR2X1 _1899_ (
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_21_)
);

NOR2X1 _1479_ (
    .A(_866_),
    .B(_862_),
    .Y(_867_)
);

DFFPOSX1 _2420_ (
    .D(_599_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

INVX2 _2000_ (
    .A(_92_),
    .Y(_93_)
);

NAND2X1 _1288_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(_438_),
    .Y(_424_)
);

OAI21X1 _1920_ (
    .A(_504_),
    .B(_37_),
    .C(_562_),
    .Y(_38_)
);

NOR2X1 _1500_ (
    .A(\u_mem_serial.shift_reg [26]),
    .B(_504_),
    .Y(_887_)
);

OAI21X1 _2514_ (
    .A(_568_),
    .B(_553_),
    .C(_562_),
    .Y(_552_)
);

DFFPOSX1 _2323_ (
    .D(_658_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [22])
);

DFFPOSX1 _2552_ (
    .D(_839_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [4])
);

NAND3X1 _2132_ (
    .A(\u_mem_serial.shift_reg [4]),
    .B(_551__bF$buf3),
    .C(_505__bF$buf2),
    .Y(_177_)
);

FILL FILL98850x43350 (
);

AOI21X1 _1823_ (
    .A(_505__bF$buf1),
    .B(_1116_),
    .C(_1117_),
    .Y(_727_)
);

INVX1 _1403_ (
    .A(\u_rf_if.o_waddr [2]),
    .Y(_311_)
);

DFFPOSX1 _2361_ (
    .D(_580_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.pc )
);

OAI22X1 _1632_ (
    .A(_383__bF$buf0),
    .B(\u_rf_if.read_buf0 [4]),
    .C(\u_rf_if.read_buf0 [3]),
    .D(_990__bF$buf4),
    .Y(_993_)
);

NOR2X1 _1212_ (
    .A(_499_),
    .B(_498_),
    .Y(_497_)
);

DFFPOSX1 _2417_ (
    .D(_743_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_if.last_req_key [2])
);

OAI21X1 _2170_ (
    .A(_200_),
    .B(_465_),
    .C(_187_),
    .Y(_209_)
);

OAI21X1 _1861_ (
    .A(_1148_),
    .B(_1149_),
    .C(_1150_),
    .Y(_716_)
);

AOI21X1 _1441_ (
    .A(_338_),
    .B(_704__bF$buf2),
    .C(_705_),
    .Y(_841_)
);

MUX2X1 _2226_ (
    .A(_248_),
    .B(_249_),
    .S(_440__bF$buf2),
    .Y(_603_)
);

INVX1 _1917_ (
    .A(\u_mem_serial.bit_count [5]),
    .Y(_35_)
);

INVX1 _1670_ (
    .A(\u_rf_if.read_buf0 [19]),
    .Y(_1017_)
);

NOR2X1 _1250_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_460_),
    .Y(_459_)
);

DFFPOSX1 _2455_ (
    .D(\u_rf_if.i_stream_rs2_en ),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(current_stream_rs2_hint)
);

INVX1 _2035_ (
    .A(rf_read_reg1_to_if[4]),
    .Y(_120_)
);

AOI21X1 _1726_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(_1053_),
    .C(_1054_),
    .Y(_761_)
);

MUX2X1 _1306_ (
    .A(rf_read_reg1_to_if[0]),
    .B(rf_wreg0_to_if[0]),
    .S(_407_),
    .Y(_406_)
);

INVX1 _2264_ (
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_264_)
);

INVX1 _1955_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_61_)
);

INVX1 _1535_ (
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_916_)
);

DFFPOSX1 _2493_ (
    .D(_791_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [5])
);

MUX2X1 _2073_ (
    .A(_140_),
    .B(_141_),
    .S(_413__bF$buf0),
    .Y(_650_)
);

AND2X2 _1764_ (
    .A(_1077_),
    .B(_879_),
    .Y(_746_)
);

NAND2X1 _1344_ (
    .A(_376_),
    .B(_400_),
    .Y(_368_)
);

DFFPOSX1 _2549_ (
    .D(_624_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [0])
);

OAI22X1 _2129_ (
    .A(_543_),
    .B(_563_),
    .C(_19_),
    .D(_175_),
    .Y(_627_)
);

MUX2X1 _1993_ (
    .A(_1063_),
    .B(_88_),
    .S(_86_),
    .Y(_677_)
);

OAI21X1 _1573_ (
    .A(_935_),
    .B(_937_),
    .C(\u_rf_if.shift_rx [1]),
    .Y(_951_)
);

DFFPOSX1 _2358_ (
    .D(_690_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(rf_read_reg0_to_if[2])
);

OAI22X1 _1629_ (
    .A(\u_rf_if.read_buf0 [4]),
    .B(_947__bF$buf2),
    .C(\u_rf_if.read_buf0 [2]),
    .D(_990__bF$buf0),
    .Y(_991_)
);

INVX1 _1209_ (
    .A(\u_cpu.state.init_done ),
    .Y(_500_)
);

OR2X2 _1382_ (
    .A(_333_),
    .B(\u_rf_if.last_req_key [7]),
    .Y(_332_)
);

DFFPOSX1 _2587_ (
    .D(_572_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

NOR2X1 _2167_ (
    .A(_464_),
    .B(_463_),
    .Y(_206_)
);

INVX1 _1858_ (
    .A(_440__bF$buf3),
    .Y(_1148_)
);

NAND2X1 _1438_ (
    .A(_442_),
    .B(_277_),
    .Y(_276_)
);

INVX1 _1191_ (
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_516_)
);

DFFPOSX1 _2396_ (
    .D(_721_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.active_ibus )
);

AOI21X1 _1667_ (
    .A(_1014_),
    .B(_997_),
    .C(_1015_),
    .Y(_781_)
);

NAND2X1 _1247_ (
    .A(_464_),
    .B(_463_),
    .Y(_462_)
);

NOR2X1 _1896_ (
    .A(i_clk_fast_bF$buf0),
    .B(_19_),
    .Y(_1120_)
);

NOR2X1 _1476_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_864_)
);

AOI21X1 _1285_ (
    .A(_439_),
    .B(_427_),
    .C(_434_),
    .Y(_426_)
);

NOR2X1 _2299_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_558_),
    .Y(_557_)
);

NAND2X1 _2511_ (
    .A(\u_mem_serial.shift_reg [10]),
    .B(_552__bF$buf2),
    .Y(_549_)
);

AOI22X1 _1799_ (
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_973_),
    .C(_972_),
    .D(raddr[4]),
    .Y(_1099_)
);

NOR2X1 _1379_ (
    .A(ren_bF$buf0),
    .B(_433_),
    .Y(_335_)
);

DFFPOSX1 _2320_ (
    .D(_655_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [19])
);

NOR2X1 _1188_ (
    .A(_526_),
    .B(_519_),
    .Y(_849_)
);

FILL FILL99150x82950 (
);

FILL FILL99150x3750 (
);

MUX2X1 _1820_ (
    .A(_1110_),
    .B(_1115_),
    .S(_552__bF$buf4),
    .Y(_728_)
);

INVX1 _1400_ (
    .A(\u_rf_if.last_req_key [1]),
    .Y(_314_)
);

FILL FILL98850x64950 (
);

DFFPOSX1 _2414_ (
    .D(_596_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

INVX1 _2223_ (
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_248_)
);

NOR2X1 _1914_ (
    .A(_558_),
    .B(_22_),
    .Y(_33_)
);

DFFPOSX1 _2452_ (
    .D(_762_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.issue_idx [4])
);

NAND2X1 _2032_ (
    .A(_518_),
    .B(_117_),
    .Y(_118_)
);

AOI21X1 _1723_ (
    .A(\u_rf_if.issue_idx [4]),
    .B(_1050_),
    .C(_1052_),
    .Y(_762_)
);

NAND2X1 _1303_ (
    .A(_472_),
    .B(_410_),
    .Y(_409_)
);

NAND2X1 _2508_ (
    .A(\u_mem_serial.shift_reg [7]),
    .B(_552__bF$buf3),
    .Y(_547_)
);

MUX2X1 _2261_ (
    .A(_242_),
    .B(_262_),
    .S(_440__bF$buf1),
    .Y(_581_)
);

MUX2X1 _1952_ (
    .A(_1055_),
    .B(_59_),
    .S(_56_),
    .Y(_689_)
);

NAND2X1 _1532_ (
    .A(_911_),
    .B(_912_),
    .Y(_913_)
);

DFFPOSX1 _2317_ (
    .D(_652_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [16])
);

DFFPOSX1 _2490_ (
    .D(_788_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [8])
);

INVX1 _2070_ (
    .A(\u_cpu.bufreg.data [15]),
    .Y(_140_)
);

NAND2X1 _1761_ (
    .A(i_rst_n_bF$buf2),
    .B(_277_),
    .Y(_1076_)
);

OAI21X1 _1341_ (
    .A(\u_rf_if.read_buf1 [0]),
    .B(\u_rf_if.i_stream_rs2_en ),
    .C(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_371_)
);

DFFPOSX1 _2546_ (
    .D(_834_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.write_wait [1])
);

OAI22X1 _2126_ (
    .A(\u_mem_serial.state [0]),
    .B(_173_),
    .C(_172_),
    .D(_553_),
    .Y(_628_)
);

INVX1 _1817_ (
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_1113_)
);

MUX2X1 _1990_ (
    .A(\u_mem_serial.shift_reg [23]),
    .B(rf_read_reg1_to_if[4]),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_87_)
);

AOI22X1 _1570_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [31]),
    .C(_948_),
    .D(\u_rf_if.read_buf0 [30]),
    .Y(_949_)
);

DFFPOSX1 _2355_ (
    .D(_687_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

AOI22X1 _1626_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [2]),
    .C(_948_),
    .D(\u_rf_if.read_buf0 [1]),
    .Y(_989_)
);

NOR2X1 _1206_ (
    .A(\u_mem_serial.shift_reg [26]),
    .B(_505__bF$buf3),
    .Y(_502_)
);

DFFPOSX1 _2584_ (
    .D(_728_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [19])
);

OAI21X1 _2164_ (
    .A(_200_),
    .B(_465_),
    .C(_188_),
    .Y(_204_)
);

AOI21X1 _1855_ (
    .A(\u_cpu.bne_or_bge ),
    .B(_1145_),
    .C(_1146_),
    .Y(_1147_)
);

NOR2X1 _1435_ (
    .A(_280_),
    .B(_285_),
    .Y(_279_)
);

DFFPOSX1 _2393_ (
    .D(_718_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.ctrl.i_jump )
);

NOR2X1 _1664_ (
    .A(_1012_),
    .B(_1013_),
    .Y(_782_)
);

NOR2X1 _1244_ (
    .A(_469_),
    .B(_466_),
    .Y(_465_)
);

DFFPOSX1 _2449_ (
    .D(_760_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg0_latched [1])
);

AOI22X1 _2029_ (
    .A(\u_cpu.branch_op ),
    .B(_437_),
    .C(_403_),
    .D(_114_),
    .Y(_115_)
);

NAND2X1 _1893_ (
    .A(\u_mem_serial.shift_reg [2]),
    .B(mem_ibus_ack_bF$buf4),
    .Y(_18_)
);

AND2X2 _1473_ (
    .A(_860_),
    .B(_372_),
    .Y(_861_)
);

MUX2X1 _2258_ (
    .A(_1113_),
    .B(_532_),
    .S(_440__bF$buf1),
    .Y(_583_)
);

MUX2X1 _1949_ (
    .A(\u_mem_serial.shift_reg [17]),
    .B(rf_read_reg0_to_if[3]),
    .S(mem_ibus_ack_bF$buf5),
    .Y(_58_)
);

INVX1 _1529_ (
    .A(\u_rf_if.issue_idx [5]),
    .Y(_910_)
);

INVX1 _1282_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_429_)
);

DFFPOSX1 _2487_ (
    .D(_829_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(ren)
);

MUX2X1 _2067_ (
    .A(_137_),
    .B(_138_),
    .S(_413__bF$buf3),
    .Y(_653_)
);

AOI21X1 _1758_ (
    .A(_723_),
    .B(_802_),
    .C(_1074_),
    .Y(_749_)
);

NOR2X1 _1338_ (
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_374_)
);

INVX1 _2296_ (
    .A(\u_mem_serial.bit_count [2]),
    .Y(_560_)
);

MUX2X1 _1987_ (
    .A(_83_),
    .B(_84_),
    .S(_75_),
    .Y(_679_)
);

AOI21X1 _1567_ (
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(_945_),
    .C(_941_),
    .Y(_946_)
);

NOR2X1 _1796_ (
    .A(\u_rf_if.stream_cnt [4]),
    .B(_922_),
    .Y(_1097_)
);

INVX1 _1376_ (
    .A(_527_),
    .Y(_338_)
);

NOR2X1 _1185_ (
    .A(\u_rf_if.tx_state [3]),
    .B(\u_rf_if.tx_state [4]),
    .Y(_521_)
);

NOR2X1 _2199_ (
    .A(\u_mem_serial.shift_reg [25]),
    .B(_505__bF$buf3),
    .Y(_231_)
);

DFFPOSX1 _2411_ (
    .D(_740_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_if.last_req_key [5])
);

NOR2X1 _1699_ (
    .A(\u_rf_if.read_buf0 [29]),
    .B(_383__bF$buf4),
    .Y(_1035_)
);

INVX1 _1279_ (
    .A(rf_wreg0_to_if[2]),
    .Y(_432_)
);

MUX2X1 _2220_ (
    .A(_246_),
    .B(_245_),
    .S(_440__bF$buf5),
    .Y(_606_)
);

OAI21X1 _1911_ (
    .A(_559_),
    .B(_562_),
    .C(_30_),
    .Y(_701_)
);

OAI21X1 _1720_ (
    .A(\u_rf_if.issue_idx [3]),
    .B(_1048_),
    .C(_966_),
    .Y(_1051_)
);

INVX1 _1300_ (
    .A(_413__bF$buf3),
    .Y(_412_)
);

DFFPOSX1 _2505_ (
    .D(_633_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

DFFPOSX1 _2314_ (
    .D(_650_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [14])
);

DFFPOSX1 _2543_ (
    .D(_833_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.o_waddr [3])
);

OAI21X1 _2123_ (
    .A(_516_),
    .B(_505__bF$buf2),
    .C(_171_),
    .Y(_629_)
);

INVX1 _1814_ (
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_1110_)
);

DFFPOSX1 _2352_ (
    .D(_719_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [28])
);

AOI22X1 _1623_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [1]),
    .C(_948_),
    .D(\u_rf_if.read_buf0 [0]),
    .Y(_987_)
);

INVX8 _1203_ (
    .A(_552__bF$buf0),
    .Y(_505_)
);

DFFPOSX1 _2408_ (
    .D(_593_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

DFFPOSX1 _2581_ (
    .D(_634_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [29])
);

INVX1 _2161_ (
    .A(_462_),
    .Y(_201_)
);

OAI21X1 _1852_ (
    .A(_1142_),
    .B(_1143_),
    .C(_1137_),
    .Y(_1144_)
);

OR2X2 _1432_ (
    .A(_283_),
    .B(\u_rf_if.last_req_key [5]),
    .Y(_282_)
);

MUX2X1 _2217_ (
    .A(_535_),
    .B(_244_),
    .S(_552__bF$buf4),
    .Y(_607_)
);

DFFPOSX1 _2390_ (
    .D(_715_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [20])
);

INVX1 _1908_ (
    .A(_27_),
    .Y(_28_)
);

AOI21X1 _1661_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1009_),
    .C(_1011_),
    .Y(_783_)
);

INVX1 _1241_ (
    .A(_493_),
    .Y(_468_)
);

DFFPOSX1 _2446_ (
    .D(_757_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg1_latched [1])
);

INVX1 _2026_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_112_)
);

OAI21X1 _1717_ (
    .A(\u_rf_if.issue_idx [2]),
    .B(_1046_),
    .C(_966_),
    .Y(_1049_)
);

NOR2X1 _1890_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_17_)
);

NAND2X1 _1470_ (
    .A(_857_),
    .B(_522_),
    .Y(_858_)
);

MUX2X1 _2255_ (
    .A(_11_),
    .B(_42_),
    .S(_440__bF$buf0),
    .Y(_586_)
);

OAI21X1 _1946_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_55_),
    .C(_53_),
    .Y(_56_)
);

AOI21X1 _1526_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(_906_),
    .C(_907_),
    .Y(_830_)
);

DFFPOSX1 _2484_ (
    .D(_783_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [13])
);

INVX1 _2064_ (
    .A(\u_cpu.bufreg.data [18]),
    .Y(_137_)
);

NAND2X1 _1755_ (
    .A(\u_rf_if.write_wait [1]),
    .B(_446_),
    .Y(_1073_)
);

NAND2X1 _1335_ (
    .A(_378_),
    .B(_380_),
    .Y(_377_)
);

NAND3X1 _2293_ (
    .A(\u_mem_serial.req_pending ),
    .B(_566_),
    .C(_564_),
    .Y(_563_)
);

MUX2X1 _1984_ (
    .A(_81_),
    .B(_82_),
    .S(_75_),
    .Y(_680_)
);

INVX1 _1564_ (
    .A(\u_rf_if.issue_idx [1]),
    .Y(_943_)
);

DFFPOSX1 _2349_ (
    .D(_725_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [1])
);

OAI22X1 _1793_ (
    .A(_922_),
    .B(_1094_),
    .C(_1092_),
    .D(_1093_),
    .Y(_734_)
);

OAI21X1 _1373_ (
    .A(_422_),
    .B(_387_),
    .C(_340_),
    .Y(\u_cpu.o_wdata0 )
);

DFFPOSX1 _2578_ (
    .D(_729_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_rf_if.rs2_stream_buf [0])
);

OAI21X1 _2158_ (
    .A(_187_),
    .B(_197_),
    .C(_198_),
    .Y(_199_)
);

OAI21X1 _1849_ (
    .A(_498_),
    .B(_385_),
    .C(_355_),
    .Y(_1141_)
);

OAI22X1 _1429_ (
    .A(_287_),
    .B(_286_),
    .C(_292_),
    .D(_291_),
    .Y(_285_)
);

INVX2 _1182_ (
    .A(_525_),
    .Y(_524_)
);

DFFPOSX1 _2387_ (
    .D(_713_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(mem_ibus_ack)
);

OAI22X1 _1658_ (
    .A(_383__bF$buf1),
    .B(\u_rf_if.read_buf0 [13]),
    .C(\u_rf_if.read_buf0 [12]),
    .D(_990__bF$buf2),
    .Y(_1010_)
);

NOR2X1 _1238_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_472_),
    .Y(_471_)
);

FILL FILL98250x75750 (
);

MUX2X1 _2196_ (
    .A(_146_),
    .B(_228_),
    .S(_567_),
    .Y(_229_)
);

OAI21X1 _1887_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_357_),
    .C(_15_),
    .Y(_710_)
);

AOI21X1 _1467_ (
    .A(\u_rf_if.tx_state [2]),
    .B(_524_),
    .C(_843_),
    .Y(_846_)
);

AOI21X1 _1696_ (
    .A(_1032_),
    .B(_997_),
    .C(_1033_),
    .Y(_770_)
);

OAI21X1 _1276_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .C(_472_),
    .Y(_435_)
);

NOR2X1 _2502_ (
    .A(\u_mem_serial.state [0]),
    .B(\u_mem_serial.state [1]),
    .Y(_544_)
);

MUX2X1 _2099_ (
    .A(_153_),
    .B(_152_),
    .S(_413__bF$buf3),
    .Y(_635_)
);

DFFPOSX1 _2311_ (
    .D(_648_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [12])
);

NOR2X1 _1599_ (
    .A(_908_),
    .B(_915_),
    .Y(_969_)
);

NOR2X1 _1179_ (
    .A(_529_),
    .B(_528_),
    .Y(_527_)
);

DFFPOSX1 _2540_ (
    .D(_621_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg2.dhi [4])
);

NAND2X1 _2120_ (
    .A(\u_mem_serial.shift_reg [14]),
    .B(_552__bF$buf1),
    .Y(_170_)
);

AOI21X1 _1811_ (
    .A(_1105_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .C(_1107_),
    .Y(_1108_)
);

NAND2X1 _1620_ (
    .A(_920_),
    .B(_933_),
    .Y(_985_)
);

AND2X2 _1200_ (
    .A(_508_),
    .B(_513_),
    .Y(_507_)
);

DFFPOSX1 _2405_ (
    .D(_573_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

INVX1 _2214_ (
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_242_)
);

OAI21X1 _1905_ (
    .A(_25_),
    .B(_24_),
    .C(_551__bF$buf1),
    .Y(_26_)
);

DFFPOSX1 _2443_ (
    .D(_754_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rcnt [2])
);

AOI22X1 _2023_ (
    .A(mem_ibus_ack_bF$buf7),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_52_),
    .D(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_110_)
);

INVX1 _1714_ (
    .A(_1045_),
    .Y(_1046_)
);

MUX2X1 _2252_ (
    .A(_233_),
    .B(_228_),
    .S(_440__bF$buf0),
    .Y(_589_)
);

INVX1 _1943_ (
    .A(_52_),
    .Y(_53_)
);

OAI21X1 _1523_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(_905_),
    .C(_446_),
    .Y(_831_)
);

DFFPOSX1 _2308_ (
    .D(_645_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.bufreg.data [9])
);

DFFPOSX1 _2481_ (
    .D(_780_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [16])
);

MUX2X1 _2061_ (
    .A(_134_),
    .B(_135_),
    .S(_413__bF$buf2),
    .Y(_656_)
);

NOR2X1 _1752_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(_1069_),
    .Y(_1071_)
);

NAND2X1 _1332_ (
    .A(\u_cpu.alu.add_cy_r ),
    .B(_381_),
    .Y(_380_)
);

DFFPOSX1 _2537_ (
    .D(_619_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg2.dhi [3])
);

AOI21X1 _2117_ (
    .A(_493_),
    .B(_167_),
    .C(_165_),
    .Y(_168_)
);

INVX1 _2290_ (
    .A(_567_),
    .Y(_566_)
);

INVX1 _1808_ (
    .A(_938_),
    .Y(_1105_)
);

MUX2X1 _1981_ (
    .A(_79_),
    .B(_80_),
    .S(_75_),
    .Y(_681_)
);

AOI21X1 _1561_ (
    .A(_939_),
    .B(_910_),
    .C(_908_),
    .Y(_940_)
);

DFFPOSX1 _2346_ (
    .D(_680_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

OAI21X1 _1617_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [1]),
    .C(_982_),
    .Y(_983_)
);

NOR2X1 _1790_ (
    .A(raddr[2]),
    .B(_969_),
    .Y(_1092_)
);

AOI21X1 _1370_ (
    .A(_420_),
    .B(\u_cpu.state.cnt_r [2]),
    .C(_345_),
    .Y(_342_)
);

DFFPOSX1 _2575_ (
    .D(_855_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [7])
);

OAI21X1 _2155_ (
    .A(_459_),
    .B(_195_),
    .C(_465_),
    .Y(_196_)
);

INVX1 _1846_ (
    .A(\u_cpu.alu.cmp_r ),
    .Y(_1138_)
);

INVX1 _1426_ (
    .A(_289_),
    .Y(_288_)
);

DFFPOSX1 _2384_ (
    .D(_710_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.bne_or_bge )
);

OAI22X1 _1655_ (
    .A(_383__bF$buf1),
    .B(\u_rf_if.read_buf0 [12]),
    .C(\u_rf_if.read_buf0 [11]),
    .D(_990__bF$buf2),
    .Y(_1008_)
);

OAI21X1 _1235_ (
    .A(_500_),
    .B(_475_),
    .C(_481_),
    .Y(_474_)
);

MUX2X1 _2193_ (
    .A(_222_),
    .B(_226_),
    .S(_552__bF$buf3),
    .Y(_613_)
);

NAND2X1 _1884_ (
    .A(\u_mem_serial.shift_reg [13]),
    .B(mem_ibus_ack_bF$buf4),
    .Y(_14_)
);

MUX2X1 _1464_ (
    .A(_811_),
    .B(_333_),
    .S(\u_rf_if.tx_state [0]),
    .Y(_836_)
);

INVX1 _2249_ (
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_261_)
);

AOI21X1 _1693_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_1029_),
    .C(_1031_),
    .Y(_771_)
);

INVX2 _1273_ (
    .A(\u_cpu.branch_op ),
    .Y(_438_)
);

DFFPOSX1 _2478_ (
    .D(_731_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(raddr[5])
);

INVX1 _2058_ (
    .A(\u_cpu.bufreg.data [21]),
    .Y(_134_)
);

INVX1 _1749_ (
    .A(_893_),
    .Y(_1069_)
);

INVX8 _1329_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_383_)
);

BUFX2 _2287_ (
    .A(\u_rf_if.read_buf1 [0]),
    .Y(_812_)
);

MUX2X1 _1978_ (
    .A(_77_),
    .B(_78_),
    .S(_75_),
    .Y(_682_)
);

INVX1 _1558_ (
    .A(_936_),
    .Y(_937_)
);

MUX2X1 _2096_ (
    .A(_149_),
    .B(_418_),
    .S(_151_),
    .Y(_636_)
);

NAND2X1 _1787_ (
    .A(_918_),
    .B(_919_),
    .Y(_1090_)
);

NOR2X1 _1367_ (
    .A(_346_),
    .B(_347_),
    .Y(_345_)
);

AOI21X1 _1596_ (
    .A(_964_),
    .B(_518_),
    .C(_967_),
    .Y(_820_)
);

MUX2X1 _1176_ (
    .A(_536_),
    .B(_530_),
    .S(_552__bF$buf4),
    .Y(_850_)
);

DFFPOSX1 _2402_ (
    .D(_641_[0]),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.state.o_cnt [2])
);

AOI22X1 _2211_ (
    .A(\u_mem_serial.shift_reg [15]),
    .B(_551__bF$buf4),
    .C(_1118_),
    .D(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_240_)
);

OAI21X1 _1902_ (
    .A(_504_),
    .B(_22_),
    .C(_23_),
    .Y(_703_)
);

AOI21X1 _1499_ (
    .A(_886_),
    .B(_848_),
    .C(_805_),
    .Y(_1122_)
);

DFFPOSX1 _2440_ (
    .D(_607_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [17])
);

OAI21X1 _2020_ (
    .A(_518_),
    .B(_1110_),
    .C(_107_),
    .Y(_108_)
);

INVX1 _1711_ (
    .A(_969_),
    .Y(_1043_)
);

NAND2X1 _1940_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(mem_ibus_ack_bF$buf7),
    .Y(_51_)
);

INVX1 _1520_ (
    .A(\u_rf_if.rcnt [1]),
    .Y(_903_)
);

DFFPOSX1 _2305_ (
    .D(_642_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [6])
);

DFFPOSX1 _2534_ (
    .D(_618_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

MUX2X1 _2114_ (
    .A(_166_),
    .B(_149_),
    .S(_151_),
    .Y(_633_)
);

AOI22X1 _1805_ (
    .A(\u_rf_if.rreg1_latched [2]),
    .B(_973_),
    .C(_972_),
    .D(raddr[6]),
    .Y(_1103_)
);

DFFPOSX1 _2343_ (
    .D(_677_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(rf_read_reg1_to_if[2])
);

NAND2X1 _1614_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_928_),
    .Y(_980_)
);

DFFPOSX1 _2572_ (
    .D(_854_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [11])
);

OAI21X1 _2152_ (
    .A(_187_),
    .B(_193_),
    .C(_192_),
    .Y(_622_)
);

CLKBUF1 CLKBUF1_insert43 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

CLKBUF1 CLKBUF1_insert44 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert45 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert46 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert47 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert48 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert49 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

AOI21X1 _1843_ (
    .A(_505__bF$buf1),
    .B(_1134_),
    .C(_1135_),
    .Y(_719_)
);

AND2X2 _1423_ (
    .A(_293_),
    .B(\u_rf_if.last_req_key [4]),
    .Y(_291_)
);

NOR2X1 _2208_ (
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_189_),
    .Y(_238_)
);

DFFPOSX1 _2381_ (
    .D(_707_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.decode.opcode [1])
);

OAI22X1 _1652_ (
    .A(_383__bF$buf1),
    .B(\u_rf_if.read_buf0 [11]),
    .C(\u_rf_if.read_buf0 [10]),
    .D(_990__bF$buf2),
    .Y(_1006_)
);

NAND2X1 _1232_ (
    .A(_480_),
    .B(_478_),
    .Y(_477_)
);

DFFPOSX1 _2437_ (
    .D(_751_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.o_waddr [2])
);

NAND2X1 _2017_ (
    .A(_518_),
    .B(_402_),
    .Y(_105_)
);

INVX1 _2190_ (
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_224_)
);

OR2X2 _1708_ (
    .A(_1040_),
    .B(_911_),
    .Y(_1041_)
);

MUX2X1 _1881_ (
    .A(_10_),
    .B(_11_),
    .S(_567_),
    .Y(_12_)
);

NOR2X1 _1461_ (
    .A(_525_),
    .B(_807_),
    .Y(_809_)
);

MUX2X1 _2246_ (
    .A(_258_),
    .B(_259_),
    .S(_440__bF$buf5),
    .Y(_593_)
);

OAI21X1 _1937_ (
    .A(_518_),
    .B(_1151_),
    .C(_49_),
    .Y(_694_)
);

MUX2X1 _1517_ (
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_900_),
    .S(_898_),
    .Y(_901_)
);

OAI22X1 _1690_ (
    .A(_383__bF$buf2),
    .B(\u_rf_if.read_buf0 [25]),
    .C(\u_rf_if.read_buf0 [24]),
    .D(_990__bF$buf0),
    .Y(_1030_)
);

NOR2X1 _1270_ (
    .A(_526_),
    .B(_441_),
    .Y(_845_)
);

DFFPOSX1 _2475_ (
    .D(_732_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(raddr[4])
);

MUX2X1 _2055_ (
    .A(_131_),
    .B(_132_),
    .S(_413__bF$buf1),
    .Y(_659_)
);

NOR2X1 _1746_ (
    .A(_1067_),
    .B(_443_),
    .Y(_754_)
);

NOR2X1 _1326_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_424_),
    .Y(_386_)
);

OAI21X1 _2284_ (
    .A(_476_),
    .B(_1145_),
    .C(_274_),
    .Y(_570_)
);

MUX2X1 _1975_ (
    .A(_73_),
    .B(_76_),
    .S(_75_),
    .Y(_683_)
);

OAI21X1 _1555_ (
    .A(\u_rf_if.stream_cnt [4]),
    .B(_934_),
    .C(_931_),
    .Y(_828_)
);

INVX1 _2093_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_149_)
);

OAI22X1 _1784_ (
    .A(_919_),
    .B(_927_),
    .C(raddr[0]),
    .D(_829_),
    .Y(_1088_)
);

NAND2X1 _1364_ (
    .A(\u_cpu.state.cnt_r [2]),
    .B(_420_),
    .Y(_348_)
);

DFFPOSX1 _2569_ (
    .D(_628_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.state [1])
);

NAND3X1 _2149_ (
    .A(_488_),
    .B(_185_),
    .C(_466_),
    .Y(_191_)
);

NAND2X1 _1593_ (
    .A(_963_),
    .B(_965_),
    .Y(_966_)
);

INVX1 _1173_ (
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_532_)
);

DFFPOSX1 _2378_ (
    .D(_703_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [1])
);

OAI22X1 _1649_ (
    .A(\u_rf_if.read_buf0 [11]),
    .B(_947__bF$buf3),
    .C(\u_rf_if.read_buf0 [9]),
    .D(_990__bF$buf3),
    .Y(_1004_)
);

INVX1 _1229_ (
    .A(\u_cpu.state.cnt_r [2]),
    .Y(_480_)
);

AOI21X1 _2187_ (
    .A(_505__bF$buf3),
    .B(_220_),
    .C(_221_),
    .Y(_614_)
);

FILL FILL98550x3750 (
);

NAND2X1 _1878_ (
    .A(_8_),
    .B(_551__bF$buf4),
    .Y(_9_)
);

NOR2X1 _1458_ (
    .A(_524_),
    .B(_338_),
    .Y(_806_)
);

OAI22X1 _1687_ (
    .A(_383__bF$buf2),
    .B(\u_rf_if.read_buf0 [24]),
    .C(\u_rf_if.read_buf0 [23]),
    .D(_990__bF$buf0),
    .Y(_1028_)
);

NOR2X1 _1267_ (
    .A(_501_),
    .B(_443_),
    .Y(\u_rf_if.rtrig0 )
);

AOI21X1 _1496_ (
    .A(_293_),
    .B(_807_),
    .C(_883_),
    .Y(_884_)
);

NOR2X1 _2302_ (
    .A(_555_),
    .B(_556_),
    .Y(_554_)
);

DFFPOSX1 _2531_ (
    .D(_821_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_rf_if.issue_idx [5])
);

AOI21X1 _2111_ (
    .A(_157_),
    .B(_162_),
    .C(_493_),
    .Y(_164_)
);

AOI22X1 _1802_ (
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_973_),
    .C(_972_),
    .D(raddr[5]),
    .Y(_1101_)
);

AOI21X1 _1399_ (
    .A(_317_),
    .B(_316_),
    .C(_318_),
    .Y(_315_)
);

DFFPOSX1 _2340_ (
    .D(_674_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(rf_wreg0_to_if[3])
);

FILL FILL98550x57750 (
);

AOI21X1 _1611_ (
    .A(_383__bF$buf3),
    .B(_932_),
    .C(_978_),
    .Y(_816_)
);

OR2X2 _1840_ (
    .A(_445_),
    .B(_1133_),
    .Y(_720_)
);

AOI22X1 _1420_ (
    .A(ren_bF$buf1),
    .B(raddr[4]),
    .C(_336_),
    .D(_295_),
    .Y(_294_)
);

NAND2X1 _2205_ (
    .A(\u_mem_serial.shift_reg [8]),
    .B(_551__bF$buf2),
    .Y(_236_)
);

DFFPOSX1 _2434_ (
    .D(_605_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

NOR2X1 _2014_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_103_)
);

NAND2X1 _1705_ (
    .A(_942_),
    .B(_969_),
    .Y(_1039_)
);

FILL FILL98850x10950 (
);

INVX1 _2243_ (
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_258_)
);

NAND2X1 _1934_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(\u_mem_serial.shift_reg [14]),
    .Y(_48_)
);

NAND3X1 _1514_ (
    .A(_527_),
    .B(_865_),
    .C(_336_),
    .Y(_898_)
);

DFFPOSX1 _2472_ (
    .D(_825_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg0_latched [3])
);

INVX1 _2052_ (
    .A(\u_cpu.bufreg.data [24]),
    .Y(_131_)
);

NAND2X1 _1743_ (
    .A(\u_rf_if.rcnt [2]),
    .B(_904_),
    .Y(_1065_)
);

OR2X2 _1323_ (
    .A(_397_),
    .B(_390_),
    .Y(_389_)
);

DFFPOSX1 _2528_ (
    .D(_616_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

NAND2X1 _2108_ (
    .A(_158_),
    .B(_159_),
    .Y(_161_)
);

NAND2X1 _2281_ (
    .A(_477_),
    .B(_1140_),
    .Y(_273_)
);

NAND3X1 _1972_ (
    .A(_438_),
    .B(_376_),
    .C(_17_),
    .Y(_74_)
);

INVX1 _1552_ (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_932_)
);

DFFPOSX1 _2337_ (
    .D(_671_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(rf_wreg0_to_if[0])
);

MUX2X1 _2090_ (
    .A(_1112_),
    .B(_533_),
    .S(_413__bF$buf4),
    .Y(_638_)
);

OAI21X1 _1608_ (
    .A(\u_rf_if.shift_rx [1]),
    .B(_976_),
    .C(i_rst_n_bF$buf3),
    .Y(_977_)
);

OAI21X1 _1781_ (
    .A(ren_bF$buf2),
    .B(_276_),
    .C(i_rst_n_bF$buf1),
    .Y(_1086_)
);

AOI21X1 _1361_ (
    .A(\u_cpu.alu.cmp_r ),
    .B(_352_),
    .C(_353_),
    .Y(_351_)
);

DFFPOSX1 _2566_ (
    .D(_851_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [8])
);

OAI21X1 _2146_ (
    .A(_469_),
    .B(_466_),
    .C(_188_),
    .Y(_189_)
);

INVX1 _1837_ (
    .A(\u_mem_serial.active_ibus ),
    .Y(_1132_)
);

NAND2X1 _1417_ (
    .A(_299_),
    .B(_298_),
    .Y(_297_)
);

NOR2X1 _1590_ (
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .Y(_963_)
);

INVX1 _1170_ (
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_535_)
);

DFFPOSX1 _2375_ (
    .D(_585_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

INVX1 _1646_ (
    .A(\u_rf_if.read_buf0 [10]),
    .Y(_1002_)
);

INVX1 _1226_ (
    .A(_484_),
    .Y(_483_)
);

OAI21X1 _2184_ (
    .A(_552__bF$buf1),
    .B(_218_),
    .C(_219_),
    .Y(_615_)
);

OAI22X1 _1875_ (
    .A(_504_),
    .B(_4_),
    .C(_518_),
    .D(_6_),
    .Y(_713_)
);

AOI21X1 _1455_ (
    .A(_276_),
    .B(_804_),
    .C(_799_),
    .Y(_838_)
);

OAI22X1 _1684_ (
    .A(\u_rf_if.read_buf0 [24]),
    .B(_947__bF$buf2),
    .C(\u_rf_if.read_buf0 [22]),
    .D(_990__bF$buf0),
    .Y(_1026_)
);

INVX1 _1264_ (
    .A(_446_),
    .Y(_445_)
);

DFFPOSX1 _2469_ (
    .D(_774_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [22])
);

MUX2X1 _2049_ (
    .A(_128_),
    .B(_129_),
    .S(_413__bF$buf1),
    .Y(_662_)
);

AND2X2 _1493_ (
    .A(_309_),
    .B(\u_rf_if.tx_state [0]),
    .Y(_881_)
);

AND2X2 _2278_ (
    .A(_387_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_271_)
);

AOI21X1 _1969_ (
    .A(_518_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .C(_71_),
    .Y(_72_)
);

NOR2X1 _1549_ (
    .A(_916_),
    .B(_923_),
    .Y(_929_)
);

MUX2X1 _2087_ (
    .A(_10_),
    .B(_41_),
    .S(_413__bF$buf4),
    .Y(_642_)
);

AOI21X1 _1778_ (
    .A(_300_),
    .B(_704__bF$buf0),
    .C(_1084_),
    .Y(_739_)
);

NAND3X1 _1358_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_357_),
    .C(_355_),
    .Y(_354_)
);

INVX1 _1587_ (
    .A(\u_rf_if.ready_pulse ),
    .Y(_962_)
);

NAND2X1 _1167_ (
    .A(\u_mem_serial.shift_reg [8]),
    .B(_552__bF$buf2),
    .Y(_537_)
);

OAI21X1 _1396_ (
    .A(\u_rf_if.last_req_key [1]),
    .B(_323_),
    .C(_319_),
    .Y(_318_)
);

MUX2X1 _2202_ (
    .A(_145_),
    .B(_233_),
    .S(_567_),
    .Y(_234_)
);

DFFPOSX1 _2431_ (
    .D(_749_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [0])
);

NAND2X1 _2011_ (
    .A(rf_wreg0_to_if[1]),
    .B(_518_),
    .Y(_101_)
);

NOR2X1 _1702_ (
    .A(\u_rf_if.read_buf0 [30]),
    .B(_383__bF$buf3),
    .Y(_1037_)
);

NAND2X1 _1299_ (
    .A(_416_),
    .B(_414_),
    .Y(_413_)
);

MUX2X1 _2240_ (
    .A(_255_),
    .B(_256_),
    .S(_440__bF$buf4),
    .Y(_596_)
);

AOI21X1 _1931_ (
    .A(_45_),
    .B(_566_),
    .C(_46_),
    .Y(_47_)
);

AND2X2 _1511_ (
    .A(_894_),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_896_)
);

NOR2X1 _1740_ (
    .A(mem_ibus_ack_bF$buf7),
    .B(\u_rf_if.rreg1_latched [2]),
    .Y(_1064_)
);

OR2X2 _1320_ (
    .A(_393_),
    .B(_396_),
    .Y(_392_)
);

DFFPOSX1 _2525_ (
    .D(_615_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [13])
);

INVX1 _2105_ (
    .A(\u_cpu.bufreg.c_r ),
    .Y(_158_)
);

FILL FILL98550x43350 (
);

DFFPOSX1 _2334_ (
    .D(_668_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

OAI21X1 _1605_ (
    .A(_968_),
    .B(_971_),
    .C(_974_),
    .Y(_818_)
);

DFFPOSX1 _2563_ (
    .D(_849_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_if.launch_pending )
);

AOI22X1 _2143_ (
    .A(_183_),
    .B(_184_),
    .C(_468_),
    .D(_185_),
    .Y(_186_)
);

NOR2X1 _1834_ (
    .A(_1130_),
    .B(_486_),
    .Y(_620_[1])
);

AOI22X1 _1414_ (
    .A(ren_bF$buf0),
    .B(raddr[6]),
    .C(_336_),
    .D(_301_),
    .Y(_300_)
);

BUFX2 BUFX2_insert70 (
    .A(_383_),
    .Y(_383__bF$buf4)
);

BUFX2 BUFX2_insert71 (
    .A(_383_),
    .Y(_383__bF$buf3)
);

BUFX2 BUFX2_insert72 (
    .A(_383_),
    .Y(_383__bF$buf2)
);

BUFX2 BUFX2_insert73 (
    .A(_383_),
    .Y(_383__bF$buf1)
);

BUFX2 BUFX2_insert74 (
    .A(_383_),
    .Y(_383__bF$buf0)
);

BUFX2 BUFX2_insert75 (
    .A(_947_),
    .Y(_947__bF$buf4)
);

BUFX2 BUFX2_insert76 (
    .A(_947_),
    .Y(_947__bF$buf3)
);

BUFX2 BUFX2_insert77 (
    .A(_947_),
    .Y(_947__bF$buf2)
);

BUFX2 BUFX2_insert78 (
    .A(_947_),
    .Y(_947__bF$buf1)
);

BUFX2 BUFX2_insert79 (
    .A(_947_),
    .Y(_947__bF$buf0)
);

DFFPOSX1 _2372_ (
    .D(_700_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [4])
);

NOR2X1 _1643_ (
    .A(\u_rf_if.read_buf0 [8]),
    .B(_383__bF$buf3),
    .Y(_1000_)
);

NOR2X1 _1223_ (
    .A(_491_),
    .B(_487_),
    .Y(_486_)
);

DFFPOSX1 _2428_ (
    .D(_748_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [1])
);

MUX2X1 _2008_ (
    .A(\u_mem_serial.shift_reg [8]),
    .B(rf_wreg0_to_if[2]),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_99_)
);

MUX2X1 _2181_ (
    .A(_217_),
    .B(_211_),
    .S(_189_),
    .Y(_616_)
);

NAND3X1 _1872_ (
    .A(\u_mem_serial.bit_count [0]),
    .B(_3_),
    .C(_554_),
    .Y(_4_)
);

INVX1 _1452_ (
    .A(\u_rf_if.tx_state [1]),
    .Y(_802_)
);

INVX1 _2237_ (
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_255_)
);

MUX2X1 _1928_ (
    .A(_8_),
    .B(_44_),
    .S(_552__bF$buf1),
    .Y(_698_)
);

NAND2X1 _1508_ (
    .A(\u_rf_if.o_waddr [1]),
    .B(_892_),
    .Y(_893_)
);

INVX1 _1681_ (
    .A(\u_rf_if.read_buf0 [23]),
    .Y(_1024_)
);

NAND2X1 _1261_ (
    .A(_449_),
    .B(_482_),
    .Y(_448_)
);

DFFPOSX1 _2466_ (
    .D(_772_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_rf_if.read_buf0 [24])
);

INVX1 _2046_ (
    .A(\u_cpu.bufreg.data [27]),
    .Y(_128_)
);

NOR2X1 _1737_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_rf_if.rreg1_latched [1]),
    .Y(_1062_)
);

AOI22X1 _1317_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_405_),
    .D(\u_cpu.decode.co_ebreak ),
    .Y(_395_)
);

OR2X2 _1490_ (
    .A(_522_),
    .B(\u_rf_if.tx_state [3]),
    .Y(_878_)
);

AOI21X1 _2275_ (
    .A(_389_),
    .B(_392_),
    .C(_1148_),
    .Y(_574_)
);

FILL FILL99150x36150 (
);

AOI21X1 _1966_ (
    .A(_67_),
    .B(_56_),
    .C(_69_),
    .Y(_685_)
);

OAI21X1 _1546_ (
    .A(_916_),
    .B(_923_),
    .C(_926_),
    .Y(_927_)
);

INVX1 _2084_ (
    .A(\u_cpu.bufreg.data [8]),
    .Y(_147_)
);

FILL FILL98850x18150 (
);

OAI21X1 _1775_ (
    .A(\u_rf_if.last_req_key [5]),
    .B(_704__bF$buf3),
    .C(i_rst_n_bF$buf0),
    .Y(_1083_)
);

INVX1 _1355_ (
    .A(\u_cpu.bne_or_bge ),
    .Y(_357_)
);

OAI21X1 _1584_ (
    .A(_370_),
    .B(_951_),
    .C(_959_),
    .Y(_960_)
);

NAND2X1 _1164_ (
    .A(\u_mem_serial.shift_reg [12]),
    .B(_552__bF$buf0),
    .Y(_539_)
);

DFFPOSX1 _2369_ (
    .D(_582_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

INVX1 _1393_ (
    .A(\u_rf_if.last_req_key [8]),
    .Y(_321_)
);

OAI21X1 _2178_ (
    .A(_188_),
    .B(_208_),
    .C(_215_),
    .Y(_216_)
);

OAI21X1 _1869_ (
    .A(_542_),
    .B(_504_),
    .C(_562_),
    .Y(_2_)
);

AND2X2 _1449_ (
    .A(_797_),
    .B(_800_),
    .Y(_840_)
);

NOR2X1 _1678_ (
    .A(\u_rf_if.read_buf0 [22]),
    .B(_947__bF$buf2),
    .Y(_1022_)
);

INVX1 _1258_ (
    .A(_452_),
    .Y(_451_)
);

OAI21X1 _1487_ (
    .A(_874_),
    .B(_873_),
    .C(_872_),
    .Y(_875_)
);

NAND2X1 _1296_ (
    .A(_477_),
    .B(_417_),
    .Y(_416_)
);

DFFPOSX1 _2522_ (
    .D(_815_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.stream_cnt [1])
);

NOR2X1 _2102_ (
    .A(_154_),
    .B(_419_),
    .Y(_155_)
);

FILL FILL98550x64950 (
);

DFFPOSX1 _2331_ (
    .D(_665_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

INVX1 _1602_ (
    .A(_829_),
    .Y(_972_)
);

NOR2X1 _1199_ (
    .A(_511_),
    .B(_509_),
    .Y(_508_)
);

DFFPOSX1 _2560_ (
    .D(_845_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.req_seen )
);

OAI21X1 _2140_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_182_),
    .Y(_183_)
);

NOR2X1 _1831_ (
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.o_cnt [2]),
    .Y(_1129_)
);

OAI21X1 _1411_ (
    .A(_326_),
    .B(_325_),
    .C(_304_),
    .Y(_303_)
);

BUFX2 BUFX2_insert40 (
    .A(_440_),
    .Y(_440__bF$buf2)
);

BUFX2 BUFX2_insert41 (
    .A(_440_),
    .Y(_440__bF$buf1)
);

BUFX2 BUFX2_insert42 (
    .A(_440_),
    .Y(_440__bF$buf0)
);

AOI21X1 _1640_ (
    .A(_996_),
    .B(_997_),
    .C(_998_),
    .Y(_791_)
);

INVX1 _1220_ (
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_489_)
);

DFFPOSX1 _2425_ (
    .D(_747_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [2])
);

MUX2X1 _2005_ (
    .A(\u_mem_serial.shift_reg [9]),
    .B(rf_wreg0_to_if[3]),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_97_)
);

MUX2X1 _2234_ (
    .A(_252_),
    .B(_253_),
    .S(_440__bF$buf4),
    .Y(_599_)
);

INVX1 _1925_ (
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_42_)
);

INVX1 _1505_ (
    .A(\u_rf_if.o_waddr [0]),
    .Y(_890_)
);

DFFPOSX1 _2463_ (
    .D(_769_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [27])
);

INVX1 _2043_ (
    .A(\u_cpu.bufreg.data [28]),
    .Y(_126_)
);

NOR2X1 _1734_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_rf_if.rreg1_latched [0]),
    .Y(_1060_)
);

AND2X2 _1314_ (
    .A(_423_),
    .B(_399_),
    .Y(_398_)
);

DFFPOSX1 _2519_ (
    .D(_613_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [23])
);

INVX1 _2272_ (
    .A(_179_),
    .Y(_268_)
);

INVX1 _1963_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_67_)
);

NOR2X1 _1543_ (
    .A(\u_rf_if.stream_cnt [0]),
    .B(_383__bF$buf4),
    .Y(_924_)
);

DFFPOSX1 _2328_ (
    .D(_662_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [26])
);

FILL FILL99150x90150 (
);

FILL FILL99150x57750 (
);

MUX2X1 _2081_ (
    .A(_144_),
    .B(_145_),
    .S(_413__bF$buf2),
    .Y(_646_)
);

AOI21X1 _1772_ (
    .A(_328_),
    .B(_704__bF$buf3),
    .C(_1081_),
    .Y(_742_)
);

NAND2X1 _1352_ (
    .A(_361_),
    .B(_362_),
    .Y(_360_)
);

FILL FILL98850x72150 (
);

DFFPOSX1 _2557_ (
    .D(_626_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [31])
);

NOR2X1 _2137_ (
    .A(\u_mem_serial.shift_reg [0]),
    .B(_505__bF$buf4),
    .Y(_181_)
);

FILL FILL98850x39750 (
);

NAND2X1 _1828_ (
    .A(\u_mem_serial.shift_reg [0]),
    .B(_551__bF$buf3),
    .Y(_1127_)
);

NAND2X1 _1408_ (
    .A(_307_),
    .B(_308_),
    .Y(_306_)
);

NOR2X1 _1581_ (
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_956_),
    .Y(_957_)
);

OAI21X1 _1161_ (
    .A(_542_),
    .B(_553_),
    .C(_551__bF$buf2),
    .Y(_541_)
);

DFFPOSX1 _2366_ (
    .D(_581_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

INVX1 _1637_ (
    .A(\u_rf_if.read_buf0 [7]),
    .Y(_996_)
);

INVX1 _1217_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_492_)
);

OR2X2 _1390_ (
    .A(_337_),
    .B(raddr[1]),
    .Y(_324_)
);

NOR2X1 _2175_ (
    .A(_211_),
    .B(_212_),
    .Y(_213_)
);

MUX2X1 _1866_ (
    .A(_1153_),
    .B(_1154_),
    .S(_567_),
    .Y(_1125_)
);

INVX1 _1446_ (
    .A(\u_rf_if.shift_rx [0]),
    .Y(_798_)
);

NOR2X1 _1675_ (
    .A(\u_rf_if.read_buf0 [21]),
    .B(_947__bF$buf4),
    .Y(_1020_)
);

OAI21X1 _1255_ (
    .A(_470_),
    .B(_465_),
    .C(_455_),
    .Y(_454_)
);

NOR2X1 _1484_ (
    .A(_871_),
    .B(\u_rf_if.rtrig0 ),
    .Y(_872_)
);

INVX1 _2269_ (
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_267_)
);

NAND2X1 _1293_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(_420_),
    .Y(_419_)
);

DFFPOSX1 _2498_ (
    .D(_796_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_rf_if.read_buf0 [0])
);

INVX1 _2078_ (
    .A(\u_cpu.bufreg.data [11]),
    .Y(_144_)
);

OAI21X1 _1769_ (
    .A(\u_rf_if.last_req_key [2]),
    .B(_704__bF$buf1),
    .C(i_rst_n_bF$buf3),
    .Y(_1080_)
);

NAND2X1 _1349_ (
    .A(_364_),
    .B(_365_),
    .Y(_363_)
);

NAND2X1 _1998_ (
    .A(_434_),
    .B(_477_),
    .Y(_91_)
);

INVX1 _1578_ (
    .A(_930_),
    .Y(_954_)
);

BUFX2 _1158_ (
    .A(_1121_),
    .Y(o_mem_sync)
);

INVX1 _1387_ (
    .A(_328_),
    .Y(_327_)
);

NAND2X1 _1196_ (
    .A(\u_mem_serial.shift_reg [1]),
    .B(_512_),
    .Y(_511_)
);

BUFX2 BUFX2_insert10 (
    .A(_552_),
    .Y(_552__bF$buf3)
);

BUFX2 BUFX2_insert11 (
    .A(_552_),
    .Y(_552__bF$buf2)
);

BUFX2 BUFX2_insert12 (
    .A(_552_),
    .Y(_552__bF$buf1)
);

BUFX2 BUFX2_insert13 (
    .A(_552_),
    .Y(_552__bF$buf0)
);

BUFX2 BUFX2_insert14 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert15 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert16 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert17 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

BUFX2 BUFX2_insert18 (
    .A(_505_),
    .Y(_505__bF$buf4)
);

BUFX2 BUFX2_insert19 (
    .A(_505_),
    .Y(_505__bF$buf3)
);

DFFPOSX1 _2422_ (
    .D(_600_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

AOI21X1 _2002_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_reg [10]),
    .C(_94_),
    .Y(_95_)
);

INVX1 _2231_ (
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_252_)
);

NAND2X1 _1922_ (
    .A(_38_),
    .B(_39_),
    .Y(_699_)
);

AOI21X1 _1502_ (
    .A(_505__bF$buf4),
    .B(_887_),
    .C(_888_),
    .Y(_835_)
);

DFFPOSX1 _2460_ (
    .D(_766_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.issue_idx [0])
);

AOI21X1 _2040_ (
    .A(_120_),
    .B(_86_),
    .C(_124_),
    .Y(_666_)
);

NOR2X1 _1731_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_rf_if.rreg0_latched [2]),
    .Y(_1058_)
);

NAND2X1 _1311_ (
    .A(_402_),
    .B(_484_),
    .Y(_401_)
);

FILL FILL98850x7350 (
);

DFFPOSX1 _2516_ (
    .D(_812_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_rf_if.read_buf1 [0])
);

OAI21X1 _1960_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(_61_),
    .C(_14_),
    .Y(_65_)
);

INVX1 _1540_ (
    .A(_920_),
    .Y(_921_)
);

DFFPOSX1 _2325_ (
    .D(_660_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [24])
);

DFFPOSX1 _2554_ (
    .D(_840_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.shift_rx [0])
);

OAI21X1 _2134_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_558_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_178_)
);

FILL FILL98850x93750 (
);

AOI21X1 _1825_ (
    .A(\u_mem_serial.shift_reg [29]),
    .B(_551__bF$buf1),
    .C(_1118_),
    .Y(_1119_)
);

OAI21X1 _1405_ (
    .A(_337_),
    .B(raddr[2]),
    .C(_310_),
    .Y(_309_)
);

DFFPOSX1 _2363_ (
    .D(_694_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.decode.co_ebreak )
);

NOR2X1 _1634_ (
    .A(\u_rf_if.read_buf0 [6]),
    .B(_947__bF$buf2),
    .Y(_994_)
);

OAI21X1 _1214_ (
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .C(_496_),
    .Y(_495_)
);

DFFPOSX1 _2419_ (
    .D(_744_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_if.last_req_key [1])
);

NAND2X1 _2172_ (
    .A(_207_),
    .B(_210_),
    .Y(_618_)
);

NAND2X1 _1863_ (
    .A(_1110_),
    .B(_551__bF$buf5),
    .Y(_1152_)
);

NOR2X1 _1443_ (
    .A(\u_rf_if.tx_state [2]),
    .B(_520_),
    .Y(_723_)
);

MUX2X1 _2228_ (
    .A(_249_),
    .B(_250_),
    .S(_440__bF$buf2),
    .Y(_602_)
);

INVX1 _1919_ (
    .A(_36_),
    .Y(_37_)
);

AOI21X1 _1672_ (
    .A(_1017_),
    .B(_997_),
    .C(_1018_),
    .Y(_779_)
);

INVX1 _1252_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_457_)
);

DFFPOSX1 _2457_ (
    .D(_610_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [9])
);

NAND2X1 _2037_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_518_),
    .Y(_122_)
);

NOR2X1 _1728_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_1056_)
);

INVX1 _1308_ (
    .A(_405_),
    .Y(_404_)
);

FILL FILL99150x43350 (
);

AOI21X1 _1481_ (
    .A(_868_),
    .B(\u_rf_if.wdata0_r [0]),
    .C(_722_),
    .Y(_869_)
);

INVX1 _2266_ (
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_265_)
);

NOR2X1 _1957_ (
    .A(_62_),
    .B(_56_),
    .Y(_63_)
);

INVX1 _1537_ (
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_918_)
);

INVX1 _1290_ (
    .A(_423_),
    .Y(_422_)
);

DFFPOSX1 _2495_ (
    .D(_793_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [3])
);

MUX2X1 _2075_ (
    .A(_141_),
    .B(_142_),
    .S(_413__bF$buf0),
    .Y(_649_)
);

AOI21X1 _1766_ (
    .A(_289_),
    .B(_704__bF$buf1),
    .C(_1078_),
    .Y(_745_)
);

INVX1 _1346_ (
    .A(_367_),
    .Y(_366_)
);

MUX2X1 _1995_ (
    .A(_1061_),
    .B(_89_),
    .S(_86_),
    .Y(_676_)
);

INVX1 _1575_ (
    .A(rf_read_reg0_to_if[3]),
    .Y(_952_)
);

BUFX2 _1155_ (
    .A(_1124_),
    .Y(o_rf_sync)
);

INVX1 _1384_ (
    .A(raddr[3]),
    .Y(_330_)
);

DFFPOSX1 _2589_ (
    .D(_639_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [4])
);

NOR2X1 _2169_ (
    .A(_464_),
    .B(_465_),
    .Y(_208_)
);

INVX1 _1193_ (
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_514_)
);

DFFPOSX1 _2398_ (
    .D(_620_[1]),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

AOI21X1 _1669_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_1014_),
    .C(_1016_),
    .Y(_780_)
);

INVX1 _1249_ (
    .A(_461_),
    .Y(_460_)
);

NOR2X1 _1898_ (
    .A(_19_),
    .B(_20_),
    .Y(_0_)
);

MUX2X1 _1478_ (
    .A(\u_rf_if.rcnt [2]),
    .B(\u_rf_if.wdata0_next_phase ),
    .S(_865_),
    .Y(_866_)
);

MUX2X1 _1287_ (
    .A(_425_),
    .B(_529_),
    .S(\u_rf_if.rtrig0 ),
    .Y(_844_)
);

NOR2X1 _2513_ (
    .A(\u_mem_serial.state [1]),
    .B(_568_),
    .Y(_551_)
);

DFFPOSX1 _2322_ (
    .D(_657_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [21])
);

DFFPOSX1 _2551_ (
    .D(_569_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [2])
);

OAI21X1 _2131_ (
    .A(_20_),
    .B(_505__bF$buf1),
    .C(_176_),
    .Y(_626_)
);

NOR2X1 _1822_ (
    .A(\u_mem_serial.shift_reg [29]),
    .B(_505__bF$buf1),
    .Y(_1117_)
);

OAI21X1 _1402_ (
    .A(_314_),
    .B(_313_),
    .C(\u_rf_if.req_seen ),
    .Y(_312_)
);

DFFPOSX1 _2360_ (
    .D(_692_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

NOR2X1 _1631_ (
    .A(\u_rf_if.read_buf0 [5]),
    .B(_947__bF$buf4),
    .Y(_992_)
);

INVX1 _1211_ (
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_498_)
);

DFFPOSX1 _2416_ (
    .D(_597_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

AOI21X1 _1860_ (
    .A(_1149_),
    .B(\u_cpu.state.ibus_cyc ),
    .C(_799_),
    .Y(_1150_)
);

OAI21X1 _1440_ (
    .A(\u_rf_if.last_req_key [9]),
    .B(_704__bF$buf2),
    .C(i_rst_n_bF$buf1),
    .Y(_705_)
);

INVX1 _2225_ (
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_249_)
);

OAI21X1 _1916_ (
    .A(_561_),
    .B(_32_),
    .C(_34_),
    .Y(_700_)
);

DFFPOSX1 _2454_ (
    .D(_763_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.issue_idx [3])
);

AOI22X1 _2034_ (
    .A(_111_),
    .B(_75_),
    .C(_118_),
    .D(_119_),
    .Y(_667_)
);

NOR2X1 _1725_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_rf_if.rreg0_latched [0]),
    .Y(_1054_)
);

NAND2X1 _1305_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_408_),
    .Y(_407_)
);

AOI21X1 _2263_ (
    .A(_262_),
    .B(_440__bF$buf0),
    .C(_263_),
    .Y(_580_)
);

FILL FILL99150x64950 (
);

MUX2X1 _1954_ (
    .A(_1053_),
    .B(_60_),
    .S(_56_),
    .Y(_688_)
);

OAI21X1 _1534_ (
    .A(_909_),
    .B(_914_),
    .C(_910_),
    .Y(_915_)
);

DFFPOSX1 _2319_ (
    .D(_654_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [18])
);

DFFPOSX1 _2492_ (
    .D(_790_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [6])
);

INVX1 _2072_ (
    .A(\u_cpu.bufreg.data [14]),
    .Y(_141_)
);

AND2X2 _1763_ (
    .A(_1077_),
    .B(_858_),
    .Y(_747_)
);

OAI21X1 _1343_ (
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_370_),
    .C(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_369_)
);

DFFPOSX1 _2548_ (
    .D(_835_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [27])
);

AND2X2 _2128_ (
    .A(_541_),
    .B(_174_),
    .Y(_175_)
);

OAI21X1 _1819_ (
    .A(_551__bF$buf5),
    .B(_1114_),
    .C(_1111_),
    .Y(_1115_)
);

MUX2X1 _1992_ (
    .A(\u_mem_serial.shift_reg [22]),
    .B(rf_read_reg1_to_if[3]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_88_)
);

NAND2X1 _1572_ (
    .A(\u_rf_if.read_buf0 [31]),
    .B(_948_),
    .Y(_950_)
);

DFFPOSX1 _2357_ (
    .D(_689_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(rf_read_reg0_to_if[1])
);

INVX8 _1628_ (
    .A(_948_),
    .Y(_990_)
);

INVX1 _1208_ (
    .A(\u_rf_if.rcnt [0]),
    .Y(_501_)
);

INVX1 _1381_ (
    .A(_334_),
    .Y(_333_)
);

DFFPOSX1 _2586_ (
    .D(_638_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [3])
);

NAND2X1 _2166_ (
    .A(_203_),
    .B(_205_),
    .Y(_619_)
);

OAI21X1 _1857_ (
    .A(_500_),
    .B(_484_),
    .C(_481_),
    .Y(_717_)
);

AOI22X1 _1437_ (
    .A(_337_),
    .B(_338_),
    .C(_278_),
    .D(_302_),
    .Y(_277_)
);

NAND2X1 _1190_ (
    .A(current_stream_rs2_hint),
    .B(_518_),
    .Y(_517_)
);

DFFPOSX1 _2395_ (
    .D(\u_cpu.state.cnt_r [2]),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.state.cnt_r [3])
);

OAI22X1 _1666_ (
    .A(_383__bF$buf1),
    .B(\u_rf_if.read_buf0 [16]),
    .C(\u_rf_if.read_buf0 [15]),
    .D(_990__bF$buf2),
    .Y(_1015_)
);

NOR2X1 _1246_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_463_)
);

INVX1 _1895_ (
    .A(_1121_),
    .Y(_19_)
);

NOR2X1 _1475_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_863_)
);

NOR2X1 _1284_ (
    .A(_431_),
    .B(_428_),
    .Y(_427_)
);

DFFPOSX1 _2489_ (
    .D(_787_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [9])
);

MUX2X1 _2069_ (
    .A(_138_),
    .B(_139_),
    .S(_413__bF$buf3),
    .Y(_652_)
);

NAND3X1 _2298_ (
    .A(_561_),
    .B(_560_),
    .C(_559_),
    .Y(_558_)
);

OAI21X1 _1989_ (
    .A(mem_ibus_ack_bF$buf7),
    .B(_85_),
    .C(_53_),
    .Y(_86_)
);

NOR2X1 _1569_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_946_),
    .Y(_948_)
);

OAI21X1 _2510_ (
    .A(_552__bF$buf2),
    .B(_550_),
    .C(_549_),
    .Y(_856_)
);

NAND3X1 _1798_ (
    .A(\u_rf_if.rreg0_latched [0]),
    .B(_970_),
    .C(_969_),
    .Y(_1098_)
);

INVX2 _1378_ (
    .A(\u_rf_if.rtrig0 ),
    .Y(_336_)
);

OAI21X1 _1187_ (
    .A(_520_),
    .B(_522_),
    .C(\u_rf_if.launch_pending ),
    .Y(_519_)
);

DFFPOSX1 _2413_ (
    .D(_741_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_if.last_req_key [4])
);

MUX2X1 _2222_ (
    .A(_245_),
    .B(_247_),
    .S(_440__bF$buf5),
    .Y(_605_)
);

INVX1 _1913_ (
    .A(_31_),
    .Y(_32_)
);

DFFPOSX1 _2451_ (
    .D(_608_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [16])
);

OAI21X1 _2031_ (
    .A(_112_),
    .B(_113_),
    .C(_116_),
    .Y(_117_)
);

OAI21X1 _1722_ (
    .A(\u_rf_if.issue_idx [4]),
    .B(_1050_),
    .C(_966_),
    .Y(_1052_)
);

INVX1 _1302_ (
    .A(\u_cpu.decode.opcode [1]),
    .Y(_410_)
);

OAI21X1 _2507_ (
    .A(_552__bF$buf3),
    .B(_548_),
    .C(_547_),
    .Y(_855_)
);

INVX1 _2260_ (
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_262_)
);

MUX2X1 _1951_ (
    .A(\u_mem_serial.shift_reg [16]),
    .B(rf_read_reg0_to_if[2]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_59_)
);

NOR2X1 _1531_ (
    .A(\u_rf_if.issue_idx [3]),
    .B(\u_rf_if.issue_idx [2]),
    .Y(_912_)
);

DFFPOSX1 _2316_ (
    .D(_651_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [15])
);

NOR2X1 _1760_ (
    .A(_809_),
    .B(_1075_),
    .Y(_748_)
);

NOR2X1 _1340_ (
    .A(\u_cpu.branch_op ),
    .B(_373_),
    .Y(_372_)
);

DFFPOSX1 _2545_ (
    .D(_623_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg2.dhi [6])
);

OAI21X1 _2125_ (
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_565_),
    .C(\u_mem_serial.state [1]),
    .Y(_173_)
);

INVX1 _1816_ (
    .A(\u_cpu.bufreg.data [4]),
    .Y(_1112_)
);

DFFPOSX1 _2354_ (
    .D(_686_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

INVX1 _1625_ (
    .A(\u_rf_if.read_buf0 [3]),
    .Y(_988_)
);

NOR2X1 _1205_ (
    .A(\u_mem_serial.shift_reg [25]),
    .B(_504_),
    .Y(_503_)
);

DFFPOSX1 _2583_ (
    .D(_636_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg.data [0])
);

OAI21X1 _2163_ (
    .A(_461_),
    .B(_202_),
    .C(_465_),
    .Y(_203_)
);

OAI21X1 _1854_ (
    .A(\u_cpu.bne_or_bge ),
    .B(_1145_),
    .C(_437_),
    .Y(_1146_)
);

NAND2X1 _1434_ (
    .A(_281_),
    .B(_282_),
    .Y(_280_)
);

INVX1 _2219_ (
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_246_)
);

DFFPOSX1 _2392_ (
    .D(_717_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.state.init_done )
);

OAI22X1 _1663_ (
    .A(\u_rf_if.read_buf0 [16]),
    .B(_947__bF$buf3),
    .C(\u_rf_if.read_buf0 [14]),
    .D(_990__bF$buf3),
    .Y(_1013_)
);

INVX1 _1243_ (
    .A(_467_),
    .Y(_466_)
);

DFFPOSX1 _2448_ (
    .D(_759_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg0_latched [2])
);

AOI21X1 _2028_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .C(\u_cpu.decode.opcode [1]),
    .Y(_114_)
);

FILL FILL99150x50550 (
);

AND2X2 _1719_ (
    .A(_1048_),
    .B(\u_rf_if.issue_idx [3]),
    .Y(_1050_)
);

MUX2X1 _1892_ (
    .A(_512_),
    .B(_410_),
    .S(mem_ibus_ack_bF$buf1),
    .Y(_707_)
);

NOR2X1 _1472_ (
    .A(_384_),
    .B(_451_),
    .Y(_860_)
);

MUX2X1 _2257_ (
    .A(_1154_),
    .B(_1113_),
    .S(_440__bF$buf1),
    .Y(_584_)
);

FILL FILL98850x32550 (
);

MUX2X1 _1948_ (
    .A(_952_),
    .B(_57_),
    .S(_56_),
    .Y(_691_)
);

INVX1 _1528_ (
    .A(\u_rf_if.issue_idx [4]),
    .Y(_909_)
);

INVX1 _1281_ (
    .A(rf_wreg0_to_if[0]),
    .Y(_430_)
);

DFFPOSX1 _2486_ (
    .D(_785_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [11])
);

INVX1 _2066_ (
    .A(\u_cpu.bufreg.data [17]),
    .Y(_138_)
);

NAND2X1 _1757_ (
    .A(i_rst_n_bF$buf3),
    .B(_722_),
    .Y(_1074_)
);

INVX1 _1337_ (
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_375_)
);

INVX1 _2295_ (
    .A(\u_mem_serial.bit_count [4]),
    .Y(_561_)
);

MUX2X1 _1986_ (
    .A(\u_mem_serial.shift_reg [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_84_)
);

NOR2X1 _1566_ (
    .A(_942_),
    .B(_944_),
    .Y(_945_)
);

OAI21X1 _1795_ (
    .A(\u_rf_if.issue_idx [3]),
    .B(_1043_),
    .C(_1095_),
    .Y(_1096_)
);

OAI21X1 _1375_ (
    .A(_515_),
    .B(_505__bF$buf0),
    .C(_339_),
    .Y(_842_)
);

INVX2 _1184_ (
    .A(_523_),
    .Y(_522_)
);

DFFPOSX1 _2389_ (
    .D(_714_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.bit_count [0])
);

MUX2X1 _2198_ (
    .A(_121_),
    .B(_230_),
    .S(_552__bF$buf3),
    .Y(_612_)
);

OAI21X1 _1889_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(_376_),
    .C(_16_),
    .Y(_709_)
);

OAI21X1 _1469_ (
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .C(\u_rf_if.tx_state [2]),
    .Y(_857_)
);

DFFPOSX1 _2410_ (
    .D(_594_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

AOI21X1 _1698_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_1032_),
    .C(_1034_),
    .Y(_769_)
);

INVX1 _1278_ (
    .A(rf_wreg0_to_if[3]),
    .Y(_433_)
);

OAI21X1 _1910_ (
    .A(_29_),
    .B(_28_),
    .C(_551__bF$buf1),
    .Y(_30_)
);

NAND2X1 _2504_ (
    .A(\u_mem_serial.shift_reg [11]),
    .B(_552__bF$buf3),
    .Y(_545_)
);

DFFPOSX1 _2313_ (
    .D(_701_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.bit_count [3])
);

DFFPOSX1 _2542_ (
    .D(_622_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg2.dhi [5])
);

NAND3X1 _2122_ (
    .A(\u_mem_serial.shift_reg [3]),
    .B(_551__bF$buf3),
    .C(_505__bF$buf2),
    .Y(_171_)
);

OAI21X1 _1813_ (
    .A(_1109_),
    .B(_1108_),
    .C(_1104_),
    .Y(_729_)
);

DFFPOSX1 _2351_ (
    .D(_684_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

INVX1 _1622_ (
    .A(\u_rf_if.read_buf0 [2]),
    .Y(_986_)
);

NAND2X1 _1202_ (
    .A(_517_),
    .B(_506_),
    .Y(\u_rf_if.i_stream_rs2_en )
);

DFFPOSX1 _2407_ (
    .D(_738_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [7])
);

DFFPOSX1 _2580_ (
    .D(_632_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg.c_r )
);

INVX1 _2160_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_200_)
);

AND2X2 _1851_ (
    .A(_1141_),
    .B(_1140_),
    .Y(_1143_)
);

AOI22X1 _1431_ (
    .A(ren_bF$buf1),
    .B(raddr[5]),
    .C(_336_),
    .D(_284_),
    .Y(_283_)
);

OAI21X1 _2216_ (
    .A(_551__bF$buf5),
    .B(_243_),
    .C(_241_),
    .Y(_244_)
);

NAND2X1 _1907_ (
    .A(_559_),
    .B(_24_),
    .Y(_27_)
);

OAI22X1 _1660_ (
    .A(\u_rf_if.read_buf0 [15]),
    .B(_947__bF$buf3),
    .C(\u_rf_if.read_buf0 [13]),
    .D(_990__bF$buf3),
    .Y(_1011_)
);

INVX2 _1240_ (
    .A(_471_),
    .Y(_469_)
);

DFFPOSX1 _2445_ (
    .D(_756_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.rreg1_latched [2])
);

INVX1 _2025_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_111_)
);

INVX1 _1716_ (
    .A(_1047_),
    .Y(_1048_)
);

MUX2X1 _2254_ (
    .A(_224_),
    .B(_11_),
    .S(_440__bF$buf0),
    .Y(_587_)
);

OAI21X1 _1945_ (
    .A(_499_),
    .B(_404_),
    .C(_54_),
    .Y(_55_)
);

NOR2X1 _1525_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_rf_if.rreg1_latched [3]),
    .Y(_907_)
);

DFFPOSX1 _2483_ (
    .D(_782_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [14])
);

MUX2X1 _2063_ (
    .A(_135_),
    .B(_136_),
    .S(_413__bF$buf2),
    .Y(_655_)
);

AND2X2 _1754_ (
    .A(_1072_),
    .B(_446_),
    .Y(_751_)
);

OAI21X1 _1334_ (
    .A(_383__bF$buf2),
    .B(_382_),
    .C(_379_),
    .Y(_378_)
);

DFFPOSX1 _2539_ (
    .D(_824_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.rs2_stream_buf [1])
);

NAND2X1 _2119_ (
    .A(\u_mem_serial.shift_reg [13]),
    .B(_551__bF$buf3),
    .Y(_169_)
);

NOR2X1 _2292_ (
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_565_),
    .Y(_564_)
);

MUX2X1 _1983_ (
    .A(\u_mem_serial.shift_reg [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_82_)
);

INVX1 _1563_ (
    .A(\u_rf_if.issue_idx [0]),
    .Y(_942_)
);

DFFPOSX1 _2348_ (
    .D(_682_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

AOI21X1 _1619_ (
    .A(_921_),
    .B(\u_rf_if.stream_active_bF$buf2 ),
    .C(_917_),
    .Y(_984_)
);

OAI21X1 _1792_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_920_),
    .C(_926_),
    .Y(_1094_)
);

AOI22X1 _1372_ (
    .A(_436_),
    .B(_341_),
    .C(_349_),
    .D(_386_),
    .Y(_340_)
);

DFFPOSX1 _2577_ (
    .D(_630_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [14])
);

OAI21X1 _2157_ (
    .A(_457_),
    .B(_465_),
    .C(_187_),
    .Y(_198_)
);

OAI21X1 _1848_ (
    .A(_377_),
    .B(_363_),
    .C(_380_),
    .Y(_1140_)
);

NOR2X1 _1428_ (
    .A(\u_rf_if.last_req_key [0]),
    .B(_288_),
    .Y(_286_)
);

NOR2X1 _1181_ (
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .Y(_525_)
);

DFFPOSX1 _2386_ (
    .D(_712_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [22])
);

INVX1 _1657_ (
    .A(\u_rf_if.read_buf0 [14]),
    .Y(_1009_)
);

INVX2 _1237_ (
    .A(\u_cpu.decode.opcode [2]),
    .Y(_472_)
);

INVX1 _2195_ (
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_228_)
);

NAND2X1 _1886_ (
    .A(\u_mem_serial.shift_reg [12]),
    .B(mem_ibus_ack_bF$buf6),
    .Y(_15_)
);

OAI21X1 _1466_ (
    .A(\u_rf_if.tx_state [2]),
    .B(_524_),
    .C(\u_rf_if.tx_state [3]),
    .Y(_843_)
);

OAI22X1 _1695_ (
    .A(_383__bF$buf4),
    .B(\u_rf_if.read_buf0 [27]),
    .C(\u_rf_if.read_buf0 [26]),
    .D(_990__bF$buf1),
    .Y(_1033_)
);

NOR2X1 _1275_ (
    .A(_438_),
    .B(_437_),
    .Y(_436_)
);

NAND2X1 _2289_ (
    .A(i_rst_n_bF$buf0),
    .B(\u_cpu.state.ibus_cyc ),
    .Y(_567_)
);

DFFPOSX1 _2501_ (
    .D(_820_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.pending_read )
);

INVX1 _2098_ (
    .A(\u_cpu.bufreg.data [31]),
    .Y(_153_)
);

OAI21X1 _1789_ (
    .A(_968_),
    .B(_1089_),
    .C(_1091_),
    .Y(_735_)
);

NOR2X1 _1369_ (
    .A(_344_),
    .B(_348_),
    .Y(_343_)
);

DFFPOSX1 _2310_ (
    .D(_647_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [11])
);

INVX2 _1598_ (
    .A(_927_),
    .Y(_968_)
);

INVX1 _1178_ (
    .A(\u_rf_if.rtrig1 ),
    .Y(_528_)
);

OAI21X1 _1810_ (
    .A(_1106_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .C(_956_),
    .Y(_1107_)
);

DFFPOSX1 _2404_ (
    .D(_591_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

NAND2X1 _2213_ (
    .A(_239_),
    .B(_551__bF$buf5),
    .Y(_241_)
);

NOR2X1 _1904_ (
    .A(_560_),
    .B(_21_),
    .Y(_25_)
);

DFFPOSX1 _2442_ (
    .D(_737_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [8])
);

AOI21X1 _2022_ (
    .A(_104_),
    .B(_56_),
    .C(_109_),
    .Y(_669_)
);

NAND2X1 _1713_ (
    .A(\u_rf_if.issue_idx [0]),
    .B(_1044_),
    .Y(_1045_)
);

MUX2X1 _2251_ (
    .A(_261_),
    .B(_233_),
    .S(_440__bF$buf3),
    .Y(_590_)
);

NOR2X1 _1942_ (
    .A(mem_ibus_ack_bF$buf7),
    .B(_477_),
    .Y(_52_)
);

OR2X2 _1522_ (
    .A(_904_),
    .B(_902_),
    .Y(_905_)
);

DFFPOSX1 _2307_ (
    .D(_644_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.bufreg.data [8])
);

DFFPOSX1 _2480_ (
    .D(_779_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [17])
);

INVX1 _2060_ (
    .A(\u_cpu.bufreg.data [20]),
    .Y(_135_)
);

NOR2X1 _1751_ (
    .A(_1070_),
    .B(_1069_),
    .Y(_752_)
);

NOR2X1 _1331_ (
    .A(_383__bF$buf2),
    .B(_382_),
    .Y(_381_)
);

DFFPOSX1 _2536_ (
    .D(_827_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_rf_if.read_buf0 [30])
);

NOR2X1 _2116_ (
    .A(_375_),
    .B(_153_),
    .Y(_167_)
);

NAND2X1 _1807_ (
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_924_),
    .Y(_1104_)
);

MUX2X1 _1980_ (
    .A(\u_mem_serial.shift_reg [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_80_)
);

NOR2X1 _1560_ (
    .A(\u_rf_if.issue_idx [4]),
    .B(_913_),
    .Y(_939_)
);

DFFPOSX1 _2345_ (
    .D(_679_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

OAI21X1 _1616_ (
    .A(_383__bF$buf3),
    .B(_920_),
    .C(_925_),
    .Y(_982_)
);

DFFPOSX1 _2574_ (
    .D(_730_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(raddr[6])
);

NOR2X1 _2154_ (
    .A(_194_),
    .B(_461_),
    .Y(_195_)
);

NAND2X1 _1845_ (
    .A(_499_),
    .B(_498_),
    .Y(_1137_)
);

OAI21X1 _1425_ (
    .A(ren_bF$buf3),
    .B(\u_rf_if.o_waddr [0]),
    .C(_290_),
    .Y(_289_)
);

DFFPOSX1 _2383_ (
    .D(_709_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

NOR2X1 _1654_ (
    .A(\u_rf_if.read_buf0 [13]),
    .B(_947__bF$buf3),
    .Y(_1007_)
);

NAND2X1 _1234_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_476_),
    .Y(_475_)
);

DFFPOSX1 _2439_ (
    .D(_752_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.o_waddr [1])
);

OAI21X1 _2019_ (
    .A(rf_read_reg1_to_if[0]),
    .B(\u_cpu.branch_op ),
    .C(_106_),
    .Y(_107_)
);

OAI21X1 _2192_ (
    .A(_551__bF$buf4),
    .B(_225_),
    .C(_223_),
    .Y(_226_)
);

MUX2X1 _1883_ (
    .A(_7_),
    .B(_13_),
    .S(_552__bF$buf4),
    .Y(_712_)
);

INVX1 _1463_ (
    .A(_300_),
    .Y(_811_)
);

MUX2X1 _2248_ (
    .A(_259_),
    .B(_260_),
    .S(_440__bF$buf3),
    .Y(_592_)
);

OAI21X1 _1939_ (
    .A(_512_),
    .B(_505__bF$buf2),
    .C(_50_),
    .Y(_693_)
);

NOR2X1 _1519_ (
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [1]),
    .Y(_902_)
);

OAI22X1 _1692_ (
    .A(\u_rf_if.read_buf0 [27]),
    .B(_947__bF$buf1),
    .C(\u_rf_if.read_buf0 [25]),
    .D(_990__bF$buf1),
    .Y(_1031_)
);

INVX1 _1272_ (
    .A(rf_wreg0_to_if[1]),
    .Y(_439_)
);

DFFPOSX1 _2477_ (
    .D(_733_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(raddr[3])
);

MUX2X1 _2057_ (
    .A(_132_),
    .B(_133_),
    .S(_413__bF$buf0),
    .Y(_658_)
);

AOI21X1 _1748_ (
    .A(_890_),
    .B(_891_),
    .C(_1068_),
    .Y(_753_)
);

NAND2X1 _1328_ (
    .A(_498_),
    .B(_385_),
    .Y(_384_)
);

OAI21X1 _2286_ (
    .A(_510_),
    .B(_505__bF$buf4),
    .C(_275_),
    .Y(_569_)
);

MUX2X1 _1977_ (
    .A(\u_mem_serial.shift_reg [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_78_)
);

NOR2X1 _1557_ (
    .A(_333_),
    .B(_811_),
    .Y(_936_)
);

OAI21X1 _2095_ (
    .A(_468_),
    .B(_412_),
    .C(_150_),
    .Y(_151_)
);

AOI21X1 _1786_ (
    .A(raddr[1]),
    .B(_1043_),
    .C(_1044_),
    .Y(_1089_)
);

NOR2X1 _1366_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_346_)
);

NOR2X1 _1595_ (
    .A(_910_),
    .B(_967_),
    .Y(_821_)
);

OAI21X1 _1175_ (
    .A(_551__bF$buf5),
    .B(_531_),
    .C(_534_),
    .Y(_530_)
);

NAND2X1 _2189_ (
    .A(_7_),
    .B(_551__bF$buf0),
    .Y(_223_)
);

DFFPOSX1 _2401_ (
    .D(_727_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [29])
);

INVX1 _1689_ (
    .A(\u_rf_if.read_buf0 [26]),
    .Y(_1029_)
);

NOR2X1 _1269_ (
    .A(\u_rf_if.req_seen ),
    .B(_442_),
    .Y(_441_)
);

INVX1 _2210_ (
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_239_)
);

NAND2X1 _1901_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_2_),
    .Y(_23_)
);

OAI21X1 _1498_ (
    .A(_858_),
    .B(_877_),
    .C(_885_),
    .Y(_886_)
);

AOI21X1 _1710_ (
    .A(_969_),
    .B(_1041_),
    .C(_1042_),
    .Y(_765_)
);

DFFPOSX1 _2304_ (
    .D(_640_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [5])
);

DFFPOSX1 _2533_ (
    .D(_831_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rcnt [1])
);

AOI21X1 _2113_ (
    .A(\u_cpu.bufreg.data [2]),
    .B(_493_),
    .C(_165_),
    .Y(_166_)
);

NAND3X1 _1804_ (
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_970_),
    .C(_969_),
    .Y(_1102_)
);

DFFPOSX1 _2342_ (
    .D(_676_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(rf_read_reg1_to_if[1])
);

AOI21X1 _1613_ (
    .A(\u_rf_if.stream_cnt [1]),
    .B(_978_),
    .C(_979_),
    .Y(_815_)
);

DFFPOSX1 _2571_ (
    .D(_578_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

OAI21X1 _2151_ (
    .A(_469_),
    .B(_466_),
    .C(\u_cpu.bufreg2.dhi [5]),
    .Y(_193_)
);

CLKBUF1 CLKBUF1_insert30 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf6)
);

CLKBUF1 CLKBUF1_insert31 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf5)
);

CLKBUF1 CLKBUF1_insert32 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf4)
);

CLKBUF1 CLKBUF1_insert33 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf3)
);

CLKBUF1 CLKBUF1_insert34 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf2)
);

CLKBUF1 CLKBUF1_insert35 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf1)
);

CLKBUF1 CLKBUF1_insert36 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf0)
);

NOR2X1 _1842_ (
    .A(\u_mem_serial.shift_reg [28]),
    .B(_505__bF$buf1),
    .Y(_1135_)
);

NOR2X1 _1422_ (
    .A(\u_rf_if.last_req_key [4]),
    .B(_293_),
    .Y(_292_)
);

OAI21X1 _2207_ (
    .A(_552__bF$buf2),
    .B(_236_),
    .C(_237_),
    .Y(_610_)
);

INVX1 _2380_ (
    .A(\u_mem_serial.bit_count [0]),
    .Y(_542_)
);

NOR2X1 _1651_ (
    .A(\u_rf_if.read_buf0 [12]),
    .B(_947__bF$buf4),
    .Y(_1005_)
);

NOR2X1 _1231_ (
    .A(\u_cpu.state.cnt_r [3]),
    .B(_479_),
    .Y(_478_)
);

DFFPOSX1 _2436_ (
    .D(_830_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.rreg1_latched [3])
);

INVX1 _2016_ (
    .A(rf_read_reg0_to_if[4]),
    .Y(_104_)
);

NOR2X1 _1707_ (
    .A(_943_),
    .B(_942_),
    .Y(_1040_)
);

INVX1 _1880_ (
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_11_)
);

NAND2X1 _1460_ (
    .A(ren_bF$buf3),
    .B(_807_),
    .Y(_808_)
);

INVX1 _2245_ (
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_259_)
);

NAND2X1 _1936_ (
    .A(\u_cpu.decode.co_ebreak ),
    .B(_518_),
    .Y(_49_)
);

NOR2X1 _1516_ (
    .A(_899_),
    .B(_862_),
    .Y(_900_)
);

DFFPOSX1 _2474_ (
    .D(_776_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [20])
);

INVX1 _2054_ (
    .A(\u_cpu.bufreg.data [23]),
    .Y(_132_)
);

NAND2X1 _1745_ (
    .A(_1066_),
    .B(_1065_),
    .Y(_1067_)
);

NAND3X1 _1325_ (
    .A(_419_),
    .B(_388_),
    .C(_389_),
    .Y(_387_)
);

FILL FILL98550x39750 (
);

NAND2X1 _2283_ (
    .A(\u_cpu.alu.cmp_r ),
    .B(_476_),
    .Y(_274_)
);

MUX2X1 _1974_ (
    .A(\u_mem_serial.shift_reg [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_76_)
);

NAND2X1 _1554_ (
    .A(_933_),
    .B(_922_),
    .Y(_934_)
);

DFFPOSX1 _2339_ (
    .D(_673_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(rf_wreg0_to_if[2])
);

MUX2X1 _2092_ (
    .A(_533_),
    .B(_148_),
    .S(_413__bF$buf4),
    .Y(_637_)
);

NOR2X1 _1783_ (
    .A(_968_),
    .B(_1039_),
    .Y(_1087_)
);

OR2X2 _1363_ (
    .A(_350_),
    .B(_411_),
    .Y(_349_)
);

DFFPOSX1 _2568_ (
    .D(_852_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [12])
);

OAI21X1 _2148_ (
    .A(_470_),
    .B(_189_),
    .C(_190_),
    .Y(_623_)
);

FILL FILL99150x10950 (
);

OAI21X1 _1839_ (
    .A(_490_),
    .B(_484_),
    .C(_962_),
    .Y(_1133_)
);

NOR2X1 _1419_ (
    .A(ren_bF$buf1),
    .B(_430_),
    .Y(_295_)
);

NOR2X1 _1592_ (
    .A(\u_rf_if.prefetch_active ),
    .B(_964_),
    .Y(_965_)
);

INVX1 _1172_ (
    .A(\u_cpu.bufreg.data [3]),
    .Y(_533_)
);

DFFPOSX1 _2377_ (
    .D(_586_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

AOI21X1 _1648_ (
    .A(_1002_),
    .B(_997_),
    .C(_1003_),
    .Y(_788_)
);

INVX1 _1228_ (
    .A(_482_),
    .Y(_481_)
);

NOR2X1 _2186_ (
    .A(\u_mem_serial.shift_reg [15]),
    .B(_505__bF$buf3),
    .Y(_221_)
);

INVX1 _1877_ (
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_8_)
);

NOR2X1 _1457_ (
    .A(i_clk_fast_bF$buf7),
    .B(_805_),
    .Y(_1123_)
);

NOR2X1 _1686_ (
    .A(\u_rf_if.read_buf0 [25]),
    .B(_947__bF$buf2),
    .Y(_1027_)
);

INVX1 _1266_ (
    .A(_444_),
    .Y(_443_)
);

OAI21X1 _1495_ (
    .A(_881_),
    .B(_882_),
    .C(_858_),
    .Y(_883_)
);

MUX2X1 _2089_ (
    .A(_1153_),
    .B(_1112_),
    .S(_413__bF$buf4),
    .Y(_639_)
);

OR2X2 _2301_ (
    .A(\u_mem_serial.bit_count [6]),
    .B(\u_mem_serial.bit_count [5]),
    .Y(_555_)
);

AND2X2 _1589_ (
    .A(_915_),
    .B(\u_rf_if.prefetch_active ),
    .Y(_822_)
);

INVX1 _1169_ (
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_536_)
);

DFFPOSX1 _2530_ (
    .D(_617_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

OR2X2 _2110_ (
    .A(_157_),
    .B(_162_),
    .Y(_163_)
);

NAND3X1 _1801_ (
    .A(\u_rf_if.rreg0_latched [1]),
    .B(_970_),
    .C(_969_),
    .Y(_1100_)
);

OR2X2 _1398_ (
    .A(_527_),
    .B(\u_rf_if.last_req_key [9]),
    .Y(_316_)
);

NOR2X1 _1610_ (
    .A(_928_),
    .B(_924_),
    .Y(_978_)
);

AOI21X1 _2204_ (
    .A(_505__bF$buf3),
    .B(_235_),
    .C(_231_),
    .Y(_611_)
);

DFFPOSX1 _2433_ (
    .D(_735_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(raddr[1])
);

OAI21X1 _2013_ (
    .A(_91_),
    .B(_101_),
    .C(_102_),
    .Y(_671_)
);

NOR2X1 _1704_ (
    .A(_1037_),
    .B(_1038_),
    .Y(_767_)
);

MUX2X1 _2242_ (
    .A(_256_),
    .B(_257_),
    .S(_440__bF$buf4),
    .Y(_595_)
);

MUX2X1 _1933_ (
    .A(_515_),
    .B(_438_),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_696_)
);

AND2X2 _1513_ (
    .A(_897_),
    .B(_446_),
    .Y(_833_)
);

DFFPOSX1 _2471_ (
    .D(\u_rf_if.rtrig0 ),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.rtrig1 )
);

MUX2X1 _2051_ (
    .A(_129_),
    .B(_130_),
    .S(_413__bF$buf1),
    .Y(_661_)
);

NOR2X1 _1742_ (
    .A(\u_rf_if.rcnt [0]),
    .B(_443_),
    .Y(_755_)
);

NAND2X1 _1322_ (
    .A(_391_),
    .B(_392_),
    .Y(_390_)
);

DFFPOSX1 _2527_ (
    .D(_819_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.prefetch_active )
);

OR2X2 _2107_ (
    .A(_159_),
    .B(_158_),
    .Y(_160_)
);

OAI22X1 _2280_ (
    .A(_266_),
    .B(_440__bF$buf3),
    .C(_272_),
    .D(_271_),
    .Y(_572_)
);

FILL FILL98550x93750 (
);

INVX1 _1971_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .Y(_73_)
);

OAI21X1 _1551_ (
    .A(_928_),
    .B(_930_),
    .C(\u_rf_if.stream_cnt [4]),
    .Y(_931_)
);

DFFPOSX1 _2336_ (
    .D(_670_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

AND2X2 _1607_ (
    .A(_723_),
    .B(_807_),
    .Y(_976_)
);

AOI21X1 _1780_ (
    .A(_334_),
    .B(_704__bF$buf0),
    .C(_1085_),
    .Y(_738_)
);

NOR2X1 _1360_ (
    .A(_450_),
    .B(_419_),
    .Y(_352_)
);

DFFPOSX1 _2565_ (
    .D(_627_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(_1121_)
);

INVX1 _2145_ (
    .A(_187_),
    .Y(_188_)
);

NOR2X1 _1836_ (
    .A(_1131_),
    .B(_484_),
    .Y(_620_[2])
);

OR2X2 _1416_ (
    .A(_300_),
    .B(\u_rf_if.last_req_key [6]),
    .Y(_298_)
);

DFFPOSX1 _2374_ (
    .D(i_clk_sys_ext_bF$buf9),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.clk_sys_prev )
);

NOR2X1 _1645_ (
    .A(_1000_),
    .B(_1001_),
    .Y(_789_)
);

NOR2X1 _1225_ (
    .A(_492_),
    .B(_485_),
    .Y(_484_)
);

NAND2X1 _2183_ (
    .A(\u_mem_serial.shift_reg [13]),
    .B(_552__bF$buf1),
    .Y(_219_)
);

AOI22X1 _1874_ (
    .A(\u_mem_serial.state [1]),
    .B(_5_),
    .C(_4_),
    .D(\u_mem_serial.state [0]),
    .Y(_6_)
);

OAI21X1 _1454_ (
    .A(_803_),
    .B(_442_),
    .C(_1124_),
    .Y(_804_)
);

INVX1 _2239_ (
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_256_)
);

AOI21X1 _1683_ (
    .A(_1024_),
    .B(_997_),
    .C(_1025_),
    .Y(_775_)
);

NAND2X1 _1263_ (
    .A(_474_),
    .B(_447_),
    .Y(_446_)
);

DFFPOSX1 _2468_ (
    .D(\u_rf_if.wdata0_next [0]),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.wdata0_r [0])
);

INVX1 _2048_ (
    .A(\u_cpu.bufreg.data [26]),
    .Y(_129_)
);

INVX1 _1739_ (
    .A(rf_read_reg1_to_if[2]),
    .Y(_1063_)
);

OAI21X1 _1319_ (
    .A(_408_),
    .B(_394_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_393_)
);

OR2X2 _1492_ (
    .A(_283_),
    .B(_524_),
    .Y(_880_)
);

NOR2X1 _2277_ (
    .A(_270_),
    .B(_1148_),
    .Y(_573_)
);

NOR2X1 _1968_ (
    .A(_518_),
    .B(_1151_),
    .Y(_71_)
);

NOR2X1 _1548_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_928_)
);

FILL FILL99150x7350 (
);

MUX2X1 _2086_ (
    .A(_147_),
    .B(_10_),
    .S(_413__bF$buf4),
    .Y(_643_)
);

FILL FILL98850x68550 (
);

OAI21X1 _1777_ (
    .A(\u_rf_if.last_req_key [6]),
    .B(_704__bF$buf0),
    .C(i_rst_n_bF$buf0),
    .Y(_1084_)
);

AND2X2 _1357_ (
    .A(_356_),
    .B(_358_),
    .Y(_355_)
);

NOR2X1 _1586_ (
    .A(_957_),
    .B(_961_),
    .Y(_824_)
);

NAND2X1 _1166_ (
    .A(\u_mem_serial.shift_reg [7]),
    .B(_551__bF$buf2),
    .Y(_538_)
);

AND2X2 _1395_ (
    .A(_322_),
    .B(_320_),
    .Y(_319_)
);

INVX1 _2201_ (
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_233_)
);

FILL FILL99150x18150 (
);

NAND2X1 _1489_ (
    .A(_876_),
    .B(_875_),
    .Y(_877_)
);

DFFPOSX1 _2430_ (
    .D(_603_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

OAI21X1 _2010_ (
    .A(_93_),
    .B(_99_),
    .C(_100_),
    .Y(_672_)
);

NOR2X1 _1701_ (
    .A(_1035_),
    .B(_1036_),
    .Y(_768_)
);

OAI21X1 _1298_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_454_),
    .C(_415_),
    .Y(_414_)
);

NAND2X1 _1930_ (
    .A(_544_),
    .B(_564_),
    .Y(_46_)
);

NOR2X1 _1510_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(_894_),
    .Y(_895_)
);

DFFPOSX1 _2524_ (
    .D(_816_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.stream_cnt [0])
);

NAND3X1 _2104_ (
    .A(_472_),
    .B(_156_),
    .C(_400_),
    .Y(_157_)
);

DFFPOSX1 _2333_ (
    .D(_667_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

AOI22X1 _1604_ (
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_973_),
    .C(_972_),
    .D(raddr[7]),
    .Y(_974_)
);

DFFPOSX1 _2562_ (
    .D(_847_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [26])
);

NOR2X1 _2142_ (
    .A(_421_),
    .B(_469_),
    .Y(_185_)
);

NOR2X1 _1833_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_488_),
    .Y(_1130_)
);

NOR2X1 _1413_ (
    .A(ren_bF$buf0),
    .B(_432_),
    .Y(_301_)
);

BUFX2 BUFX2_insert60 (
    .A(_551_),
    .Y(_551__bF$buf4)
);

BUFX2 BUFX2_insert61 (
    .A(_551_),
    .Y(_551__bF$buf3)
);

BUFX2 BUFX2_insert62 (
    .A(_551_),
    .Y(_551__bF$buf2)
);

BUFX2 BUFX2_insert63 (
    .A(_551_),
    .Y(_551__bF$buf1)
);

BUFX2 BUFX2_insert64 (
    .A(_551_),
    .Y(_551__bF$buf0)
);

BUFX2 BUFX2_insert65 (
    .A(_413_),
    .Y(_413__bF$buf4)
);

BUFX2 BUFX2_insert66 (
    .A(_413_),
    .Y(_413__bF$buf3)
);

BUFX2 BUFX2_insert67 (
    .A(_413_),
    .Y(_413__bF$buf2)
);

BUFX2 BUFX2_insert68 (
    .A(_413_),
    .Y(_413__bF$buf1)
);

BUFX2 BUFX2_insert69 (
    .A(_413_),
    .Y(_413__bF$buf0)
);

DFFPOSX1 _2371_ (
    .D(_583_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

AOI21X1 _1642_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_996_),
    .C(_999_),
    .Y(_790_)
);

INVX1 _1222_ (
    .A(_488_),
    .Y(_487_)
);

DFFPOSX1 _2427_ (
    .D(_602_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

OAI21X1 _2007_ (
    .A(_93_),
    .B(_97_),
    .C(_98_),
    .Y(_673_)
);

MUX2X1 _2180_ (
    .A(_211_),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .S(_465_),
    .Y(_217_)
);

NOR2X1 _1871_ (
    .A(\u_mem_serial.state [1]),
    .B(_1132_),
    .Y(_3_)
);

NOR2X1 _1451_ (
    .A(_799_),
    .B(_801_),
    .Y(_839_)
);

MUX2X1 _2236_ (
    .A(_253_),
    .B(_254_),
    .S(_440__bF$buf4),
    .Y(_598_)
);

OAI21X1 _1927_ (
    .A(_551__bF$buf4),
    .B(_43_),
    .C(_40_),
    .Y(_44_)
);

NOR2X1 _1507_ (
    .A(_890_),
    .B(_891_),
    .Y(_892_)
);

NOR2X1 _1680_ (
    .A(_1022_),
    .B(_1023_),
    .Y(_776_)
);

NOR2X1 _1260_ (
    .A(_450_),
    .B(_451_),
    .Y(_449_)
);

DFFPOSX1 _2465_ (
    .D(_771_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.read_buf0 [25])
);

MUX2X1 _2045_ (
    .A(_127_),
    .B(_126_),
    .S(_413__bF$buf1),
    .Y(_664_)
);

INVX1 _1736_ (
    .A(rf_read_reg1_to_if[1]),
    .Y(_1061_)
);

INVX1 _1316_ (
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_396_)
);

OAI21X1 _2274_ (
    .A(_36_),
    .B(_268_),
    .C(_269_),
    .Y(_575_)
);

NOR2X1 _1965_ (
    .A(_68_),
    .B(_56_),
    .Y(_69_)
);

NOR2X1 _1545_ (
    .A(_925_),
    .B(_370_),
    .Y(_926_)
);

MUX2X1 _2083_ (
    .A(_145_),
    .B(_146_),
    .S(_413__bF$buf2),
    .Y(_645_)
);

AOI21X1 _1774_ (
    .A(_294_),
    .B(_704__bF$buf3),
    .C(_1082_),
    .Y(_741_)
);

NAND2X1 _1354_ (
    .A(_381_),
    .B(_367_),
    .Y(_358_)
);

DFFPOSX1 _2559_ (
    .D(_844_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.wen0_r )
);

NOR2X1 _2139_ (
    .A(_491_),
    .B(_418_),
    .Y(_182_)
);

NAND2X1 _1583_ (
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_958_),
    .Y(_959_)
);

NAND2X1 _1163_ (
    .A(\u_mem_serial.shift_reg [11]),
    .B(_551__bF$buf0),
    .Y(_540_)
);

DFFPOSX1 _2368_ (
    .D(_698_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [21])
);

OAI22X1 _1639_ (
    .A(_383__bF$buf1),
    .B(\u_rf_if.read_buf0 [6]),
    .C(\u_rf_if.read_buf0 [5]),
    .D(_990__bF$buf2),
    .Y(_998_)
);

INVX1 _1219_ (
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_490_)
);

NAND2X1 _1392_ (
    .A(\u_rf_if.last_req_key [8]),
    .B(_337_),
    .Y(_322_)
);

OAI21X1 _2177_ (
    .A(_212_),
    .B(_465_),
    .C(_188_),
    .Y(_215_)
);

MUX2X1 _1868_ (
    .A(_1151_),
    .B(_1_),
    .S(_552__bF$buf4),
    .Y(_715_)
);

AOI21X1 _1448_ (
    .A(_724_),
    .B(_798_),
    .C(_799_),
    .Y(_800_)
);

endmodule
