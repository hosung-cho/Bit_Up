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

wire [4:0] rf_read_reg0_to_if ;
wire o_mem_sck ;
wire _588_ ;
wire _168_ ;
wire _800_ ;
wire _60_ ;
wire _1066_ ;
wire _397_ ;
wire [0:0] \u_cpu.ctrl.pc_plus_4_cy_r_w  ;
wire _703_ ;
wire [4:0] \u_cpu.decode.opcode  ;
wire _19_ ;
wire _932_ ;
wire _512_ ;
wire _741_ ;
wire _321_ ;
wire _57_ ;
wire _970_ ;
wire _550_ ;
wire _130_ ;
wire [4:2] \u_cpu.state.o_cnt  ;
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
wire _382_ ;
wire _1107_ ;
wire _858_ ;
wire _438_ ;
wire _191_ ;
wire _667_ ;
wire _247_ ;
wire _896_ ;
wire _476_ ;
wire _285_ ;
wire _1_ ;
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
wire [0:0] \u_cpu.alu.add_cy_r  ;
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
wire _699_ ;
wire _279_ ;
wire _911_ ;
wire \u_rf_if.stream_active_bF$buf6  ;
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
wire [1:0] \u_rf_if.wdata0_r  ;
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
wire [0:0] \u_cpu.bufreg.c_r  ;
wire _617_ ;
wire _790_ ;
wire _370_ ;
wire _846_ ;
wire _426_ ;
wire _655_ ;
wire _235_ ;
wire _1133_ ;
wire [7:0] \u_rf_if.o_waddr  ;
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
wire _124__bF$buf0 ;
wire _124__bF$buf1 ;
wire _124__bF$buf2 ;
wire _124__bF$buf3 ;
wire _124__bF$buf4 ;
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
wire [2:0] _1097_ ;
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
wire [3:0] \u_rf_if.issue_reg  ;
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
wire _586__bF$buf0 ;
wire _586__bF$buf1 ;
wire _586__bF$buf2 ;
wire _586__bF$buf3 ;
wire _586__bF$buf4 ;
wire _41_ ;
wire _1047_ ;
wire _798_ ;
wire _378_ ;
wire _187_ ;
wire _1085_ ;
wire _913_ ;
wire [7:0] \u_cpu.bufreg2.dhi  ;
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
wire [0:0] \u_cpu.csr_imm  ;
wire _1103_ ;
wire _854_ ;
wire _434_ ;
wire _663_ ;
wire _243_ ;
wire _719_ ;
wire _892_ ;
wire _472_ ;
wire _948_ ;
wire _528_ ;
wire _108_ ;
wire _281_ ;
wire _1006_ ;
wire _757_ ;
wire _337_ ;
wire [1:0] \u_rf_if.wdata0_next  ;
wire _986_ ;
wire _566_ ;
wire _146_ ;
wire _1044_ ;
wire _795_ ;
wire _375_ ;
wire _184_ ;
wire _1082_ ;
wire _889_ ;
wire _469_ ;
wire _698_ ;
wire _278_ ;
wire _910_ ;
wire \u_rf_if.stream_active_bF$buf5  ;
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
wire [31:0] \u_cpu.ctrl.o_ibus_adr  ;
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
wire [0:0] \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
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
wire _839_ ;
wire _419_ ;
wire _99_ ;
wire _592_ ;
wire _172_ ;
wire _648_ ;
wire _228_ ;
wire [2:0] _1070_ ;
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
wire _23__bF$buf0 ;
wire _23__bF$buf1 ;
wire _23__bF$buf2 ;
wire _23__bF$buf3 ;
wire _23__bF$buf4 ;
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
wire _459__bF$buf0 ;
wire _459__bF$buf1 ;
wire _459__bF$buf2 ;
wire _459__bF$buf3 ;
wire _459__bF$buf4 ;
wire _459__bF$buf5 ;
wire _459__bF$buf6 ;
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
wire [4:0] \u_rf_if.rcnt  ;
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
wire [3:0] \u_rf_if.issue_chunk  ;
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
wire [7:0] \u_cpu.bufreg2.cnt_next  ;
wire _659_ ;
wire _239_ ;
wire _1081_ ;
wire _888_ ;
wire _468_ ;
wire _697_ ;
wire _277_ ;
wire \u_rf_if.stream_active_bF$buf4  ;
wire [0:0] \u_cpu.ctrl.pc  ;
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
wire [4:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7  ;
wire _597_ ;
wire _177_ ;
wire _1075_ ;
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
wire [0:0] \u_cpu.o_wdata0  ;
wire _615_ ;
wire \u_cpu.bufreg.i_right_shift_op  ;
wire _844_ ;
wire _424_ ;
wire \u_cpu.immdec.gen_immdec_w_eq_1.imm7  ;
wire _653_ ;
wire _233_ ;
wire _709_ ;
wire _489__bF$buf0 ;
wire _489__bF$buf1 ;
wire _489__bF$buf2 ;
wire _489__bF$buf3 ;
wire _489__bF$buf4 ;
wire _489__bF$buf5 ;
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
wire [8:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20  ;
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
wire _685_ ;
wire _265_ ;
wire _494_ ;
wire _22_ ;
wire _1028_ ;
wire _779_ ;
wire _359_ ;

BUFX2 BUFX2_insert67 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf0)
);

BUFX2 BUFX2_insert66 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf1)
);

BUFX2 BUFX2_insert65 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf2)
);

BUFX2 BUFX2_insert64 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf3)
);

BUFX2 BUFX2_insert63 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf4)
);

BUFX2 BUFX2_insert62 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf5)
);

BUFX2 BUFX2_insert61 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf6)
);

BUFX2 BUFX2_insert60 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .Y(_459__bF$buf0)
);

BUFX2 BUFX2_insert59 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .Y(_459__bF$buf1)
);

BUFX2 BUFX2_insert58 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .Y(_459__bF$buf2)
);

BUFX2 BUFX2_insert57 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .Y(_459__bF$buf3)
);

BUFX2 BUFX2_insert56 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .Y(_459__bF$buf4)
);

BUFX2 BUFX2_insert55 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .Y(_459__bF$buf5)
);

BUFX2 BUFX2_insert54 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .Y(_459__bF$buf6)
);

BUFX2 BUFX2_insert53 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489_),
    .Y(_489__bF$buf0)
);

BUFX2 BUFX2_insert52 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489_),
    .Y(_489__bF$buf1)
);

BUFX2 BUFX2_insert51 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489_),
    .Y(_489__bF$buf2)
);

BUFX2 BUFX2_insert50 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489_),
    .Y(_489__bF$buf3)
);

BUFX2 BUFX2_insert49 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489_),
    .Y(_489__bF$buf4)
);

BUFX2 BUFX2_insert48 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489_),
    .Y(_489__bF$buf5)
);

BUFX2 BUFX2_insert47 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586_),
    .Y(_586__bF$buf0)
);

BUFX2 BUFX2_insert46 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586_),
    .Y(_586__bF$buf1)
);

BUFX2 BUFX2_insert45 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586_),
    .Y(_586__bF$buf2)
);

BUFX2 BUFX2_insert44 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586_),
    .Y(_586__bF$buf3)
);

BUFX2 BUFX2_insert43 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586_),
    .Y(_586__bF$buf4)
);

BUFX2 BUFX2_insert42 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_23_),
    .Y(_23__bF$buf0)
);

BUFX2 BUFX2_insert41 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_23_),
    .Y(_23__bF$buf1)
);

BUFX2 BUFX2_insert40 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_23_),
    .Y(_23__bF$buf2)
);

BUFX2 BUFX2_insert39 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_23_),
    .Y(_23__bF$buf3)
);

BUFX2 BUFX2_insert38 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_23_),
    .Y(_23__bF$buf4)
);

BUFX2 BUFX2_insert37 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf0 )
);

BUFX2 BUFX2_insert36 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf1 )
);

BUFX2 BUFX2_insert35 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf2 )
);

BUFX2 BUFX2_insert34 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf3 )
);

BUFX2 BUFX2_insert33 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf4 )
);

BUFX2 BUFX2_insert32 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf5 )
);

BUFX2 BUFX2_insert31 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf6 )
);

CLKBUF1 CLKBUF1_insert30 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

CLKBUF1 CLKBUF1_insert29 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

CLKBUF1 CLKBUF1_insert28 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert27 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert26 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert25 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert24 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert23 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

CLKBUF1 CLKBUF1_insert22 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf0)
);

CLKBUF1 CLKBUF1_insert21 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf1)
);

CLKBUF1 CLKBUF1_insert20 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf2)
);

CLKBUF1 CLKBUF1_insert19 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf3)
);

CLKBUF1 CLKBUF1_insert18 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf4)
);

CLKBUF1 CLKBUF1_insert17 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf5)
);

CLKBUF1 CLKBUF1_insert16 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf6)
);

CLKBUF1 CLKBUF1_insert15 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf7)
);

CLKBUF1 CLKBUF1_insert14 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf8)
);

CLKBUF1 CLKBUF1_insert13 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf9)
);

CLKBUF1 CLKBUF1_insert12 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf10)
);

CLKBUF1 CLKBUF1_insert11 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf11)
);

CLKBUF1 CLKBUF1_insert10 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf12)
);

CLKBUF1 CLKBUF1_insert9 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf13)
);

BUFX2 BUFX2_insert8 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

BUFX2 BUFX2_insert7 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert6 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert5 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert4 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_124_),
    .Y(_124__bF$buf0)
);

BUFX2 BUFX2_insert3 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_124_),
    .Y(_124__bF$buf1)
);

BUFX2 BUFX2_insert2 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_124_),
    .Y(_124__bF$buf2)
);

BUFX2 BUFX2_insert1 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_124_),
    .Y(_124__bF$buf3)
);

BUFX2 BUFX2_insert0 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_124_),
    .Y(_124__bF$buf4)
);

BUFX2 _1137_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1113_),
    .Y(o_rf_sync)
);

BUFX2 _1138_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1112_),
    .Y(o_rf_sck)
);

BUFX2 _1139_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1111_),
    .Y(o_rf_mosi)
);

BUFX2 _1140_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1110_),
    .Y(o_mem_sync)
);

BUFX2 _1141_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1109_),
    .Y(o_mem_sck)
);

BUFX2 _1142_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_0_),
    .Y(o_mem_mosi)
);

INVX1 _1143_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_reg [1]),
    .Y(_596_)
);

INVX1 _1144_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[1]),
    .Y(_595_)
);

MUX2X1 _1145_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_595_),
    .B(_596_),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_859_)
);

INVX2 _1146_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_594_)
);

NOR2X1 _1147_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(\u_rf_if.issue_idx [4]),
    .Y(_593_)
);

INVX2 _1148_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_593_),
    .Y(_592_)
);

INVX1 _1149_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .Y(_591_)
);

INVX1 _1150_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [2]),
    .Y(_590_)
);

NOR2X1 _1151_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_589_)
);

NAND3X1 _1152_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_591_),
    .B(_590_),
    .C(_589_),
    .Y(_588_)
);

OAI21X1 _1153_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_592_),
    .B(_588_),
    .C(\u_rf_if.prefetch_active ),
    .Y(_587_)
);

NAND2X1 _1154_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(_587_),
    .Y(_586_)
);

INVX2 _1155_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586__bF$buf4),
    .Y(_585_)
);

NAND2X1 _1156_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(_585_),
    .Y(_584_)
);

INVX1 _1157_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .Y(_583_)
);

INVX2 _1158_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf5),
    .Y(_582_)
);

INVX1 _1159_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .Y(_581_)
);

INVX2 _1160_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_580_)
);

INVX1 _1161_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_579_)
);

NOR2X1 _1162_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_579_),
    .Y(_578_)
);

NOR2X1 _1163_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .Y(_577_)
);

OAI21X1 _1164_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .C(_577_),
    .Y(_576_)
);

OAI21X1 _1165_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_578_),
    .B(_576_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_575_)
);

NAND2X1 _1166_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_581_),
    .B(_575_),
    .Y(_574_)
);

INVX1 _1167_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_573_)
);

INVX1 _1168_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_572_)
);

INVX1 _1169_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_571_)
);

INVX1 _1170_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_570_)
);

NOR2X1 _1171_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_571_),
    .B(_570_),
    .Y(_569_)
);

INVX1 _1172_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_569_),
    .Y(_568_)
);

NOR2X1 _1173_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_572_),
    .B(_568_),
    .Y(_567_)
);

INVX1 _1174_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_567_),
    .Y(_566_)
);

NOR2X1 _1175_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_573_),
    .B(_566_),
    .Y(_565_)
);

INVX1 _1176_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_565_),
    .Y(_564_)
);

NOR2X1 _1177_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_574_),
    .B(_564_),
    .Y(_563_)
);

INVX1 _1178_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_563_),
    .Y(_562_)
);

INVX1 _1179_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [2]),
    .Y(_561_)
);

OR2X2 _1180_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_560_)
);

NOR2X1 _1181_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(_560_),
    .Y(_559_)
);

NAND2X1 _1182_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_559_),
    .Y(_558_)
);

INVX2 _1183_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_558_),
    .Y(_557_)
);

NAND2X1 _1184_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_557_),
    .Y(_556_)
);

OAI21X1 _1185_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_581_),
    .B(_556_),
    .C(_562_),
    .Y(_555_)
);

INVX2 _1186_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .Y(_554_)
);

NOR2X1 _1187_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_554_),
    .Y(_553_)
);

INVX2 _1188_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_553_),
    .Y(_552_)
);

INVX1 _1189_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_551_)
);

INVX1 _1190_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_574_),
    .Y(_550_)
);

OAI21X1 _1191_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_564_),
    .C(_550_),
    .Y(_549_)
);

INVX1 _1192_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_549_),
    .Y(_548_)
);

NOR2X1 _1193_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_552_),
    .B(_548_),
    .Y(_547_)
);

INVX1 _1194_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_546_)
);

NOR2X1 _1195_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_545_)
);

NAND2X1 _1196_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_546_),
    .B(_545_),
    .Y(_544_)
);

NOR2X1 _1197_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_544_),
    .Y(_543_)
);

INVX1 _1198_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_543_),
    .Y(_542_)
);

NOR2X1 _1199_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_542_),
    .Y(_541_)
);

NAND2X1 _1200_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .B(_541_),
    .Y(_540_)
);

INVX1 _1201_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_539_)
);

OAI21X1 _1202_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_542_),
    .C(_539_),
    .Y(_538_)
);

NAND3X1 _1203_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_540_),
    .B(_538_),
    .C(_547_),
    .Y(_537_)
);

OAI21X1 _1204_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_551_),
    .B(_547_),
    .C(_537_),
    .Y(_536_)
);

INVX1 _1205_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_536_),
    .Y(_535_)
);

AOI21X1 _1206_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_535_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_552_),
    .Y(_534_)
);

NAND2X1 _1207_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_555_),
    .B(_534_),
    .Y(_533_)
);

INVX2 _1208_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .Y(_532_)
);

NAND2X1 _1209_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_532_),
    .Y(_531_)
);

NAND2X1 _1210_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_580_),
    .Y(_530_)
);

NOR2X1 _1211_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_531_),
    .B(_530_),
    .Y(_529_)
);

OAI21X1 _1212_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_529_),
    .C(_563_),
    .Y(_528_)
);

NAND2X1 _1213_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_528_),
    .B(_533_),
    .Y(_527_)
);

INVX2 _1214_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_527_),
    .Y(_526_)
);

NAND2X1 _1215_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_582_),
    .B(_526_),
    .Y(_525_)
);

NOR2X1 _1216_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_583_),
    .B(_525_),
    .Y(\u_rf_if.rtrig0 )
);

INVX2 _1217_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rtrig0 ),
    .Y(_524_)
);

INVX1 _1218_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[2]),
    .Y(_523_)
);

NOR2X1 _1219_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_523_),
    .Y(_522_)
);

AOI22X1 _1220_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(raddr[6]),
    .C(_524_),
    .D(_522_),
    .Y(_521_)
);

INVX2 _1221_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(_520_)
);

AND2X2 _1222_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_520_),
    .B(rf_wreg0_to_if[0]),
    .Y(_519_)
);

AOI22X1 _1223_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(raddr[4]),
    .C(_524_),
    .D(_519_),
    .Y(_518_)
);

AND2X2 _1224_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_521_),
    .B(_518_),
    .Y(_517_)
);

AND2X2 _1225_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_520_),
    .B(rf_wreg0_to_if[1]),
    .Y(_516_)
);

AOI22X1 _1226_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(raddr[5]),
    .C(_524_),
    .D(_516_),
    .Y(_515_)
);

AND2X2 _1227_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_520_),
    .B(rf_wreg0_to_if[3]),
    .Y(_514_)
);

AOI22X1 _1228_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(raddr[7]),
    .C(_524_),
    .D(_514_),
    .Y(_513_)
);

NAND3X1 _1229_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_515_),
    .B(_513_),
    .C(_517_),
    .Y(_512_)
);

INVX1 _1230_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.shift_rx [1]),
    .Y(_511_)
);

NOR2X1 _1231_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_511_),
    .B(_587_),
    .Y(_510_)
);

NAND2X1 _1232_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_510_),
    .B(_512_),
    .Y(_509_)
);

OAI21X1 _1233_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_509_),
    .C(_584_),
    .Y(_858_)
);

INVX1 _1234_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(_508_)
);

NOR2X1 _1235_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_508_),
    .Y(_507_)
);

INVX1 _1236_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_507_),
    .Y(_506_)
);

INVX1 _1237_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext_bF$buf13),
    .Y(_505_)
);

OAI21X1 _1238_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_505_),
    .C(\u_mem_serial.state [1]),
    .Y(_504_)
);

INVX1 _1239_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .Y(_503_)
);

