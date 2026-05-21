/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module my_mcu_top(
    inout vdd,
    inout gnd,
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
wire _641_ ;
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
wire _543__bF$buf0 ;
wire _543__bF$buf1 ;
wire _543__bF$buf2 ;
wire _543__bF$buf3 ;
wire _543__bF$buf4 ;
wire _543__bF$buf5 ;
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
wire _33_ ;
wire _1039_ ;
wire _599_ ;
wire _179_ ;
wire _811_ ;
wire _71_ ;
wire _1077_ ;
wire _620_ ;
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
wire _1133_ ;
wire [3:0] \u_rf_if.o_waddr  ;
wire _884_ ;
wire _464_ ;
wire _693_ ;
wire _273_ ;
wire _749_ ;
wire _329_ ;
wire _978_ ;
wire _558_ ;
wire _138_ ;
wire _30_ ;
wire _1036_ ;
wire ren ;
wire _787_ ;
wire _367_ ;
wire [0:0] _596_ ;
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
wire _925__bF$buf0 ;
wire _925__bF$buf1 ;
wire _925__bF$buf2 ;
wire _925__bF$buf3 ;
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
wire _426__bF$buf0 ;
wire _426__bF$buf1 ;
wire _426__bF$buf2 ;
wire _426__bF$buf3 ;
wire _426__bF$buf4 ;
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
wire _873__bF$buf0 ;
wire i_clk_sys_ext_bF$buf10 ;
wire _873__bF$buf1 ;
wire i_clk_sys_ext_bF$buf11 ;
wire _873__bF$buf2 ;
wire i_clk_sys_ext_bF$buf12 ;
wire _873__bF$buf3 ;
wire i_clk_sys_ext_bF$buf13 ;
wire _873__bF$buf4 ;
wire _873__bF$buf5 ;
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
wire _32_ ;
wire _1038_ ;
wire _789_ ;
wire _369_ ;
wire _598_ ;
wire _178_ ;
wire _810_ ;
wire _70_ ;
wire _1076_ ;
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
wire _393__bF$buf0 ;
wire _393__bF$buf1 ;
wire _393__bF$buf2 ;
wire _393__bF$buf3 ;
wire _393__bF$buf4 ;
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
wire _542__bF$buf0 ;
wire _542__bF$buf1 ;
wire _542__bF$buf2 ;
wire _542__bF$buf3 ;
wire _542__bF$buf4 ;
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
wire _943__bF$buf0 ;
wire _943__bF$buf1 ;
wire _943__bF$buf2 ;
wire _943__bF$buf3 ;
wire _943__bF$buf4 ;
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
wire [2:1] _615_ ;
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

OAI22X1 _1677_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(_943__bF$buf0),
    .C(\u_rf_if.read_buf0 [21]),
    .D(_926_),
    .Y(_1010_)
);

INVX1 _1257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .Y(_441_)
);

INVX1 _1486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_864_),
    .Y(_865_)
);

OR2X2 _1295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_421_),
    .B(_406_),
    .Y(_405_)
);

DFFPOSX1 _2521_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_618_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg2.dhi [4])
);

MUX2X1 _2101_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_148_),
    .B(_123_),
    .S(_426__bF$buf1),
    .Y(_631_)
);

INVX1 _1389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[1]),
    .Y(_313_)
);

DFFPOSX1 _2330_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_678_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

FILL FILL97950x79350 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1601_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .B(_931_),
    .Y(_960_)
);

NAND3X1 _1198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_505_),
    .B(_503_),
    .C(_500_),
    .Y(_499_)
);

NOR2X1 _1830_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_485_),
    .Y(_1110_)
);

AOI22X1 _1410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(raddr[5]),
    .C(_342_),
    .D(_293_),
    .Y(_292_)
);

BUFX2 BUFX2_insert30 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .Y(_543__bF$buf4)
);

BUFX2 BUFX2_insert31 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .Y(_543__bF$buf3)
);

BUFX2 BUFX2_insert32 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .Y(_543__bF$buf2)
);

BUFX2 BUFX2_insert33 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .Y(_543__bF$buf1)
);

BUFX2 BUFX2_insert34 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .Y(_543__bF$buf0)
);

DFFPOSX1 _2424_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_749_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.o_waddr [0])
);

NAND2X1 _2004_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[3]),
    .B(_89_),
    .Y(_92_)
);

MUX2X1 _2233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_241_),
    .B(_242_),
    .S(_873__bF$buf0),
    .Y(_590_)
);

NAND2X1 _1924_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_33_),
    .B(_35_),
    .Y(_694_)
);

NAND2X1 _1504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_880_),
    .B(_873__bF$buf5),
    .Y(_881_)
);

DFFPOSX1 _2462_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_779_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [11])
);

AOI22X1 _2042_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_reg [11]),
    .C(_87_),
    .D(_90_),
    .Y(_121_)
);

INVX1 _1733_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[0]),
    .Y(_1047_)
);

NAND2X1 _1313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_388_),
    .B(_390_),
    .Y(_387_)
);

DFFPOSX1 _2518_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_823_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.stream_cnt [4])
);

OAI21X1 _2271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_474_),
    .B(_382_),
    .C(_257_),
    .Y(_567_)
);

AOI21X1 _1962_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_59_),
    .B(_51_),
    .C(_61_),
    .Y(_682_)
);

NAND2X1 _1542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_330_),
    .B(_292_),
    .Y(_911_)
);

DFFPOSX1 _2327_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_675_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

MUX2X1 _2080_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_139_),
    .B(_140_),
    .S(_426__bF$buf2),
    .Y(_643_)
);

OAI21X1 _1771_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [7]),
    .B(_284_),
    .C(i_rst_n_bF$buf1),
    .Y(_1068_)
);

NAND2X1 _1351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_350_),
    .Y(_349_)
);

DFFPOSX1 _2556_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_626_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [5])
);

AOI21X1 _2136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_468_),
    .Y(_174_)
);

OAI22X1 _1827_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1108_),
    .B(_543__bF$buf1),
    .C(_1107_),
    .D(_528_),
    .Y(_720_)
);

NAND3X1 _1407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_316_),
    .B(_296_),
    .C(_298_),
    .Y(_295_)
);

FILL FILL97950x3750 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _1580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_942_),
    .B(_943__bF$buf2),
    .C(_926_),
    .D(_944_),
    .Y(_818_)
);

NAND2X1 _1160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_537_),
    .B(_532_),
    .Y(_849_)
);

DFFPOSX1 _2365_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_704_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

INVX1 _1636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [6]),
    .Y(_984_)
);

INVX1 _1216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_483_),
    .Y(_482_)
);

OAI21X1 _2174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_178_),
    .B(_205_),
    .C(_206_),
    .Y(_207_)
);

INVX1 _1865_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_1143_)
);

NAND3X1 _1445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_265_),
    .B(_263_),
    .C(_266_),
    .Y(_262_)
);

OAI22X1 _1674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [18]),
    .B(_943__bF$buf0),
    .C(\u_rf_if.read_buf0 [20]),
    .D(_926_),
    .Y(_1008_)
);

NAND2X1 _1254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_471_),
    .B(_445_),
    .Y(_444_)
);

DFFPOSX1 _2459_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_776_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf0 [14])
);

OAI21X1 _2039_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_117_),
    .C(_118_),
    .Y(_119_)
);

NAND2X1 _1483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .B(\u_rf_if.rtrig0 ),
    .Y(_862_)
);

OAI21X1 _2268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jump ),
    .B(_350_),
    .C(_873__bF$buf2),
    .Y(_256_)
);

INVX1 _1959_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_59_)
);

NAND2X1 _1539_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [4]),
    .B(_908_),
    .Y(_909_)
);

INVX1 _1292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_408_)
);

DFFPOSX1 _2497_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_806_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.write_wait [0])
);

INVX1 _2077_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_139_)
);

FILL FILL97650x90150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL97650x57750 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1768_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_292_),
    .B(_284_),
    .C(_1066_),
    .Y(_737_)
);

NOR2X1 _1348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_353_),
    .B(_356_),
    .Y(_352_)
);

NOR2X1 _1997_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_85_),
    .B(_81_),
    .Y(_86_)
);

INVX1 _1577_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [31]),
    .Y(_942_)
);

OAI21X1 _1157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_535_),
    .C(_554_),
    .Y(_534_)
);

NOR2X1 _1386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_317_),
    .B(_320_),
    .Y(_316_)
);

INVX1 _1195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_502_)
);

FILL FILL97950x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2421_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_602_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

INVX2 _2001_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_88_),
    .Y(_89_)
);

AND2X2 _1289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_437_),
    .B(_412_),
    .Y(_411_)
);

INVX1 _2230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_241_)
);

OAI21X1 _1921_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_870_),
    .B(_32_),
    .C(_529_),
    .Y(_33_)
);

NOR2X1 _1501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[0]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_878_)
);

INVX1 _1730_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[2]),
    .Y(_1045_)
);

NAND2X1 _1310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(_391_),
    .Y(_390_)
);

DFFPOSX1 _2515_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_820_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(ren)
);

DFFPOSX1 _2324_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_672_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(rf_read_reg1_to_if[1])
);

DFFPOSX1 _2553_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_849_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.state [0])
);

MUX2X1 _2133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_171_),
    .B(_504_),
    .S(_543__bF$buf1),
    .Y(_621_)
);

INVX1 _1824_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_1107_)
);

AOI21X1 _1404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_299_),
    .B(_301_),
    .C(_306_),
    .Y(_298_)
);

DFFPOSX1 _2362_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_702_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.decode.opcode [1])
);

INVX1 _1633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [5]),
    .Y(_982_)
);

NOR2X1 _1213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_487_),
    .B(_486_),
    .Y(_485_)
);

DFFPOSX1 _2418_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_746_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [0])
);

OAI21X1 _2171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_461_),
    .B(_203_),
    .C(_463_),
    .Y(_204_)
);

INVX1 _1862_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_1140_)
);

OAI21X1 _1442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .C(\u_rf_if.tx_state [2]),
    .Y(_265_)
);

MUX2X1 _2227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_238_),
    .B(_239_),
    .S(_873__bF$buf4),
    .Y(_593_)
);

INVX1 _1918_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .Y(_30_)
);

INVX1 _1671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [19]),
    .Y(_1006_)
);

NOR2X1 _1251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_449_),
    .B(_448_),
    .Y(_447_)
);

DFFPOSX1 _2456_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_774_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf0 [16])
);

INVX1 _2036_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[4]),
    .Y(_116_)
);

INVX1 _1727_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[1]),
    .Y(_1043_)
);

INVX8 _1307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(_393_)
);

OAI21X1 _1480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_700_),
    .B(_842_),
    .C(_859_),
    .Y(_860_)
);

INVX1 _2265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_352_),
    .Y(_254_)
);

OAI21X1 _1956_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf5),
    .B(_1041_),
    .C(_43_),
    .Y(_57_)
);

NAND3X1 _1536_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [4]),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_906_)
);

NAND3X1 _2494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_551_),
    .B(_550_),
    .C(_549_),
    .Y(_548_)
);

MUX2X1 _2074_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_136_),
    .B(_137_),
    .S(_426__bF$buf0),
    .Y(_646_)
);

OAI21X1 _1765_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [4]),
    .B(_284_),
    .C(i_rst_n_bF$buf1),
    .Y(_1065_)
);

NAND2X1 _1345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_355_)
);

MUX2X1 _1994_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [21]),
    .B(rf_read_reg1_to_if[2]),
    .S(mem_ibus_ack_bF$buf5),
    .Y(_84_)
);

INVX1 _1574_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_940_),
    .Y(_820_)
);

BUFX2 _1154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1115_),
    .Y(o_mem_sck)
);

DFFPOSX1 _2359_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_581_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

OAI21X1 _1383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [8]),
    .B(_344_),
    .C(\u_rf_if.req_seen ),
    .Y(_319_)
);

INVX1 _2168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_201_)
);

NOR2X1 _1859_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(_481_),
    .Y(_1138_)
);

AOI22X1 _1439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_282_),
    .C(_274_),
    .D(_335_),
    .Y(_268_)
);

NOR2X1 _1192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_506_),
    .B(_508_),
    .Y(_505_)
);

DFFPOSX1 _2397_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_590_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

NOR2X1 _1668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(_393__bF$buf0),
    .Y(_1004_)
);

INVX2 _1248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .Y(_450_)
);

INVX1 _1897_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_14_)
);

OAI21X1 _1477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_855_),
    .B(_856_),
    .C(_261_),
    .Y(_857_)
);

NAND2X1 _1286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_415_),
    .B(_481_),
    .Y(_414_)
);

DFFPOSX1 _2512_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_614_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

FILL FILL97950x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2321_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_669_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(rf_wreg0_to_if[2])
);

INVX4 _1189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf7),
    .Y(_508_)
);

DFFPOSX1 _2550_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_573_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

OAI21X1 _2130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_548_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_169_)
);

NOR2X1 _1821_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_559_),
    .B(_542__bF$buf2),
    .Y(_1105_)
);

NAND2X1 _1401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [2]),
    .B(_302_),
    .Y(_301_)
);

INVX1 _1630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [4]),
    .Y(_980_)
);

INVX1 _1210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_488_)
);

DFFPOSX1 _2415_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_745_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.tx_state [1])
);

INVX1 _2224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_238_)
);

NOR2X1 _1915_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_548_),
    .B(_19_),
    .Y(_28_)
);

FILL FILL97950x18150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2453_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_771_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf0 [19])
);

NAND2X1 _2033_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_113_),
    .Y(_114_)
);

INVX1 _1724_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm ),
    .Y(_1041_)
);

AND2X2 _1304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_493_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_396_)
);

DFFPOSX1 _2509_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_813_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.wdata0_next_phase )
);

MUX2X1 _2262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_251_),
    .B(_253_),
    .S(_873__bF$buf1),
    .Y(_572_)
);

MUX2X1 _1953_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [15]),
    .B(rf_read_reg0_to_if[1]),
    .S(mem_ibus_ack_bF$buf5),
    .Y(_55_)
);

NAND2X1 _1533_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_902_),
    .Y(_903_)
);

DFFPOSX1 _2318_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_666_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

NAND2X1 _2491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_546_),
    .B(_547_),
    .Y(_545_)
);

INVX1 _2071_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [15]),
    .Y(_136_)
);

AOI21X1 _1762_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_300_),
    .B(_285_),
    .C(_1063_),
    .Y(_740_)
);

OAI21X1 _1342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_394_),
    .B(_368_),
    .C(_359_),
    .Y(_358_)
);

DFFPOSX1 _2547_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_846_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [9])
);

NAND2X1 _2127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_168_),
    .B(_532_),
    .Y(_624_)
);

OAI21X1 _1818_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf4),
    .B(_1102_),
    .C(_1099_),
    .Y(_1103_)
);

MUX2X1 _1991_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_884_),
    .B(_82_),
    .S(_81_),
    .Y(_674_)
);

OAI21X1 _1571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_898_),
    .B(_934_),
    .C(_937_),
    .Y(_938_)
);

BUFX2 _1151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1118_),
    .Y(o_rf_sck)
);

DFFPOSX1 _2356_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(i_clk_sys_ext_bF$buf0),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.clk_sys_prev )
);

INVX1 _1627_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [2]),
    .Y(_978_)
);

OAI21X1 _1207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_494_),
    .B(_492_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_491_)
);

AOI21X1 _1380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_324_),
    .C(_323_),
    .Y(_322_)
);

OAI21X1 _2165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .B(_463_),
    .C(_187_),
    .Y(_199_)
);

OAI21X1 _1856_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1122_),
    .B(_481_),
    .C(_1136_),
    .Y(_713_)
);

NOR2X1 _1436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast_bF$buf7),
    .B(_271_),
    .Y(_1118_)
);

DFFPOSX1 _2394_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_735_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.last_req_key [7])
);

NOR2X1 _1665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [16]),
    .B(_393__bF$buf0),
    .Y(_1002_)
);

NAND3X1 _1245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .B(_454_),
    .C(_463_),
    .Y(_453_)
);

OAI21X1 _1894_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf7),
    .B(_450_),
    .C(_12_),
    .Y(_701_)
);

INVX1 _1474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_330_),
    .Y(_854_)
);

INVX1 _2259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_252_)
);

INVX1 _1283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_418_),
    .Y(_417_)
);

NOR2X1 _2488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_552_),
    .Y(_542_)
);

MUX2X1 _2068_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_133_),
    .B(_134_),
    .S(_426__bF$buf0),
    .Y(_649_)
);

OAI21X1 _1759_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_310_),
    .B(_285_),
    .C(i_rst_n_bF$buf0),
    .Y(_1062_)
);

OAI21X1 _1339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_367_),
    .B(_366_),
    .C(_362_),
    .Y(_361_)
);

DFFPOSX1 _2297_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_648_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.bufreg.data [16])
);

OAI21X1 _1988_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_469_),
    .C(_874_),
    .Y(_80_)
);

NOR2X1 _1568_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .B(_393__bF$buf3),
    .Y(_935_)
);

