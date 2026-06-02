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
wire [0:0] \u_cpu.ctrl.pc_plus_4_cy_r_w  ;
wire _703_ ;
wire [4:0] \u_cpu.decode.opcode  ;
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
wire [0:0] \u_cpu.alu.add_cy_r  ;
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
wire \u_mem_serial.active_we  ;
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
wire [1:0] \u_rf_if.wdata0_r  ;
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
wire [7:0] \u_cpu.bufreg2.dhi  ;
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
wire [0:0] \u_cpu.csr_imm  ;
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
wire [1:0] \u_rf_if.wdata0_next  ;
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
wire [0:0] \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
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
wire [4:0] rreg0 ;
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
wire [7:0] \u_cpu.bufreg2.cnt_next  ;
wire _659_ ;
wire _239_ ;
wire _1081_ ;
wire _1137_ ;
wire _888_ ;
wire _468_ ;
wire _697_ ;
wire _277_ ;
wire _1175_ ;
wire [0:0] \u_cpu.ctrl.pc  ;
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
wire [4:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7  ;
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
wire [0:0] \u_cpu.o_wdata0  ;
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
wire [8:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20  ;
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

BUFX2 _1243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1196_),
    .Y(o_mem_sync)
);

BUFX2 _1244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1194_),
    .Y(o_mem_sck)
);

BUFX2 _1245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_0_),
    .Y(o_mem_mosi)
);

INVX1 _1246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .Y(_635_)
);

INVX1 _1247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_634_)
);

NOR2X1 _1248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_634_),
    .B(_636_),
    .Y(_633_)
);

NOR2X1 _1249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.branch_op ),
    .Y(_632_)
);

OAI21X1 _1250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bne_or_bge ),
    .C(_632_),
    .Y(_631_)
);

OAI21X1 _1251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_633_),
    .B(_631_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_630_)
);

NAND2X1 _1252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_635_),
    .B(_630_),
    .Y(_629_)
);

INVX1 _1253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_629_),
    .Y(_628_)
);

INVX1 _1254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_627_)
);

INVX1 _1255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_626_)
);

NAND2X1 _1256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.state.o_cnt [2]),
    .Y(_625_)
);

NOR2X1 _1257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_626_),
    .B(_625_),
    .Y(_624_)
);

INVX1 _1258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_624_),
    .Y(_623_)
);

NOR2X1 _1259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_627_),
    .B(_623_),
    .Y(_622_)
);

INVX1 _1260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_622_),
    .Y(_621_)
);

OAI21X1 _1261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_636_),
    .B(_621_),
    .C(_628_),
    .Y(_620_)
);

INVX1 _1262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_620_),
    .Y(_619_)
);

NOR2X1 _1263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_637_),
    .B(_619_),
    .Y(_618_)
);

INVX1 _1264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_617_)
);

INVX1 _1265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_616_)
);

NOR2X1 _1266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_615_)
);

NAND2X1 _1267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_616_),
    .B(_615_),
    .Y(_614_)
);

NOR2X1 _1268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_614_),
    .Y(_613_)
);

INVX1 _1269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_613_),
    .Y(_612_)
);

NOR2X1 _1270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_612_),
    .Y(_611_)
);

NAND2X1 _1271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_617_),
    .B(_611_),
    .Y(_610_)
);

OAI21X1 _1272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_612_),
    .C(\u_cpu.bufreg2.dhi [5]),
    .Y(_609_)
);

AND2X2 _1273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_610_),
    .B(_609_),
    .Y(_608_)
);

MUX2X1 _1274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_608_),
    .B(_639_),
    .S(_618_),
    .Y(_607_)
);

NOR2X1 _1275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_635_),
    .B(_637_),
    .Y(_606_)
);

OAI21X1 _1276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_607_),
    .C(_606_),
    .Y(_605_)
);

NOR2X1 _1277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_604_)
);

NOR2X1 _1278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_603_)
);

NAND2X1 _1279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_604_),
    .B(_603_),
    .Y(_602_)
);

INVX1 _1280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_602_),
    .Y(_601_)
);

NOR2X1 _1281_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_635_),
    .Y(_600_)
);

NOR2X1 _1282_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_600_),
    .B(_601_),
    .Y(_599_)
);

NAND2X1 _1283_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_630_),
    .B(_599_),
    .Y(_598_)
);

NAND2X1 _1284_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_598_),
    .B(_605_),
    .Y(_597_)
);

INVX1 _1285_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_597_),
    .Y(_596_)
);

NOR2X1 _1286_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_640_),
    .B(_596_),
    .Y(_595_)
);

INVX1 _1287_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[0]),
    .Y(_594_)
);

NOR2X1 _1288_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_593_)
);

INVX1 _1289_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_592_)
);

NOR2X1 _1290_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_592_),
    .Y(_591_)
);

AOI21X1 _1291_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_591_),
    .B(_593_),
    .C(_594_),
    .Y(_590_)
);

INVX1 _1292_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[0]),
    .Y(_589_)
);

NAND2X1 _1293_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_593_),
    .B(_591_),
    .Y(_588_)
);

OAI21X1 _1294_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_589_),
    .B(_588_),
    .C(_621_),
    .Y(_587_)
);

OAI21X1 _1295_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_636_),
    .B(_653_),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_586_)
);

NAND2X1 _1296_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586_),
    .B(_622_),
    .Y(_585_)
);

OAI21X1 _1297_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_590_),
    .B(_587_),
    .C(_585_),
    .Y(_584_)
);

INVX1 _1298_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_584_),
    .Y(_583_)
);

AOI21X1 _1299_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_627_),
    .B(_625_),
    .C(_659_),
    .Y(_582_)
);

AOI22X1 _1300_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_583_),
    .B(_582_),
    .C(_595_),
    .D(_659_),
    .Y(_581_)
);

INVX1 _1301_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [0]),
    .Y(_580_)
);

NOR2X1 _1302_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_579_)
);

INVX1 _1303_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_579_),
    .Y(_578_)
);

NOR2X1 _1304_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(_578_),
    .Y(_577_)
);

INVX1 _1305_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_577_),
    .Y(_576_)
);

NOR2X1 _1306_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_576_),
    .Y(_575_)
);

AOI21X1 _1307_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_581_),
    .B(_641_),
    .C(_575_),
    .Y(_574_)
);

OAI21X1 _1308_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_641_),
    .B(_581_),
    .C(_574_),
    .Y(_573_)
);

NOR2X1 _1309_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_572_)
);

INVX1 _1310_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_572_),
    .Y(_571_)
);

NOR2X1 _1311_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(_571_),
    .Y(_570_)
);

INVX1 _1312_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_570_),
    .Y(_569_)
);

INVX1 _1313_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(_568_)
);

INVX1 _1314_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_567_)
);

NOR2X1 _1315_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(_567_),
    .Y(_566_)
);

NAND2X1 _1316_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(_566_),
    .Y(_565_)
);

INVX1 _1317_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.add_cy_r ),
    .Y(_564_)
);

OAI21X1 _1318_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(_567_),
    .C(_564_),
    .Y(_563_)
);

NAND2X1 _1319_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_563_),
    .B(_565_),
    .Y(_562_)
);

INVX1 _1320_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(_561_)
);

NAND2X1 _1321_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(current_stream_rs2_hint),
    .B(_561_),
    .Y(_560_)
);

INVX1 _1322_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_559_)
);

INVX1 _1323_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_558_)
);

OAI21X1 _1324_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_559_),
    .B(_558_),
    .C(mem_ibus_ack),
    .Y(_557_)
);

INVX1 _1325_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_556_)
);

INVX1 _1326_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_555_)
);

NAND3X1 _1327_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [1]),
    .B(\u_mem_serial.shift_reg [0]),
    .C(_555_),
    .Y(_554_)
);

NOR3X1 _1328_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_556_),
    .B(\u_mem_serial.shift_reg [3]),
    .C(_554_),
    .Y(_553_)
);

INVX1 _1329_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_553_),
    .Y(_552_)
);

OAI21X1 _1330_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_557_),
    .B(_552_),
    .C(_560_),
    .Y(\u_rf_if.i_stream_rs2_en )
);

NOR2X1 _1331_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_592_),
    .B(_568_),
    .Y(_551_)
);

NAND3X1 _1332_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_551_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_550_)
);

OAI21X1 _1333_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_584_),
    .C(_550_),
    .Y(_549_)
);

INVX1 _1334_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_549_),
    .Y(_548_)
);

INVX1 _1335_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_547_)
);

INVX1 _1336_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_546_)
);

NAND2X1 _1337_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_634_),
    .B(_546_),
    .Y(_545_)
);

NOR2X1 _1338_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_545_),
    .Y(_544_)
);

OAI21X1 _1339_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_592_),
    .B(_547_),
    .C(_544_),
    .Y(_543_)
);

INVX1 _1340_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_543_),
    .Y(_542_)
);

NAND2X1 _1341_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_542_),
    .B(_548_),
    .Y(_541_)
);

NAND2X1 _1342_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_543_),
    .B(_549_),
    .Y(_540_)
);

NAND2X1 _1343_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_540_),
    .B(_541_),
    .Y(_539_)
);

OR2X2 _1344_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_539_),
    .B(_562_),
    .Y(_538_)
);

NAND2X1 _1345_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_562_),
    .B(_539_),
    .Y(_537_)
);

NAND2X1 _1346_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_537_),
    .B(_538_),
    .Y(_536_)
);

AND2X2 _1347_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_549_),
    .B(_566_),
    .Y(_535_)
);

NOR2X1 _1348_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_566_),
    .B(_549_),
    .Y(_534_)
);

NOR2X1 _1349_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_534_),
    .B(_535_),
    .Y(_533_)
);

NAND3X1 _1350_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_546_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_533_),
    .Y(_532_)
);

INVX1 _1351_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.cmp_r ),
    .Y(_531_)
);

NAND2X1 _1352_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_636_),
    .Y(_530_)
);

NOR2X1 _1353_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_531_),
    .B(_530_),
    .Y(_529_)
);

AOI22X1 _1354_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_575_),
    .B(_529_),
    .C(_535_),
    .D(_633_),
    .Y(_528_)
);

NAND2X1 _1355_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_528_),
    .B(_532_),
    .Y(_527_)
);

NOR2X1 _1356_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_527_),
    .B(_595_),
    .Y(_526_)
);

OAI21X1 _1357_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_569_),
    .B(_536_),
    .C(_526_),
    .Y(_525_)
);

AND2X2 _1358_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_632_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_524_)
);

INVX1 _1359_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [2]),
    .Y(_523_)
);

NOR2X1 _1360_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_523_),
    .B(_576_),
    .Y(_522_)
);

INVX1 _1361_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .Y(_521_)
);

INVX1 _1362_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_520_)
);

NOR2X1 _1363_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_521_),
    .B(_520_),
    .Y(_519_)
);

NOR2X1 _1364_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_518_)
);

NOR2X1 _1365_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_518_),
    .B(_519_),
    .Y(_517_)
);

NAND2X1 _1366_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_517_),
    .B(_522_),
    .Y(_516_)
);

INVX1 _1367_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_516_),
    .Y(_515_)
);

NOR2X1 _1368_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_517_),
    .B(_522_),
    .Y(_514_)
);

NOR2X1 _1369_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_514_),
    .B(_515_),
    .Y(_513_)
);

INVX1 _1370_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_513_),
    .Y(_512_)
);

NAND2X1 _1371_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.branch_op ),
    .Y(_511_)
);

INVX1 _1372_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [0]),
    .Y(_510_)
);

AOI21X1 _1373_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(\u_cpu.bufreg.data [0]),
    .Y(_509_)
);

OAI21X1 _1374_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_510_),
    .C(_509_),
    .Y(_508_)
);

INVX1 _1375_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .Y(_507_)
);

AOI21X1 _1376_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_640_),
    .Y(_506_)
);

OAI21X1 _1377_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_507_),
    .C(_506_),
    .Y(_505_)
);

NOR2X1 _1378_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_634_),
    .Y(_504_)
);

INVX1 _1379_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_504_),
    .Y(_503_)
);

NOR2X1 _1380_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_503_),
    .Y(_502_)
);

NAND3X1 _1381_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_508_),
    .B(_505_),
    .C(_502_),
    .Y(_501_)
);

OAI21X1 _1382_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_511_),
    .B(_512_),
    .C(_501_),
    .Y(_500_)
);

AOI21X1 _1383_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_525_),
    .B(_524_),
    .C(_500_),
    .Y(_499_)
);

OAI21X1 _1384_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_659_),
    .B(_573_),
    .C(_499_),
    .Y(\u_cpu.o_wdata0 )
);

NAND2X1 _1385_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [13]),
    .B(mem_ibus_ack),
    .Y(_498_)
);

OAI21X1 _1386_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_634_),
    .C(_498_),
    .Y(_947_)
);

NAND2X1 _1387_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [12]),
    .Y(_497_)
);

OAI21X1 _1388_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_546_),
    .C(_497_),
    .Y(_946_)
);

NAND2X1 _1389_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [5]),
    .Y(_496_)
);

OAI21X1 _1390_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_592_),
    .C(_496_),
    .Y(_945_)
);

NOR2X1 _1391_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(mem_ibus_ack),
    .Y(_495_)
);

AOI21X1 _1392_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_559_),
    .C(_495_),
    .Y(_944_)
);

INVX1 _1393_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_494_)
);

MUX2X1 _1394_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_494_),
    .B(_648_),
    .S(mem_ibus_ack),
    .Y(_943_)
);

NAND2X1 _1395_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [2]),
    .Y(_493_)
);

OAI21X1 _1396_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_661_),
    .C(_493_),
    .Y(_942_)
);

INVX1 _1397_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(_492_)
);

NOR2X1 _1398_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_629_),
    .B(_621_),
    .Y(_491_)
);

INVX1 _1399_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_491_),
    .Y(_490_)
);

NAND3X1 _1400_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_601_),
    .Y(_489_)
);

AOI21X1 _1401_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_490_),
    .B(_489_),
    .C(_637_),
    .Y(_488_)
);

OAI21X1 _1402_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_636_),
    .B(_607_),
    .C(_488_),
    .Y(_487_)
);

NOR2X1 _1403_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_656_),
    .Y(_486_)
);

INVX1 _1404_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_486_),
    .Y(_485_)
);

OAI21X1 _1405_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_530_),
    .B(_485_),
    .C(_655_),
    .Y(_484_)
);

AOI21X1 _1406_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_491_),
    .B(_484_),
    .C(mem_dbus_ack),
    .Y(_483_)
);

NAND2X1 _1407_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_483_),
    .B(_487_),
    .Y(_482_)
);

INVX1 _1408_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_482_),
    .Y(_481_)
);

AOI21X1 _1409_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_621_),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_rf_if.ready_pulse ),
    .Y(_480_)
);

AOI21X1 _1410_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_481_),
    .B(_480_),
    .C(_492_),
    .Y(_941_)
);

NOR2X1 _1411_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_492_),
    .Y(_940_)
);

MUX2X1 _1412_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_558_),
    .B(_655_),
    .S(mem_ibus_ack),
    .Y(_939_)
);

NAND2X1 _1413_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [14]),
    .Y(_479_)
);

OAI21X1 _1414_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_636_),
    .C(_479_),
    .Y(_938_)
);

INVX1 _1415_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_478_)
);

NOR2X1 _1416_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_478_),
    .Y(_477_)
);

INVX1 _1417_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_477_),
    .Y(_476_)
);

OAI21X1 _1418_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_657_),
    .C(_476_),
    .Y(_937_)
);

AND2X2 _1419_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [1]),
    .B(i_rst_n),
    .Y(_936_)
);

INVX1 _1420_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_475_)
);

NOR2X1 _1421_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_626_),
    .B(_475_),
    .Y(_474_)
);

NOR2X1 _1422_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_474_),
    .Y(_473_)
);

OAI21X1 _1423_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_626_),
    .B(_625_),
    .C(i_rst_n),
    .Y(_472_)
);

NOR2X1 _1424_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_472_),
    .B(_473_),
    .Y(_935_)
);

NAND2X1 _1425_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [30]),
    .Y(_471_)
);

OAI21X1 _1426_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_547_),
    .C(_471_),
    .Y(_934_)
);

INVX1 _1427_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[3]),
    .Y(_470_)
);

NOR2X1 _1428_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_602_),
    .Y(_469_)
);

INVX1 _1429_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_469_),
    .Y(_468_)
);

NOR2X1 _1430_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_593_),
    .B(_486_),
    .Y(_467_)
);

OAI21X1 _1431_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_636_),
    .B(_653_),
    .C(_561_),
    .Y(_466_)
);

OAI21X1 _1432_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_467_),
    .B(_466_),
    .C(_468_),
    .Y(_465_)
);

INVX1 _1433_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[4]),
    .Y(_464_)
);

INVX1 _1434_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_463_)
);

NOR2X1 _1435_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_463_),
    .Y(_462_)
);

INVX1 _1436_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_462_),
    .Y(_461_)
);

OAI21X1 _1437_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_464_),
    .C(_461_),
    .Y(_460_)
);

NOR2X1 _1438_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_460_),
    .B(_465_),
    .Y(_459_)
);

AOI21X1 _1439_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_470_),
    .B(_465_),
    .C(_459_),
    .Y(_933_)
);

INVX1 _1440_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[2]),
    .Y(_458_)
);

INVX1 _1441_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_457_)
);

NOR2X1 _1442_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_457_),
    .Y(_456_)
);

INVX1 _1443_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_456_),
    .Y(_455_)
);

OAI21X1 _1444_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_470_),
    .C(_455_),
    .Y(_454_)
);

NOR2X1 _1445_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_454_),
    .B(_465_),
    .Y(_453_)
);

