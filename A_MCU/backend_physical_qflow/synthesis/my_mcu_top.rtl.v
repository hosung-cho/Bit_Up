/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module my_mcu_top(
    inout vdd,
    inout gnd,
    input i_clk_fast,
    input i_clk_sys_ext,
    input i_rst_n,
    output o_mem_sync,
    output o_mem_sck,
    output o_mem_mosi,
    input i_mem_miso
);

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
wire _1198_ ;
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
wire _1160_ ;
wire _491_ ;
wire _1216_ ;
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
wire _1157_ ;
wire _488_ ;
wire _700_ ;
wire _297_ ;
wire _16_ ;
wire _1195_ ;
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
wire _1213_ ;
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
wire _1192_ ;
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
wire _1189_ ;
wire _732_ ;
wire _312_ ;
wire _48_ ;
wire _1210_ ;
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
wire _1113_ ;
wire _864_ ;
wire _444_ ;
wire _673_ ;
wire _253_ ;
wire _729_ ;
wire _309_ ;
wire _1151_ ;
wire _482_ ;
wire _1207_ ;
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
wire _1186_ ;
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
wire _1204_ ;
wire _955_ ;
wire _535_ ;
wire _115_ ;
wire _1013_ ;
wire i_mem_miso ;
wire _764_ ;
wire _344_ ;
wire _1242_ ;
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
wire \u_rf_if.read_buf1  ;
wire _1183_ ;
wire _1239_ ;
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
wire _1201_ ;
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
wire _1180_ ;
wire _1236_ ;
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
wire _1177_ ;
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
wire \u_mem_serial.active_we  ;
wire _717_ ;
wire _890_ ;
wire _470_ ;
wire _946_ ;
wire _526_ ;
wire _106_ ;
wire _1004_ ;
wire _755_ ;
wire _335_ ;
wire _1233_ ;
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
wire _696_ ;
wire _276_ ;
wire _1174_ ;
wire _33_ ;
wire _1039_ ;
wire _599_ ;
wire _179_ ;
wire _811_ ;
wire _71_ ;
wire _1077_ ;
wire _620_ ;
wire _200_ ;
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
wire _1230_ ;
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
wire _1171_ ;
wire _1227_ ;
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
wire _1168_ ;
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
wire _1224_ ;
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
wire _1165_ ;
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
wire _1221_ ;
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
wire _1162_ ;
wire _493_ ;
wire _1218_ ;
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
wire _1159_ ;
wire _702_ ;
wire _299_ ;
wire _18_ ;
wire _931_ ;
wire _511_ ;
wire [5:0] \u_rf_if.issue_idx  ;
wire _1197_ ;
wire _740_ ;
wire _320_ ;
wire [5:0] \u_mem_serial.bit_count  ;
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
wire _1215_ ;
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
wire _1156_ ;
wire _487_ ;
wire _296_ ;
wire _15_ ;
wire _1194_ ;
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
wire _1212_ ;
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
wire _1209_ ;
wire _293_ ;
wire _12_ ;
wire _1018_ ;
wire _769_ ;
wire _349_ ;
wire _1191_ ;
wire _998_ ;
wire _578_ ;
wire _158_ ;
wire _50_ ;
wire _1056_ ;
wire _387_ ;
wire _196_ ;
wire _1094_ ;
wire _6_ ;
wire _922_ ;
wire _502_ ;
wire _1188_ ;
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
wire _1206_ ;
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
wire _1185_ ;
wire _44_ ;
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
wire _1203_ ;
wire _954_ ;
wire _534_ ;
wire _114_ ;
wire _1012_ ;
wire _763_ ;
wire _343_ ;
wire _819_ ;
wire _79_ ;
wire _1241_ ;
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
wire _1182_ ;
wire _1238_ ;
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
wire _1179_ ;
wire [6:3] \u_cpu.bufreg2.dhi  ;
wire _722_ ;
wire _302_ ;
wire _38_ ;
wire _1200_ ;
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
wire mem_dbus_ack ;
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
wire _1235_ ;
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
wire _1176_ ;
wire _35_ ;
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
wire _1232_ ;
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
wire _1173_ ;
wire _1229_ ;
wire _32_ ;
wire _1038_ ;
wire _789_ ;
wire _369_ ;
wire _598_ ;
wire _178_ ;
wire _810_ ;
wire _70_ ;
wire _1076_ ;
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
wire _1170_ ;
wire _1226_ ;
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
wire _1167_ ;
wire _498_ ;
wire _710_ ;
wire _26_ ;
wire _804_ ;
wire _64_ ;
wire _613_ ;
wire _842_ ;
wire _422_ ;
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
wire _1223_ ;
wire _974_ ;
wire _554_ ;
wire _134_ ;
wire _1032_ ;
wire _783_ ;
wire _363_ ;
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
wire _1164_ ;
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
wire [4:1] rreg0 ;
wire [4:0] rreg1 ;
wire _704_ ;
wire _933_ ;
wire _513_ ;
wire _1199_ ;
wire _742_ ;
wire _322_ ;
wire [1:0] rf_shared_rdata ;
wire _58_ ;
wire _1220_ ;
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
wire _1123_ ;
wire _874_ ;
wire _454_ ;
wire _683_ ;
wire _263_ ;
wire _739_ ;
wire _319_ ;
wire _1161_ ;
wire _492_ ;
wire _1217_ ;
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
wire _1158_ ;
wire _489_ ;
wire _701_ ;
wire _298_ ;
wire _17_ ;
wire _930_ ;
wire _510_ ;
wire _1196_ ;
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
wire _1214_ ;
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
wire _1155_ ;
wire _486_ ;
wire _295_ ;
wire _14_ ;
wire _1193_ ;
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
wire _1211_ ;
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
wire _1208_ ;
wire _959_ ;
wire _539_ ;
wire _119_ ;
wire _292_ ;
wire [23:0] \u_cpu.bufreg2.dlo  ;
wire _11_ ;
wire _1017_ ;
wire _768_ ;
wire _348_ ;
wire _1190_ ;
wire _997_ ;
wire _577_ ;
wire _157_ ;
wire _1055_ ;
wire _386_ ;
wire _195_ ;
wire _1093_ ;
wire _1149_ ;
wire _289_ ;
wire _5_ ;
wire _921_ ;
wire _501_ ;
wire _1187_ ;
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
wire _1205_ ;
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
wire _1184_ ;
wire _43_ ;
wire _1049_ ;
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
wire _1202_ ;
wire _953_ ;
wire _533_ ;
wire _113_ ;
wire _1011_ ;
wire _762_ ;
wire _342_ ;
wire _818_ ;
wire _78_ ;
wire _1240_ ;
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
wire _1181_ ;
wire _1237_ ;
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
wire _1178_ ;
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
wire _1234_ ;
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
wire _1175_ ;
wire \u_cpu.ctrl.pc  ;
wire _34_ ;
wire _812_ ;
wire _72_ ;
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
wire _1231_ ;
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
wire _1172_ ;
wire _1228_ ;
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
wire _1169_ ;
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
wire _1225_ ;
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
wire _1166_ ;
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
wire _1222_ ;
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
wire _1163_ ;
wire _494_ ;
wire _1219_ ;
wire _22_ ;
wire _1028_ ;
wire _779_ ;
wire _359_ ;

OAI21X1 _1677_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_971_),
    .B(_980_),
    .C(_976_),
    .Y(_871_)
);

NOR2X1 _1257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_626_),
    .B(_625_),
    .Y(_624_)
);

MUX2X1 _1486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(mem_ibus_ack),
    .Y(_421_)
);

OAI21X1 _1295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_636_),
    .B(_653_),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_586_)
);

DFFPOSX1 _2712_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_843_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [23])
);

DFFPOSX1 _2521_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_934_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

NOR2X1 _2101_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(_1174_),
    .Y(_58_)
);

NAND2X1 _1389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [5]),
    .Y(_496_)
);

DFFPOSX1 _2750_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_881_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [3])
);

AOI21X1 _2330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_227_),
    .B(\u_mem_serial.bit_count [5]),
    .C(_229_),
    .Y(_230_)
);

MUX2X1 _1601_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_339_),
    .B(_338_),
    .S(_597_),
    .Y(_892_)
);

MUX2X1 _1830_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1096_),
    .B(_1097_),
    .S(_1091_),
    .Y(_835_)
);

AOI21X1 _1410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_481_),
    .B(_480_),
    .C(_492_),
    .Y(_941_)
);

DFFPOSX1 _2615_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_752_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [24])
);

OAI21X1 _2424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_195_),
    .B(_295_),
    .C(_296_),
    .Y(_297_)
);

INVX1 _2004_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rtrig1 ),
    .Y(_1231_)
);

DFFPOSX1 _2653_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_785_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [4])
);

NOR2X1 _2233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_503_),
    .B(_148_),
    .Y(_149_)
);

AOI22X1 _1924_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[7]),
    .B(ren),
    .C(_1149_),
    .D(_1159_),
    .Y(_1160_)
);

AOI21X1 _1504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_416_),
    .B(_413_),
    .C(_407_),
    .Y(_920_)
);

DFFPOSX1 _2709_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_840_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

AOI21X1 _2462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_326_),
    .B(\u_cpu.state.ibus_cyc ),
    .C(_492_),
    .Y(_327_)
);

AND2X2 _2042_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1235_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_19_)
);

NOR2X1 _1733_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(_1013_),
    .Y(_1026_)
);

INVX1 _1313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(_568_)
);

DFFPOSX1 _2518_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_931_),
    .CLK(i_clk_sys_ext),
    .Q(rreg0[1])
);

DFFPOSX1 _2691_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_823_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

NOR2X1 _2271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_142_),
    .B(_183_),
    .Y(_184_)
);

AOI21X1 _1962_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_461_),
    .B(_1195_),
    .C(_492_),
    .Y(_799_)
);

INVX1 _1542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_376_)
);

DFFPOSX1 _2747_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_878_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [29])
);

INVX1 _2327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_172_),
    .Y(_227_)
);

AOI21X1 _2080_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_41_),
    .B(_1175_),
    .C(_44_),
    .Y(_771_)
);

FILL FILL98250x79350 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1771_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [9]),
    .C(_1055_),
    .Y(_1056_)
);

INVX1 _1351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.cmp_r ),
    .Y(_531_)
);

DFFPOSX1 _2556_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_716_),
    .CLK(i_clk_fast),
    .Q(mem_dbus_ack)
);

AOI21X1 _2136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(_1175_),
    .C(_80_),
    .Y(_751_)
);

INVX1 _1827_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1096_)
);

NAND2X1 _1407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_483_),
    .B(_487_),
    .Y(_482_)
);

INVX1 _1580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [24]),
    .Y(_348_)
);

AOI22X1 _2365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [17]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [16]),
    .Y(_248_)
);

OAI21X1 _1636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_651_),
    .B(_647_),
    .C(\u_cpu.branch_op ),
    .Y(_723_)
);

DFFPOSX1 _2594_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_692_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [14])
);

OAI21X1 _2174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1238_),
    .B(_1197_),
    .C(_1221_),
    .Y(_107_)
);

INVX1 _1865_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_1115_)
);

NOR2X1 _1445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_454_),
    .B(_465_),
    .Y(_453_)
);

FILL FILL98550x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_611_),
    .B(_977_),
    .C(_618_),
    .Y(_978_)
);

INVX1 _1254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_627_)
);

OAI21X1 _2459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_623_),
    .C(\u_cpu.state.init_done ),
    .Y(_325_)
);

OAI21X1 _2039_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1171_),
    .B(_1189_),
    .C(_16_),
    .Y(_784_)
);

MUX2X1 _1483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(mem_ibus_ack),
    .Y(_423_)
);

DFFPOSX1 _2688_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_820_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

NOR2X1 _2268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_180_),
    .Y(_181_)
);

NAND2X1 _1959_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_561_),
    .Y(_1193_)
);

INVX1 _1539_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_384_),
    .Y(_378_)
);

INVX1 _1292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[0]),
    .Y(_589_)
);

DFFPOSX1 _2497_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_911_),
    .CLK(i_clk_sys_ext),
    .Q(rreg0[4])
);

OAI22X1 _2077_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [5]),
    .C(\u_rf_if.read_buf0 [6]),
    .D(_1171_),
    .Y(_43_)
);

AOI21X1 _1768_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1052_),
    .C(_1053_),
    .Y(_853_)
);

NOR2X1 _1348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_566_),
    .B(_549_),
    .Y(_534_)
);

NOR2X1 _1997_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1224_),
    .B(_1222_),
    .Y(_791_)
);

MUX2X1 _1577_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_351_),
    .B(_350_),
    .S(_597_),
    .Y(_904_)
);

OAI21X1 _1386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_634_),
    .C(_498_),
    .Y(_947_)
);

DFFPOSX1 _2612_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_749_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [27])
);

OR2X2 _2421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1158_),
    .B(_217_),
    .Y(_294_)
);

NOR2X1 _2001_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_1228_)
);

INVX1 _1289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_592_)
);

DFFPOSX1 _2650_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_696_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [10])
);

OAI21X1 _2230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_140_),
    .B(_145_),
    .C(\u_mem_serial.req_pending ),
    .Y(_146_)
);

NOR2X1 _1921_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_380_),
    .Y(_1157_)
);

INVX1 _1501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_410_),
    .Y(_409_)
);

DFFPOSX1 _2706_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_837_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

AOI21X1 _1730_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1022_),
    .C(_1023_),
    .Y(_861_)
);

INVX1 _1310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_572_),
    .Y(_571_)
);

DFFPOSX1 _2515_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_928_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

DFFPOSX1 _2744_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_874_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [31])
);

AOI21X1 _2324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_198_),
    .B(_200_),
    .C(_225_),
    .Y(_708_)
);

DFFPOSX1 _2553_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_682_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [24])
);

OAI22X1 _2133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [25]),
    .C(\u_rf_if.read_buf0 [26]),
    .D(_1171_),
    .Y(_79_)
);

MUX2X1 _1824_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1093_),
    .B(_1094_),
    .S(_1091_),
    .Y(_838_)
);

INVX1 _1404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_486_),
    .Y(_485_)
);

DFFPOSX1 _2609_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_746_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [0])
);

MUX2X1 _2362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_445_),
    .B(_246_),
    .S(_179_),
    .Y(_691_)
);

INVX1 _1633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [31]),
    .Y(_669_)
);

NOR2X1 _2418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_291_),
    .Y(_292_)
);

DFFPOSX1 _2591_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_737_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [0])
);

NOR2X1 _2171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(_102_),
    .Y(_741_)
);

MUX2X1 _1862_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1112_),
    .B(_1113_),
    .S(_1091_),
    .Y(_819_)
);

NOR2X1 _1442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_457_),
    .Y(_456_)
);

DFFPOSX1 _2647_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_782_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rcnt [1])
);

NAND2X1 _2227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .B(_142_),
    .Y(_143_)
);

AOI22X1 _1918_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(raddr[6]),
    .C(_1149_),
    .D(_1153_),
    .Y(_1154_)
);

AOI22X1 _1671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_617_),
    .B(_971_),
    .C(_975_),
    .D(_974_),
    .Y(_872_)
);

OAI21X1 _1251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_633_),
    .B(_631_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_630_)
);

NOR2X1 _2456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_655_),
    .B(_490_),
    .Y(_323_)
);

AOI21X1 _2036_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1184_),
    .B(_1180_),
    .C(_14_),
    .Y(_15_)
);

NAND2X1 _1727_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_457_),
    .Y(_1021_)
);

AOI21X1 _1307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_581_),
    .B(_641_),
    .C(_575_),
    .Y(_574_)
);

MUX2X1 _1480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(mem_ibus_ack),
    .Y(_425_)
);

DFFPOSX1 _2685_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_817_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

NAND2X1 _2265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_177_),
    .Y(_178_)
);

INVX1 _1956_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1190_),
    .Y(_1191_)
);

INVX1 _1536_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[1]),
    .Y(_380_)
);

DFFPOSX1 _2494_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_909_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

INVX1 _2074_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [5]),
    .Y(_41_)
);

NAND2X1 _1765_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1050_),
    .Y(_1051_)
);

NAND2X1 _1345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_562_),
    .B(_539_),
    .Y(_537_)
);

INVX1 _1994_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1221_),
    .Y(_1222_)
);

INVX1 _1574_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [27]),
    .Y(_351_)
);

AOI22X1 _2359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [14]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [13]),
    .Y(_245_)
);

AOI21X1 _1383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_525_),
    .B(_524_),
    .C(_500_),
    .Y(_499_)
);

INVX1 _2588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .Y(_655_)
);

NAND3X1 _2168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [2]),
    .C(\u_rf_if.rcnt [1]),
    .Y(_103_)
);

INVX1 _1859_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_1112_)
);

AOI21X1 _1439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_465_),
    .C(_459_),
    .Y(_933_)
);

OAI22X1 _2397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_217_),
    .B(_273_),
    .C(_405_),
    .D(_258_),
    .Y(_274_)
);

NAND3X1 _1668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_474_),
    .B(_965_),
    .C(_619_),
    .Y(_973_)
);

NOR2X1 _1248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_634_),
    .B(_636_),
    .Y(_633_)
);