NOR2X1 _1240_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [4]),
    .B(\u_mem_serial.bit_count [2]),
    .Y(_502_)
);

NAND2X1 _1241_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_503_),
    .B(_502_),
    .Y(_501_)
);

NOR2X1 _1242_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .B(_501_),
    .Y(_500_)
);

INVX1 _1243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_500_),
    .Y(_499_)
);

INVX1 _1244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [6]),
    .Y(_498_)
);

INVX1 _1245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(_497_)
);

NOR2X1 _1246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_497_),
    .Y(_496_)
);

NAND2X1 _1247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_498_),
    .B(_496_),
    .Y(_495_)
);

NOR2X1 _1248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_495_),
    .B(_499_),
    .Y(_494_)
);

INVX1 _1249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_494_),
    .Y(_493_)
);

OAI21X1 _1250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_506_),
    .B(_493_),
    .C(\u_mem_serial.state [0]),
    .Y(_492_)
);

AND2X2 _1251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_492_),
    .B(_504_),
    .Y(_491_)
);

INVX1 _1252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .Y(_490_)
);

NOR2X1 _1253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_490_),
    .Y(_489_)
);

INVX2 _1254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf5),
    .Y(_488_)
);

NOR2X1 _1255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_488_),
    .Y(_487_)
);

INVX1 _1256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_487_),
    .Y(_486_)
);

NOR2X1 _1257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_499_),
    .B(_486_),
    .Y(_485_)
);

NAND2X1 _1258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_496_),
    .B(_485_),
    .Y(_484_)
);

OAI22X1 _1259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_506_),
    .B(_484_),
    .C(_582_),
    .D(_491_),
    .Y(_857_)
);

INVX1 _1260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1110_),
    .Y(_483_)
);

NOR2X1 _1261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast_bF$buf7),
    .B(_483_),
    .Y(_1109_)
);

INVX1 _1262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_482_)
);

NOR2X1 _1263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_483_),
    .B(_482_),
    .Y(_0_)
);

NOR2X1 _1264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_505_),
    .Y(_481_)
);

INVX1 _1265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_481_),
    .Y(_480_)
);

NOR2X1 _1266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .Y(_479_)
);

INVX1 _1267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_479_),
    .Y(_478_)
);

OAI21X1 _1268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_478_),
    .B(_480_),
    .C(\u_mem_serial.req_pending ),
    .Y(_477_)
);

INVX1 _1269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .Y(_476_)
);

NAND2X1 _1270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_476_),
    .B(_479_),
    .Y(_475_)
);

NAND2X1 _1271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf3),
    .B(\u_cpu.state.ibus_cyc ),
    .Y(_474_)
);

NOR2X1 _1272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_474_),
    .B(_480_),
    .Y(_473_)
);

INVX1 _1273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_473_),
    .Y(_472_)
);

OAI21X1 _1274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_475_),
    .B(_472_),
    .C(_477_),
    .Y(_854_)
);

NAND2X1 _1275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .B(_479_),
    .Y(_471_)
);

OAI21X1 _1276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_471_),
    .B(_472_),
    .C(_508_),
    .Y(_853_)
);

NOR2X1 _1277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_470_)
);

INVX1 _1278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_470_),
    .Y(_469_)
);

NOR2X1 _1279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_469_),
    .B(_499_),
    .Y(_468_)
);

INVX1 _1280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_468_),
    .Y(_467_)
);

NOR2X1 _1281_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_471_),
    .B(_472_),
    .Y(_466_)
);

INVX1 _1282_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_466_),
    .Y(_465_)
);

AOI21X1 _1283_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_476_),
    .B(_490_),
    .C(\u_mem_serial.state [1]),
    .Y(_464_)
);

OAI21X1 _1284_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_473_),
    .C(_464_),
    .Y(_463_)
);

OAI21X1 _1285_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_467_),
    .B(_463_),
    .C(_465_),
    .Y(_462_)
);

OAI22X1 _1286_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_486_),
    .B(_467_),
    .C(_498_),
    .D(_462_),
    .Y(_852_)
);

INVX1 _1287_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_461_)
);

INVX1 _1288_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .Y(_460_)
);

AOI21X1 _1289_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_485_),
    .B(_460_),
    .C(_463_),
    .Y(_459_)
);

NAND3X1 _1290_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [13]),
    .B(_489__bF$buf4),
    .C(_459__bF$buf6),
    .Y(_458_)
);

OAI21X1 _1291_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_461_),
    .B(_459__bF$buf5),
    .C(_458_),
    .Y(_851_)
);

NOR2X1 _1292_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_457_)
);

INVX1 _1293_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_456_)
);

INVX1 _1294_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_455_)
);

INVX1 _1295_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_454_)
);

NOR2X1 _1296_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_455_),
    .B(_454_),
    .Y(_453_)
);

INVX1 _1297_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_453_),
    .Y(_452_)
);

NOR2X1 _1298_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_456_),
    .B(_452_),
    .Y(_451_)
);

NAND2X1 _1299_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_451_),
    .Y(_450_)
);

NOR2X1 _1300_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(_450_),
    .Y(_449_)
);

AOI21X1 _1301_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_449_),
    .B(\u_rf_if.stream_cnt [4]),
    .C(_457_),
    .Y(_850_)
);

OAI21X1 _1302_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_504_),
    .C(_484_),
    .Y(_849_)
);

AOI21X1 _1303_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_493_),
    .B(\u_mem_serial.state [0]),
    .C(\u_mem_serial.state [1]),
    .Y(_448_)
);

OAI21X1 _1304_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_483_),
    .B(_448_),
    .C(_465_),
    .Y(_848_)
);

NAND3X1 _1305_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [30]),
    .B(_489__bF$buf3),
    .C(_459__bF$buf4),
    .Y(_447_)
);

OAI21X1 _1306_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_482_),
    .B(_459__bF$buf3),
    .C(_447_),
    .Y(_847_)
);

NOR2X1 _1307_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [0]),
    .B(_459__bF$buf2),
    .Y(_446_)
);

OAI21X1 _1308_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_501_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_445_)
);

NAND3X1 _1309_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_mem_miso),
    .B(_445_),
    .C(_487_),
    .Y(_444_)
);

AOI21X1 _1310_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459__bF$buf1),
    .B(_444_),
    .C(_446_),
    .Y(_846_)
);

NOR2X1 _1311_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_474_),
    .B(_489__bF$buf2),
    .Y(_443_)
);

AOI22X1 _1312_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [14]),
    .B(_489__bF$buf1),
    .C(_443_),
    .D(\u_cpu.ctrl.pc ),
    .Y(_442_)
);

NOR2X1 _1313_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [15]),
    .B(_459__bF$buf0),
    .Y(_441_)
);

AOI21X1 _1314_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459__bF$buf6),
    .B(_442_),
    .C(_441_),
    .Y(_845_)
);

INVX1 _1315_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_440_)
);

AOI22X1 _1316_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [15]),
    .B(_489__bF$buf0),
    .C(_443_),
    .D(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_439_)
);

MUX2X1 _1317_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_439_),
    .B(_440_),
    .S(_459__bF$buf5),
    .Y(_844_)
);

INVX1 _1318_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_438_)
);

NAND2X1 _1319_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .B(_489__bF$buf5),
    .Y(_437_)
);

INVX1 _1320_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [2]),
    .Y(_436_)
);

INVX1 _1321_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_435_)
);

MUX2X1 _1322_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_436_),
    .B(_435_),
    .S(_474_),
    .Y(_434_)
);

OAI21X1 _1323_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf4),
    .B(_434_),
    .C(_437_),
    .Y(_433_)
);

MUX2X1 _1324_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_433_),
    .B(_438_),
    .S(_459__bF$buf4),
    .Y(_843_)
);

INVX1 _1325_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_432_)
);

NAND2X1 _1326_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_438_),
    .B(_489__bF$buf3),
    .Y(_431_)
);

INVX1 _1327_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [3]),
    .Y(_430_)
);

INVX1 _1328_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_429_)
);

MUX2X1 _1329_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_430_),
    .B(_429_),
    .S(_474_),
    .Y(_428_)
);

OAI21X1 _1330_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf2),
    .B(_428_),
    .C(_431_),
    .Y(_427_)
);

MUX2X1 _1331_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_427_),
    .B(_432_),
    .S(_459__bF$buf3),
    .Y(_842_)
);

INVX1 _1332_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_426_)
);

NAND2X1 _1333_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_432_),
    .B(_489__bF$buf1),
    .Y(_425_)
);

INVX1 _1334_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [4]),
    .Y(_424_)
);

INVX1 _1335_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_423_)
);

MUX2X1 _1336_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_424_),
    .B(_423_),
    .S(_474_),
    .Y(_422_)
);

OAI21X1 _1337_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf0),
    .B(_422_),
    .C(_425_),
    .Y(_421_)
);

MUX2X1 _1338_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_421_),
    .B(_426_),
    .S(_459__bF$buf2),
    .Y(_841_)
);

INVX1 _1339_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_420_)
);

NAND2X1 _1340_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_426_),
    .B(_489__bF$buf5),
    .Y(_419_)
);

INVX1 _1341_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [5]),
    .Y(_418_)
);

INVX1 _1342_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_417_)
);

MUX2X1 _1343_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_418_),
    .B(_417_),
    .S(_474_),
    .Y(_416_)
);

OAI21X1 _1344_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf4),
    .B(_416_),
    .C(_419_),
    .Y(_415_)
);

MUX2X1 _1345_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_415_),
    .B(_420_),
    .S(_459__bF$buf1),
    .Y(_840_)
);

INVX1 _1346_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_414_)
);

NAND2X1 _1347_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_420_),
    .B(_489__bF$buf3),
    .Y(_413_)
);

INVX1 _1348_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [6]),
    .Y(_412_)
);

INVX1 _1349_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_411_)
);

MUX2X1 _1350_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_412_),
    .B(_411_),
    .S(_474_),
    .Y(_410_)
);

OAI21X1 _1351_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf2),
    .B(_410_),
    .C(_413_),
    .Y(_409_)
);

MUX2X1 _1352_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_409_),
    .B(_414_),
    .S(_459__bF$buf0),
    .Y(_839_)
);

INVX1 _1353_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_408_)
);

NAND2X1 _1354_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_414_),
    .B(_489__bF$buf1),
    .Y(_407_)
);

INVX1 _1355_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [7]),
    .Y(_406_)
);

INVX1 _1356_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_405_)
);

MUX2X1 _1357_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_406_),
    .B(_405_),
    .S(_474_),
    .Y(_404_)
);

OAI21X1 _1358_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf0),
    .B(_404_),
    .C(_407_),
    .Y(_403_)
);

MUX2X1 _1359_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_403_),
    .B(_408_),
    .S(_459__bF$buf6),
    .Y(_838_)
);

INVX1 _1360_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_402_)
);

NAND2X1 _1361_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_408_),
    .B(_489__bF$buf5),
    .Y(_401_)
);

INVX1 _1362_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_400_)
);

INVX1 _1363_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_399_)
);

MUX2X1 _1364_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_400_),
    .B(_399_),
    .S(_474_),
    .Y(_398_)
);

OAI21X1 _1365_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf4),
    .B(_398_),
    .C(_401_),
    .Y(_397_)
);

MUX2X1 _1366_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_397_),
    .B(_402_),
    .S(_459__bF$buf5),
    .Y(_837_)
);

INVX1 _1367_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_396_)
);

NAND2X1 _1368_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_402_),
    .B(_489__bF$buf3),
    .Y(_395_)
);

INVX1 _1369_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [9]),
    .Y(_394_)
);

INVX1 _1370_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_393_)
);

MUX2X1 _1371_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_394_),
    .B(_393_),
    .S(_474_),
    .Y(_392_)
);

OAI21X1 _1372_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf2),
    .B(_392_),
    .C(_395_),
    .Y(_391_)
);

MUX2X1 _1373_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_391_),
    .B(_396_),
    .S(_459__bF$buf4),
    .Y(_836_)
);

NOR2X1 _1374_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(_459__bF$buf3),
    .Y(_390_)
);

NAND2X1 _1375_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_396_),
    .B(_489__bF$buf1),
    .Y(_389_)
);

INVX1 _1376_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [10]),
    .Y(_388_)
);

INVX1 _1377_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_387_)
);

MUX2X1 _1378_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_388_),
    .B(_387_),
    .S(_474_),
    .Y(_386_)
);

OAI21X1 _1379_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_489__bF$buf0),
    .B(_386_),
    .C(_389_),
    .Y(_385_)
);

AOI21X1 _1380_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459__bF$buf2),
    .B(_385_),
    .C(_390_),
    .Y(_835_)
);

NOR2X1 _1381_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(_488_),
    .Y(_384_)
);

NOR2X1 _1382_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(_459__bF$buf1),
    .Y(_383_)
);

AOI21X1 _1383_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459__bF$buf0),
    .B(_384_),
    .C(_383_),
    .Y(_834_)
);

NOR2X1 _1384_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(_488_),
    .Y(_382_)
);

NOR2X1 _1385_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(_459__bF$buf6),
    .Y(_381_)
);

AOI21X1 _1386_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459__bF$buf5),
    .B(_382_),
    .C(_381_),
    .Y(_833_)
);

NOR2X1 _1387_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(_488_),
    .Y(_380_)
);

NOR2X1 _1388_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(_459__bF$buf4),
    .Y(_379_)
);

AOI21X1 _1389_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459__bF$buf3),
    .B(_380_),
    .C(_379_),
    .Y(_832_)
);

NOR2X1 _1390_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(_488_),
    .Y(_378_)
);

NOR2X1 _1391_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(_459__bF$buf2),
    .Y(_377_)
);

AOI21X1 _1392_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459__bF$buf1),
    .B(_378_),
    .C(_377_),
    .Y(_831_)
);

AOI21X1 _1393_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(_489__bF$buf5),
    .C(_443_),
    .Y(_376_)
);

NOR2X1 _1394_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [30]),
    .B(_459__bF$buf0),
    .Y(_375_)
);

AOI21X1 _1395_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459__bF$buf6),
    .B(_376_),
    .C(_375_),
    .Y(_830_)
);

INVX1 _1396_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_374_)
);

NAND3X1 _1397_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [0]),
    .B(_489__bF$buf4),
    .C(_459__bF$buf5),
    .Y(_373_)
);

OAI21X1 _1398_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_374_),
    .B(_459__bF$buf4),
    .C(_373_),
    .Y(_829_)
);

INVX1 _1399_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_372_)
);

NAND3X1 _1400_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [1]),
    .B(_489__bF$buf3),
    .C(_459__bF$buf3),
    .Y(_371_)
);

OAI21X1 _1401_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_372_),
    .B(_459__bF$buf2),
    .C(_371_),
    .Y(_828_)
);

INVX1 _1402_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_370_)
);

NAND3X1 _1403_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [2]),
    .B(_489__bF$buf2),
    .C(_459__bF$buf1),
    .Y(_369_)
);

OAI21X1 _1404_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_370_),
    .B(_459__bF$buf0),
    .C(_369_),
    .Y(_827_)
);

INVX1 _1405_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_368_)
);

NAND3X1 _1406_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [3]),
    .B(_489__bF$buf1),
    .C(_459__bF$buf6),
    .Y(_367_)
);

OAI21X1 _1407_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_368_),
    .B(_459__bF$buf5),
    .C(_367_),
    .Y(_826_)
);

INVX1 _1408_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_366_)
);

NAND3X1 _1409_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [4]),
    .B(_489__bF$buf0),
    .C(_459__bF$buf4),
    .Y(_365_)
);

OAI21X1 _1410_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_366_),
    .B(_459__bF$buf3),
    .C(_365_),
    .Y(_825_)
);

INVX1 _1411_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_364_)
);

NAND3X1 _1412_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [5]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf2),
    .Y(_363_)
);

OAI21X1 _1413_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_364_),
    .B(_459__bF$buf1),
    .C(_363_),
    .Y(_824_)
);

INVX1 _1414_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [7]),
    .Y(_362_)
);

NAND3X1 _1415_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [6]),
    .B(_489__bF$buf4),
    .C(_459__bF$buf0),
    .Y(_361_)
);

OAI21X1 _1416_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_362_),
    .B(_459__bF$buf6),
    .C(_361_),
    .Y(_823_)
);

INVX1 _1417_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_360_)
);

NAND3X1 _1418_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [7]),
    .B(_489__bF$buf3),
    .C(_459__bF$buf5),
    .Y(_359_)
);

OAI21X1 _1419_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_360_),
    .B(_459__bF$buf4),
    .C(_359_),
    .Y(_822_)
);

INVX1 _1420_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_358_)
);

NAND3X1 _1421_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [8]),
    .B(_489__bF$buf2),
    .C(_459__bF$buf3),
    .Y(_357_)
);

OAI21X1 _1422_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_358_),
    .B(_459__bF$buf2),
    .C(_357_),
    .Y(_821_)
);

INVX1 _1423_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [10]),
    .Y(_356_)
);

NAND3X1 _1424_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [9]),
    .B(_489__bF$buf1),
    .C(_459__bF$buf1),
    .Y(_355_)
);

OAI21X1 _1425_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_356_),
    .B(_459__bF$buf0),
    .C(_355_),
    .Y(_820_)
);

INVX1 _1426_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_354_)
);

NAND3X1 _1427_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [10]),
    .B(_489__bF$buf0),
    .C(_459__bF$buf6),
    .Y(_353_)
);

OAI21X1 _1428_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_354_),
    .B(_459__bF$buf5),
    .C(_353_),
    .Y(_819_)
);

INVX1 _1429_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_352_)
);

NAND3X1 _1430_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [11]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf4),
    .Y(_351_)
);

OAI21X1 _1431_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_352_),
    .B(_459__bF$buf3),
    .C(_351_),
    .Y(_818_)
);