AOI21X1 _1446_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_458_),
    .B(_465_),
    .C(_453_),
    .Y(_932_)
);

INVX1 _1447_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[1]),
    .Y(_452_)
);

INVX1 _1448_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_451_)
);

NOR2X1 _1449_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_451_),
    .Y(_450_)
);

INVX1 _1450_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_450_),
    .Y(_449_)
);

OAI21X1 _1451_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_458_),
    .C(_449_),
    .Y(_448_)
);

NOR2X1 _1452_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_465_),
    .Y(_447_)
);

AOI21X1 _1453_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_452_),
    .B(_465_),
    .C(_447_),
    .Y(_931_)
);

INVX1 _1454_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm ),
    .Y(_446_)
);

INVX1 _1455_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [15]),
    .Y(_445_)
);

NOR2X1 _1456_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_445_),
    .Y(_444_)
);

INVX1 _1457_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_444_),
    .Y(_443_)
);

OAI21X1 _1458_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_452_),
    .C(_443_),
    .Y(_442_)
);

NOR2X1 _1459_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_442_),
    .B(_465_),
    .Y(_441_)
);

AOI21X1 _1460_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_446_),
    .B(_465_),
    .C(_441_),
    .Y(_930_)
);

INVX1 _1461_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_440_)
);

OAI21X1 _1462_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_446_),
    .C(_479_),
    .Y(_439_)
);

NOR2X1 _1463_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_439_),
    .B(_465_),
    .Y(_438_)
);

AOI21X1 _1464_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .B(_465_),
    .C(_438_),
    .Y(_929_)
);

INVX1 _1465_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_437_)
);

OAI21X1 _1466_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_440_),
    .C(_498_),
    .Y(_436_)
);

NOR2X1 _1467_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_436_),
    .B(_465_),
    .Y(_435_)
);

AOI21X1 _1468_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_437_),
    .B(_465_),
    .C(_435_),
    .Y(_928_)
);

INVX1 _1469_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_434_)
);

OAI21X1 _1470_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_437_),
    .C(_497_),
    .Y(_433_)
);

NOR2X1 _1471_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_433_),
    .B(_465_),
    .Y(_432_)
);

AOI21X1 _1472_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_434_),
    .B(_465_),
    .C(_432_),
    .Y(_927_)
);

INVX1 _1473_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_431_)
);

OAI21X1 _1474_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_434_),
    .C(_476_),
    .Y(_430_)
);

NOR2X1 _1475_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_430_),
    .B(_465_),
    .Y(_429_)
);

AOI21X1 _1476_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_431_),
    .B(_465_),
    .C(_429_),
    .Y(_926_)
);

INVX1 _1477_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .Y(_428_)
);

NAND3X1 _1478_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_649_),
    .C(_495_),
    .Y(_427_)
);

OAI21X1 _1479_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_602_),
    .C(_427_),
    .Y(_426_)
);

MUX2X1 _1480_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(mem_ibus_ack),
    .Y(_425_)
);

MUX2X1 _1481_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_428_),
    .B(_425_),
    .S(_426_),
    .Y(_925_)
);

INVX1 _1482_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .Y(_424_)
);

MUX2X1 _1483_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(mem_ibus_ack),
    .Y(_423_)
);

MUX2X1 _1484_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_424_),
    .B(_423_),
    .S(_426_),
    .Y(_924_)
);

INVX1 _1485_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .Y(_422_)
);

MUX2X1 _1486_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(mem_ibus_ack),
    .Y(_421_)
);

MUX2X1 _1487_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_422_),
    .B(_421_),
    .S(_426_),
    .Y(_923_)
);

INVX1 _1488_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .Y(_420_)
);

MUX2X1 _1489_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(mem_ibus_ack),
    .Y(_419_)
);

MUX2X1 _1490_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_420_),
    .B(_419_),
    .S(_426_),
    .Y(_922_)
);

INVX1 _1491_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .Y(_418_)
);

MUX2X1 _1492_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(mem_ibus_ack),
    .Y(_417_)
);

MUX2X1 _1493_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_418_),
    .B(_417_),
    .S(_426_),
    .Y(_921_)
);

INVX1 _1494_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[3]),
    .Y(_416_)
);

INVX1 _1495_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_591_),
    .Y(_415_)
);

OAI21X1 _1496_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_656_),
    .B(_655_),
    .C(_561_),
    .Y(_414_)
);

OAI21X1 _1497_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_415_),
    .B(_414_),
    .C(_468_),
    .Y(_413_)
);

INVX1 _1498_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[4]),
    .Y(_412_)
);

INVX1 _1499_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_411_)
);

NOR2X1 _1500_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_411_),
    .Y(_410_)
);

INVX1 _1501_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_410_),
    .Y(_409_)
);

OAI21X1 _1502_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_412_),
    .C(_409_),
    .Y(_408_)
);

NOR2X1 _1503_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_408_),
    .B(_413_),
    .Y(_407_)
);

AOI21X1 _1504_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_416_),
    .B(_413_),
    .C(_407_),
    .Y(_920_)
);

INVX1 _1505_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[2]),
    .Y(_406_)
);

INVX1 _1506_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_405_)
);

NOR2X1 _1507_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_405_),
    .Y(_404_)
);

INVX1 _1508_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_404_),
    .Y(_403_)
);

OAI21X1 _1509_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_416_),
    .C(_403_),
    .Y(_402_)
);

NOR2X1 _1510_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_402_),
    .B(_413_),
    .Y(_401_)
);

AOI21X1 _1511_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_406_),
    .B(_413_),
    .C(_401_),
    .Y(_919_)
);

INVX1 _1512_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[1]),
    .Y(_400_)
);

INVX1 _1513_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_399_)
);

NOR2X1 _1514_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_399_),
    .Y(_398_)
);

INVX1 _1515_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_398_),
    .Y(_397_)
);

OAI21X1 _1516_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_406_),
    .C(_397_),
    .Y(_396_)
);

NOR2X1 _1517_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_396_),
    .B(_413_),
    .Y(_395_)
);

AOI21X1 _1518_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_400_),
    .B(_413_),
    .C(_395_),
    .Y(_918_)
);

OAI21X1 _1519_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_400_),
    .C(_476_),
    .Y(_394_)
);

NOR2X1 _1520_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_394_),
    .B(_413_),
    .Y(_393_)
);

AOI21X1 _1521_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .B(_413_),
    .C(_393_),
    .Y(_917_)
);

INVX1 _1522_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[3]),
    .Y(_392_)
);

OAI21X1 _1523_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_660_),
    .B(_591_),
    .C(_656_),
    .Y(_391_)
);

NOR2X1 _1524_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_601_),
    .B(_391_),
    .Y(_390_)
);

NOR2X1 _1525_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_390_),
    .Y(_389_)
);

INVX1 _1526_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_388_)
);

NOR2X1 _1527_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_388_),
    .Y(_387_)
);

AOI21X1 _1528_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [10]),
    .C(_387_),
    .Y(_386_)
);

MUX2X1 _1529_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_392_),
    .B(_386_),
    .S(_389_),
    .Y(_916_)
);

INVX1 _1530_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_390_),
    .Y(_385_)
);

NOR2X1 _1531_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_385_),
    .Y(_384_)
);

INVX1 _1532_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[2]),
    .Y(_383_)
);

NAND2X1 _1533_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_383_),
    .Y(_382_)
);

OAI22X1 _1534_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(\u_mem_serial.shift_reg [9]),
    .C(_382_),
    .D(_390_),
    .Y(_381_)
);

AOI21X1 _1535_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_384_),
    .B(_392_),
    .C(_381_),
    .Y(_915_)
);

INVX1 _1536_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreg0_to_if[1]),
    .Y(_380_)
);

OAI22X1 _1537_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(\u_mem_serial.shift_reg [8]),
    .C(_382_),
    .D(_385_),
    .Y(_379_)
);

AOI21X1 _1538_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_389_),
    .B(_380_),
    .C(_379_),
    .Y(_914_)
);

INVX1 _1539_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_384_),
    .Y(_378_)
);

AOI22X1 _1540_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_389_),
    .D(rf_wreg0_to_if[0]),
    .Y(_377_)
);

OAI21X1 _1541_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_380_),
    .B(_378_),
    .C(_377_),
    .Y(_913_)
);

INVX1 _1542_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_376_)
);

NAND2X1 _1543_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_561_),
    .Y(_375_)
);

OAI21X1 _1544_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_376_),
    .C(_375_),
    .Y(_912_)
);

INVX1 _1545_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_375_),
    .Y(_374_)
);

OAI21X1 _1546_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_636_),
    .B(_653_),
    .C(_374_),
    .Y(_373_)
);

OAI21X1 _1547_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_cpu.branch_op ),
    .C(_373_),
    .Y(_372_)
);

OAI21X1 _1548_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(rreg1[0]),
    .C(_372_),
    .Y(_371_)
);

AOI21X1 _1549_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [19]),
    .C(_465_),
    .Y(_370_)
);

AOI22X1 _1550_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_464_),
    .B(_465_),
    .C(_370_),
    .D(_371_),
    .Y(_911_)
);

AOI22X1 _1551_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_469_),
    .D(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_369_)
);

OAI21X1 _1552_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_601_),
    .B(_373_),
    .C(_369_),
    .Y(_910_)
);

INVX1 _1553_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_368_)
);

INVX1 _1554_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_367_)
);

NAND2X1 _1555_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_661_),
    .Y(_366_)
);

NOR2X1 _1556_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_367_),
    .B(_366_),
    .Y(_365_)
);

OAI21X1 _1557_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_650_),
    .Y(_364_)
);

OAI21X1 _1558_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_364_),
    .C(_366_),
    .Y(_363_)
);

AOI21X1 _1559_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_586_),
    .B(_364_),
    .C(_363_),
    .Y(_362_)
);

OAI21X1 _1560_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_365_),
    .B(_362_),
    .C(_561_),
    .Y(_361_)
);

AOI21X1 _1561_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [30]),
    .C(_426_),
    .Y(_360_)
);

AOI22X1 _1562_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_368_),
    .B(_426_),
    .C(_361_),
    .D(_360_),
    .Y(_909_)
);

INVX1 _1563_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_359_)
);

NOR2X1 _1564_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_418_),
    .Y(_358_)
);

INVX1 _1565_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_358_),
    .Y(_357_)
);

OAI21X1 _1566_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_359_),
    .C(_357_),
    .Y(_356_)
);

NOR2X1 _1567_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_356_),
    .B(_413_),
    .Y(_355_)
);

AOI21X1 _1568_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_412_),
    .B(_413_),
    .C(_355_),
    .Y(_908_)
);

AOI22X1 _1569_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [11]),
    .C(_385_),
    .D(_387_),
    .Y(_354_)
);

OAI21X1 _1570_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_385_),
    .B(_357_),
    .C(_354_),
    .Y(_907_)
);

INVX1 _1571_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [28]),
    .Y(_353_)
);

INVX1 _1572_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [29]),
    .Y(_352_)
);

MUX2X1 _1573_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_352_),
    .B(_353_),
    .S(_597_),
    .Y(_906_)
);

INVX1 _1574_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [27]),
    .Y(_351_)
);

MUX2X1 _1575_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_353_),
    .B(_351_),
    .S(_597_),
    .Y(_905_)
);

INVX1 _1576_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [26]),
    .Y(_350_)
);

MUX2X1 _1577_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_351_),
    .B(_350_),
    .S(_597_),
    .Y(_904_)
);

INVX1 _1578_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [25]),
    .Y(_349_)
);

MUX2X1 _1579_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_350_),
    .B(_349_),
    .S(_597_),
    .Y(_903_)
);

INVX1 _1580_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [24]),
    .Y(_348_)
);

MUX2X1 _1581_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_349_),
    .B(_348_),
    .S(_597_),
    .Y(_902_)
);

INVX1 _1582_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [23]),
    .Y(_347_)
);

MUX2X1 _1583_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_348_),
    .B(_347_),
    .S(_597_),
    .Y(_901_)
);

INVX1 _1584_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [22]),
    .Y(_346_)
);

MUX2X1 _1585_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_347_),
    .B(_346_),
    .S(_597_),
    .Y(_900_)
);

INVX1 _1586_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [21]),
    .Y(_345_)
);

MUX2X1 _1587_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_346_),
    .B(_345_),
    .S(_597_),
    .Y(_899_)
);

INVX1 _1588_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_344_)
);

MUX2X1 _1589_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_345_),
    .B(_344_),
    .S(_597_),
    .Y(_898_)
);

INVX1 _1590_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [19]),
    .Y(_343_)
);

MUX2X1 _1591_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_344_),
    .B(_343_),
    .S(_597_),
    .Y(_897_)
);

INVX1 _1592_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [18]),
    .Y(_342_)
);

MUX2X1 _1593_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_343_),
    .B(_342_),
    .S(_597_),
    .Y(_896_)
);

INVX1 _1594_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [17]),
    .Y(_341_)
);

MUX2X1 _1595_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_342_),
    .B(_341_),
    .S(_597_),
    .Y(_895_)
);

INVX1 _1596_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_340_)
);

MUX2X1 _1597_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_341_),
    .B(_340_),
    .S(_597_),
    .Y(_894_)
);

INVX1 _1598_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [15]),
    .Y(_339_)
);

MUX2X1 _1599_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_340_),
    .B(_339_),
    .S(_597_),
    .Y(_893_)
);

INVX1 _1600_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [14]),
    .Y(_338_)
);

MUX2X1 _1601_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_339_),
    .B(_338_),
    .S(_597_),
    .Y(_892_)
);

INVX1 _1602_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [13]),
    .Y(_337_)
);

MUX2X1 _1603_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_338_),
    .B(_337_),
    .S(_597_),
    .Y(_891_)
);

INVX1 _1604_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_336_)
);

MUX2X1 _1605_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_337_),
    .B(_336_),
    .S(_597_),
    .Y(_890_)
);

INVX1 _1606_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [11]),
    .Y(_335_)
);

MUX2X1 _1607_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_336_),
    .B(_335_),
    .S(_597_),
    .Y(_889_)
);

INVX1 _1608_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [10]),
    .Y(_334_)
);

MUX2X1 _1609_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_335_),
    .B(_334_),
    .S(_597_),
    .Y(_888_)
);

INVX1 _1610_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [9]),
    .Y(_333_)
);

MUX2X1 _1611_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_334_),
    .B(_333_),
    .S(_597_),
    .Y(_887_)
);

INVX1 _1612_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_332_)
);

MUX2X1 _1613_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_333_),
    .B(_332_),
    .S(_597_),
    .Y(_886_)
);

INVX1 _1614_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [7]),
    .Y(_331_)
);

MUX2X1 _1615_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_332_),
    .B(_331_),
    .S(_597_),
    .Y(_885_)
);

INVX1 _1616_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [6]),
    .Y(_330_)
);

MUX2X1 _1617_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_331_),
    .B(_330_),
    .S(_597_),
    .Y(_884_)
);

INVX1 _1618_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [5]),
    .Y(_329_)
);

MUX2X1 _1619_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_330_),
    .B(_329_),
    .S(_597_),
    .Y(_883_)
);

INVX1 _1620_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [4]),
    .Y(_328_)
);

MUX2X1 _1621_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_329_),
    .B(_328_),
    .S(_597_),
    .Y(_882_)
);

INVX1 _1622_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [3]),
    .Y(_662_)
);

MUX2X1 _1623_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_328_),
    .B(_662_),
    .S(_597_),
    .Y(_881_)
);

NOR2X1 _1624_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [2]),
    .B(_597_),
    .Y(_663_)
);

AOI21X1 _1625_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_662_),
    .B(_597_),
    .C(_663_),
    .Y(_880_)
);

INVX1 _1626_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_664_)
);

OAI21X1 _1627_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.state.cnt_r [0]),
    .C(_577_),
    .Y(_665_)
);

NAND2X1 _1628_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_629_),
    .B(_597_),
    .Y(_666_)
);

OAI21X1 _1629_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_629_),
    .B(_665_),
    .C(_666_),
    .Y(_667_)
);

MUX2X1 _1630_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_664_),
    .B(_640_),
    .S(_667_),
    .Y(_879_)
);

INVX1 _1631_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [30]),
    .Y(_668_)
);

MUX2X1 _1632_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_668_),
    .B(_352_),
    .S(_597_),
    .Y(_878_)
);

INVX1 _1633_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [31]),
    .Y(_669_)
);

MUX2X1 _1634_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_669_),
    .B(_668_),
    .S(_597_),
    .Y(_877_)
);

INVX1 _1635_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_575_),
    .Y(_670_)
);

OAI21X1 _1636_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_651_),
    .B(_647_),
    .C(\u_cpu.branch_op ),
    .Y(_723_)
);

OAI21X1 _1637_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_723_),
    .B(_670_),
    .C(_656_),
    .Y(_724_)
);

NOR2X1 _1638_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_584_),
    .B(_724_),
    .Y(_805_)
);

INVX1 _1639_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .Y(_948_)
);

OAI21X1 _1640_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_655_),
    .C(_566_),
    .Y(_949_)
);

AOI21X1 _1641_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [1]),
    .B(\u_cpu.branch_op ),
    .C(_949_),
    .Y(_950_)
);

NAND2X1 _1642_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.c_r ),
    .B(_950_),
    .Y(_951_)
);

OR2X2 _1643_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_950_),
    .B(\u_cpu.bufreg.c_r ),
    .Y(_952_)
);

NAND2X1 _1644_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_951_),
    .B(_952_),
    .Y(_953_)
);

OAI21X1 _1645_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_953_),
    .B(_948_),
    .C(_628_),
    .Y(_954_)
);

AOI21X1 _1646_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_948_),
    .B(_953_),
    .C(_954_),
    .Y(_955_)
);