INVX1 _1897_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .Y(_1135_)
);

INVX1 _1477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .Y(_428_)
);

NOR2X1 _1286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_640_),
    .B(_596_),
    .Y(_595_)
);

DFFPOSX1 _2703_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_834_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

DFFPOSX1 _2512_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_925_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

DFFPOSX1 _2741_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_871_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dhi [4])
);

OAI21X1 _2321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_142_),
    .B(_165_),
    .C(\u_mem_serial.bit_count [2]),
    .Y(_224_)
);

DFFPOSX1 _2550_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_711_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [1])
);

OAI22X1 _2130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [24]),
    .C(\u_rf_if.read_buf0 [23]),
    .D(_1174_),
    .Y(_77_)
);

INVX1 _1821_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_1093_)
);

AOI21X1 _1401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_490_),
    .B(_489_),
    .C(_637_),
    .Y(_488_)
);

DFFPOSX1 _2606_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_745_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [1])
);

MUX2X1 _1630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_664_),
    .B(_640_),
    .S(_667_),
    .Y(_879_)
);

OAI21X1 _2415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_288_),
    .B(_202_),
    .C(_217_),
    .Y(_289_)
);

DFFPOSX1 _2644_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_776_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [0])
);

OAI21X1 _2224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1239_),
    .B(_1231_),
    .C(_139_),
    .Y(_140_)
);

AOI22X1 _1915_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(raddr[4]),
    .C(_1149_),
    .D(_1150_),
    .Y(_1151_)
);

OAI21X1 _2453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_623_),
    .C(\u_cpu.ctrl.i_jump ),
    .Y(_320_)
);

OAI21X1 _2033_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1180_),
    .B(_1184_),
    .C(_11_),
    .Y(_12_)
);

OAI21X1 _1724_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [19]),
    .C(_1018_),
    .Y(_1019_)
);

NOR2X1 _1304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(_578_),
    .Y(_577_)
);

DFFPOSX1 _2509_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_923_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

DFFPOSX1 _2682_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_814_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

INVX1 _2262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .Y(_175_)
);

OAI21X1 _1953_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(_1187_),
    .C(_1178_),
    .Y(_1188_)
);

NAND2X1 _1533_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_383_),
    .Y(_382_)
);

DFFPOSX1 _2738_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_811_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

INVX1 _2318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_166_),
    .Y(_222_)
);

FILL FILL98250x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2491_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_907_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

INVX1 _2071_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [4]),
    .Y(_39_)
);

NOR2X1 _1762_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [10]),
    .B(_1013_),
    .Y(_1049_)
);

NAND2X1 _1342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .B(_549_),
    .Y(_540_)
);

DFFPOSX1 _2547_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_681_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [25])
);

OAI22X1 _2127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [23]),
    .C(\u_rf_if.read_buf0 [24]),
    .D(_1171_),
    .Y(_75_)
);

FILL FILL98550x7350 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1818_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1090_),
    .B(_1089_),
    .S(_1091_),
    .Y(_841_)
);

AOI21X1 _1991_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1136_),
    .B(_1208_),
    .C(_1220_),
    .Y(_793_)
);

INVX1 _1571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [28]),
    .Y(_353_)
);

MUX2X1 _2356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1038_),
    .B(_243_),
    .S(_179_),
    .Y(_694_)
);

OAI21X1 _1627_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.state.cnt_r [0]),
    .C(_577_),
    .Y(_665_)
);

NOR2X1 _1380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_503_),
    .Y(_502_)
);

DFFPOSX1 _2585_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_734_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [3])
);

NOR2X1 _2165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_99_),
    .B(_101_),
    .Y(_743_)
);

MUX2X1 _1856_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1109_),
    .B(_1110_),
    .S(_1091_),
    .Y(_822_)
);

INVX1 _1436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .Y(_461_)
);

MUX2X1 _2394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_405_),
    .B(_271_),
    .S(_179_),
    .Y(_684_)
);

MUX2X1 _1665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_970_),
    .B(_639_),
    .S(_969_),
    .Y(_873_)
);

BUFX2 _1245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .Y(o_mem_mosi)
);

OAI21X1 _1894_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1131_),
    .B(_1132_),
    .C(_571_),
    .Y(_1133_)
);

OAI21X1 _1474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_434_),
    .C(_476_),
    .Y(_430_)
);

DFFPOSX1 _2679_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_810_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

NOR2X1 _2259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_142_),
    .Y(_173_)
);

NAND2X1 _1283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_630_),
    .B(_599_),
    .Y(_598_)
);

DFFPOSX1 _2488_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_904_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [26])
);

INVX1 _2068_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [1]),
    .Y(_37_)
);

INVX1 _1759_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [10]),
    .Y(_1046_)
);

OAI21X1 _1339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_592_),
    .B(_547_),
    .C(_544_),
    .Y(_543_)
);

DFFPOSX1 _2700_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_831_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

OAI21X1 _2297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .C(_192_),
    .Y(_207_)
);

INVX1 _1988_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1213_),
    .Y(_1218_)
);

AOI21X1 _1568_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_412_),
    .B(_413_),
    .C(_355_),
    .Y(_908_)
);

AOI21X1 _1797_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1074_),
    .C(_1075_),
    .Y(_846_)
);

OAI21X1 _1377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_507_),
    .C(_506_),
    .Y(_505_)
);

DFFPOSX1 _2603_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_744_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [2])
);

MUX2X1 _2412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_280_),
    .B(_286_),
    .S(_179_),
    .Y(_681_)
);

DFFPOSX1 _2641_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_773_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [3])
);

NOR2X1 _2221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .B(_138_),
    .Y(_1194_)
);

NOR2X1 _1912_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1147_),
    .B(_482_),
    .Y(_1148_)
);

OAI21X1 _2450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_623_),
    .C(i_rst_n),
    .Y(_319_)
);

NAND2X1 _2030_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.ready_pulse ),
    .B(_568_),
    .Y(_10_)
);

NOR2X1 _1721_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_1013_),
    .Y(_1017_)
);

INVX1 _1301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [0]),
    .Y(_580_)
);

DFFPOSX1 _2506_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_920_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[3])
);

NOR2X1 _1950_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1180_),
    .B(_1184_),
    .Y(_1185_)
);

INVX1 _1530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_390_),
    .Y(_385_)
);

DFFPOSX1 _2735_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_866_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [22])
);

OAI21X1 _2315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_218_),
    .B(_219_),
    .C(_217_),
    .Y(_220_)
);

DFFPOSX1 _2544_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_706_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [0])
);

NOR2X1 _2124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [21]),
    .B(_1174_),
    .Y(_73_)
);

INVX1 _1815_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_1089_)
);

AOI22X1 _2353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [10]),
    .Y(_242_)
);

NOR2X1 _1624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [2]),
    .B(_597_),
    .Y(_663_)
);

AOI22X1 _2409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_216_),
    .B(_282_),
    .C(_208_),
    .D(_283_),
    .Y(_284_)
);

DFFPOSX1 _2582_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_689_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [17])
);

AOI21X1 _2162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_10_),
    .C(_98_),
    .Y(_99_)
);

INVX1 _1853_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_1109_)
);

INVX1 _1433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[4]),
    .Y(_464_)
);

DFFPOSX1 _2638_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_794_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[5])
);

AOI22X1 _2218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_1190_),
    .C(_134_),
    .D(_568_),
    .Y(_137_)
);

OAI21X1 _2391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_139_),
    .B(raddr[0]),
    .C(_268_),
    .Y(_269_)
);

INVX1 _1909_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .Y(_1145_)
);

AOI21X1 _1662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_967_),
    .B(_602_),
    .C(mem_dbus_ack),
    .Y(_968_)
);

OAI22X1 _2447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_639_),
    .B(_186_),
    .C(_305_),
    .D(_258_),
    .Y(_317_)
);

AOI21X1 _2027_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .B(_1232_),
    .C(_492_),
    .Y(_788_)
);

INVX1 _1718_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_1014_)
);

NAND2X1 _1891_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1129_),
    .B(_533_),
    .Y(_1130_)
);

NOR2X1 _1471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_433_),
    .B(_465_),
    .Y(_432_)
);

DFFPOSX1 _2676_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_804_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.ready_pulse )
);

INVX1 _2256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .Y(_170_)
);

INVX1 _1947_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_1182_)
);

NOR2X1 _1527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_388_),
    .Y(_387_)
);

INVX1 _1280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_602_),
    .Y(_601_)
);

DFFPOSX1 _2485_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_901_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [23])
);

OAI21X1 _2065_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1138_),
    .B(_1209_),
    .C(_35_),
    .Y(_777_)
);

OAI21X1 _1756_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [12]),
    .C(_1043_),
    .Y(_1044_)
);

INVX1 _1336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_546_)
);

AOI21X1 _2294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_176_),
    .B(_203_),
    .C(_142_),
    .Y(_204_)
);

OAI21X1 _1985_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [1]),
    .Y(_1216_)
);

INVX1 _1565_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_358_),
    .Y(_357_)
);

NAND2X1 _1794_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_555_),
    .Y(_1073_)
);

OAI21X1 _1374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_510_),
    .C(_509_),
    .Y(_508_)
);

DFFPOSX1 _2579_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_731_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg0_latched [1])
);

OAI21X1 _2159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1181_),
    .B(_96_),
    .C(_89_),
    .Y(_97_)
);

NOR2X1 _2388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_266_),
    .Y(_267_)
);

NOR2X1 _1659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_578_),
    .B(_637_),
    .Y(_965_)
);

DFFPOSX1 _2600_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_693_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [13])
);

NAND2X1 _2197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(_561_),
    .Y(_123_)
);

AOI21X1 _1888_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_542_),
    .C(_1127_),
    .Y(_807_)
);

AOI21X1 _1468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_437_),
    .B(_465_),
    .C(_435_),
    .Y(_928_)
);

NAND2X1 _1697_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_972_),
    .B(_997_),
    .Y(_998_)
);

NOR2X1 _1277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_604_)
);

DFFPOSX1 _2503_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_917_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[0])
);

DFFPOSX1 _2732_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_863_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [19])
);

INVX1 _2312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_216_),
    .Y(_217_)
);

DFFPOSX1 _2541_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_679_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [27])
);

INVX1 _2121_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [22]),
    .Y(_71_)
);

NAND2X1 _1812_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_376_),
    .Y(_1087_)
);

MUX2X1 _2350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1050_),
    .B(_240_),
    .S(_179_),
    .Y(_697_)
);

MUX2X1 _1621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_329_),
    .B(_328_),
    .S(_597_),
    .Y(_882_)
);

NOR2X1 _2406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[3]),
    .B(_139_),
    .Y(_281_)
);

MUX2X1 _1850_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1106_),
    .B(_1107_),
    .S(_1091_),
    .Y(_825_)
);

NOR2X1 _1430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_593_),
    .B(_486_),
    .Y(_467_)
);

DFFPOSX1 _2635_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_726_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[6])
);

AOI21X1 _2215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1162_),
    .B(_1177_),
    .C(_133_),
    .Y(_134_)
);

NOR2X1 _1906_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1143_),
    .B(_1142_),
    .Y(_804_)
);

OAI21X1 _2444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [5]),
    .B(_208_),
    .C(_187_),
    .Y(_314_)
);

OAI21X1 _2024_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .B(_5_),
    .C(_391_),
    .Y(_6_)
);

OAI21X1 _1715_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(_1011_),
    .Y(_1012_)
);

DFFPOSX1 _2673_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_797_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[7])
);

OAI21X1 _2253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_142_),
    .B(_166_),
    .C(_163_),
    .Y(_167_)
);

INVX1 _1944_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_1179_)
);

NOR2X1 _1524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_391_),
    .Y(_390_)
);

DFFPOSX1 _2729_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_860_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [16])
);

OAI21X1 _2309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_213_),
    .B(_214_),
    .C(_215_),
    .Y(_713_)
);

DFFPOSX1 _2482_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_899_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [21])
);

NOR2X1 _2062_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [1]),
    .Y(_33_)
);

AOI21X1 _1753_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1040_),
    .C(_1041_),
    .Y(_856_)
);

OAI21X1 _1333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_584_),
    .C(_550_),
    .Y(_549_)
);

DFFPOSX1 _2538_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_703_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [3])
);

NOR2X1 _2118_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(_1174_),
    .Y(_69_)
);

NOR2X1 _2291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_492_),
    .B(_147_),
    .Y(_201_)
);

NOR2X1 _1809_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_1013_),
    .Y(_1085_)
);

NOR2X1 _1982_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_492_),
    .B(_1213_),
    .Y(_796_)
);

AOI22X1 _1562_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_368_),
    .B(_426_),
    .C(_361_),
    .D(_360_),
    .Y(_909_)
);

DFFPOSX1 _2767_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_897_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [19])
);

AOI22X1 _2347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [7]),
    .Y(_239_)
);

INVX1 _1618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [5]),
    .Y(_329_)
);

OAI21X1 _1791_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(_1070_),
    .Y(_1071_)
);

NAND2X1 _1371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.branch_op ),
    .Y(_511_)
);

DFFSR _2576_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n),
    .S(vdd),
    .D(\u_rf_if.i_stream_rs2_en ),
    .CLK(i_clk_sys_ext),
    .Q(current_stream_rs2_hint)
);

AND2X2 _2156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_94_),
    .B(i_rst_n),
    .Y(_745_)
);

INVX1 _1847_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_1106_)
);

INVX1 _1427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[3]),
    .Y(_470_)
);

AOI21X1 _2385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_262_),
    .B(_261_),
    .C(_263_),
    .Y(_264_)
);

NAND2X1 _1656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_962_)
);

AOI21X1 _2194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1136_),
    .B(_120_),
    .C(_121_),
    .Y(_734_)
);

OAI22X1 _1885_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1119_),
    .B(_1091_),
    .C(_1125_),
    .D(_1124_),
    .Y(_808_)
);

INVX1 _1465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_437_)
);

INVX1 _1694_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_995_)
);

MUX2X1 _1274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_608_),
    .B(_639_),
    .S(_618_),
    .Y(_607_)
);

INVX1 _2479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_638_),
    .Y(_637_)
);

AND2X2 _2059_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1184_),
    .B(_30_),
    .Y(_31_)
);

FILL FILL98550x68550 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_175_),
    .Y(_199_)
);

NOR2X1 _1979_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1212_),
    .B(_1206_),
    .Y(_1213_)
);

AOI21X1 _1559_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_586_),
    .B(_364_),
    .C(_363_),
    .Y(_362_)
);

DFFPOSX1 _2500_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_914_),
    .CLK(i_clk_sys_ext),
    .Q(rf_wreg0_to_if[1])
);

AOI21X1 _2097_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_51_),
    .B(_1175_),
    .C(_55_),
    .Y(_765_)
);

NOR2X1 _1788_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [4]),
    .B(_1013_),
    .Y(_1069_)
);

NOR2X1 _1368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_517_),
    .B(_522_),
    .Y(_514_)
);

MUX2X1 _1597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_341_),
    .B(_340_),
    .S(_597_),
    .Y(_894_)
);

AOI21X1 _2403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_185_),
    .C(_278_),
    .Y(_279_)
);

DFFPOSX1 _2632_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_766_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [10])
);

NAND3X1 _2212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_129_),
    .B(_131_),
    .C(_130_),
    .Y(_726_)
);

NAND3X1 _1903_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1135_),
    .B(_1140_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_1141_)
);

AOI22X1 _2441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_305_),
    .B(_179_),
    .C(_306_),
    .D(_311_),
    .Y(_677_)
);

AOI21X1 _2021_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1227_),
    .B(_2_),
    .C(_3_),
    .Y(_789_)
);

MUX2X1 _1712_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1007_),
    .B(_1009_),
    .S(_968_),
    .Y(_865_)
);

DFFPOSX1 _2670_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_700_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [6])
);

NOR2X1 _2250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_164_)
);

OAI21X1 _1941_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1171_),
    .B(_1162_),
    .C(_1176_),
    .Y(_802_)
);

AOI21X1 _1521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_594_),
    .B(_413_),
    .C(_393_),
    .Y(_917_)
);

DFFPOSX1 _2726_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_857_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [13])
);

NOR2X1 _2306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_142_),
    .B(_177_),
    .Y(_213_)
);

NAND2X1 _1750_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1038_),
    .Y(_1039_)
);

OAI21X1 _1330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_557_),
    .B(_552_),
    .C(_560_),
    .Y(\u_rf_if.i_stream_rs2_en )
);

DFFPOSX1 _2535_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_676_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [30])
);

INVX1 _2115_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [20]),
    .Y(_67_)
);

MUX2X1 _1806_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_510_),
    .B(_1082_),
    .S(_968_),
    .Y(_844_)
);

DFFPOSX1 _2764_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_894_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [16])
);

MUX2X1 _2344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_558_),
    .B(_237_),
    .S(_179_),
    .Y(_700_)
);

MUX2X1 _1615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_332_),
    .B(_331_),
    .S(_597_),
    .Y(_885_)
);

DFFPOSX1 _2573_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_777_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[1])
);

INVX1 _2153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_11_),
    .Y(_92_)
);