INVX1 _1432_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_350_)
);

NAND3X1 _1433_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [12]),
    .B(_489__bF$buf4),
    .C(_459__bF$buf2),
    .Y(_349_)
);

OAI21X1 _1434_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_350_),
    .B(_459__bF$buf1),
    .C(_349_),
    .Y(_817_)
);

INVX2 _1435_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_463_),
    .Y(_348_)
);

AOI21X1 _1436_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_348_),
    .B(_497_),
    .C(_466_),
    .Y(_347_)
);

OAI21X1 _1437_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_497_),
    .B(_348_),
    .C(_347_),
    .Y(_816_)
);

NOR2X1 _1438_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_460_),
    .B(_496_),
    .Y(_346_)
);

NAND2X1 _1439_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_346_),
    .B(_347_),
    .Y(_345_)
);

OAI21X1 _1440_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_488_),
    .B(_469_),
    .C(_345_),
    .Y(_815_)
);

INVX1 _1441_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .Y(_344_)
);

NOR2X1 _1442_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_469_),
    .Y(_343_)
);

NOR2X1 _1443_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_344_),
    .B(_470_),
    .Y(_342_)
);

OAI21X1 _1444_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_342_),
    .B(_343_),
    .C(_489__bF$buf3),
    .Y(_597_)
);

OAI21X1 _1445_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_344_),
    .B(_348_),
    .C(_597_),
    .Y(_814_)
);

NAND2X1 _1446_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_503_),
    .B(_343_),
    .Y(_719_)
);

INVX1 _1447_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_719_),
    .Y(_732_)
);

NOR2X1 _1448_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_503_),
    .B(_343_),
    .Y(_734_)
);

OAI21X1 _1449_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_734_),
    .B(_732_),
    .C(_489__bF$buf2),
    .Y(_735_)
);

OAI21X1 _1450_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_503_),
    .B(_348_),
    .C(_735_),
    .Y(_813_)
);

OAI21X1 _1451_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_719_),
    .B(_463_),
    .C(\u_mem_serial.bit_count [4]),
    .Y(_736_)
);

NAND2X1 _1452_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_732_),
    .B(_348_),
    .Y(_741_)
);

NOR2X1 _1453_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [4]),
    .B(_741_),
    .Y(_855_)
);

NOR2X1 _1454_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_466_),
    .B(_855_),
    .Y(_856_)
);

NAND2X1 _1455_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_736_),
    .B(_856_),
    .Y(_812_)
);

INVX1 _1456_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .Y(_860_)
);

INVX1 _1457_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_462_),
    .Y(_861_)
);

OAI21X1 _1458_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_860_),
    .B(_855_),
    .C(_861_),
    .Y(_811_)
);

INVX2 _1459_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.prefetch_active ),
    .Y(_862_)
);

NOR2X1 _1460_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_862_),
    .B(_592_),
    .Y(_810_)
);

INVX1 _1461_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_reg [3]),
    .Y(_863_)
);

NOR2X1 _1462_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .B(_810_),
    .Y(_864_)
);

AOI21X1 _1463_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_863_),
    .B(_810_),
    .C(_864_),
    .Y(_809_)
);

INVX1 _1464_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rf_miso),
    .Y(_865_)
);

INVX1 _1465_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [1]),
    .Y(_866_)
);

INVX1 _1466_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [0]),
    .Y(_867_)
);

NOR2X1 _1467_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_866_),
    .B(_867_),
    .Y(_868_)
);

INVX1 _1468_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [4]),
    .Y(_869_)
);

NOR2X1 _1469_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [3]),
    .B(\u_rf_if.tx_state [2]),
    .Y(_870_)
);

NAND2X1 _1470_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_869_),
    .B(_870_),
    .Y(_871_)
);

INVX1 _1471_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_871_),
    .Y(_872_)
);

AND2X2 _1472_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_872_),
    .B(_868_),
    .Y(_873_)
);

OAI21X1 _1473_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.shift_rx [1]),
    .B(_873_),
    .C(i_rst_n_bF$buf2),
    .Y(_874_)
);

AOI21X1 _1474_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_865_),
    .B(_873_),
    .C(_874_),
    .Y(_808_)
);

INVX1 _1475_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen0_r ),
    .Y(_875_)
);

INVX1 _1476_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rtrig1 ),
    .Y(_876_)
);

NOR2X1 _1477_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_875_),
    .B(_876_),
    .Y(_877_)
);

INVX1 _1478_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_877_),
    .Y(_878_)
);

NAND2X1 _1479_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_866_),
    .B(_872_),
    .Y(_879_)
);

NOR2X1 _1480_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [0]),
    .B(_879_),
    .Y(_880_)
);

AND2X2 _1481_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_521_),
    .B(\u_rf_if.last_req_key [6]),
    .Y(_881_)
);

NOR2X1 _1482_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [6]),
    .B(_521_),
    .Y(_882_)
);

NOR2X1 _1483_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_882_),
    .B(_881_),
    .Y(_883_)
);

INVX1 _1484_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_518_),
    .Y(_884_)
);

OR2X2 _1485_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_884_),
    .B(\u_rf_if.last_req_key [4]),
    .Y(_885_)
);

NAND2X1 _1486_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [4]),
    .B(_884_),
    .Y(_886_)
);

NAND2X1 _1487_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [5]),
    .B(_515_),
    .Y(_887_)
);

OR2X2 _1488_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_515_),
    .B(\u_rf_if.last_req_key [5]),
    .Y(_888_)
);

NAND2X1 _1489_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_887_),
    .B(_888_),
    .Y(_889_)
);

AOI21X1 _1490_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_885_),
    .B(_886_),
    .C(_889_),
    .Y(_890_)
);

INVX1 _1491_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [3]),
    .Y(_891_)
);

OR2X2 _1492_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_520_),
    .B(raddr[3]),
    .Y(_892_)
);

OAI21X1 _1493_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .B(ren),
    .C(_892_),
    .Y(_893_)
);

NOR2X1 _1494_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_891_),
    .B(_893_),
    .Y(_894_)
);

INVX1 _1495_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_893_),
    .Y(_895_)
);

NOR2X1 _1496_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [3]),
    .B(_895_),
    .Y(_896_)
);

OR2X2 _1497_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_520_),
    .B(raddr[1]),
    .Y(_897_)
);

OAI21X1 _1498_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .B(ren),
    .C(_897_),
    .Y(_898_)
);

INVX1 _1499_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [8]),
    .Y(_899_)
);

NOR2X1 _1500_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_899_),
    .Y(_900_)
);

NOR2X1 _1501_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [8]),
    .B(_520_),
    .Y(_901_)
);

NOR2X1 _1502_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_900_),
    .B(_901_),
    .Y(_902_)
);

OAI21X1 _1503_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [1]),
    .B(_898_),
    .C(_902_),
    .Y(_903_)
);

NAND2X1 _1504_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [9]),
    .B(_877_),
    .Y(_904_)
);

OR2X2 _1505_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_877_),
    .B(\u_rf_if.last_req_key [9]),
    .Y(_905_)
);

AOI21X1 _1506_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_904_),
    .B(_905_),
    .C(_903_),
    .Y(_906_)
);

INVX1 _1507_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.req_seen ),
    .Y(_907_)
);

AOI21X1 _1508_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_898_),
    .B(\u_rf_if.last_req_key [1]),
    .C(_907_),
    .Y(_908_)
);

INVX1 _1509_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [2]),
    .Y(_909_)
);

INVX1 _1510_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[2]),
    .Y(_910_)
);

NAND2X1 _1511_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_910_),
    .Y(_911_)
);

OAI21X1 _1512_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(ren),
    .C(_911_),
    .Y(_912_)
);

INVX1 _1513_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_912_),
    .Y(_913_)
);

NAND2X1 _1514_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_909_),
    .B(_913_),
    .Y(_914_)
);

NAND2X1 _1515_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [2]),
    .B(_912_),
    .Y(_915_)
);

NAND3X1 _1516_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_914_),
    .B(_915_),
    .C(_908_),
    .Y(_916_)
);

INVX1 _1517_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.launch_pending ),
    .Y(_917_)
);

INVX1 _1518_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [0]),
    .Y(_918_)
);

INVX1 _1519_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[0]),
    .Y(_919_)
);

NAND2X1 _1520_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_919_),
    .Y(_920_)
);

OAI21X1 _1521_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(ren),
    .C(_920_),
    .Y(_921_)
);

INVX1 _1522_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_921_),
    .Y(_922_)
);

NAND2X1 _1523_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_918_),
    .B(_922_),
    .Y(_923_)
);

NAND2X1 _1524_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [0]),
    .B(_921_),
    .Y(_924_)
);

NAND3X1 _1525_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_917_),
    .B(_924_),
    .C(_923_),
    .Y(_925_)
);

NOR2X1 _1526_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_925_),
    .B(_916_),
    .Y(_926_)
);

AND2X2 _1527_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_926_),
    .B(_906_),
    .Y(_927_)
);

OAI21X1 _1528_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_894_),
    .B(_896_),
    .C(_927_),
    .Y(_928_)
);

OR2X2 _1529_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_513_),
    .B(\u_rf_if.last_req_key [7]),
    .Y(_929_)
);

NAND2X1 _1530_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [7]),
    .B(_513_),
    .Y(_930_)
);

NAND2X1 _1531_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_930_),
    .B(_929_),
    .Y(_931_)
);

NOR2X1 _1532_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_928_),
    .B(_931_),
    .Y(_932_)
);

AND2X2 _1533_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_890_),
    .B(_932_),
    .Y(_933_)
);

AOI22X1 _1534_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_520_),
    .B(_878_),
    .C(_933_),
    .D(_883_),
    .Y(_934_)
);

NAND2X1 _1535_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_880_),
    .B(_934_),
    .Y(_935_)
);

INVX4 _1536_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_935_),
    .Y(_936_)
);

OAI21X1 _1537_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [9]),
    .B(_936_),
    .C(i_rst_n_bF$buf1),
    .Y(_937_)
);

AOI21X1 _1538_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_878_),
    .B(_936_),
    .C(_937_),
    .Y(_807_)
);

OAI21X1 _1539_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_494_),
    .B(_488_),
    .C(_465_),
    .Y(_806_)
);

NAND3X1 _1540_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [1]),
    .B(_867_),
    .C(_872_),
    .Y(_938_)
);

INVX1 _1541_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_938_),
    .Y(_939_)
);

OAI21X1 _1542_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.shift_rx [0]),
    .B(_939_),
    .C(i_rst_n_bF$buf0),
    .Y(_940_)
);

AOI21X1 _1543_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_865_),
    .B(_939_),
    .C(_940_),
    .Y(_805_)
);

INVX1 _1544_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf3),
    .Y(_941_)
);

NOR2X1 _1545_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .Y(_942_)
);

NAND2X1 _1546_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_870_),
    .B(_942_),
    .Y(_943_)
);

NAND2X1 _1547_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [4]),
    .B(_943_),
    .Y(_944_)
);

NOR2X1 _1548_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_941_),
    .B(_944_),
    .Y(_804_)
);

INVX1 _1549_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_945_)
);

MUX2X1 _1550_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [1]),
    .B(\u_rf_if.read_buf0 [2]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_946_)
);

MUX2X1 _1551_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_946_),
    .B(_945_),
    .S(_586__bF$buf3),
    .Y(_803_)
);

MUX2X1 _1552_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [2]),
    .B(\u_rf_if.read_buf0 [3]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_947_)
);

NOR2X1 _1553_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [1]),
    .B(_586__bF$buf2),
    .Y(_948_)
);

AOI21X1 _1554_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586__bF$buf1),
    .B(_947_),
    .C(_948_),
    .Y(_802_)
);

NAND2X1 _1555_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [2]),
    .B(_585_),
    .Y(_949_)
);

INVX1 _1556_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [4]),
    .Y(_950_)
);

NAND2X1 _1557_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(_950_),
    .Y(_951_)
);

OAI21X1 _1558_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(\u_rf_if.read_buf0 [3]),
    .C(_951_),
    .Y(_952_)
);

OAI21X1 _1559_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_585_),
    .B(_952_),
    .C(_949_),
    .Y(_801_)
);

NAND2X1 _1560_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [3]),
    .B(_585_),
    .Y(_953_)
);

NAND2X1 _1561_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_950_),
    .Y(_954_)
);

OAI21X1 _1562_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(\u_rf_if.read_buf0 [5]),
    .C(_954_),
    .Y(_955_)
);

OAI21X1 _1563_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_585_),
    .B(_955_),
    .C(_953_),
    .Y(_800_)
);

INVX1 _1564_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [5]),
    .Y(_956_)
);

NAND2X1 _1565_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_956_),
    .Y(_957_)
);

OAI21X1 _1566_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [6]),
    .C(_957_),
    .Y(_958_)
);

MUX2X1 _1567_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_958_),
    .B(_950_),
    .S(_586__bF$buf0),
    .Y(_799_)
);

INVX1 _1568_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [6]),
    .Y(_959_)
);

NAND2X1 _1569_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_959_),
    .Y(_960_)
);

OAI21X1 _1570_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [7]),
    .C(_960_),
    .Y(_961_)
);

MUX2X1 _1571_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_961_),
    .B(_956_),
    .S(_586__bF$buf4),
    .Y(_798_)
);

INVX1 _1572_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [7]),
    .Y(_962_)
);

NAND2X1 _1573_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_962_),
    .Y(_963_)
);

OAI21X1 _1574_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [8]),
    .C(_963_),
    .Y(_964_)
);

MUX2X1 _1575_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_964_),
    .B(_959_),
    .S(_586__bF$buf3),
    .Y(_797_)
);

INVX1 _1576_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [8]),
    .Y(_965_)
);

NAND2X1 _1577_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_965_),
    .Y(_966_)
);

OAI21X1 _1578_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.read_buf0 [9]),
    .C(_966_),
    .Y(_967_)
);

MUX2X1 _1579_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_967_),
    .B(_962_),
    .S(_586__bF$buf2),
    .Y(_796_)
);

INVX1 _1580_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [9]),
    .Y(_968_)
);

NAND2X1 _1581_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_968_),
    .Y(_969_)
);

OAI21X1 _1582_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.read_buf0 [10]),
    .C(_969_),
    .Y(_970_)
);

MUX2X1 _1583_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_970_),
    .B(_965_),
    .S(_586__bF$buf1),
    .Y(_795_)
);

INVX1 _1584_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [10]),
    .Y(_971_)
);

NAND2X1 _1585_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_971_),
    .Y(_972_)
);

OAI21X1 _1586_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(\u_rf_if.read_buf0 [11]),
    .C(_972_),
    .Y(_973_)
);

MUX2X1 _1587_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_973_),
    .B(_968_),
    .S(_586__bF$buf0),
    .Y(_794_)
);

INVX1 _1588_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [11]),
    .Y(_974_)
);

NAND2X1 _1589_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_974_),
    .Y(_975_)
);

OAI21X1 _1590_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(\u_rf_if.read_buf0 [12]),
    .C(_975_),
    .Y(_976_)
);

MUX2X1 _1591_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_976_),
    .B(_971_),
    .S(_586__bF$buf4),
    .Y(_793_)
);

INVX1 _1592_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [12]),
    .Y(_977_)
);

NAND2X1 _1593_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_977_),
    .Y(_978_)
);

OAI21X1 _1594_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [13]),
    .C(_978_),
    .Y(_979_)
);

MUX2X1 _1595_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_979_),
    .B(_974_),
    .S(_586__bF$buf3),
    .Y(_792_)
);

INVX1 _1596_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [13]),
    .Y(_980_)
);

NAND2X1 _1597_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_980_),
    .Y(_981_)
);

OAI21X1 _1598_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [14]),
    .C(_981_),
    .Y(_982_)
);

MUX2X1 _1599_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_982_),
    .B(_977_),
    .S(_586__bF$buf2),
    .Y(_791_)
);

INVX1 _1600_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [14]),
    .Y(_983_)
);

NAND2X1 _1601_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_983_),
    .Y(_984_)
);

OAI21X1 _1602_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [15]),
    .C(_984_),
    .Y(_985_)
);

MUX2X1 _1603_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_985_),
    .B(_980_),
    .S(_586__bF$buf1),
    .Y(_790_)
);

INVX1 _1604_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [15]),
    .Y(_986_)
);

NAND2X1 _1605_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_986_),
    .Y(_987_)
);

OAI21X1 _1606_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.read_buf0 [16]),
    .C(_987_),
    .Y(_988_)
);

MUX2X1 _1607_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_988_),
    .B(_983_),
    .S(_586__bF$buf0),
    .Y(_789_)
);

INVX1 _1608_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [16]),
    .Y(_989_)
);

NAND2X1 _1609_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_989_),
    .Y(_990_)
);

OAI21X1 _1610_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.read_buf0 [17]),
    .C(_990_),
    .Y(_991_)
);

MUX2X1 _1611_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_991_),
    .B(_986_),
    .S(_586__bF$buf4),
    .Y(_788_)
);

INVX1 _1612_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [17]),
    .Y(_992_)
);

NAND2X1 _1613_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_992_),
    .Y(_993_)
);

OAI21X1 _1614_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(\u_rf_if.read_buf0 [18]),
    .C(_993_),
    .Y(_994_)
);

MUX2X1 _1615_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_994_),
    .B(_989_),
    .S(_586__bF$buf3),
    .Y(_787_)
);

INVX1 _1616_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [18]),
    .Y(_995_)
);

NAND2X1 _1617_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_995_),
    .Y(_996_)
);

OAI21X1 _1618_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(\u_rf_if.read_buf0 [19]),
    .C(_996_),
    .Y(_997_)
);

MUX2X1 _1619_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_997_),
    .B(_992_),
    .S(_586__bF$buf2),
    .Y(_786_)
);