AOI21X1 _1647_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [2]),
    .B(_629_),
    .C(_955_),
    .Y(_956_)
);

MUX2X1 _1648_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_956_),
    .B(_664_),
    .S(_667_),
    .Y(_876_)
);

OAI21X1 _1649_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_953_),
    .B(_948_),
    .C(_951_),
    .Y(_957_)
);

AND2X2 _1650_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_597_),
    .B(_957_),
    .Y(_875_)
);

INVX1 _1651_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_955_),
    .Y(_958_)
);

NAND2X1 _1652_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_959_)
);

OAI21X1 _1653_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_628_),
    .B(_959_),
    .C(_958_),
    .Y(_960_)
);

NOR2X1 _1654_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_596_),
    .B(_960_),
    .Y(_961_)
);

AOI21X1 _1655_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_669_),
    .B(_596_),
    .C(_961_),
    .Y(_874_)
);

NAND2X1 _1656_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_962_)
);

AOI21X1 _1657_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_627_),
    .B(_664_),
    .C(_962_),
    .Y(_963_)
);

OAI21X1 _1658_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_627_),
    .B(_664_),
    .C(_637_),
    .Y(_964_)
);

NOR2X1 _1659_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_578_),
    .B(_637_),
    .Y(_965_)
);

NAND2X1 _1660_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_965_),
    .B(_628_),
    .Y(_966_)
);

OAI21X1 _1661_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_963_),
    .B(_964_),
    .C(_966_),
    .Y(_967_)
);

AOI21X1 _1662_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_967_),
    .B(_602_),
    .C(mem_dbus_ack),
    .Y(_968_)
);

OAI21X1 _1663_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_637_),
    .B(_619_),
    .C(_968_),
    .Y(_969_)
);

MUX2X1 _1664_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [30]),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .S(mem_dbus_ack),
    .Y(_970_)
);

MUX2X1 _1665_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_970_),
    .B(_639_),
    .S(_969_),
    .Y(_873_)
);

INVX1 _1666_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_969_),
    .Y(_971_)
);

INVX1 _1667_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(_972_)
);

NAND3X1 _1668_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_474_),
    .B(_965_),
    .C(_619_),
    .Y(_973_)
);

NAND3X1 _1669_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_972_),
    .B(_973_),
    .C(_607_),
    .Y(_974_)
);

AOI21X1 _1670_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_mem_serial.shift_reg [29]),
    .C(_971_),
    .Y(_975_)
);

AOI22X1 _1671_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_617_),
    .B(_971_),
    .C(_975_),
    .D(_974_),
    .Y(_872_)
);

NAND2X1 _1672_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_971_),
    .Y(_976_)
);

AND2X2 _1673_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_612_),
    .B(\u_cpu.bufreg2.dhi [4]),
    .Y(_977_)
);

OAI21X1 _1674_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_611_),
    .B(_977_),
    .C(_618_),
    .Y(_978_)
);

OAI21X1 _1675_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_617_),
    .B(_618_),
    .C(_978_),
    .Y(_979_)
);

MUX2X1 _1676_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_979_),
    .B(\u_mem_serial.shift_reg [28]),
    .S(_972_),
    .Y(_980_)
);

OAI21X1 _1677_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_971_),
    .B(_980_),
    .C(_976_),
    .Y(_871_)
);

INVX1 _1678_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_981_)
);

INVX1 _1679_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_618_),
    .Y(_982_)
);

INVX1 _1680_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_614_),
    .Y(_983_)
);

NOR2X1 _1681_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_981_),
    .B(_983_),
    .Y(_984_)
);

OAI21X1 _1682_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_613_),
    .B(_984_),
    .C(_618_),
    .Y(_985_)
);

NAND2X1 _1683_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_972_),
    .B(_985_),
    .Y(_986_)
);

AOI21X1 _1684_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_982_),
    .C(_986_),
    .Y(_987_)
);

OAI21X1 _1685_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_972_),
    .B(\u_mem_serial.shift_reg [27]),
    .C(_969_),
    .Y(_988_)
);

OAI22X1 _1686_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_981_),
    .B(_969_),
    .C(_988_),
    .D(_987_),
    .Y(_870_)
);

NOR2X1 _1687_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_616_),
    .B(_615_),
    .Y(_989_)
);

OAI21X1 _1688_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_983_),
    .B(_989_),
    .C(_618_),
    .Y(_990_)
);

OAI21X1 _1689_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_981_),
    .B(_618_),
    .C(_990_),
    .Y(_991_)
);

NAND2X1 _1690_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_972_),
    .B(_991_),
    .Y(_992_)
);

AOI21X1 _1691_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_mem_serial.shift_reg [26]),
    .C(_971_),
    .Y(_993_)
);

AOI22X1 _1692_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_616_),
    .B(_971_),
    .C(_993_),
    .D(_992_),
    .Y(_869_)
);

INVX1 _1693_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_994_)
);

INVX1 _1694_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_995_)
);

NOR2X1 _1695_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_995_),
    .B(_994_),
    .Y(_996_)
);

OAI21X1 _1696_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_615_),
    .B(_996_),
    .C(_618_),
    .Y(_997_)
);

NAND2X1 _1697_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_972_),
    .B(_997_),
    .Y(_998_)
);

AOI21X1 _1698_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .B(_982_),
    .C(_998_),
    .Y(_999_)
);

OAI21X1 _1699_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_972_),
    .B(\u_mem_serial.shift_reg [25]),
    .C(_969_),
    .Y(_1000_)
);

OAI22X1 _1700_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_994_),
    .B(_969_),
    .C(_1000_),
    .D(_999_),
    .Y(_868_)
);

MUX2X1 _1701_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_994_),
    .S(_618_),
    .Y(_1001_)
);

NAND2X1 _1702_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_359_),
    .Y(_1002_)
);

OAI21X1 _1703_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1001_),
    .C(_1002_),
    .Y(_1003_)
);

MUX2X1 _1704_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1003_),
    .B(_995_),
    .S(_969_),
    .Y(_867_)
);

INVX1 _1705_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [22]),
    .Y(_1004_)
);

NAND2X1 _1706_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_405_),
    .Y(_1005_)
);

OAI21X1 _1707_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [23]),
    .C(_1005_),
    .Y(_1006_)
);

MUX2X1 _1708_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1004_),
    .B(_1006_),
    .S(_968_),
    .Y(_866_)
);

INVX1 _1709_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [21]),
    .Y(_1007_)
);

NAND2X1 _1710_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_399_),
    .Y(_1008_)
);

OAI21X1 _1711_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [22]),
    .C(_1008_),
    .Y(_1009_)
);

MUX2X1 _1712_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1007_),
    .B(_1009_),
    .S(_968_),
    .Y(_865_)
);

INVX1 _1713_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [20]),
    .Y(_1010_)
);

NAND2X1 _1714_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_478_),
    .Y(_1011_)
);

OAI21X1 _1715_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(_1011_),
    .Y(_1012_)
);

MUX2X1 _1716_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1010_),
    .B(_1012_),
    .S(_968_),
    .Y(_864_)
);

INVX1 _1717_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_968_),
    .Y(_1013_)
);

INVX1 _1718_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_1014_)
);

NAND2X1 _1719_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1014_),
    .Y(_1015_)
);

OAI21X1 _1720_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [20]),
    .C(_1015_),
    .Y(_1016_)
);

NOR2X1 _1721_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_1013_),
    .Y(_1017_)
);

AOI21X1 _1722_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1016_),
    .C(_1017_),
    .Y(_863_)
);

NAND2X1 _1723_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_463_),
    .Y(_1018_)
);

OAI21X1 _1724_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [19]),
    .C(_1018_),
    .Y(_1019_)
);

NOR2X1 _1725_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [18]),
    .B(_1013_),
    .Y(_1020_)
);

AOI21X1 _1726_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1019_),
    .C(_1020_),
    .Y(_862_)
);

NAND2X1 _1727_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_457_),
    .Y(_1021_)
);

OAI21X1 _1728_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [18]),
    .C(_1021_),
    .Y(_1022_)
);

NOR2X1 _1729_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [17]),
    .B(_1013_),
    .Y(_1023_)
);

AOI21X1 _1730_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1022_),
    .C(_1023_),
    .Y(_861_)
);

NAND2X1 _1731_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_451_),
    .Y(_1024_)
);

OAI21X1 _1732_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [17]),
    .C(_1024_),
    .Y(_1025_)
);

NOR2X1 _1733_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(_1013_),
    .Y(_1026_)
);

AOI21X1 _1734_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1025_),
    .C(_1026_),
    .Y(_860_)
);

NAND2X1 _1735_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_445_),
    .Y(_1027_)
);

OAI21X1 _1736_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(_1027_),
    .Y(_1028_)
);

NOR2X1 _1737_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_1013_),
    .Y(_1029_)
);

AOI21X1 _1738_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1028_),
    .C(_1029_),
    .Y(_859_)
);

INVX1 _1739_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_1030_)
);

NAND2X1 _1740_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1030_),
    .Y(_1031_)
);

OAI21X1 _1741_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [15]),
    .C(_1031_),
    .Y(_1032_)
);

NOR2X1 _1742_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [14]),
    .B(_1013_),
    .Y(_1033_)
);

AOI21X1 _1743_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1032_),
    .C(_1033_),
    .Y(_858_)
);

INVX1 _1744_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_1034_)
);

NAND2X1 _1745_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1034_),
    .Y(_1035_)
);

OAI21X1 _1746_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [14]),
    .C(_1035_),
    .Y(_1036_)
);

NOR2X1 _1747_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [13]),
    .B(_1013_),
    .Y(_1037_)
);

AOI21X1 _1748_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1036_),
    .C(_1037_),
    .Y(_857_)
);

INVX1 _1749_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_1038_)
);

NAND2X1 _1750_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1038_),
    .Y(_1039_)
);

OAI21X1 _1751_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(_1039_),
    .Y(_1040_)
);

NOR2X1 _1752_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [12]),
    .B(_1013_),
    .Y(_1041_)
);

AOI21X1 _1753_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1040_),
    .C(_1041_),
    .Y(_856_)
);

INVX1 _1754_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_1042_)
);

NAND2X1 _1755_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1042_),
    .Y(_1043_)
);

OAI21X1 _1756_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [12]),
    .C(_1043_),
    .Y(_1044_)
);

NOR2X1 _1757_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_1013_),
    .Y(_1045_)
);

AOI21X1 _1758_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1044_),
    .C(_1045_),
    .Y(_855_)
);

INVX1 _1759_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [10]),
    .Y(_1046_)
);

NAND2X1 _1760_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1046_),
    .Y(_1047_)
);

OAI21X1 _1761_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [11]),
    .C(_1047_),
    .Y(_1048_)
);

NOR2X1 _1762_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [10]),
    .B(_1013_),
    .Y(_1049_)
);

AOI21X1 _1763_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1048_),
    .C(_1049_),
    .Y(_854_)
);

INVX1 _1764_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_1050_)
);

NAND2X1 _1765_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1050_),
    .Y(_1051_)
);

OAI21X1 _1766_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [10]),
    .C(_1051_),
    .Y(_1052_)
);

NOR2X1 _1767_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [9]),
    .B(_1013_),
    .Y(_1053_)
);

AOI21X1 _1768_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1052_),
    .C(_1053_),
    .Y(_853_)
);

INVX1 _1769_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_1054_)
);

NAND2X1 _1770_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1054_),
    .Y(_1055_)
);

OAI21X1 _1771_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [9]),
    .C(_1055_),
    .Y(_1056_)
);

MUX2X1 _1772_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_507_),
    .B(_1056_),
    .S(_968_),
    .Y(_852_)
);

INVX1 _1773_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [7]),
    .Y(_1057_)
);

NAND2X1 _1774_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1057_),
    .Y(_1058_)
);

OAI21X1 _1775_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [8]),
    .C(_1058_),
    .Y(_1059_)
);

NOR2X1 _1776_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_1013_),
    .Y(_1060_)
);

AOI21X1 _1777_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1059_),
    .C(_1060_),
    .Y(_851_)
);

NAND2X1 _1778_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_558_),
    .Y(_1061_)
);

OAI21X1 _1779_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [7]),
    .C(_1061_),
    .Y(_1062_)
);

NOR2X1 _1780_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [6]),
    .B(_1013_),
    .Y(_1063_)
);

AOI21X1 _1781_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1062_),
    .C(_1063_),
    .Y(_850_)
);

NAND2X1 _1782_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_556_),
    .Y(_1064_)
);

OAI21X1 _1783_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [6]),
    .C(_1064_),
    .Y(_1065_)
);

NOR2X1 _1784_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [5]),
    .B(_1013_),
    .Y(_1066_)
);

AOI21X1 _1785_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1065_),
    .C(_1066_),
    .Y(_849_)
);

NAND2X1 _1786_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_559_),
    .Y(_1067_)
);

OAI21X1 _1787_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [5]),
    .C(_1067_),
    .Y(_1068_)
);

NOR2X1 _1788_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [4]),
    .B(_1013_),
    .Y(_1069_)
);

AOI21X1 _1789_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1068_),
    .C(_1069_),
    .Y(_848_)
);

NAND2X1 _1790_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_494_),
    .Y(_1070_)
);

OAI21X1 _1791_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(_1070_),
    .Y(_1071_)
);

NOR2X1 _1792_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_1013_),
    .Y(_1072_)
);

AOI21X1 _1793_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1071_),
    .C(_1072_),
    .Y(_847_)
);

NAND2X1 _1794_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_555_),
    .Y(_1073_)
);

OAI21X1 _1795_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [3]),
    .C(_1073_),
    .Y(_1074_)
);

NOR2X1 _1796_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [2]),
    .B(_1013_),
    .Y(_1075_)
);

AOI21X1 _1797_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1074_),
    .C(_1075_),
    .Y(_846_)
);

INVX1 _1798_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_1076_)
);

NAND2X1 _1799_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1076_),
    .Y(_1077_)
);

OAI21X1 _1800_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [2]),
    .C(_1077_),
    .Y(_1078_)
);

NOR2X1 _1801_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [1]),
    .B(_1013_),
    .Y(_1079_)
);

AOI21X1 _1802_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1078_),
    .C(_1079_),
    .Y(_845_)
);

INVX1 _1803_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [0]),
    .Y(_1080_)
);

NAND2X1 _1804_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_1080_),
    .Y(_1081_)
);

OAI21X1 _1805_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(_1081_),
    .Y(_1082_)
);

MUX2X1 _1806_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_510_),
    .B(_1082_),
    .S(_968_),
    .Y(_844_)
);

NAND2X1 _1807_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_411_),
    .Y(_1083_)
);

OAI21X1 _1808_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(mem_dbus_ack),
    .C(_1083_),
    .Y(_1084_)
);

NOR2X1 _1809_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_1013_),
    .Y(_1085_)
);

AOI21X1 _1810_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1084_),
    .C(_1085_),
    .Y(_843_)
);

INVX1 _1811_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_1086_)
);

NAND2X1 _1812_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_376_),
    .Y(_1087_)
);

OAI21X1 _1813_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .B(_549_),
    .C(_1087_),
    .Y(_1088_)
);

MUX2X1 _1814_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1088_),
    .B(_1086_),
    .S(_969_),
    .Y(_842_)
);

INVX1 _1815_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_1089_)
);

INVX1 _1816_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_1090_)
);

NOR2X1 _1817_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_601_),
    .B(_628_),
    .Y(_1091_)
);

MUX2X1 _1818_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1090_),
    .B(_1089_),
    .S(_1091_),
    .Y(_841_)
);

INVX1 _1819_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_1092_)
);

MUX2X1 _1820_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1089_),
    .B(_1092_),
    .S(_1091_),
    .Y(_840_)
);

INVX1 _1821_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_1093_)
);

MUX2X1 _1822_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1092_),
    .B(_1093_),
    .S(_1091_),
    .Y(_839_)
);

INVX1 _1823_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1094_)
);

MUX2X1 _1824_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1093_),
    .B(_1094_),
    .S(_1091_),
    .Y(_838_)
);

INVX1 _1825_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1095_)
);

MUX2X1 _1826_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1094_),
    .B(_1095_),
    .S(_1091_),
    .Y(_837_)
);

INVX1 _1827_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1096_)
);

MUX2X1 _1828_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1095_),
    .B(_1096_),
    .S(_1091_),
    .Y(_836_)
);

INVX1 _1829_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1097_)
);

MUX2X1 _1830_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1096_),
    .B(_1097_),
    .S(_1091_),
    .Y(_835_)
);

INVX1 _1831_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_1098_)
);

MUX2X1 _1832_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1097_),
    .B(_1098_),
    .S(_1091_),
    .Y(_834_)
);

INVX1 _1833_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_1099_)
);

MUX2X1 _1834_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1098_),
    .B(_1099_),
    .S(_1091_),
    .Y(_833_)
);

INVX1 _1835_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_1100_)
);

MUX2X1 _1836_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1099_),
    .B(_1100_),
    .S(_1091_),
    .Y(_832_)
);

INVX1 _1837_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_1101_)
);

MUX2X1 _1838_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1100_),
    .B(_1101_),
    .S(_1091_),
    .Y(_831_)
);

INVX1 _1839_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_1102_)
);

MUX2X1 _1840_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1101_),
    .B(_1102_),
    .S(_1091_),
    .Y(_830_)
);

INVX1 _1841_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_1103_)
);

MUX2X1 _1842_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1102_),
    .B(_1103_),
    .S(_1091_),
    .Y(_829_)
);

INVX1 _1843_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_1104_)
);

MUX2X1 _1844_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1103_),
    .B(_1104_),
    .S(_1091_),
    .Y(_828_)
);

INVX1 _1845_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_1105_)
);