MUX2X1 _1844_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1103_),
    .B(_1104_),
    .S(_1091_),
    .Y(_828_)
);

NOR2X1 _1424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_472_),
    .B(_473_),
    .Y(_935_)
);

DFFPOSX1 _2629_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_764_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [12])
);

NAND2X1 _2209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [2]),
    .B(_1211_),
    .Y(_129_)
);

NAND2X1 _2382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1203_),
    .B(_253_),
    .Y(_261_)
);

OAI21X1 _1653_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_628_),
    .B(_959_),
    .C(_958_),
    .Y(_960_)
);

AOI22X1 _2438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_194_),
    .B(_308_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [28]),
    .Y(_309_)
);

NOR2X1 _2018_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1238_),
    .B(_1197_),
    .Y(_1_)
);

NOR2X1 _2191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1137_),
    .B(_117_),
    .Y(_119_)
);

INVX1 _1709_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [21]),
    .Y(_1007_)
);

AOI21X1 _1882_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1122_),
    .B(_516_),
    .C(_1123_),
    .Y(_809_)
);

OAI21X1 _1462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_446_),
    .C(_479_),
    .Y(_439_)
);

DFFPOSX1 _2667_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_796_),
    .CLK(i_clk_sys_ext),
    .Q(ren)
);

AOI21X1 _2247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_157_),
    .B(_161_),
    .C(_158_),
    .Y(_721_)
);

OAI21X1 _1938_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1172_),
    .B(_1173_),
    .C(_568_),
    .Y(_1174_)
);

AOI21X1 _1518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_400_),
    .B(_413_),
    .C(_395_),
    .Y(_918_)
);

AOI21X1 _1691_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_mem_serial.shift_reg [26]),
    .C(_971_),
    .Y(_993_)
);

NAND2X1 _1271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_617_),
    .B(_611_),
    .Y(_610_)
);

INVX1 _2476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .Y(_640_)
);

AOI21X1 _2056_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1205_),
    .B(_27_),
    .C(_28_),
    .Y(_779_)
);

NOR2X1 _1747_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [13]),
    .B(_1013_),
    .Y(_1037_)
);

NAND3X1 _1327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [1]),
    .B(\u_mem_serial.shift_reg [0]),
    .C(_555_),
    .Y(_554_)
);

OAI21X1 _2285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_193_),
    .C(_196_),
    .Y(_718_)
);

OR2X2 _1976_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1141_),
    .B(_1201_),
    .Y(_1210_)
);

NOR2X1 _1556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_367_),
    .B(_366_),
    .Y(_365_)
);

OAI22X1 _2094_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [11]),
    .C(\u_rf_if.read_buf0 [10]),
    .D(_1174_),
    .Y(_54_)
);

AOI21X1 _1785_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1065_),
    .C(_1066_),
    .Y(_849_)
);

NOR2X1 _1365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_518_),
    .B(_519_),
    .Y(_517_)
);

INVX1 _1594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [17]),
    .Y(_341_)
);

OAI22X1 _2379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1010_),
    .B(_186_),
    .C(_1014_),
    .D(_258_),
    .Y(_259_)
);

INVX1 _2188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_116_),
    .Y(_117_)
);

AND2X2 _1879_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .B(_1091_),
    .Y(_810_)
);

NOR2X1 _1459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(_465_),
    .Y(_441_)
);

NAND2X1 _2400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_108_),
    .B(_139_),
    .Y(_276_)
);

FILL FILL98550x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1688_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_983_),
    .B(_989_),
    .C(_618_),
    .Y(_990_)
);

NOR2X1 _1268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_614_),
    .Y(_613_)
);

INVX1 _1900_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [1]),
    .Y(_1138_)
);

OAI21X1 _1497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_415_),
    .B(_414_),
    .C(_468_),
    .Y(_413_)
);

DFFPOSX1 _2723_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_854_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [10])
);

NOR2X1 _2303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_191_),
    .B(_178_),
    .Y(_211_)
);

DFFPOSX1 _2532_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_945_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

NOR2X1 _2112_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(_1174_),
    .Y(_65_)
);

INVX1 _1803_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [0]),
    .Y(_1080_)
);

DFFPOSX1 _2761_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_891_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [13])
);

AOI22X1 _2341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [5]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [4]),
    .Y(_236_)
);

INVX1 _1612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_332_)
);

DFFPOSX1 _2570_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(i_clk_sys_ext),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.clk_sys_prev )
);

NOR2X1 _2150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .B(\u_rf_if.stream_active ),
    .Y(_90_)
);

INVX1 _1841_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_1103_)
);

NOR2X1 _1421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_626_),
    .B(_475_),
    .Y(_474_)
);

DFFPOSX1 _2626_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_761_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [15])
);

AOI21X1 _2206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_397_),
    .B(_127_),
    .C(_492_),
    .Y(_728_)
);

AND2X2 _1650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_597_),
    .B(_957_),
    .Y(_875_)
);

OR2X2 _2435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1160_),
    .B(_217_),
    .Y(_306_)
);

INVX1 _2015_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1240_),
    .Y(_1241_)
);

NAND2X1 _1706_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_405_),
    .Y(_1005_)
);

DFFPOSX1 _2664_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_792_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.prefetch_active )
);

INVX1 _2244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_140_),
    .Y(_159_)
);

INVX1 _1935_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1170_),
    .Y(_1171_)
);

INVX1 _1515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_398_),
    .Y(_397_)
);

OR2X2 _2473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_644_),
    .B(_658_),
    .Y(_643_)
);

OAI21X1 _2053_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1209_),
    .B(_25_),
    .C(_26_),
    .Y(_780_)
);

INVX1 _1744_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_1034_)
);

OAI21X1 _1324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_559_),
    .B(_558_),
    .C(mem_ibus_ack),
    .Y(_557_)
);

DFFPOSX1 _2529_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_809_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

NOR2X1 _2109_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_62_),
    .B(_63_),
    .Y(_761_)
);

NOR2X1 _2282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_140_),
    .Y(_194_)
);

NAND2X1 _1973_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.prefetch_active ),
    .B(_1142_),
    .Y(_1207_)
);

INVX1 _1553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_368_)
);

DFFPOSX1 _2758_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_888_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [10])
);

MUX2X1 _2338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_494_),
    .B(_234_),
    .S(_179_),
    .Y(_703_)
);

OAI22X1 _2091_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [10]),
    .C(\u_rf_if.read_buf0 [9]),
    .D(_1174_),
    .Y(_52_)
);

MUX2X1 _1609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_335_),
    .B(_334_),
    .S(_597_),
    .Y(_888_)
);

NAND2X1 _1782_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_556_),
    .Y(_1064_)
);

INVX1 _1362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_520_)
);

DFFPOSX1 _2567_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_722_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.req_pending )
);

OAI22X1 _2147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [30]),
    .C(\u_rf_if.read_buf0 [31]),
    .D(_1171_),
    .Y(_88_)
);

MUX2X1 _1838_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1100_),
    .B(_1101_),
    .S(_1091_),
    .Y(_831_)
);

OAI21X1 _1418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_657_),
    .C(_476_),
    .Y(_937_)
);

MUX2X1 _1591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_344_),
    .B(_343_),
    .S(_597_),
    .Y(_897_)
);

FILL FILL98250x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_251_),
    .B(_254_),
    .C(_255_),
    .Y(_256_)
);

AOI21X1 _1647_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [2]),
    .B(_629_),
    .C(_955_),
    .Y(_956_)
);

OAI21X1 _2185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1138_),
    .B(_113_),
    .C(_114_),
    .Y(_115_)
);

MUX2X1 _1876_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1118_),
    .B(_1120_),
    .S(_1091_),
    .Y(_812_)
);

NOR2X1 _1456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_445_),
    .Y(_444_)
);

OAI21X1 _1685_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_972_),
    .B(\u_mem_serial.shift_reg [27]),
    .C(_969_),
    .Y(_988_)
);

INVX1 _1265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_616_)
);

INVX1 _1494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[3]),
    .Y(_416_)
);

DFFPOSX1 _2699_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_876_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

INVX1 _2279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(_191_)
);

OAI22X1 _2088_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [9]),
    .C(\u_rf_if.read_buf0 [10]),
    .D(_1171_),
    .Y(_50_)
);

OAI21X1 _1779_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [7]),
    .C(_1061_),
    .Y(_1062_)
);

INVX1 _1359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [2]),
    .Y(_523_)
);

DFFPOSX1 _2720_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_851_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [7])
);

NAND2X1 _2300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_205_),
    .B(_208_),
    .Y(_209_)
);

INVX1 _1588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_344_)
);

OAI21X1 _1800_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [2]),
    .C(_1077_),
    .Y(_1078_)
);

INVX1 _1397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(_492_)
);

DFFPOSX1 _2623_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_758_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [18])
);

NAND2X1 _2203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_561_),
    .Y(_126_)
);

NOR2X1 _2432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_303_),
    .Y(_304_)
);

INVX1 _2012_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .Y(_1238_)
);

OAI21X1 _1703_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1001_),
    .C(_1002_),
    .Y(_1003_)
);

DFFPOSX1 _2661_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_790_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.wdata0_next_phase )
);

AOI21X1 _2241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_151_),
    .B(\u_mem_serial.req_pending ),
    .C(_140_),
    .Y(_156_)
);

NAND2X1 _1932_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1167_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_1168_)
);

INVX1 _1512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[1]),
    .Y(_400_)
);

DFFPOSX1 _2717_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_848_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [4])
);

NOR2X1 _2470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_649_),
    .B(_647_),
    .Y(_646_)
);

AOI21X1 _2050_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_481_),
    .B(_24_),
    .C(_492_),
    .Y(_781_)
);

OAI21X1 _1741_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [15]),
    .C(_1031_),
    .Y(_1032_)
);

NAND2X1 _1321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(current_stream_rs2_hint),
    .B(_561_),
    .Y(_560_)
);

DFFPOSX1 _2526_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_939_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.branch_op )
);

AOI21X1 _2106_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_60_),
    .B(_1170_),
    .C(_61_),
    .Y(_762_)
);

NOR2X1 _1970_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1191_),
    .B(_1203_),
    .Y(_1204_)
);

AOI22X1 _1550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_464_),
    .B(_465_),
    .C(_370_),
    .D(_371_),
    .Y(_911_)
);

DFFPOSX1 _2755_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_886_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [8])
);

AOI22X1 _2335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [2]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [1]),
    .Y(_233_)
);

INVX1 _1606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [11]),
    .Y(_335_)
);

DFFPOSX1 _2564_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_684_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [22])
);

OAI22X1 _2144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [29]),
    .C(\u_rf_if.read_buf0 [28]),
    .D(_1174_),
    .Y(_86_)
);

INVX1 _1835_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_1100_)
);

INVX1 _1415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_478_)
);

NOR2X1 _2373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_252_),
    .B(_1234_),
    .Y(_253_)
);

NAND2X1 _1644_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_951_),
    .B(_952_),
    .Y(_953_)
);

MUX2X1 _2429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [3]),
    .B(\u_cpu.ctrl.o_ibus_adr [3]),
    .S(_202_),
    .Y(_301_)
);

NAND2X1 _2009_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1230_),
    .B(_1235_),
    .Y(_1236_)
);

AOI21X1 _2182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_111_),
    .B(_112_),
    .C(_1200_),
    .Y(_737_)
);

INVX1 _1873_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_1119_)
);

AOI21X1 _1453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_452_),
    .B(_465_),
    .C(_447_),
    .Y(_931_)
);

INVX1 _2658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .Y(_661_)
);

NOR2X1 _2238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_140_),
    .B(_145_),
    .Y(_154_)
);

AOI21X1 _1929_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1140_),
    .B(_1164_),
    .C(_1163_),
    .Y(_1165_)
);

OAI21X1 _1509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_416_),
    .C(_403_),
    .Y(_402_)
);

OAI21X1 _1682_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_613_),
    .B(_984_),
    .C(_618_),
    .Y(_985_)
);

INVX1 _1262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_620_),
    .Y(_619_)
);

NOR2X1 _2467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.branch_op ),
    .Y(_649_)
);

OAI21X1 _2047_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1145_),
    .B(_21_),
    .C(_22_),
    .Y(_23_)
);

AOI21X1 _1738_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1028_),
    .C(_1029_),
    .Y(_859_)
);

OAI21X1 _1318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(_567_),
    .C(_564_),
    .Y(_563_)
);

INVX1 _1491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .Y(_418_)
);

DFFPOSX1 _2696_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_828_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

OAI22X1 _2276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_188_),
    .C(_1086_),
    .D(_186_),
    .Y(_189_)
);

INVX1 _1967_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .Y(_1201_)
);

OAI21X1 _1547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_cpu.branch_op ),
    .C(_373_),
    .Y(_372_)
);

OAI22X1 _2085_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [8]),
    .C(\u_rf_if.read_buf0 [7]),
    .D(_1174_),
    .Y(_48_)
);

NOR2X1 _1776_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_1013_),
    .Y(_1060_)
);

NOR2X1 _1356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_527_),
    .B(_595_),
    .Y(_526_)
);

MUX2X1 _1585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_347_),
    .B(_346_),
    .S(_597_),
    .Y(_900_)
);

MUX2X1 _1394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_494_),
    .B(_648_),
    .S(mem_ibus_ack),
    .Y(_943_)
);

DFFPOSX1 _2599_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_742_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rcnt [0])
);

AOI21X1 _2179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_108_),
    .B(_109_),
    .C(_110_),
    .Y(_738_)
);

FILL FILL98550x61350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL98550x28950 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1679_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_618_),
    .Y(_982_)
);

NOR2X1 _1259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_623_),
    .Y(_622_)
);

DFFPOSX1 _2620_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_757_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [19])
);

AOI21X1 _2200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_449_),
    .B(_124_),
    .C(_492_),
    .Y(_731_)
);

INVX1 _1488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .Y(_420_)
);

OAI22X1 _1700_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_994_),
    .B(_969_),
    .C(_1000_),
    .D(_999_),
    .Y(_868_)
);

OAI21X1 _1297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_590_),
    .B(_587_),
    .C(_585_),
    .Y(_584_)
);

DFFPOSX1 _2714_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_845_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [1])
);

DFFPOSX1 _2523_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_936_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.cnt_r [2])
);

NOR2X1 _2103_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_58_),
    .B(_59_),
    .Y(_763_)
);

DFFPOSX1 _2752_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_883_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [5])
);

AOI21X1 _2332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1080_),
    .B(_179_),
    .C(_231_),
    .Y(_706_)
);

MUX2X1 _1603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_338_),
    .B(_337_),
    .S(_597_),
    .Y(_891_)
);

DFFPOSX1 _2561_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_719_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [31])
);

OAI22X1 _2141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [28]),
    .C(\u_rf_if.read_buf0 [29]),
    .D(_1171_),
    .Y(_84_)
);

MUX2X1 _1832_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1097_),
    .B(_1098_),
    .S(_1091_),
    .Y(_834_)
);

MUX2X1 _1412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_558_),
    .B(_655_),
    .S(mem_ibus_ack),
    .Y(_939_)
);

DFFPOSX1 _2617_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_754_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [22])
);

MUX2X1 _2370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1014_),
    .B(_250_),
    .S(_179_),
    .Y(_687_)
);

AOI21X1 _1641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [1]),
    .B(\u_cpu.branch_op ),
    .C(_949_),
    .Y(_950_)
);

AOI22X1 _2426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_293_),
    .B(_179_),
    .C(_294_),
    .D(_298_),
    .Y(_679_)
);

OR2X2 _2006_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1232_),
    .B(_1231_),
    .Y(_1233_)
);

INVX1 _1870_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_1117_)
);

INVX1 _1450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_450_),
    .Y(_449_)
);

DFFPOSX1 _2655_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_801_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rs2_stream_buf [1])
);

OAI21X1 _2235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_492_),
    .B(_147_),
    .C(_150_),
    .Y(_151_)
);

NAND2X1 _1926_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_shared_rdata[0]),
    .B(_1161_),
    .Y(_1162_)
);

INVX1 _1506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_405_)
);

NOR2X1 _2464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_657_),
    .B(_653_),
    .Y(_652_)
);

NOR2X1 _2044_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_20_),
    .B(_18_),
    .Y(_783_)
);

NAND2X1 _1735_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_445_),
    .Y(_1027_)
);

NOR2X1 _1315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(_567_),
    .Y(_566_)
);

DFFPOSX1 _2693_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_825_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

INVX1 _2273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_185_),
    .Y(_186_)
);

NAND3X1 _1964_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.pending_read ),
    .B(_1163_),
    .C(_1198_),
    .Y(_1199_)
);

OAI21X1 _1544_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_376_),
    .C(_375_),
    .Y(_912_)
);

DFFPOSX1 _2749_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_880_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [2])
);

OAI21X1 _2329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .B(i_mem_miso),
    .C(_228_),
    .Y(_229_)
);

OAI22X1 _2082_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [7]),
    .C(\u_rf_if.read_buf0 [8]),
    .D(_1171_),
    .Y(_46_)
);

INVX1 _1773_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [7]),
    .Y(_1057_)
);