NAND3X1 _1797_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(_960_),
    .C(_933_),
    .Y(_1086_)
);

INVX1 _1377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [3]),
    .Y(_325_)
);

INVX1 _1186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_511_),
    .Y(_510_)
);

DFFPOSX1 _2412_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_830_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.wen0_r )
);

MUX2X1 _2221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_235_),
    .B(_236_),
    .S(_873__bF$buf4),
    .Y(_597_)
);

OAI21X1 _1912_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_25_),
    .B(_24_),
    .C(_542__bF$buf0),
    .Y(_26_)
);

DFFPOSX1 _2450_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_768_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf0 [22])
);

AOI22X1 _2030_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_450_),
    .C(_416_),
    .D(_110_),
    .Y(_111_)
);

FILL FILL97950x72150 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1721_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1039_),
    .B(_1038_),
    .Y(_757_)
);

NAND2X1 _1301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_401_),
    .B(_410_),
    .Y(_399_)
);

DFFPOSX1 _2506_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_611_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [14])
);

MUX2X1 _1950_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1045_),
    .B(_53_),
    .S(_51_),
    .Y(_686_)
);

INVX1 _1530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_900_)
);

DFFPOSX1 _2315_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_664_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

DFFPOSX1 _2544_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_844_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.launch_pending )
);

NAND2X1 _2124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf2),
    .B(_533_),
    .Y(_167_)
);

INVX1 _1815_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [4]),
    .Y(_1100_)
);

DFFPOSX1 _2353_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_695_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.bit_count [4])
);

INVX1 _1624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_943__bF$buf2),
    .Y(_976_)
);

NOR2X1 _1204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_496_),
    .B(_495_),
    .Y(_494_)
);

DFFPOSX1 _2409_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_597_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

NAND2X1 _2162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_193_),
    .B(_196_),
    .Y(_617_)
);

OR2X2 _1853_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1132_),
    .B(\u_cpu.bne_or_bge ),
    .Y(_1134_)
);

OAI21X1 _1433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_273_),
    .B(_440_),
    .C(_1119_),
    .Y(_272_)
);

INVX1 _2218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_235_)
);

DFFPOSX1 _2391_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_734_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [8])
);

NAND2X1 _1909_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_549_),
    .B(_20_),
    .Y(_23_)
);

AOI21X1 _1662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_999_),
    .B(_925__bF$buf2),
    .C(_1000_),
    .Y(_777_)
);

NAND2X1 _1242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .B(_457_),
    .Y(_456_)
);

DFFPOSX1 _2447_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_765_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [25])
);

INVX1 _2027_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_108_)
);

NOR2X1 _1718_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1035_),
    .B(_1037_),
    .Y(_758_)
);

AOI21X1 _1891_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .B(mem_ibus_ack_bF$buf7),
    .C(_11_),
    .Y(_703_)
);

OR2X2 _1471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_512_),
    .B(\u_rf_if.tx_state [3]),
    .Y(_843_)
);

INVX1 _2256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_250_)
);

MUX2X1 _1947_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [18]),
    .B(rf_read_reg0_to_if[4]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_52_)
);

AOI21X1 _1527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_894_),
    .B(_508_),
    .C(_897_),
    .Y(_824_)
);

NAND2X1 _1280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_421_),
    .Y(_420_)
);

INVX1 _2485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_540_)
);

INVX1 _2065_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [18]),
    .Y(_133_)
);

AND2X2 _1756_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1060_),
    .B(_852_),
    .Y(_743_)
);

OAI21X1 _1336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf0),
    .B(_392_),
    .C(_376_),
    .Y(_364_)
);

DFFPOSX1 _2294_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_645_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.data [13])
);

INVX1 _1985_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .Y(_78_)
);

NAND2X1 _1565_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_896_),
    .B(_932_),
    .Y(_821_)
);

AOI21X1 _1794_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_932_),
    .B(raddr[3]),
    .C(_939_),
    .Y(_1084_)
);

OR2X2 _1374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_330_),
    .B(\u_rf_if.last_req_key [4]),
    .Y(_328_)
);

DFFPOSX1 _2579_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_644_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.data [12])
);

NOR2X1 _2159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_190_),
    .B(_463_),
    .Y(_194_)
);

NOR2X1 _1183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [2]),
    .B(_514_),
    .Y(_513_)
);

DFFPOSX1 _2388_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_835_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(_1119_)
);

NOR2X1 _1659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_997_),
    .B(_998_),
    .Y(_778_)
);

NOR2X1 _1239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_460_),
    .Y(_459_)
);

NOR2X1 _2197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(_543__bF$buf5),
    .Y(_222_)
);

INVX1 _1888_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_505_),
    .Y(_10_)
);

OAI21X1 _1468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_717_),
    .B(_805_),
    .C(_282_),
    .Y(_834_)
);

OAI22X1 _1697_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf2),
    .B(\u_rf_if.read_buf0 [27]),
    .C(\u_rf_if.read_buf0 [26]),
    .D(_943__bF$buf3),
    .Y(_1023_)
);

INVX1 _1277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [1]),
    .Y(_423_)
);

FILL FILL97950x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2503_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_809_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.stream_cnt [1])
);

DFFPOSX1 _2312_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_661_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

DFFPOSX1 _2541_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_623_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [31])
);

OAI21X1 _2121_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_553_),
    .B(_544_),
    .C(\u_mem_serial.shift_reg [15]),
    .Y(_166_)
);

OAI21X1 _1812_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1097_),
    .B(_1096_),
    .C(_1092_),
    .Y(_724_)
);

DFFPOSX1 _2350_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_577_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

NAND2X1 _1621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [1]),
    .B(_444_),
    .Y(_974_)
);

INVX1 _1201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .Y(_497_)
);

DFFPOSX1 _2406_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_741_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.last_req_key [1])
);

AOI22X1 _1850_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_496_),
    .B(_495_),
    .C(_1128_),
    .D(_1129_),
    .Y(_1131_)
);

NOR2X1 _1430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_277_),
    .B(_275_),
    .Y(_836_)
);

MUX2X1 _2215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_232_),
    .B(_233_),
    .S(_873__bF$buf1),
    .Y(_600_)
);

FILL FILL97950x25350 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1906_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_550_),
    .B(_16_),
    .Y(_21_)
);

DFFPOSX1 _2444_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_762_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [28])
);

AOI22X1 _2024_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_47_),
    .D(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_106_)
);

NOR2X1 _1715_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1032_),
    .B(_1034_),
    .Y(_1035_)
);

MUX2X1 _2253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_227_),
    .B(_248_),
    .S(_873__bF$buf5),
    .Y(_576_)
);

OAI21X1 _1944_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_449_),
    .Y(_49_)
);

NAND2X1 _1524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_893_),
    .B(_895_),
    .Y(_896_)
);

DFFPOSX1 _2309_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_658_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [26])
);

OAI21X1 _2482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_540_),
    .B(_543__bF$buf2),
    .C(_539_),
    .Y(_850_)
);

MUX2X1 _2062_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_130_),
    .B(_131_),
    .S(_426__bF$buf2),
    .Y(_652_)
);

NAND3X1 _1753_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf1),
    .B(_343_),
    .C(_287_),
    .Y(_1059_)
);

INVX1 _1333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_494_),
    .Y(_367_)
);

DFFPOSX1 _2538_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_837_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.shift_rx [0])
);

AOI21X1 _2118_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_490_),
    .B(_163_),
    .C(_161_),
    .Y(_164_)
);

INVX1 _2291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .Y(_550_)
);

OAI21X1 _1809_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1094_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .C(_947_),
    .Y(_1095_)
);

INVX1 _1982_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .Y(_76_)
);

NAND2X1 _1562_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_917_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_930_)
);

DFFPOSX1 _2347_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_576_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

AOI21X1 _1618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_972_),
    .B(_969_),
    .C(_970_),
    .Y(_808_)
);

OAI21X1 _1791_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [2]),
    .B(_932_),
    .C(_1081_),
    .Y(_1082_)
);

AND2X2 _1371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_344_),
    .B(rf_wreg0_to_if[0]),
    .Y(_331_)
);

DFFPOSX1 _2576_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_643_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.data [11])
);

INVX1 _2156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_460_),
    .Y(_191_)
);

OAI21X1 _1847_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_387_),
    .B(_371_),
    .C(_390_),
    .Y(_1128_)
);

AOI21X1 _1427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_280_),
    .B(_278_),
    .C(_277_),
    .Y(_276_)
);

OAI21X1 _1180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_517_),
    .C(i_rst_n_bF$buf2),
    .Y(_516_)
);

DFFPOSX1 _2385_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_722_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [30])
);

NOR2X1 _1656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_995_),
    .B(_996_),
    .Y(_779_)
);

INVX1 _1236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_462_)
);

OAI21X1 _2194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf3),
    .B(_219_),
    .C(_217_),
    .Y(_220_)
);

OAI21X1 _1885_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_495_),
    .C(_8_),
    .Y(_706_)
);

AND2X2 _1465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_342_),
    .B(_269_),
    .Y(_804_)
);

OAI22X1 _1694_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf2),
    .B(\u_rf_if.read_buf0 [26]),
    .C(\u_rf_if.read_buf0 [25]),
    .D(_943__bF$buf3),
    .Y(_1021_)
);

NAND2X1 _1274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_430_),
    .B(_427_),
    .Y(_426_)
);

OAI21X1 _2479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_538_),
    .B(_545_),
    .C(_542__bF$buf0),
    .Y(_537_)
);

INVX1 _2059_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [21]),
    .Y(_130_)
);

NAND2X1 _2288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_562_),
    .B(_554_),
    .Y(_553_)
);

INVX1 _1979_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .Y(_74_)
);

INVX1 _1559_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_927_),
    .Y(_928_)
);

DFFPOSX1 _2500_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_564_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [6])
);

MUX2X1 _2097_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_145_),
    .B(_432_),
    .S(_147_),
    .Y(_633_)
);

OAI21X1 _1788_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_969_),
    .B(_900_),
    .C(_899_),
    .Y(_1079_)
);

INVX1 _1368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_335_),
    .Y(_334_)
);

OAI21X1 _1597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_957_),
    .C(_444_),
    .Y(_814_)
);

INVX1 _1177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rtrig1 ),
    .Y(_519_)
);

DFFPOSX1 _2403_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_593_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

INVX1 _2212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_232_)
);

OAI21X1 _1903_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_15_),
    .B(_529_),
    .C(_18_),
    .Y(_698_)
);

FILL FILL97950x46950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2441_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_607_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [25])
);

OAI21X1 _2021_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_526_),
    .C(_103_),
    .Y(_104_)
);

INVX1 _1712_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [2]),
    .Y(_1032_)
);

MUX2X1 _2250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1101_),
    .B(_522_),
    .S(_873__bF$buf3),
    .Y(_578_)
);

OAI21X1 _1941_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(_385_),
    .C(_46_),
    .Y(_688_)
);

NOR2X1 _1521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .Y(_893_)
);

DFFPOSX1 _2306_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_655_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [23])
);

AOI21X1 _1750_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_281_),
    .B(_274_),
    .C(_1057_),
    .Y(_746_)
);

OR2X2 _1330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_371_),
    .B(_387_),
    .Y(_370_)
);

DFFPOSX1 _2535_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_567_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.alu.add_cy_r )
);

MUX2X1 _2115_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_162_),
    .B(_145_),
    .S(_147_),
    .Y(_630_)
);

NAND2X1 _1806_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_935_),
    .Y(_1092_)
);

DFFPOSX1 _2344_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_689_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.decode.co_ebreak )
);

AOI21X1 _1615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_903_),
    .B(\u_rf_if.stream_active ),
    .C(_908_),
    .Y(_970_)
);

DFFPOSX1 _2573_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_641_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [9])
);

OAI21X1 _2153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_187_),
    .B(_182_),
    .C(_188_),
    .Y(_189_)
);

CLKBUF1 CLKBUF1_insert50 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert51 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert52 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert53 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert54 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert55 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

CLKBUF1 CLKBUF1_insert56 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

NAND2X1 _1844_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1124_),
    .B(_433_),
    .Y(_1125_)
);

OR2X2 _1424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_280_),
    .B(i_rf_miso),
    .Y(_279_)
);

INVX1 _2209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_230_)
);

DFFPOSX1 _2382_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_615_[1]),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

AOI21X1 _1653_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_992_),
    .C(_994_),
    .Y(_780_)
);

OAI21X1 _1233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_496_),
    .B(_480_),
    .C(_466_),
    .Y(_465_)
);

DFFPOSX1 _2438_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_758_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.issue_idx [2])
);

NAND2X1 _2018_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_415_),
    .Y(_101_)
);

NAND2X1 _2191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_117_),
    .B(_542__bF$buf3),
    .Y(_217_)
);

OAI21X1 _1709_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_914_),
    .B(_1029_),
    .C(_933_),
    .Y(_1030_)
);

OAI21X1 _1882_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf4),
    .B(_6_),
    .C(_3_),
    .Y(_7_)
);

INVX1 _1462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_r [0]),
    .Y(_801_)
);

MUX2X1 _2247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5_),
    .B(_38_),
    .S(_873__bF$buf3),
    .Y(_581_)
);

INVX1 _1938_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_44_),
    .Y(_45_)
);

NAND2X1 _1518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(_890_),
    .Y(_891_)
);

OAI22X1 _1691_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf1),
    .B(\u_rf_if.read_buf0 [25]),
    .C(\u_rf_if.read_buf0 [24]),
    .D(_943__bF$buf3),
    .Y(_1019_)
);

INVX1 _1271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_468_),
    .Y(_429_)
);

DFFPOSX1 _2476_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_789_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [1])
);

MUX2X1 _2056_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_127_),
    .B(_128_),
    .S(_426__bF$buf4),
    .Y(_655_)
);

NOR2X1 _1747_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1055_),
    .B(_866_),
    .Y(_1056_)
);

INVX1 _1327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_374_),
    .Y(_373_)
);

NOR2X1 _2285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_557_),
    .Y(_556_)
);

INVX1 _1976_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .Y(_72_)
);

NOR2X1 _1556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_924_),
    .Y(_925_)
);

INVX1 _2094_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_145_)
);

AOI21X1 _1785_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [1]),
    .C(_1076_),
    .Y(_1077_)
);

NOR2X1 _1365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_338_),
    .B(_339_),
    .Y(_337_)
);

INVX1 _1594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [1]),
    .Y(_955_)
);

MUX2X1 _1174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_523_),
    .B(_522_),
    .S(_559_),
    .Y(_521_)
);

DFFPOSX1 _2379_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_584_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

OAI21X1 _2188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf3),
    .B(_214_),
    .C(_212_),
    .Y(_215_)
);

INVX1 _1879_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [7]),
    .Y(_4_)
);

OAI21X1 _1459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_796_),
    .B(_797_),
    .C(_791_),
    .Y(_798_)
);

DFFPOSX1 _2400_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_738_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [4])
);

OAI22X1 _1688_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf1),
    .B(\u_rf_if.read_buf0 [24]),
    .C(\u_rf_if.read_buf0 [23]),
    .D(_943__bF$buf3),
    .Y(_1017_)
);

INVX1 _1268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .Y(_432_)
);

NOR2X1 _1900_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_16_)
);

NOR2X1 _1497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_386_),
    .Y(_874_)
);

DFFPOSX1 _2303_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_696_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [3])
);

FILL FILL97650x79350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2532_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_621_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [0])
);

AOI21X1 _2112_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_153_),
    .B(_158_),
    .C(_490_),
    .Y(_160_)
);

NAND3X1 _1803_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_960_),
    .C(_933_),
    .Y(_1090_)
);

DFFPOSX1 _2341_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_687_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(rf_read_reg0_to_if[3])
);

AOI21X1 _1612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.stream_cnt [0]),
    .C(\u_rf_if.stream_cnt [1]),
    .Y(_968_)
);

DFFPOSX1 _2570_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_638_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [6])
);

OAI21X1 _2150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_457_),
    .B(_185_),
    .C(_463_),
    .Y(_186_)
);

FILL FILL97950x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1841_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_1122_)
);

INVX2 _1421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [0]),
    .Y(_282_)
);

MUX2X1 _2206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_144_),
    .B(_227_),
    .S(_559_),
    .Y(_228_)
);

OAI22X1 _1650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf4),
    .B(\u_rf_if.read_buf0 [10]),
    .C(\u_rf_if.read_buf0 [9]),
    .D(_943__bF$buf2),
    .Y(_993_)
);

NOR2X1 _1230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_469_),
    .Y(_468_)
);

DFFPOSX1 _2435_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_829_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [28])
);

NOR2X1 _2015_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf6),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_99_)
);

OAI21X1 _1706_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_920_),
    .B(_821_),
    .C(_1027_),
    .Y(_760_)
);

MUX2X1 _2244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_247_),
    .B(_218_),
    .S(_873__bF$buf2),
    .Y(_584_)
);

NAND2X1 _1935_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [14]),
    .B(mem_ibus_ack_bF$buf5),
    .Y(_43_)
);