MUX2X1 _1846_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1104_),
    .B(_1105_),
    .S(_1091_),
    .Y(_827_)
);

INVX1 _1847_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_1106_)
);

MUX2X1 _1848_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1105_),
    .B(_1106_),
    .S(_1091_),
    .Y(_826_)
);

INVX1 _1849_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_1107_)
);

MUX2X1 _1850_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1106_),
    .B(_1107_),
    .S(_1091_),
    .Y(_825_)
);

INVX1 _1851_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_1108_)
);

MUX2X1 _1852_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1107_),
    .B(_1108_),
    .S(_1091_),
    .Y(_824_)
);

INVX1 _1853_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_1109_)
);

MUX2X1 _1854_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1108_),
    .B(_1109_),
    .S(_1091_),
    .Y(_823_)
);

INVX1 _1855_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_1110_)
);

MUX2X1 _1856_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1109_),
    .B(_1110_),
    .S(_1091_),
    .Y(_822_)
);

INVX1 _1857_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_1111_)
);

MUX2X1 _1858_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1110_),
    .B(_1111_),
    .S(_1091_),
    .Y(_821_)
);

INVX1 _1859_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_1112_)
);

MUX2X1 _1860_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1111_),
    .B(_1112_),
    .S(_1091_),
    .Y(_820_)
);

INVX1 _1861_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_1113_)
);

MUX2X1 _1862_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1112_),
    .B(_1113_),
    .S(_1091_),
    .Y(_819_)
);

INVX1 _1863_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_1114_)
);

MUX2X1 _1864_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1113_),
    .B(_1114_),
    .S(_1091_),
    .Y(_818_)
);

INVX1 _1865_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_1115_)
);

MUX2X1 _1866_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1114_),
    .B(_1115_),
    .S(_1091_),
    .Y(_817_)
);

INVX1 _1867_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_1116_)
);

MUX2X1 _1868_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1115_),
    .B(_1116_),
    .S(_1091_),
    .Y(_816_)
);

MUX2X1 _1869_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1116_),
    .B(_521_),
    .S(_1091_),
    .Y(_815_)
);

INVX1 _1870_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_1117_)
);

MUX2X1 _1871_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1117_),
    .B(_1090_),
    .S(_1091_),
    .Y(_814_)
);

INVX1 _1872_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_1118_)
);

INVX1 _1873_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_1119_)
);

MUX2X1 _1874_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1119_),
    .B(_1118_),
    .S(_1091_),
    .Y(_813_)
);

INVX1 _1875_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_1120_)
);

MUX2X1 _1876_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1118_),
    .B(_1120_),
    .S(_1091_),
    .Y(_812_)
);

MUX2X1 _1877_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1120_),
    .B(_1117_),
    .S(_1091_),
    .Y(_811_)
);

OAI21X1 _1878_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_641_),
    .B(_581_),
    .C(_643_),
    .Y(_1121_)
);

AND2X2 _1879_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1121_),
    .B(_1091_),
    .Y(_810_)
);

INVX1 _1880_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_519_),
    .Y(_1122_)
);

INVX1 _1881_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1091_),
    .Y(_1123_)
);

AOI21X1 _1882_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1122_),
    .B(_516_),
    .C(_1123_),
    .Y(_809_)
);

AND2X2 _1883_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_573_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_1124_)
);

OAI21X1 _1884_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jump ),
    .B(_513_),
    .C(_1091_),
    .Y(_1125_)
);

OAI22X1 _1885_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1119_),
    .B(_1091_),
    .C(_1125_),
    .D(_1124_),
    .Y(_808_)
);

OAI21X1 _1886_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_562_),
    .B(_539_),
    .C(_565_),
    .Y(_1126_)
);

NOR2X1 _1887_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_601_),
    .B(_1126_),
    .Y(_1127_)
);

AOI21X1 _1888_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_601_),
    .B(_542_),
    .C(_1127_),
    .Y(_807_)
);

AOI22X1 _1889_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_531_),
    .B(_670_),
    .C(_538_),
    .D(_537_),
    .Y(_1128_)
);

OAI21X1 _1890_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(_1129_)
);

NAND2X1 _1891_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1129_),
    .B(_533_),
    .Y(_1130_)
);

NOR2X1 _1892_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(_1126_),
    .Y(_1131_)
);

AND2X2 _1893_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .B(_1130_),
    .Y(_1132_)
);

OAI21X1 _1894_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1131_),
    .B(_1132_),
    .C(_571_),
    .Y(_1133_)
);

OAI21X1 _1895_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_571_),
    .B(_1128_),
    .C(_1133_),
    .Y(_1134_)
);

MUX2X1 _1896_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1134_),
    .B(_531_),
    .S(_602_),
    .Y(_806_)
);

INVX1 _1897_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .Y(_1135_)
);

INVX1 _1898_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [3]),
    .Y(_1136_)
);

INVX1 _1899_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [2]),
    .Y(_1137_)
);

INVX1 _1900_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [1]),
    .Y(_1138_)
);

NAND3X1 _1901_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_1137_),
    .C(_1138_),
    .Y(_1139_)
);

NOR2X1 _1902_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1139_),
    .Y(_1140_)
);

NAND3X1 _1903_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1135_),
    .B(_1140_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_1141_)
);

OAI21X1 _1904_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [5]),
    .C(_1141_),
    .Y(_1142_)
);

NAND2X1 _1905_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .B(\u_rf_if.prefetch_active ),
    .Y(_1143_)
);

NOR2X1 _1906_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1143_),
    .B(_1142_),
    .Y(_804_)
);

OAI21X1 _1907_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_626_),
    .B(_475_),
    .C(i_rst_n),
    .Y(_1144_)
);

AOI21X1 _1908_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_626_),
    .B(_475_),
    .C(_1144_),
    .Y(_803_)
);

INVX1 _1909_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .Y(_1145_)
);

NOR2X1 _1910_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_1145_),
    .Y(_1146_)
);

INVX1 _1911_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1146_),
    .Y(_1147_)
);

NOR2X1 _1912_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1147_),
    .B(_482_),
    .Y(_1148_)
);

INVX1 _1913_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1148_),
    .Y(_1149_)
);

NOR2X1 _1914_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_589_),
    .Y(_1150_)
);

AOI22X1 _1915_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(raddr[4]),
    .C(_1149_),
    .D(_1150_),
    .Y(_1151_)
);

INVX1 _1916_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1151_),
    .Y(_1152_)
);

NOR2X1 _1917_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_383_),
    .Y(_1153_)
);

AOI22X1 _1918_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(raddr[6]),
    .C(_1149_),
    .D(_1153_),
    .Y(_1154_)
);

INVX1 _1919_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1154_),
    .Y(_1155_)
);

NOR2X1 _1920_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1152_),
    .B(_1155_),
    .Y(_1156_)
);

NOR2X1 _1921_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_380_),
    .Y(_1157_)
);

AOI22X1 _1922_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(raddr[5]),
    .C(_1149_),
    .D(_1157_),
    .Y(_1158_)
);

NOR2X1 _1923_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .B(_392_),
    .Y(_1159_)
);

AOI22X1 _1924_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .B(ren),
    .C(_1149_),
    .D(_1159_),
    .Y(_1160_)
);

NAND3X1 _1925_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1158_),
    .B(_1160_),
    .C(_1156_),
    .Y(_1161_)
);

NAND2X1 _1926_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_shared_rdata[0]),
    .B(_1161_),
    .Y(_1162_)
);

INVX1 _1927_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.prefetch_active ),
    .Y(_1163_)
);

NOR2X1 _1928_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [5]),
    .Y(_1164_)
);

AOI21X1 _1929_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1140_),
    .B(_1164_),
    .C(_1163_),
    .Y(_1165_)
);

NAND2X1 _1930_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [0]),
    .Y(_1166_)
);

NOR2X1 _1931_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1166_),
    .B(_1139_),
    .Y(_1167_)
);

NAND2X1 _1932_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1167_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_1168_)
);

NAND2X1 _1933_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1165_),
    .B(_1168_),
    .Y(_1169_)
);

NOR2X1 _1934_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .B(_1169_),
    .Y(_1170_)
);

INVX1 _1935_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1170_),
    .Y(_1171_)
);

INVX1 _1936_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1165_),
    .Y(_1172_)
);

INVX1 _1937_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1168_),
    .Y(_1173_)
);

OAI21X1 _1938_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1172_),
    .B(_1173_),
    .C(_568_),
    .Y(_1174_)
);

INVX1 _1939_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1174_),
    .Y(_1175_)
);

AOI22X1 _1940_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(\u_rf_if.stream_active ),
    .C(_1175_),
    .D(\u_rf_if.read_buf0 [30]),
    .Y(_1176_)
);

OAI21X1 _1941_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1171_),
    .B(_1162_),
    .C(_1176_),
    .Y(_802_)
);

NOR2X1 _1942_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1172_),
    .B(_1168_),
    .Y(_1177_)
);

INVX1 _1943_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1177_),
    .Y(_1178_)
);

INVX1 _1944_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_1179_)
);

INVX1 _1945_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_1180_)
);

INVX1 _1946_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_1181_)
);

INVX1 _1947_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_1182_)
);

NOR2X1 _1948_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1181_),
    .B(_1182_),
    .Y(_1183_)
);

NAND2X1 _1949_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1183_),
    .Y(_1184_)
);

NOR2X1 _1950_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1180_),
    .B(_1184_),
    .Y(_1185_)
);

INVX1 _1951_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1185_),
    .Y(_1186_)
);

OAI21X1 _1952_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1179_),
    .B(_1186_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_1187_)
);

OAI21X1 _1953_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(_1187_),
    .C(_1178_),
    .Y(_1188_)
);

NAND2X1 _1954_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_shared_rdata[1]),
    .B(_1161_),
    .Y(_1189_)
);

NOR2X1 _1955_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .B(_568_),
    .Y(_1190_)
);

INVX1 _1956_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1190_),
    .Y(_1191_)
);

OAI21X1 _1957_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_1188_),
    .C(_1191_),
    .Y(_1192_)
);

AOI21X1 _1958_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1189_),
    .B(_1188_),
    .C(_1192_),
    .Y(_801_)
);

NAND2X1 _1959_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_561_),
    .Y(_1193_)
);

AOI21X1 _1960_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_409_),
    .B(_1193_),
    .C(_492_),
    .Y(_800_)
);

NAND2X1 _1961_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_561_),
    .Y(_1195_)
);

AOI21X1 _1962_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_461_),
    .B(_1195_),
    .C(_492_),
    .Y(_799_)
);

NOR2X1 _1963_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1198_)
);

NAND3X1 _1964_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.pending_read ),
    .B(_1163_),
    .C(_1198_),
    .Y(_1199_)
);

NAND2X1 _1965_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .B(_1199_),
    .Y(_1200_)
);

NOR2X1 _1966_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1135_),
    .B(_1200_),
    .Y(_798_)
);

INVX1 _1967_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [4]),
    .Y(_1201_)
);

OAI21X1 _1968_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [3]),
    .Y(_1202_)
);

INVX1 _1969_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .Y(_1203_)
);

NOR2X1 _1970_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1191_),
    .B(_1203_),
    .Y(_1204_)
);

OAI21X1 _1971_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1180_),
    .B(_1184_),
    .C(_1204_),
    .Y(_1205_)
);

INVX1 _1972_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1205_),
    .Y(_1206_)
);

NAND2X1 _1973_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.prefetch_active ),
    .B(_1142_),
    .Y(_1207_)
);

NOR2X1 _1974_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1207_),
    .B(_1206_),
    .Y(_1208_)
);

INVX1 _1975_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1208_),
    .Y(_1209_)
);

OR2X2 _1976_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1141_),
    .B(_1201_),
    .Y(_1210_)
);

OAI21X1 _1977_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1163_),
    .B(_1210_),
    .C(_1205_),
    .Y(_1211_)
);

INVX1 _1978_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1207_),
    .Y(_1212_)
);

NOR2X1 _1979_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1212_),
    .B(_1206_),
    .Y(_1213_)
);

AOI22X1 _1980_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[7]),
    .Y(_1214_)
);

OAI21X1 _1981_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1202_),
    .B(_1209_),
    .C(_1214_),
    .Y(_797_)
);

NOR2X1 _1982_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_492_),
    .B(_1213_),
    .Y(_796_)
);

NOR2X1 _1983_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.pending_read ),
    .B(mem_ibus_ack),
    .Y(_1215_)
);

NOR2X1 _1984_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1215_),
    .B(_1200_),
    .Y(_795_)
);

OAI21X1 _1985_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [1]),
    .Y(_1216_)
);

AOI22X1 _1986_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[5]),
    .Y(_1217_)
);

OAI21X1 _1987_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1209_),
    .B(_1216_),
    .C(_1217_),
    .Y(_794_)
);

INVX1 _1988_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1213_),
    .Y(_1218_)
);

NAND3X1 _1989_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1180_),
    .B(_1184_),
    .C(_1204_),
    .Y(_1219_)
);

OAI21X1 _1990_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[3]),
    .B(_1218_),
    .C(_1219_),
    .Y(_1220_)
);

AOI21X1 _1991_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_1208_),
    .C(_1220_),
    .Y(_793_)
);

AOI21X1 _1992_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1207_),
    .B(_1199_),
    .C(_492_),
    .Y(_792_)
);

NOR2X1 _1993_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_492_),
    .B(_482_),
    .Y(_1221_)
);

INVX1 _1994_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1221_),
    .Y(_1222_)
);

INVX1 _1995_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .Y(_1223_)
);

NAND2X1 _1996_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [1]),
    .B(_1223_),
    .Y(_1224_)
);

NOR2X1 _1997_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1224_),
    .B(_1222_),
    .Y(_791_)
);

INVX1 _1998_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .Y(_1225_)
);

INVX1 _1999_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_1226_)
);

INVX1 _2000_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .Y(_1227_)
);

NOR2X1 _2001_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_1228_)
);

NAND3X1 _2002_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1226_),
    .B(_1227_),
    .C(_1228_),
    .Y(_1229_)
);

NOR2X1 _2003_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1225_),
    .B(_1229_),
    .Y(_1230_)
);

INVX1 _2004_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rtrig1 ),
    .Y(_1231_)
);

OAI21X1 _2005_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1147_),
    .B(_482_),
    .C(\u_rf_if.wen0_r ),
    .Y(_1232_)
);

OR2X2 _2006_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1232_),
    .B(_1231_),
    .Y(_1233_)
);

NAND3X1 _2007_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_570_),
    .B(_486_),
    .C(_542_),
    .Y(_1234_)
);

NOR2X1 _2008_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1234_),
    .B(_1233_),
    .Y(_1235_)
);

NAND2X1 _2009_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1230_),
    .B(_1235_),
    .Y(_1236_)
);

OAI21X1 _2010_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1229_),
    .B(_1233_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1237_)
);

AOI21X1 _2011_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1236_),
    .B(_1237_),
    .C(_1222_),
    .Y(_790_)
);

INVX1 _2012_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .Y(_1238_)
);

INVX1 _2013_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen0_r ),
    .Y(_1239_)
);

NOR2X1 _2014_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1239_),
    .B(_1149_),
    .Y(_1240_)
);

INVX1 _2015_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1240_),
    .Y(_1241_)
);

NOR2X1 _2016_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1226_),
    .B(_1241_),
    .Y(_1242_)
);

INVX1 _2017_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1242_),
    .Y(_1197_)
);

NOR2X1 _2018_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1238_),
    .B(_1197_),
    .Y(_1_)
);

NAND2X1 _2019_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(_1_),
    .Y(_2_)
);

OAI21X1 _2020_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1227_),
    .B(_2_),
    .C(_1221_),
    .Y(_3_)
);

AOI21X1 _2021_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1227_),
    .B(_2_),
    .C(_3_),
    .Y(_789_)
);

NAND2X1 _2022_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_388_),
    .B(_392_),
    .Y(_4_)
);

NAND3X1 _2023_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_383_),
    .B(_380_),
    .C(_589_),
    .Y(_5_)
);

OAI21X1 _2024_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_4_),
    .B(_5_),
    .C(_391_),
    .Y(_6_)
);

NOR2X1 _2025_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_6_),
    .B(_1123_),
    .Y(_7_)
);

NAND2X1 _2026_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_7_),
    .B(_1148_),
    .Y(_8_)
);

AOI21X1 _2027_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_8_),
    .B(_1232_),
    .C(_492_),
    .Y(_788_)
);

NOR2X1 _2028_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1147_),
    .B(_1222_),
    .Y(_787_)
);

OAI21X1 _2029_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1179_),
    .B(_1186_),
    .C(\u_rf_if.stream_active ),
    .Y(_9_)
);

NAND2X1 _2030_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.ready_pulse ),
    .B(_568_),
    .Y(_10_)
);

AOI21X1 _2031_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_9_),
    .B(_10_),
    .C(_492_),
    .Y(_786_)
);

NOR2X1 _2032_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1179_),
    .B(_568_),
    .Y(_11_)
);

OAI21X1 _2033_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1180_),
    .B(_1184_),
    .C(_11_),
    .Y(_12_)
);

OAI21X1 _2034_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1180_),
    .B(_11_),
    .C(_12_),
    .Y(_13_)
);

NAND2X1 _2035_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .B(_10_),
    .Y(_14_)
);

AOI21X1 _2036_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1184_),
    .B(_1180_),
    .C(_14_),
    .Y(_15_)
);

AND2X2 _2037_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_15_),
    .B(_13_),
    .Y(_785_)
);

NAND2X1 _2038_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(_1175_),
    .Y(_16_)
);

OAI21X1 _2039_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1171_),
    .B(_1189_),
    .C(_16_),
    .Y(_784_)
);