INVX1 _1620_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [19]),
    .Y(_998_)
);

NAND2X1 _1621_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_998_),
    .Y(_999_)
);

OAI21X1 _1622_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [20]),
    .C(_999_),
    .Y(_1000_)
);

MUX2X1 _1623_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1000_),
    .B(_995_),
    .S(_586__bF$buf1),
    .Y(_785_)
);

INVX1 _1624_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [20]),
    .Y(_1001_)
);

NAND2X1 _1625_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_1001_),
    .Y(_1002_)
);

OAI21X1 _1626_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [21]),
    .C(_1002_),
    .Y(_1003_)
);

MUX2X1 _1627_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1003_),
    .B(_998_),
    .S(_586__bF$buf0),
    .Y(_784_)
);

INVX1 _1628_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [21]),
    .Y(_1004_)
);

NAND2X1 _1629_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1004_),
    .Y(_1005_)
);

OAI21X1 _1630_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [22]),
    .C(_1005_),
    .Y(_1006_)
);

MUX2X1 _1631_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1006_),
    .B(_1001_),
    .S(_586__bF$buf4),
    .Y(_783_)
);

INVX1 _1632_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [22]),
    .Y(_1007_)
);

NAND2X1 _1633_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_1007_),
    .Y(_1008_)
);

OAI21X1 _1634_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.read_buf0 [23]),
    .C(_1008_),
    .Y(_1009_)
);

MUX2X1 _1635_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1009_),
    .B(_1004_),
    .S(_586__bF$buf3),
    .Y(_782_)
);

INVX1 _1636_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [23]),
    .Y(_1010_)
);

NAND2X1 _1637_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_1010_),
    .Y(_1011_)
);

OAI21X1 _1638_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.read_buf0 [24]),
    .C(_1011_),
    .Y(_1012_)
);

MUX2X1 _1639_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1012_),
    .B(_1007_),
    .S(_586__bF$buf2),
    .Y(_781_)
);

INVX1 _1640_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [24]),
    .Y(_1013_)
);

NAND2X1 _1641_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_1013_),
    .Y(_1014_)
);

OAI21X1 _1642_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(\u_rf_if.read_buf0 [25]),
    .C(_1014_),
    .Y(_1015_)
);

MUX2X1 _1643_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1015_),
    .B(_1010_),
    .S(_586__bF$buf1),
    .Y(_780_)
);

INVX1 _1644_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [25]),
    .Y(_1016_)
);

NAND2X1 _1645_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_1016_),
    .Y(_1017_)
);

OAI21X1 _1646_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(\u_rf_if.read_buf0 [26]),
    .C(_1017_),
    .Y(_1018_)
);

MUX2X1 _1647_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1018_),
    .B(_1013_),
    .S(_586__bF$buf0),
    .Y(_779_)
);

INVX1 _1648_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [26]),
    .Y(_1019_)
);

NAND2X1 _1649_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_1019_),
    .Y(_1020_)
);

OAI21X1 _1650_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [27]),
    .C(_1020_),
    .Y(_1021_)
);

MUX2X1 _1651_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1021_),
    .B(_1016_),
    .S(_586__bF$buf4),
    .Y(_778_)
);

INVX1 _1652_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [27]),
    .Y(_1022_)
);

NAND2X1 _1653_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_1022_),
    .Y(_1023_)
);

OAI21X1 _1654_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [28]),
    .C(_1023_),
    .Y(_1024_)
);

MUX2X1 _1655_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1024_),
    .B(_1019_),
    .S(_586__bF$buf3),
    .Y(_777_)
);

INVX1 _1656_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_1025_)
);

NAND2X1 _1657_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1025_),
    .Y(_1026_)
);

OAI21X1 _1658_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [29]),
    .C(_1026_),
    .Y(_1027_)
);

MUX2X1 _1659_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1027_),
    .B(_1022_),
    .S(_586__bF$buf2),
    .Y(_776_)
);

NAND2X1 _1660_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(_594_),
    .Y(_1028_)
);

AOI21X1 _1661_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(\u_rf_if.read_buf0 [29]),
    .C(_585_),
    .Y(_1029_)
);

AOI22X1 _1662_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1025_),
    .B(_585_),
    .C(_1029_),
    .D(_1028_),
    .Y(_775_)
);

MUX2X1 _1663_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(\u_rf_if.read_buf0 [31]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1030_)
);

NOR2X1 _1664_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [29]),
    .B(_586__bF$buf1),
    .Y(_1031_)
);

AOI21X1 _1665_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586__bF$buf0),
    .B(_1030_),
    .C(_1031_),
    .Y(_774_)
);

INVX1 _1666_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [0]),
    .Y(_1032_)
);

MUX2X1 _1667_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1032_),
    .B(_919_),
    .S(_810_),
    .Y(_773_)
);

INVX1 _1668_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .Y(_1033_)
);

INVX1 _1669_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_810_),
    .Y(_1034_)
);

OAI21X1 _1670_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_862_),
    .B(_592_),
    .C(raddr[1]),
    .Y(_1035_)
);

OAI21X1 _1671_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1033_),
    .B(_1034_),
    .C(_1035_),
    .Y(_772_)
);

MUX2X1 _1672_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_590_),
    .B(_910_),
    .S(_810_),
    .Y(_771_)
);

OAI21X1 _1673_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_862_),
    .B(_592_),
    .C(raddr[3]),
    .Y(_1036_)
);

OAI21X1 _1674_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_591_),
    .B(_1034_),
    .C(_1036_),
    .Y(_770_)
);

INVX1 _1675_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_reg [0]),
    .Y(_1037_)
);

NOR2X1 _1676_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[4]),
    .B(_810_),
    .Y(_1038_)
);

AOI21X1 _1677_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1037_),
    .B(_810_),
    .C(_1038_),
    .Y(_769_)
);

NOR2X1 _1678_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[5]),
    .B(_810_),
    .Y(_1039_)
);

AOI21X1 _1679_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_596_),
    .B(_810_),
    .C(_1039_),
    .Y(_768_)
);

INVX1 _1680_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_reg [2]),
    .Y(_1040_)
);

NOR2X1 _1681_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[6]),
    .B(_810_),
    .Y(_1041_)
);

AOI21X1 _1682_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1040_),
    .B(_810_),
    .C(_1041_),
    .Y(_767_)
);

OAI21X1 _1683_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [0]),
    .B(_879_),
    .C(i_rst_n_bF$buf2),
    .Y(_1042_)
);

NOR2X1 _1684_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [0]),
    .B(_1042_),
    .Y(_766_)
);

NOR2X1 _1685_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_942_),
    .B(_868_),
    .Y(_1043_)
);

NOR2X1 _1686_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1043_),
    .B(_1042_),
    .Y(_765_)
);

INVX1 _1687_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [2]),
    .Y(_1044_)
);

NAND2X1 _1688_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1044_),
    .B(_942_),
    .Y(_1045_)
);

OAI21X1 _1689_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .C(\u_rf_if.tx_state [2]),
    .Y(_1046_)
);

NAND2X1 _1690_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1046_),
    .B(_1045_),
    .Y(_1047_)
);

INVX1 _1691_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1047_),
    .Y(_1048_)
);

INVX1 _1692_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_880_),
    .Y(_1049_)
);

OAI21X1 _1693_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1049_),
    .B(_934_),
    .C(i_rst_n_bF$buf1),
    .Y(_1050_)
);

NOR2X1 _1694_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1048_),
    .B(_1050_),
    .Y(_764_)
);

INVX1 _1695_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1050_),
    .Y(_1051_)
);

INVX1 _1696_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [3]),
    .Y(_1052_)
);

INVX1 _1697_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1045_),
    .Y(_1053_)
);

OAI21X1 _1698_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1052_),
    .B(_1053_),
    .C(_943_),
    .Y(_1054_)
);

AND2X2 _1699_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1051_),
    .B(_1054_),
    .Y(_763_)
);

OAI21X1 _1700_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_922_),
    .B(_935_),
    .C(i_rst_n_bF$buf0),
    .Y(_1055_)
);

AOI21X1 _1701_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_918_),
    .B(_935_),
    .C(_1055_),
    .Y(_762_)
);

INVX1 _1702_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [1]),
    .Y(_1056_)
);

INVX1 _1703_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_898_),
    .Y(_1057_)
);

OAI21X1 _1704_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1057_),
    .B(_935_),
    .C(i_rst_n_bF$buf3),
    .Y(_1058_)
);

AOI21X1 _1705_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1056_),
    .B(_935_),
    .C(_1058_),
    .Y(_761_)
);

OAI21X1 _1706_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_913_),
    .B(_935_),
    .C(i_rst_n_bF$buf2),
    .Y(_1059_)
);

AOI21X1 _1707_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_909_),
    .B(_935_),
    .C(_1059_),
    .Y(_760_)
);

OAI21X1 _1708_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_895_),
    .B(_935_),
    .C(i_rst_n_bF$buf1),
    .Y(_1060_)
);

AOI21X1 _1709_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_891_),
    .B(_935_),
    .C(_1060_),
    .Y(_759_)
);

OAI21X1 _1710_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [4]),
    .B(_936_),
    .C(i_rst_n_bF$buf0),
    .Y(_1061_)
);

AOI21X1 _1711_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_518_),
    .B(_936_),
    .C(_1061_),
    .Y(_758_)
);

OAI21X1 _1712_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [5]),
    .B(_936_),
    .C(i_rst_n_bF$buf3),
    .Y(_1062_)
);

AOI21X1 _1713_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_515_),
    .B(_936_),
    .C(_1062_),
    .Y(_757_)
);

OAI21X1 _1714_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [6]),
    .B(_936_),
    .C(i_rst_n_bF$buf2),
    .Y(_1063_)
);

AOI21X1 _1715_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_521_),
    .B(_936_),
    .C(_1063_),
    .Y(_756_)
);

OAI21X1 _1716_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.last_req_key [7]),
    .B(_936_),
    .C(i_rst_n_bF$buf1),
    .Y(_1064_)
);

AOI21X1 _1717_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_513_),
    .B(_936_),
    .C(_1064_),
    .Y(_755_)
);

OAI21X1 _1718_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_935_),
    .C(i_rst_n_bF$buf0),
    .Y(_1065_)
);

AOI21X1 _1719_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_899_),
    .B(_935_),
    .C(_1065_),
    .Y(_754_)
);

NAND2X1 _1720_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [1]),
    .B(_526_),
    .Y(_1066_)
);

NOR2X1 _1721_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .B(_1066_),
    .Y(_753_)
);

NOR2X1 _1722_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .B(_525_),
    .Y(_752_)
);

INVX1 _1723_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [1]),
    .Y(_1067_)
);

NOR2X1 _1724_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1067_),
    .B(_583_),
    .Y(_1068_)
);

NAND2X1 _1725_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .B(_1068_),
    .Y(_1069_)
);

INVX1 _1726_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .Y(_1071_)
);

OAI21X1 _1727_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1067_),
    .B(_583_),
    .C(_1071_),
    .Y(_1072_)
);

NAND2X1 _1728_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1072_),
    .B(_1069_),
    .Y(_1073_)
);

NOR2X1 _1729_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1073_),
    .B(_525_),
    .Y(_751_)
);

NOR2X1 _1730_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_875_),
    .B(_524_),
    .Y(_1074_)
);

NOR2X1 _1731_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(_1074_),
    .Y(_1075_)
);

NAND2X1 _1732_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(_1074_),
    .Y(_1076_)
);

NAND2X1 _1733_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_526_),
    .B(_1076_),
    .Y(_1077_)
);

NOR2X1 _1734_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1075_),
    .B(_1077_),
    .Y(_750_)
);

INVX1 _1735_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .Y(_1078_)
);

NOR2X1 _1736_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1078_),
    .B(_1076_),
    .Y(_1079_)
);

INVX1 _1737_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1076_),
    .Y(_1080_)
);

OAI21X1 _1738_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_1080_),
    .C(_526_),
    .Y(_1081_)
);

NOR2X1 _1739_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1079_),
    .B(_1081_),
    .Y(_749_)
);

AND2X2 _1740_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1079_),
    .B(\u_rf_if.o_waddr [2]),
    .Y(_1082_)
);

OAI21X1 _1741_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(_1079_),
    .C(_526_),
    .Y(_1083_)
);

NOR2X1 _1742_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1083_),
    .B(_1082_),
    .Y(_748_)
);

NAND2X1 _1743_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1032_),
    .B(_810_),
    .Y(_1084_)
);

NOR2X1 _1744_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1085_)
);

INVX1 _1745_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.pending_read ),
    .Y(_1086_)
);

NOR2X1 _1746_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.prefetch_active ),
    .B(_1086_),
    .Y(_1087_)
);

NAND2X1 _1747_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1085_),
    .B(_1087_),
    .Y(_1088_)
);

INVX1 _1748_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1088_),
    .Y(_1089_)
);

OAI21X1 _1749_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_862_),
    .B(_592_),
    .C(\u_rf_if.issue_chunk [0]),
    .Y(_1090_)
);

AOI21X1 _1750_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1084_),
    .B(_1090_),
    .C(_1089_),
    .Y(_747_)
);

NOR2X1 _1751_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1033_),
    .B(_1032_),
    .Y(_1091_)
);

OR2X2 _1752_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1091_),
    .B(_589_),
    .Y(_1092_)
);

OAI21X1 _1753_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_810_),
    .C(_1088_),
    .Y(_1093_)
);

AOI21X1 _1754_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_810_),
    .B(_1092_),
    .C(_1093_),
    .Y(_746_)
);

NAND2X1 _1755_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1091_),
    .B(_810_),
    .Y(_1094_)
);

NOR2X1 _1756_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_590_),
    .B(_1094_),
    .Y(_1095_)
);

INVX1 _1757_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1094_),
    .Y(_1096_)
);

OAI21X1 _1758_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1096_),
    .C(_1088_),
    .Y(_1098_)
);

NOR2X1 _1759_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1095_),
    .B(_1098_),
    .Y(_745_)
);

OAI21X1 _1760_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1095_),
    .C(_1088_),
    .Y(_1099_)
);

AOI21X1 _1761_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1095_),
    .C(_1099_),
    .Y(_744_)
);

AOI21X1 _1762_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1095_),
    .B(\u_rf_if.issue_chunk [3]),
    .C(\u_rf_if.issue_idx [4]),
    .Y(_1100_)
);

NOR2X1 _1763_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1089_),
    .B(_1100_),
    .Y(_743_)
);

INVX1 _1764_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm ),
    .Y(_1101_)
);

MUX2X1 _1765_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1101_),
    .B(_1037_),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_742_)
);

OAI21X1 _1766_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_877_),
    .C(i_rst_n_bF$buf3),
    .Y(_1102_)
);

OAI21X1 _1767_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [0]),
    .B(_879_),
    .C(\u_rf_if.launch_pending ),
    .Y(_1103_)
);

NOR2X1 _1768_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1102_),
    .B(_1103_),
    .Y(_740_)
);

NOR2X1 _1769_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1049_),
    .B(_934_),
    .Y(_1104_)
);

OAI21X1 _1770_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_879_),
    .B(_1104_),
    .C(_1113_),
    .Y(_1105_)
);

AOI21X1 _1771_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1105_),
    .B(_935_),
    .C(_941_),
    .Y(_739_)
);

OAI21X1 _1772_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_862_),
    .B(_592_),
    .C(_1088_),
    .Y(_738_)
);

OAI21X1 _1773_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_583_),
    .B(_525_),
    .C(\u_rf_if.wen0_r ),
    .Y(_1106_)
);

NOR2X1 _1774_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_876_),
    .B(_1106_),
    .Y(_1107_)
);

INVX1 _1775_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_1108_)
);

INVX1 _1776_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_1115_)
);

NOR2X1 _1777_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_1116_)
);

OAI21X1 _1778_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1108_),
    .B(_1115_),
    .C(_1116_),
    .Y(_1117_)
);

AND2X2 _1779_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_577_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_1118_)
);

NAND2X1 _1780_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_1118_),
    .Y(_1119_)
);

NOR2X1 _1781_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1117_),
    .B(_1119_),
    .Y(_1120_)
);

NOR2X1 _1782_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .B(\u_rf_if.o_waddr [0]),
    .Y(_1121_)
);

NOR2X1 _1783_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .B(\u_rf_if.o_waddr [2]),
    .Y(_1122_)
);

NAND2X1 _1784_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1121_),
    .B(_1122_),
    .Y(_1123_)
);

NOR2X1 _1785_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1071_),
    .B(_1123_),
    .Y(_1124_)
);

NAND3X1 _1786_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1120_),
    .B(_1124_),
    .C(_1107_),
    .Y(_1125_)
);

INVX1 _1787_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1107_),
    .Y(_1126_)
);

OAI21X1 _1788_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1123_),
    .B(_1126_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1127_)
);

AOI21X1 _1789_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1127_),
    .B(_1125_),
    .C(_527_),
    .Y(_737_)
);

NOR2X1 _1790_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.o_cnt [2]),
    .Y(_1128_)
);

NOR2X1 _1791_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1128_),
    .B(_569_),
    .Y(_1070_[0])
);

NOR2X1 _1792_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_569_),
    .Y(_1129_)
);

NOR2X1 _1793_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1129_),
    .B(_567_),
    .Y(_1097_[1])
);

NOR2X1 _1794_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(_567_),
    .Y(_1130_)
);

NOR2X1 _1795_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(_565_),
    .Y(_1097_[2])
);

AND2X2 _1796_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1088_),
    .B(\u_rf_if.issue_idx [5]),
    .Y(_733_)
);

INVX1 _1797_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1113_),
    .Y(_1131_)
);

NOR2X1 _1798_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1052_),
    .B(_1053_),
    .Y(_1132_)
);