INVX1 _1515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [0]),
    .Y(_888_)
);

DFFPOSX1 _2473_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_821_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.prefetch_active )
);

INVX1 _2053_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [24]),
    .Y(_127_)
);

OAI21X1 _1744_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_863_),
    .C(_444_),
    .Y(_1054_)
);

INVX1 _1324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_377_),
    .Y(_376_)
);

DFFPOSX1 _2529_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_831_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [27])
);

NAND2X1 _2109_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_154_),
    .B(_155_),
    .Y(_157_)
);

NAND2X1 _2282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf2),
    .B(\u_cpu.state.ibus_cyc ),
    .Y(_559_)
);

OAI21X1 _1973_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_450_),
    .B(_69_),
    .C(_48_),
    .Y(_70_)
);

AND2X2 _1553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_921_),
    .B(_915_),
    .Y(_922_)
);

DFFPOSX1 _2338_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_685_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(rf_read_reg0_to_if[1])
);

MUX2X1 _2091_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1100_),
    .B(_523_),
    .S(_426__bF$buf1),
    .Y(_635_)
);

AOI21X1 _1609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_964_),
    .B(_965_),
    .C(_966_),
    .Y(_811_)
);

OAI21X1 _1782_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[0]),
    .B(_933_),
    .C(_1027_),
    .Y(_1075_)
);

AOI22X1 _1362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(raddr[7]),
    .C(_342_),
    .D(_341_),
    .Y(_340_)
);

DFFPOSX1 _2567_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_636_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [4])
);

OAI21X1 _2147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_178_),
    .B(_183_),
    .C(_181_),
    .Y(_619_)
);

OR2X2 _1838_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_1114_),
    .Y(_715_)
);

INVX4 _1418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_285_),
    .Y(_284_)
);

INVX1 _1591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.ready_pulse ),
    .Y(_953_)
);

NAND2X1 _1171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_525_),
    .B(_542__bF$buf1),
    .Y(_524_)
);

DFFPOSX1 _2376_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_713_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.i_jump )
);

OAI22X1 _1647_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [8]),
    .B(_943__bF$buf2),
    .C(\u_rf_if.read_buf0 [10]),
    .D(_926_),
    .Y(_991_)
);

OAI21X1 _1227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_497_),
    .B(_472_),
    .C(_478_),
    .Y(_471_)
);

NAND2X1 _2185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1_),
    .B(_542__bF$buf3),
    .Y(_212_)
);

INVX1 _1876_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_1_)
);

NAND2X1 _1456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_793_),
    .B(_794_),
    .Y(_795_)
);

OAI22X1 _1685_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [22]),
    .B(_943__bF$buf3),
    .C(\u_rf_if.read_buf0 [24]),
    .D(_926_),
    .Y(_1015_)
);

NAND2X1 _1265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_489_),
    .Y(_435_)
);

FILL FILL97350x90150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL97350x57750 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(_543__bF$buf5),
    .Y(_872_)
);

INVX1 _2279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .Y(_562_)
);

BUFX2 BUFX2_insert0 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_873_),
    .Y(_873__bF$buf5)
);

BUFX2 BUFX2_insert1 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_873_),
    .Y(_873__bF$buf4)
);

BUFX2 BUFX2_insert2 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_873_),
    .Y(_873__bF$buf3)
);

BUFX2 BUFX2_insert3 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_873_),
    .Y(_873__bF$buf2)
);

BUFX2 BUFX2_insert4 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_873_),
    .Y(_873__bF$buf1)
);

BUFX2 BUFX2_insert5 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_873_),
    .Y(_873__bF$buf0)
);

BUFX2 BUFX2_insert6 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_943_),
    .Y(_943__bF$buf4)
);

BUFX2 BUFX2_insert7 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_943_),
    .Y(_943__bF$buf3)
);

BUFX2 BUFX2_insert8 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_943_),
    .Y(_943__bF$buf2)
);

BUFX2 BUFX2_insert9 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_943_),
    .Y(_943__bF$buf1)
);

MUX2X1 _2088_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .B(_37_),
    .S(_426__bF$buf3),
    .Y(_638_)
);

NAND2X1 _1779_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1072_),
    .B(_1071_),
    .Y(_1073_)
);

OAI21X1 _1359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_519_),
    .B(_518_),
    .C(_344_),
    .Y(_343_)
);

DFFPOSX1 _2300_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_651_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.data [19])
);

OAI21X1 _1588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_380_),
    .B(_944_),
    .C(_950_),
    .Y(_951_)
);

OAI22X1 _1168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_527_),
    .B(_543__bF$buf2),
    .C(_540_),
    .D(_528_),
    .Y(_846_)
);

FILL FILL97650x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1800_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [1]),
    .B(_960_),
    .C(_933_),
    .Y(_1088_)
);

INVX1 _1397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[2]),
    .Y(_305_)
);

MUX2X1 _2203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_225_),
    .B(_224_),
    .S(_543__bF$buf4),
    .Y(_604_)
);

DFFPOSX1 _2432_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_732_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.rcnt [2])
);

NAND2X1 _2012_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[1]),
    .B(_508_),
    .Y(_97_)
);

OAI22X1 _1703_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf3),
    .B(\u_rf_if.read_buf0 [30]),
    .C(\u_rf_if.read_buf0 [29]),
    .D(_943__bF$buf2),
    .Y(_1026_)
);

MUX2X1 _2241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_245_),
    .B(_246_),
    .S(_873__bF$buf2),
    .Y(_586_)
);

AOI21X1 _1932_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_558_),
    .C(_41_),
    .Y(_42_)
);

INVX1 _1512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[3]),
    .Y(_886_)
);

DFFPOSX1 _2470_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_784_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [6])
);

MUX2X1 _2050_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_124_),
    .B(_125_),
    .S(_426__bF$buf4),
    .Y(_658_)
);

AOI21X1 _1741_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(_1051_),
    .C(_1052_),
    .Y(_750_)
);

OAI21X1 _1321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_380_),
    .C(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_379_)
);

DFFPOSX1 _2526_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_826_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf1 [0])
);

INVX1 _2106_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.c_r ),
    .Y(_154_)
);

AOI21X1 _1970_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_65_),
    .B(_51_),
    .C(_67_),
    .Y(_680_)
);

AOI21X1 _1550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_917_),
    .B(_918_),
    .C(_913_),
    .Y(_919_)
);

DFFPOSX1 _2335_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_682_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

INVX1 _1606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rf_miso),
    .Y(_964_)
);

DFFPOSX1 _2564_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_725_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(raddr[6])
);

NAND3X1 _2144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_177_),
    .B(_180_),
    .C(_452_),
    .Y(_181_)
);

NOR2X1 _1835_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(_543__bF$buf0),
    .Y(_1113_)
);

NAND3X1 _1415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_337_),
    .B(_288_),
    .C(_326_),
    .Y(_287_)
);

DFFPOSX1 _2373_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_710_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [21])
);

INVX1 _1644_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [9]),
    .Y(_989_)
);

NAND2X1 _1224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_477_),
    .B(_475_),
    .Y(_474_)
);

DFFPOSX1 _2429_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_754_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg0_latched [1])
);

MUX2X1 _2009_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [8]),
    .B(rf_wreg0_to_if[2]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_95_)
);

AOI22X1 _2182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [15]),
    .B(_542__bF$buf1),
    .C(_1105_),
    .D(\u_cpu.ctrl.pc ),
    .Y(_210_)
);

OAI21X1 _1873_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1147_),
    .C(_1148_),
    .Y(_1149_)
);

INVX1 _1453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .Y(_792_)
);

INVX1 _2238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_245_)
);

OAI21X1 _1929_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf3),
    .B(_39_),
    .C(_36_),
    .Y(_40_)
);

INVX1 _1509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[3]),
    .Y(_884_)
);

INVX1 _1682_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [23]),
    .Y(_1013_)
);

NAND2X1 _1262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_470_),
    .Y(_438_)
);

DFFPOSX1 _2467_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_728_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(raddr[3])
);

INVX1 _2047_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [27]),
    .Y(_124_)
);

AOI21X1 _1738_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(_1049_),
    .C(_1050_),
    .Y(_751_)
);

NOR2X1 _1318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_383_),
    .Y(_382_)
);

AND2X2 _1491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_869_),
    .B(_444_),
    .Y(_832_)
);

NAND2X1 _2276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_33_),
    .Y(_260_)
);

INVX1 _1967_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_65_)
);

NAND2X1 _1547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_914_),
    .B(_915_),
    .Y(_916_)
);

INVX1 _2085_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_143_)
);

NOR2X1 _1776_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(_441_),
    .Y(_733_)
);

OAI21X1 _1356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_347_),
    .B(_528_),
    .C(_346_),
    .Y(_839_)
);

NOR2X1 _1585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_947_),
    .Y(_948_)
);

OAI22X1 _1165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_531_),
    .B(_543__bF$buf0),
    .C(_530_),
    .D(_528_),
    .Y(_848_)
);

OAI21X1 _1394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(\u_rf_if.o_waddr [0]),
    .C(_309_),
    .Y(_308_)
);

OAI22X1 _2179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_165_),
    .B(_543__bF$buf0),
    .C(_531_),
    .D(_528_),
    .Y(_611_)
);

INVX1 _1679_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [22]),
    .Y(_1011_)
);

NOR2X1 _1259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_510_),
    .B(_512_),
    .Y(_440_)
);

AOI21X1 _2200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_376_),
    .B(_177_),
    .C(_223_),
    .Y(_605_)
);

NOR2X1 _1488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [3]),
    .B(_866_),
    .Y(_867_)
);

AOI21X1 _1700_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_1022_),
    .C(_1024_),
    .Y(_763_)
);

OR2X2 _1297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_404_),
    .B(_409_),
    .Y(_403_)
);

FILL FILL97650x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2523_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_827_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.rreg0_latched [3])
);

NOR2X1 _2103_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_150_),
    .B(_433_),
    .Y(_151_)
);

DFFPOSX1 _2332_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_679_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

OAI21X1 _1603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_913_),
    .B(_960_),
    .C(_938_),
    .Y(_962_)
);

DFFPOSX1 _2561_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_631_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [29])
);

OAI21X1 _2141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_178_),
    .B(_463_),
    .C(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_179_)
);

NOR2X1 _1832_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(_483_),
    .Y(_1111_)
);

OR2X2 _1412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_292_),
    .B(\u_rf_if.last_req_key [5]),
    .Y(_290_)
);

BUFX2 BUFX2_insert57 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542_),
    .Y(_542__bF$buf4)
);

BUFX2 BUFX2_insert58 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542_),
    .Y(_542__bF$buf3)
);

BUFX2 BUFX2_insert59 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542_),
    .Y(_542__bF$buf2)
);

DFFPOSX1 _2370_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_708_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(mem_ibus_ack)
);

FILL FILL97650x18150 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_986_),
    .B(_925__bF$buf3),
    .C(_987_),
    .Y(_785_)
);

INVX1 _1221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [2]),
    .Y(_477_)
);

DFFPOSX1 _2426_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_751_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg1_latched [1])
);

MUX2X1 _2006_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [9]),
    .B(rf_wreg0_to_if[3]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_93_)
);

OAI21X1 _1870_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_870_),
    .C(_1146_),
    .Y(_709_)
);

NOR2X1 _1450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_449_),
    .B(_394_),
    .Y(_718_)
);

MUX2X1 _2235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_242_),
    .B(_243_),
    .S(_873__bF$buf0),
    .Y(_589_)
);

INVX1 _1926_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [6]),
    .Y(_37_)
);

NOR2X1 _1506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(_870_),
    .Y(_882_)
);

DFFPOSX1 _2464_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_781_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [9])
);

INVX1 _2044_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [28]),
    .Y(_122_)
);

AOI21X1 _1735_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(_1047_),
    .C(_1048_),
    .Y(_752_)
);

INVX1 _1315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_385_)
);

OAI21X1 _2273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_1132_),
    .C(_258_),
    .Y(_566_)
);

OAI21X1 _1964_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(_59_),
    .C(_9_),
    .Y(_63_)
);

INVX1 _1544_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.prefetch_active ),
    .Y(_913_)
);

DFFPOSX1 _2329_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_677_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

MUX2X1 _2082_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_140_),
    .B(_141_),
    .S(_426__bF$buf2),
    .Y(_642_)
);

INVX1 _1773_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [8]),
    .Y(_1069_)
);

OR2X2 _1353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_397_),
    .B(_348_),
    .Y(\u_cpu.o_wdata0 )
);

DFFPOSX1 _2558_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_627_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [15])
);

AOI22X1 _2138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_173_),
    .B(_174_),
    .C(_466_),
    .D(_175_),
    .Y(_176_)
);

NOR2X1 _1829_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1109_),
    .B(_485_),
    .Y(_596_[0])
);

NOR2X1 _1409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_294_),
    .Y(_293_)
);

NAND2X1 _1582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_945_),
    .B(_444_),
    .Y(_817_)
);

INVX1 _1162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_530_)
);

DFFPOSX1 _2367_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_705_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.bne_or_bge )
);

AOI21X1 _1638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_984_),
    .B(_925__bF$buf0),
    .C(_985_),
    .Y(_786_)
);

INVX1 _1218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_481_),
    .Y(_480_)
);

OAI21X1 _1391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(\u_rf_if.o_waddr [1]),
    .C(_312_),
    .Y(_311_)
);

AOI21X1 _2176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_201_),
    .B(_463_),
    .C(_205_),
    .Y(_208_)
);

OAI21X1 _1867_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf4),
    .B(_1144_),
    .C(_1141_),
    .Y(_1145_)
);

AOI21X1 _1447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_307_),
    .B(_270_),
    .C(_261_),
    .Y(_699_)
);

NOR2X1 _1676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [20]),
    .B(_393__bF$buf1),
    .Y(_1009_)
);

NOR2X1 _1256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_443_),
    .Y(_442_)
);

NAND2X1 _1485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_863_),
    .Y(_864_)
);

NOR2X1 _1294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_406_)
);

DFFPOSX1 _2499_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_807_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.stream_cnt [3])
);

INVX1 _2079_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [11]),
    .Y(_140_)
);

NAND2X1 _1999_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_474_),
    .B(_876_),
    .Y(_87_)
);

OAI21X1 _1579_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_910_),
    .B(_911_),
    .C(\u_rf_if.shift_rx [1]),
    .Y(_944_)
);

NAND2X1 _1159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_560_),
    .B(_533_),
    .Y(_532_)
);

DFFPOSX1 _2520_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_824_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.pending_read )
);

MUX2X1 _2100_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_149_),
    .B(_148_),
    .S(_426__bF$buf1),
    .Y(_632_)
);

INVX1 _1388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [0]),
    .Y(_314_)
);

AOI21X1 _1600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_958_),
    .B(_959_),
    .C(_443_),
    .Y(_813_)
);

AOI21X1 _1197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [4]),
    .B(\u_mem_serial.shift_reg [6]),
    .C(_501_),
    .Y(_500_)
);

BUFX2 BUFX2_insert20 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393_),
    .Y(_393__bF$buf4)
);

BUFX2 BUFX2_insert21 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393_),
    .Y(_393__bF$buf3)
);

BUFX2 BUFX2_insert22 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393_),
    .Y(_393__bF$buf2)
);

BUFX2 BUFX2_insert23 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393_),
    .Y(_393__bF$buf1)
);

BUFX2 BUFX2_insert24 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393_),
    .Y(_393__bF$buf0)
);

BUFX2 BUFX2_insert25 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_925_),
    .Y(_925__bF$buf3)
);

BUFX2 BUFX2_insert26 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_925_),
    .Y(_925__bF$buf2)
);

BUFX2 BUFX2_insert27 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_925_),
    .Y(_925__bF$buf1)
);

BUFX2 BUFX2_insert28 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_925_),
    .Y(_925__bF$buf0)
);

BUFX2 BUFX2_insert29 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .Y(_543__bF$buf5)
);

DFFPOSX1 _2423_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_603_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [18])
);

AOI21X1 _2003_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_reg [10]),
    .C(_90_),
    .Y(_91_)
);

INVX1 _2232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_242_)
);

OAI21X1 _1923_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [4]),
    .B(_34_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_35_)
);

AOI21X1 _1503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_294_),
    .B(_879_),
    .C(_876_),
    .Y(_880_)
);

DFFPOSX1 _2461_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_778_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [12])
);

AOI21X1 _2041_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_116_),
    .B(_81_),
    .C(_120_),
    .Y(_662_)
);

AOI21X1 _1732_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf7),
    .B(_1045_),
    .C(_1046_),
    .Y(_753_)
);

OAI21X1 _1312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf0),
    .B(_392_),
    .C(_389_),
    .Y(_388_)
);

DFFPOSX1 _2517_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_616_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

NAND2X1 _2270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_474_),
    .B(_1128_),
    .Y(_257_)
);

NOR2X1 _1961_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_60_),
    .B(_51_),
    .Y(_61_)
);