NAND2X1 _2040_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(_1235_),
    .Y(_17_)
);

NOR2X1 _2041_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_17_),
    .B(\u_cpu.o_wdata0 ),
    .Y(_18_)
);

AND2X2 _2042_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1235_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_19_)
);

OAI21X1 _2043_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 ),
    .B(_19_),
    .C(_481_),
    .Y(_20_)
);

NOR2X1 _2044_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_20_),
    .B(_18_),
    .Y(_783_)
);

INVX1 _2045_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [1]),
    .Y(_21_)
);

AOI21X1 _2046_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1145_),
    .B(_21_),
    .C(mem_ibus_ack),
    .Y(_22_)
);

OAI21X1 _2047_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1145_),
    .B(_21_),
    .C(_22_),
    .Y(_23_)
);

AOI21X1 _2048_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_481_),
    .B(_23_),
    .C(_492_),
    .Y(_782_)
);

NAND2X1 _2049_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_24_)
);

AOI21X1 _2050_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_481_),
    .B(_24_),
    .C(_492_),
    .Y(_781_)
);

OAI21X1 _2051_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [0]),
    .Y(_25_)
);

AOI22X1 _2052_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[4]),
    .Y(_26_)
);

OAI21X1 _2053_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1209_),
    .B(_25_),
    .C(_26_),
    .Y(_780_)
);

NOR2X1 _2054_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1207_),
    .Y(_27_)
);

OAI22X1 _2055_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1182_),
    .B(_1205_),
    .C(raddr[0]),
    .D(_1218_),
    .Y(_28_)
);

AOI21X1 _2056_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1205_),
    .B(_27_),
    .C(_28_),
    .Y(_779_)
);

INVX1 _2057_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_29_)
);

OAI21X1 _2058_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1181_),
    .B(_1182_),
    .C(_29_),
    .Y(_30_)
);

AND2X2 _2059_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1184_),
    .B(_30_),
    .Y(_31_)
);

AOI22X1 _2060_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1204_),
    .B(_31_),
    .C(_1213_),
    .D(raddr[2]),
    .Y(_32_)
);

OAI21X1 _2061_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1137_),
    .B(_1209_),
    .C(_32_),
    .Y(_778_)
);

NOR2X1 _2062_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [1]),
    .Y(_33_)
);

NOR2X1 _2063_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_33_),
    .B(_1183_),
    .Y(_34_)
);

AOI22X1 _2064_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1206_),
    .B(_34_),
    .C(_1213_),
    .D(raddr[1]),
    .Y(_35_)
);

OAI21X1 _2065_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1138_),
    .B(_1209_),
    .C(_35_),
    .Y(_777_)
);

AOI22X1 _2066_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.read_buf0 [1]),
    .C(_1170_),
    .D(\u_rf_if.read_buf0 [2]),
    .Y(_36_)
);

OAI21X1 _2067_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_567_),
    .B(_1174_),
    .C(_36_),
    .Y(_776_)
);

INVX1 _2068_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [1]),
    .Y(_37_)
);

AOI22X1 _2069_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.read_buf0 [2]),
    .C(_1170_),
    .D(\u_rf_if.read_buf0 [3]),
    .Y(_38_)
);

OAI21X1 _2070_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_37_),
    .B(_1174_),
    .C(_38_),
    .Y(_775_)
);

INVX1 _2071_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [4]),
    .Y(_39_)
);

OAI22X1 _2072_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [3]),
    .C(\u_rf_if.read_buf0 [2]),
    .D(_1174_),
    .Y(_40_)
);

AOI21X1 _2073_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_39_),
    .B(_1170_),
    .C(_40_),
    .Y(_774_)
);

INVX1 _2074_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [5]),
    .Y(_41_)
);

OAI22X1 _2075_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [4]),
    .C(\u_rf_if.read_buf0 [3]),
    .D(_1174_),
    .Y(_42_)
);

AOI21X1 _2076_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_41_),
    .B(_1170_),
    .C(_42_),
    .Y(_773_)
);

OAI22X1 _2077_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [5]),
    .C(\u_rf_if.read_buf0 [6]),
    .D(_1171_),
    .Y(_43_)
);

AOI21X1 _2078_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_39_),
    .B(_1175_),
    .C(_43_),
    .Y(_772_)
);

OAI22X1 _2079_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [6]),
    .C(\u_rf_if.read_buf0 [7]),
    .D(_1171_),
    .Y(_44_)
);

AOI21X1 _2080_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_41_),
    .B(_1175_),
    .C(_44_),
    .Y(_771_)
);

NOR2X1 _2081_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(_1174_),
    .Y(_45_)
);

OAI22X1 _2082_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [7]),
    .C(\u_rf_if.read_buf0 [8]),
    .D(_1171_),
    .Y(_46_)
);

NOR2X1 _2083_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_45_),
    .B(_46_),
    .Y(_770_)
);

INVX1 _2084_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [9]),
    .Y(_47_)
);

OAI22X1 _2085_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [8]),
    .C(\u_rf_if.read_buf0 [7]),
    .D(_1174_),
    .Y(_48_)
);

AOI21X1 _2086_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_47_),
    .B(_1170_),
    .C(_48_),
    .Y(_769_)
);

NOR2X1 _2087_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [8]),
    .B(_1174_),
    .Y(_49_)
);

OAI22X1 _2088_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [9]),
    .C(\u_rf_if.read_buf0 [10]),
    .D(_1171_),
    .Y(_50_)
);

NOR2X1 _2089_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_49_),
    .B(_50_),
    .Y(_768_)
);

INVX1 _2090_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [11]),
    .Y(_51_)
);

OAI22X1 _2091_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [10]),
    .C(\u_rf_if.read_buf0 [9]),
    .D(_1174_),
    .Y(_52_)
);

AOI21X1 _2092_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_51_),
    .B(_1170_),
    .C(_52_),
    .Y(_767_)
);

INVX1 _2093_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [12]),
    .Y(_53_)
);

OAI22X1 _2094_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [11]),
    .C(\u_rf_if.read_buf0 [10]),
    .D(_1174_),
    .Y(_54_)
);

AOI21X1 _2095_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_53_),
    .B(_1170_),
    .C(_54_),
    .Y(_766_)
);

OAI22X1 _2096_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [12]),
    .C(\u_rf_if.read_buf0 [13]),
    .D(_1171_),
    .Y(_55_)
);

AOI21X1 _2097_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_51_),
    .B(_1175_),
    .C(_55_),
    .Y(_765_)
);

INVX1 _2098_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [14]),
    .Y(_56_)
);

OAI22X1 _2099_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [13]),
    .C(\u_rf_if.read_buf0 [12]),
    .D(_1174_),
    .Y(_57_)
);

AOI21X1 _2100_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_56_),
    .B(_1170_),
    .C(_57_),
    .Y(_764_)
);

NOR2X1 _2101_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(_1174_),
    .Y(_58_)
);

OAI22X1 _2102_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [14]),
    .C(\u_rf_if.read_buf0 [15]),
    .D(_1171_),
    .Y(_59_)
);

NOR2X1 _2103_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_58_),
    .B(_59_),
    .Y(_763_)
);

INVX1 _2104_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [16]),
    .Y(_60_)
);

OAI22X1 _2105_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [15]),
    .C(\u_rf_if.read_buf0 [14]),
    .D(_1174_),
    .Y(_61_)
);

AOI21X1 _2106_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_60_),
    .B(_1170_),
    .C(_61_),
    .Y(_762_)
);

NOR2X1 _2107_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(_1174_),
    .Y(_62_)
);

OAI22X1 _2108_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [16]),
    .C(\u_rf_if.read_buf0 [17]),
    .D(_1171_),
    .Y(_63_)
);

NOR2X1 _2109_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_62_),
    .B(_63_),
    .Y(_761_)
);

OAI22X1 _2110_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [17]),
    .C(\u_rf_if.read_buf0 [18]),
    .D(_1171_),
    .Y(_64_)
);

AOI21X1 _2111_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_60_),
    .B(_1175_),
    .C(_64_),
    .Y(_760_)
);

NOR2X1 _2112_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(_1174_),
    .Y(_65_)
);

OAI22X1 _2113_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [18]),
    .C(\u_rf_if.read_buf0 [19]),
    .D(_1171_),
    .Y(_66_)
);

NOR2X1 _2114_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_65_),
    .B(_66_),
    .Y(_759_)
);

INVX1 _2115_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [20]),
    .Y(_67_)
);

OAI22X1 _2116_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [19]),
    .C(\u_rf_if.read_buf0 [18]),
    .D(_1174_),
    .Y(_68_)
);

AOI21X1 _2117_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_67_),
    .B(_1170_),
    .C(_68_),
    .Y(_758_)
);

NOR2X1 _2118_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(_1174_),
    .Y(_69_)
);

OAI22X1 _2119_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [20]),
    .C(\u_rf_if.read_buf0 [21]),
    .D(_1171_),
    .Y(_70_)
);

NOR2X1 _2120_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_69_),
    .B(_70_),
    .Y(_757_)
);

INVX1 _2121_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [22]),
    .Y(_71_)
);

OAI22X1 _2122_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [21]),
    .C(\u_rf_if.read_buf0 [20]),
    .D(_1174_),
    .Y(_72_)
);

AOI21X1 _2123_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_71_),
    .B(_1170_),
    .C(_72_),
    .Y(_756_)
);

NOR2X1 _2124_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [21]),
    .B(_1174_),
    .Y(_73_)
);

OAI22X1 _2125_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [22]),
    .C(\u_rf_if.read_buf0 [23]),
    .D(_1171_),
    .Y(_74_)
);

NOR2X1 _2126_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_73_),
    .B(_74_),
    .Y(_755_)
);

OAI22X1 _2127_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [23]),
    .C(\u_rf_if.read_buf0 [24]),
    .D(_1171_),
    .Y(_75_)
);

AOI21X1 _2128_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_71_),
    .B(_1175_),
    .C(_75_),
    .Y(_754_)
);

INVX1 _2129_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [25]),
    .Y(_76_)
);

OAI22X1 _2130_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [24]),
    .C(\u_rf_if.read_buf0 [23]),
    .D(_1174_),
    .Y(_77_)
);

AOI21X1 _2131_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_76_),
    .B(_1170_),
    .C(_77_),
    .Y(_753_)
);

NOR2X1 _2132_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [24]),
    .B(_1174_),
    .Y(_78_)
);

OAI22X1 _2133_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [25]),
    .C(\u_rf_if.read_buf0 [26]),
    .D(_1171_),
    .Y(_79_)
);

NOR2X1 _2134_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_78_),
    .B(_79_),
    .Y(_752_)
);

OAI22X1 _2135_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [26]),
    .C(\u_rf_if.read_buf0 [27]),
    .D(_1171_),
    .Y(_80_)
);

AOI21X1 _2136_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_76_),
    .B(_1175_),
    .C(_80_),
    .Y(_751_)
);

INVX1 _2137_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_81_)
);

OAI22X1 _2138_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [27]),
    .C(\u_rf_if.read_buf0 [26]),
    .D(_1174_),
    .Y(_82_)
);

AOI21X1 _2139_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_81_),
    .B(_1170_),
    .C(_82_),
    .Y(_750_)
);

NOR2X1 _2140_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(_1174_),
    .Y(_83_)
);

OAI22X1 _2141_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [28]),
    .C(\u_rf_if.read_buf0 [29]),
    .D(_1171_),
    .Y(_84_)
);

NOR2X1 _2142_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_83_),
    .B(_84_),
    .Y(_749_)
);

INVX1 _2143_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [30]),
    .Y(_85_)
);

OAI22X1 _2144_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [29]),
    .C(\u_rf_if.read_buf0 [28]),
    .D(_1174_),
    .Y(_86_)
);

AOI21X1 _2145_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_85_),
    .B(_1170_),
    .C(_86_),
    .Y(_748_)
);

NOR2X1 _2146_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [29]),
    .B(_1174_),
    .Y(_87_)
);

OAI22X1 _2147_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(\u_rf_if.read_buf0 [30]),
    .C(\u_rf_if.read_buf0 [31]),
    .D(_1171_),
    .Y(_88_)
);

NOR2X1 _2148_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_87_),
    .B(_88_),
    .Y(_747_)
);

INVX1 _2149_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_14_),
    .Y(_89_)
);

NOR2X1 _2150_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .B(\u_rf_if.stream_active ),
    .Y(_90_)
);

NOR2X1 _2151_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_90_),
    .B(_11_),
    .Y(_91_)
);

AND2X2 _2152_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_89_),
    .B(_91_),
    .Y(_746_)
);

INVX1 _2153_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_11_),
    .Y(_92_)
);

NAND3X1 _2154_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .B(_10_),
    .C(_92_),
    .Y(_93_)
);

OAI21X1 _2155_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .B(_92_),
    .C(_93_),
    .Y(_94_)
);

AND2X2 _2156_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_94_),
    .B(i_rst_n),
    .Y(_745_)
);

NOR2X1 _2157_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1182_),
    .B(_92_),
    .Y(_95_)
);

INVX1 _2158_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_95_),
    .Y(_96_)
);

OAI21X1 _2159_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1181_),
    .B(_96_),
    .C(_89_),
    .Y(_97_)
);

AOI21X1 _2160_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1181_),
    .B(_96_),
    .C(_97_),
    .Y(_744_)
);

NOR2X1 _2161_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1181_),
    .B(_96_),
    .Y(_98_)
);

AOI21X1 _2162_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_10_),
    .C(_98_),
    .Y(_99_)
);

INVX1 _2163_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_98_),
    .Y(_100_)
);

OAI21X1 _2164_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_29_),
    .B(_100_),
    .C(i_rst_n),
    .Y(_101_)
);

NOR2X1 _2165_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_99_),
    .B(_101_),
    .Y(_743_)
);

NAND2X1 _2166_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_1221_),
    .Y(_102_)
);

NOR2X1 _2167_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .B(_102_),
    .Y(_742_)
);

NAND3X1 _2168_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [2]),
    .C(\u_rf_if.rcnt [1]),
    .Y(_103_)
);

OAI21X1 _2169_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1145_),
    .B(_21_),
    .C(_1225_),
    .Y(_104_)
);

NAND2X1 _2170_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_103_),
    .B(_104_),
    .Y(_105_)
);

NOR2X1 _2171_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_105_),
    .B(_102_),
    .Y(_741_)
);

OAI21X1 _2172_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1226_),
    .B(_1241_),
    .C(_1221_),
    .Y(_106_)
);

AOI21X1 _2173_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1226_),
    .B(_1241_),
    .C(_106_),
    .Y(_740_)
);

OAI21X1 _2174_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1238_),
    .B(_1197_),
    .C(_1221_),
    .Y(_107_)
);

AOI21X1 _2175_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1238_),
    .B(_1197_),
    .C(_107_),
    .Y(_739_)
);

INVX1 _2176_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .Y(_108_)
);

INVX1 _2177_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1_),
    .Y(_109_)
);

OAI21X1 _2178_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_108_),
    .B(_109_),
    .C(_1221_),
    .Y(_110_)
);

AOI21X1 _2179_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_108_),
    .B(_109_),
    .C(_110_),
    .Y(_738_)
);

INVX1 _2180_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_27_),
    .Y(_111_)
);

NAND2X1 _2181_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1207_),
    .Y(_112_)
);

AOI21X1 _2182_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_111_),
    .B(_112_),
    .C(_1200_),
    .Y(_737_)
);

NAND2X1 _2183_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [0]),
    .B(_1212_),
    .Y(_113_)
);

INVX1 _2184_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1200_),
    .Y(_114_)
);

OAI21X1 _2185_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1138_),
    .B(_113_),
    .C(_114_),
    .Y(_115_)
);

AOI21X1 _2186_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1138_),
    .B(_113_),
    .C(_115_),
    .Y(_736_)
);

NOR2X1 _2187_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1138_),
    .B(_113_),
    .Y(_116_)
);

INVX1 _2188_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_116_),
    .Y(_117_)
);

OAI21X1 _2189_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1137_),
    .B(_117_),
    .C(_114_),
    .Y(_118_)
);

AOI21X1 _2190_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1137_),
    .B(_117_),
    .C(_118_),
    .Y(_735_)
);

NOR2X1 _2191_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1137_),
    .B(_117_),
    .Y(_119_)
);

INVX1 _2192_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_119_),
    .Y(_120_)
);

OAI21X1 _2193_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_120_),
    .C(_114_),
    .Y(_121_)
);

AOI21X1 _2194_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_120_),
    .C(_121_),
    .Y(_734_)
);

OAI21X1 _2195_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_120_),
    .C(_1201_),
    .Y(_122_)
);

AND2X2 _2196_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_122_),
    .B(_114_),
    .Y(_733_)
);

NAND2X1 _2197_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(_561_),
    .Y(_123_)
);

AOI21X1 _2198_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_443_),
    .B(_123_),
    .C(_492_),
    .Y(_732_)
);

NAND2X1 _2199_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [1]),
    .B(_561_),
    .Y(_124_)
);

AOI21X1 _2200_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_449_),
    .B(_124_),
    .C(_492_),
    .Y(_731_)
);

NAND2X1 _2201_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_561_),
    .Y(_125_)
);

AOI21X1 _2202_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_455_),
    .B(_125_),
    .C(_492_),
    .Y(_730_)
);

NAND2X1 _2203_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_561_),
    .Y(_126_)
);

AOI21X1 _2204_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_476_),
    .B(_126_),
    .C(_492_),
    .Y(_729_)
);

NAND2X1 _2205_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_561_),
    .Y(_127_)
);

AOI21X1 _2206_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_397_),
    .B(_127_),
    .C(_492_),
    .Y(_728_)
);

NAND2X1 _2207_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [2]),
    .B(_561_),
    .Y(_128_)
);