NAND2X1 _1799_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_942_),
    .B(_877_),
    .Y(_1133_)
);

NAND2X1 _1800_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_868_),
    .Y(_1134_)
);

NAND2X1 _1801_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_867_),
    .B(_513_),
    .Y(_1135_)
);

NAND2X1 _1802_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_866_),
    .B(_521_),
    .Y(_1136_)
);

NAND3X1 _1803_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1043_),
    .B(_1135_),
    .C(_1136_),
    .Y(_1114_)
);

NAND3X1 _1804_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1133_),
    .B(_1134_),
    .C(_1114_),
    .Y(_1_)
);

NAND3X1 _1805_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1046_),
    .B(_1132_),
    .C(_1_),
    .Y(_2_)
);

INVX1 _1806_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_r [0]),
    .Y(_3_)
);

NAND2X1 _1807_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_1123_),
    .Y(_4_)
);

INVX1 _1808_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_4_),
    .Y(_5_)
);

OAI21X1 _1809_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1124_),
    .B(_5_),
    .C(_1120_),
    .Y(_6_)
);

INVX1 _1810_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_6_),
    .Y(_7_)
);

AOI21X1 _1811_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_7_),
    .B(\u_rf_if.wdata0_next [0]),
    .C(_867_),
    .Y(_8_)
);

OAI21X1 _1812_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_3_),
    .B(_7_),
    .C(_8_),
    .Y(_9_)
);

NAND3X1 _1813_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1043_),
    .B(_9_),
    .C(_524_),
    .Y(_10_)
);

INVX2 _1814_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .Y(_11_)
);

NAND2X1 _1815_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_11_),
    .Y(_12_)
);

NOR2X1 _1816_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_554_),
    .B(_12_),
    .Y(_13_)
);

INVX1 _1817_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .Y(_14_)
);

NAND2X1 _1818_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_572_),
    .B(_573_),
    .Y(_15_)
);

NOR2X1 _1819_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(_15_),
    .Y(_16_)
);

NAND2X1 _1820_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(_16_),
    .Y(_17_)
);

INVX1 _1821_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .Y(_18_)
);

AOI21X1 _1822_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .B(_11_),
    .C(_557_),
    .Y(_19_)
);

NAND2X1 _1823_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_575_),
    .B(_19_),
    .Y(_20_)
);

NOR2X1 _1824_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_581_),
    .B(_552_),
    .Y(_21_)
);

OAI21X1 _1825_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_536_),
    .C(_21_),
    .Y(_22_)
);

NAND2X1 _1826_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_20_),
    .B(_22_),
    .Y(_23_)
);

INVX1 _1827_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_23__bF$buf4),
    .Y(_24_)
);

NOR2X1 _1828_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18_),
    .B(_24_),
    .Y(_25_)
);

INVX1 _1829_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [1]),
    .Y(_26_)
);

NAND2X1 _1830_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_554_),
    .B(_26_),
    .Y(_27_)
);

NOR2X1 _1831_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_27_),
    .Y(_28_)
);

NAND2X1 _1832_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_28_),
    .Y(_29_)
);

MUX2X1 _1833_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[0]),
    .B(rf_wreg0_to_if[0]),
    .S(_29_),
    .Y(_30_)
);

NOR2X1 _1834_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_11_),
    .B(_554_),
    .Y(_31_)
);

INVX1 _1835_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_31_),
    .Y(_32_)
);

OAI21X1 _1836_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_32_),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_33_)
);

INVX1 _1837_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_33_),
    .Y(_34_)
);

NAND2X1 _1838_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_34_),
    .B(_565_),
    .Y(_35_)
);

OAI21X1 _1839_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_565_),
    .B(_30_),
    .C(_35_),
    .Y(_36_)
);

OAI21X1 _1840_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_572_),
    .B(_570_),
    .C(_573_),
    .Y(_37_)
);

AND2X2 _1841_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .B(_37_),
    .Y(_38_)
);

AOI22X1 _1842_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_36_),
    .B(_38_),
    .C(_25_),
    .D(_14_),
    .Y(_39_)
);

INVX1 _1843_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_40_)
);

INVX1 _1844_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_41_)
);

OAI22X1 _1845_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_532_),
    .B(_26_),
    .C(_41_),
    .D(_32_),
    .Y(_42_)
);

NOR2X1 _1846_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_43_)
);

OR2X2 _1847_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_28_),
    .B(_43_),
    .Y(_44_)
);

OAI21X1 _1848_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_42_),
    .B(_44_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_45_)
);

OR2X2 _1849_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_45_),
    .B(_40_),
    .Y(_46_)
);

NAND2X1 _1850_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_40_),
    .B(_45_),
    .Y(_47_)
);

NAND2X1 _1851_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_47_),
    .B(_46_),
    .Y(_48_)
);

OR2X2 _1852_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_39_),
    .B(_48_),
    .Y(_49_)
);

NAND2X1 _1853_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_48_),
    .B(_39_),
    .Y(_50_)
);

NAND3X1 _1854_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_17_),
    .B(_50_),
    .C(_49_),
    .Y(_51_)
);

NAND2X1 _1855_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [2]),
    .B(_16_),
    .Y(_52_)
);

AND2X2 _1856_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_53_)
);

NOR2X1 _1857_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_54_)
);

NOR2X1 _1858_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_54_),
    .B(_53_),
    .Y(_55_)
);

INVX1 _1859_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_55_),
    .Y(_56_)
);

NOR2X1 _1860_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_56_),
    .B(_52_),
    .Y(_57_)
);

AOI21X1 _1861_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_16_),
    .B(\u_cpu.state.cnt_r [2]),
    .C(_55_),
    .Y(_58_)
);

NOR2X1 _1862_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_58_),
    .B(_57_),
    .Y(_59_)
);

NOR2X1 _1863_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_11_),
    .B(_532_),
    .Y(_60_)
);

INVX1 _1864_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_25_),
    .Y(_61_)
);

NOR2X1 _1865_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(_945_),
    .Y(_62_)
);

NAND2X1 _1866_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(_62_),
    .Y(_63_)
);

INVX1 _1867_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.add_cy_r ),
    .Y(_64_)
);

OAI21X1 _1868_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(_945_),
    .C(_64_),
    .Y(_65_)
);

NAND2X1 _1869_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_65_),
    .B(_63_),
    .Y(_66_)
);

NAND2X1 _1870_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1108_),
    .B(_36_),
    .Y(_67_)
);

INVX1 _1871_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_67_),
    .Y(_68_)
);

OAI21X1 _1872_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_1117_),
    .C(_68_),
    .Y(_69_)
);

NOR2X1 _1873_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_1117_),
    .Y(_70_)
);

NAND2X1 _1874_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_70_),
    .B(_67_),
    .Y(_71_)
);

NAND2X1 _1875_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_71_),
    .B(_69_),
    .Y(_72_)
);

OR2X2 _1876_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_72_),
    .B(_66_),
    .Y(_73_)
);

NAND2X1 _1877_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_66_),
    .B(_72_),
    .Y(_74_)
);

NAND2X1 _1878_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_74_),
    .B(_73_),
    .Y(_75_)
);

INVX1 _1879_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_75_),
    .Y(_76_)
);

AND2X2 _1880_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1116_),
    .B(_580_),
    .Y(_77_)
);

INVX1 _1881_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_62_),
    .Y(_78_)
);

NOR2X1 _1882_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_78_),
    .B(_67_),
    .Y(_79_)
);

AOI22X1 _1883_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_578_),
    .B(_79_),
    .C(_76_),
    .D(_77_),
    .Y(_80_)
);

INVX1 _1884_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_81_)
);

OAI21X1 _1885_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(_945_),
    .C(_67_),
    .Y(_82_)
);

INVX1 _1886_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_82_),
    .Y(_83_)
);

NOR2X1 _1887_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_79_),
    .B(_83_),
    .Y(_84_)
);

AND2X2 _1888_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_84_),
    .B(_81_),
    .Y(_85_)
);

NOR2X1 _1889_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_530_),
    .B(_17_),
    .Y(_86_)
);

AOI22X1 _1890_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_86_),
    .C(_85_),
    .D(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_87_)
);

NAND3X1 _1891_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_80_),
    .B(_87_),
    .C(_61_),
    .Y(_88_)
);

AOI22X1 _1892_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_59_),
    .B(_60_),
    .C(_88_),
    .D(_1118_),
    .Y(_89_)
);

OAI21X1 _1893_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_14_),
    .B(_51_),
    .C(_89_),
    .Y(\u_cpu.o_wdata0 )
);

NAND2X1 _1894_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_7_),
    .B(\u_cpu.o_wdata0 ),
    .Y(_90_)
);

AOI21X1 _1895_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_6_),
    .B(\u_rf_if.wdata0_next [0]),
    .C(\u_rf_if.tx_state [0]),
    .Y(_91_)
);

AOI21X1 _1896_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_90_),
    .B(_91_),
    .C(_10_),
    .Y(_92_)
);

NAND2X1 _1897_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_868_),
    .B(_922_),
    .Y(_93_)
);

NAND2X1 _1898_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_942_),
    .B(_1057_),
    .Y(_94_)
);

NAND3X1 _1899_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1048_),
    .B(_93_),
    .C(_94_),
    .Y(_95_)
);

NAND2X1 _1900_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_868_),
    .B(_884_),
    .Y(_96_)
);

INVX1 _1901_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_515_),
    .Y(_97_)
);

NOR2X1 _1902_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_867_),
    .B(_913_),
    .Y(_98_)
);

OAI21X1 _1903_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.tx_state [0]),
    .B(_895_),
    .C(_1043_),
    .Y(_99_)
);

OAI21X1 _1904_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_98_),
    .B(_99_),
    .C(_1047_),
    .Y(_100_)
);

AOI21X1 _1905_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_97_),
    .B(_942_),
    .C(_100_),
    .Y(_101_)
);

AOI21X1 _1906_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_101_),
    .B(_96_),
    .C(_1054_),
    .Y(_102_)
);

OAI21X1 _1907_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_95_),
    .B(_92_),
    .C(_102_),
    .Y(_103_)
);

AOI21X1 _1908_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_103_),
    .B(_2_),
    .C(_1131_),
    .Y(_1111_)
);

AOI21X1 _1909_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_564_),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_rf_if.ready_pulse ),
    .Y(_104_)
);

NAND2X1 _1910_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_104_),
    .B(_526_),
    .Y(_731_)
);

INVX1 _1911_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_105_)
);

NOR2X1 _1912_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_11_),
    .B(_562_),
    .Y(_106_)
);

INVX1 _1913_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.cmp_r ),
    .Y(_107_)
);

NAND2X1 _1914_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_107_),
    .B(_17_),
    .Y(_108_)
);

NAND2X1 _1915_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_579_),
    .Y(_109_)
);

NOR2X1 _1916_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_109_),
    .B(_76_),
    .Y(_110_)
);

OAI21X1 _1917_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_66_),
    .B(_72_),
    .C(_63_),
    .Y(_111_)
);

INVX1 _1918_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_111_),
    .Y(_112_)
);

OAI21X1 _1919_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(_113_)
);

NAND2X1 _1920_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_113_),
    .B(_84_),
    .Y(_114_)
);

OR2X2 _1921_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_112_),
    .B(_114_),
    .Y(_115_)
);

NAND2X1 _1922_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_114_),
    .B(_112_),
    .Y(_116_)
);

NAND2X1 _1923_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_116_),
    .B(_115_),
    .Y(_117_)
);

AOI22X1 _1924_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_117_),
    .B(_109_),
    .C(_108_),
    .D(_110_),
    .Y(_118_)
);

NAND2X1 _1925_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(_118_),
    .Y(_119_)
);

OR2X2 _1926_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_118_),
    .B(\u_cpu.bne_or_bge ),
    .Y(_120_)
);

NAND2X1 _1927_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_119_),
    .B(_120_),
    .Y(_121_)
);

OAI21X1 _1928_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_121_),
    .C(_106_),
    .Y(_122_)
);

OAI21X1 _1929_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_105_),
    .B(_565_),
    .C(_122_),
    .Y(_730_)
);

OAI21X1 _1930_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_581_),
    .B(_565_),
    .C(_562_),
    .Y(_729_)
);

NOR2X1 _1931_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(_565_),
    .Y(_123_)
);

NOR2X1 _1932_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_557_),
    .B(_550_),
    .Y(_124_)
);

INVX1 _1933_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_124__bF$buf4),
    .Y(_125_)
);

AOI21X1 _1934_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_123_),
    .B(\u_cpu.state.ibus_cyc ),
    .C(_941_),
    .Y(_126_)
);

OAI21X1 _1935_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_123_),
    .B(_125_),
    .C(_126_),
    .Y(_728_)
);

OAI21X1 _1936_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .B(_1082_),
    .C(_526_),
    .Y(_127_)
);

AOI21X1 _1937_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .B(_1082_),
    .C(_127_),
    .Y(_727_)
);

NOR2X1 _1938_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_1108_),
    .Y(_128_)
);

INVX1 _1939_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_128_),
    .Y(_129_)
);

AOI21X1 _1940_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_129_),
    .B(_12_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_130_)
);

NOR2X1 _1941_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(rf_wreg0_to_if[1]),
    .Y(_131_)
);

NOR2X1 _1942_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[3]),
    .B(rf_wreg0_to_if[0]),
    .Y(_132_)
);

AND2X2 _1943_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_131_),
    .B(_132_),
    .Y(_133_)
);

AOI21X1 _1944_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_523_),
    .B(_133_),
    .C(_130_),
    .Y(_134_)
);

NAND2X1 _1945_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_134_),
    .B(\u_rf_if.rtrig0 ),
    .Y(_135_)
);

OAI21X1 _1946_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_125_),
    .B(_135_),
    .C(_1106_),
    .Y(_726_)
);

NAND2X1 _1947_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_reg [13]),
    .Y(_136_)
);

OAI21X1 _1948_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_579_),
    .C(_136_),
    .Y(_725_)
);

NAND2X1 _1949_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_reg [12]),
    .Y(_137_)
);

OAI21X1 _1950_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf6),
    .B(_81_),
    .C(_137_),
    .Y(_724_)
);

MUX2X1 _1951_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_366_),
    .B(_1108_),
    .S(mem_ibus_ack_bF$buf5),
    .Y(_723_)
);

NOR2X1 _1952_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_138_)
);

AOI21X1 _1953_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(_368_),
    .C(_138_),
    .Y(_722_)
);

MUX2X1 _1954_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_370_),
    .B(_26_),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_721_)
);

NAND2X1 _1955_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_reg [2]),
    .Y(_139_)
);

OAI21X1 _1956_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(_532_),
    .C(_139_),
    .Y(_720_)
);

NAND3X1 _1957_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(\u_rf_if.read_buf0 [30]),
    .C(_587_),
    .Y(_140_)
);

NAND2X1 _1958_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [31]),
    .Y(_141_)
);

NOR2X1 _1959_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_587_),
    .Y(_142_)
);

NAND3X1 _1960_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.shift_rx [0]),
    .B(_142_),
    .C(_512_),
    .Y(_143_)
);

NAND3X1 _1961_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_140_),
    .B(_141_),
    .C(_143_),
    .Y(_718_)
);

INVX1 _1962_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_457_),
    .Y(_144_)
);

MUX2X1 _1963_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_144_),
    .B(_594_),
    .S(\u_rf_if.stream_cnt [0]),
    .Y(_717_)
);

NAND2X1 _1964_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_455_),
    .B(_454_),
    .Y(_145_)
);

NAND3X1 _1965_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_145_),
    .C(_452_),
    .Y(_146_)
);

OAI21X1 _1966_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_454_),
    .B(_144_),
    .C(_146_),
    .Y(_716_)
);

INVX1 _1967_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_451_),
    .Y(_147_)
);

OAI21X1 _1968_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_455_),
    .B(_454_),
    .C(_456_),
    .Y(_148_)
);

NAND3X1 _1969_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_148_),
    .C(_147_),
    .Y(_149_)
);

OAI21X1 _1970_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_456_),
    .B(_144_),
    .C(_149_),
    .Y(_715_)
);

AOI21X1 _1971_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_450_),
    .B(\u_rf_if.stream_active_bF$buf1 ),
    .C(_457_),
    .Y(_150_)
);

AOI21X1 _1972_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_451_),
    .B(\u_rf_if.stream_active_bF$buf0 ),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_151_)
);

NOR2X1 _1973_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_151_),
    .B(_150_),
    .Y(_714_)
);

MUX2X1 _1974_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_364_),
    .B(_11_),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_713_)
);

NAND2X1 _1975_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_mem_serial.shift_reg [14]),
    .Y(_152_)
);

OAI21X1 _1976_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf4),
    .B(_580_),
    .C(_152_),
    .Y(_712_)
);

NOR2X1 _1977_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_582_),
    .B(_420_),
    .Y(_153_)
);

INVX1 _1978_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_153_),
    .Y(_154_)
);

OAI21X1 _1979_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(_41_),
    .C(_154_),
    .Y(_711_)
);

NAND2X1 _1980_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_reg [30]),
    .Y(_155_)
);

OAI21X1 _1981_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_1115_),
    .C(_155_),
    .Y(_710_)
);

AOI21X1 _1982_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1049_),
    .B(_907_),
    .C(_1102_),
    .Y(_709_)
);

INVX1 _1983_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[3]),
    .Y(_156_)
);

NOR2X1 _1984_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(_558_),
    .Y(_157_)
);

INVX1 _1985_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_157_),
    .Y(_158_)
);

OAI21X1 _1986_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_531_),
    .Y(_159_)
);

OAI21X1 _1987_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_32_),
    .C(_159_),
    .Y(_160_)
);

OAI21X1 _1988_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf6),
    .B(_160_),
    .C(_158_),
    .Y(_161_)
);