NAND2X1 _1541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_335_),
    .Y(_910_)
);

DFFPOSX1 _2326_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_674_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(rf_read_reg1_to_if[3])
);

AOI21X1 _1770_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_335_),
    .B(_284_),
    .C(_1067_),
    .Y(_736_)
);

NOR2X1 _1350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_352_),
    .B(_351_),
    .Y(_350_)
);

DFFPOSX1 _2555_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_850_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [8])
);

OAI21X1 _2135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_172_),
    .Y(_173_)
);

INVX1 _1826_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_1108_)
);

NOR2X1 _1406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.launch_pending ),
    .B(_297_),
    .Y(_296_)
);

DFFPOSX1 _2364_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_703_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.decode.opcode [2])
);

AOI21X1 _1635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_982_),
    .B(_925__bF$buf0),
    .C(_983_),
    .Y(_787_)
);

NOR2X1 _1215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_484_),
    .Y(_483_)
);

OAI21X1 _2173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .B(_463_),
    .C(_178_),
    .Y(_206_)
);

INVX1 _1864_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [5]),
    .Y(_1142_)
);

INVX1 _1444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_264_),
    .Y(_263_)
);

MUX2X1 _2229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_239_),
    .B(_240_),
    .S(_873__bF$buf4),
    .Y(_592_)
);

AOI21X1 _1673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1006_),
    .B(_925__bF$buf2),
    .C(_1007_),
    .Y(_773_)
);

OAI21X1 _1253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_478_),
    .C(_446_),
    .Y(_445_)
);

DFFPOSX1 _2458_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_rf_if.wdata0_next [0]),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.wdata0_r [0])
);

NAND2X1 _2038_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_508_),
    .Y(_118_)
);

AOI21X1 _1729_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(_1043_),
    .C(_1044_),
    .Y(_754_)
);

NOR2X1 _1309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf0),
    .B(_392_),
    .Y(_391_)
);

INVX1 _1482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_861_)
);

AND2X2 _2267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_398_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_255_)
);

AOI21X1 _1958_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(_51_),
    .C(_58_),
    .Y(_683_)
);

NOR2X1 _1538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_908_)
);

INVX1 _1291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_409_)
);

DFFPOSX1 _2496_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_608_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [24])
);

MUX2X1 _2076_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_137_),
    .B(_138_),
    .S(_426__bF$buf2),
    .Y(_645_)
);

OAI21X1 _1767_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [5]),
    .B(_284_),
    .C(i_rst_n_bF$buf3),
    .Y(_1066_)
);

NAND2X1 _1347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_355_),
    .B(_354_),
    .Y(_353_)
);

OAI21X1 _1996_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf5),
    .B(_1049_),
    .C(_45_),
    .Y(_85_)
);

NOR2X1 _1576_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_913_),
    .B(_941_),
    .Y(_819_)
);

OAI21X1 _1156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_557_),
    .C(\u_mem_serial.state [1]),
    .Y(_535_)
);

OAI21X1 _1385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [9]),
    .B(_345_),
    .C(_318_),
    .Y(_317_)
);

NOR2X1 _1194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [2]),
    .B(_504_),
    .Y(_503_)
);

DFFPOSX1 _2399_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_591_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

INVX1 _1899_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .Y(_15_)
);

AOI21X1 _1479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_858_),
    .B(_853_),
    .C(_852_),
    .Y(_859_)
);

DFFPOSX1 _2420_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_730_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(raddr[1])
);

NAND2X1 _2000_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_87_),
    .Y(_88_)
);

OAI21X1 _1288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_486_),
    .C(_489_),
    .Y(_412_)
);

INVX1 _1920_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_31_),
    .Y(_32_)
);

NOR2X1 _1500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[3]),
    .B(rf_wreg0_to_if[2]),
    .Y(_877_)
);

DFFPOSX1 _2514_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_819_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.ready_pulse )
);

DFFPOSX1 _2323_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_671_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(rf_read_reg1_to_if[0])
);

DFFPOSX1 _2552_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_625_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.state [1])
);

NAND3X1 _2132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_mem_miso),
    .B(_169_),
    .C(_170_),
    .Y(_171_)
);

MUX2X1 _1823_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1106_),
    .B(_1104_),
    .S(_543__bF$buf0),
    .Y(_722_)
);

NAND2X1 _1403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_300_),
    .B(_303_),
    .Y(_299_)
);

FILL FILL97650x25350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2361_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_701_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.decode.opcode [0])
);

AOI21X1 _1632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_980_),
    .B(_925__bF$buf0),
    .C(_981_),
    .Y(_788_)
);

INVX1 _1212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_486_)
);

DFFPOSX1 _2417_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_600_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

NOR2X1 _2170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_201_),
    .B(_202_),
    .Y(_203_)
);

OAI21X1 _1861_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1137_),
    .B(_1138_),
    .C(_1139_),
    .Y(_711_)
);

OAI21X1 _1441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_345_),
    .B(_514_),
    .C(_267_),
    .Y(_266_)
);

INVX1 _2226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_239_)
);

OAI21X1 _1917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_551_),
    .B(_27_),
    .C(_29_),
    .Y(_695_)
);

NOR2X1 _1670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1004_),
    .B(_1005_),
    .Y(_774_)
);

NAND2X1 _1250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_496_),
    .Y(_448_)
);

FILL FILL97950x68550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2455_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_773_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf0 [17])
);

AOI22X1 _2035_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_107_),
    .B(_70_),
    .C(_114_),
    .D(_115_),
    .Y(_663_)
);

AOI21X1 _1726_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(_1041_),
    .C(_1042_),
    .Y(_755_)
);

NAND2X1 _1306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_495_),
    .B(_395_),
    .Y(_394_)
);

AOI21X1 _2264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_400_),
    .B(_403_),
    .C(_1137_),
    .Y(_570_)
);

INVX1 _1955_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_56_)
);

INVX1 _1535_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_902_),
    .Y(_905_)
);

NOR2X1 _2493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_548_),
    .Y(_547_)
);

INVX1 _2073_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [14]),
    .Y(_137_)
);

AOI21X1 _1764_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_325_),
    .B(_285_),
    .C(_1064_),
    .Y(_739_)
);

NAND2X1 _1344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [2]),
    .B(_434_),
    .Y(_356_)
);

DFFPOSX1 _2549_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_847_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [12])
);

OAI22X1 _2129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_347_),
    .B(_543__bF$buf1),
    .C(_506_),
    .D(_528_),
    .Y(_622_)
);

MUX2X1 _1993_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1051_),
    .B(_83_),
    .S(_81_),
    .Y(_673_)
);

NOR2X1 _1573_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_939_),
    .B(_933_),
    .Y(_940_)
);

BUFX2 _1153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1116_),
    .Y(o_mem_sync)
);

DFFPOSX1 _2358_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_697_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [2])
);

OAI21X1 _1629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf4),
    .B(_978_),
    .C(_979_),
    .Y(_789_)
);

INVX1 _1209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_489_)
);

OAI21X1 _1382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_325_),
    .B(_322_),
    .C(_321_),
    .Y(_320_)
);

NAND2X1 _2167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_198_),
    .B(_200_),
    .Y(_616_)
);

INVX1 _1858_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_873__bF$buf5),
    .Y(_1137_)
);

NOR2X1 _1438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_515_),
    .B(_270_),
    .Y(_269_)
);

INVX1 _1191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_506_)
);

DFFPOSX1 _2396_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_736_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.last_req_key [6])
);

NOR2X1 _1667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1002_),
    .B(_1003_),
    .Y(_775_)
);

OR2X2 _1247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_452_),
    .B(_496_),
    .Y(_451_)
);

NOR2X1 _1896_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast_bF$buf0),
    .B(_13_),
    .Y(_1115_)
);

OAI21X1 _1476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [0]),
    .B(_322_),
    .C(_269_),
    .Y(_856_)
);

INVX1 _1285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_416_),
    .Y(_415_)
);

DFFPOSX1 _2299_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_650_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.bufreg.data [18])
);

DFFPOSX1 _2511_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_812_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(raddr[7])
);

OAI21X1 _1799_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_939_),
    .B(_1086_),
    .C(_1087_),
    .Y(_727_)
);

NOR2X1 _1379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_323_)
);

DFFPOSX1 _2320_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_668_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(rf_wreg0_to_if[1])
);

NOR2X1 _1188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_516_),
    .B(_509_),
    .Y(_844_)
);

INVX1 _1820_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [30]),
    .Y(_1104_)
);

INVX1 _1400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_303_),
    .Y(_302_)
);

FILL FILL97650x46950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2414_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_599_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

MUX2X1 _2223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_236_),
    .B(_237_),
    .S(_873__bF$buf4),
    .Y(_595_)
);

NOR2X1 _1914_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_23_),
    .B(_553_),
    .Y(_27_)
);

DFFPOSX1 _2452_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_770_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf0 [20])
);

OAI21X1 _2032_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_108_),
    .B(_109_),
    .C(_112_),
    .Y(_113_)
);

AOI21X1 _1723_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .B(_1038_),
    .C(_1040_),
    .Y(_756_)
);

NOR2X1 _1303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_436_),
    .B(_398_),
    .Y(_397_)
);

DFFPOSX1 _2508_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_612_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.active_ibus )
);

INVX1 _2261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_253_)
);

MUX2X1 _1952_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1043_),
    .B(_54_),
    .S(_51_),
    .Y(_685_)
);

NOR2X1 _1532_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_900_),
    .B(_901_),
    .Y(_902_)
);

DFFPOSX1 _2317_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_729_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(raddr[2])
);

NOR2X1 _2490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_552_),
    .B(_545_),
    .Y(_544_)
);

MUX2X1 _2070_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_),
    .B(_135_),
    .S(_426__bF$buf0),
    .Y(_648_)
);

OAI21X1 _1761_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_302_),
    .B(_285_),
    .C(i_rst_n_bF$buf2),
    .Y(_1063_)
);

AOI21X1 _1341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_360_),
    .C(_361_),
    .Y(_359_)
);

DFFPOSX1 _2546_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_572_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

OAI21X1 _2126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_536_),
    .C(_1116_),
    .Y(_168_)
);

MUX2X1 _1817_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1100_),
    .B(_1101_),
    .S(_559_),
    .Y(_1102_)
);

MUX2X1 _1990_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [23]),
    .B(rf_read_reg1_to_if[4]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_82_)
);

NOR2X1 _1570_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_936_),
    .B(_380_),
    .Y(_937_)
);

BUFX2 _1150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1119_),
    .Y(o_rf_sync)
);

DFFPOSX1 _2355_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_579_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

OAI21X1 _1626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf3),
    .B(_975_),
    .C(_977_),
    .Y(_790_)
);

OAI21X1 _1206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .C(_493_),
    .Y(_492_)
);

OAI21X1 _2164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_191_),
    .B(_197_),
    .C(_463_),
    .Y(_198_)
);

FILL FILL97950x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1855_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_1135_),
    .C(_1123_),
    .Y(_1136_)
);

INVX1 _1435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1119_),
    .Y(_271_)
);

DFFPOSX1 _2393_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_615_[2]),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

AOI21X1 _1664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_999_),
    .C(_1001_),
    .Y(_776_)
);

OAI21X1 _1244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_458_),
    .C(_455_),
    .Y(_454_)
);

DFFPOSX1 _2449_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_767_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf0 [23])
);

AOI21X1 _2029_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .C(\u_cpu.decode.opcode [1]),
    .Y(_110_)
);

NAND2X1 _1893_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [2]),
    .B(mem_ibus_ack_bF$buf2),
    .Y(_12_)
);

OR2X2 _1473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_292_),
    .B(_514_),
    .Y(_853_)
);

INVX1 _2258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_251_)
);

MUX2X1 _1949_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [17]),
    .B(rf_read_reg0_to_if[3]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_53_)
);

INVX1 _1529_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_899_)
);

NOR2X1 _1282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_469_),
    .Y(_418_)
);

NAND3X1 _2487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [10]),
    .B(_542__bF$buf2),
    .C(_543__bF$buf1),
    .Y(_541_)
);

INVX1 _2067_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [17]),
    .Y(_134_)
);

AOI21X1 _1758_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_314_),
    .B(_285_),
    .C(_1061_),
    .Y(_742_)
);

NAND3X1 _1338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_365_),
    .C(_363_),
    .Y(_362_)
);

DFFPOSX1 _2296_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_647_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.bufreg.data [15])
);

MUX2X1 _1987_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_78_),
    .B(_79_),
    .S(_70_),
    .Y(_675_)
);

NAND3X1 _1567_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [1]),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_934_)
);

AOI22X1 _1796_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_898_),
    .B(_1085_),
    .C(_1083_),
    .D(_1084_),
    .Y(_728_)
);

AOI21X1 _1376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_333_),
    .B(_332_),
    .C(_327_),
    .Y(_326_)
);

NOR2X1 _1185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [3]),
    .B(\u_rf_if.tx_state [4]),
    .Y(_511_)
);

NOR2X1 _2199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_177_),
    .Y(_223_)
);

DFFPOSX1 _2411_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_598_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

OAI22X1 _1699_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(_943__bF$buf2),
    .C(\u_rf_if.read_buf0 [29]),
    .D(_926_),
    .Y(_1024_)
);

NOR2X1 _1279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_422_),
    .Y(_421_)
);

INVX1 _2220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_236_)
);

NOR2X1 _1911_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_549_),
    .B(_20_),
    .Y(_25_)
);

OAI21X1 _1720_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [3]),
    .B(_1035_),
    .C(_896_),
    .Y(_1039_)
);

OR2X2 _1300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_410_),
    .B(_401_),
    .Y(_400_)
);

DFFPOSX1 _2505_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_810_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.stream_cnt [0])
);

DFFPOSX1 _2314_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_663_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

DFFPOSX1 _2543_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_rf_if.rtrig0 ),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.rtrig1 )
);

OAI22X1 _2123_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_506_),
    .B(_543__bF$buf2),
    .C(_1121_),
    .D(_528_),
    .Y(_626_)
);

FILL FILL97650x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1814_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_526_),
    .B(_542__bF$buf4),
    .Y(_1099_)
);

DFFPOSX1 _2352_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_578_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

INVX1 _1623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [1]),
    .Y(_975_)
);

INVX2 _1203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_495_)
);

DFFPOSX1 _2408_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_742_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.last_req_key [0])
);

OAI21X1 _2161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_178_),
    .B(_194_),
    .C(_195_),
    .Y(_196_)
);

NAND2X1 _1852_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(_1132_),
    .Y(_1133_)
);

NAND2X1 _1432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_274_),
    .B(_281_),
    .Y(_273_)
);

MUX2X1 _2217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_233_),
    .B(_234_),
    .S(_873__bF$buf0),
    .Y(_599_)
);

DFFPOSX1 _2390_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_587_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

FILL FILL97950x75750 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1908_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_550_),
    .B(_529_),
    .C(_22_),
    .Y(_697_)
);

OAI22X1 _1661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf0),
    .B(\u_rf_if.read_buf0 [14]),
    .C(\u_rf_if.read_buf0 [13]),
    .D(_943__bF$buf4),
    .Y(_1000_)
);

NOR2X1 _1241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_458_),
    .Y(_457_)
);

DFFPOSX1 _2446_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_764_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [26])
);

INVX1 _2026_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_107_)
);

NAND2X1 _1717_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_896_),
    .B(_1036_),
    .Y(_1037_)
);

NOR2X1 _1890_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_11_)
);

NOR2X1 _1470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_803_),
    .B(_840_),
    .Y(_842_)
);

AOI21X1 _2255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_248_),
    .B(_873__bF$buf5),
    .C(_249_),
    .Y(_575_)
);

OAI21X1 _1946_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(_50_),
    .C(_48_),
    .Y(_51_)
);

INVX1 _1526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_896_),
    .Y(_897_)
);

NAND3X1 _2484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [7]),
    .B(_542__bF$buf2),
    .C(_543__bF$buf1),
    .Y(_539_)
);

MUX2X1 _2064_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_131_),
    .B(_132_),
    .S(_426__bF$buf0),
    .Y(_651_)
);

AND2X2 _1755_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1060_),
    .B(_261_),
    .Y(_744_)
);

INVX1 _1335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_365_)
);

DFFPOSX1 _2293_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_cpu.state.cnt_r [1]),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.state.cnt_r [2])
);

MUX2X1 _1984_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(_77_),
    .S(_70_),
    .Y(_676_)
);

OAI21X1 _1564_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_918_),
    .B(_931_),
    .C(\u_rf_if.prefetch_active ),
    .Y(_932_)
);

DFFPOSX1 _2349_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_693_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [22])
);

NAND2X1 _1793_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [3]),
    .B(_933_),
    .Y(_1083_)
);

NAND2X1 _1373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [4]),
    .B(_330_),
    .Y(_329_)
);

DFFPOSX1 _2578_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_721_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [1])
);

OAI21X1 _2158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_459_),
    .B(_192_),
    .C(_463_),
    .Y(_193_)
);

OR2X2 _1849_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1128_),
    .B(_1129_),
    .Y(_1130_)
);