NOR2X1 _1353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_531_),
    .B(_530_),
    .Y(_529_)
);

DFFPOSX1 _2558_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_717_),
    .CLK(i_clk_fast),
    .Q(rf_shared_rdata[1])
);

OAI22X1 _2138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [27]),
    .C(\u_rf_if.read_buf0 [26]),
    .D(_1174_),
    .Y(_82_)
);

INVX1 _1829_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1097_)
);

AOI21X1 _1409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_621_),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_rf_if.ready_pulse ),
    .Y(_480_)
);

INVX1 _1582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [23]),
    .Y(_347_)
);

AOI22X1 _2367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [18]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [17]),
    .Y(_249_)
);

NOR2X1 _1638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_584_),
    .B(_724_),
    .Y(_805_)
);

NOR2X1 _1391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(mem_ibus_ack),
    .Y(_495_)
);

NAND2X1 _2596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_660_),
    .Y(_659_)
);

INVX1 _2176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .Y(_108_)
);

INVX1 _1867_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_1116_)
);

INVX1 _1447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[1]),
    .Y(_452_)
);

MUX2X1 _1676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_979_),
    .B(\u_mem_serial.shift_reg [28]),
    .S(_972_),
    .Y(_980_)
);

NAND2X1 _1256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.state.o_cnt [2]),
    .Y(_625_)
);

INVX1 _1485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .Y(_422_)
);

OAI21X1 _1294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_589_),
    .B(_588_),
    .C(_621_),
    .Y(_587_)
);

DFFPOSX1 _2499_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_913_),
    .CLK(i_clk_sys_ext),
    .Q(rf_wreg0_to_if[0])
);

OAI22X1 _2079_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [6]),
    .C(\u_rf_if.read_buf0 [7]),
    .D(_1171_),
    .Y(_44_)
);

DFFPOSX1 _2711_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_842_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

INVX1 _1999_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_1226_)
);

MUX2X1 _1579_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_350_),
    .B(_349_),
    .S(_597_),
    .Y(_903_)
);

DFFPOSX1 _2520_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_933_),
    .CLK(i_clk_sys_ext),
    .Q(rreg0[3])
);

AOI21X1 _2100_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_56_),
    .B(_1170_),
    .C(_57_),
    .Y(_764_)
);

OAI21X1 _1388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_546_),
    .C(_497_),
    .Y(_946_)
);

INVX1 _1600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [14]),
    .Y(_338_)
);

DFFPOSX1 _2614_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_751_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [25])
);

AOI22X1 _2423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [26]),
    .Y(_296_)
);

NOR2X1 _2003_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1225_),
    .B(_1229_),
    .Y(_1230_)
);

DFFPOSX1 _2652_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_672_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.init_done )
);

NAND2X1 _2232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .B(_600_),
    .Y(_148_)
);

NOR2X1 _1923_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_392_),
    .Y(_1159_)
);

NOR2X1 _1503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_408_),
    .B(_413_),
    .Y(_407_)
);

DFFPOSX1 _2708_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_839_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

NOR2X1 _2461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_622_),
    .Y(_326_)
);

NOR2X1 _2041_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_17_),
    .B(\u_cpu.o_wdata0 ),
    .Y(_18_)
);

OAI21X1 _1732_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [17]),
    .C(_1024_),
    .Y(_1025_)
);

INVX1 _1312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_570_),
    .Y(_569_)
);

DFFPOSX1 _2517_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_930_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.csr_imm )
);

DFFPOSX1 _2690_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_822_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

INVX1 _2270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_182_),
    .Y(_183_)
);

NAND2X1 _1961_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_561_),
    .Y(_1195_)
);

OAI21X1 _1541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_380_),
    .B(_378_),
    .C(_377_),
    .Y(_913_)
);

DFFPOSX1 _2746_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_877_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [30])
);

OAI21X1 _2326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_510_),
    .B(_180_),
    .C(\u_mem_serial.active_we ),
    .Y(_226_)
);

NAND2X1 _1770_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1054_),
    .Y(_1055_)
);

NAND3X1 _1350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_546_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_533_),
    .Y(_532_)
);

DFFPOSX1 _2555_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_715_),
    .CLK(i_clk_fast),
    .Q(mem_ibus_ack)
);

OAI22X1 _2135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [26]),
    .C(\u_rf_if.read_buf0 [27]),
    .D(_1171_),
    .Y(_80_)
);

MUX2X1 _1826_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1094_),
    .B(_1095_),
    .S(_1091_),
    .Y(_837_)
);

AOI21X1 _1406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_491_),
    .B(_484_),
    .C(mem_dbus_ack),
    .Y(_483_)
);

MUX2X1 _2364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_451_),
    .B(_247_),
    .S(_179_),
    .Y(_690_)
);

INVX1 _1635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_575_),
    .Y(_670_)
);

DFFPOSX1 _2593_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_738_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.o_waddr [2])
);

AOI21X1 _2173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1226_),
    .B(_1241_),
    .C(_106_),
    .Y(_740_)
);

MUX2X1 _1864_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1113_),
    .B(_1114_),
    .S(_1091_),
    .Y(_818_)
);

OAI21X1 _1444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_470_),
    .C(_455_),
    .Y(_454_)
);

DFFPOSX1 _2649_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_783_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf1 )
);

NAND2X1 _2229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_144_),
    .Y(_145_)
);

AND2X2 _1673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_612_),
    .B(\u_cpu.bufreg2.dhi [4]),
    .Y(_977_)
);

INVX1 _1253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_629_),
    .Y(_628_)
);

AOI21X1 _2458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_324_),
    .B(_320_),
    .C(_492_),
    .Y(_673_)
);

NAND2X1 _2038_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(_1175_),
    .Y(_16_)
);

NOR2X1 _1729_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [17]),
    .B(_1013_),
    .Y(_1023_)
);

NOR2X1 _1309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_572_)
);

INVX1 _1482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .Y(_424_)
);

DFFPOSX1 _2687_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_819_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

NAND3X1 _2267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .B(\u_mem_serial.bit_count [0]),
    .C(_172_),
    .Y(_180_)
);

AOI21X1 _1958_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1189_),
    .B(_1188_),
    .C(_1192_),
    .Y(_801_)
);

AOI21X1 _1538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_389_),
    .B(_380_),
    .C(_379_),
    .Y(_914_)
);

AOI21X1 _1291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_591_),
    .B(_593_),
    .C(_594_),
    .Y(_590_)
);

DFFPOSX1 _2496_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_942_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.opcode [0])
);

AOI21X1 _2076_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_41_),
    .B(_1170_),
    .C(_42_),
    .Y(_773_)
);

NOR2X1 _1767_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [9]),
    .B(_1013_),
    .Y(_1053_)
);

AND2X2 _1347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_549_),
    .B(_566_),
    .Y(_535_)
);

NAND2X1 _1996_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [1]),
    .B(_1223_),
    .Y(_1224_)
);

INVX1 _1576_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [26]),
    .Y(_350_)
);

NAND2X1 _1385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [13]),
    .B(mem_ibus_ack),
    .Y(_498_)
);

MUX2X1 _2399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_411_),
    .B(_275_),
    .S(_179_),
    .Y(_683_)
);

DFFPOSX1 _2611_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_748_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [28])
);

INVX1 _1899_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [2]),
    .Y(_1137_)
);

OAI21X1 _1479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_602_),
    .C(_427_),
    .Y(_426_)
);

INVX1 _2420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [27]),
    .Y(_293_)
);

INVX1 _2000_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [3]),
    .Y(_1227_)
);

NOR2X1 _1288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_593_)
);

NOR2X1 _1920_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1152_),
    .B(_1155_),
    .Y(_1156_)
);

NOR2X1 _1500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_411_),
    .Y(_410_)
);

DFFPOSX1 _2705_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_836_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

DFFPOSX1 _2514_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_927_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

DFFPOSX1 _2743_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_873_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dhi [6])
);

NOR2X1 _2323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_mem_miso),
    .B(_200_),
    .Y(_225_)
);

DFFPOSX1 _2552_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_713_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [5])
);

NOR2X1 _2132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [24]),
    .B(_1174_),
    .Y(_78_)
);

INVX1 _1823_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1094_)
);

NOR2X1 _1403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_656_),
    .Y(_486_)
);

DFFPOSX1 _2608_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_781_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.write_wait [1])
);

AOI22X1 _2361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [14]),
    .Y(_246_)
);

MUX2X1 _1632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_668_),
    .B(_352_),
    .S(_597_),
    .Y(_878_)
);

OAI22X1 _2417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_616_),
    .B(_186_),
    .C(_280_),
    .D(_258_),
    .Y(_291_)
);

DFFPOSX1 _2590_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_691_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [15])
);

NAND2X1 _2170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_103_),
    .B(_104_),
    .Y(_105_)
);

INVX1 _1861_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_1113_)
);

INVX1 _1441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_457_)
);

DFFPOSX1 _2646_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_793_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[3])
);

INVX1 _2226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .Y(_142_)
);

NOR2X1 _1917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_383_),
    .Y(_1153_)
);

AOI21X1 _1670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_mem_serial.shift_reg [29]),
    .C(_971_),
    .Y(_975_)
);

OAI21X1 _1250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bne_or_bge ),
    .C(_632_),
    .Y(_631_)
);

OAI21X1 _2455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(_1134_),
    .C(_661_),
    .Y(_322_)
);

NAND2X1 _2035_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .B(_10_),
    .Y(_14_)
);

AOI21X1 _1726_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1019_),
    .C(_1020_),
    .Y(_862_)
);

NOR2X1 _1306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_580_),
    .B(_576_),
    .Y(_575_)
);

DFFPOSX1 _2684_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_816_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

AND2X2 _2264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_176_),
    .B(_175_),
    .Y(_177_)
);

NOR2X1 _1955_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .B(_568_),
    .Y(_1190_)
);

AOI21X1 _1535_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_384_),
    .B(_392_),
    .C(_381_),
    .Y(_915_)
);

DFFPOSX1 _2493_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_908_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[4])
);

AOI21X1 _2073_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_39_),
    .B(_1170_),
    .C(_40_),
    .Y(_774_)
);

INVX1 _1764_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_1050_)
);

OR2X2 _1344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_539_),
    .B(_562_),
    .Y(_538_)
);

DFFPOSX1 _2549_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_710_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [3])
);

INVX1 _2129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [25]),
    .Y(_76_)
);

NOR2X1 _1993_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_492_),
    .B(_482_),
    .Y(_1221_)
);

MUX2X1 _1573_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_352_),
    .B(_353_),
    .S(_597_),
    .Y(_906_)
);

MUX2X1 _2358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1034_),
    .B(_244_),
    .S(_179_),
    .Y(_693_)
);

OAI21X1 _1629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_629_),
    .B(_665_),
    .C(_666_),
    .Y(_667_)
);

OAI21X1 _1382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_511_),
    .B(_512_),
    .C(_501_),
    .Y(_500_)
);

DFFPOSX1 _2587_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_735_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [2])
);

NOR2X1 _2167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(_102_),
    .Y(_742_)
);

MUX2X1 _1858_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1110_),
    .B(_1111_),
    .S(_1091_),
    .Y(_821_)
);

NOR2X1 _1438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_460_),
    .B(_465_),
    .Y(_459_)
);

OAI21X1 _2396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_139_),
    .B(raddr[1]),
    .C(_272_),
    .Y(_273_)
);

INVX1 _1667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(_972_)
);

INVX1 _1247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_634_)
);

MUX2X1 _1896_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1134_),
    .B(_531_),
    .S(_602_),
    .Y(_806_)
);

AOI21X1 _1476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_431_),
    .B(_465_),
    .C(_429_),
    .Y(_926_)
);

INVX1 _1285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_597_),
    .Y(_596_)
);

DFFPOSX1 _2702_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_833_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

INVX1 _2299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_202_),
    .Y(_208_)
);

DFFPOSX1 _2511_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_808_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

FILL FILL98550x21750 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1799_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1076_),
    .Y(_1077_)
);

INVX1 _1379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_504_),
    .Y(_503_)
);

DFFPOSX1 _2740_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_870_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dhi [3])
);

AOI22X1 _2320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_163_),
    .B(_223_),
    .C(_167_),
    .D(_169_),
    .Y(_710_)
);

MUX2X1 _1820_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1089_),
    .B(_1092_),
    .S(_1091_),
    .Y(_840_)
);

NAND3X1 _1400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_601_),
    .Y(_489_)
);

DFFPOSX1 _2605_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_787_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rtrig1 )
);

NAND2X1 _2414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .B(_142_),
    .Y(_288_)
);

DFFPOSX1 _2643_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_775_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [1])
);

INVX1 _2223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(_139_)
);

NOR2X1 _1914_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(_589_),
    .Y(_1150_)
);

NOR2X1 _2452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_523_),
    .B(_492_),
    .Y(_674_)
);

NOR2X1 _2032_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1179_),
    .B(_568_),
    .Y(_11_)
);

NAND2X1 _1723_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_463_),
    .Y(_1018_)
);

INVX1 _1303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_579_),
    .Y(_578_)
);

DFFPOSX1 _2508_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_922_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

DFFPOSX1 _2681_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_813_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

OAI21X1 _2261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_162_),
    .B(_168_),
    .C(_174_),
    .Y(_720_)
);

OAI21X1 _1952_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1179_),
    .B(_1186_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_1187_)
);

INVX1 _1532_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[2]),
    .Y(_383_)
);

DFFPOSX1 _2737_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_868_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

NAND2X1 _2317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .B(\u_mem_serial.state [0]),
    .Y(_221_)
);

DFFPOSX1 _2490_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_906_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [28])
);

OAI21X1 _2070_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_37_),
    .B(_1174_),
    .C(_38_),
    .Y(_775_)
);

OAI21X1 _1761_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [11]),
    .C(_1047_),
    .Y(_1048_)
);

NAND2X1 _1341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_542_),
    .B(_548_),
    .Y(_541_)
);

DFFPOSX1 _2546_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_708_),
    .CLK(i_clk_fast),
    .Q(rf_shared_rdata[0])
);

NOR2X1 _2126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_73_),
    .B(_74_),
    .Y(_755_)
);

NOR2X1 _1817_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_628_),
    .Y(_1091_)
);

OAI21X1 _1990_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[3]),
    .B(_1218_),
    .C(_1219_),
    .Y(_1220_)
);

OAI21X1 _1570_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_385_),
    .B(_357_),
    .C(_354_),
    .Y(_907_)
);

AOI22X1 _2355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [12]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [11]),
    .Y(_243_)
);

INVX1 _1626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_664_)
);

NOR2X1 _2584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_656_),
    .B(_655_),
    .Y(_654_)
);

OAI21X1 _2164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_29_),
    .B(_100_),
    .C(i_rst_n),
    .Y(_101_)
);

INVX1 _1855_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_1110_)
);

NOR2X1 _1435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_463_),
    .Y(_462_)
);

AOI21X1 _2393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [21]),
    .B(_184_),
    .C(_270_),
    .Y(_271_)
);

MUX2X1 _1664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [30]),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .S(mem_dbus_ack),
    .Y(_970_)
);

BUFX2 _1244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1194_),
    .Y(o_mem_sck)
);

AOI22X1 _2449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_312_),
    .B(_179_),
    .C(_318_),
    .D(_316_),
    .Y(_676_)
);

OAI21X1 _2029_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1179_),
    .B(_1186_),
    .C(\u_rf_if.stream_active ),
    .Y(_9_)
);

AND2X2 _1893_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .B(_1130_),
    .Y(_1132_)
);

INVX1 _1473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_431_)
);

DFFPOSX1 _2678_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_807_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.alu.add_cy_r )
);

NOR2X1 _2258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_171_),
    .Y(_172_)
);

NAND2X1 _1949_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1183_),
    .Y(_1184_)
);

MUX2X1 _1529_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_392_),
    .B(_386_),
    .S(_389_),
    .Y(_916_)
);

NOR2X1 _1282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_600_),
    .B(_601_),
    .Y(_599_)
);

DFFPOSX1 _2487_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_903_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [25])
);

OAI21X1 _2067_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_567_),
    .B(_1174_),
    .C(_36_),
    .Y(_776_)
);

AOI21X1 _1758_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1044_),
    .C(_1045_),
    .Y(_855_)
);

NOR2X1 _1338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_545_),
    .Y(_544_)
);

NAND2X1 _2296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_205_),
    .B(_202_),
    .Y(_206_)
);

OAI21X1 _1987_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1209_),
    .B(_1216_),
    .C(_1217_),
    .Y(_794_)
);

NOR2X1 _1567_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_356_),
    .B(_413_),
    .Y(_355_)
);

NOR2X1 _1796_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [2]),
    .B(_1013_),
    .Y(_1075_)
);

AOI21X1 _1376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_640_),
    .Y(_506_)
);

NOR2X1 _2602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_661_),
    .Y(_660_)
);

NAND2X1 _2199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [1]),
    .B(_561_),
    .Y(_124_)
);

AOI21X1 _2411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [24]),
    .B(_184_),
    .C(_285_),
    .Y(_286_)
);

OAI21X1 _1699_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_972_),
    .B(\u_mem_serial.shift_reg [25]),
    .C(_969_),
    .Y(_1000_)
);