MUX2X1 _1989_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [18]),
    .B(rf_read_reg0_to_if[4]),
    .S(mem_ibus_ack_bF$buf5),
    .Y(_162_)
);

MUX2X1 _1990_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_156_),
    .B(_162_),
    .S(_161_),
    .Y(_708_)
);

INVX1 _1991_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[2]),
    .Y(_163_)
);

MUX2X1 _1992_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [17]),
    .B(rf_read_reg0_to_if[3]),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_164_)
);

MUX2X1 _1993_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_163_),
    .B(_164_),
    .S(_161_),
    .Y(_707_)
);

MUX2X1 _1994_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [16]),
    .B(rf_read_reg0_to_if[2]),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_165_)
);

MUX2X1 _1995_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_595_),
    .B(_165_),
    .S(_161_),
    .Y(_706_)
);

MUX2X1 _1996_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [15]),
    .B(rf_read_reg0_to_if[1]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_166_)
);

MUX2X1 _1997_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1101_),
    .B(_166_),
    .S(_161_),
    .Y(_705_)
);

INVX1 _1998_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_167_)
);

OAI21X1 _1999_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_1101_),
    .C(_152_),
    .Y(_168_)
);

NOR2X1 _2000_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_168_),
    .B(_161_),
    .Y(_169_)
);

AOI21X1 _2001_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_167_),
    .B(_161_),
    .C(_169_),
    .Y(_704_)
);

INVX1 _2002_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_170_)
);

OAI21X1 _2003_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(_167_),
    .C(_136_),
    .Y(_171_)
);

NOR2X1 _2004_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_171_),
    .B(_161_),
    .Y(_172_)
);

AOI21X1 _2005_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_170_),
    .B(_161_),
    .C(_172_),
    .Y(_703_)
);

INVX1 _2006_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_173_)
);

OAI21X1 _2007_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf6),
    .B(_170_),
    .C(_137_),
    .Y(_174_)
);

NOR2X1 _2008_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_174_),
    .B(_161_),
    .Y(_175_)
);

AOI21X1 _2009_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_173_),
    .B(_161_),
    .C(_175_),
    .Y(_702_)
);

INVX1 _2010_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_176_)
);

OAI21X1 _2011_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf5),
    .B(_173_),
    .C(_154_),
    .Y(_177_)
);

NOR2X1 _2012_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_177_),
    .B(_161_),
    .Y(_178_)
);

AOI21X1 _2013_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_176_),
    .B(_161_),
    .C(_178_),
    .Y(_701_)
);

INVX1 _2014_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .Y(_179_)
);

NAND2X1 _2015_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_43_),
    .B(_138_),
    .Y(_180_)
);

OAI21X1 _2016_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_532_),
    .B(_180_),
    .C(_158_),
    .Y(_181_)
);

MUX2X1 _2017_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_182_)
);

MUX2X1 _2018_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_182_),
    .S(_181_),
    .Y(_700_)
);

INVX1 _2019_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .Y(_183_)
);

MUX2X1 _2020_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_184_)
);

MUX2X1 _2021_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_183_),
    .B(_184_),
    .S(_181_),
    .Y(_699_)
);

INVX1 _2022_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .Y(_185_)
);

MUX2X1 _2023_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_186_)
);

MUX2X1 _2024_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_185_),
    .B(_186_),
    .S(_181_),
    .Y(_698_)
);

INVX1 _2025_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .Y(_187_)
);

MUX2X1 _2026_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(mem_ibus_ack_bF$buf1),
    .Y(_188_)
);

MUX2X1 _2027_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_187_),
    .B(_188_),
    .S(_181_),
    .Y(_697_)
);

INVX1 _2028_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .Y(_189_)
);

MUX2X1 _2029_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_190_)
);

MUX2X1 _2030_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_189_),
    .B(_190_),
    .S(_181_),
    .Y(_696_)
);

INVX1 _2031_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[3]),
    .Y(_191_)
);

OAI21X1 _2032_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_11_),
    .B(_554_),
    .C(_128_),
    .Y(_192_)
);

OAI21X1 _2033_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf6),
    .B(_192_),
    .C(_158_),
    .Y(_193_)
);

MUX2X1 _2034_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [23]),
    .B(rf_read_reg1_to_if[4]),
    .S(mem_ibus_ack_bF$buf5),
    .Y(_194_)
);

MUX2X1 _2035_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_191_),
    .B(_194_),
    .S(_193_),
    .Y(_695_)
);

INVX1 _2036_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[2]),
    .Y(_195_)
);

MUX2X1 _2037_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [22]),
    .B(rf_read_reg1_to_if[3]),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_196_)
);

MUX2X1 _2038_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_195_),
    .B(_196_),
    .S(_193_),
    .Y(_694_)
);

INVX1 _2039_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[1]),
    .Y(_197_)
);

MUX2X1 _2040_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [21]),
    .B(rf_read_reg1_to_if[2]),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_198_)
);

MUX2X1 _2041_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_197_),
    .B(_198_),
    .S(_193_),
    .Y(_693_)
);

INVX1 _2042_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[0]),
    .Y(_199_)
);

OAI21X1 _2043_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(_197_),
    .C(_154_),
    .Y(_200_)
);

NOR2X1 _2044_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_200_),
    .B(_193_),
    .Y(_201_)
);

AOI21X1 _2045_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_199_),
    .B(_193_),
    .C(_201_),
    .Y(_692_)
);

NAND2X1 _2046_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_558_),
    .B(_130_),
    .Y(_202_)
);

INVX1 _2047_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_202_),
    .Y(_203_)
);

NOR2X1 _2048_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_203_),
    .Y(_204_)
);

MUX2X1 _2049_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [10]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_205_)
);

NAND2X1 _2050_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[3]),
    .B(_204_),
    .Y(_206_)
);

OAI21X1 _2051_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_204_),
    .B(_205_),
    .C(_206_),
    .Y(_691_)
);

MUX2X1 _2052_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [9]),
    .B(rf_wreg0_to_if[3]),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_207_)
);

NAND2X1 _2053_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[2]),
    .B(_204_),
    .Y(_208_)
);

OAI21X1 _2054_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_204_),
    .B(_207_),
    .C(_208_),
    .Y(_690_)
);

MUX2X1 _2055_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [8]),
    .B(rf_wreg0_to_if[2]),
    .S(mem_ibus_ack_bF$buf5),
    .Y(_209_)
);

NAND2X1 _2056_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[1]),
    .B(_204_),
    .Y(_210_)
);

OAI21X1 _2057_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_204_),
    .B(_209_),
    .C(_210_),
    .Y(_689_)
);

NAND2X1 _2058_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[1]),
    .B(_582_),
    .Y(_211_)
);

AOI22X1 _2059_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_204_),
    .D(rf_wreg0_to_if[0]),
    .Y(_212_)
);

OAI21X1 _2060_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_202_),
    .B(_211_),
    .C(_212_),
    .Y(_688_)
);

NOR2X1 _2061_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_213_)
);

AOI21X1 _2062_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(_482_),
    .C(_213_),
    .Y(_687_)
);

INVX1 _2063_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[4]),
    .Y(_214_)
);

NAND2X1 _2064_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_582_),
    .B(_34_),
    .Y(_215_)
);

OAI21X1 _2065_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_cpu.branch_op ),
    .C(_215_),
    .Y(_216_)
);

OAI21X1 _2066_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(rf_read_reg1_to_if[0]),
    .C(_216_),
    .Y(_217_)
);

AOI21X1 _2067_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_reg [19]),
    .C(_161_),
    .Y(_218_)
);

AOI22X1 _2068_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_214_),
    .B(_161_),
    .C(_218_),
    .D(_217_),
    .Y(_686_)
);

AOI22X1 _2069_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf6),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_157_),
    .D(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_219_)
);

OAI21X1 _2070_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_557_),
    .B(_215_),
    .C(_219_),
    .Y(_685_)
);

INVX1 _2071_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_220_)
);

INVX1 _2072_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_221_)
);

NAND2X1 _2073_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_532_),
    .Y(_222_)
);

AOI21X1 _2074_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .C(\u_cpu.decode.opcode [1]),
    .Y(_223_)
);

AOI22X1 _2075_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_532_),
    .C(_33_),
    .D(_223_),
    .Y(_224_)
);

OAI21X1 _2076_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_223_),
    .C(_224_),
    .Y(_225_)
);

OAI21X1 _2077_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_221_),
    .B(_222_),
    .C(_225_),
    .Y(_226_)
);

NAND2X1 _2078_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_582_),
    .B(_226_),
    .Y(_227_)
);

AOI21X1 _2079_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_mem_serial.shift_reg [30]),
    .C(_181_),
    .Y(_228_)
);

AOI22X1 _2080_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_220_),
    .B(_181_),
    .C(_227_),
    .D(_228_),
    .Y(_684_)
);

INVX1 _2081_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[4]),
    .Y(_229_)
);

NOR2X1 _2082_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf4),
    .B(_189_),
    .Y(_230_)
);

AOI21X1 _2083_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_reg [24]),
    .C(_230_),
    .Y(_231_)
);

MUX2X1 _2084_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_229_),
    .B(_231_),
    .S(_193_),
    .Y(_683_)
);

AOI22X1 _2085_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_reg [11]),
    .C(_203_),
    .D(_230_),
    .Y(_232_)
);

NAND2X1 _2086_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_204_),
    .Y(_233_)
);

NAND2X1 _2087_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_232_),
    .B(_233_),
    .Y(_682_)
);

INVX1 _2088_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [28]),
    .Y(_234_)
);

INVX1 _2089_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [29]),
    .Y(_235_)
);

MUX2X1 _2090_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_235_),
    .B(_234_),
    .S(_23__bF$buf3),
    .Y(_681_)
);

INVX1 _2091_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [27]),
    .Y(_236_)
);

MUX2X1 _2092_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_234_),
    .B(_236_),
    .S(_23__bF$buf2),
    .Y(_680_)
);

INVX1 _2093_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [26]),
    .Y(_237_)
);

MUX2X1 _2094_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_236_),
    .B(_237_),
    .S(_23__bF$buf1),
    .Y(_679_)
);

INVX1 _2095_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [25]),
    .Y(_238_)
);

MUX2X1 _2096_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_237_),
    .B(_238_),
    .S(_23__bF$buf0),
    .Y(_678_)
);

INVX1 _2097_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [24]),
    .Y(_239_)
);

MUX2X1 _2098_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_238_),
    .B(_239_),
    .S(_23__bF$buf4),
    .Y(_677_)
);

INVX1 _2099_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [23]),
    .Y(_240_)
);

MUX2X1 _2100_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_239_),
    .B(_240_),
    .S(_23__bF$buf3),
    .Y(_676_)
);

INVX1 _2101_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [22]),
    .Y(_241_)
);

MUX2X1 _2102_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_240_),
    .B(_241_),
    .S(_23__bF$buf2),
    .Y(_675_)
);

INVX1 _2103_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [21]),
    .Y(_242_)
);

MUX2X1 _2104_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_241_),
    .B(_242_),
    .S(_23__bF$buf1),
    .Y(_674_)
);

INVX1 _2105_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_243_)
);

MUX2X1 _2106_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_242_),
    .B(_243_),
    .S(_23__bF$buf0),
    .Y(_673_)
);

INVX1 _2107_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [19]),
    .Y(_244_)
);

MUX2X1 _2108_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_243_),
    .B(_244_),
    .S(_23__bF$buf4),
    .Y(_672_)
);

INVX1 _2109_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [18]),
    .Y(_245_)
);

MUX2X1 _2110_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_244_),
    .B(_245_),
    .S(_23__bF$buf3),
    .Y(_671_)
);

INVX1 _2111_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [17]),
    .Y(_246_)
);

MUX2X1 _2112_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_245_),
    .B(_246_),
    .S(_23__bF$buf2),
    .Y(_670_)
);

INVX1 _2113_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_247_)
);

MUX2X1 _2114_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_246_),
    .B(_247_),
    .S(_23__bF$buf1),
    .Y(_669_)
);

INVX1 _2115_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [15]),
    .Y(_248_)
);

MUX2X1 _2116_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_247_),
    .B(_248_),
    .S(_23__bF$buf0),
    .Y(_668_)
);

INVX1 _2117_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [14]),
    .Y(_249_)
);

MUX2X1 _2118_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_248_),
    .B(_249_),
    .S(_23__bF$buf4),
    .Y(_667_)
);

INVX1 _2119_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [13]),
    .Y(_250_)
);

MUX2X1 _2120_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_249_),
    .B(_250_),
    .S(_23__bF$buf3),
    .Y(_666_)
);

INVX1 _2121_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_251_)
);

MUX2X1 _2122_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_250_),
    .B(_251_),
    .S(_23__bF$buf2),
    .Y(_665_)
);

INVX1 _2123_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [11]),
    .Y(_252_)
);

MUX2X1 _2124_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_251_),
    .B(_252_),
    .S(_23__bF$buf1),
    .Y(_664_)
);

MUX2X1 _2125_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_252_),
    .B(_388_),
    .S(_23__bF$buf0),
    .Y(_663_)
);

MUX2X1 _2126_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_388_),
    .B(_394_),
    .S(_23__bF$buf4),
    .Y(_662_)
);

MUX2X1 _2127_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_394_),
    .B(_400_),
    .S(_23__bF$buf3),
    .Y(_661_)
);

MUX2X1 _2128_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_400_),
    .B(_406_),
    .S(_23__bF$buf2),
    .Y(_660_)
);

MUX2X1 _2129_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_406_),
    .B(_412_),
    .S(_23__bF$buf1),
    .Y(_659_)
);

MUX2X1 _2130_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_412_),
    .B(_418_),
    .S(_23__bF$buf0),
    .Y(_658_)
);

MUX2X1 _2131_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_418_),
    .B(_424_),
    .S(_23__bF$buf4),
    .Y(_657_)
);

MUX2X1 _2132_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_424_),
    .B(_430_),
    .S(_23__bF$buf3),
    .Y(_656_)
);

MUX2X1 _2133_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_430_),
    .B(_436_),
    .S(_23__bF$buf2),
    .Y(_655_)
);

INVX1 _2134_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_253_)
);

NAND3X1 _2135_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_560_),
    .B(_16_),
    .C(_550_),
    .Y(_254_)
);

OAI21X1 _2136_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_550_),
    .B(_24_),
    .C(_254_),
    .Y(_255_)
);

MUX2X1 _2137_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_253_),
    .B(_18_),
    .S(_255_),
    .Y(_654_)
);

INVX1 _2138_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [30]),
    .Y(_256_)
);

INVX1 _2139_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [31]),
    .Y(_257_)
);

MUX2X1 _2140_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_257_),
    .B(_256_),
    .S(_23__bF$buf1),
    .Y(_653_)
);

MUX2X1 _2141_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_256_),
    .B(_235_),
    .S(_23__bF$buf0),
    .Y(_652_)
);

OAI21X1 _2142_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [1]),
    .B(_532_),
    .C(\u_cpu.branch_op ),
    .Y(_258_)
);

NOR2X1 _2143_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_258_),
    .B(_17_),
    .Y(_259_)
);

OAI21X1 _2144_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_26_),
    .C(_259_),
    .Y(_260_)
);

NAND3X1 _2145_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_554_),
    .B(_260_),
    .C(_36_),
    .Y(_261_)
);

NAND3X1 _2146_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.c_r ),
    .B(_258_),
    .C(_62_),
    .Y(_262_)
);

INVX1 _2147_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.c_r ),
    .Y(_263_)
);

INVX1 _2148_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_258_),
    .Y(_264_)
);

OAI21X1 _2149_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_264_),
    .B(_78_),
    .C(_263_),
    .Y(_265_)
);

NAND2X1 _2150_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_262_),
    .B(_265_),
    .Y(_266_)
);

OR2X2 _2151_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_261_),
    .B(_266_),
    .Y(_267_)
);

AOI21X1 _2152_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_261_),
    .B(_266_),
    .C(_574_),
    .Y(_268_)
);

AND2X2 _2153_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_267_),
    .B(_268_),
    .Y(_269_)
);

AOI21X1 _2154_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [2]),
    .B(_574_),
    .C(_269_),
    .Y(_270_)
);

MUX2X1 _2155_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_270_),
    .B(_253_),
    .S(_255_),
    .Y(_651_)
);

AOI21X1 _2156_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_262_),
    .B(_267_),
    .C(_24_),
    .Y(_650_)
);

NOR2X1 _2157_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1115_),
    .B(_257_),
    .Y(_271_)
);

AOI21X1 _2158_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_574_),
    .B(_271_),
    .C(_269_),
    .Y(_272_)
);

MUX2X1 _2159_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_272_),
    .B(_257_),
    .S(_23__bF$buf4),
    .Y(_649_)
);

NOR2X1 _2160_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_862_),
    .B(_593_),
    .Y(_648_)
);

NOR2X1 _2161_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [1]),
    .B(\u_rf_if.rcnt [0]),
    .Y(_273_)
);

OR2X2 _2162_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1068_),
    .B(_273_),
    .Y(_274_)
);

OAI21X1 _2163_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(_274_),
    .C(_526_),
    .Y(_647_)
);

NAND2X1 _2164_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_275_)
);

NAND2X1 _2165_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_275_),
    .B(_526_),
    .Y(_646_)
);

NOR2X1 _2166_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [4]),
    .B(_449_),
    .Y(_276_)
);

AOI21X1 _2167_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [4]),
    .B(_150_),
    .C(_276_),
    .Y(_645_)
);

AOI21X1 _2168_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1086_),
    .B(_582_),
    .C(_1089_),
    .Y(_644_)
);

NOR2X1 _2169_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_572_),
    .B(_18_),
    .Y(_277_)
);

OAI21X1 _2170_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_277_),
    .Y(_278_)
);