AOI21X1 _2208_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_403_),
    .B(_128_),
    .C(_492_),
    .Y(_727_)
);

NAND2X1 _2209_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [2]),
    .B(_1211_),
    .Y(_129_)
);

NAND3X1 _2210_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_1210_),
    .C(_1208_),
    .Y(_130_)
);

NAND2X1 _2211_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[6]),
    .B(_1213_),
    .Y(_131_)
);

NAND3X1 _2212_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_129_),
    .B(_131_),
    .C(_130_),
    .Y(_726_)
);

INVX1 _2213_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1187_),
    .Y(_132_)
);

NOR2X1 _2214_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_1177_),
    .Y(_133_)
);

AOI21X1 _2215_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1162_),
    .B(_1177_),
    .C(_133_),
    .Y(_134_)
);

AOI21X1 _2216_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1162_),
    .B(_132_),
    .C(_92_),
    .Y(_135_)
);

OAI21X1 _2217_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_132_),
    .B(_134_),
    .C(_135_),
    .Y(_136_)
);

AOI22X1 _2218_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_1190_),
    .C(_134_),
    .D(_568_),
    .Y(_137_)
);

NAND2X1 _2219_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_137_),
    .B(_136_),
    .Y(_725_)
);

INVX1 _2220_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1196_),
    .Y(_138_)
);

NOR2X1 _2221_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .B(_138_),
    .Y(_1194_)
);

NOR2X1 _2222_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_376_),
    .B(_138_),
    .Y(_0_)
);

INVX1 _2223_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(_139_)
);

OAI21X1 _2224_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1239_),
    .B(_1231_),
    .C(_139_),
    .Y(_140_)
);

INVX1 _2225_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .Y(_141_)
);

INVX1 _2226_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .Y(_142_)
);

NAND2X1 _2227_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_sys_ext),
    .B(_142_),
    .Y(_143_)
);

NOR2X1 _2228_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_143_),
    .Y(_144_)
);

NAND2X1 _2229_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_141_),
    .B(_144_),
    .Y(_145_)
);

OAI21X1 _2230_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_140_),
    .B(_145_),
    .C(\u_mem_serial.req_pending ),
    .Y(_146_)
);

INVX1 _2231_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.ibus_cyc ),
    .Y(_147_)
);

NAND2X1 _2232_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .B(_600_),
    .Y(_148_)
);

NOR2X1 _2233_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_503_),
    .B(_148_),
    .Y(_149_)
);

NAND2X1 _2234_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_601_),
    .B(_149_),
    .Y(_150_)
);

OAI21X1 _2235_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_492_),
    .B(_147_),
    .C(_150_),
    .Y(_151_)
);

INVX1 _2236_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_151_),
    .Y(_152_)
);

INVX1 _2237_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .Y(_153_)
);

NOR2X1 _2238_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_140_),
    .B(_145_),
    .Y(_154_)
);

NAND2X1 _2239_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_153_),
    .B(_154_),
    .Y(_155_)
);

OAI21X1 _2240_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_155_),
    .B(_152_),
    .C(_146_),
    .Y(_722_)
);

AOI21X1 _2241_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_151_),
    .B(\u_mem_serial.req_pending ),
    .C(_140_),
    .Y(_156_)
);

NOR2X1 _2242_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_145_),
    .B(_156_),
    .Y(_157_)
);

NOR2X1 _2243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .B(_157_),
    .Y(_158_)
);

INVX1 _2244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_140_),
    .Y(_159_)
);

INVX1 _2245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_150_),
    .Y(_160_)
);

NAND3X1 _2246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_159_),
    .C(_160_),
    .Y(_161_)
);

AOI21X1 _2247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_157_),
    .B(_161_),
    .C(_158_),
    .Y(_721_)
);

INVX1 _2248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [4]),
    .Y(_162_)
);

OAI21X1 _2249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_145_),
    .B(_156_),
    .C(_142_),
    .Y(_163_)
);

NOR2X1 _2250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_164_)
);

INVX1 _2251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_164_),
    .Y(_165_)
);

NOR2X1 _2252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_165_),
    .Y(_166_)
);

OAI21X1 _2253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_142_),
    .B(_166_),
    .C(_163_),
    .Y(_167_)
);

AOI21X1 _2254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .B(\u_mem_serial.state [0]),
    .C(_167_),
    .Y(_168_)
);

INVX1 _2255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .Y(_169_)
);

INVX1 _2256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .Y(_170_)
);

NAND3X1 _2257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_162_),
    .B(_169_),
    .C(_170_),
    .Y(_171_)
);

NOR2X1 _2258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_171_),
    .Y(_172_)
);

NOR2X1 _2259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_142_),
    .Y(_173_)
);

NAND2X1 _2260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_173_),
    .B(_172_),
    .Y(_174_)
);

OAI21X1 _2261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_162_),
    .B(_168_),
    .C(_174_),
    .Y(_720_)
);

INVX1 _2262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .Y(_175_)
);

NOR2X1 _2263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .B(_171_),
    .Y(_176_)
);

AND2X2 _2264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_176_),
    .B(_175_),
    .Y(_177_)
);

NAND2X1 _2265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_177_),
    .Y(_178_)
);

OAI21X1 _2266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_157_),
    .C(_178_),
    .Y(_179_)
);

NAND3X1 _2267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .B(\u_mem_serial.bit_count [0]),
    .C(_172_),
    .Y(_180_)
);

NOR2X1 _2268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_180_),
    .Y(_181_)
);

NAND2X1 _2269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .B(_181_),
    .Y(_182_)
);

INVX1 _2270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_182_),
    .Y(_183_)
);

NOR2X1 _2271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_142_),
    .B(_183_),
    .Y(_184_)
);

NOR2X1 _2272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_142_),
    .B(_182_),
    .Y(_185_)
);

INVX1 _2273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_185_),
    .Y(_186_)
);

NAND2X1 _2274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen0_r ),
    .B(\u_rf_if.rtrig1 ),
    .Y(_187_)
);

AND2X2 _2275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_161_),
    .B(_187_),
    .Y(_188_)
);

OAI22X1 _2276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_188_),
    .C(_1086_),
    .D(_186_),
    .Y(_189_)
);

AOI21X1 _2277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [30]),
    .B(_184_),
    .C(_189_),
    .Y(_190_)
);

MUX2X1 _2278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_376_),
    .B(_190_),
    .S(_179_),
    .Y(_719_)
);

INVX1 _2279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(_191_)
);

INVX1 _2280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_144_),
    .Y(_192_)
);

OAI21X1 _2281_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_191_),
    .B(_178_),
    .C(_192_),
    .Y(_193_)
);

NOR2X1 _2282_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_140_),
    .Y(_194_)
);

INVX1 _2283_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_194_),
    .Y(_195_)
);

NAND3X1 _2284_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_141_),
    .B(_195_),
    .C(_193_),
    .Y(_196_)
);

OAI21X1 _2285_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_141_),
    .B(_193_),
    .C(_196_),
    .Y(_718_)
);

INVX1 _2286_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_shared_rdata[1]),
    .Y(_197_)
);

INVX1 _2287_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_shared_rdata[0]),
    .Y(_198_)
);

NOR2X1 _2288_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_141_),
    .B(_175_),
    .Y(_199_)
);

NAND3X1 _2289_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_199_),
    .C(_176_),
    .Y(_200_)
);

MUX2X1 _2290_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_197_),
    .B(_198_),
    .S(_200_),
    .Y(_717_)
);

NOR2X1 _2291_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_492_),
    .B(_147_),
    .Y(_201_)
);

NAND2X1 _2292_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_201_),
    .B(_150_),
    .Y(_202_)
);

NOR2X1 _2293_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_191_),
    .Y(_203_)
);

AOI21X1 _2294_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_176_),
    .B(_203_),
    .C(_142_),
    .Y(_204_)
);

AOI21X1 _2295_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_192_),
    .C(_204_),
    .Y(_205_)
);

NAND2X1 _2296_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_205_),
    .B(_202_),
    .Y(_206_)
);

OAI21X1 _2297_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .C(_192_),
    .Y(_207_)
);

AOI21X1 _2298_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_206_),
    .B(_972_),
    .C(_207_),
    .Y(_716_)
);

INVX1 _2299_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_202_),
    .Y(_208_)
);

NAND2X1 _2300_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_205_),
    .B(_208_),
    .Y(_209_)
);

AOI21X1 _2301_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_209_),
    .B(_561_),
    .C(_207_),
    .Y(_715_)
);

INVX1 _2302_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_157_),
    .Y(_210_)
);

NOR2X1 _2303_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_191_),
    .B(_178_),
    .Y(_211_)
);

OAI21X1 _2304_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .C(_1196_),
    .Y(_212_)
);

OAI21X1 _2305_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_211_),
    .B(_212_),
    .C(_210_),
    .Y(_714_)
);

NOR2X1 _2306_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_142_),
    .B(_177_),
    .Y(_213_)
);

OAI21X1 _2307_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_173_),
    .B(_194_),
    .C(_163_),
    .Y(_214_)
);

NAND3X1 _2308_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .B(_174_),
    .C(_210_),
    .Y(_215_)
);

OAI21X1 _2309_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_213_),
    .B(_214_),
    .C(_215_),
    .Y(_713_)
);

OAI21X1 _2310_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_191_),
    .B(_163_),
    .C(_214_),
    .Y(_712_)
);

NOR2X1 _2311_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_159_),
    .Y(_216_)
);

INVX1 _2312_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_216_),
    .Y(_217_)
);

NOR2X1 _2313_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_191_),
    .B(_175_),
    .Y(_218_)
);

OAI21X1 _2314_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .C(\u_mem_serial.state [0]),
    .Y(_219_)
);

OAI21X1 _2315_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_218_),
    .B(_219_),
    .C(_217_),
    .Y(_220_)
);

MUX2X1 _2316_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_220_),
    .B(_175_),
    .S(_163_),
    .Y(_711_)
);

NAND2X1 _2317_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .B(\u_mem_serial.state [0]),
    .Y(_221_)
);

INVX1 _2318_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_166_),
    .Y(_222_)
);

OAI21X1 _2319_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_221_),
    .B(_222_),
    .C(_195_),
    .Y(_223_)
);

AOI22X1 _2320_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_163_),
    .B(_223_),
    .C(_167_),
    .D(_169_),
    .Y(_710_)
);

OAI21X1 _2321_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_142_),
    .B(_165_),
    .C(\u_mem_serial.bit_count [2]),
    .Y(_224_)
);

NAND2X1 _2322_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_224_),
    .B(_167_),
    .Y(_709_)
);

NOR2X1 _2323_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_mem_miso),
    .B(_200_),
    .Y(_225_)
);

AOI21X1 _2324_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_198_),
    .B(_200_),
    .C(_225_),
    .Y(_708_)
);

OR2X2 _2325_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_157_),
    .B(_204_),
    .Y(_707_)
);

OAI21X1 _2326_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_510_),
    .B(_180_),
    .C(\u_mem_serial.active_we ),
    .Y(_226_)
);

INVX1 _2327_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_172_),
    .Y(_227_)
);

NOR2X1 _2328_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_142_),
    .Y(_228_)
);

OAI21X1 _2329_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .B(i_mem_miso),
    .C(_228_),
    .Y(_229_)
);

AOI21X1 _2330_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_227_),
    .B(\u_mem_serial.bit_count [5]),
    .C(_229_),
    .Y(_230_)
);

AOI21X1 _2331_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_226_),
    .B(_230_),
    .C(_179_),
    .Y(_231_)
);

AOI21X1 _2332_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1080_),
    .B(_179_),
    .C(_231_),
    .Y(_706_)
);

AOI22X1 _2333_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [1]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [0]),
    .Y(_232_)
);

MUX2X1 _2334_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1076_),
    .B(_232_),
    .S(_179_),
    .Y(_705_)
);

AOI22X1 _2335_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [2]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [1]),
    .Y(_233_)
);

MUX2X1 _2336_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_555_),
    .B(_233_),
    .S(_179_),
    .Y(_704_)
);

AOI22X1 _2337_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [2]),
    .Y(_234_)
);

MUX2X1 _2338_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_494_),
    .B(_234_),
    .S(_179_),
    .Y(_703_)
);

AOI22X1 _2339_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [4]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [3]),
    .Y(_235_)
);

MUX2X1 _2340_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_559_),
    .B(_235_),
    .S(_179_),
    .Y(_702_)
);

AOI22X1 _2341_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [5]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [4]),
    .Y(_236_)
);

MUX2X1 _2342_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_556_),
    .B(_236_),
    .S(_179_),
    .Y(_701_)
);

AOI22X1 _2343_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [6]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [5]),
    .Y(_237_)
);

MUX2X1 _2344_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_558_),
    .B(_237_),
    .S(_179_),
    .Y(_700_)
);

AOI22X1 _2345_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [6]),
    .Y(_238_)
);

MUX2X1 _2346_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1057_),
    .B(_238_),
    .S(_179_),
    .Y(_699_)
);

AOI22X1 _2347_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [7]),
    .Y(_239_)
);

MUX2X1 _2348_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1054_),
    .B(_239_),
    .S(_179_),
    .Y(_698_)
);

AOI22X1 _2349_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [9]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [8]),
    .Y(_240_)
);

MUX2X1 _2350_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1050_),
    .B(_240_),
    .S(_179_),
    .Y(_697_)
);

AOI22X1 _2351_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [10]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [9]),
    .Y(_241_)
);

MUX2X1 _2352_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1046_),
    .B(_241_),
    .S(_179_),
    .Y(_696_)
);

AOI22X1 _2353_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [10]),
    .Y(_242_)
);

MUX2X1 _2354_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1042_),
    .B(_242_),
    .S(_179_),
    .Y(_695_)
);

AOI22X1 _2355_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [12]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [11]),
    .Y(_243_)
);

MUX2X1 _2356_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1038_),
    .B(_243_),
    .S(_179_),
    .Y(_694_)
);

AOI22X1 _2357_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [13]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [12]),
    .Y(_244_)
);

MUX2X1 _2358_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1034_),
    .B(_244_),
    .S(_179_),
    .Y(_693_)
);

AOI22X1 _2359_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [14]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [13]),
    .Y(_245_)
);

MUX2X1 _2360_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1030_),
    .B(_245_),
    .S(_179_),
    .Y(_692_)
);

AOI22X1 _2361_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [14]),
    .Y(_246_)
);

MUX2X1 _2362_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_445_),
    .B(_246_),
    .S(_179_),
    .Y(_691_)
);

AOI22X1 _2363_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [15]),
    .Y(_247_)
);

MUX2X1 _2364_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_451_),
    .B(_247_),
    .S(_179_),
    .Y(_690_)
);

AOI22X1 _2365_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [17]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [16]),
    .Y(_248_)
);

MUX2X1 _2366_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_457_),
    .B(_248_),
    .S(_179_),
    .Y(_689_)
);

AOI22X1 _2367_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [18]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [17]),
    .Y(_249_)
);

MUX2X1 _2368_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_463_),
    .B(_249_),
    .S(_179_),
    .Y(_688_)
);

AOI22X1 _2369_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [18]),
    .Y(_250_)
);

MUX2X1 _2370_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1014_),
    .B(_250_),
    .S(_179_),
    .Y(_687_)
);

NOR2X1 _2371_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next [0]),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_251_)
);

AOI21X1 _2372_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_1229_),
    .C(_1230_),
    .Y(_252_)
);

NOR2X1 _2373_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_252_),
    .B(_1234_),
    .Y(_253_)
);

OAI21X1 _2374_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 ),
    .B(_1203_),
    .C(_253_),
    .Y(_254_)
);

OAI21X1 _2375_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_252_),
    .B(_1234_),
    .C(\u_rf_if.wdata0_r [0]),
    .Y(_255_)
);

OAI21X1 _2376_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_251_),
    .B(_254_),
    .C(_255_),
    .Y(_256_)
);

NAND3X1 _2377_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_216_),
    .B(_256_),
    .C(_1149_),
    .Y(_257_)
);

INVX1 _2378_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_184_),
    .Y(_258_)
);

OAI22X1 _2379_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1010_),
    .B(_186_),
    .C(_1014_),
    .D(_258_),
    .Y(_259_)
);

NOR2X1 _2380_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_259_),
    .Y(_260_)
);

AOI22X1 _2381_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_478_),
    .B(_179_),
    .C(_257_),
    .D(_260_),
    .Y(_686_)
);

NAND2X1 _2382_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1203_),
    .B(_253_),
    .Y(_261_)
);

INVX1 _2383_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_262_)
);

OAI21X1 _2384_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1147_),
    .B(_482_),
    .C(_216_),
    .Y(_263_)
);

AOI21X1 _2385_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_262_),
    .B(_261_),
    .C(_263_),
    .Y(_264_)
);

OAI21X1 _2386_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_261_),
    .B(\u_cpu.o_wdata0 ),
    .C(_264_),
    .Y(_265_)
);

OAI22X1 _2387_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1007_),
    .B(_186_),
    .C(_478_),
    .D(_258_),
    .Y(_266_)
);

NOR2X1 _2388_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_266_),
    .Y(_267_)
);

AOI22X1 _2389_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_399_),
    .B(_179_),
    .C(_265_),
    .D(_267_),
    .Y(_685_)
);

NAND2X1 _2390_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1226_),
    .B(_139_),
    .Y(_268_)
);

OAI21X1 _2391_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_139_),
    .B(raddr[0]),
    .C(_268_),
    .Y(_269_)
);

OAI22X1 _2392_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_217_),
    .B(_269_),
    .C(_1004_),
    .D(_186_),
    .Y(_270_)
);

AOI21X1 _2393_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [21]),
    .B(_184_),
    .C(_270_),
    .Y(_271_)
);