NAND2X1 _1279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_604_),
    .B(_603_),
    .Y(_602_)
);

DFFPOSX1 _2640_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_772_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [4])
);

INVX1 _2220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1196_),
    .Y(_138_)
);

INVX1 _1911_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1146_),
    .Y(_1147_)
);

OAI21X1 _1720_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [20]),
    .C(_1015_),
    .Y(_1016_)
);

AOI22X1 _1300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_583_),
    .B(_582_),
    .C(_595_),
    .D(_659_),
    .Y(_581_)
);

DFFPOSX1 _2505_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_919_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[2])
);

DFFPOSX1 _2734_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_865_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [21])
);

OAI21X1 _2314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .C(\u_mem_serial.state [0]),
    .Y(_219_)
);

DFFPOSX1 _2543_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_680_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [26])
);

AOI21X1 _2123_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_71_),
    .B(_1170_),
    .C(_72_),
    .Y(_756_)
);

MUX2X1 _1814_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1088_),
    .B(_1086_),
    .S(_969_),
    .Y(_842_)
);

MUX2X1 _2352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1046_),
    .B(_241_),
    .S(_179_),
    .Y(_696_)
);

MUX2X1 _1623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_328_),
    .B(_662_),
    .S(_597_),
    .Y(_881_)
);

NOR2X1 _2408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_195_),
    .Y(_283_)
);

DFFPOSX1 _2581_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_732_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg0_latched [0])
);

NOR2X1 _2161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1181_),
    .B(_96_),
    .Y(_98_)
);

MUX2X1 _1852_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1107_),
    .B(_1108_),
    .S(_1091_),
    .Y(_824_)
);

OAI21X1 _1432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_467_),
    .B(_466_),
    .C(_468_),
    .Y(_465_)
);

DFFPOSX1 _2637_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_770_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [6])
);

OAI21X1 _2217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_132_),
    .B(_134_),
    .C(_135_),
    .Y(_136_)
);

NAND2X1 _2390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1226_),
    .B(_139_),
    .Y(_268_)
);

AOI21X1 _1908_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_626_),
    .B(_475_),
    .C(_1144_),
    .Y(_803_)
);

OAI21X1 _1661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_963_),
    .B(_964_),
    .C(_966_),
    .Y(_967_)
);

NAND2X1 _2446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_142_),
    .B(_315_),
    .Y(_316_)
);

NAND2X1 _2026_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_7_),
    .B(_1148_),
    .Y(_8_)
);

INVX1 _1717_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_968_),
    .Y(_1013_)
);

OAI21X1 _1890_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(_1129_)
);

OAI21X1 _1470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_437_),
    .C(_497_),
    .Y(_433_)
);

DFFPOSX1 _2675_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_803_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.o_cnt [2])
);

INVX1 _2255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .Y(_169_)
);

INVX1 _1946_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_1181_)
);

INVX1 _1526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_388_)
);

DFFPOSX1 _2484_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_900_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [22])
);

AOI22X1 _2064_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1206_),
    .B(_34_),
    .C(_1213_),
    .D(raddr[1]),
    .Y(_35_)
);

NAND2X1 _1755_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1042_),
    .Y(_1043_)
);

INVX1 _1335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_547_)
);

NOR2X1 _2293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_191_),
    .Y(_203_)
);

NOR2X1 _1984_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1215_),
    .B(_1200_),
    .Y(_795_)
);

NOR2X1 _1564_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_418_),
    .Y(_358_)
);

AOI22X1 _2349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [9]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [8]),
    .Y(_240_)
);

AOI21X1 _1793_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1071_),
    .C(_1072_),
    .Y(_847_)
);

AOI21X1 _1373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(\u_cpu.bufreg.data [0]),
    .Y(_509_)
);

DFFPOSX1 _2578_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_688_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [18])
);

INVX1 _2158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_95_),
    .Y(_96_)
);

INVX1 _1849_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_1107_)
);

INVX1 _1429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_469_),
    .Y(_468_)
);

OAI22X1 _2387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1007_),
    .B(_186_),
    .C(_478_),
    .D(_258_),
    .Y(_266_)
);

OAI21X1 _1658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_664_),
    .C(_637_),
    .Y(_964_)
);

AND2X2 _2196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_122_),
    .B(_114_),
    .Y(_733_)
);

NOR2X1 _1887_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_1126_),
    .Y(_1127_)
);

NOR2X1 _1467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_436_),
    .B(_465_),
    .Y(_435_)
);

OAI21X1 _1696_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_615_),
    .B(_996_),
    .C(_618_),
    .Y(_997_)
);

OAI21X1 _1276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_607_),
    .C(_606_),
    .Y(_605_)
);

DFFPOSX1 _2502_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_916_),
    .CLK(i_clk_sys_ext),
    .Q(rf_wreg0_to_if[3])
);

OAI22X1 _2099_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [13]),
    .C(\u_rf_if.read_buf0 [12]),
    .D(_1174_),
    .Y(_57_)
);

DFFPOSX1 _2731_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_862_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [18])
);

NOR2X1 _2311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_159_),
    .Y(_216_)
);

MUX2X1 _1599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_340_),
    .B(_339_),
    .S(_597_),
    .Y(_893_)
);

DFFPOSX1 _2540_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_704_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [2])
);

NOR2X1 _2120_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_69_),
    .B(_70_),
    .Y(_757_)
);

INVX1 _1811_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_1086_)
);

INVX1 _1620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [4]),
    .Y(_328_)
);

INVX1 _2405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [25]),
    .Y(_280_)
);

DFFPOSX1 _2634_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_768_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [8])
);

NOR2X1 _2214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_1177_),
    .Y(_133_)
);

NAND2X1 _1905_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .B(\u_rf_if.prefetch_active ),
    .Y(_1143_)
);

NOR2X1 _2443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_202_),
    .Y(_313_)
);

NAND3X1 _2023_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_383_),
    .B(_380_),
    .C(_589_),
    .Y(_5_)
);

NAND2X1 _1714_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_478_),
    .Y(_1011_)
);

DFFPOSX1 _2672_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_675_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

NOR2X1 _2252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_165_),
    .Y(_166_)
);

INVX1 _1943_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1177_),
    .Y(_1178_)
);

OAI21X1 _1523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660_),
    .B(_591_),
    .C(_656_),
    .Y(_391_)
);

DFFPOSX1 _2728_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_859_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [15])
);

NAND3X1 _2308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .B(_174_),
    .C(_210_),
    .Y(_215_)
);

DFFPOSX1 _2481_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_898_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [20])
);

OAI21X1 _2061_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1137_),
    .B(_1209_),
    .C(_32_),
    .Y(_778_)
);

NOR2X1 _1752_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [12]),
    .B(_1013_),
    .Y(_1041_)
);

NAND3X1 _1332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_551_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_550_)
);

DFFPOSX1 _2537_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_677_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [29])
);

AOI21X1 _2117_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_67_),
    .B(_1170_),
    .C(_68_),
    .Y(_758_)
);

MUX2X1 _2290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_197_),
    .B(_198_),
    .S(_200_),
    .Y(_717_)
);

OAI21X1 _1808_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(mem_dbus_ack),
    .C(_1083_),
    .Y(_1084_)
);

OAI21X1 _1981_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1202_),
    .B(_1209_),
    .C(_1214_),
    .Y(_797_)
);

AOI21X1 _1561_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [30]),
    .C(_426_),
    .Y(_360_)
);

DFFPOSX1 _2766_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_896_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [18])
);

MUX2X1 _2346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1057_),
    .B(_238_),
    .S(_179_),
    .Y(_699_)
);

MUX2X1 _1617_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_331_),
    .B(_330_),
    .S(_597_),
    .Y(_884_)
);

NAND2X1 _1790_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_494_),
    .Y(_1070_)
);

INVX1 _1370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_513_),
    .Y(_512_)
);

DFFPOSX1 _2575_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_729_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg1_latched [0])
);

OAI21X1 _2155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .B(_92_),
    .C(_93_),
    .Y(_94_)
);

MUX2X1 _1846_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1104_),
    .B(_1105_),
    .S(_1091_),
    .Y(_827_)
);

OAI21X1 _1426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_547_),
    .C(_471_),
    .Y(_934_)
);

OAI21X1 _2384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1147_),
    .B(_482_),
    .C(_216_),
    .Y(_263_)
);

AOI21X1 _1655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_669_),
    .B(_596_),
    .C(_961_),
    .Y(_874_)
);

OAI21X1 _2193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1136_),
    .B(_120_),
    .C(_114_),
    .Y(_121_)
);

OAI21X1 _1884_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jump ),
    .B(_513_),
    .C(_1091_),
    .Y(_1125_)
);

AOI21X1 _1464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .B(_465_),
    .C(_438_),
    .Y(_929_)
);

DFFPOSX1 _2669_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_798_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [5])
);

OAI21X1 _2249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_145_),
    .B(_156_),
    .C(_142_),
    .Y(_163_)
);

INVX1 _1693_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_994_)
);

AND2X2 _1273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_610_),
    .B(_609_),
    .Y(_608_)
);

NOR2X1 _2478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_656_),
    .Y(_638_)
);

OAI21X1 _2058_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1181_),
    .B(_1182_),
    .C(_29_),
    .Y(_30_)
);

INVX1 _1749_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_1038_)
);

INVX1 _1329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_553_),
    .Y(_552_)
);

INVX1 _2287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_shared_rdata[0]),
    .Y(_198_)
);

INVX1 _1978_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1207_),
    .Y(_1212_)
);

OAI21X1 _1558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_364_),
    .C(_366_),
    .Y(_363_)
);

OAI22X1 _2096_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [12]),
    .C(\u_rf_if.read_buf0 [13]),
    .D(_1171_),
    .Y(_55_)
);

OAI21X1 _1787_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [5]),
    .C(_1067_),
    .Y(_1068_)
);

INVX1 _1367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_516_),
    .Y(_515_)
);

INVX1 _1596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_340_)
);

OAI22X1 _2402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_217_),
    .B(_277_),
    .C(_411_),
    .D(_258_),
    .Y(_278_)
);

DFFPOSX1 _2631_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_765_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [11])
);

NAND2X1 _2211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[6]),
    .B(_1213_),
    .Y(_131_)
);

NOR2X1 _1902_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1139_),
    .Y(_1140_)
);

INVX1 _1499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_411_)
);

NOR2X1 _2440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_310_),
    .Y(_311_)
);

OAI21X1 _2020_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1227_),
    .B(_2_),
    .C(_1221_),
    .Y(_3_)
);

OAI21X1 _1711_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [22]),
    .C(_1008_),
    .Y(_1009_)
);

AOI22X1 _1940_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(\u_rf_if.stream_active ),
    .C(_1175_),
    .D(\u_rf_if.read_buf0 [30]),
    .Y(_1176_)
);

NOR2X1 _1520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_394_),
    .B(_413_),
    .Y(_393_)
);

DFFPOSX1 _2725_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_856_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [12])
);

OAI21X1 _2305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_211_),
    .B(_212_),
    .C(_210_),
    .Y(_714_)
);

DFFPOSX1 _2534_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_701_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [5])
);

NOR2X1 _2114_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_65_),
    .B(_66_),
    .Y(_759_)
);

OAI21X1 _1805_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(_1081_),
    .Y(_1082_)
);

FILL FILL98550x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2763_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_893_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [15])
);

AOI22X1 _2343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [6]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [5]),
    .Y(_237_)
);

INVX1 _1614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [7]),
    .Y(_331_)
);

DFFPOSX1 _2572_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_728_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg1_latched [1])
);

AND2X2 _2152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_89_),
    .B(_91_),
    .Y(_746_)
);

INVX1 _1843_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_1104_)
);

OAI21X1 _1423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_626_),
    .B(_625_),
    .C(i_rst_n),
    .Y(_472_)
);

DFFPOSX1 _2628_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_763_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [13])
);

AOI21X1 _2208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_403_),
    .B(_128_),
    .C(_492_),
    .Y(_727_)
);

AOI22X1 _2381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_478_),
    .B(_179_),
    .C(_257_),
    .D(_260_),
    .Y(_686_)
);

NAND2X1 _1652_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_959_)
);

OAI21X1 _2437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1113_),
    .B(_202_),
    .C(_307_),
    .Y(_308_)
);

INVX1 _2017_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1242_),
    .Y(_1197_)
);

AOI21X1 _2190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1137_),
    .B(_117_),
    .C(_118_),
    .Y(_735_)
);

MUX2X1 _1708_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1004_),
    .B(_1006_),
    .S(_968_),
    .Y(_866_)
);

INVX1 _1881_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1091_),
    .Y(_1123_)
);

INVX1 _1461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_440_)
);

DFFPOSX1 _2666_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_795_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.pending_read )
);

NAND3X1 _2246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_159_),
    .C(_160_),
    .Y(_161_)
);

INVX1 _1937_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1168_),
    .Y(_1173_)
);

NOR2X1 _1517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_396_),
    .B(_413_),
    .Y(_395_)
);

NAND2X1 _1690_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_972_),
    .B(_991_),
    .Y(_992_)
);

NOR2X1 _1270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_612_),
    .Y(_611_)
);

NAND2X1 _2475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_642_),
    .B(_643_),
    .Y(_641_)
);

OAI22X1 _2055_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1182_),
    .B(_1205_),
    .C(raddr[0]),
    .D(_1218_),
    .Y(_28_)
);

OAI21X1 _1746_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [14]),
    .C(_1035_),
    .Y(_1036_)
);

INVX1 _1326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_555_)
);

NAND3X1 _2284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_141_),
    .B(_195_),
    .C(_193_),
    .Y(_196_)
);

INVX1 _1975_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1208_),
    .Y(_1209_)
);

NAND2X1 _1555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_661_),
    .Y(_366_)
);

INVX1 _2093_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [12]),
    .Y(_53_)
);

NOR2X1 _1784_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [5]),
    .B(_1013_),
    .Y(_1066_)
);

NOR2X1 _1364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_518_)
);

DFFPOSX1 _2569_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_686_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [20])
);

INVX1 _2149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_14_),
    .Y(_89_)
);

MUX2X1 _1593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_343_),
    .B(_342_),
    .S(_597_),
    .Y(_896_)
);

INVX1 _2378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_184_),
    .Y(_258_)
);

OAI21X1 _1649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_953_),
    .B(_948_),
    .C(_951_),
    .Y(_957_)
);

NOR2X1 _2187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1138_),
    .B(_113_),
    .Y(_116_)
);

OAI21X1 _1878_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_641_),
    .B(_581_),
    .C(_643_),
    .Y(_1121_)
);

OAI21X1 _1458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_452_),
    .C(_443_),
    .Y(_442_)
);

NOR2X1 _1687_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_616_),
    .B(_615_),
    .Y(_989_)
);

NAND2X1 _1267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_616_),
    .B(_615_),
    .Y(_614_)
);

OAI21X1 _1496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_656_),
    .B(_655_),
    .C(_561_),
    .Y(_414_)
);

DFFPOSX1 _2722_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_853_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [9])
);

INVX1 _2302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_157_),
    .Y(_210_)
);

DFFPOSX1 _2531_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_944_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.opcode [2])
);

AOI21X1 _2111_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_60_),
    .B(_1175_),
    .C(_64_),
    .Y(_760_)
);

AOI21X1 _1802_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1078_),
    .C(_1079_),
    .Y(_845_)
);

INVX1 _1399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_491_),
    .Y(_490_)
);

DFFPOSX1 _2760_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_890_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [12])
);

MUX2X1 _2340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_559_),
    .B(_235_),
    .S(_179_),
    .Y(_702_)
);

FILL FILL98550x90150 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_334_),
    .B(_333_),
    .S(_597_),
    .Y(_887_)
);

MUX2X1 _1840_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1101_),
    .B(_1102_),
    .S(_1091_),
    .Y(_830_)
);

INVX1 _1420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_475_)
);

DFFPOSX1 _2625_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_760_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [16])
);

NAND2X1 _2205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_561_),
    .Y(_127_)
);

INVX1 _2434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [29]),
    .Y(_305_)
);

NOR2X1 _2014_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1239_),
    .B(_1149_),
    .Y(_1240_)
);

INVX1 _1705_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [22]),
    .Y(_1004_)
);

DFFPOSX1 _2663_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_791_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.write_wait [0])
);

NOR2X1 _2243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .B(_157_),
    .Y(_158_)
);

NOR2X1 _1934_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_1169_),
    .Y(_1170_)
);

NOR2X1 _1514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_399_),
    .Y(_398_)
);

DFFPOSX1 _2719_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_850_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [6])
);

OAI21X1 _2472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_652_),
    .B(_645_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_644_)
);

AOI22X1 _2052_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[4]),
    .Y(_26_)
);

AOI21X1 _1743_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1032_),
    .C(_1033_),
    .Y(_858_)
);

INVX1 _1323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_558_)
);

DFFPOSX1 _2528_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_941_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.cnt_r [0])
);

OAI22X1 _2108_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [16]),
    .C(\u_rf_if.read_buf0 [17]),
    .D(_1171_),
    .Y(_63_)
);