AOI21X1 _2171_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_553_),
    .Y(_279_)
);

NOR2X1 _2172_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_15_),
    .B(_552_),
    .Y(_280_)
);

AOI22X1 _2173_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_278_),
    .B(_279_),
    .C(_550_),
    .D(_280_),
    .Y(_281_)
);

NOR2X1 _2174_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_557_),
    .B(_281_),
    .Y(_282_)
);

INVX1 _2175_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_282_),
    .Y(_283_)
);

OAI21X1 _2176_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_552_),
    .B(_548_),
    .C(_283_),
    .Y(_284_)
);

OAI21X1 _2177_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_282_),
    .B(_547_),
    .C(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_285_)
);

OAI21X1 _2178_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_551_),
    .B(_284_),
    .C(_285_),
    .Y(_643_)
);

NAND3X1 _2179_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_569_),
    .B(_280_),
    .C(_548_),
    .Y(_286_)
);

NAND3X1 _2180_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_284_),
    .B(_286_),
    .C(_536_),
    .Y(_287_)
);

OAI21X1 _2181_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_552_),
    .B(_548_),
    .C(\u_cpu.bufreg2.dhi [5]),
    .Y(_288_)
);

OAI21X1 _2182_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_282_),
    .B(_288_),
    .C(_287_),
    .Y(_642_)
);

INVX1 _2183_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_289_)
);

NOR2X1 _2184_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_289_),
    .B(_543_),
    .Y(_290_)
);

OAI21X1 _2185_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_541_),
    .B(_290_),
    .C(_547_),
    .Y(_291_)
);

NOR2X1 _2186_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_289_),
    .B(_547_),
    .Y(_292_)
);

OAI21X1 _2187_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_539_),
    .B(_547_),
    .C(_282_),
    .Y(_293_)
);

OAI21X1 _2188_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_282_),
    .B(_292_),
    .C(_293_),
    .Y(_294_)
);

NAND2X1 _2189_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_291_),
    .B(_294_),
    .Y(_641_)
);

INVX1 _2190_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_295_)
);

INVX1 _2191_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_544_),
    .Y(_296_)
);

NOR2X1 _2192_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_295_),
    .B(_296_),
    .Y(_297_)
);

OAI21X1 _2193_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_543_),
    .B(_297_),
    .C(_547_),
    .Y(_298_)
);

OAI21X1 _2194_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_295_),
    .B(_547_),
    .C(_283_),
    .Y(_299_)
);

OAI21X1 _2195_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_283_),
    .B(_292_),
    .C(_299_),
    .Y(_300_)
);

NAND2X1 _2196_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_298_),
    .B(_300_),
    .Y(_640_)
);

NOR2X1 _2197_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_546_),
    .B(_545_),
    .Y(_301_)
);

OAI21X1 _2198_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_296_),
    .B(_301_),
    .C(_547_),
    .Y(_302_)
);

NOR2X1 _2199_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_546_),
    .B(_547_),
    .Y(_303_)
);

OAI21X1 _2200_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_295_),
    .B(_547_),
    .C(_282_),
    .Y(_304_)
);

OAI21X1 _2201_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_282_),
    .B(_303_),
    .C(_304_),
    .Y(_305_)
);

NAND2X1 _2202_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_302_),
    .B(_305_),
    .Y(_639_)
);

INVX1 _2203_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_306_)
);

INVX1 _2204_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_307_)
);

NOR2X1 _2205_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_306_),
    .B(_307_),
    .Y(_308_)
);

OAI21X1 _2206_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_545_),
    .B(_308_),
    .C(_547_),
    .Y(_309_)
);

NAND2X1 _2207_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_282_),
    .B(_303_),
    .Y(_310_)
);

NOR2X1 _2208_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_307_),
    .B(_547_),
    .Y(_311_)
);

OAI21X1 _2209_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_557_),
    .B(_281_),
    .C(_311_),
    .Y(_312_)
);

NAND3X1 _2210_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_309_),
    .B(_310_),
    .C(_312_),
    .Y(_638_)
);

AOI21X1 _2211_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_306_),
    .B(_547_),
    .C(_311_),
    .Y(_313_)
);

MUX2X1 _2212_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_313_),
    .B(_306_),
    .S(_284_),
    .Y(_637_)
);

MUX2X1 _2213_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_163_),
    .B(_1040_),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_636_)
);

MUX2X1 _2214_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_156_),
    .B(_863_),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_635_)
);

NOR2X1 _2215_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_284_),
    .Y(_314_)
);

AOI21X1 _2216_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_67_),
    .B(_284_),
    .C(_314_),
    .Y(_634_)
);

INVX1 _2217_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_315_)
);

INVX1 _2218_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_316_)
);

MUX2X1 _2219_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_316_),
    .B(_315_),
    .S(_124__bF$buf3),
    .Y(_633_)
);

INVX1 _2220_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_317_)
);

MUX2X1 _2221_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_315_),
    .B(_317_),
    .S(_124__bF$buf2),
    .Y(_632_)
);

INVX1 _2222_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_318_)
);

MUX2X1 _2223_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_317_),
    .B(_318_),
    .S(_124__bF$buf1),
    .Y(_631_)
);

INVX1 _2224_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_319_)
);

MUX2X1 _2225_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_318_),
    .B(_319_),
    .S(_124__bF$buf0),
    .Y(_630_)
);

INVX1 _2226_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_320_)
);

MUX2X1 _2227_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_319_),
    .B(_320_),
    .S(_124__bF$buf4),
    .Y(_629_)
);

INVX1 _2228_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_321_)
);

MUX2X1 _2229_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_320_),
    .B(_321_),
    .S(_124__bF$buf3),
    .Y(_628_)
);

INVX1 _2230_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_322_)
);

MUX2X1 _2231_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_321_),
    .B(_322_),
    .S(_124__bF$buf2),
    .Y(_627_)
);

INVX1 _2232_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_323_)
);

MUX2X1 _2233_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_322_),
    .B(_323_),
    .S(_124__bF$buf1),
    .Y(_626_)
);

INVX1 _2234_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_324_)
);

MUX2X1 _2235_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_323_),
    .B(_324_),
    .S(_124__bF$buf0),
    .Y(_625_)
);

INVX1 _2236_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_325_)
);

MUX2X1 _2237_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_324_),
    .B(_325_),
    .S(_124__bF$buf4),
    .Y(_624_)
);

INVX1 _2238_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_326_)
);

MUX2X1 _2239_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_325_),
    .B(_326_),
    .S(_124__bF$buf3),
    .Y(_623_)
);

INVX1 _2240_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_327_)
);

MUX2X1 _2241_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_326_),
    .B(_327_),
    .S(_124__bF$buf2),
    .Y(_622_)
);

INVX1 _2242_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_328_)
);

MUX2X1 _2243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_327_),
    .B(_328_),
    .S(_124__bF$buf1),
    .Y(_621_)
);

INVX1 _2244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_329_)
);

MUX2X1 _2245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_328_),
    .B(_329_),
    .S(_124__bF$buf0),
    .Y(_620_)
);

INVX1 _2246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_330_)
);

MUX2X1 _2247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_329_),
    .B(_330_),
    .S(_124__bF$buf4),
    .Y(_619_)
);

INVX1 _2248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_331_)
);

MUX2X1 _2249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_330_),
    .B(_331_),
    .S(_124__bF$buf3),
    .Y(_618_)
);

MUX2X1 _2250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_331_),
    .B(_387_),
    .S(_124__bF$buf2),
    .Y(_617_)
);

MUX2X1 _2251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_387_),
    .B(_393_),
    .S(_124__bF$buf1),
    .Y(_616_)
);

MUX2X1 _2252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_393_),
    .B(_399_),
    .S(_124__bF$buf0),
    .Y(_615_)
);

MUX2X1 _2253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_399_),
    .B(_405_),
    .S(_124__bF$buf4),
    .Y(_614_)
);

MUX2X1 _2254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_405_),
    .B(_411_),
    .S(_124__bF$buf3),
    .Y(_613_)
);

MUX2X1 _2255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_411_),
    .B(_417_),
    .S(_124__bF$buf2),
    .Y(_612_)
);

MUX2X1 _2256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_417_),
    .B(_423_),
    .S(_124__bF$buf1),
    .Y(_611_)
);

MUX2X1 _2257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_423_),
    .B(_429_),
    .S(_124__bF$buf0),
    .Y(_610_)
);

MUX2X1 _2258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_429_),
    .B(_435_),
    .S(_124__bF$buf4),
    .Y(_609_)
);

INVX1 _2259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_332_)
);

MUX2X1 _2260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_435_),
    .B(_332_),
    .S(_124__bF$buf3),
    .Y(_608_)
);

NOR2X1 _2261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(_124__bF$buf2),
    .Y(_333_)
);

AOI21X1 _2262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_332_),
    .B(_124__bF$buf1),
    .C(_333_),
    .Y(_607_)
);

INVX1 _2263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_334_)
);

MUX2X1 _2264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_334_),
    .B(_316_),
    .S(_124__bF$buf0),
    .Y(_606_)
);

INVX1 _2265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_335_)
);

INVX1 _2266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_336_)
);

MUX2X1 _2267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_336_),
    .B(_335_),
    .S(_124__bF$buf4),
    .Y(_605_)
);

INVX1 _2268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_337_)
);

MUX2X1 _2269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_335_),
    .B(_337_),
    .S(_124__bF$buf3),
    .Y(_604_)
);

MUX2X1 _2270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_337_),
    .B(_334_),
    .S(_124__bF$buf2),
    .Y(_603_)
);

AOI21X1 _2271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_49_),
    .B(_46_),
    .C(_125_),
    .Y(_602_)
);

NOR2X1 _2272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_53_),
    .B(_57_),
    .Y(_338_)
);

NOR2X1 _2273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_338_),
    .B(_125_),
    .Y(_601_)
);

AND2X2 _2274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_51_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_339_)
);

OAI21X1 _2275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jump ),
    .B(_59_),
    .C(_124__bF$buf1),
    .Y(_340_)
);

OAI22X1 _2276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_336_),
    .B(_124__bF$buf0),
    .C(_340_),
    .D(_339_),
    .Y(_600_)
);

MUX2X1 _2277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_112_),
    .B(_70_),
    .S(_558_),
    .Y(_599_)
);

NAND2X1 _2278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_557_),
    .Y(_341_)
);

OAI21X1 _2279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_557_),
    .B(_118_),
    .C(_341_),
    .Y(_598_)
);

NOR2X1 _2280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast_bF$buf6),
    .B(_1131_),
    .Y(_1112_)
);

DFFPOSX1 _2281_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_636_),
    .Q(\u_rf_if.issue_reg [2])
);

DFFPOSX1 _2282_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_807_),
    .Q(\u_rf_if.last_req_key [9])
);

DFFPOSX1 _2283_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_637_),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

DFFPOSX1 _2284_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_808_),
    .Q(\u_rf_if.shift_rx [1])
);

DFFPOSX1 _2285_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_809_),
    .Q(raddr[7])
);

DFFPOSX1 _2286_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_810_),
    .Q(ren)
);

DFFPOSX1 _2287_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_638_),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

DFFPOSX1 _2288_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_811_),
    .Q(\u_mem_serial.bit_count [5])
);

DFFPOSX1 _2289_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_639_),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

DFFPOSX1 _2290_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_812_),
    .Q(\u_mem_serial.bit_count [4])
);

DFFPOSX1 _2291_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_720_),
    .Q(\u_cpu.decode.opcode [0])
);

DFFPOSX1 _2292_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_640_),
    .Q(\u_cpu.bufreg2.dhi [3])
);

DFFPOSX1 _2293_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_813_),
    .Q(\u_mem_serial.bit_count [3])
);

DFFPOSX1 _2294_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_641_),
    .Q(\u_cpu.bufreg2.dhi [4])
);

DFFPOSX1 _2295_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_814_),
    .Q(\u_mem_serial.bit_count [2])
);

DFFPOSX1 _2296_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_642_),
    .Q(\u_cpu.bufreg2.dhi [5])
);

DFFPOSX1 _2297_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_815_),
    .Q(\u_mem_serial.bit_count [1])
);

DFFPOSX1 _2298_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_643_),
    .Q(\u_cpu.bufreg2.dhi [6])
);

DFFPOSX1 _2299_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_816_),
    .Q(\u_mem_serial.bit_count [0])
);

DFFPOSX1 _2300_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_600_),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

DFFPOSX1 _2301_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_817_),
    .Q(\u_mem_serial.shift_reg [13])
);

DFFPOSX1 _2302_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_644_),
    .Q(\u_rf_if.pending_read )
);

DFFPOSX1 _2303_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_737_),
    .Q(\u_rf_if.wdata0_next_phase )
);

DFFPOSX1 _2304_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_818_),
    .Q(\u_mem_serial.shift_reg [12])
);

DFFPOSX1 _2305_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_598_),
    .Q(\u_cpu.alu.cmp_r )
);

DFFPOSX1 _2306_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_733_),
    .Q(\u_rf_if.issue_idx [5])
);

DFFPOSX1 _2307_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_819_),
    .Q(\u_mem_serial.shift_reg [11])
);

DFFPOSX1 _2308_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_645_),
    .Q(\u_rf_if.stream_cnt [4])
);

DFFPOSX1 _2309_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_820_),
    .Q(\u_mem_serial.shift_reg [10])
);

DFFPOSX1 _2310_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_599_),
    .Q(\u_cpu.alu.add_cy_r )
);

DFFPOSX1 _2311_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_821_),
    .Q(\u_mem_serial.shift_reg [9])
);

DFFPOSX1 _2312_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_850_),
    .Q(\u_rf_if.stream_active )
);

DFFPOSX1 _2313_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_822_),
    .Q(\u_mem_serial.shift_reg [8])
);

DFFPOSX1 _2314_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_648_),
    .Q(\u_rf_if.ready_pulse )
);

DFFPOSX1 _2315_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_823_),
    .Q(\u_mem_serial.shift_reg [7])
);

DFFPOSX1 _2316_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_649_),
    .Q(\u_cpu.bufreg.data [31])
);

DFFPOSX1 _2317_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_824_),
    .Q(\u_mem_serial.shift_reg [6])
);

DFFPOSX1 _2318_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_650_),
    .Q(\u_cpu.bufreg.c_r )
);

DFFPOSX1 _2319_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_825_),
    .Q(\u_mem_serial.shift_reg [5])
);

DFFPOSX1 _2320_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_652_),
    .Q(\u_cpu.bufreg.data [29])
);

DFFPOSX1 _2321_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_826_),
    .Q(\u_mem_serial.shift_reg [4])
);

DFFPOSX1 _2322_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_653_),
    .Q(\u_cpu.bufreg.data [30])
);

DFFPOSX1 _2323_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_827_),
    .Q(\u_mem_serial.shift_reg [3])
);

DFFPOSX1 _2324_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_654_),
    .Q(\u_cpu.bufreg.data [0])
);

DFFPOSX1 _2325_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_828_),
    .Q(\u_mem_serial.shift_reg [2])
);

DFFPOSX1 _2326_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_655_),
    .Q(\u_cpu.bufreg.data [2])
);

DFFPOSX1 _2327_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_829_),
    .Q(\u_mem_serial.shift_reg [1])
);

DFFPOSX1 _2328_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_830_),
    .Q(\u_mem_serial.shift_reg [30])
);

DFFPOSX1 _2329_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_656_),
    .Q(\u_cpu.bufreg.data [3])
);

DFFPOSX1 _2330_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_831_),
    .Q(\u_mem_serial.shift_reg [29])
);

DFFPOSX1 _2331_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_657_),
    .Q(\u_cpu.bufreg.data [4])
);

DFFPOSX1 _2332_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_832_),
    .Q(\u_mem_serial.shift_reg [28])
);

DFFPOSX1 _2333_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_658_),
    .Q(\u_cpu.bufreg.data [5])
);

DFFPOSX1 _2334_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_833_),
    .Q(\u_mem_serial.shift_reg [27])
);

DFFPOSX1 _2335_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_659_),
    .Q(\u_cpu.bufreg.data [6])
);

DFFPOSX1 _2336_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_834_),
    .Q(\u_mem_serial.shift_reg [26])
);

DFFPOSX1 _2337_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_835_),
    .Q(\u_mem_serial.shift_reg [25])
);

DFFPOSX1 _2338_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_651_),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

DFFPOSX1 _2339_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_646_),
    .Q(\u_rf_if.write_wait [1])
);

DFFPOSX1 _2340_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_836_),
    .Q(\u_mem_serial.shift_reg [24])
);

DFFPOSX1 _2341_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_837_),
    .Q(\u_mem_serial.shift_reg [23])
);

DFFPOSX1 _2342_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_838_),
    .Q(\u_mem_serial.shift_reg [22])
);

DFFPOSX1 _2343_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_839_),
    .Q(\u_mem_serial.shift_reg [21])
);

DFFPOSX1 _2344_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_840_),
    .Q(\u_mem_serial.shift_reg [20])
);

DFFPOSX1 _2345_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_841_),
    .Q(\u_mem_serial.shift_reg [19])
);

DFFPOSX1 _2346_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_842_),
    .Q(\u_mem_serial.shift_reg [18])
);

DFFPOSX1 _2347_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_843_),
    .Q(\u_mem_serial.shift_reg [17])
);

DFFPOSX1 _2348_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_844_),
    .Q(\u_mem_serial.shift_reg [16])
);

DFFPOSX1 _2349_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_845_),
    .Q(\u_mem_serial.shift_reg [15])
);

DFFPOSX1 _2350_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_660_),
    .Q(\u_cpu.bufreg.data [7])
);

DFFPOSX1 _2351_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_846_),
    .Q(\u_mem_serial.shift_reg [0])
);