OAI21X1 _1429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [3]),
    .B(_512_),
    .C(\u_rf_if.tx_state [4]),
    .Y(_275_)
);

INVX2 _1182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_515_),
    .Y(_514_)
);

DFFPOSX1 _2387_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_569_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

OAI22X1 _1658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [12]),
    .B(_943__bF$buf4),
    .C(\u_rf_if.read_buf0 [14]),
    .D(_926_),
    .Y(_998_)
);

NAND2X1 _1238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .B(_461_),
    .Y(_460_)
);

NOR2X1 _2196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(_870_),
    .Y(_221_)
);

OAI21X1 _1887_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_365_),
    .C(_9_),
    .Y(_705_)
);

AND2X2 _1467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.o_wdata0 ),
    .B(_805_),
    .Y(_833_)
);

INVX1 _1696_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_1022_)
);

NOR2X1 _1276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_432_),
    .B(_425_),
    .Y(_424_)
);

DFFPOSX1 _2502_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_610_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [10])
);

INVX1 _2099_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [31]),
    .Y(_149_)
);

DFFPOSX1 _2311_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_660_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [28])
);

OAI21X1 _1599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_795_),
    .B(_889_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_959_)
);

NOR2X1 _1179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_519_),
    .B(_518_),
    .Y(_517_)
);

DFFPOSX1 _2540_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_838_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.last_req_key [9])
);

INVX1 _2120_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_165_)
);

OAI21X1 _1811_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_947_),
    .C(_936_),
    .Y(_1097_)
);

OAI21X1 _1620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_899_),
    .B(_970_),
    .C(_973_),
    .Y(_807_)
);

INVX1 _1200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .Y(_498_)
);

DFFPOSX1 _2405_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_594_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

INVX1 _2214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_233_)
);

NOR2X1 _1905_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_19_),
    .Y(_20_)
);

DFFPOSX1 _2443_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_761_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [29])
);

AOI21X1 _2023_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_100_),
    .B(_51_),
    .C(_105_),
    .Y(_665_)
);

NAND2X1 _1714_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1033_),
    .Y(_1034_)
);

INVX1 _2252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_248_)
);

INVX1 _1943_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_47_),
    .Y(_48_)
);

NOR2X1 _1523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.prefetch_active ),
    .B(_894_),
    .Y(_895_)
);

DFFPOSX1 _2308_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_657_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [25])
);

DFFPOSX1 _2481_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_817_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.write_wait [1])
);

INVX1 _2061_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_131_)
);

NOR2X1 _1752_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_269_),
    .B(_1058_),
    .Y(_745_)
);

NAND2X1 _1332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_369_),
    .B(_370_),
    .Y(_368_)
);

DFFPOSX1 _2537_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_622_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [6])
);

NOR2X1 _2117_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_385_),
    .B(_149_),
    .Y(_163_)
);

INVX1 _2290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [4]),
    .Y(_551_)
);

INVX1 _1808_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [0]),
    .Y(_1094_)
);

MUX2X1 _1981_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_74_),
    .B(_75_),
    .S(_70_),
    .Y(_677_)
);

OAI21X1 _1561_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_926_),
    .B(_912_),
    .C(_929_),
    .Y(_822_)
);

DFFPOSX1 _2346_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_691_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.branch_op )
);

INVX1 _1617_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_971_),
    .Y(_972_)
);

NAND2X1 _1790_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_305_),
    .B(_932_),
    .Y(_1081_)
);

NAND2X1 _1370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [6]),
    .B(_334_),
    .Y(_332_)
);

DFFPOSX1 _2575_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_642_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.data [10])
);

INVX1 _2155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_190_)
);

AOI21X1 _1846_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_370_),
    .B(_369_),
    .C(_1126_),
    .Y(_1127_)
);

INVX1 _1426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf3),
    .Y(_277_)
);

DFFPOSX1 _2384_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_715_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.state.cnt_r [0])
);

OAI22X1 _1655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [11]),
    .B(_943__bF$buf4),
    .C(\u_rf_if.read_buf0 [13]),
    .D(_926_),
    .Y(_996_)
);

INVX4 _1235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_464_),
    .Y(_463_)
);

MUX2X1 _2193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_142_),
    .B(_218_),
    .S(_559_),
    .Y(_219_)
);

NAND2X1 _1884_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [13]),
    .B(mem_ibus_ack_bF$buf3),
    .Y(_8_)
);

AOI21X1 _1464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_800_),
    .B(_802_),
    .C(\u_rf_if.tx_state [1]),
    .Y(_803_)
);

MUX2X1 _2249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1143_),
    .B(_1101_),
    .S(_873__bF$buf3),
    .Y(_579_)
);

INVX1 _1693_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [27]),
    .Y(_1020_)
);

OAI21X1 _1273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_452_),
    .C(_428_),
    .Y(_427_)
);

DFFPOSX1 _2478_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_731_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(raddr[0])
);

MUX2X1 _2058_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_128_),
    .B(_129_),
    .S(_426__bF$buf4),
    .Y(_654_)
);

NAND2X1 _1749_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf0),
    .B(_282_),
    .Y(_1057_)
);

INVX1 _1329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_372_),
    .Y(_371_)
);

OAI21X1 _2287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_555_),
    .C(_560_),
    .Y(_554_)
);

MUX2X1 _1978_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_72_),
    .B(_73_),
    .S(_70_),
    .Y(_678_)
);

NAND2X1 _1558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(_393__bF$buf2),
    .Y(_927_)
);

OAI21X1 _2096_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_466_),
    .B(_425_),
    .C(_146_),
    .Y(_147_)
);

OAI21X1 _1787_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_820_),
    .C(_1078_),
    .Y(_730_)
);

AOI22X1 _1367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(raddr[6]),
    .C(_342_),
    .D(_336_),
    .Y(_335_)
);

OR2X2 _1596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_956_),
    .B(_954_),
    .Y(_957_)
);

MUX2X1 _1176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_520_),
    .B(_526_),
    .S(_543__bF$buf4),
    .Y(_845_)
);

DFFPOSX1 _2402_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_739_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.last_req_key [3])
);

MUX2X1 _2211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_231_),
    .B(_230_),
    .S(_873__bF$buf1),
    .Y(_602_)
);

OAI21X1 _1902_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_16_),
    .B(_17_),
    .C(_542__bF$buf0),
    .Y(_18_)
);

AOI21X1 _1499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_875_),
    .B(_438_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_876_)
);

DFFPOSX1 _2440_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_759_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.issue_idx [1])
);

OAI21X1 _2020_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[0]),
    .B(\u_cpu.branch_op ),
    .C(_102_),
    .Y(_103_)
);

AND2X2 _1711_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1030_),
    .B(_1031_),
    .Y(_759_)
);

FILL FILL97950x7350 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1940_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [30]),
    .B(mem_ibus_ack_bF$buf5),
    .Y(_46_)
);

AOI21X1 _1520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_888_),
    .B(_891_),
    .C(_892_),
    .Y(_826_)
);

DFFPOSX1 _2305_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_cpu.state.cnt_r [0]),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.state.cnt_r [1])
);

DFFPOSX1 _2534_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_571_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

AOI21X1 _2114_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [2]),
    .B(_490_),
    .C(_161_),
    .Y(_162_)
);

OAI21X1 _1805_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_939_),
    .B(_1090_),
    .C(_1091_),
    .Y(_725_)
);

DFFPOSX1 _2343_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_688_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

INVX1 _1614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_969_)
);

DFFPOSX1 _2572_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_640_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [8])
);

OAI21X1 _2152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_184_),
    .B(_463_),
    .C(_187_),
    .Y(_188_)
);

CLKBUF1 CLKBUF1_insert40 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf8)
);

CLKBUF1 CLKBUF1_insert41 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf7)
);

CLKBUF1 CLKBUF1_insert42 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf6)
);

CLKBUF1 CLKBUF1_insert43 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf5)
);

CLKBUF1 CLKBUF1_insert44 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf4)
);

CLKBUF1 CLKBUF1_insert45 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf3)
);

CLKBUF1 CLKBUF1_insert46 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf2)
);

CLKBUF1 CLKBUF1_insert47 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf1)
);

CLKBUF1 CLKBUF1_insert48 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf0)
);

CLKBUF1 CLKBUF1_insert49 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

INVX1 _1843_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.cmp_r ),
    .Y(_1124_)
);

FILL FILL97950x82950 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [1]),
    .B(_282_),
    .C(_281_),
    .Y(_280_)
);

MUX2X1 _2208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_229_),
    .B(_525_),
    .S(_543__bF$buf4),
    .Y(_603_)
);

DFFPOSX1 _2381_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_585_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

OAI22X1 _1652_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [10]),
    .B(_943__bF$buf3),
    .C(\u_rf_if.read_buf0 [12]),
    .D(_926_),
    .Y(_994_)
);

INVX1 _1232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_490_),
    .Y(_466_)
);

DFFPOSX1 _2437_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_rf_if.i_stream_rs2_en ),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(current_stream_rs2_hint)
);

INVX1 _2017_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[4]),
    .Y(_100_)
);

NOR2X1 _2190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(_543__bF$buf5),
    .Y(_216_)
);

NOR2X1 _1708_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1028_),
    .B(_920_),
    .Y(_1029_)
);

MUX2X1 _1881_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .B(_5_),
    .S(_559_),
    .Y(_6_)
);

OAI21X1 _1461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_717_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .C(_799_),
    .Y(_800_)
);

MUX2X1 _2246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_213_),
    .B(_5_),
    .S(_873__bF$buf3),
    .Y(_582_)
);

NOR2X1 _1937_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_1098_),
    .Y(_44_)
);

NOR2X1 _1517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_719_),
    .B(_889_),
    .Y(_890_)
);

INVX1 _1690_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [26]),
    .Y(_1018_)
);

NAND2X1 _1270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_491_),
    .B(_431_),
    .Y(_430_)
);

DFFPOSX1 _2475_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_788_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [2])
);

INVX1 _2055_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [23]),
    .Y(_128_)
);

NOR2X1 _1746_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(_865_),
    .Y(_1055_)
);

OAI21X1 _1326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_383_),
    .C(_377_),
    .Y(_374_)
);

INVX1 _2284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_bF$buf0),
    .Y(_557_)
);

MUX2X1 _1975_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_68_),
    .B(_71_),
    .S(_70_),
    .Y(_679_)
);

NAND2X1 _1555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_919_),
    .B(_923_),
    .Y(_924_)
);

MUX2X1 _2093_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_523_),
    .B(_144_),
    .S(_426__bF$buf1),
    .Y(_634_)
);

OAI21X1 _1784_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [1]),
    .C(_939_),
    .Y(_1076_)
);

NOR2X1 _1364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [7]),
    .B(_340_),
    .Y(_338_)
);

DFFPOSX1 _2569_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_637_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [5])
);

NOR2X1 _2149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_184_),
    .B(_459_),
    .Y(_185_)
);

NOR2X1 _1593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [1]),
    .Y(_954_)
);

INVX1 _1173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_522_)
);

DFFPOSX1 _2378_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_cpu.state.cnt_r [2]),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.state.cnt_r [3])
);

INVX1 _1649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [11]),
    .Y(_992_)
);

INVX2 _1229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .Y(_469_)
);

MUX2X1 _2187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_143_),
    .B(_213_),
    .S(_559_),
    .Y(_214_)
);

NAND2X1 _1878_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2_),
    .B(_542__bF$buf4),
    .Y(_3_)
);

AND2X2 _1458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_795_),
    .B(\u_rf_if.wdata0_next_phase ),
    .Y(_797_)
);

INVX1 _1687_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [25]),
    .Y(_1016_)
);

NAND2X1 _1267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(_434_),
    .Y(_433_)
);

NOR2X1 _1496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_466_),
    .Y(_873_)
);

DFFPOSX1 _2302_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_653_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [21])
);

DFFPOSX1 _2531_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_832_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.o_waddr [3])
);

OR2X2 _2111_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_153_),
    .B(_158_),
    .Y(_159_)
);

OAI21X1 _1802_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_939_),
    .B(_1088_),
    .C(_1089_),
    .Y(_726_)
);

OAI21X1 _1399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(\u_rf_if.o_waddr [2]),
    .C(_304_),
    .Y(_303_)
);

DFFPOSX1 _2340_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_686_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(rf_read_reg0_to_if[2])
);

AOI21X1 _1611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf3),
    .B(_901_),
    .C(_967_),
    .Y(_810_)
);

OAI22X1 _1840_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .B(_543__bF$buf2),
    .C(_502_),
    .D(_528_),
    .Y(_714_)
);

AOI21X1 _1420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_345_),
    .B(_284_),
    .C(_283_),
    .Y(_838_)
);

INVX1 _2205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_227_)
);

DFFPOSX1 _2434_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_605_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

OAI21X1 _2014_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_87_),
    .B(_97_),
    .C(_98_),
    .Y(_667_)
);

NAND2X1 _1705_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_920_),
    .B(_933_),
    .Y(_1027_)
);

MUX2X1 _2243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_246_),
    .B(_247_),
    .S(_873__bF$buf2),
    .Y(_585_)
);

MUX2X1 _1934_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_347_),
    .B(_470_),
    .S(mem_ibus_ack_bF$buf1),
    .Y(_691_)
);

AOI21X1 _1514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf7),
    .B(_886_),
    .C(_887_),
    .Y(_827_)
);

DFFPOSX1 _2472_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_786_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [4])
);

MUX2X1 _2052_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_125_),
    .B(_126_),
    .S(_426__bF$buf3),
    .Y(_657_)
);

AOI21X1 _1743_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_861_),
    .B(_862_),
    .C(_1053_),
    .Y(_749_)
);

OAI21X1 _1323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_381_),
    .B(_379_),
    .C(_378_),
    .Y(_377_)
);

DFFPOSX1 _2528_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_620_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg2.dhi [6])
);

OR2X2 _2108_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_155_),
    .B(_154_),
    .Y(_156_)
);

NOR2X1 _2281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(\u_mem_serial.state [1]),
    .Y(_560_)
);

NAND2X1 _1972_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_406_),
    .B(_11_),
    .Y(_69_)
);

NOR2X1 _1552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [1]),
    .B(_920_),
    .Y(_921_)
);

DFFPOSX1 _2337_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_684_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.csr_imm )
);

MUX2X1 _2090_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1142_),
    .B(_1100_),
    .S(_426__bF$buf3),
    .Y(_636_)
);

OAI21X1 _1608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.shift_rx [1]),
    .B(_965_),
    .C(i_rst_n_bF$buf0),
    .Y(_966_)
);

NAND2X1 _1781_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_900_),
    .B(_937_),
    .Y(_1074_)
);

AND2X2 _1361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_344_),
    .B(rf_wreg0_to_if[3]),
    .Y(_341_)
);

DFFPOSX1 _2566_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_635_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [3])
);

INVX1 _2146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_182_),
    .Y(_183_)
);

OAI21X1 _1837_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_487_),
    .B(_481_),
    .C(_953_),
    .Y(_1114_)
);

NAND2X1 _1417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .B(_286_),
    .Y(_285_)
);

NOR2X1 _1590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_948_),
    .B(_952_),
    .Y(_816_)
);

INVX1 _1170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_525_)
);

DFFPOSX1 _2375_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_712_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.state.init_done )
);

AOI21X1 _1646_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_989_),
    .B(_925__bF$buf3),
    .C(_990_),
    .Y(_783_)
);

NAND2X1 _1226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_473_),
    .Y(_472_)
);

AOI21X1 _2184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543__bF$buf4),
    .B(_210_),
    .C(_211_),
    .Y(_609_)
);

AOI22X1 _1875_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_870_),
    .B(_1149_),
    .C(_1120_),
    .D(_508_),
    .Y(_708_)
);

NOR2X1 _1455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_794_)
);

AOI21X1 _1684_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_925__bF$buf1),
    .C(_1014_),
    .Y(_769_)
);

INVX1 _1264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_437_),
    .Y(_436_)
);

DFFPOSX1 _2469_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_783_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [7])
);

INVX1 _2049_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [26]),
    .Y(_125_)
);

NOR2X1 _1493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(_870_),
    .Y(_871_)
);

INVX1 _2278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_563_)
);

NOR2X1 _1969_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_66_),
    .B(_51_),
    .Y(_67_)
);

NOR2X1 _1549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [5]),
    .Y(_918_)
);

MUX2X1 _2087_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_143_),
    .B(_4_),
    .S(_426__bF$buf3),
    .Y(_639_)
);

OAI21X1 _1778_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_498_),
    .B(_955_),
    .C(_792_),
    .Y(_1072_)
);

INVX2 _1358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(_344_)
);

NAND2X1 _1587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_949_),
    .Y(_950_)
);

INVX1 _1167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_527_)
);

OAI22X1 _1396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_315_),
    .B(_310_),
    .C(_314_),
    .D(_307_),
    .Y(_306_)
);

AOI22X1 _2202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [16]),
    .B(_542__bF$buf1),
    .C(_1105_),
    .D(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_225_)
);