OAI21X1 _2281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_191_),
    .B(_178_),
    .C(_192_),
    .Y(_193_)
);

INVX1 _1972_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1205_),
    .Y(_1206_)
);

OAI21X1 _1552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_373_),
    .C(_369_),
    .Y(_910_)
);

DFFPOSX1 _2757_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_725_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rs2_stream_buf [0])
);

AOI22X1 _2337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [2]),
    .Y(_234_)
);

INVX1 _2090_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [11]),
    .Y(_51_)
);

INVX1 _1608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [10]),
    .Y(_334_)
);

AOI21X1 _1781_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1062_),
    .C(_1063_),
    .Y(_850_)
);

INVX1 _1361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .Y(_521_)
);

DFFPOSX1 _2566_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_685_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [21])
);

NOR2X1 _2146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [29]),
    .B(_1174_),
    .Y(_87_)
);

INVX1 _1837_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_1101_)
);

INVX1 _1417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_477_),
    .Y(_476_)
);

INVX1 _1590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [19]),
    .Y(_343_)
);

OAI21X1 _2375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_252_),
    .B(_1234_),
    .C(\u_rf_if.wdata0_r [0]),
    .Y(_255_)
);

AOI21X1 _1646_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_948_),
    .B(_953_),
    .C(_954_),
    .Y(_955_)
);

INVX1 _2184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1200_),
    .Y(_114_)
);

INVX1 _1875_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_1120_)
);

INVX1 _1455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [15]),
    .Y(_445_)
);

AOI21X1 _1684_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_982_),
    .C(_986_),
    .Y(_987_)
);

INVX1 _1264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_617_)
);

NOR2X1 _2469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_661_),
    .B(_648_),
    .Y(_647_)
);

NAND2X1 _2049_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_24_)
);

MUX2X1 _1493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_418_),
    .B(_417_),
    .S(_426_),
    .Y(_921_)
);

DFFPOSX1 _2698_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_830_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

MUX2X1 _2278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_376_),
    .B(_190_),
    .S(_179_),
    .Y(_719_)
);

INVX1 _1969_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .Y(_1203_)
);

AOI21X1 _1549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [19]),
    .C(_465_),
    .Y(_370_)
);

NOR2X1 _2087_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [8]),
    .B(_1174_),
    .Y(_49_)
);

NAND2X1 _1778_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_558_),
    .Y(_1061_)
);

AND2X2 _1358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_632_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_524_)
);

MUX2X1 _1587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_345_),
    .S(_597_),
    .Y(_899_)
);

OAI21X1 _1396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_661_),
    .C(_493_),
    .Y(_942_)
);

DFFPOSX1 _2622_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_779_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[0])
);

AOI21X1 _2202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_455_),
    .B(_125_),
    .C(_492_),
    .Y(_730_)
);

OAI21X1 _2431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_195_),
    .B(_301_),
    .C(_302_),
    .Y(_303_)
);

AOI21X1 _2011_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1236_),
    .B(_1237_),
    .C(_1222_),
    .Y(_790_)
);

NAND2X1 _1702_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_359_),
    .Y(_1002_)
);

AOI21X1 _1299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_625_),
    .C(_659_),
    .Y(_582_)
);

DFFPOSX1 _2660_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_698_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [8])
);

OAI21X1 _2240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_155_),
    .B(_152_),
    .C(_146_),
    .Y(_722_)
);

NOR2X1 _1931_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1166_),
    .B(_1139_),
    .Y(_1167_)
);

AOI21X1 _1511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_406_),
    .B(_413_),
    .C(_401_),
    .Y(_919_)
);

DFFPOSX1 _2716_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_847_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [3])
);

NAND2X1 _1740_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1030_),
    .Y(_1031_)
);

INVX1 _1320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(_561_)
);

DFFPOSX1 _2525_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_938_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

OAI22X1 _2105_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [15]),
    .C(\u_rf_if.read_buf0 [14]),
    .D(_1174_),
    .Y(_61_)
);

FILL FILL98550x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2754_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_885_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [7])
);

MUX2X1 _2334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1076_),
    .B(_232_),
    .S(_179_),
    .Y(_705_)
);

MUX2X1 _1605_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_337_),
    .B(_336_),
    .S(_597_),
    .Y(_890_)
);

DFFPOSX1 _2563_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_720_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [4])
);

INVX1 _2143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [30]),
    .Y(_85_)
);

MUX2X1 _1834_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1098_),
    .B(_1099_),
    .S(_1091_),
    .Y(_833_)
);

OAI21X1 _1414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_636_),
    .C(_479_),
    .Y(_938_)
);

DFFPOSX1 _2619_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_756_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [20])
);

AOI21X1 _2372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_1229_),
    .C(_1230_),
    .Y(_252_)
);

OR2X2 _1643_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_950_),
    .B(\u_cpu.bufreg.c_r ),
    .Y(_952_)
);

NAND2X1 _2428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_216_),
    .B(_1155_),
    .Y(_300_)
);

NOR2X1 _2008_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1234_),
    .B(_1233_),
    .Y(_1235_)
);

NAND2X1 _2181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1207_),
    .Y(_112_)
);

INVX1 _1872_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_1118_)
);

NOR2X1 _1452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_448_),
    .B(_465_),
    .Y(_447_)
);

DFFPOSX1 _2657_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_cpu.o_wdata0 ),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.wdata0_next [0])
);

INVX1 _2237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.req_pending ),
    .Y(_153_)
);

NOR2X1 _1928_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [5]),
    .Y(_1164_)
);

INVX1 _1508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_404_),
    .Y(_403_)
);

NOR2X1 _1681_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_981_),
    .B(_983_),
    .Y(_984_)
);

OAI21X1 _1261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_636_),
    .B(_621_),
    .C(_628_),
    .Y(_620_)
);

INVX1 _2466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_651_),
    .Y(_650_)
);

AOI21X1 _2046_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1145_),
    .B(_21_),
    .C(mem_ibus_ack),
    .Y(_22_)
);

NOR2X1 _1737_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_1013_),
    .Y(_1029_)
);

INVX1 _1317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.add_cy_r ),
    .Y(_564_)
);

MUX2X1 _1490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_420_),
    .B(_419_),
    .S(_426_),
    .Y(_922_)
);

DFFPOSX1 _2695_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_827_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

AND2X2 _2275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_161_),
    .B(_187_),
    .Y(_188_)
);

NOR2X1 _1966_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1135_),
    .B(_1200_),
    .Y(_798_)
);

OAI21X1 _1546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_636_),
    .B(_653_),
    .C(_374_),
    .Y(_373_)
);

INVX1 _2084_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [9]),
    .Y(_47_)
);

OAI21X1 _1775_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [8]),
    .C(_1058_),
    .Y(_1059_)
);

NAND2X1 _1355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_528_),
    .B(_532_),
    .Y(_527_)
);

INVX1 _1584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [22]),
    .Y(_346_)
);

AOI22X1 _2369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [18]),
    .Y(_250_)
);

INVX1 _1393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_494_)
);

DFFPOSX1 _2598_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_741_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rcnt [2])
);

OAI21X1 _2178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_108_),
    .B(_109_),
    .C(_1221_),
    .Y(_110_)
);

MUX2X1 _1869_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1116_),
    .B(_521_),
    .S(_1091_),
    .Y(_815_)
);

NOR2X1 _1449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_451_),
    .Y(_450_)
);

INVX1 _1678_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_981_)
);

INVX1 _1258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_624_),
    .Y(_623_)
);

MUX2X1 _1487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_422_),
    .B(_421_),
    .S(_426_),
    .Y(_923_)
);

NAND2X1 _1296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_586_),
    .B(_622_),
    .Y(_585_)
);

DFFPOSX1 _2713_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_844_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [0])
);

DFFPOSX1 _2522_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_935_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

OAI22X1 _2102_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [14]),
    .C(\u_rf_if.read_buf0 [15]),
    .D(_1171_),
    .Y(_59_)
);

FILL FILL98550x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2751_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_882_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [4])
);

AOI21X1 _2331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_226_),
    .B(_230_),
    .C(_179_),
    .Y(_231_)
);

INVX1 _1602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [13]),
    .Y(_337_)
);

DFFPOSX1 _2560_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_788_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.wen0_r )
);

NOR2X1 _2140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(_1174_),
    .Y(_83_)
);

INVX1 _1831_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_1098_)
);

NOR2X1 _1411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_580_),
    .B(_492_),
    .Y(_940_)
);

DFFPOSX1 _2616_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_753_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [23])
);

OAI21X1 _1640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_655_),
    .C(_566_),
    .Y(_949_)
);

NOR2X1 _2425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_297_),
    .Y(_298_)
);

OAI21X1 _2005_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1147_),
    .B(_482_),
    .C(\u_rf_if.wen0_r ),
    .Y(_1232_)
);

DFFPOSX1 _2654_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_786_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_active )
);

NAND2X1 _2234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_149_),
    .Y(_150_)
);

NAND3X1 _1925_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1158_),
    .B(_1160_),
    .C(_1156_),
    .Y(_1161_)
);

INVX1 _1505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[2]),
    .Y(_406_)
);

OAI21X1 _2463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_326_),
    .B(_1123_),
    .C(_327_),
    .Y(_671_)
);

OAI21X1 _2043_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 ),
    .B(_19_),
    .C(_481_),
    .Y(_20_)
);

AOI21X1 _1734_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1025_),
    .C(_1026_),
    .Y(_860_)
);

INVX1 _1314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_567_)
);

DFFPOSX1 _2519_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_932_),
    .CLK(i_clk_sys_ext),
    .Q(rreg0[2])
);

DFFPOSX1 _2692_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_824_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

NOR2X1 _2272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_142_),
    .B(_182_),
    .Y(_185_)
);

NOR2X1 _1963_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1198_)
);

NAND2X1 _1543_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_561_),
    .Y(_375_)
);

DFFPOSX1 _2748_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_879_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [0])
);

NOR2X1 _2328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_142_),
    .Y(_228_)
);

NOR2X1 _2081_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(_1174_),
    .Y(_45_)
);

MUX2X1 _1772_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_507_),
    .B(_1056_),
    .S(_968_),
    .Y(_852_)
);

NAND2X1 _1352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_636_),
    .Y(_530_)
);

DFFPOSX1 _2557_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_800_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg1_latched [3])
);

INVX1 _2137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_81_)
);

MUX2X1 _1828_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1095_),
    .B(_1096_),
    .S(_1091_),
    .Y(_836_)
);

INVX1 _1408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_482_),
    .Y(_481_)
);

MUX2X1 _1581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_349_),
    .B(_348_),
    .S(_597_),
    .Y(_902_)
);

MUX2X1 _2366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_457_),
    .B(_248_),
    .S(_179_),
    .Y(_689_)
);

OAI21X1 _1637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_723_),
    .B(_670_),
    .C(_656_),
    .Y(_724_)
);

OAI21X1 _1390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_592_),
    .C(_496_),
    .Y(_945_)
);

DFFPOSX1 _2595_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_739_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.o_waddr [1])
);

AOI21X1 _2175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1238_),
    .B(_1197_),
    .C(_107_),
    .Y(_739_)
);

MUX2X1 _1866_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1114_),
    .B(_1115_),
    .S(_1091_),
    .Y(_817_)
);

AOI21X1 _1446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_465_),
    .C(_453_),
    .Y(_932_)
);

OAI21X1 _1675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_617_),
    .B(_618_),
    .C(_978_),
    .Y(_979_)
);

INVX1 _1255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_626_)
);

MUX2X1 _1484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_424_),
    .B(_423_),
    .S(_426_),
    .Y(_924_)
);

DFFPOSX1 _2689_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_821_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

NAND2X1 _2269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .B(_181_),
    .Y(_182_)
);

NAND2X1 _1293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_593_),
    .B(_591_),
    .Y(_588_)
);

DFFPOSX1 _2498_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_912_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

AOI21X1 _2078_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_39_),
    .B(_1175_),
    .C(_43_),
    .Y(_772_)
);

INVX1 _1769_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_1054_)
);

NOR2X1 _1349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_534_),
    .B(_535_),
    .Y(_533_)
);

DFFPOSX1 _2710_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_841_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

INVX1 _1998_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .Y(_1225_)
);

INVX1 _1578_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [25]),
    .Y(_349_)
);

NAND2X1 _1387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [12]),
    .Y(_497_)
);

DFFPOSX1 _2613_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_750_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [26])
);

MUX2X1 _2422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [2]),
    .B(\u_cpu.ctrl.o_ibus_adr [2]),
    .S(_202_),
    .Y(_295_)
);

NAND3X1 _2002_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1226_),
    .B(_1227_),
    .C(_1228_),
    .Y(_1229_)
);

DFFPOSX1 _2651_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_784_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [31])
);

INVX1 _2231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.ibus_cyc ),
    .Y(_147_)
);

AOI22X1 _1922_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .B(raddr[5]),
    .C(_1149_),
    .D(_1157_),
    .Y(_1158_)
);

OAI21X1 _1502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_412_),
    .C(_409_),
    .Y(_408_)
);

DFFPOSX1 _2707_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_838_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

AOI21X1 _2460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_490_),
    .B(_325_),
    .C(_492_),
    .Y(_672_)
);

NAND2X1 _2040_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(_1235_),
    .Y(_17_)
);

FILL FILL98550x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1731_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_451_),
    .Y(_1024_)
);

NOR2X1 _1311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(_571_),
    .Y(_570_)
);

DFFPOSX1 _2516_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_929_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

AOI21X1 _1960_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_409_),
    .B(_1193_),
    .C(_492_),
    .Y(_800_)
);

AOI22X1 _1540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_389_),
    .D(rf_wreg0_to_if[0]),
    .Y(_377_)
);

DFFPOSX1 _2745_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_875_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.c_r )
);

OR2X2 _2325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_157_),
    .B(_204_),
    .Y(_707_)
);

DFFPOSX1 _2554_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_714_),
    .CLK(i_clk_fast),
    .Q(_1196_)
);

NOR2X1 _2134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_78_),
    .B(_79_),
    .Y(_752_)
);

INVX1 _1825_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1095_)
);

OAI21X1 _1405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_530_),
    .B(_485_),
    .C(_655_),
    .Y(_484_)
);

AOI22X1 _2363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [15]),
    .Y(_247_)
);

MUX2X1 _1634_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_669_),
    .B(_668_),
    .S(_597_),
    .Y(_877_)
);

AOI22X1 _2419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_287_),
    .B(_179_),
    .C(_290_),
    .D(_292_),
    .Y(_680_)
);

INVX1 _2592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_658_)
);

OAI21X1 _2172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1226_),
    .B(_1241_),
    .C(_1221_),
    .Y(_106_)
);

INVX1 _1863_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_1114_)
);

INVX1 _1443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .Y(_455_)
);

INVX1 _2648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_657_)
);

NOR2X1 _2228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_143_),
    .Y(_144_)
);

INVX1 _1919_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1154_),
    .Y(_1155_)
);

NAND2X1 _1672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_971_),
    .Y(_976_)
);

NAND2X1 _1252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_635_),
    .B(_630_),
    .Y(_629_)
);

OAI21X1 _2457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_322_),
    .B(_321_),
    .C(_323_),
    .Y(_324_)
);

AND2X2 _2037_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_15_),
    .B(_13_),
    .Y(_785_)
);

OAI21X1 _1728_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [18]),
    .C(_1021_),
    .Y(_1022_)
);

OAI21X1 _1308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_641_),
    .B(_581_),
    .C(_574_),
    .Y(_573_)
);

MUX2X1 _1481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_428_),
    .B(_425_),
    .S(_426_),
    .Y(_925_)
);

DFFPOSX1 _2686_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_818_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

OAI21X1 _2266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_157_),
    .C(_178_),
    .Y(_179_)
);

OAI21X1 _1957_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_1188_),
    .C(_1191_),
    .Y(_1192_)
);

OAI22X1 _1537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(\u_mem_serial.shift_reg [8]),
    .C(_382_),
    .D(_385_),
    .Y(_379_)
);

NOR2X1 _1290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_592_),
    .Y(_591_)
);

DFFPOSX1 _2495_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_910_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

OAI22X1 _2075_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [4]),
    .C(\u_rf_if.read_buf0 [3]),
    .D(_1174_),
    .Y(_42_)
);

OAI21X1 _1766_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [10]),
    .C(_1051_),
    .Y(_1052_)
);

NAND2X1 _1346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_537_),
    .B(_538_),
    .Y(_536_)
);

INVX1 _1995_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .Y(_1223_)
);

MUX2X1 _1575_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_353_),
    .B(_351_),
    .S(_597_),
    .Y(_905_)
);

OAI21X1 _1384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_659_),
    .B(_573_),
    .C(_499_),
    .Y(\u_cpu.o_wdata0 )
);

DFFPOSX1 _2589_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_736_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [1])
);

OAI21X1 _2169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1145_),
    .B(_21_),
    .C(_1225_),
    .Y(_104_)
);

AOI21X1 _2398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_185_),
    .C(_274_),
    .Y(_275_)
);

NAND3X1 _1669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_972_),
    .B(_973_),
    .C(_607_),
    .Y(_974_)
);