DFFPOSX1 _2352_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_661_),
    .Q(\u_cpu.bufreg.data [8])
);

DFFPOSX1 _2353_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(\u_cpu.o_wdata0 ),
    .Q(\u_rf_if.wdata0_next [0])
);

DFFPOSX1 _2354_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_662_),
    .Q(\u_cpu.bufreg.data [9])
);

DFFPOSX1 _2355_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_848_),
    .Q(_1110_)
);

DFFPOSX1 _2356_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_663_),
    .Q(\u_cpu.bufreg.data [10])
);

DFFPOSX1 _2357_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_849_),
    .Q(\u_mem_serial.state [1])
);

DFFPOSX1 _2358_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_664_),
    .Q(\u_cpu.bufreg.data [11])
);

DFFPOSX1 _2359_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_851_),
    .Q(\u_mem_serial.shift_reg [14])
);

DFFPOSX1 _2360_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_665_),
    .Q(\u_cpu.bufreg.data [12])
);

DFFPOSX1 _2361_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_852_),
    .Q(\u_mem_serial.bit_count [6])
);

DFFPOSX1 _2362_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_853_),
    .Q(\u_mem_serial.active_ibus )
);

DFFPOSX1 _2363_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_666_),
    .Q(\u_cpu.bufreg.data [13])
);

DFFPOSX1 _2364_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_854_),
    .Q(\u_mem_serial.req_pending )
);

DFFPOSX1 _2365_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(i_clk_sys_ext_bF$buf0),
    .Q(\u_mem_serial.clk_sys_prev )
);

DFFPOSX1 _2366_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_667_),
    .Q(\u_cpu.bufreg.data [14])
);

DFFPOSX1 _2367_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_858_),
    .Q(\u_rf_if.read_buf0 [31])
);

DFFPOSX1 _2368_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_859_),
    .Q(\u_rf_if.issue_reg [1])
);

DFFPOSX1 _2369_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_668_),
    .Q(\u_cpu.bufreg.data [15])
);

DFFPOSX1 _2370_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_669_),
    .Q(\u_cpu.bufreg.data [16])
);

DFFPOSX1 _2371_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_670_),
    .Q(\u_cpu.bufreg.data [17])
);

DFFPOSX1 _2372_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_671_),
    .Q(\u_cpu.bufreg.data [18])
);

DFFPOSX1 _2373_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_1097_[2]),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

DFFPOSX1 _2374_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_672_),
    .Q(\u_cpu.bufreg.data [19])
);

DFFPOSX1 _2375_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_673_),
    .Q(\u_cpu.bufreg.data [20])
);

DFFPOSX1 _2376_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_674_),
    .Q(\u_cpu.bufreg.data [21])
);

DFFPOSX1 _2377_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_675_),
    .Q(\u_cpu.bufreg.data [22])
);

DFFPOSX1 _2378_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_676_),
    .Q(\u_cpu.bufreg.data [23])
);

DFFPOSX1 _2379_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_677_),
    .Q(\u_cpu.bufreg.data [24])
);

DFFPOSX1 _2380_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_678_),
    .Q(\u_cpu.bufreg.data [25])
);

DFFPOSX1 _2381_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_679_),
    .Q(\u_cpu.bufreg.data [26])
);

DFFPOSX1 _2382_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_680_),
    .Q(\u_cpu.bufreg.data [27])
);

DFFPOSX1 _2383_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_681_),
    .Q(\u_cpu.bufreg.data [28])
);

DFFPOSX1 _2384_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_682_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

DFFPOSX1 _2385_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_683_),
    .Q(rf_read_reg1_to_if[4])
);

DFFPOSX1 _2386_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_684_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

DFFPOSX1 _2387_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_685_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

DFFPOSX1 _2388_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_686_),
    .Q(rf_read_reg0_to_if[4])
);

DFFPOSX1 _2389_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_687_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

DFFPOSX1 _2390_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_688_),
    .Q(rf_wreg0_to_if[0])
);

DFFPOSX1 _2391_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_689_),
    .Q(rf_wreg0_to_if[1])
);

DFFPOSX1 _2392_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_690_),
    .Q(rf_wreg0_to_if[2])
);

DFFPOSX1 _2393_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_691_),
    .Q(rf_wreg0_to_if[3])
);

DFFPOSX1 _2394_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_692_),
    .Q(rf_read_reg1_to_if[0])
);

DFFPOSX1 _2395_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_693_),
    .Q(rf_read_reg1_to_if[1])
);

DFFPOSX1 _2396_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_694_),
    .Q(rf_read_reg1_to_if[2])
);

DFFPOSX1 _2397_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_695_),
    .Q(rf_read_reg1_to_if[3])
);

DFFPOSX1 _2398_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_696_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

DFFPOSX1 _2399_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_697_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

DFFPOSX1 _2400_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_698_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

DFFPOSX1 _2401_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_699_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

DFFPOSX1 _2402_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_700_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

DFFPOSX1 _2403_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_701_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

DFFPOSX1 _2404_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_702_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

DFFPOSX1 _2405_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_703_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

DFFPOSX1 _2406_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_704_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

DFFPOSX1 _2407_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_705_),
    .Q(\u_cpu.csr_imm )
);

DFFPOSX1 _2408_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_706_),
    .Q(rf_read_reg0_to_if[1])
);

DFFPOSX1 _2409_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_707_),
    .Q(rf_read_reg0_to_if[2])
);

DFFPOSX1 _2410_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_708_),
    .Q(rf_read_reg0_to_if[3])
);

DFFPOSX1 _2411_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_709_),
    .Q(\u_rf_if.req_seen )
);

DFFPOSX1 _2412_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_710_),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

DFFPOSX1 _2413_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_711_),
    .Q(\u_cpu.decode.co_ebreak )
);

DFFPOSX1 _2414_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_712_),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

DFFPOSX1 _2415_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_713_),
    .Q(\u_cpu.branch_op )
);

DFFPOSX1 _2416_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_602_),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

DFFPOSX1 _2417_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_714_),
    .Q(\u_rf_if.stream_cnt [3])
);

DFFPOSX1 _2418_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_604_),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

DFFPOSX1 _2419_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_715_),
    .Q(\u_rf_if.stream_cnt [2])
);

DFFPOSX1 _2420_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_605_),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

DFFPOSX1 _2421_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_716_),
    .Q(\u_rf_if.stream_cnt [1])
);

DFFPOSX1 _2422_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_606_),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

DFFPOSX1 _2423_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_717_),
    .Q(\u_rf_if.stream_cnt [0])
);

DFFPOSX1 _2424_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_718_),
    .Q(\u_rf_if.read_buf0 [30])
);

DFFPOSX1 _2425_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_647_),
    .Q(\u_rf_if.rcnt [1])
);

DFFPOSX1 _2426_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_721_),
    .Q(\u_cpu.decode.opcode [1])
);

DFFPOSX1 _2427_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_722_),
    .Q(\u_cpu.decode.opcode [2])
);

DFFPOSX1 _2428_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_723_),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

DFFPOSX1 _2429_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_724_),
    .Q(\u_cpu.bne_or_bge )
);

DFFPOSX1 _2430_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_725_),
    .Q(\u_cpu.decode.co_mem_word )
);

DFFPOSX1 _2431_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_726_),
    .Q(\u_rf_if.wen0_r )
);

DFFPOSX1 _2432_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_607_),
    .Q(\u_cpu.ctrl.pc )
);

DFFPOSX1 _2433_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_727_),
    .Q(\u_rf_if.o_waddr [3])
);

DFFPOSX1 _2434_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_728_),
    .Q(\u_cpu.state.ibus_cyc )
);

DFFPOSX1 _2435_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_729_),
    .Q(\u_cpu.state.init_done )
);

DFFPOSX1 _2436_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_730_),
    .Q(\u_cpu.ctrl.i_jump )
);

DFFPOSX1 _2437_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_608_),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

DFFPOSX1 _2438_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(\u_cpu.state.cnt_r [2]),
    .Q(\u_cpu.state.cnt_r [3])
);

DFFPOSX1 _2439_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_609_),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

DFFPOSX1 _2440_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_1097_[1]),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

DFFPOSX1 _2441_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_731_),
    .Q(\u_cpu.state.cnt_r [0])
);

DFFPOSX1 _2442_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_610_),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

DFFPOSX1 _2443_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_739_),
    .Q(_1113_)
);

DFFPOSX1 _2444_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_1070_[0]),
    .Q(\u_cpu.state.o_cnt [2])
);

DFFPOSX1 _2445_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_601_),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

DFFPOSX1 _2446_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_611_),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

DFFPOSX1 _2447_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_743_),
    .Q(\u_rf_if.issue_idx [4])
);

DFFPOSX1 _2448_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_612_),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

DFFPOSX1 _2449_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_744_),
    .Q(\u_rf_if.issue_chunk [3])
);

DFFPOSX1 _2450_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_613_),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

DFFPOSX1 _2451_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_745_),
    .Q(\u_rf_if.issue_chunk [2])
);

DFFPOSX1 _2452_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(\u_rf_if.wdata0_next [0]),
    .Q(\u_rf_if.wdata0_r [0])
);

DFFPOSX1 _2453_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_614_),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

DFFPOSX1 _2454_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_746_),
    .Q(\u_rf_if.issue_chunk [1])
);

DFFPOSX1 _2455_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_615_),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

DFFPOSX1 _2456_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_747_),
    .Q(\u_rf_if.issue_chunk [0])
);

DFFPOSX1 _2457_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_616_),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

DFFPOSX1 _2458_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_748_),
    .Q(\u_rf_if.o_waddr [2])
);

DFFPOSX1 _2459_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_617_),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

DFFPOSX1 _2460_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_749_),
    .Q(\u_rf_if.o_waddr [1])
);

DFFPOSX1 _2461_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_618_),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

DFFPOSX1 _2462_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_750_),
    .Q(\u_rf_if.o_waddr [0])
);

DFFPOSX1 _2463_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_751_),
    .Q(\u_rf_if.rcnt [2])
);

DFFPOSX1 _2464_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_752_),
    .Q(\u_rf_if.rcnt [0])
);

DFFPOSX1 _2465_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_619_),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

DFFPOSX1 _2466_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_753_),
    .Q(\u_rf_if.write_wait [0])
);

DFFPOSX1 _2467_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_620_),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

DFFPOSX1 _2468_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_754_),
    .Q(\u_rf_if.last_req_key [8])
);

DFFPOSX1 _2469_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_621_),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

DFFPOSX1 _2470_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_755_),
    .Q(\u_rf_if.last_req_key [7])
);

DFFPOSX1 _2471_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_622_),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

DFFPOSX1 _2472_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_756_),
    .Q(\u_rf_if.last_req_key [6])
);

DFFPOSX1 _2473_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_623_),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

DFFPOSX1 _2474_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_757_),
    .Q(\u_rf_if.last_req_key [5])
);

DFFPOSX1 _2475_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_624_),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

DFFPOSX1 _2476_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_758_),
    .Q(\u_rf_if.last_req_key [4])
);

DFFPOSX1 _2477_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_625_),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

DFFPOSX1 _2478_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_759_),
    .Q(\u_rf_if.last_req_key [3])
);

DFFPOSX1 _2479_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_626_),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

DFFPOSX1 _2480_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_760_),
    .Q(\u_rf_if.last_req_key [2])
);

DFFPOSX1 _2481_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_627_),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

DFFPOSX1 _2482_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_761_),
    .Q(\u_rf_if.last_req_key [1])
);

DFFPOSX1 _2483_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(\u_rf_if.rtrig0 ),
    .Q(\u_rf_if.rtrig1 )
);

DFFPOSX1 _2484_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_628_),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

DFFPOSX1 _2485_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_762_),
    .Q(\u_rf_if.last_req_key [0])
);

DFFPOSX1 _2486_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_629_),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

DFFPOSX1 _2487_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_763_),
    .Q(\u_rf_if.tx_state [3])
);

DFFPOSX1 _2488_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_630_),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

DFFPOSX1 _2489_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_764_),
    .Q(\u_rf_if.tx_state [2])
);

DFFPOSX1 _2490_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_631_),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

DFFPOSX1 _2491_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_765_),
    .Q(\u_rf_if.tx_state [1])
);

DFFPOSX1 _2492_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_632_),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

DFFPOSX1 _2493_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_766_),
    .Q(\u_rf_if.tx_state [0])
);

DFFPOSX1 _2494_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_767_),
    .Q(raddr[6])
);

DFFPOSX1 _2495_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_768_),
    .Q(raddr[5])
);

DFFPOSX1 _2496_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_769_),
    .Q(raddr[4])
);

DFFPOSX1 _2497_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_770_),
    .Q(raddr[3])
);

DFFPOSX1 _2498_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_771_),
    .Q(raddr[2])
);

DFFPOSX1 _2499_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_772_),
    .Q(raddr[1])
);

DFFPOSX1 _2500_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_773_),
    .Q(raddr[0])
);

DFFPOSX1 _2501_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_774_),
    .Q(\u_rf_if.read_buf0 [29])
);

DFFPOSX1 _2502_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_775_),
    .Q(\u_rf_if.read_buf0 [28])
);

DFFPOSX1 _2503_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_776_),
    .Q(\u_rf_if.read_buf0 [27])
);

DFFPOSX1 _2504_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_777_),
    .Q(\u_rf_if.read_buf0 [26])
);

DFFPOSX1 _2505_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_847_),
    .Q(\u_mem_serial.shift_reg [31])
);

DFFPOSX1 _2506_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_778_),
    .Q(\u_rf_if.read_buf0 [25])
);

DFFPOSX1 _2507_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_779_),
    .Q(\u_rf_if.read_buf0 [24])
);

DFFPOSX1 _2508_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_780_),
    .Q(\u_rf_if.read_buf0 [23])
);

DFFPOSX1 _2509_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_742_),
    .Q(\u_rf_if.issue_reg [0])
);

DFFPOSX1 _2510_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_781_),
    .Q(\u_rf_if.read_buf0 [22])
);

DFFPOSX1 _2511_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_782_),
    .Q(\u_rf_if.read_buf0 [21])
);

DFFPOSX1 _2512_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_783_),
    .Q(\u_rf_if.read_buf0 [20])
);

DFFPOSX1 _2513_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_784_),
    .Q(\u_rf_if.read_buf0 [19])
);

DFFPOSX1 _2514_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_857_),
    .Q(mem_ibus_ack)
);

DFFPOSX1 _2515_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_740_),
    .Q(\u_rf_if.launch_pending )
);

DFFPOSX1 _2516_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_785_),
    .Q(\u_rf_if.read_buf0 [18])
);

DFFPOSX1 _2517_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_786_),
    .Q(\u_rf_if.read_buf0 [17])
);

DFFPOSX1 _2518_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(_738_),
    .Q(\u_rf_if.prefetch_active )
);

DFFPOSX1 _2519_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_787_),
    .Q(\u_rf_if.read_buf0 [16])
);

DFFPOSX1 _2520_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(\u_cpu.state.cnt_r [1]),
    .Q(\u_cpu.state.cnt_r [2])
);

DFFPOSX1 _2521_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_788_),
    .Q(\u_rf_if.read_buf0 [15])
);

DFFPOSX1 _2522_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_603_),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

DFFPOSX1 _2523_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_789_),
    .Q(\u_rf_if.read_buf0 [14])
);

DFFPOSX1 _2524_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_790_),
    .Q(\u_rf_if.read_buf0 [13])
);

DFFPOSX1 _2525_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_791_),
    .Q(\u_rf_if.read_buf0 [12])
);

DFFPOSX1 _2526_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_792_),
    .Q(\u_rf_if.read_buf0 [11])
);

DFFPOSX1 _2527_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_793_),
    .Q(\u_rf_if.read_buf0 [10])
);

DFFPOSX1 _2528_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf9),
    .D(_794_),
    .Q(\u_rf_if.read_buf0 [9])
);

DFFPOSX1 _2529_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf8),
    .D(_795_),
    .Q(\u_rf_if.read_buf0 [8])
);

DFFPOSX1 _2530_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf7),
    .D(_796_),
    .Q(\u_rf_if.read_buf0 [7])
);

DFFPOSX1 _2531_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf6),
    .D(_797_),
    .Q(\u_rf_if.read_buf0 [6])
);

DFFPOSX1 _2532_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf5),
    .D(\u_cpu.state.cnt_r [0]),
    .Q(\u_cpu.state.cnt_r [1])
);

DFFPOSX1 _2533_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf4),
    .D(_798_),
    .Q(\u_rf_if.read_buf0 [5])
);

DFFPOSX1 _2534_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf3),
    .D(_799_),
    .Q(\u_rf_if.read_buf0 [4])
);

DFFPOSX1 _2535_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf2),
    .D(_800_),
    .Q(\u_rf_if.read_buf0 [3])
);

DFFPOSX1 _2536_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf1),
    .D(_801_),
    .Q(\u_rf_if.read_buf0 [2])
);

DFFPOSX1 _2537_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf0),
    .D(_802_),
    .Q(\u_rf_if.read_buf0 [1])
);

DFFPOSX1 _2538_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf13),
    .D(_803_),
    .Q(\u_rf_if.read_buf0 [0])
);

DFFPOSX1 _2539_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf12),
    .D(_633_),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

DFFPOSX1 _2540_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_804_),
    .Q(\u_rf_if.tx_state [4])
);

DFFPOSX1 _2541_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf11),
    .D(_634_),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

DFFPOSX1 _2542_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_805_),
    .Q(\u_rf_if.shift_rx [0])
);

DFFPOSX1 _2543_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext_bF$buf10),
    .D(_635_),
    .Q(\u_rf_if.issue_reg [3])
);

DFFPOSX1 _2544_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_806_),
    .Q(\u_mem_serial.state [0])
);

endmodule