DFFPOSX1 _2431_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_604_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [17])
);

OAI21X1 _2011_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_89_),
    .B(_95_),
    .C(_96_),
    .Y(_668_)
);

AOI22X1 _1702_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1022_),
    .B(_976_),
    .C(_1025_),
    .D(_927_),
    .Y(_762_)
);

NAND2X1 _1299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_402_),
    .B(_403_),
    .Y(_401_)
);

INVX1 _2240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_246_)
);

NAND2X1 _1931_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_560_),
    .B(_556_),
    .Y(_41_)
);

AOI21X1 _1511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf7),
    .B(_884_),
    .C(_885_),
    .Y(_828_)
);

NOR2X1 _1740_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_rf_if.rreg1_latched [2]),
    .Y(_1052_)
);

INVX1 _1320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .Y(_380_)
);

DFFPOSX1 _2525_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_619_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg2.dhi [5])
);

NAND3X1 _2105_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_469_),
    .B(_152_),
    .C(_413_),
    .Y(_153_)
);

DFFPOSX1 _2334_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_681_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

OAI21X1 _1605_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_939_),
    .B(_961_),
    .C(_963_),
    .Y(_812_)
);

DFFPOSX1 _2563_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_633_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [0])
);

NAND3X1 _2143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .B(_175_),
    .C(_464_),
    .Y(_180_)
);

NOR2X1 _1834_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(_870_),
    .Y(_1112_)
);

NOR2X1 _1414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_295_),
    .B(_289_),
    .Y(_288_)
);

DFFPOSX1 _2372_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_709_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [0])
);

AOI21X1 _1643_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_986_),
    .C(_988_),
    .Y(_784_)
);

NOR2X1 _1223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(_476_),
    .Y(_475_)
);

FILL FILL97650x68550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2428_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_753_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg0_latched [2])
);

OAI21X1 _2008_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_89_),
    .B(_93_),
    .C(_94_),
    .Y(_669_)
);

OAI21X1 _2181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_527_),
    .B(_528_),
    .C(_209_),
    .Y(_610_)
);

OAI21X1 _1872_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_562_),
    .B(_556_),
    .C(_552_),
    .Y(_1148_)
);

INVX1 _1452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_719_),
    .Y(_791_)
);

MUX2X1 _2237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_243_),
    .B(_244_),
    .S(_873__bF$buf0),
    .Y(_588_)
);

MUX2X1 _1928_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_37_),
    .B(_38_),
    .S(_559_),
    .Y(_39_)
);

AOI21X1 _1508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543__bF$buf5),
    .B(_882_),
    .C(_883_),
    .Y(_829_)
);

AOI21X1 _1681_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1011_),
    .B(_925__bF$buf1),
    .C(_1012_),
    .Y(_770_)
);

NOR2X1 _1261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_516_),
    .B(_439_),
    .Y(_841_)
);

DFFPOSX1 _2466_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_782_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [8])
);

MUX2X1 _2046_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_123_),
    .B(_122_),
    .S(_426__bF$buf4),
    .Y(_660_)
);

NOR2X1 _1737_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_rf_if.rreg1_latched [1]),
    .Y(_1050_)
);

OAI21X1 _1317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_386_),
    .B(_385_),
    .C(_384_),
    .Y(_383_)
);

NOR2X1 _1490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_867_),
    .B(_868_),
    .Y(_869_)
);

INVX1 _2275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .Y(_259_)
);

AOI21X1 _1966_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_62_),
    .B(_51_),
    .C(_64_),
    .Y(_681_)
);

NOR2X1 _1546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [3]),
    .B(\u_rf_if.issue_idx [2]),
    .Y(_915_)
);

MUX2X1 _2084_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_142_),
    .S(_426__bF$buf2),
    .Y(_641_)
);

AOI21X1 _1775_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1069_),
    .B(_285_),
    .C(_1070_),
    .Y(_734_)
);

OAI21X1 _1355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_553_),
    .B(_544_),
    .C(\u_mem_serial.shift_reg [7]),
    .Y(_346_)
);

OAI21X1 _1584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_946_),
    .B(_923_),
    .C(_907_),
    .Y(_947_)
);

NAND3X1 _1164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_545_),
    .B(_542__bF$buf2),
    .C(_529_),
    .Y(_528_)
);

DFFPOSX1 _2369_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_707_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [23])
);

OR2X2 _1393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_344_),
    .B(raddr[0]),
    .Y(_309_)
);

NAND2X1 _2178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1147_),
    .B(_532_),
    .Y(_612_)
);

NAND2X1 _1869_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_553_),
    .Y(_1146_)
);

INVX1 _1449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_717_)
);

NOR2X1 _1678_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1009_),
    .B(_1010_),
    .Y(_771_)
);

NOR2X1 _1258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_498_),
    .B(_441_),
    .Y(\u_rf_if.rtrig0 )
);

AND2X2 _1487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_865_),
    .B(\u_rf_if.o_waddr [2]),
    .Y(_866_)
);

OAI21X1 _1296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_407_),
    .B(_405_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_404_)
);

DFFPOSX1 _2522_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_825_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.issue_idx [5])
);

OAI21X1 _2102_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [1]),
    .B(_450_),
    .C(\u_cpu.branch_op ),
    .Y(_150_)
);

DFFPOSX1 _2331_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_851_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [11])
);

NAND3X1 _1602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_960_),
    .C(_933_),
    .Y(_961_)
);

NAND2X1 _1199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_507_),
    .B(_499_),
    .Y(\u_rf_if.i_stream_rs2_en )
);

DFFPOSX1 _2560_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_629_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.c_r )
);

NOR2X1 _2140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_176_),
    .Y(_178_)
);

NOR2X1 _1831_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1110_),
    .B(_483_),
    .Y(_615_[1])
);

NAND2X1 _1411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [5]),
    .B(_292_),
    .Y(_291_)
);

OAI22X1 _1640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf4),
    .B(\u_rf_if.read_buf0 [6]),
    .C(\u_rf_if.read_buf0 [5]),
    .D(_943__bF$buf1),
    .Y(_987_)
);

INVX1 _1220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479_),
    .Y(_478_)
);

DFFPOSX1 _2425_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_750_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg1_latched [2])
);

OAI21X1 _2005_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_89_),
    .B(_91_),
    .C(_92_),
    .Y(_670_)
);

INVX1 _2234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_243_)
);

NAND2X1 _1925_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1140_),
    .B(_542__bF$buf3),
    .Y(_36_)
);

MUX2X1 _1505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_881_),
    .B(_518_),
    .S(\u_rf_if.rtrig0 ),
    .Y(_830_)
);

DFFPOSX1 _2463_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_780_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [10])
);

OAI21X1 _2043_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_118_),
    .B(_89_),
    .C(_121_),
    .Y(_661_)
);

NOR2X1 _1734_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_rf_if.rreg1_latched [0]),
    .Y(_1048_)
);

INVX1 _1314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_386_)
);

DFFPOSX1 _2519_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_617_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg2.dhi [3])
);

NAND2X1 _2272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_473_),
    .Y(_258_)
);

INVX1 _1963_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_62_)
);

OAI21X1 _1543_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_910_),
    .B(_911_),
    .C(\u_rf_if.shift_rx [0]),
    .Y(_912_)
);

DFFPOSX1 _2328_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_676_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

INVX1 _2081_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [10]),
    .Y(_141_)
);

AOI21X1 _1772_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_284_),
    .C(_1068_),
    .Y(_735_)
);

OAI21X1 _1352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_349_),
    .C(_357_),
    .Y(_348_)
);

DFFPOSX1 _2557_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_575_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.pc )
);

NOR2X1 _2137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_435_),
    .B(_429_),
    .Y(_175_)
);

NOR2X1 _1828_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.o_cnt [2]),
    .Y(_1109_)
);

FILL FILL97650x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[1]),
    .Y(_294_)
);

NAND2X1 _1581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .Y(_945_)
);

INVX1 _1161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_531_)
);

INVX1 _2366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_537_),
    .Y(_536_)
);

OAI22X1 _1637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf4),
    .B(\u_rf_if.read_buf0 [5]),
    .C(\u_rf_if.read_buf0 [4]),
    .D(_943__bF$buf1),
    .Y(_985_)
);

NOR2X1 _1217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_489_),
    .B(_482_),
    .Y(_481_)
);

NAND2X1 _1390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_313_),
    .Y(_312_)
);

NAND2X1 _2175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_204_),
    .B(_207_),
    .Y(_614_)
);

MUX2X1 _1866_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1142_),
    .B(_1143_),
    .S(_559_),
    .Y(_1144_)
);

NAND2X1 _1446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_265_),
    .B(_512_),
    .Y(_261_)
);

AOI21X1 _1675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_1006_),
    .C(_1008_),
    .Y(_772_)
);

INVX1 _1255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_444_),
    .Y(_443_)
);

NOR2X1 _1484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_861_),
    .B(_862_),
    .Y(_863_)
);

OAI22X1 _2269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_252_),
    .B(_873__bF$buf2),
    .C(_256_),
    .D(_255_),
    .Y(_568_)
);

OAI22X1 _1293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_450_),
    .B(_423_),
    .C(_408_),
    .D(_417_),
    .Y(_407_)
);

DFFPOSX1 _2498_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_609_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [16])
);

MUX2X1 _2078_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_138_),
    .B(_139_),
    .S(_426__bF$buf2),
    .Y(_644_)
);

OAI21X1 _1769_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [6]),
    .B(_284_),
    .C(i_rst_n_bF$buf1),
    .Y(_1067_)
);

AND2X2 _1349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_356_),
    .B(_353_),
    .Y(_351_)
);

AOI21X1 _1998_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1047_),
    .B(_81_),
    .C(_86_),
    .Y(_671_)
);

NAND2X1 _1578_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf2),
    .B(_924_),
    .Y(_943_)
);

NOR2X1 _1158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_534_),
    .B(_536_),
    .Y(_533_)
);

INVX1 _1387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [1]),
    .Y(_315_)
);

NAND2X1 _1196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [1]),
    .B(_502_),
    .Y(_501_)
);

BUFX2 BUFX2_insert10 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_943_),
    .Y(_943__bF$buf0)
);

BUFX2 BUFX2_insert11 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426_),
    .Y(_426__bF$buf4)
);

BUFX2 BUFX2_insert12 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426_),
    .Y(_426__bF$buf3)
);

BUFX2 BUFX2_insert13 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426_),
    .Y(_426__bF$buf2)
);

BUFX2 BUFX2_insert14 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426_),
    .Y(_426__bF$buf1)
);

BUFX2 BUFX2_insert15 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426_),
    .Y(_426__bF$buf0)
);

BUFX2 BUFX2_insert16 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert17 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert18 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert19 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

DFFPOSX1 _2422_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_748_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.o_waddr [1])
);

AND2X2 _2002_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_90_)
);

MUX2X1 _2231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_240_),
    .B(_241_),
    .S(_873__bF$buf0),
    .Y(_591_)
);

INVX1 _1922_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_),
    .Y(_34_)
);

AND2X2 _1502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_877_),
    .B(_878_),
    .Y(_879_)
);

DFFPOSX1 _2460_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_777_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf0 [13])
);

NOR2X1 _2040_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .B(_81_),
    .Y(_120_)
);

NOR2X1 _1731_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf7),
    .B(\u_rf_if.rreg0_latched [2]),
    .Y(_1046_)
);

INVX1 _1311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.add_cy_r ),
    .Y(_389_)
);

DFFPOSX1 _2516_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_822_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [30])
);

OAI21X1 _1960_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(_56_),
    .C(_8_),
    .Y(_60_)
);

AOI22X1 _1540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_907_),
    .B(_909_),
    .C(_904_),
    .D(_898_),
    .Y(_823_)
);

DFFPOSX1 _2325_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_673_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(rf_read_reg1_to_if[2])
);

DFFPOSX1 _2554_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_574_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

NOR2X1 _2134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_488_),
    .B(_432_),
    .Y(_172_)
);

OAI22X1 _1825_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1107_),
    .B(_543__bF$buf2),
    .C(_504_),
    .D(_528_),
    .Y(_721_)
);

OAI22X1 _1405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [1]),
    .B(_311_),
    .C(\u_rf_if.last_req_key [0]),
    .D(_308_),
    .Y(_297_)
);

DFFPOSX1 _2363_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_836_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [4])
);

OAI22X1 _1634_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf4),
    .B(\u_rf_if.read_buf0 [4]),
    .C(\u_rf_if.read_buf0 [3]),
    .D(_943__bF$buf1),
    .Y(_983_)
);

INVX1 _1214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_485_),
    .Y(_484_)
);

DFFPOSX1 _2419_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_601_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

NOR2X1 _2172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_202_),
    .B(_463_),
    .Y(_205_)
);

NAND2X1 _1863_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1098_),
    .B(_542__bF$buf4),
    .Y(_1141_)
);

OAI21X1 _1443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [2]),
    .B(_514_),
    .C(\u_rf_if.tx_state [3]),
    .Y(_264_)
);

INVX1 _2228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_240_)
);

NAND2X1 _1919_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_30_),
    .B(_28_),
    .Y(_31_)
);

OAI22X1 _1672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf1),
    .B(\u_rf_if.read_buf0 [18]),
    .C(\u_rf_if.read_buf0 [17]),
    .D(_943__bF$buf0),
    .Y(_1007_)
);

AOI22X1 _1252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479_),
    .B(_447_),
    .C(_451_),
    .D(_468_),
    .Y(_446_)
);

DFFPOSX1 _2457_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_775_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf0 [15])
);

INVX1 _2037_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_117_)
);

NOR2X1 _1728_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_1044_)
);

INVX1 _1308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_392_)
);

AOI21X1 _1481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_860_),
    .B(_262_),
    .C(_271_),
    .Y(_1117_)
);

AOI21X1 _2266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_355_),
    .B(_254_),
    .C(_1137_),
    .Y(_569_)
);

NOR2X1 _1957_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_57_),
    .B(_51_),
    .Y(_58_)
);

OAI21X1 _1537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_906_),
    .B(_905_),
    .C(\u_rf_if.stream_active ),
    .Y(_907_)
);

AOI22X1 _1290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_413_),
    .B(_411_),
    .C(_424_),
    .D(_436_),
    .Y(_410_)
);

DFFPOSX1 _2495_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_630_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

INVX1 _2075_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [13]),
    .Y(_138_)
);

AOI21X1 _1766_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_330_),
    .B(_284_),
    .C(_1065_),
    .Y(_738_)
);

OR2X2 _1346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_354_)
);

MUX2X1 _1995_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1049_),
    .B(_84_),
    .S(_81_),
    .Y(_672_)
);

AOI21X1 _1575_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_930_),
    .B(\u_rf_if.issue_idx [4]),
    .C(\u_rf_if.issue_idx [5]),
    .Y(_941_)
);

BUFX2 _1155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .Y(o_mem_mosi)
);

AOI21X1 _1384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_322_),
    .B(_325_),
    .C(_319_),
    .Y(_318_)
);

INVX1 _2169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_202_)
);

INVX1 _1193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [0]),
    .Y(_504_)
);

DFFPOSX1 _2398_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_737_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.last_req_key [5])
);

OAI22X1 _1669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [16]),
    .B(_943__bF$buf4),
    .C(\u_rf_if.read_buf0 [18]),
    .D(_926_),
    .Y(_1005_)
);

NAND2X1 _1249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_450_),
    .Y(_449_)
);

NOR2X1 _1898_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13_),
    .B(_14_),
    .Y(_0_)
);

AOI21X1 _1478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_854_),
    .B(_270_),
    .C(_857_),
    .Y(_858_)
);

OAI21X1 _1287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_481_),
    .B(_419_),
    .C(_414_),
    .Y(_413_)
);

DFFPOSX1 _2513_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_818_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [31])
);

DFFPOSX1 _2322_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_670_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(rf_wreg0_to_if[3])
);

DFFPOSX1 _2551_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_848_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [13])
);

NOR2X1 _2131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_870_),
    .Y(_170_)
);

AOI21X1 _1822_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(_542__bF$buf2),
    .C(_1105_),
    .Y(_1106_)
);

INVX1 _1402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [2]),
    .Y(_300_)
);

DFFPOSX1 _2360_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_698_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [1])
);

OAI22X1 _1631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf4),
    .B(\u_rf_if.read_buf0 [3]),
    .C(\u_rf_if.read_buf0 [2]),
    .D(_943__bF$buf1),
    .Y(_981_)
);

INVX1 _1211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_487_)
);

DFFPOSX1 _2416_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_747_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.o_waddr [2])
);

AOI21X1 _1860_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1138_),
    .B(\u_cpu.state.ibus_cyc ),
    .C(_277_),
    .Y(_1139_)
);

AOI22X1 _1440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_270_),
    .C(_268_),
    .D(_269_),
    .Y(_267_)
);

MUX2X1 _2225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_237_),
    .B(_238_),
    .S(_873__bF$buf4),
    .Y(_594_)
);