NOR2X1 _1249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.branch_op ),
    .Y(_632_)
);

DFFPOSX1 _2610_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_747_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [29])
);

INVX1 _1898_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [3]),
    .Y(_1136_)
);

NAND3X1 _1478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_649_),
    .C(_495_),
    .Y(_427_)
);

INVX1 _1287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[0]),
    .Y(_594_)
);

DFFPOSX1 _2704_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_835_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

DFFPOSX1 _2513_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_926_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

DFFPOSX1 _2742_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_872_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dhi [5])
);

NAND2X1 _2322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_224_),
    .B(_167_),
    .Y(_709_)
);

DFFPOSX1 _2551_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_712_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [0])
);

AOI21X1 _2131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(_1170_),
    .C(_77_),
    .Y(_753_)
);

MUX2X1 _1822_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1092_),
    .B(_1093_),
    .S(_1091_),
    .Y(_839_)
);

OAI21X1 _1402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_636_),
    .B(_607_),
    .C(_488_),
    .Y(_487_)
);

DFFPOSX1 _2607_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_671_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.ibus_cyc )
);

MUX2X1 _2360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1030_),
    .B(_245_),
    .S(_179_),
    .Y(_692_)
);

INVX1 _1631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [30]),
    .Y(_668_)
);

OAI21X1 _2416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_159_),
    .B(_1152_),
    .C(_289_),
    .Y(_290_)
);

MUX2X1 _1860_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1111_),
    .B(_1112_),
    .S(_1091_),
    .Y(_820_)
);

INVX1 _1440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[2]),
    .Y(_458_)
);

DFFPOSX1 _2645_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_695_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [11])
);

INVX1 _2225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .Y(_141_)
);

INVX1 _1916_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1151_),
    .Y(_1152_)
);

AND2X2 _2454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1134_),
    .B(\u_cpu.bne_or_bge ),
    .Y(_321_)
);

OAI21X1 _2034_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1180_),
    .B(_11_),
    .C(_12_),
    .Y(_13_)
);

NOR2X1 _1725_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [18]),
    .B(_1013_),
    .Y(_1020_)
);

INVX1 _1305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_577_),
    .Y(_576_)
);

DFFPOSX1 _2683_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_815_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.pc )
);

NOR2X1 _2263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .B(_171_),
    .Y(_176_)
);

NAND2X1 _1954_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_shared_rdata[1]),
    .B(_1161_),
    .Y(_1189_)
);

OAI22X1 _1534_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(\u_mem_serial.shift_reg [9]),
    .C(_382_),
    .D(_390_),
    .Y(_381_)
);

DFFPOSX1 _2739_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_869_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

OAI21X1 _2319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_221_),
    .B(_222_),
    .C(_195_),
    .Y(_223_)
);

DFFPOSX1 _2492_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_727_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg1_latched [2])
);

OAI22X1 _2072_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [3]),
    .C(\u_rf_if.read_buf0 [2]),
    .D(_1174_),
    .Y(_40_)
);

AOI21X1 _1763_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1048_),
    .C(_1049_),
    .Y(_854_)
);

NAND2X1 _1343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_540_),
    .B(_541_),
    .Y(_539_)
);

DFFPOSX1 _2548_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_709_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [2])
);

AOI21X1 _2128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_71_),
    .B(_1175_),
    .C(_75_),
    .Y(_754_)
);

INVX1 _1819_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_1092_)
);

AOI21X1 _1992_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1207_),
    .B(_1199_),
    .C(_492_),
    .Y(_792_)
);

INVX1 _1572_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [29]),
    .Y(_352_)
);

AOI22X1 _2357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [13]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [12]),
    .Y(_244_)
);

NAND2X1 _1628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_629_),
    .B(_597_),
    .Y(_666_)
);

NAND3X1 _1381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_508_),
    .B(_505_),
    .C(_502_),
    .Y(_501_)
);

DFFPOSX1 _2586_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_690_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [16])
);

NAND2X1 _2166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_1221_),
    .Y(_102_)
);

INVX1 _1857_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_1111_)
);

OAI21X1 _1437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_464_),
    .C(_461_),
    .Y(_460_)
);

NAND2X1 _2395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1238_),
    .B(_139_),
    .Y(_272_)
);

INVX1 _1666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_969_),
    .Y(_971_)
);

INVX1 _1246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .Y(_635_)
);

OAI21X1 _1895_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_571_),
    .B(_1128_),
    .C(_1133_),
    .Y(_1134_)
);

NOR2X1 _1475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_430_),
    .B(_465_),
    .Y(_429_)
);

NAND2X1 _1284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_598_),
    .B(_605_),
    .Y(_597_)
);

DFFPOSX1 _2489_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_905_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [27])
);

AOI22X1 _2069_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.read_buf0 [2]),
    .C(_1170_),
    .D(\u_rf_if.read_buf0 [3]),
    .Y(_38_)
);

DFFPOSX1 _2701_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_832_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

AOI21X1 _2298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_206_),
    .B(_972_),
    .C(_207_),
    .Y(_716_)
);

NAND3X1 _1989_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1180_),
    .B(_1184_),
    .C(_1204_),
    .Y(_1219_)
);

AOI22X1 _1569_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [11]),
    .C(_385_),
    .D(_387_),
    .Y(_354_)
);

DFFPOSX1 _2510_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_924_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

INVX1 _1798_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_1076_)
);

NOR2X1 _1378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_634_),
    .Y(_504_)
);

DFFPOSX1 _2604_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_694_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [12])
);

INVX1 _2413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [26]),
    .Y(_287_)
);

DFFPOSX1 _2642_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_774_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [2])
);

NOR2X1 _2222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_376_),
    .B(_138_),
    .Y(_0_)
);

INVX1 _1913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1148_),
    .Y(_1149_)
);

AOI21X1 _2451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_623_),
    .C(_319_),
    .Y(_675_)
);

AOI21X1 _2031_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_9_),
    .B(_10_),
    .C(_492_),
    .Y(_786_)
);

AOI21X1 _1722_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1016_),
    .C(_1017_),
    .Y(_863_)
);

NOR2X1 _1302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_579_)
);

DFFPOSX1 _2507_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_921_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

DFFPOSX1 _2680_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_812_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

NAND2X1 _2260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_173_),
    .B(_172_),
    .Y(_174_)
);

INVX1 _1951_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1185_),
    .Y(_1186_)
);

NOR2X1 _1531_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_385_),
    .Y(_384_)
);

FILL FILL98250x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2736_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_867_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

MUX2X1 _2316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_220_),
    .B(_175_),
    .S(_163_),
    .Y(_711_)
);

NAND2X1 _1760_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1046_),
    .Y(_1047_)
);

INVX1 _1340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_543_),
    .Y(_542_)
);

DFFPOSX1 _2545_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_707_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.state [0])
);

OAI22X1 _2125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [22]),
    .C(\u_rf_if.read_buf0 [23]),
    .D(_1171_),
    .Y(_74_)
);

INVX1 _1816_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_1090_)
);

MUX2X1 _2354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1042_),
    .B(_242_),
    .S(_179_),
    .Y(_695_)
);

AOI21X1 _1625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_662_),
    .B(_597_),
    .C(_663_),
    .Y(_880_)
);

FILL FILL98550x79350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2583_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_733_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [4])
);

INVX1 _2163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_98_),
    .Y(_100_)
);

MUX2X1 _1854_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1108_),
    .B(_1109_),
    .S(_1091_),
    .Y(_823_)
);

INVX1 _1434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_463_)
);

DFFPOSX1 _2639_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_771_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [5])
);

NAND2X1 _2219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_137_),
    .B(_136_),
    .Y(_725_)
);

OAI22X1 _2392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_217_),
    .B(_269_),
    .C(_1004_),
    .D(_186_),
    .Y(_270_)
);

OAI21X1 _1663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_637_),
    .B(_619_),
    .C(_968_),
    .Y(_969_)
);

BUFX2 _1243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1196_),
    .Y(o_mem_sync)
);

NOR2X1 _2448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_317_),
    .Y(_318_)
);

NOR2X1 _2028_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1147_),
    .B(_1222_),
    .Y(_787_)
);

NAND2X1 _1719_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1014_),
    .Y(_1015_)
);

NOR2X1 _1892_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1130_),
    .B(_1126_),
    .Y(_1131_)
);

AOI21X1 _1472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_434_),
    .B(_465_),
    .C(_432_),
    .Y(_927_)
);

DFFPOSX1 _2677_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_806_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.alu.cmp_r )
);

NAND3X1 _2257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_162_),
    .B(_169_),
    .C(_170_),
    .Y(_171_)
);

NOR2X1 _1948_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1181_),
    .B(_1182_),
    .Y(_1183_)
);

AOI21X1 _1528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [10]),
    .C(_387_),
    .Y(_386_)
);

NOR2X1 _1281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_635_),
    .Y(_600_)
);

DFFPOSX1 _2486_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_902_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [24])
);

AOI22X1 _2066_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.read_buf0 [1]),
    .C(_1170_),
    .D(\u_rf_if.read_buf0 [2]),
    .Y(_36_)
);

NOR2X1 _1757_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_1013_),
    .Y(_1045_)
);

NAND2X1 _1337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_634_),
    .B(_546_),
    .Y(_545_)
);

AOI21X1 _2295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_192_),
    .C(_204_),
    .Y(_205_)
);

AOI22X1 _1986_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[5]),
    .Y(_1217_)
);

OAI21X1 _1566_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_359_),
    .C(_357_),
    .Y(_356_)
);

OAI21X1 _1795_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [3]),
    .C(_1073_),
    .Y(_1074_)
);

INVX1 _1375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .Y(_507_)
);

AOI22X1 _2389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_399_),
    .B(_179_),
    .C(_265_),
    .D(_267_),
    .Y(_685_)
);

DFFPOSX1 _2601_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_743_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [3])
);

AOI21X1 _2198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_123_),
    .C(_492_),
    .Y(_732_)
);

AOI22X1 _1889_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_531_),
    .B(_670_),
    .C(_538_),
    .D(_537_),
    .Y(_1128_)
);

INVX1 _1469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_434_)
);

OAI21X1 _2410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_994_),
    .B(_186_),
    .C(_284_),
    .Y(_285_)
);

AOI21X1 _1698_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .B(_982_),
    .C(_998_),
    .Y(_999_)
);

NOR2X1 _1278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_603_)
);

NOR2X1 _1910_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_1145_),
    .Y(_1146_)
);

DFFPOSX1 _2504_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_918_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[1])
);

DFFPOSX1 _2733_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_864_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [20])
);

NOR2X1 _2313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_191_),
    .B(_175_),
    .Y(_218_)
);

FILL FILL98250x90150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2542_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_705_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [1])
);

OAI22X1 _2122_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [21]),
    .C(\u_rf_if.read_buf0 [20]),
    .D(_1174_),
    .Y(_72_)
);

OAI21X1 _1813_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_549_),
    .C(_1087_),
    .Y(_1088_)
);

AOI22X1 _2351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [10]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [9]),
    .Y(_241_)
);

INVX1 _1622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [3]),
    .Y(_662_)
);

AOI21X1 _2407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1227_),
    .B(_139_),
    .C(_281_),
    .Y(_282_)
);

INVX1 _2580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_654_),
    .Y(_653_)
);

AOI21X1 _2160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1181_),
    .B(_96_),
    .C(_97_),
    .Y(_744_)
);

INVX1 _1851_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_1108_)
);

OAI21X1 _1431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_636_),
    .B(_653_),
    .C(_561_),
    .Y(_466_)
);

FILL FILL98550x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2636_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_769_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [7])
);

AOI21X1 _2216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1162_),
    .B(_132_),
    .C(_92_),
    .Y(_135_)
);

OAI21X1 _1907_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_626_),
    .B(_475_),
    .C(i_rst_n),
    .Y(_1144_)
);

NAND2X1 _1660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_965_),
    .B(_628_),
    .Y(_966_)
);

OAI21X1 _2445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_314_),
    .C(_139_),
    .Y(_315_)
);

NOR2X1 _2025_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_6_),
    .B(_1123_),
    .Y(_7_)
);

MUX2X1 _1716_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1010_),
    .B(_1012_),
    .S(_968_),
    .Y(_864_)
);

DFFPOSX1 _2674_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_802_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [30])
);

AOI21X1 _2254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .B(\u_mem_serial.state [0]),
    .C(_167_),
    .Y(_168_)
);

FILL FILL98250x150 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1945_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_1180_)
);

NOR2X1 _1525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_390_),
    .Y(_389_)
);

DFFPOSX1 _2483_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\u_rf_if.wdata0_next [0]),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.wdata0_r [0])
);

NOR2X1 _2063_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_33_),
    .B(_1183_),
    .Y(_34_)
);

INVX1 _1754_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_1042_)
);

INVX1 _1334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_549_),
    .Y(_548_)
);

DFFPOSX1 _2539_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_678_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [28])
);

OAI22X1 _2119_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [20]),
    .C(\u_rf_if.read_buf0 [21]),
    .D(_1171_),
    .Y(_70_)
);

NAND2X1 _2292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_201_),
    .B(_150_),
    .Y(_202_)
);

NOR2X1 _1983_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.pending_read ),
    .B(mem_ibus_ack),
    .Y(_1215_)
);

INVX1 _1563_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_359_)
);

MUX2X1 _2348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1054_),
    .B(_239_),
    .S(_179_),
    .Y(_698_)
);

MUX2X1 _1619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_330_),
    .B(_329_),
    .S(_597_),
    .Y(_883_)
);

NOR2X1 _1792_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_1013_),
    .Y(_1072_)
);

INVX1 _1372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [0]),
    .Y(_510_)
);

DFFPOSX1 _2577_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_730_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg0_latched [2])
);

NOR2X1 _2157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1182_),
    .B(_92_),
    .Y(_95_)
);

MUX2X1 _1848_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1105_),
    .B(_1106_),
    .S(_1091_),
    .Y(_826_)
);

NOR2X1 _1428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_602_),
    .Y(_469_)
);

OAI21X1 _2386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_261_),
    .B(\u_cpu.o_wdata0 ),
    .C(_264_),
    .Y(_265_)
);

AOI21X1 _1657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_627_),
    .B(_664_),
    .C(_962_),
    .Y(_963_)
);

OAI21X1 _2195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1136_),
    .B(_120_),
    .C(_1201_),
    .Y(_122_)
);

OAI21X1 _1886_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_562_),
    .B(_539_),
    .C(_565_),
    .Y(_1126_)
);

OAI21X1 _1466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_440_),
    .C(_498_),
    .Y(_436_)
);

NOR2X1 _1695_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_995_),
    .B(_994_),
    .Y(_996_)
);

NOR2X1 _1275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_635_),
    .B(_637_),
    .Y(_606_)
);

NAND3X1 _2289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_199_),
    .C(_176_),
    .Y(_200_)
);

FILL FILL97950x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2501_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_915_),
    .CLK(i_clk_sys_ext),
    .Q(rf_wreg0_to_if[2])
);

INVX1 _2098_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [14]),
    .Y(_56_)
);

AOI21X1 _1789_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1068_),
    .C(_1069_),
    .Y(_848_)
);

NOR2X1 _1369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_514_),
    .B(_515_),
    .Y(_513_)
);

DFFPOSX1 _2730_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_861_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [17])
);

OAI21X1 _2310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_191_),
    .B(_163_),
    .C(_214_),
    .Y(_712_)
);

INVX1 _1598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [15]),
    .Y(_339_)
);

AOI21X1 _1810_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1084_),
    .C(_1085_),
    .Y(_843_)
);

MUX2X1 _2404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_359_),
    .B(_279_),
    .S(_179_),
    .Y(_682_)
);

DFFPOSX1 _2633_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_767_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [9])
);

INVX1 _2213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1187_),
    .Y(_132_)
);

OAI21X1 _1904_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [5]),
    .C(_1141_),
    .Y(_1142_)
);

INVX1 _2442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [30]),
    .Y(_312_)
);

NAND2X1 _2022_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_388_),
    .B(_392_),
    .Y(_4_)
);

INVX1 _1713_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [20]),
    .Y(_1010_)
);

DFFPOSX1 _2671_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_799_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg0_latched [3])
);

INVX1 _2251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_164_),
    .Y(_165_)
);

FILL FILL98250x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1942_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1172_),
    .B(_1168_),
    .Y(_1177_)
);

INVX1 _1522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreg0_to_if[3]),
    .Y(_392_)
);

DFFPOSX1 _2727_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_858_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [14])
);

OAI21X1 _2307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_173_),
    .B(_194_),
    .C(_163_),
    .Y(_214_)
);

INVX1 _2480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_636_)
);

AOI22X1 _2060_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1204_),
    .B(_31_),
    .C(_1213_),
    .D(raddr[2]),
    .Y(_32_)
);

OAI21X1 _1751_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(_1039_),
    .Y(_1040_)
);

NOR2X1 _1331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_592_),
    .B(_568_),
    .Y(_551_)
);

DFFPOSX1 _2536_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_702_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [4])
);

OAI22X1 _2116_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [19]),
    .C(\u_rf_if.read_buf0 [18]),
    .D(_1174_),
    .Y(_68_)
);