MUX2X1 _2394_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_405_),
    .B(_271_),
    .S(_179_),
    .Y(_684_)
);

NAND2X1 _2395_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1238_),
    .B(_139_),
    .Y(_272_)
);

OAI21X1 _2396_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_139_),
    .B(raddr[1]),
    .C(_272_),
    .Y(_273_)
);

OAI22X1 _2397_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_217_),
    .B(_273_),
    .C(_405_),
    .D(_258_),
    .Y(_274_)
);

AOI21X1 _2398_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_185_),
    .C(_274_),
    .Y(_275_)
);

MUX2X1 _2399_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_411_),
    .B(_275_),
    .S(_179_),
    .Y(_683_)
);

NAND2X1 _2400_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_108_),
    .B(_139_),
    .Y(_276_)
);

OAI21X1 _2401_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_139_),
    .B(raddr[2]),
    .C(_276_),
    .Y(_277_)
);

OAI22X1 _2402_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_217_),
    .B(_277_),
    .C(_411_),
    .D(_258_),
    .Y(_278_)
);

AOI21X1 _2403_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_185_),
    .C(_278_),
    .Y(_279_)
);

MUX2X1 _2404_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_359_),
    .B(_279_),
    .S(_179_),
    .Y(_682_)
);

INVX1 _2405_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [25]),
    .Y(_280_)
);

NOR2X1 _2406_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[3]),
    .B(_139_),
    .Y(_281_)
);

AOI21X1 _2407_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1227_),
    .B(_139_),
    .C(_281_),
    .Y(_282_)
);

NOR2X1 _2408_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_521_),
    .B(_195_),
    .Y(_283_)
);

AOI22X1 _2409_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_216_),
    .B(_282_),
    .C(_208_),
    .D(_283_),
    .Y(_284_)
);

OAI21X1 _2410_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_994_),
    .B(_186_),
    .C(_284_),
    .Y(_285_)
);

AOI21X1 _2411_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [24]),
    .B(_184_),
    .C(_285_),
    .Y(_286_)
);

MUX2X1 _2412_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_280_),
    .B(_286_),
    .S(_179_),
    .Y(_681_)
);

INVX1 _2413_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [26]),
    .Y(_287_)
);

NAND2X1 _2414_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .B(_142_),
    .Y(_288_)
);

OAI21X1 _2415_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_288_),
    .B(_202_),
    .C(_217_),
    .Y(_289_)
);

OAI21X1 _2416_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_159_),
    .B(_1152_),
    .C(_289_),
    .Y(_290_)
);

OAI22X1 _2417_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_616_),
    .B(_186_),
    .C(_280_),
    .D(_258_),
    .Y(_291_)
);

NOR2X1 _2418_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_291_),
    .Y(_292_)
);

AOI22X1 _2419_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_287_),
    .B(_179_),
    .C(_290_),
    .D(_292_),
    .Y(_680_)
);

INVX1 _2420_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [27]),
    .Y(_293_)
);

OR2X2 _2421_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1158_),
    .B(_217_),
    .Y(_294_)
);

MUX2X1 _2422_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [2]),
    .B(\u_cpu.ctrl.o_ibus_adr [2]),
    .S(_202_),
    .Y(_295_)
);

AOI22X1 _2423_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [26]),
    .Y(_296_)
);

OAI21X1 _2424_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_195_),
    .B(_295_),
    .C(_296_),
    .Y(_297_)
);

NOR2X1 _2425_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_297_),
    .Y(_298_)
);

AOI22X1 _2426_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_293_),
    .B(_179_),
    .C(_294_),
    .D(_298_),
    .Y(_679_)
);

INVX1 _2427_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [28]),
    .Y(_299_)
);

NAND2X1 _2428_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_216_),
    .B(_1155_),
    .Y(_300_)
);

MUX2X1 _2429_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [3]),
    .B(\u_cpu.ctrl.o_ibus_adr [3]),
    .S(_202_),
    .Y(_301_)
);

AOI22X1 _2430_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [27]),
    .Y(_302_)
);

OAI21X1 _2431_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_195_),
    .B(_301_),
    .C(_302_),
    .Y(_303_)
);

NOR2X1 _2432_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_303_),
    .Y(_304_)
);

AOI22X1 _2433_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_299_),
    .B(_179_),
    .C(_300_),
    .D(_304_),
    .Y(_678_)
);

INVX1 _2434_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [29]),
    .Y(_305_)
);

OR2X2 _2435_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1160_),
    .B(_217_),
    .Y(_306_)
);

NAND2X1 _2436_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [4]),
    .B(_202_),
    .Y(_307_)
);

OAI21X1 _2437_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1113_),
    .B(_202_),
    .C(_307_),
    .Y(_308_)
);

AOI22X1 _2438_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_194_),
    .B(_308_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [28]),
    .Y(_309_)
);

OAI21X1 _2439_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_617_),
    .B(_186_),
    .C(_309_),
    .Y(_310_)
);

NOR2X1 _2440_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_310_),
    .Y(_311_)
);

AOI22X1 _2441_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_305_),
    .B(_179_),
    .C(_306_),
    .D(_311_),
    .Y(_677_)
);

INVX1 _2442_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [30]),
    .Y(_312_)
);

NOR2X1 _2443_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_202_),
    .Y(_313_)
);

OAI21X1 _2444_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [5]),
    .B(_208_),
    .C(_187_),
    .Y(_314_)
);

OAI21X1 _2445_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_313_),
    .B(_314_),
    .C(_139_),
    .Y(_315_)
);

NAND2X1 _2446_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_142_),
    .B(_315_),
    .Y(_316_)
);

OAI22X1 _2447_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_639_),
    .B(_186_),
    .C(_305_),
    .D(_258_),
    .Y(_317_)
);

NOR2X1 _2448_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_317_),
    .Y(_318_)
);

AOI22X1 _2449_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_312_),
    .B(_179_),
    .C(_318_),
    .D(_316_),
    .Y(_676_)
);

OAI21X1 _2450_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_627_),
    .B(_623_),
    .C(i_rst_n),
    .Y(_319_)
);

AOI21X1 _2451_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_627_),
    .B(_623_),
    .C(_319_),
    .Y(_675_)
);

NOR2X1 _2452_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_523_),
    .B(_492_),
    .Y(_674_)
);

OAI21X1 _2453_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_627_),
    .B(_623_),
    .C(\u_cpu.ctrl.i_jump ),
    .Y(_320_)
);

AND2X2 _2454_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1134_),
    .B(\u_cpu.bne_or_bge ),
    .Y(_321_)
);

OAI21X1 _2455_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(_1134_),
    .C(_661_),
    .Y(_322_)
);

NOR2X1 _2456_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_655_),
    .B(_490_),
    .Y(_323_)
);

OAI21X1 _2457_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_322_),
    .B(_321_),
    .C(_323_),
    .Y(_324_)
);

AOI21X1 _2458_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_324_),
    .B(_320_),
    .C(_492_),
    .Y(_673_)
);

OAI21X1 _2459_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_627_),
    .B(_623_),
    .C(\u_cpu.state.init_done ),
    .Y(_325_)
);

AOI21X1 _2460_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_490_),
    .B(_325_),
    .C(_492_),
    .Y(_672_)
);

NOR2X1 _2461_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .B(_622_),
    .Y(_326_)
);

AOI21X1 _2462_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_326_),
    .B(\u_cpu.state.ibus_cyc ),
    .C(_492_),
    .Y(_327_)
);

OAI21X1 _2463_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_326_),
    .B(_1123_),
    .C(_327_),
    .Y(_671_)
);

NOR2X1 _2464_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_657_),
    .B(_653_),
    .Y(_652_)
);

NOR2X1 _2465_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_651_)
);

INVX1 _2466_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_651_),
    .Y(_650_)
);

NOR2X1 _2467_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.branch_op ),
    .Y(_649_)
);

INVX1 _2468_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [1]),
    .Y(_648_)
);

NOR2X1 _2469_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .B(_648_),
    .Y(_647_)
);

NOR2X1 _2470_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_649_),
    .B(_647_),
    .Y(_646_)
);

OAI21X1 _2471_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_650_),
    .C(_646_),
    .Y(_645_)
);

OAI21X1 _2472_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_652_),
    .B(_645_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_644_)
);

OR2X2 _2473_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_644_),
    .B(_658_),
    .Y(_643_)
);

NAND2X1 _2474_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_658_),
    .B(_644_),
    .Y(_642_)
);

NAND2X1 _2475_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_642_),
    .B(_643_),
    .Y(_641_)
);

INVX1 _2476_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .Y(_640_)
);

INVX1 _2477_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_639_)
);

NOR2X1 _2478_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_656_),
    .Y(_638_)
);

INVX1 _2479_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_638_),
    .Y(_637_)
);

INVX1 _2480_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_636_)
);

DFFPOSX1 _2481_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_898_),
    .Q(\u_cpu.bufreg.data [20])
);

DFFPOSX1 _2482_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_899_),
    .Q(\u_cpu.bufreg.data [21])
);

DFFPOSX1 _2483_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(\u_rf_if.wdata0_next [0]),
    .Q(\u_rf_if.wdata0_r [0])
);

DFFPOSX1 _2484_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_900_),
    .Q(\u_cpu.bufreg.data [22])
);

DFFPOSX1 _2485_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_901_),
    .Q(\u_cpu.bufreg.data [23])
);

DFFPOSX1 _2486_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_902_),
    .Q(\u_cpu.bufreg.data [24])
);

DFFPOSX1 _2487_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_903_),
    .Q(\u_cpu.bufreg.data [25])
);

DFFPOSX1 _2488_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_904_),
    .Q(\u_cpu.bufreg.data [26])
);

DFFPOSX1 _2489_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_905_),
    .Q(\u_cpu.bufreg.data [27])
);

DFFPOSX1 _2490_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_906_),
    .Q(\u_cpu.bufreg.data [28])
);

DFFPOSX1 _2491_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_907_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

DFFPOSX1 _2492_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_727_),
    .Q(\u_rf_if.rreg1_latched [2])
);

DFFPOSX1 _2493_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_908_),
    .Q(rreg1[4])
);

DFFPOSX1 _2494_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_909_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

DFFPOSX1 _2495_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_910_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

DFFPOSX1 _2496_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_942_),
    .Q(\u_cpu.decode.opcode [0])
);

DFFPOSX1 _2497_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_911_),
    .Q(rreg0[4])
);

DFFPOSX1 _2498_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_912_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

DFFPOSX1 _2499_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_913_),
    .Q(rf_wreg0_to_if[0])
);

DFFPOSX1 _2500_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_914_),
    .Q(rf_wreg0_to_if[1])
);

DFFPOSX1 _2501_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_915_),
    .Q(rf_wreg0_to_if[2])
);

DFFPOSX1 _2502_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_916_),
    .Q(rf_wreg0_to_if[3])
);

DFFPOSX1 _2503_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_917_),
    .Q(rreg1[0])
);

DFFPOSX1 _2504_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_918_),
    .Q(rreg1[1])
);

DFFPOSX1 _2505_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_919_),
    .Q(rreg1[2])
);

DFFPOSX1 _2506_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_920_),
    .Q(rreg1[3])
);

DFFPOSX1 _2507_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_921_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

DFFPOSX1 _2508_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_922_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

DFFPOSX1 _2509_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_923_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

DFFPOSX1 _2510_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_924_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

DFFPOSX1 _2511_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_808_),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

DFFPOSX1 _2512_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_925_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

DFFPOSX1 _2513_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_926_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

DFFPOSX1 _2514_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_927_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

DFFPOSX1 _2515_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_928_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

DFFPOSX1 _2516_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_929_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

DFFPOSX1 _2517_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_930_),
    .Q(\u_cpu.csr_imm )
);

DFFPOSX1 _2518_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_931_),
    .Q(rreg0[1])
);

DFFPOSX1 _2519_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_932_),
    .Q(rreg0[2])
);

DFFPOSX1 _2520_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_933_),
    .Q(rreg0[3])
);

DFFPOSX1 _2521_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_934_),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

DFFPOSX1 _2522_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_935_),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

DFFPOSX1 _2523_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_936_),
    .Q(\u_cpu.state.cnt_r [2])
);

DFFPOSX1 _2524_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_937_),
    .Q(\u_cpu.decode.co_ebreak )
);

DFFPOSX1 _2525_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_938_),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

DFFPOSX1 _2526_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_939_),
    .Q(\u_cpu.branch_op )
);

DFFPOSX1 _2527_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_940_),
    .Q(\u_cpu.state.cnt_r [1])
);

DFFPOSX1 _2528_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_941_),
    .Q(\u_cpu.state.cnt_r [0])
);

DFFPOSX1 _2529_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_809_),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

DFFPOSX1 _2530_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_943_),
    .Q(\u_cpu.decode.opcode [1])
);

DFFPOSX1 _2531_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_944_),
    .Q(\u_cpu.decode.opcode [2])
);

DFFPOSX1 _2532_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_945_),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

DFFPOSX1 _2533_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_946_),
    .Q(\u_cpu.bne_or_bge )
);

DFFPOSX1 _2534_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_701_),
    .Q(\u_mem_serial.shift_reg [5])
);

DFFPOSX1 _2535_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_676_),
    .Q(\u_mem_serial.shift_reg [30])
);

DFFPOSX1 _2536_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_702_),
    .Q(\u_mem_serial.shift_reg [4])
);

DFFPOSX1 _2537_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_677_),
    .Q(\u_mem_serial.shift_reg [29])
);

DFFPOSX1 _2538_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_703_),
    .Q(\u_mem_serial.shift_reg [3])
);

DFFPOSX1 _2539_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_678_),
    .Q(\u_mem_serial.shift_reg [28])
);

DFFPOSX1 _2540_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_704_),
    .Q(\u_mem_serial.shift_reg [2])
);

DFFPOSX1 _2541_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_679_),
    .Q(\u_mem_serial.shift_reg [27])
);

DFFPOSX1 _2542_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_705_),
    .Q(\u_mem_serial.shift_reg [1])
);

DFFPOSX1 _2543_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_680_),
    .Q(\u_mem_serial.shift_reg [26])
);

DFFPOSX1 _2544_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_706_),
    .Q(\u_mem_serial.shift_reg [0])
);

DFFPOSX1 _2545_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_707_),
    .Q(\u_mem_serial.state [0])
);

DFFPOSX1 _2546_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_708_),
    .Q(rf_shared_rdata[0])
);

DFFPOSX1 _2547_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_681_),
    .Q(\u_mem_serial.shift_reg [25])
);

DFFPOSX1 _2548_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_709_),
    .Q(\u_mem_serial.bit_count [2])
);

DFFPOSX1 _2549_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_710_),
    .Q(\u_mem_serial.bit_count [3])
);

DFFPOSX1 _2550_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_711_),
    .Q(\u_mem_serial.bit_count [1])
);

DFFPOSX1 _2551_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_712_),
    .Q(\u_mem_serial.bit_count [0])
);

DFFPOSX1 _2552_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_713_),
    .Q(\u_mem_serial.bit_count [5])
);

DFFPOSX1 _2553_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_682_),
    .Q(\u_mem_serial.shift_reg [24])
);

DFFPOSX1 _2554_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_714_),
    .Q(_1196_)
);

DFFPOSX1 _2555_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_715_),
    .Q(mem_ibus_ack)
);

DFFPOSX1 _2556_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_716_),
    .Q(mem_dbus_ack)
);

DFFPOSX1 _2557_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_800_),
    .Q(\u_rf_if.rreg1_latched [3])
);

DFFPOSX1 _2558_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_717_),
    .Q(rf_shared_rdata[1])
);

DFFPOSX1 _2559_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_718_),
    .Q(\u_mem_serial.state [1])
);

DFFPOSX1 _2560_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_788_),
    .Q(\u_rf_if.wen0_r )
);

DFFPOSX1 _2561_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_719_),
    .Q(\u_mem_serial.shift_reg [31])
);

DFFPOSX1 _2562_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_683_),
    .Q(\u_mem_serial.shift_reg [23])
);

DFFPOSX1 _2563_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_720_),
    .Q(\u_mem_serial.bit_count [4])
);

DFFPOSX1 _2564_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_684_),
    .Q(\u_mem_serial.shift_reg [22])
);

DFFPOSX1 _2565_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_721_),
    .Q(\u_mem_serial.active_we )
);

DFFPOSX1 _2566_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_685_),
    .Q(\u_mem_serial.shift_reg [21])
);

DFFPOSX1 _2567_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_722_),
    .Q(\u_mem_serial.req_pending )
);

DFFPOSX1 _2568_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_947_),
    .Q(\u_cpu.decode.co_mem_word )
);

DFFPOSX1 _2569_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_686_),
    .Q(\u_mem_serial.shift_reg [20])
);

DFFPOSX1 _2570_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(i_clk_sys_ext),
    .Q(\u_mem_serial.clk_sys_prev )
);

INVX1 _2571_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .Y(_656_)
);

DFFPOSX1 _2572_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_728_),
    .Q(\u_rf_if.rreg1_latched [1])
);

DFFPOSX1 _2573_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_777_),
    .Q(raddr[1])
);

DFFPOSX1 _2574_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_687_),
    .Q(\u_mem_serial.shift_reg [19])
);

DFFPOSX1 _2575_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_729_),
    .Q(\u_rf_if.rreg1_latched [0])
);

DFFSR _2576_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(\u_rf_if.i_stream_rs2_en ),
    .Q(current_stream_rs2_hint),
    .R(i_rst_n),
    .S(vdd)
);

DFFPOSX1 _2577_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_730_),
    .Q(\u_rf_if.rreg0_latched [2])
);

DFFPOSX1 _2578_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_688_),
    .Q(\u_mem_serial.shift_reg [18])
);