OAI21X1 _1916_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_870_),
    .B(_28_),
    .C(_529_),
    .Y(_29_)
);

DFFPOSX1 _2454_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_772_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.read_buf0 [18])
);

AOI21X1 _2034_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [30]),
    .B(mem_ibus_ack_bF$buf6),
    .C(_70_),
    .Y(_115_)
);

NOR2X1 _1725_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_rf_if.rreg0_latched [0]),
    .Y(_1042_)
);

NOR2X1 _1305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .Y(_395_)
);

MUX2X1 _2263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_253_),
    .B(_250_),
    .S(_873__bF$buf1),
    .Y(_571_)
);

MUX2X1 _1954_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1041_),
    .B(_55_),
    .S(_51_),
    .Y(_684_)
);

OR2X2 _1534_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_903_),
    .B(_899_),
    .Y(_904_)
);

DFFPOSX1 _2319_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_667_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(rf_wreg0_to_if[0])
);

NOR2X1 _2492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .B(\u_mem_serial.bit_count [6]),
    .Y(_546_)
);

MUX2X1 _2072_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_),
    .B(_136_),
    .S(_426__bF$buf0),
    .Y(_647_)
);

OAI21X1 _1763_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_322_),
    .B(_285_),
    .C(i_rst_n_bF$buf3),
    .Y(_1064_)
);

OAI21X1 _1343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_424_),
    .B(_358_),
    .C(_396_),
    .Y(_357_)
);

DFFPOSX1 _2548_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_624_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(_1116_)
);

OAI22X1 _2128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_14_),
    .B(_543__bF$buf0),
    .C(_1104_),
    .D(_528_),
    .Y(_623_)
);

MUX2X1 _1819_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1103_),
    .B(_1098_),
    .S(_543__bF$buf3),
    .Y(_723_)
);

MUX2X1 _1992_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [22]),
    .B(rf_read_reg1_to_if[3]),
    .S(mem_ibus_ack_bF$buf5),
    .Y(_83_)
);

INVX2 _1572_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_938_),
    .Y(_939_)
);

BUFX2 _1152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1117_),
    .Y(o_rf_mosi)
);

DFFPOSX1 _2357_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_580_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

AOI22X1 _1628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [3]),
    .B(_925__bF$buf0),
    .C(_976_),
    .D(\u_rf_if.read_buf0 [1]),
    .Y(_979_)
);

NAND2X1 _1208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_497_),
    .B(_491_),
    .Y(_490_)
);

AOI22X1 _1381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [8]),
    .B(_344_),
    .C(_345_),
    .D(\u_rf_if.last_req_key [9]),
    .Y(_321_)
);

OAI21X1 _2166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_187_),
    .B(_194_),
    .C(_199_),
    .Y(_200_)
);

OAI21X1 _1857_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_497_),
    .B(_481_),
    .C(_478_),
    .Y(_712_)
);

NOR2X1 _1437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_274_),
    .B(_282_),
    .Y(_270_)
);

NAND2X1 _1190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(current_stream_rs2_hint),
    .B(_508_),
    .Y(_507_)
);

DFFPOSX1 _2395_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_589_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

OAI22X1 _1666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(_943__bF$buf4),
    .C(\u_rf_if.read_buf0 [17]),
    .D(_926_),
    .Y(_1003_)
);

OAI21X1 _1246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_467_),
    .B(_463_),
    .C(_453_),
    .Y(_452_)
);

INVX1 _1895_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1116_),
    .Y(_13_)
);

NOR2X1 _1475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_282_),
    .B(_302_),
    .Y(_855_)
);

OAI21X1 _1284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_496_),
    .B(_417_),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_416_)
);

NOR2X1 _2489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_553_),
    .B(_544_),
    .Y(_543_)
);

INVX1 _2069_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_135_)
);

DFFPOSX1 _2298_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_649_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.data [17])
);

OAI21X1 _1989_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(_80_),
    .C(_48_),
    .Y(_81_)
);

INVX1 _1569_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_935_),
    .Y(_936_)
);

DFFPOSX1 _2510_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_613_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

AOI22X1 _1798_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_962_),
    .C(_940_),
    .D(raddr[4]),
    .Y(_1087_)
);

INVX1 _1378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[3]),
    .Y(_324_)
);

OAI21X1 _1187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_510_),
    .B(_512_),
    .C(\u_rf_if.launch_pending ),
    .Y(_509_)
);

DFFPOSX1 _2413_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_744_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [2])
);

INVX1 _2222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_237_)
);

OAI21X1 _1913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_549_),
    .B(_529_),
    .C(_26_),
    .Y(_696_)
);

DFFPOSX1 _2451_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_769_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf0 [21])
);

OAI21X1 _2031_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_110_),
    .C(_111_),
    .Y(_112_)
);

OAI21X1 _1722_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .B(_1038_),
    .C(_896_),
    .Y(_1040_)
);

NAND3X1 _1302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_433_),
    .B(_399_),
    .C(_400_),
    .Y(_398_)
);

DFFPOSX1 _2507_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_811_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.shift_rx [1])
);

MUX2X1 _2260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_252_),
    .B(_251_),
    .S(_873__bF$buf2),
    .Y(_573_)
);

MUX2X1 _1951_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [16]),
    .B(rf_read_reg0_to_if[2]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_54_)
);

INVX1 _1531_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_901_)
);

DFFPOSX1 _2316_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_665_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(rf_read_reg0_to_if[4])
);

AOI21X1 _1760_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_315_),
    .B(_285_),
    .C(_1062_),
    .Y(_741_)
);

NOR2X1 _1340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_448_),
    .B(_433_),
    .Y(_360_)
);

DFFPOSX1 _2545_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_845_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [19])
);

OAI21X1 _2125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_535_),
    .C(_167_),
    .Y(_625_)
);

INVX1 _1816_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_1101_)
);

DFFPOSX1 _2354_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_841_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.req_seen )
);

AOI22X1 _1625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [2]),
    .B(_925__bF$buf2),
    .C(_976_),
    .D(\u_rf_if.read_buf0 [0]),
    .Y(_977_)
);

NOR2X1 _1205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .Y(_493_)
);

NOR2X1 _2163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .B(_461_),
    .Y(_197_)
);

NAND2X1 _1854_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1133_),
    .B(_1134_),
    .Y(_1135_)
);

AOI21X1 _1434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_285_),
    .B(_272_),
    .C(_277_),
    .Y(_835_)
);

MUX2X1 _2219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_234_),
    .B(_235_),
    .S(_873__bF$buf4),
    .Y(_598_)
);

DFFPOSX1 _2392_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_588_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

OAI22X1 _1663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [14]),
    .B(_943__bF$buf4),
    .C(\u_rf_if.read_buf0 [16]),
    .D(_926_),
    .Y(_1001_)
);

INVX1 _1243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_455_)
);

DFFPOSX1 _2448_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_766_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [24])
);

NAND2X1 _2028_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_450_),
    .Y(_109_)
);

AND2X2 _1719_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1035_),
    .B(\u_rf_if.issue_idx [3]),
    .Y(_1038_)
);

MUX2X1 _1892_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_502_),
    .B(_423_),
    .S(mem_ibus_ack_bF$buf1),
    .Y(_702_)
);

NAND2X1 _1472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_264_),
    .B(_843_),
    .Y(_852_)
);

MUX2X1 _2257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_250_),
    .B(_231_),
    .S(_873__bF$buf1),
    .Y(_574_)
);

MUX2X1 _1948_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_886_),
    .B(_52_),
    .S(_51_),
    .Y(_687_)
);

INVX1 _1528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_898_)
);

MUX2X1 _1281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[0]),
    .B(rf_wreg0_to_if[0]),
    .S(_420_),
    .Y(_419_)
);

OAI21X1 _2486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_563_),
    .B(_543__bF$buf1),
    .C(_541_),
    .Y(_851_)
);

MUX2X1 _2066_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_),
    .B(_133_),
    .S(_426__bF$buf0),
    .Y(_650_)
);

OAI21X1 _1757_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_307_),
    .B(_285_),
    .C(i_rst_n_bF$buf0),
    .Y(_1061_)
);

AND2X2 _1337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_364_),
    .B(_366_),
    .Y(_363_)
);

DFFPOSX1 _2295_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_646_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.data [14])
);

MUX2X1 _1986_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_79_)
);

INVX2 _1566_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_932_),
    .Y(_933_)
);

FILL FILL97950x90150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL97950x57750 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _1795_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_937_),
    .B(_934_),
    .Y(_1085_)
);

NAND2X1 _1375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_329_),
    .B(_328_),
    .Y(_327_)
);

INVX2 _1184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_513_),
    .Y(_512_)
);

DFFPOSX1 _2389_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_733_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.rcnt [0])
);

AOI21X1 _2198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543__bF$buf5),
    .B(_221_),
    .C(_222_),
    .Y(_606_)
);

OAI21X1 _1889_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_386_),
    .C(_10_),
    .Y(_704_)
);

OAI21X1 _1469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_834_),
    .B(_833_),
    .C(_804_),
    .Y(_840_)
);

DFFPOSX1 _2410_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_743_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [3])
);

AOI21X1 _1698_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1022_),
    .B(_925__bF$buf2),
    .C(_1023_),
    .Y(_764_)
);

NAND2X1 _1278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_469_),
    .B(_423_),
    .Y(_422_)
);

INVX1 _1910_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_23_),
    .Y(_24_)
);

DFFPOSX1 _2504_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_565_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [3])
);

DFFPOSX1 _2313_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_662_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(rf_read_reg1_to_if[4])
);

DFFPOSX1 _2542_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_839_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [7])
);

OAI21X1 _2122_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_165_),
    .B(_528_),
    .C(_166_),
    .Y(_627_)
);

INVX1 _1813_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_1098_)
);

DFFPOSX1 _2351_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_694_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.bit_count [5])
);

NOR2X1 _1622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(_974_),
    .Y(_806_)
);

INVX2 _1202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_496_)
);

DFFPOSX1 _2407_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_595_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

OAI21X1 _2160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_184_),
    .B(_463_),
    .C(_178_),
    .Y(_195_)
);

AOI22X1 _1851_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1130_),
    .B(_1131_),
    .C(_1125_),
    .D(_1127_),
    .Y(_1132_)
);

INVX1 _1431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [1]),
    .Y(_274_)
);

INVX1 _2216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_234_)
);

OAI21X1 _1907_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_21_),
    .B(_20_),
    .C(_542__bF$buf0),
    .Y(_22_)
);

INVX1 _1660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [15]),
    .Y(_999_)
);

INVX1 _1240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_459_),
    .Y(_458_)
);

DFFPOSX1 _2445_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_763_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.read_buf0 [27])
);

OAI21X1 _2025_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_101_),
    .C(_106_),
    .Y(_664_)
);

NAND2X1 _1716_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1032_),
    .B(_1034_),
    .Y(_1036_)
);

NOR2X1 _2254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(_873__bF$buf5),
    .Y(_249_)
);

OAI21X1 _1945_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_496_),
    .B(_417_),
    .C(_49_),
    .Y(_50_)
);

AND2X2 _1525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_896_),
    .B(\u_rf_if.issue_idx [5]),
    .Y(_825_)
);

DFFPOSX1 _2483_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_815_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.stream_active )
);

INVX1 _2063_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [19]),
    .Y(_132_)
);

OAI21X1 _1754_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_277_),
    .B(_440_),
    .C(_1059_),
    .Y(_1060_)
);

NAND2X1 _1334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_391_),
    .B(_377_),
    .Y(_366_)
);

DFFPOSX1 _2539_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_570_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

MUX2X1 _2119_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_164_),
    .B(_149_),
    .S(_426__bF$buf1),
    .Y(_628_)
);

INVX1 _2292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .Y(_549_)
);

MUX2X1 _1983_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_77_)
);

NOR2X1 _1563_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_930_),
    .Y(_931_)
);

DFFPOSX1 _2348_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_692_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.req_pending )
);

NAND3X1 _1619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_899_),
    .C(_971_),
    .Y(_973_)
);

OAI21X1 _1792_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_939_),
    .B(_1082_),
    .C(_1080_),
    .Y(_729_)
);

AOI22X1 _1372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(raddr[4]),
    .C(_342_),
    .D(_331_),
    .Y(_330_)
);

DFFPOSX1 _2577_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_568_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

NOR2X1 _2157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_190_),
    .B(_191_),
    .Y(_192_)
);

OAI21X1 _1848_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_495_),
    .B(_395_),
    .C(_363_),
    .Y(_1129_)
);

AND2X2 _1428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_279_),
    .B(_276_),
    .Y(_837_)
);

NOR2X1 _1181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .Y(_515_)
);

DFFPOSX1 _2386_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_596_[0]),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.state.o_cnt [2])
);

NOR2X1 _1657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(_393__bF$buf2),
    .Y(_997_)
);

NOR2X1 _1237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_461_)
);

AOI21X1 _2195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543__bF$buf5),
    .B(_220_),
    .C(_216_),
    .Y(_607_)
);

NAND2X1 _1886_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_mem_serial.shift_reg [12]),
    .Y(_9_)
);

NOR2X1 _1466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(_798_),
    .Y(_805_)
);

AOI21X1 _1695_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1020_),
    .B(_925__bF$buf1),
    .C(_1021_),
    .Y(_765_)
);

INVX1 _1275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426__bF$buf1),
    .Y(_425_)
);

INVX1 _2289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .Y(_552_)
);

DFFPOSX1 _2501_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_808_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.stream_cnt [2])
);

INVX1 _2098_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [30]),
    .Y(_148_)
);

NAND3X1 _1789_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_934_),
    .B(_1079_),
    .C(_937_),
    .Y(_1080_)
);

OR2X2 _1369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_334_),
    .B(\u_rf_if.last_req_key [6]),
    .Y(_333_)
);

DFFPOSX1 _2310_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_659_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [27])
);

NAND2X1 _1598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_796_),
    .B(_890_),
    .Y(_958_)
);

INVX1 _1178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .Y(_518_)
);

AOI21X1 _1810_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1093_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .C(_1095_),
    .Y(_1096_)
);

DFFPOSX1 _2404_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_740_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.last_req_key [2])
);

MUX2X1 _2213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_230_),
    .B(_232_),
    .S(_873__bF$buf1),
    .Y(_601_)
);

INVX1 _1904_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_16_),
    .Y(_19_)
);

DFFPOSX1 _2442_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_760_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.issue_idx [0])
);

NOR2X1 _2022_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_51_),
    .B(_104_),
    .Y(_105_)
);

NOR2X1 _1713_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1028_),
    .B(_932_),
    .Y(_1033_)
);

MUX2X1 _2251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_522_),
    .B(_227_),
    .S(_873__bF$buf5),
    .Y(_577_)
);

NOR2X1 _1942_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(_474_),
    .Y(_47_)
);

INVX1 _1522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.pending_read ),
    .Y(_894_)
);

DFFPOSX1 _2307_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_656_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [24])
);

INVX1 _2480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(_538_)
);

MUX2X1 _2060_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_129_),
    .B(_130_),
    .S(_426__bF$buf4),
    .Y(_653_)
);

OAI21X1 _1751_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_510_),
    .B(_512_),
    .C(i_rst_n_bF$buf2),
    .Y(_1058_)
);

OAI21X1 _1331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_373_),
    .B(_375_),
    .C(_387_),
    .Y(_369_)
);

DFFPOSX1 _2536_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_814_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.rcnt [1])
);

AOI21X1 _2116_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(_159_),
    .C(_425_),
    .Y(_629_)
);

INVX1 _1807_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_912_),
    .Y(_1093_)
);

MUX2X1 _1980_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_75_)
);

AOI22X1 _1560_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.read_buf0 [31]),
    .C(_924_),
    .D(_928_),
    .Y(_929_)
);

DFFPOSX1 _2345_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_690_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

NOR2X1 _1616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf3),
    .B(_905_),
    .Y(_971_)
);

DFFPOSX1 _2574_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_723_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [20])
);

NAND2X1 _2154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_186_),
    .B(_189_),
    .Y(_618_)
);

NAND2X1 _1845_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_496_),
    .B(_495_),
    .Y(_1126_)
);

INVX1 _1425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.shift_rx [0]),
    .Y(_278_)
);

DFFPOSX1 _2383_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_586_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

NOR2X1 _1654_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [12]),
    .B(_393__bF$buf2),
    .Y(_995_)
);

NAND2X1 _1234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_468_),
    .B(_465_),
    .Y(_464_)
);

DFFPOSX1 _2439_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_606_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [26])
);

OAI21X1 _2019_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_cpu.branch_op ),
    .C(_101_),
    .Y(_102_)
);

INVX1 _2192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_218_)
);

MUX2X1 _1883_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_7_),
    .B(_1_),
    .S(_543__bF$buf3),
    .Y(_707_)
);

NAND2X1 _1463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_801_),
    .B(_798_),
    .Y(_802_)
);

MUX2X1 _2248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_38_),
    .B(_1143_),
    .S(_873__bF$buf3),
    .Y(_580_)
);