NAND2X1 _1807_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_411_),
    .Y(_1083_)
);

AOI22X1 _1980_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[7]),
    .Y(_1214_)
);

OAI21X1 _1560_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_365_),
    .B(_362_),
    .C(_561_),
    .Y(_361_)
);

DFFPOSX1 _2765_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_895_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [17])
);

AOI22X1 _2345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [6]),
    .Y(_238_)
);

FILL FILL98550x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [6]),
    .Y(_330_)
);

DFFPOSX1 _2574_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_687_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [19])
);

NAND3X1 _2154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .B(_10_),
    .C(_92_),
    .Y(_93_)
);

INVX1 _1845_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_1105_)
);

NAND2X1 _1425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [30]),
    .Y(_471_)
);

INVX1 _2383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_262_)
);

NOR2X1 _1654_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_596_),
    .B(_960_),
    .Y(_961_)
);

OAI21X1 _2439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_617_),
    .B(_186_),
    .C(_309_),
    .Y(_310_)
);

NAND2X1 _2019_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(_1_),
    .Y(_2_)
);

INVX1 _2192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .Y(_120_)
);

AND2X2 _1883_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_573_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_1124_)
);

NOR2X1 _1463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_439_),
    .B(_465_),
    .Y(_438_)
);

DFFPOSX1 _2668_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_674_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.cnt_r [3])
);

INVX1 _2248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [4]),
    .Y(_162_)
);

INVX1 _1939_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1174_),
    .Y(_1175_)
);

OAI21X1 _1519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_400_),
    .C(_476_),
    .Y(_394_)
);

AOI22X1 _1692_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_616_),
    .B(_971_),
    .C(_993_),
    .D(_992_),
    .Y(_869_)
);

OAI21X1 _1272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_612_),
    .C(\u_cpu.bufreg2.dhi [5]),
    .Y(_609_)
);

INVX1 _2477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_639_)
);

INVX1 _2057_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_29_)
);

FILL FILL98550x18150 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1748_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1036_),
    .C(_1037_),
    .Y(_857_)
);

NOR3X1 _1328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_556_),
    .B(\u_mem_serial.shift_reg [3]),
    .C(_554_),
    .Y(_553_)
);

INVX1 _2286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_shared_rdata[1]),
    .Y(_197_)
);

OAI21X1 _1977_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1163_),
    .B(_1210_),
    .C(_1205_),
    .Y(_1211_)
);

OAI21X1 _1557_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_650_),
    .Y(_364_)
);

AOI21X1 _2095_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_53_),
    .B(_1170_),
    .C(_54_),
    .Y(_766_)
);

NAND2X1 _1786_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_559_),
    .Y(_1067_)
);

NAND2X1 _1366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_517_),
    .B(_522_),
    .Y(_516_)
);

MUX2X1 _1595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_342_),
    .B(_341_),
    .S(_597_),
    .Y(_895_)
);

OAI21X1 _2189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1137_),
    .B(_117_),
    .C(_114_),
    .Y(_118_)
);

OAI21X1 _2401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_139_),
    .B(raddr[2]),
    .C(_276_),
    .Y(_277_)
);

OAI21X1 _1689_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_981_),
    .B(_618_),
    .C(_990_),
    .Y(_991_)
);

INVX1 _1269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_613_),
    .Y(_612_)
);

DFFPOSX1 _2630_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_778_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[2])
);

NAND3X1 _2210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_1210_),
    .C(_1208_),
    .Y(_130_)
);

NAND3X1 _1901_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1136_),
    .B(_1137_),
    .C(_1138_),
    .Y(_1139_)
);

INVX1 _1498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[4]),
    .Y(_412_)
);

NAND2X1 _1710_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_399_),
    .Y(_1008_)
);

DFFPOSX1 _2724_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_855_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [11])
);

OAI21X1 _2304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .C(_1196_),
    .Y(_212_)
);

DFFPOSX1 _2533_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_946_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bne_or_bge )
);

OAI22X1 _2113_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [18]),
    .C(\u_rf_if.read_buf0 [19]),
    .D(_1171_),
    .Y(_66_)
);

NAND2X1 _1804_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1080_),
    .Y(_1081_)
);

DFFPOSX1 _2762_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_892_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [14])
);

MUX2X1 _2342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_556_),
    .B(_236_),
    .S(_179_),
    .Y(_701_)
);

MUX2X1 _1613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_333_),
    .B(_332_),
    .S(_597_),
    .Y(_886_)
);

INVX1 _2571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .Y(_656_)
);

NOR2X1 _2151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_90_),
    .B(_11_),
    .Y(_91_)
);

MUX2X1 _1842_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1102_),
    .B(_1103_),
    .S(_1091_),
    .Y(_829_)
);

NOR2X1 _1422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_474_),
    .Y(_473_)
);

DFFPOSX1 _2627_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_762_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [14])
);

NAND2X1 _2207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [2]),
    .B(_561_),
    .Y(_128_)
);

NOR2X1 _2380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_259_),
    .Y(_260_)
);

INVX1 _1651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_955_),
    .Y(_958_)
);

NAND2X1 _2436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [4]),
    .B(_202_),
    .Y(_307_)
);

NOR2X1 _2016_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1226_),
    .B(_1241_),
    .Y(_1242_)
);

OAI21X1 _1707_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [23]),
    .C(_1005_),
    .Y(_1006_)
);

INVX1 _1880_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_519_),
    .Y(_1122_)
);

AOI21X1 _1460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_446_),
    .B(_465_),
    .C(_441_),
    .Y(_930_)
);

DFFPOSX1 _2665_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_699_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [7])
);

INVX1 _2245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_150_),
    .Y(_160_)
);

INVX1 _1936_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1165_),
    .Y(_1172_)
);

OAI21X1 _1516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_406_),
    .C(_397_),
    .Y(_396_)
);

NAND2X1 _2474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_658_),
    .B(_644_),
    .Y(_642_)
);

NOR2X1 _2054_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1207_),
    .Y(_27_)
);

NAND2X1 _1745_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1034_),
    .Y(_1035_)
);

INVX1 _1325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_556_)
);

INVX1 _2283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_194_),
    .Y(_195_)
);

NOR2X1 _1974_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1207_),
    .B(_1206_),
    .Y(_1208_)
);

INVX1 _1554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_367_)
);

DFFPOSX1 _2759_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_889_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [11])
);

AOI22X1 _2339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [4]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [3]),
    .Y(_235_)
);

AOI21X1 _2092_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_51_),
    .B(_1170_),
    .C(_52_),
    .Y(_767_)
);

OAI21X1 _1783_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [6]),
    .C(_1064_),
    .Y(_1065_)
);

NOR2X1 _1363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_521_),
    .B(_520_),
    .Y(_519_)
);

DFFPOSX1 _2568_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_947_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.co_mem_word )
);

NOR2X1 _2148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_87_),
    .B(_88_),
    .Y(_747_)
);

INVX1 _1839_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_1102_)
);

AND2X2 _1419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [1]),
    .B(i_rst_n),
    .Y(_936_)
);

INVX1 _1592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [18]),
    .Y(_342_)
);

NAND3X1 _2377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_216_),
    .B(_256_),
    .C(_1149_),
    .Y(_257_)
);

MUX2X1 _1648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_956_),
    .B(_664_),
    .S(_667_),
    .Y(_876_)
);

AOI21X1 _2186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1138_),
    .B(_113_),
    .C(_115_),
    .Y(_736_)
);

MUX2X1 _1877_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1120_),
    .B(_1117_),
    .S(_1091_),
    .Y(_811_)
);

INVX1 _1457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_444_),
    .Y(_443_)
);

OAI22X1 _1686_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_981_),
    .B(_969_),
    .C(_988_),
    .D(_987_),
    .Y(_870_)
);

NOR2X1 _1266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_615_)
);

INVX1 _1495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_591_),
    .Y(_415_)
);

NOR2X1 _2089_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_49_),
    .B(_50_),
    .Y(_768_)
);

DFFPOSX1 _2721_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_852_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [8])
);

AOI21X1 _2301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_209_),
    .B(_561_),
    .C(_207_),
    .Y(_715_)
);

MUX2X1 _1589_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_345_),
    .B(_344_),
    .S(_597_),
    .Y(_898_)
);

DFFPOSX1 _2530_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_943_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.opcode [1])
);

OAI22X1 _2110_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [17]),
    .C(\u_rf_if.read_buf0 [18]),
    .D(_1171_),
    .Y(_64_)
);

NOR2X1 _1801_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [1]),
    .B(_1013_),
    .Y(_1079_)
);

FILL FILL98550x150 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_629_),
    .B(_621_),
    .Y(_491_)
);

INVX1 _1610_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [9]),
    .Y(_333_)
);

DFFPOSX1 _2624_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_759_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [17])
);

AOI21X1 _2204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_476_),
    .B(_126_),
    .C(_492_),
    .Y(_729_)
);

AOI22X1 _2433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_299_),
    .B(_179_),
    .C(_300_),
    .D(_304_),
    .Y(_678_)
);

INVX1 _2013_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .Y(_1239_)
);

FILL FILL98250x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1704_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1003_),
    .B(_995_),
    .S(_969_),
    .Y(_867_)
);

DFFPOSX1 _2662_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_673_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.i_jump )
);

NOR2X1 _2242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_145_),
    .B(_156_),
    .Y(_157_)
);

NAND2X1 _1933_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1165_),
    .B(_1168_),
    .Y(_1169_)
);

INVX1 _1513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_399_)
);

DFFPOSX1 _2718_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_849_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [5])
);

OAI21X1 _2471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_650_),
    .C(_646_),
    .Y(_645_)
);

OAI21X1 _2051_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [0]),
    .Y(_25_)
);

NOR2X1 _1742_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [14]),
    .B(_1013_),
    .Y(_1033_)
);

INVX1 _1322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_559_)
);

DFFPOSX1 _2527_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_940_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.cnt_r [1])
);

NOR2X1 _2107_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(_1174_),
    .Y(_62_)
);

INVX1 _2280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_144_),
    .Y(_192_)
);

FILL FILL98550x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1971_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1180_),
    .B(_1184_),
    .C(_1204_),
    .Y(_1205_)
);

AOI22X1 _1551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_469_),
    .D(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_369_)
);

DFFPOSX1 _2756_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_887_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [9])
);

MUX2X1 _2336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_555_),
    .B(_233_),
    .S(_179_),
    .Y(_704_)
);

MUX2X1 _1607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_336_),
    .B(_335_),
    .S(_597_),
    .Y(_889_)
);

NOR2X1 _1780_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [6]),
    .B(_1013_),
    .Y(_1063_)
);

NOR2X1 _1360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_523_),
    .B(_576_),
    .Y(_522_)
);

DFFPOSX1 _2565_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_721_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.active_we )
);

AOI21X1 _2145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_85_),
    .B(_1170_),
    .C(_86_),
    .Y(_748_)
);

MUX2X1 _1836_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1099_),
    .B(_1100_),
    .S(_1091_),
    .Y(_832_)
);

NOR2X1 _1416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_478_),
    .Y(_477_)
);

OAI21X1 _2374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 ),
    .B(_1203_),
    .C(_253_),
    .Y(_254_)
);

OAI21X1 _1645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_953_),
    .B(_948_),
    .C(_628_),
    .Y(_954_)
);

NAND2X1 _2183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1212_),
    .Y(_113_)
);

MUX2X1 _1874_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1119_),
    .B(_1118_),
    .S(_1091_),
    .Y(_813_)
);

INVX1 _1454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm ),
    .Y(_446_)
);

DFFPOSX1 _2659_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_789_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.o_waddr [3])
);

NAND2X1 _2239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_153_),
    .B(_154_),
    .Y(_155_)
);

NAND2X1 _1683_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_972_),
    .B(_985_),
    .Y(_986_)
);

NOR2X1 _1263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_637_),
    .B(_619_),
    .Y(_618_)
);

INVX1 _2468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [1]),
    .Y(_648_)
);

AOI21X1 _2048_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_481_),
    .B(_23_),
    .C(_492_),
    .Y(_782_)
);

INVX1 _1739_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_1030_)
);

NAND2X1 _1319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_563_),
    .B(_565_),
    .Y(_562_)
);

MUX2X1 _1492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(mem_ibus_ack),
    .Y(_417_)
);

DFFPOSX1 _2697_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_829_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

AOI21X1 _2277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [30]),
    .B(_184_),
    .C(_189_),
    .Y(_190_)
);

OAI21X1 _1968_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [3]),
    .Y(_1202_)
);

OAI21X1 _1548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(rreg1[0]),
    .C(_372_),
    .Y(_371_)
);

AOI21X1 _2086_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_47_),
    .B(_1170_),
    .C(_48_),
    .Y(_769_)
);

AOI21X1 _1777_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1059_),
    .C(_1060_),
    .Y(_851_)
);

OAI21X1 _1357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_569_),
    .B(_536_),
    .C(_526_),
    .Y(_525_)
);

INVX1 _1586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [21]),
    .Y(_345_)
);

NAND2X1 _1395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [2]),
    .Y(_493_)
);

DFFPOSX1 _2621_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_780_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[4])
);

NAND2X1 _2201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_561_),
    .Y(_125_)
);

MUX2X1 _1489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(mem_ibus_ack),
    .Y(_419_)
);

AOI22X1 _2430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [27]),
    .Y(_302_)
);

OAI21X1 _2010_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1229_),
    .B(_1233_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1237_)
);

MUX2X1 _1701_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_994_),
    .S(_618_),
    .Y(_1001_)
);

INVX1 _1298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_584_),
    .Y(_583_)
);

NAND2X1 _1930_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [0]),
    .Y(_1166_)
);

NOR2X1 _1510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_402_),
    .B(_413_),
    .Y(_401_)
);

DFFPOSX1 _2715_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_846_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [2])
);

DFFPOSX1 _2524_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_937_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.co_ebreak )
);

INVX1 _2104_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [16]),
    .Y(_60_)
);

DFFPOSX1 _2753_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_884_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [6])
);

AOI22X1 _2333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [1]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [0]),
    .Y(_232_)
);

INVX1 _1604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_336_)
);

DFFPOSX1 _2562_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_683_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [23])
);

NOR2X1 _2142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_83_),
    .B(_84_),
    .Y(_749_)
);

INVX1 _1833_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_1099_)
);

NAND2X1 _1413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [14]),
    .Y(_479_)
);

DFFPOSX1 _2618_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_755_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [21])
);

NOR2X1 _2371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next [0]),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_251_)
);

NAND2X1 _1642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.c_r ),
    .B(_950_),
    .Y(_951_)
);

INVX1 _2427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [28]),
    .Y(_299_)
);

NAND3X1 _2007_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_570_),
    .B(_486_),
    .C(_542_),
    .Y(_1234_)
);

INVX1 _2180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_),
    .Y(_111_)
);

MUX2X1 _1871_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1117_),
    .B(_1090_),
    .S(_1091_),
    .Y(_814_)
);

OAI21X1 _1451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_458_),
    .C(_449_),
    .Y(_448_)
);

DFFPOSX1 _2656_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_697_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [9])
);

INVX1 _2236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_151_),
    .Y(_152_)
);

INVX1 _1927_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.prefetch_active ),
    .Y(_1163_)
);

NOR2X1 _1507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_405_),
    .Y(_404_)
);

INVX1 _1680_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_614_),
    .Y(_983_)
);

INVX1 _1260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_622_),
    .Y(_621_)
);

NOR2X1 _2465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_651_)
);

INVX1 _2045_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [1]),
    .Y(_21_)
);

OAI21X1 _1736_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(_1027_),
    .Y(_1028_)
);

NAND2X1 _1316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(_566_),
    .Y(_565_)
);

DFFPOSX1 _2694_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_826_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

NAND2X1 _2274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .B(\u_rf_if.rtrig1 ),
    .Y(_187_)
);

NAND2X1 _1965_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .B(_1199_),
    .Y(_1200_)
);

INVX1 _1545_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_375_),
    .Y(_374_)
);

NOR2X1 _2083_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_45_),
    .B(_46_),
    .Y(_770_)
);

NAND2X1 _1774_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .B(_1057_),
    .Y(_1058_)
);

AOI22X1 _1354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_575_),
    .B(_529_),
    .C(_535_),
    .D(_633_),
    .Y(_528_)
);

DFFPOSX1 _2559_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_718_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.state [1])
);

AOI21X1 _2139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_81_),
    .B(_1170_),
    .C(_82_),
    .Y(_750_)
);

MUX2X1 _1583_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_348_),
    .B(_347_),
    .S(_597_),
    .Y(_901_)
);

MUX2X1 _2368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_463_),
    .B(_249_),
    .S(_179_),
    .Y(_688_)
);

INVX1 _1639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .Y(_948_)
);

AOI21X1 _1392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .B(_559_),
    .C(_495_),
    .Y(_944_)
);

DFFPOSX1 _2597_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_740_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.o_waddr [0])
);

INVX1 _2177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1_),
    .Y(_109_)
);

MUX2X1 _1868_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1115_),
    .B(_1116_),
    .S(_1091_),
    .Y(_816_)
);

INVX1 _1448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_451_)
);

endmodule