DFFPOSX1 _2579_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_731_),
    .Q(\u_rf_if.rreg0_latched [1])
);

INVX1 _2580_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_654_),
    .Y(_653_)
);

DFFPOSX1 _2581_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_732_),
    .Q(\u_rf_if.rreg0_latched [0])
);

DFFPOSX1 _2582_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_689_),
    .Q(\u_mem_serial.shift_reg [17])
);

DFFPOSX1 _2583_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_733_),
    .Q(\u_rf_if.issue_idx [4])
);

NOR2X1 _2584_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_656_),
    .B(_655_),
    .Y(_654_)
);

DFFPOSX1 _2585_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_734_),
    .Q(\u_rf_if.issue_idx [3])
);

DFFPOSX1 _2586_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_690_),
    .Q(\u_mem_serial.shift_reg [16])
);

DFFPOSX1 _2587_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_735_),
    .Q(\u_rf_if.issue_idx [2])
);

INVX1 _2588_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .Y(_655_)
);

DFFPOSX1 _2589_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_736_),
    .Q(\u_rf_if.issue_idx [1])
);

DFFPOSX1 _2590_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_691_),
    .Q(\u_mem_serial.shift_reg [15])
);

DFFPOSX1 _2591_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_737_),
    .Q(\u_rf_if.issue_idx [0])
);

INVX1 _2592_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_658_)
);

DFFPOSX1 _2593_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_738_),
    .Q(\u_rf_if.o_waddr [2])
);

DFFPOSX1 _2594_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_692_),
    .Q(\u_mem_serial.shift_reg [14])
);

DFFPOSX1 _2595_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_739_),
    .Q(\u_rf_if.o_waddr [1])
);

NAND2X1 _2596_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_660_),
    .Y(_659_)
);

DFFPOSX1 _2597_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_740_),
    .Q(\u_rf_if.o_waddr [0])
);

DFFPOSX1 _2598_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_741_),
    .Q(\u_rf_if.rcnt [2])
);

DFFPOSX1 _2599_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_742_),
    .Q(\u_rf_if.rcnt [0])
);

DFFPOSX1 _2600_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_693_),
    .Q(\u_mem_serial.shift_reg [13])
);

DFFPOSX1 _2601_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_743_),
    .Q(\u_rf_if.stream_cnt [3])
);

NOR2X1 _2602_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_661_),
    .Y(_660_)
);

DFFPOSX1 _2603_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_744_),
    .Q(\u_rf_if.stream_cnt [2])
);

DFFPOSX1 _2604_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_694_),
    .Q(\u_mem_serial.shift_reg [12])
);

DFFPOSX1 _2605_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_787_),
    .Q(\u_rf_if.rtrig1 )
);

DFFPOSX1 _2606_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_745_),
    .Q(\u_rf_if.stream_cnt [1])
);

DFFPOSX1 _2607_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_671_),
    .Q(\u_cpu.state.ibus_cyc )
);

DFFPOSX1 _2608_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_781_),
    .Q(\u_rf_if.write_wait [1])
);

DFFPOSX1 _2609_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_746_),
    .Q(\u_rf_if.stream_cnt [0])
);

DFFPOSX1 _2610_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_747_),
    .Q(\u_rf_if.read_buf0 [29])
);

DFFPOSX1 _2611_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_748_),
    .Q(\u_rf_if.read_buf0 [28])
);

DFFPOSX1 _2612_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_749_),
    .Q(\u_rf_if.read_buf0 [27])
);

DFFPOSX1 _2613_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_750_),
    .Q(\u_rf_if.read_buf0 [26])
);

DFFPOSX1 _2614_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_751_),
    .Q(\u_rf_if.read_buf0 [25])
);

DFFPOSX1 _2615_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_752_),
    .Q(\u_rf_if.read_buf0 [24])
);

DFFPOSX1 _2616_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_753_),
    .Q(\u_rf_if.read_buf0 [23])
);

DFFPOSX1 _2617_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_754_),
    .Q(\u_rf_if.read_buf0 [22])
);

DFFPOSX1 _2618_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_755_),
    .Q(\u_rf_if.read_buf0 [21])
);

DFFPOSX1 _2619_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_756_),
    .Q(\u_rf_if.read_buf0 [20])
);

DFFPOSX1 _2620_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_757_),
    .Q(\u_rf_if.read_buf0 [19])
);

DFFPOSX1 _2621_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_780_),
    .Q(raddr[4])
);

DFFPOSX1 _2622_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_779_),
    .Q(raddr[0])
);

DFFPOSX1 _2623_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_758_),
    .Q(\u_rf_if.read_buf0 [18])
);

DFFPOSX1 _2624_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_759_),
    .Q(\u_rf_if.read_buf0 [17])
);

DFFPOSX1 _2625_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_760_),
    .Q(\u_rf_if.read_buf0 [16])
);

DFFPOSX1 _2626_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_761_),
    .Q(\u_rf_if.read_buf0 [15])
);

DFFPOSX1 _2627_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_762_),
    .Q(\u_rf_if.read_buf0 [14])
);

DFFPOSX1 _2628_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_763_),
    .Q(\u_rf_if.read_buf0 [13])
);

DFFPOSX1 _2629_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_764_),
    .Q(\u_rf_if.read_buf0 [12])
);

DFFPOSX1 _2630_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_778_),
    .Q(raddr[2])
);

DFFPOSX1 _2631_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_765_),
    .Q(\u_rf_if.read_buf0 [11])
);

DFFPOSX1 _2632_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_766_),
    .Q(\u_rf_if.read_buf0 [10])
);

DFFPOSX1 _2633_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_767_),
    .Q(\u_rf_if.read_buf0 [9])
);

DFFPOSX1 _2634_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_768_),
    .Q(\u_rf_if.read_buf0 [8])
);

DFFPOSX1 _2635_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_726_),
    .Q(raddr[6])
);

DFFPOSX1 _2636_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_769_),
    .Q(\u_rf_if.read_buf0 [7])
);

DFFPOSX1 _2637_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_770_),
    .Q(\u_rf_if.read_buf0 [6])
);

DFFPOSX1 _2638_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_794_),
    .Q(raddr[5])
);

DFFPOSX1 _2639_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_771_),
    .Q(\u_rf_if.read_buf0 [5])
);

DFFPOSX1 _2640_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_772_),
    .Q(\u_rf_if.read_buf0 [4])
);

DFFPOSX1 _2641_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_773_),
    .Q(\u_rf_if.read_buf0 [3])
);

DFFPOSX1 _2642_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_774_),
    .Q(\u_rf_if.read_buf0 [2])
);

DFFPOSX1 _2643_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_775_),
    .Q(\u_rf_if.read_buf0 [1])
);

DFFPOSX1 _2644_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_776_),
    .Q(\u_rf_if.read_buf0 [0])
);

DFFPOSX1 _2645_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_695_),
    .Q(\u_mem_serial.shift_reg [11])
);

DFFPOSX1 _2646_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_793_),
    .Q(raddr[3])
);

DFFPOSX1 _2647_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_782_),
    .Q(\u_rf_if.rcnt [1])
);

INVX1 _2648_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_657_)
);

DFFPOSX1 _2649_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_783_),
    .Q(\u_rf_if.read_buf1 )
);

DFFPOSX1 _2650_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_696_),
    .Q(\u_mem_serial.shift_reg [10])
);

DFFPOSX1 _2651_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_784_),
    .Q(\u_rf_if.read_buf0 [31])
);

DFFPOSX1 _2652_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_672_),
    .Q(\u_cpu.state.init_done )
);

DFFPOSX1 _2653_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_785_),
    .Q(\u_rf_if.stream_cnt [4])
);

DFFPOSX1 _2654_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_786_),
    .Q(\u_rf_if.stream_active )
);

DFFPOSX1 _2655_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_801_),
    .Q(\u_rf_if.rs2_stream_buf [1])
);

DFFPOSX1 _2656_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_697_),
    .Q(\u_mem_serial.shift_reg [9])
);

DFFPOSX1 _2657_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(\u_cpu.o_wdata0 ),
    .Q(\u_rf_if.wdata0_next [0])
);

INVX1 _2658_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .Y(_661_)
);

DFFPOSX1 _2659_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_789_),
    .Q(\u_rf_if.o_waddr [3])
);

DFFPOSX1 _2660_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_698_),
    .Q(\u_mem_serial.shift_reg [8])
);

DFFPOSX1 _2661_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_790_),
    .Q(\u_rf_if.wdata0_next_phase )
);

DFFPOSX1 _2662_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_673_),
    .Q(\u_cpu.ctrl.i_jump )
);

DFFPOSX1 _2663_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_791_),
    .Q(\u_rf_if.write_wait [0])
);

DFFPOSX1 _2664_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_792_),
    .Q(\u_rf_if.prefetch_active )
);

DFFPOSX1 _2665_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_699_),
    .Q(\u_mem_serial.shift_reg [7])
);

DFFPOSX1 _2666_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_795_),
    .Q(\u_rf_if.pending_read )
);

DFFPOSX1 _2667_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_796_),
    .Q(ren)
);

DFFPOSX1 _2668_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_674_),
    .Q(\u_cpu.state.cnt_r [3])
);

DFFPOSX1 _2669_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_798_),
    .Q(\u_rf_if.issue_idx [5])
);

DFFPOSX1 _2670_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast),
    .D(_700_),
    .Q(\u_mem_serial.shift_reg [6])
);

DFFPOSX1 _2671_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_799_),
    .Q(\u_rf_if.rreg0_latched [3])
);

DFFPOSX1 _2672_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_675_),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

DFFPOSX1 _2673_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_797_),
    .Q(raddr[7])
);

DFFPOSX1 _2674_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_802_),
    .Q(\u_rf_if.read_buf0 [30])
);

DFFPOSX1 _2675_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_803_),
    .Q(\u_cpu.state.o_cnt [2])
);

DFFPOSX1 _2676_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_804_),
    .Q(\u_rf_if.ready_pulse )
);

DFFPOSX1 _2677_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_806_),
    .Q(\u_cpu.alu.cmp_r )
);

DFFPOSX1 _2678_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_807_),
    .Q(\u_cpu.alu.add_cy_r )
);

DFFPOSX1 _2679_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_810_),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

DFFPOSX1 _2680_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_812_),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

DFFPOSX1 _2681_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_813_),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

DFFPOSX1 _2682_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_814_),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

DFFPOSX1 _2683_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_815_),
    .Q(\u_cpu.ctrl.pc )
);

DFFPOSX1 _2684_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_816_),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

DFFPOSX1 _2685_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_817_),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

DFFPOSX1 _2686_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_818_),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

DFFPOSX1 _2687_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_819_),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

DFFPOSX1 _2688_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_820_),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

DFFPOSX1 _2689_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_821_),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

DFFPOSX1 _2690_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_822_),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

DFFPOSX1 _2691_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_823_),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

DFFPOSX1 _2692_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_824_),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

DFFPOSX1 _2693_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_825_),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

DFFPOSX1 _2694_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_826_),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

DFFPOSX1 _2695_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_827_),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

DFFPOSX1 _2696_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_828_),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

DFFPOSX1 _2697_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_829_),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

DFFPOSX1 _2698_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_830_),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

DFFPOSX1 _2699_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_876_),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

DFFPOSX1 _2700_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_831_),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

DFFPOSX1 _2701_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_832_),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

DFFPOSX1 _2702_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_833_),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

DFFPOSX1 _2703_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_834_),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

DFFPOSX1 _2704_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_835_),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

DFFPOSX1 _2705_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_836_),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

DFFPOSX1 _2706_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_837_),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

DFFPOSX1 _2707_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_838_),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

DFFPOSX1 _2708_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_839_),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

DFFPOSX1 _2709_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_840_),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

DFFPOSX1 _2710_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_841_),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

DFFPOSX1 _2711_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_842_),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

DFFPOSX1 _2712_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_843_),
    .Q(\u_cpu.bufreg2.dlo [23])
);

DFFPOSX1 _2713_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_844_),
    .Q(\u_cpu.bufreg2.dlo [0])
);

DFFPOSX1 _2714_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_845_),
    .Q(\u_cpu.bufreg2.dlo [1])
);

DFFPOSX1 _2715_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_846_),
    .Q(\u_cpu.bufreg2.dlo [2])
);

DFFPOSX1 _2716_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_847_),
    .Q(\u_cpu.bufreg2.dlo [3])
);

DFFPOSX1 _2717_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_848_),
    .Q(\u_cpu.bufreg2.dlo [4])
);

DFFPOSX1 _2718_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_849_),
    .Q(\u_cpu.bufreg2.dlo [5])
);

DFFPOSX1 _2719_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_850_),
    .Q(\u_cpu.bufreg2.dlo [6])
);

DFFPOSX1 _2720_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_851_),
    .Q(\u_cpu.bufreg2.dlo [7])
);

DFFPOSX1 _2721_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_852_),
    .Q(\u_cpu.bufreg2.dlo [8])
);

DFFPOSX1 _2722_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_853_),
    .Q(\u_cpu.bufreg2.dlo [9])
);

DFFPOSX1 _2723_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_854_),
    .Q(\u_cpu.bufreg2.dlo [10])
);

DFFPOSX1 _2724_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_855_),
    .Q(\u_cpu.bufreg2.dlo [11])
);

DFFPOSX1 _2725_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_856_),
    .Q(\u_cpu.bufreg2.dlo [12])
);

DFFPOSX1 _2726_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_857_),
    .Q(\u_cpu.bufreg2.dlo [13])
);

DFFPOSX1 _2727_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_858_),
    .Q(\u_cpu.bufreg2.dlo [14])
);

DFFPOSX1 _2728_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_859_),
    .Q(\u_cpu.bufreg2.dlo [15])
);

DFFPOSX1 _2729_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_860_),
    .Q(\u_cpu.bufreg2.dlo [16])
);

DFFPOSX1 _2730_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_861_),
    .Q(\u_cpu.bufreg2.dlo [17])
);

DFFPOSX1 _2731_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_862_),
    .Q(\u_cpu.bufreg2.dlo [18])
);

DFFPOSX1 _2732_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_863_),
    .Q(\u_cpu.bufreg2.dlo [19])
);

DFFPOSX1 _2733_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_864_),
    .Q(\u_cpu.bufreg2.dlo [20])
);

DFFPOSX1 _2734_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_865_),
    .Q(\u_cpu.bufreg2.dlo [21])
);

DFFPOSX1 _2735_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_866_),
    .Q(\u_cpu.bufreg2.dlo [22])
);

DFFPOSX1 _2736_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_867_),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

DFFPOSX1 _2737_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_868_),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

DFFPOSX1 _2738_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_811_),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

DFFPOSX1 _2739_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_869_),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

DFFPOSX1 _2740_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_870_),
    .Q(\u_cpu.bufreg2.dhi [3])
);

DFFPOSX1 _2741_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_871_),
    .Q(\u_cpu.bufreg2.dhi [4])
);

DFFPOSX1 _2742_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_872_),
    .Q(\u_cpu.bufreg2.dhi [5])
);

DFFPOSX1 _2743_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_873_),
    .Q(\u_cpu.bufreg2.dhi [6])
);

DFFPOSX1 _2744_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_874_),
    .Q(\u_cpu.bufreg.data [31])
);

DFFPOSX1 _2745_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_875_),
    .Q(\u_cpu.bufreg.c_r )
);

DFFPOSX1 _2746_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_877_),
    .Q(\u_cpu.bufreg.data [30])
);

DFFPOSX1 _2747_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_878_),
    .Q(\u_cpu.bufreg.data [29])
);

DFFPOSX1 _2748_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_879_),
    .Q(\u_cpu.bufreg.data [0])
);

DFFPOSX1 _2749_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_880_),
    .Q(\u_cpu.bufreg.data [2])
);

DFFPOSX1 _2750_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_881_),
    .Q(\u_cpu.bufreg.data [3])
);

DFFPOSX1 _2751_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_882_),
    .Q(\u_cpu.bufreg.data [4])
);

DFFPOSX1 _2752_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_883_),
    .Q(\u_cpu.bufreg.data [5])
);

DFFPOSX1 _2753_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_884_),
    .Q(\u_cpu.bufreg.data [6])
);

DFFPOSX1 _2754_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_885_),
    .Q(\u_cpu.bufreg.data [7])
);

DFFPOSX1 _2755_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_886_),
    .Q(\u_cpu.bufreg.data [8])
);

DFFPOSX1 _2756_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_887_),
    .Q(\u_cpu.bufreg.data [9])
);

DFFPOSX1 _2757_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_725_),
    .Q(\u_rf_if.rs2_stream_buf [0])
);

DFFPOSX1 _2758_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_888_),
    .Q(\u_cpu.bufreg.data [10])
);

DFFPOSX1 _2759_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_889_),
    .Q(\u_cpu.bufreg.data [11])
);

DFFPOSX1 _2760_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_890_),
    .Q(\u_cpu.bufreg.data [12])
);

DFFPOSX1 _2761_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_891_),
    .Q(\u_cpu.bufreg.data [13])
);

DFFPOSX1 _2762_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_892_),
    .Q(\u_cpu.bufreg.data [14])
);

DFFPOSX1 _2763_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_893_),
    .Q(\u_cpu.bufreg.data [15])
);

DFFPOSX1 _2764_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_894_),
    .Q(\u_cpu.bufreg.data [16])
);

DFFPOSX1 _2765_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_895_),
    .Q(\u_cpu.bufreg.data [17])
);

DFFPOSX1 _2766_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_896_),
    .Q(\u_cpu.bufreg.data [18])
);

DFFPOSX1 _2767_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_sys_ext),
    .D(_897_),
    .Q(\u_cpu.bufreg.data [19])
);

endmodule