OAI21X1 _1939_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(_408_),
    .C(_45_),
    .Y(_689_)
);

OAI21X1 _1519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.o_wdata0 ),
    .B(_891_),
    .C(_444_),
    .Y(_892_)
);

AOI21X1 _1692_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1018_),
    .B(_925__bF$buf1),
    .C(_1019_),
    .Y(_766_)
);

NOR2X1 _1272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_497_),
    .B(_429_),
    .Y(_428_)
);

DFFPOSX1 _2477_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_790_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [0])
);

INVX1 _2057_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [22]),
    .Y(_129_)
);

AND2X2 _1748_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1056_),
    .B(_444_),
    .Y(_747_)
);

NOR2X1 _1328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_373_),
    .B(_375_),
    .Y(_372_)
);

NAND2X1 _2286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_558_),
    .B(_556_),
    .Y(_555_)
);

MUX2X1 _1977_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_73_)
);

INVX4 _1557_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_925__bF$buf3),
    .Y(_926_)
);

FILL FILL97950x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2095_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_476_),
    .B(_434_),
    .C(_466_),
    .Y(_146_)
);

AOI21X1 _1786_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_938_),
    .B(_1033_),
    .C(_1077_),
    .Y(_1078_)
);

AND2X2 _1366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_344_),
    .B(rf_wreg0_to_if[2]),
    .Y(_336_)
);

NOR2X1 _1595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_498_),
    .B(_955_),
    .Y(_956_)
);

OAI21X1 _1175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf1),
    .B(_521_),
    .C(_524_),
    .Y(_520_)
);

MUX2X1 _2189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_215_),
    .B(_117_),
    .S(_543__bF$buf3),
    .Y(_608_)
);

DFFPOSX1 _2401_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_592_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

AOI21X1 _1689_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1016_),
    .B(_925__bF$buf3),
    .C(_1017_),
    .Y(_767_)
);

AOI21X1 _1269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .B(_470_),
    .C(_473_),
    .Y(_431_)
);

INVX1 _2210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_231_)
);

NOR2X1 _1901_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_538_),
    .B(_15_),
    .Y(_17_)
);

INVX1 _1498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_874_),
    .Y(_875_)
);

AOI21X1 _1710_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_932_),
    .B(_1028_),
    .C(_897_),
    .Y(_1031_)
);

DFFPOSX1 _2304_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_654_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [22])
);

DFFPOSX1 _2533_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_cpu.o_wdata0 ),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.wdata0_next [0])
);

AND2X2 _2113_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_159_),
    .B(_160_),
    .Y(_161_)
);

AOI22X1 _1804_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [2]),
    .B(_962_),
    .C(_940_),
    .D(raddr[6]),
    .Y(_1091_)
);

DFFPOSX1 _2342_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_714_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [4])
);

AOI21X1 _1613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_967_),
    .B(\u_rf_if.stream_cnt [1]),
    .C(_968_),
    .Y(_809_)
);

DFFPOSX1 _2571_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_639_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg.data [7])
);

INVX1 _2151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_178_),
    .Y(_187_)
);

CLKBUF1 CLKBUF1_insert35 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf13)
);

CLKBUF1 CLKBUF1_insert36 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf12)
);

CLKBUF1 CLKBUF1_insert37 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf11)
);

CLKBUF1 CLKBUF1_insert38 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf10)
);

CLKBUF1 CLKBUF1_insert39 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf9)
);

NOR2X1 _1842_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_478_),
    .Y(_1123_)
);

NOR2X1 _1422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.tx_state [2]),
    .B(_510_),
    .Y(_281_)
);

OAI21X1 _2207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf1),
    .B(_228_),
    .C(_226_),
    .Y(_229_)
);

DFFPOSX1 _2380_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_716_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [29])
);

AOI21X1 _1651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_992_),
    .B(_925__bF$buf3),
    .C(_993_),
    .Y(_781_)
);

INVX1 _1231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_467_)
);

DFFPOSX1 _2436_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_757_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.issue_idx [3])
);

AOI21X1 _2016_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf6),
    .B(_14_),
    .C(_99_),
    .Y(_666_)
);

INVX1 _1707_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [1]),
    .Y(_1028_)
);

INVX1 _1880_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_5_)
);

AOI21X1 _1460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(\u_rf_if.read_buf1 [0]),
    .C(_798_),
    .Y(_799_)
);

MUX2X1 _2245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_218_),
    .B(_213_),
    .S(_873__bF$buf3),
    .Y(_583_)
);

OAI21X1 _1936_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(_496_),
    .C(_43_),
    .Y(_690_)
);

OAI21X1 _1516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_498_),
    .B(_441_),
    .C(_517_),
    .Y(_889_)
);

DFFPOSX1 _2474_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_787_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [3])
);

MUX2X1 _2054_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_126_),
    .B(_127_),
    .S(_426__bF$buf4),
    .Y(_656_)
);

NOR2X1 _1745_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1054_),
    .B(_865_),
    .Y(_748_)
);

AND2X2 _1325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_376_),
    .B(_382_),
    .Y(_375_)
);

INVX1 _2283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_559_),
    .Y(_558_)
);

FILL FILL97350x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1974_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_71_)
);

NAND3X1 _1554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .B(_922_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_923_)
);

DFFPOSX1 _2339_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_720_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [2])
);

INVX1 _2092_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [2]),
    .Y(_144_)
);

OAI21X1 _1783_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_939_),
    .B(_1075_),
    .C(_1074_),
    .Y(_731_)
);

AND2X2 _1363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(\u_rf_if.last_req_key [7]),
    .Y(_339_)
);

DFFPOSX1 _2568_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_724_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_rf_if.rs2_stream_buf [0])
);

INVX1 _2148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_184_)
);

INVX1 _1839_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_1121_)
);

OAI21X1 _1419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.last_req_key [9]),
    .B(_284_),
    .C(i_rst_n_bF$buf3),
    .Y(_283_)
);

OAI21X1 _1592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_953_),
    .C(_907_),
    .Y(_815_)
);

INVX1 _1172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [3]),
    .Y(_523_)
);

DFFPOSX1 _2377_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_583_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

AOI21X1 _1648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_989_),
    .C(_991_),
    .Y(_782_)
);

INVX2 _1228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .Y(_470_)
);

INVX1 _2186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_213_)
);

INVX1 _1877_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_2_)
);

NOR2X1 _1457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_792_),
    .B(_795_),
    .Y(_796_)
);

AOI21X1 _1686_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_1013_),
    .C(_1015_),
    .Y(_768_)
);

NOR2X1 _1266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(_435_),
    .Y(_434_)
);

AOI21X1 _1495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543__bF$buf3),
    .B(_871_),
    .C(_872_),
    .Y(_831_)
);

MUX2X1 _2089_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_37_),
    .B(_1142_),
    .S(_426__bF$buf3),
    .Y(_637_)
);

DFFPOSX1 _2301_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_652_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [20])
);

OAI21X1 _1589_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf3),
    .B(\u_rf_if.stream_cnt [0]),
    .C(_951_),
    .Y(_952_)
);

INVX1 _1169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_526_)
);

DFFPOSX1 _2530_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_566_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.alu.cmp_r )
);

NAND2X1 _2110_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_157_),
    .B(_156_),
    .Y(_158_)
);

AOI22X1 _1801_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_962_),
    .C(_940_),
    .D(raddr[5]),
    .Y(_1089_)
);

NAND2X1 _1398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_305_),
    .Y(_304_)
);

NOR2X1 _1610_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_908_),
    .B(_935_),
    .Y(_967_)
);

NAND2X1 _2204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_224_),
    .B(_542__bF$buf1),
    .Y(_226_)
);

DFFPOSX1 _2433_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_756_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.issue_idx [4])
);

AOI22X1 _2013_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_89_),
    .D(rf_wreg0_to_if[0]),
    .Y(_98_)
);

AOI21X1 _1704_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_942_),
    .B(_925__bF$buf2),
    .C(_1026_),
    .Y(_761_)
);

INVX1 _2242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_247_)
);

AOI21X1 _1933_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_41_),
    .C(_42_),
    .Y(_692_)
);

NOR2X1 _1513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf7),
    .B(\u_rf_if.rreg0_latched [3]),
    .Y(_887_)
);

DFFPOSX1 _2471_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_785_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_rf_if.read_buf0 [5])
);

INVX1 _2051_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [25]),
    .Y(_126_)
);

OAI21X1 _1742_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_861_),
    .B(_862_),
    .C(_444_),
    .Y(_1053_)
);

NAND2X1 _1322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_386_),
    .B(_413_),
    .Y(_378_)
);

DFFPOSX1 _2527_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_816_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.rs2_stream_buf [1])
);

NAND2X1 _2107_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_150_),
    .B(_391_),
    .Y(_155_)
);

INVX1 _2280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.req_pending ),
    .Y(_561_)
);

INVX1 _1971_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .Y(_68_)
);

INVX1 _1551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [0]),
    .Y(_920_)
);

DFFPOSX1 _2336_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_683_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

AND2X2 _1607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_281_),
    .B(_270_),
    .Y(_965_)
);

NOR2X1 _1780_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1073_),
    .B(_441_),
    .Y(_732_)
);

INVX2 _1360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rtrig0 ),
    .Y(_342_)
);

DFFPOSX1 _2565_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_634_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [2])
);

NOR2X1 _2145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_455_),
    .B(_463_),
    .Y(_182_)
);

AOI21X1 _1836_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543__bF$buf4),
    .B(_1112_),
    .C(_1113_),
    .Y(_716_)
);

AND2X2 _1416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_287_),
    .B(_343_),
    .Y(_286_)
);

DFFPOSX1 _2374_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_711_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_cpu.state.ibus_cyc )
);

OAI22X1 _1645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf4),
    .B(\u_rf_if.read_buf0 [8]),
    .C(\u_rf_if.read_buf0 [7]),
    .D(_943__bF$buf1),
    .Y(_990_)
);

INVX2 _1225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_474_),
    .Y(_473_)
);

NOR2X1 _2183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [16]),
    .B(_543__bF$buf4),
    .Y(_211_)
);

NAND2X1 _1874_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1149_),
    .B(_537_),
    .Y(_1120_)
);

NOR2X1 _1454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_793_)
);

MUX2X1 _2239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_244_),
    .B(_245_),
    .S(_873__bF$buf0),
    .Y(_587_)
);

OAI22X1 _1683_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf1),
    .B(\u_rf_if.read_buf0 [22]),
    .C(\u_rf_if.read_buf0 [21]),
    .D(_943__bF$buf0),
    .Y(_1014_)
);

NOR2X1 _1263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_469_),
    .B(_438_),
    .Y(_437_)
);

DFFPOSX1 _2468_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_726_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(raddr[5])
);

MUX2X1 _2048_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_122_),
    .B(_124_),
    .S(_426__bF$buf4),
    .Y(_659_)
);

INVX1 _1739_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[2]),
    .Y(_1051_)
);

OAI21X1 _1319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [0]),
    .B(\u_rf_if.i_stream_rs2_en ),
    .C(\u_rf_if.stream_active ),
    .Y(_381_)
);

INVX2 _1492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542__bF$buf0),
    .Y(_870_)
);

OAI21X1 _2277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_31_),
    .B(_259_),
    .C(_260_),
    .Y(_564_)
);

OAI21X1 _1968_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(_62_),
    .C(_45_),
    .Y(_66_)
);

INVX1 _1548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_916_),
    .Y(_917_)
);

MUX2X1 _2086_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_142_),
    .B(_143_),
    .S(_426__bF$buf3),
    .Y(_640_)
);

NAND2X1 _1777_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .B(_956_),
    .Y(_1071_)
);

INVX1 _1357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_517_),
    .Y(_345_)
);

NAND2X1 _1586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(_947_),
    .Y(_949_)
);

OAI22X1 _1166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_530_),
    .B(_543__bF$buf0),
    .C(_563_),
    .D(_528_),
    .Y(_847_)
);

INVX1 _1395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_308_),
    .Y(_307_)
);

INVX1 _2201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_224_)
);

AND2X2 _1489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_866_),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_868_)
);

DFFPOSX1 _2430_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_755_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg0_latched [0])
);

NAND2X1 _2010_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[1]),
    .B(_89_),
    .Y(_96_)
);

OAI21X1 _1701_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf3),
    .B(\u_rf_if.read_buf0 [29]),
    .C(_926_),
    .Y(_1025_)
);

NAND2X1 _1298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_409_),
    .B(_404_),
    .Y(_402_)
);

MUX2X1 _1930_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_40_),
    .B(_2_),
    .S(_543__bF$buf3),
    .Y(_693_)
);

NOR2X1 _1510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf7),
    .B(\u_rf_if.rreg1_latched [3]),
    .Y(_885_)
);

DFFPOSX1 _2524_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_828_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg1_latched [3])
);

OAI21X1 _2104_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_423_),
    .C(_151_),
    .Y(_152_)
);

DFFPOSX1 _2333_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_680_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

AOI22X1 _1604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_962_),
    .C(_940_),
    .D(raddr[7]),
    .Y(_963_)
);

DFFPOSX1 _2562_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_632_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [30])
);

OAI21X1 _2142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_467_),
    .B(_177_),
    .C(_179_),
    .Y(_620_)
);

NOR2X1 _1833_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1111_),
    .B(_481_),
    .Y(_615_[2])
);

NAND2X1 _1413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_291_),
    .B(_290_),
    .Y(_289_)
);

BUFX2 BUFX2_insert60 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542_),
    .Y(_542__bF$buf1)
);

BUFX2 BUFX2_insert61 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542_),
    .Y(_542__bF$buf0)
);

BUFX2 BUFX2_insert62 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf7)
);

BUFX2 BUFX2_insert63 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf6)
);

BUFX2 BUFX2_insert64 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf5)
);

BUFX2 BUFX2_insert65 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf4)
);

BUFX2 BUFX2_insert66 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf3)
);

BUFX2 BUFX2_insert67 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf2)
);

BUFX2 BUFX2_insert68 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf1)
);

BUFX2 BUFX2_insert69 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf0)
);

DFFPOSX1 _2371_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_582_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

OAI22X1 _1642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(_943__bF$buf1),
    .C(\u_rf_if.read_buf0 [8]),
    .D(_926_),
    .Y(_988_)
);

OR2X2 _1222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_476_)
);

DFFPOSX1 _2427_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_752_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rreg1_latched [0])
);

NAND2X1 _2007_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[2]),
    .B(_89_),
    .Y(_94_)
);

OAI21X1 _2180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_553_),
    .B(_544_),
    .C(\u_mem_serial.shift_reg [10]),
    .Y(_209_)
);

INVX1 _1871_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(_1147_)
);

NAND2X1 _1451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_718_),
    .B(_382_),
    .Y(_719_)
);

INVX1 _2236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_244_)
);

INVX1 _1927_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_38_)
);

NOR2X1 _1507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(_543__bF$buf5),
    .Y(_883_)
);

OAI22X1 _1680_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393__bF$buf1),
    .B(\u_rf_if.read_buf0 [21]),
    .C(\u_rf_if.read_buf0 [20]),
    .D(_943__bF$buf0),
    .Y(_1012_)
);

NOR2X1 _1260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.req_seen ),
    .B(_440_),
    .Y(_439_)
);

DFFPOSX1 _2465_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_727_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(raddr[4])
);

INVX1 _2045_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [29]),
    .Y(_123_)
);

INVX1 _1736_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[1]),
    .Y(_1049_)
);

NOR2X1 _1316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_384_)
);

OAI22X1 _2274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_502_),
    .B(_543__bF$buf2),
    .C(_1108_),
    .D(_528_),
    .Y(_565_)
);

NOR2X1 _1965_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_63_),
    .B(_51_),
    .Y(_64_)
);

NOR2X1 _1545_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [1]),
    .B(\u_rf_if.issue_idx [0]),
    .Y(_914_)
);

INVX1 _2083_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [9]),
    .Y(_142_)
);

OAI21X1 _1774_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_285_),
    .C(i_rst_n_bF$buf3),
    .Y(_1070_)
);

INVX1 _1354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_347_)
);

DFFPOSX1 _2559_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_628_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [31])
);

OAI21X1 _2139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_176_),
    .C(_464_),
    .Y(_177_)
);

INVX1 _1583_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_919_),
    .Y(_946_)
);

INVX2 _1163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_553_),
    .Y(_529_)
);

DFFPOSX1 _2368_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_706_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.decode.co_mem_word )
);

INVX1 _1639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [7]),
    .Y(_986_)
);

NOR2X1 _1219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_490_),
    .B(_480_),
    .Y(_479_)
);

INVX1 _1392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_311_),
    .Y(_310_)
);

MUX2X1 _2177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_208_),
    .B(_201_),
    .S(_177_),
    .Y(_613_)
);

MUX2X1 _1868_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1145_),
    .B(_1140_),
    .S(_543__bF$buf3),
    .Y(_710_)
);

OAI21X1 _1448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_514_),
    .B(_311_),
    .C(_699_),
    .Y(_700_)
);

endmodule
