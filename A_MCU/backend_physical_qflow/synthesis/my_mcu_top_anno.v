/* Verilog module written by DEF2Verilog (qflow) */
module my_mcu_top (
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
wire gnd = 1'b0 ;
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
wire vdd = 1'b1 ;
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
    .A(_971_),
    .B(_980_),
    .C(_976_),
    .Y(_871_)
);

NOR2X1 _1257_ (
    .A(_626_),
    .B(_625_),
    .Y(_624_)
);

MUX2X1 _1486_ (
    .A(\u_mem_serial.shift_reg [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(mem_ibus_ack),
    .Y(_421_)
);

OAI21X1 _1295_ (
    .A(_636_),
    .B(_653_),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_586_)
);

DFFPOSX1 _2712_ (
    .D(_843_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [23])
);

DFFPOSX1 _2521_ (
    .D(_934_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

NOR2X1 _2101_ (
    .A(\u_rf_if.read_buf0 [13]),
    .B(_1174_),
    .Y(_58_)
);

NAND2X1 _1389_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [5]),
    .Y(_496_)
);

DFFPOSX1 _2750_ (
    .D(_881_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [3])
);

AOI21X1 _2330_ (
    .A(_227_),
    .B(\u_mem_serial.bit_count [5]),
    .C(_229_),
    .Y(_230_)
);

MUX2X1 _1601_ (
    .A(_339_),
    .B(_338_),
    .S(_597_),
    .Y(_892_)
);

MUX2X1 _1830_ (
    .A(_1096_),
    .B(_1097_),
    .S(_1091_),
    .Y(_835_)
);

AOI21X1 _1410_ (
    .A(_481_),
    .B(_480_),
    .C(_492_),
    .Y(_941_)
);

DFFPOSX1 _2615_ (
    .D(_752_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [24])
);

OAI21X1 _2424_ (
    .A(_195_),
    .B(_295_),
    .C(_296_),
    .Y(_297_)
);

INVX1 _2004_ (
    .A(\u_rf_if.rtrig1 ),
    .Y(_1231_)
);

DFFPOSX1 _2653_ (
    .D(_785_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [4])
);

NOR2X1 _2233_ (
    .A(_503_),
    .B(_148_),
    .Y(_149_)
);

AOI22X1 _1924_ (
    .A(raddr[7]),
    .B(ren),
    .C(_1149_),
    .D(_1159_),
    .Y(_1160_)
);

AOI21X1 _1504_ (
    .A(_416_),
    .B(_413_),
    .C(_407_),
    .Y(_920_)
);

DFFPOSX1 _2709_ (
    .D(_840_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

AOI21X1 _2462_ (
    .A(_326_),
    .B(\u_cpu.state.ibus_cyc ),
    .C(_492_),
    .Y(_327_)
);

AND2X2 _2042_ (
    .A(_1235_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_19_)
);

NOR2X1 _1733_ (
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(_1013_),
    .Y(_1026_)
);

INVX1 _1313_ (
    .A(\u_rf_if.stream_active ),
    .Y(_568_)
);

DFFPOSX1 _2518_ (
    .D(_931_),
    .CLK(i_clk_sys_ext),
    .Q(rreg0[1])
);

DFFPOSX1 _2691_ (
    .D(_823_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

NOR2X1 _2271_ (
    .A(_142_),
    .B(_183_),
    .Y(_184_)
);

AOI21X1 _1962_ (
    .A(_461_),
    .B(_1195_),
    .C(_492_),
    .Y(_799_)
);

INVX1 _1542_ (
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_376_)
);

DFFPOSX1 _2747_ (
    .D(_878_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [29])
);

INVX1 _2327_ (
    .A(_172_),
    .Y(_227_)
);

AOI21X1 _2080_ (
    .A(_41_),
    .B(_1175_),
    .C(_44_),
    .Y(_771_)
);

FILL FILL98250x79350 (
);

OAI21X1 _1771_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [9]),
    .C(_1055_),
    .Y(_1056_)
);

INVX1 _1351_ (
    .A(\u_cpu.alu.cmp_r ),
    .Y(_531_)
);

DFFPOSX1 _2556_ (
    .D(_716_),
    .CLK(i_clk_fast),
    .Q(mem_dbus_ack)
);

AOI21X1 _2136_ (
    .A(_76_),
    .B(_1175_),
    .C(_80_),
    .Y(_751_)
);

INVX1 _1827_ (
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1096_)
);

NAND2X1 _1407_ (
    .A(_483_),
    .B(_487_),
    .Y(_482_)
);

INVX1 _1580_ (
    .A(\u_cpu.bufreg.data [24]),
    .Y(_348_)
);

AOI22X1 _2365_ (
    .A(\u_cpu.bufreg2.dlo [17]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [16]),
    .Y(_248_)
);

OAI21X1 _1636_ (
    .A(_651_),
    .B(_647_),
    .C(\u_cpu.branch_op ),
    .Y(_723_)
);

DFFPOSX1 _2594_ (
    .D(_692_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [14])
);

OAI21X1 _2174_ (
    .A(_1238_),
    .B(_1197_),
    .C(_1221_),
    .Y(_107_)
);

INVX1 _1865_ (
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_1115_)
);

NOR2X1 _1445_ (
    .A(_454_),
    .B(_465_),
    .Y(_453_)
);

FILL FILL98550x32550 (
);

OAI21X1 _1674_ (
    .A(_611_),
    .B(_977_),
    .C(_618_),
    .Y(_978_)
);

INVX1 _1254_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_627_)
);

OAI21X1 _2459_ (
    .A(_627_),
    .B(_623_),
    .C(\u_cpu.state.init_done ),
    .Y(_325_)
);

OAI21X1 _2039_ (
    .A(_1171_),
    .B(_1189_),
    .C(_16_),
    .Y(_784_)
);

MUX2X1 _1483_ (
    .A(\u_mem_serial.shift_reg [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(mem_ibus_ack),
    .Y(_423_)
);

DFFPOSX1 _2688_ (
    .D(_820_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

NOR2X1 _2268_ (
    .A(\u_mem_serial.state [1]),
    .B(_180_),
    .Y(_181_)
);

NAND2X1 _1959_ (
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_561_),
    .Y(_1193_)
);

INVX1 _1539_ (
    .A(_384_),
    .Y(_378_)
);

INVX1 _1292_ (
    .A(rf_wreg0_to_if[0]),
    .Y(_589_)
);

DFFPOSX1 _2497_ (
    .D(_911_),
    .CLK(i_clk_sys_ext),
    .Q(rreg0[4])
);

OAI22X1 _2077_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [5]),
    .C(\u_rf_if.read_buf0 [6]),
    .D(_1171_),
    .Y(_43_)
);

AOI21X1 _1768_ (
    .A(_1013_),
    .B(_1052_),
    .C(_1053_),
    .Y(_853_)
);

NOR2X1 _1348_ (
    .A(_566_),
    .B(_549_),
    .Y(_534_)
);

NOR2X1 _1997_ (
    .A(_1224_),
    .B(_1222_),
    .Y(_791_)
);

MUX2X1 _1577_ (
    .A(_351_),
    .B(_350_),
    .S(_597_),
    .Y(_904_)
);

OAI21X1 _1386_ (
    .A(mem_ibus_ack),
    .B(_634_),
    .C(_498_),
    .Y(_947_)
);

DFFPOSX1 _2612_ (
    .D(_749_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [27])
);

OR2X2 _2421_ (
    .A(_1158_),
    .B(_217_),
    .Y(_294_)
);

NOR2X1 _2001_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_1228_)
);

INVX1 _1289_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_592_)
);

DFFPOSX1 _2650_ (
    .D(_696_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [10])
);

OAI21X1 _2230_ (
    .A(_140_),
    .B(_145_),
    .C(\u_mem_serial.req_pending ),
    .Y(_146_)
);

NOR2X1 _1921_ (
    .A(ren),
    .B(_380_),
    .Y(_1157_)
);

INVX1 _1501_ (
    .A(_410_),
    .Y(_409_)
);

DFFPOSX1 _2706_ (
    .D(_837_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

AOI21X1 _1730_ (
    .A(_1013_),
    .B(_1022_),
    .C(_1023_),
    .Y(_861_)
);

INVX1 _1310_ (
    .A(_572_),
    .Y(_571_)
);

DFFPOSX1 _2515_ (
    .D(_928_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

DFFPOSX1 _2744_ (
    .D(_874_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [31])
);

AOI21X1 _2324_ (
    .A(_198_),
    .B(_200_),
    .C(_225_),
    .Y(_708_)
);

DFFPOSX1 _2553_ (
    .D(_682_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [24])
);

OAI22X1 _2133_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [25]),
    .C(\u_rf_if.read_buf0 [26]),
    .D(_1171_),
    .Y(_79_)
);

MUX2X1 _1824_ (
    .A(_1093_),
    .B(_1094_),
    .S(_1091_),
    .Y(_838_)
);

INVX1 _1404_ (
    .A(_486_),
    .Y(_485_)
);

DFFPOSX1 _2609_ (
    .D(_746_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [0])
);

MUX2X1 _2362_ (
    .A(_445_),
    .B(_246_),
    .S(_179_),
    .Y(_691_)
);

INVX1 _1633_ (
    .A(\u_cpu.bufreg.data [31]),
    .Y(_669_)
);

NOR2X1 _2418_ (
    .A(_179_),
    .B(_291_),
    .Y(_292_)
);

DFFPOSX1 _2591_ (
    .D(_737_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [0])
);

NOR2X1 _2171_ (
    .A(_105_),
    .B(_102_),
    .Y(_741_)
);

MUX2X1 _1862_ (
    .A(_1112_),
    .B(_1113_),
    .S(_1091_),
    .Y(_819_)
);

NOR2X1 _1442_ (
    .A(_561_),
    .B(_457_),
    .Y(_456_)
);

DFFPOSX1 _2647_ (
    .D(_782_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rcnt [1])
);

NAND2X1 _2227_ (
    .A(i_clk_sys_ext),
    .B(_142_),
    .Y(_143_)
);

AOI22X1 _1918_ (
    .A(ren),
    .B(raddr[6]),
    .C(_1149_),
    .D(_1153_),
    .Y(_1154_)
);

AOI22X1 _1671_ (
    .A(_617_),
    .B(_971_),
    .C(_975_),
    .D(_974_),
    .Y(_872_)
);

OAI21X1 _1251_ (
    .A(_633_),
    .B(_631_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_630_)
);

NOR2X1 _2456_ (
    .A(_655_),
    .B(_490_),
    .Y(_323_)
);

AOI21X1 _2036_ (
    .A(_1184_),
    .B(_1180_),
    .C(_14_),
    .Y(_15_)
);

NAND2X1 _1727_ (
    .A(mem_dbus_ack),
    .B(_457_),
    .Y(_1021_)
);

AOI21X1 _1307_ (
    .A(_581_),
    .B(_641_),
    .C(_575_),
    .Y(_574_)
);

MUX2X1 _1480_ (
    .A(\u_mem_serial.shift_reg [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(mem_ibus_ack),
    .Y(_425_)
);

DFFPOSX1 _2685_ (
    .D(_817_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

NAND2X1 _2265_ (
    .A(\u_mem_serial.state [0]),
    .B(_177_),
    .Y(_178_)
);

INVX1 _1956_ (
    .A(_1190_),
    .Y(_1191_)
);

INVX1 _1536_ (
    .A(rf_wreg0_to_if[1]),
    .Y(_380_)
);

DFFPOSX1 _2494_ (
    .D(_909_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

INVX1 _2074_ (
    .A(\u_rf_if.read_buf0 [5]),
    .Y(_41_)
);

NAND2X1 _1765_ (
    .A(mem_dbus_ack),
    .B(_1050_),
    .Y(_1051_)
);

NAND2X1 _1345_ (
    .A(_562_),
    .B(_539_),
    .Y(_537_)
);

INVX1 _1994_ (
    .A(_1221_),
    .Y(_1222_)
);

INVX1 _1574_ (
    .A(\u_cpu.bufreg.data [27]),
    .Y(_351_)
);

AOI22X1 _2359_ (
    .A(\u_cpu.bufreg2.dlo [14]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [13]),
    .Y(_245_)
);

AOI21X1 _1383_ (
    .A(_525_),
    .B(_524_),
    .C(_500_),
    .Y(_499_)
);

INVX1 _2588_ (
    .A(\u_cpu.branch_op ),
    .Y(_655_)
);

NAND3X1 _2168_ (
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [2]),
    .C(\u_rf_if.rcnt [1]),
    .Y(_103_)
);

INVX1 _1859_ (
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_1112_)
);

AOI21X1 _1439_ (
    .A(_470_),
    .B(_465_),
    .C(_459_),
    .Y(_933_)
);

OAI22X1 _2397_ (
    .A(_217_),
    .B(_273_),
    .C(_405_),
    .D(_258_),
    .Y(_274_)
);

NAND3X1 _1668_ (
    .A(_474_),
    .B(_965_),
    .C(_619_),
    .Y(_973_)
);

NOR2X1 _1248_ (
    .A(_634_),
    .B(_636_),
    .Y(_633_)
);

INVX1 _1897_ (
    .A(\u_rf_if.issue_idx [5]),
    .Y(_1135_)
);

INVX1 _1477_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .Y(_428_)
);

NOR2X1 _1286_ (
    .A(_640_),
    .B(_596_),
    .Y(_595_)
);

DFFPOSX1 _2703_ (
    .D(_834_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

DFFPOSX1 _2512_ (
    .D(_925_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

DFFPOSX1 _2741_ (
    .D(_871_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dhi [4])
);

OAI21X1 _2321_ (
    .A(_142_),
    .B(_165_),
    .C(\u_mem_serial.bit_count [2]),
    .Y(_224_)
);

DFFPOSX1 _2550_ (
    .D(_711_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [1])
);

OAI22X1 _2130_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [24]),
    .C(\u_rf_if.read_buf0 [23]),
    .D(_1174_),
    .Y(_77_)
);

INVX1 _1821_ (
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_1093_)
);

AOI21X1 _1401_ (
    .A(_490_),
    .B(_489_),
    .C(_637_),
    .Y(_488_)
);

DFFPOSX1 _2606_ (
    .D(_745_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [1])
);

MUX2X1 _1630_ (
    .A(_664_),
    .B(_640_),
    .S(_667_),
    .Y(_879_)
);

OAI21X1 _2415_ (
    .A(_288_),
    .B(_202_),
    .C(_217_),
    .Y(_289_)
);

DFFPOSX1 _2644_ (
    .D(_776_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [0])
);

OAI21X1 _2224_ (
    .A(_1239_),
    .B(_1231_),
    .C(_139_),
    .Y(_140_)
);

AOI22X1 _1915_ (
    .A(ren),
    .B(raddr[4]),
    .C(_1149_),
    .D(_1150_),
    .Y(_1151_)
);

OAI21X1 _2453_ (
    .A(_627_),
    .B(_623_),
    .C(\u_cpu.ctrl.i_jump ),
    .Y(_320_)
);

OAI21X1 _2033_ (
    .A(_1180_),
    .B(_1184_),
    .C(_11_),
    .Y(_12_)
);

OAI21X1 _1724_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [19]),
    .C(_1018_),
    .Y(_1019_)
);

NOR2X1 _1304_ (
    .A(\u_cpu.state.o_cnt [2]),
    .B(_578_),
    .Y(_577_)
);

DFFPOSX1 _2509_ (
    .D(_923_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

DFFPOSX1 _2682_ (
    .D(_814_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

INVX1 _2262_ (
    .A(\u_mem_serial.bit_count [1]),
    .Y(_175_)
);

OAI21X1 _1953_ (
    .A(_568_),
    .B(_1187_),
    .C(_1178_),
    .Y(_1188_)
);

NAND2X1 _1533_ (
    .A(_561_),
    .B(_383_),
    .Y(_382_)
);

DFFPOSX1 _2738_ (
    .D(_811_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

INVX1 _2318_ (
    .A(_166_),
    .Y(_222_)
);

FILL FILL98250x86550 (
);

DFFPOSX1 _2491_ (
    .D(_907_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

INVX1 _2071_ (
    .A(\u_rf_if.read_buf0 [4]),
    .Y(_39_)
);

NOR2X1 _1762_ (
    .A(\u_cpu.bufreg2.dlo [10]),
    .B(_1013_),
    .Y(_1049_)
);

NAND2X1 _1342_ (
    .A(_543_),
    .B(_549_),
    .Y(_540_)
);

DFFPOSX1 _2547_ (
    .D(_681_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [25])
);

OAI22X1 _2127_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [23]),
    .C(\u_rf_if.read_buf0 [24]),
    .D(_1171_),
    .Y(_75_)
);

FILL FILL98550x7350 (
);

MUX2X1 _1818_ (
    .A(_1090_),
    .B(_1089_),
    .S(_1091_),
    .Y(_841_)
);

AOI21X1 _1991_ (
    .A(_1136_),
    .B(_1208_),
    .C(_1220_),
    .Y(_793_)
);

INVX1 _1571_ (
    .A(\u_cpu.bufreg.data [28]),
    .Y(_353_)
);

MUX2X1 _2356_ (
    .A(_1038_),
    .B(_243_),
    .S(_179_),
    .Y(_694_)
);

OAI21X1 _1627_ (
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.state.cnt_r [0]),
    .C(_577_),
    .Y(_665_)
);

NOR2X1 _1380_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_503_),
    .Y(_502_)
);

DFFPOSX1 _2585_ (
    .D(_734_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [3])
);

NOR2X1 _2165_ (
    .A(_99_),
    .B(_101_),
    .Y(_743_)
);

MUX2X1 _1856_ (
    .A(_1109_),
    .B(_1110_),
    .S(_1091_),
    .Y(_822_)
);

INVX1 _1436_ (
    .A(_462_),
    .Y(_461_)
);

MUX2X1 _2394_ (
    .A(_405_),
    .B(_271_),
    .S(_179_),
    .Y(_684_)
);

MUX2X1 _1665_ (
    .A(_970_),
    .B(_639_),
    .S(_969_),
    .Y(_873_)
);

BUFX2 _1245_ (
    .A(_0_),
    .Y(o_mem_mosi)
);

OAI21X1 _1894_ (
    .A(_1131_),
    .B(_1132_),
    .C(_571_),
    .Y(_1133_)
);

OAI21X1 _1474_ (
    .A(mem_ibus_ack),
    .B(_434_),
    .C(_476_),
    .Y(_430_)
);

DFFPOSX1 _2679_ (
    .D(_810_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

NOR2X1 _2259_ (
    .A(\u_mem_serial.bit_count [0]),
    .B(_142_),
    .Y(_173_)
);

NAND2X1 _1283_ (
    .A(_630_),
    .B(_599_),
    .Y(_598_)
);

DFFPOSX1 _2488_ (
    .D(_904_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [26])
);

INVX1 _2068_ (
    .A(\u_rf_if.read_buf0 [1]),
    .Y(_37_)
);

INVX1 _1759_ (
    .A(\u_mem_serial.shift_reg [10]),
    .Y(_1046_)
);

OAI21X1 _1339_ (
    .A(_592_),
    .B(_547_),
    .C(_544_),
    .Y(_543_)
);

DFFPOSX1 _2700_ (
    .D(_831_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

OAI21X1 _2297_ (
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .C(_192_),
    .Y(_207_)
);

INVX1 _1988_ (
    .A(_1213_),
    .Y(_1218_)
);

AOI21X1 _1568_ (
    .A(_412_),
    .B(_413_),
    .C(_355_),
    .Y(_908_)
);

AOI21X1 _1797_ (
    .A(_1013_),
    .B(_1074_),
    .C(_1075_),
    .Y(_846_)
);

OAI21X1 _1377_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_507_),
    .C(_506_),
    .Y(_505_)
);

DFFPOSX1 _2603_ (
    .D(_744_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [2])
);

MUX2X1 _2412_ (
    .A(_280_),
    .B(_286_),
    .S(_179_),
    .Y(_681_)
);

DFFPOSX1 _2641_ (
    .D(_773_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [3])
);

NOR2X1 _2221_ (
    .A(i_clk_fast),
    .B(_138_),
    .Y(_1194_)
);

NOR2X1 _1912_ (
    .A(_1147_),
    .B(_482_),
    .Y(_1148_)
);

OAI21X1 _2450_ (
    .A(_627_),
    .B(_623_),
    .C(i_rst_n),
    .Y(_319_)
);

NAND2X1 _2030_ (
    .A(\u_rf_if.ready_pulse ),
    .B(_568_),
    .Y(_10_)
);

NOR2X1 _1721_ (
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_1013_),
    .Y(_1017_)
);

INVX1 _1301_ (
    .A(\u_cpu.state.cnt_r [0]),
    .Y(_580_)
);

DFFPOSX1 _2506_ (
    .D(_920_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[3])
);

NOR2X1 _1950_ (
    .A(_1180_),
    .B(_1184_),
    .Y(_1185_)
);

INVX1 _1530_ (
    .A(_390_),
    .Y(_385_)
);

DFFPOSX1 _2735_ (
    .D(_866_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [22])
);

OAI21X1 _2315_ (
    .A(_218_),
    .B(_219_),
    .C(_217_),
    .Y(_220_)
);

DFFPOSX1 _2544_ (
    .D(_706_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [0])
);

NOR2X1 _2124_ (
    .A(\u_rf_if.read_buf0 [21]),
    .B(_1174_),
    .Y(_73_)
);

INVX1 _1815_ (
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_1089_)
);

AOI22X1 _2353_ (
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [10]),
    .Y(_242_)
);

NOR2X1 _1624_ (
    .A(\u_cpu.bufreg.data [2]),
    .B(_597_),
    .Y(_663_)
);

AOI22X1 _2409_ (
    .A(_216_),
    .B(_282_),
    .C(_208_),
    .D(_283_),
    .Y(_284_)
);

DFFPOSX1 _2582_ (
    .D(_689_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [17])
);

AOI21X1 _2162_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_10_),
    .C(_98_),
    .Y(_99_)
);

INVX1 _1853_ (
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_1109_)
);

INVX1 _1433_ (
    .A(rreg0[4]),
    .Y(_464_)
);

DFFPOSX1 _2638_ (
    .D(_794_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[5])
);

AOI22X1 _2218_ (
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_1190_),
    .C(_134_),
    .D(_568_),
    .Y(_137_)
);

OAI21X1 _2391_ (
    .A(_139_),
    .B(raddr[0]),
    .C(_268_),
    .Y(_269_)
);

INVX1 _1909_ (
    .A(\u_rf_if.rcnt [0]),
    .Y(_1145_)
);

AOI21X1 _1662_ (
    .A(_967_),
    .B(_602_),
    .C(mem_dbus_ack),
    .Y(_968_)
);

OAI22X1 _2447_ (
    .A(_639_),
    .B(_186_),
    .C(_305_),
    .D(_258_),
    .Y(_317_)
);

AOI21X1 _2027_ (
    .A(_8_),
    .B(_1232_),
    .C(_492_),
    .Y(_788_)
);

INVX1 _1718_ (
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_1014_)
);

NAND2X1 _1891_ (
    .A(_1129_),
    .B(_533_),
    .Y(_1130_)
);

NOR2X1 _1471_ (
    .A(_433_),
    .B(_465_),
    .Y(_432_)
);

DFFPOSX1 _2676_ (
    .D(_804_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.ready_pulse )
);

INVX1 _2256_ (
    .A(\u_mem_serial.bit_count [2]),
    .Y(_170_)
);

INVX1 _1947_ (
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_1182_)
);

NOR2X1 _1527_ (
    .A(mem_ibus_ack),
    .B(_388_),
    .Y(_387_)
);

INVX1 _1280_ (
    .A(_602_),
    .Y(_601_)
);

DFFPOSX1 _2485_ (
    .D(_901_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [23])
);

OAI21X1 _2065_ (
    .A(_1138_),
    .B(_1209_),
    .C(_35_),
    .Y(_777_)
);

OAI21X1 _1756_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [12]),
    .C(_1043_),
    .Y(_1044_)
);

INVX1 _1336_ (
    .A(\u_cpu.bne_or_bge ),
    .Y(_546_)
);

AOI21X1 _2294_ (
    .A(_176_),
    .B(_203_),
    .C(_142_),
    .Y(_204_)
);

OAI21X1 _1985_ (
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [1]),
    .Y(_1216_)
);

INVX1 _1565_ (
    .A(_358_),
    .Y(_357_)
);

NAND2X1 _1794_ (
    .A(mem_dbus_ack),
    .B(_555_),
    .Y(_1073_)
);

OAI21X1 _1374_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_510_),
    .C(_509_),
    .Y(_508_)
);

DFFPOSX1 _2579_ (
    .D(_731_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg0_latched [1])
);

OAI21X1 _2159_ (
    .A(_1181_),
    .B(_96_),
    .C(_89_),
    .Y(_97_)
);

NOR2X1 _2388_ (
    .A(_179_),
    .B(_266_),
    .Y(_267_)
);

NOR2X1 _1659_ (
    .A(_578_),
    .B(_637_),
    .Y(_965_)
);

DFFPOSX1 _2600_ (
    .D(_693_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [13])
);

NAND2X1 _2197_ (
    .A(\u_rf_if.rreg0_latched [0]),
    .B(_561_),
    .Y(_123_)
);

AOI21X1 _1888_ (
    .A(_601_),
    .B(_542_),
    .C(_1127_),
    .Y(_807_)
);

AOI21X1 _1468_ (
    .A(_437_),
    .B(_465_),
    .C(_435_),
    .Y(_928_)
);

NAND2X1 _1697_ (
    .A(_972_),
    .B(_997_),
    .Y(_998_)
);

NOR2X1 _1277_ (
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_604_)
);

DFFPOSX1 _2503_ (
    .D(_917_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[0])
);

DFFPOSX1 _2732_ (
    .D(_863_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [19])
);

INVX1 _2312_ (
    .A(_216_),
    .Y(_217_)
);

DFFPOSX1 _2541_ (
    .D(_679_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [27])
);

INVX1 _2121_ (
    .A(\u_rf_if.read_buf0 [22]),
    .Y(_71_)
);

NAND2X1 _1812_ (
    .A(mem_dbus_ack),
    .B(_376_),
    .Y(_1087_)
);

MUX2X1 _2350_ (
    .A(_1050_),
    .B(_240_),
    .S(_179_),
    .Y(_697_)
);

MUX2X1 _1621_ (
    .A(_329_),
    .B(_328_),
    .S(_597_),
    .Y(_882_)
);

NOR2X1 _2406_ (
    .A(raddr[3]),
    .B(_139_),
    .Y(_281_)
);

MUX2X1 _1850_ (
    .A(_1106_),
    .B(_1107_),
    .S(_1091_),
    .Y(_825_)
);

NOR2X1 _1430_ (
    .A(_593_),
    .B(_486_),
    .Y(_467_)
);

DFFPOSX1 _2635_ (
    .D(_726_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[6])
);

AOI21X1 _2215_ (
    .A(_1162_),
    .B(_1177_),
    .C(_133_),
    .Y(_134_)
);

NOR2X1 _1906_ (
    .A(_1143_),
    .B(_1142_),
    .Y(_804_)
);

OAI21X1 _2444_ (
    .A(\u_cpu.bufreg.data [5]),
    .B(_208_),
    .C(_187_),
    .Y(_314_)
);

OAI21X1 _2024_ (
    .A(_4_),
    .B(_5_),
    .C(_391_),
    .Y(_6_)
);

OAI21X1 _1715_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(_1011_),
    .Y(_1012_)
);

DFFPOSX1 _2673_ (
    .D(_797_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[7])
);

OAI21X1 _2253_ (
    .A(_142_),
    .B(_166_),
    .C(_163_),
    .Y(_167_)
);

INVX1 _1944_ (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_1179_)
);

NOR2X1 _1524_ (
    .A(_601_),
    .B(_391_),
    .Y(_390_)
);

DFFPOSX1 _2729_ (
    .D(_860_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [16])
);

OAI21X1 _2309_ (
    .A(_213_),
    .B(_214_),
    .C(_215_),
    .Y(_713_)
);

DFFPOSX1 _2482_ (
    .D(_899_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [21])
);

NOR2X1 _2062_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(\u_rf_if.stream_cnt [1]),
    .Y(_33_)
);

AOI21X1 _1753_ (
    .A(_1013_),
    .B(_1040_),
    .C(_1041_),
    .Y(_856_)
);

OAI21X1 _1333_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_584_),
    .C(_550_),
    .Y(_549_)
);

DFFPOSX1 _2538_ (
    .D(_703_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [3])
);

NOR2X1 _2118_ (
    .A(\u_rf_if.read_buf0 [19]),
    .B(_1174_),
    .Y(_69_)
);

NOR2X1 _2291_ (
    .A(_492_),
    .B(_147_),
    .Y(_201_)
);

NOR2X1 _1809_ (
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_1013_),
    .Y(_1085_)
);

NOR2X1 _1982_ (
    .A(_492_),
    .B(_1213_),
    .Y(_796_)
);

AOI22X1 _1562_ (
    .A(_368_),
    .B(_426_),
    .C(_361_),
    .D(_360_),
    .Y(_909_)
);

DFFPOSX1 _2767_ (
    .D(_897_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [19])
);

AOI22X1 _2347_ (
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [7]),
    .Y(_239_)
);

INVX1 _1618_ (
    .A(\u_cpu.bufreg.data [5]),
    .Y(_329_)
);

OAI21X1 _1791_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(_1070_),
    .Y(_1071_)
);

NAND2X1 _1371_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.branch_op ),
    .Y(_511_)
);

DFFSR _2576_ (
    .R(i_rst_n),
    .S(vdd),
    .D(\u_rf_if.i_stream_rs2_en ),
    .CLK(i_clk_sys_ext),
    .Q(current_stream_rs2_hint)
);

AND2X2 _2156_ (
    .A(_94_),
    .B(i_rst_n),
    .Y(_745_)
);

INVX1 _1847_ (
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_1106_)
);

INVX1 _1427_ (
    .A(rreg0[3]),
    .Y(_470_)
);

AOI21X1 _2385_ (
    .A(_262_),
    .B(_261_),
    .C(_263_),
    .Y(_264_)
);

NAND2X1 _1656_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_962_)
);

AOI21X1 _2194_ (
    .A(_1136_),
    .B(_120_),
    .C(_121_),
    .Y(_734_)
);

OAI22X1 _1885_ (
    .A(_1119_),
    .B(_1091_),
    .C(_1125_),
    .D(_1124_),
    .Y(_808_)
);

INVX1 _1465_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_437_)
);

INVX1 _1694_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_995_)
);

MUX2X1 _1274_ (
    .A(_608_),
    .B(_639_),
    .S(_618_),
    .Y(_607_)
);

INVX1 _2479_ (
    .A(_638_),
    .Y(_637_)
);

AND2X2 _2059_ (
    .A(_1184_),
    .B(_30_),
    .Y(_31_)
);

FILL FILL98550x68550 (
);

NOR2X1 _2288_ (
    .A(_141_),
    .B(_175_),
    .Y(_199_)
);

NOR2X1 _1979_ (
    .A(_1212_),
    .B(_1206_),
    .Y(_1213_)
);

AOI21X1 _1559_ (
    .A(_586_),
    .B(_364_),
    .C(_363_),
    .Y(_362_)
);

DFFPOSX1 _2500_ (
    .D(_914_),
    .CLK(i_clk_sys_ext),
    .Q(rf_wreg0_to_if[1])
);

AOI21X1 _2097_ (
    .A(_51_),
    .B(_1175_),
    .C(_55_),
    .Y(_765_)
);

NOR2X1 _1788_ (
    .A(\u_cpu.bufreg2.dlo [4]),
    .B(_1013_),
    .Y(_1069_)
);

NOR2X1 _1368_ (
    .A(_517_),
    .B(_522_),
    .Y(_514_)
);

MUX2X1 _1597_ (
    .A(_341_),
    .B(_340_),
    .S(_597_),
    .Y(_894_)
);

AOI21X1 _2403_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_185_),
    .C(_278_),
    .Y(_279_)
);

DFFPOSX1 _2632_ (
    .D(_766_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [10])
);

NAND3X1 _2212_ (
    .A(_129_),
    .B(_131_),
    .C(_130_),
    .Y(_726_)
);

NAND3X1 _1903_ (
    .A(_1135_),
    .B(_1140_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_1141_)
);

AOI22X1 _2441_ (
    .A(_305_),
    .B(_179_),
    .C(_306_),
    .D(_311_),
    .Y(_677_)
);

AOI21X1 _2021_ (
    .A(_1227_),
    .B(_2_),
    .C(_3_),
    .Y(_789_)
);

MUX2X1 _1712_ (
    .A(_1007_),
    .B(_1009_),
    .S(_968_),
    .Y(_865_)
);

DFFPOSX1 _2670_ (
    .D(_700_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [6])
);

NOR2X1 _2250_ (
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_164_)
);

OAI21X1 _1941_ (
    .A(_1171_),
    .B(_1162_),
    .C(_1176_),
    .Y(_802_)
);

AOI21X1 _1521_ (
    .A(_594_),
    .B(_413_),
    .C(_393_),
    .Y(_917_)
);

DFFPOSX1 _2726_ (
    .D(_857_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [13])
);

NOR2X1 _2306_ (
    .A(_142_),
    .B(_177_),
    .Y(_213_)
);

NAND2X1 _1750_ (
    .A(mem_dbus_ack),
    .B(_1038_),
    .Y(_1039_)
);

OAI21X1 _1330_ (
    .A(_557_),
    .B(_552_),
    .C(_560_),
    .Y(\u_rf_if.i_stream_rs2_en )
);

DFFPOSX1 _2535_ (
    .D(_676_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [30])
);

INVX1 _2115_ (
    .A(\u_rf_if.read_buf0 [20]),
    .Y(_67_)
);

MUX2X1 _1806_ (
    .A(_510_),
    .B(_1082_),
    .S(_968_),
    .Y(_844_)
);

DFFPOSX1 _2764_ (
    .D(_894_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [16])
);

MUX2X1 _2344_ (
    .A(_558_),
    .B(_237_),
    .S(_179_),
    .Y(_700_)
);

MUX2X1 _1615_ (
    .A(_332_),
    .B(_331_),
    .S(_597_),
    .Y(_885_)
);

DFFPOSX1 _2573_ (
    .D(_777_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[1])
);

INVX1 _2153_ (
    .A(_11_),
    .Y(_92_)
);

MUX2X1 _1844_ (
    .A(_1103_),
    .B(_1104_),
    .S(_1091_),
    .Y(_828_)
);

NOR2X1 _1424_ (
    .A(_472_),
    .B(_473_),
    .Y(_935_)
);

DFFPOSX1 _2629_ (
    .D(_764_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [12])
);

NAND2X1 _2209_ (
    .A(\u_rf_if.rreg1_latched [2]),
    .B(_1211_),
    .Y(_129_)
);

NAND2X1 _2382_ (
    .A(_1203_),
    .B(_253_),
    .Y(_261_)
);

OAI21X1 _1653_ (
    .A(_628_),
    .B(_959_),
    .C(_958_),
    .Y(_960_)
);

AOI22X1 _2438_ (
    .A(_194_),
    .B(_308_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [28]),
    .Y(_309_)
);

NOR2X1 _2018_ (
    .A(_1238_),
    .B(_1197_),
    .Y(_1_)
);

NOR2X1 _2191_ (
    .A(_1137_),
    .B(_117_),
    .Y(_119_)
);

INVX1 _1709_ (
    .A(\u_cpu.bufreg2.dlo [21]),
    .Y(_1007_)
);

AOI21X1 _1882_ (
    .A(_1122_),
    .B(_516_),
    .C(_1123_),
    .Y(_809_)
);

OAI21X1 _1462_ (
    .A(mem_ibus_ack),
    .B(_446_),
    .C(_479_),
    .Y(_439_)
);

DFFPOSX1 _2667_ (
    .D(_796_),
    .CLK(i_clk_sys_ext),
    .Q(ren)
);

AOI21X1 _2247_ (
    .A(_157_),
    .B(_161_),
    .C(_158_),
    .Y(_721_)
);

OAI21X1 _1938_ (
    .A(_1172_),
    .B(_1173_),
    .C(_568_),
    .Y(_1174_)
);

AOI21X1 _1518_ (
    .A(_400_),
    .B(_413_),
    .C(_395_),
    .Y(_918_)
);

AOI21X1 _1691_ (
    .A(mem_dbus_ack),
    .B(\u_mem_serial.shift_reg [26]),
    .C(_971_),
    .Y(_993_)
);

NAND2X1 _1271_ (
    .A(_617_),
    .B(_611_),
    .Y(_610_)
);

INVX1 _2476_ (
    .A(\u_cpu.bufreg.data [0]),
    .Y(_640_)
);

AOI21X1 _2056_ (
    .A(_1205_),
    .B(_27_),
    .C(_28_),
    .Y(_779_)
);

NOR2X1 _1747_ (
    .A(\u_cpu.bufreg2.dlo [13]),
    .B(_1013_),
    .Y(_1037_)
);

NAND3X1 _1327_ (
    .A(\u_mem_serial.shift_reg [1]),
    .B(\u_mem_serial.shift_reg [0]),
    .C(_555_),
    .Y(_554_)
);

OAI21X1 _2285_ (
    .A(_141_),
    .B(_193_),
    .C(_196_),
    .Y(_718_)
);

OR2X2 _1976_ (
    .A(_1141_),
    .B(_1201_),
    .Y(_1210_)
);

NOR2X1 _1556_ (
    .A(_367_),
    .B(_366_),
    .Y(_365_)
);

OAI22X1 _2094_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [11]),
    .C(\u_rf_if.read_buf0 [10]),
    .D(_1174_),
    .Y(_54_)
);

AOI21X1 _1785_ (
    .A(_1013_),
    .B(_1065_),
    .C(_1066_),
    .Y(_849_)
);

NOR2X1 _1365_ (
    .A(_518_),
    .B(_519_),
    .Y(_517_)
);

INVX1 _1594_ (
    .A(\u_cpu.bufreg.data [17]),
    .Y(_341_)
);

OAI22X1 _2379_ (
    .A(_1010_),
    .B(_186_),
    .C(_1014_),
    .D(_258_),
    .Y(_259_)
);

INVX1 _2188_ (
    .A(_116_),
    .Y(_117_)
);

AND2X2 _1879_ (
    .A(_1121_),
    .B(_1091_),
    .Y(_810_)
);

NOR2X1 _1459_ (
    .A(_442_),
    .B(_465_),
    .Y(_441_)
);

NAND2X1 _2400_ (
    .A(_108_),
    .B(_139_),
    .Y(_276_)
);

FILL FILL98550x54150 (
);

OAI21X1 _1688_ (
    .A(_983_),
    .B(_989_),
    .C(_618_),
    .Y(_990_)
);

NOR2X1 _1268_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_614_),
    .Y(_613_)
);

INVX1 _1900_ (
    .A(\u_rf_if.issue_idx [1]),
    .Y(_1138_)
);

OAI21X1 _1497_ (
    .A(_415_),
    .B(_414_),
    .C(_468_),
    .Y(_413_)
);

DFFPOSX1 _2723_ (
    .D(_854_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [10])
);

NOR2X1 _2303_ (
    .A(_191_),
    .B(_178_),
    .Y(_211_)
);

DFFPOSX1 _2532_ (
    .D(_945_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

NOR2X1 _2112_ (
    .A(\u_rf_if.read_buf0 [17]),
    .B(_1174_),
    .Y(_65_)
);

INVX1 _1803_ (
    .A(\u_mem_serial.shift_reg [0]),
    .Y(_1080_)
);

DFFPOSX1 _2761_ (
    .D(_891_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [13])
);

AOI22X1 _2341_ (
    .A(\u_cpu.bufreg2.dlo [5]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [4]),
    .Y(_236_)
);

INVX1 _1612_ (
    .A(\u_cpu.bufreg.data [8]),
    .Y(_332_)
);

DFFPOSX1 _2570_ (
    .D(i_clk_sys_ext),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.clk_sys_prev )
);

NOR2X1 _2150_ (
    .A(\u_rf_if.stream_cnt [0]),
    .B(\u_rf_if.stream_active ),
    .Y(_90_)
);

INVX1 _1841_ (
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_1103_)
);

NOR2X1 _1421_ (
    .A(_626_),
    .B(_475_),
    .Y(_474_)
);

DFFPOSX1 _2626_ (
    .D(_761_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [15])
);

AOI21X1 _2206_ (
    .A(_397_),
    .B(_127_),
    .C(_492_),
    .Y(_728_)
);

AND2X2 _1650_ (
    .A(_597_),
    .B(_957_),
    .Y(_875_)
);

OR2X2 _2435_ (
    .A(_1160_),
    .B(_217_),
    .Y(_306_)
);

INVX1 _2015_ (
    .A(_1240_),
    .Y(_1241_)
);

NAND2X1 _1706_ (
    .A(mem_dbus_ack),
    .B(_405_),
    .Y(_1005_)
);

DFFPOSX1 _2664_ (
    .D(_792_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.prefetch_active )
);

INVX1 _2244_ (
    .A(_140_),
    .Y(_159_)
);

INVX1 _1935_ (
    .A(_1170_),
    .Y(_1171_)
);

INVX1 _1515_ (
    .A(_398_),
    .Y(_397_)
);

OR2X2 _2473_ (
    .A(_644_),
    .B(_658_),
    .Y(_643_)
);

OAI21X1 _2053_ (
    .A(_1209_),
    .B(_25_),
    .C(_26_),
    .Y(_780_)
);

INVX1 _1744_ (
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_1034_)
);

OAI21X1 _1324_ (
    .A(_559_),
    .B(_558_),
    .C(mem_ibus_ack),
    .Y(_557_)
);

DFFPOSX1 _2529_ (
    .D(_809_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

NOR2X1 _2109_ (
    .A(_62_),
    .B(_63_),
    .Y(_761_)
);

NOR2X1 _2282_ (
    .A(\u_mem_serial.state [0]),
    .B(_140_),
    .Y(_194_)
);

NAND2X1 _1973_ (
    .A(\u_rf_if.prefetch_active ),
    .B(_1142_),
    .Y(_1207_)
);

INVX1 _1553_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_368_)
);

DFFPOSX1 _2758_ (
    .D(_888_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [10])
);

MUX2X1 _2338_ (
    .A(_494_),
    .B(_234_),
    .S(_179_),
    .Y(_703_)
);

OAI22X1 _2091_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [10]),
    .C(\u_rf_if.read_buf0 [9]),
    .D(_1174_),
    .Y(_52_)
);

MUX2X1 _1609_ (
    .A(_335_),
    .B(_334_),
    .S(_597_),
    .Y(_888_)
);

NAND2X1 _1782_ (
    .A(mem_dbus_ack),
    .B(_556_),
    .Y(_1064_)
);

INVX1 _1362_ (
    .A(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_520_)
);

DFFPOSX1 _2567_ (
    .D(_722_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.req_pending )
);

OAI22X1 _2147_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [30]),
    .C(\u_rf_if.read_buf0 [31]),
    .D(_1171_),
    .Y(_88_)
);

MUX2X1 _1838_ (
    .A(_1100_),
    .B(_1101_),
    .S(_1091_),
    .Y(_831_)
);

OAI21X1 _1418_ (
    .A(mem_ibus_ack),
    .B(_657_),
    .C(_476_),
    .Y(_937_)
);

MUX2X1 _1591_ (
    .A(_344_),
    .B(_343_),
    .S(_597_),
    .Y(_897_)
);

FILL FILL98250x32550 (
);

OAI21X1 _2376_ (
    .A(_251_),
    .B(_254_),
    .C(_255_),
    .Y(_256_)
);

AOI21X1 _1647_ (
    .A(\u_cpu.bufreg.data [2]),
    .B(_629_),
    .C(_955_),
    .Y(_956_)
);

OAI21X1 _2185_ (
    .A(_1138_),
    .B(_113_),
    .C(_114_),
    .Y(_115_)
);

MUX2X1 _1876_ (
    .A(_1118_),
    .B(_1120_),
    .S(_1091_),
    .Y(_812_)
);

NOR2X1 _1456_ (
    .A(_561_),
    .B(_445_),
    .Y(_444_)
);

OAI21X1 _1685_ (
    .A(_972_),
    .B(\u_mem_serial.shift_reg [27]),
    .C(_969_),
    .Y(_988_)
);

INVX1 _1265_ (
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_616_)
);

INVX1 _1494_ (
    .A(rreg1[3]),
    .Y(_416_)
);

DFFPOSX1 _2699_ (
    .D(_876_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

INVX1 _2279_ (
    .A(\u_mem_serial.bit_count [0]),
    .Y(_191_)
);

OAI22X1 _2088_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [9]),
    .C(\u_rf_if.read_buf0 [10]),
    .D(_1171_),
    .Y(_50_)
);

OAI21X1 _1779_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [7]),
    .C(_1061_),
    .Y(_1062_)
);

INVX1 _1359_ (
    .A(\u_cpu.state.cnt_r [2]),
    .Y(_523_)
);

DFFPOSX1 _2720_ (
    .D(_851_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [7])
);

NAND2X1 _2300_ (
    .A(_205_),
    .B(_208_),
    .Y(_209_)
);

INVX1 _1588_ (
    .A(\u_cpu.bufreg.data [20]),
    .Y(_344_)
);

OAI21X1 _1800_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [2]),
    .C(_1077_),
    .Y(_1078_)
);

INVX1 _1397_ (
    .A(i_rst_n),
    .Y(_492_)
);

DFFPOSX1 _2623_ (
    .D(_758_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [18])
);

NAND2X1 _2203_ (
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_561_),
    .Y(_126_)
);

NOR2X1 _2432_ (
    .A(_179_),
    .B(_303_),
    .Y(_304_)
);

INVX1 _2012_ (
    .A(\u_rf_if.o_waddr [1]),
    .Y(_1238_)
);

OAI21X1 _1703_ (
    .A(mem_dbus_ack),
    .B(_1001_),
    .C(_1002_),
    .Y(_1003_)
);

DFFPOSX1 _2661_ (
    .D(_790_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.wdata0_next_phase )
);

AOI21X1 _2241_ (
    .A(_151_),
    .B(\u_mem_serial.req_pending ),
    .C(_140_),
    .Y(_156_)
);

NAND2X1 _1932_ (
    .A(_1167_),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_1168_)
);

INVX1 _1512_ (
    .A(rreg1[1]),
    .Y(_400_)
);

DFFPOSX1 _2717_ (
    .D(_848_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [4])
);

NOR2X1 _2470_ (
    .A(_649_),
    .B(_647_),
    .Y(_646_)
);

AOI21X1 _2050_ (
    .A(_481_),
    .B(_24_),
    .C(_492_),
    .Y(_781_)
);

OAI21X1 _1741_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [15]),
    .C(_1031_),
    .Y(_1032_)
);

NAND2X1 _1321_ (
    .A(current_stream_rs2_hint),
    .B(_561_),
    .Y(_560_)
);

DFFPOSX1 _2526_ (
    .D(_939_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.branch_op )
);

AOI21X1 _2106_ (
    .A(_60_),
    .B(_1170_),
    .C(_61_),
    .Y(_762_)
);

NOR2X1 _1970_ (
    .A(_1191_),
    .B(_1203_),
    .Y(_1204_)
);

AOI22X1 _1550_ (
    .A(_464_),
    .B(_465_),
    .C(_370_),
    .D(_371_),
    .Y(_911_)
);

DFFPOSX1 _2755_ (
    .D(_886_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [8])
);

AOI22X1 _2335_ (
    .A(\u_cpu.bufreg2.dlo [2]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [1]),
    .Y(_233_)
);

INVX1 _1606_ (
    .A(\u_cpu.bufreg.data [11]),
    .Y(_335_)
);

DFFPOSX1 _2564_ (
    .D(_684_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [22])
);

OAI22X1 _2144_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [29]),
    .C(\u_rf_if.read_buf0 [28]),
    .D(_1174_),
    .Y(_86_)
);

INVX1 _1835_ (
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_1100_)
);

INVX1 _1415_ (
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_478_)
);

NOR2X1 _2373_ (
    .A(_252_),
    .B(_1234_),
    .Y(_253_)
);

NAND2X1 _1644_ (
    .A(_951_),
    .B(_952_),
    .Y(_953_)
);

MUX2X1 _2429_ (
    .A(\u_cpu.bufreg.data [3]),
    .B(\u_cpu.ctrl.o_ibus_adr [3]),
    .S(_202_),
    .Y(_301_)
);

NAND2X1 _2009_ (
    .A(_1230_),
    .B(_1235_),
    .Y(_1236_)
);

AOI21X1 _2182_ (
    .A(_111_),
    .B(_112_),
    .C(_1200_),
    .Y(_737_)
);

INVX1 _1873_ (
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_1119_)
);

AOI21X1 _1453_ (
    .A(_452_),
    .B(_465_),
    .C(_447_),
    .Y(_931_)
);

INVX1 _2658_ (
    .A(\u_cpu.decode.opcode [0]),
    .Y(_661_)
);

NOR2X1 _2238_ (
    .A(_140_),
    .B(_145_),
    .Y(_154_)
);

AOI21X1 _1929_ (
    .A(_1140_),
    .B(_1164_),
    .C(_1163_),
    .Y(_1165_)
);

OAI21X1 _1509_ (
    .A(mem_ibus_ack),
    .B(_416_),
    .C(_403_),
    .Y(_402_)
);

OAI21X1 _1682_ (
    .A(_613_),
    .B(_984_),
    .C(_618_),
    .Y(_985_)
);

INVX1 _1262_ (
    .A(_620_),
    .Y(_619_)
);

NOR2X1 _2467_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.branch_op ),
    .Y(_649_)
);

OAI21X1 _2047_ (
    .A(_1145_),
    .B(_21_),
    .C(_22_),
    .Y(_23_)
);

AOI21X1 _1738_ (
    .A(_1013_),
    .B(_1028_),
    .C(_1029_),
    .Y(_859_)
);

OAI21X1 _1318_ (
    .A(_568_),
    .B(_567_),
    .C(_564_),
    .Y(_563_)
);

INVX1 _1491_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .Y(_418_)
);

DFFPOSX1 _2696_ (
    .D(_828_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

OAI22X1 _2276_ (
    .A(\u_mem_serial.state [0]),
    .B(_188_),
    .C(_1086_),
    .D(_186_),
    .Y(_189_)
);

INVX1 _1967_ (
    .A(\u_rf_if.issue_idx [4]),
    .Y(_1201_)
);

OAI21X1 _1547_ (
    .A(mem_ibus_ack),
    .B(\u_cpu.branch_op ),
    .C(_373_),
    .Y(_372_)
);

OAI22X1 _2085_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [8]),
    .C(\u_rf_if.read_buf0 [7]),
    .D(_1174_),
    .Y(_48_)
);

NOR2X1 _1776_ (
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_1013_),
    .Y(_1060_)
);

NOR2X1 _1356_ (
    .A(_527_),
    .B(_595_),
    .Y(_526_)
);

MUX2X1 _1585_ (
    .A(_347_),
    .B(_346_),
    .S(_597_),
    .Y(_900_)
);

MUX2X1 _1394_ (
    .A(_494_),
    .B(_648_),
    .S(mem_ibus_ack),
    .Y(_943_)
);

DFFPOSX1 _2599_ (
    .D(_742_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rcnt [0])
);

AOI21X1 _2179_ (
    .A(_108_),
    .B(_109_),
    .C(_110_),
    .Y(_738_)
);

FILL FILL98550x61350 (
);

FILL FILL98550x28950 (
);

INVX1 _1679_ (
    .A(_618_),
    .Y(_982_)
);

NOR2X1 _1259_ (
    .A(_627_),
    .B(_623_),
    .Y(_622_)
);

DFFPOSX1 _2620_ (
    .D(_757_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [19])
);

AOI21X1 _2200_ (
    .A(_449_),
    .B(_124_),
    .C(_492_),
    .Y(_731_)
);

INVX1 _1488_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .Y(_420_)
);

OAI22X1 _1700_ (
    .A(_994_),
    .B(_969_),
    .C(_1000_),
    .D(_999_),
    .Y(_868_)
);

OAI21X1 _1297_ (
    .A(_590_),
    .B(_587_),
    .C(_585_),
    .Y(_584_)
);

DFFPOSX1 _2714_ (
    .D(_845_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [1])
);

DFFPOSX1 _2523_ (
    .D(_936_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.cnt_r [2])
);

NOR2X1 _2103_ (
    .A(_58_),
    .B(_59_),
    .Y(_763_)
);

DFFPOSX1 _2752_ (
    .D(_883_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [5])
);

AOI21X1 _2332_ (
    .A(_1080_),
    .B(_179_),
    .C(_231_),
    .Y(_706_)
);

MUX2X1 _1603_ (
    .A(_338_),
    .B(_337_),
    .S(_597_),
    .Y(_891_)
);

DFFPOSX1 _2561_ (
    .D(_719_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [31])
);

OAI22X1 _2141_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [28]),
    .C(\u_rf_if.read_buf0 [29]),
    .D(_1171_),
    .Y(_84_)
);

MUX2X1 _1832_ (
    .A(_1097_),
    .B(_1098_),
    .S(_1091_),
    .Y(_834_)
);

MUX2X1 _1412_ (
    .A(_558_),
    .B(_655_),
    .S(mem_ibus_ack),
    .Y(_939_)
);

DFFPOSX1 _2617_ (
    .D(_754_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [22])
);

MUX2X1 _2370_ (
    .A(_1014_),
    .B(_250_),
    .S(_179_),
    .Y(_687_)
);

AOI21X1 _1641_ (
    .A(\u_cpu.decode.opcode [1]),
    .B(\u_cpu.branch_op ),
    .C(_949_),
    .Y(_950_)
);

AOI22X1 _2426_ (
    .A(_293_),
    .B(_179_),
    .C(_294_),
    .D(_298_),
    .Y(_679_)
);

OR2X2 _2006_ (
    .A(_1232_),
    .B(_1231_),
    .Y(_1233_)
);

INVX1 _1870_ (
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_1117_)
);

INVX1 _1450_ (
    .A(_450_),
    .Y(_449_)
);

DFFPOSX1 _2655_ (
    .D(_801_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rs2_stream_buf [1])
);

OAI21X1 _2235_ (
    .A(_492_),
    .B(_147_),
    .C(_150_),
    .Y(_151_)
);

NAND2X1 _1926_ (
    .A(rf_shared_rdata[0]),
    .B(_1161_),
    .Y(_1162_)
);

INVX1 _1506_ (
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_405_)
);

NOR2X1 _2464_ (
    .A(_657_),
    .B(_653_),
    .Y(_652_)
);

NOR2X1 _2044_ (
    .A(_20_),
    .B(_18_),
    .Y(_783_)
);

NAND2X1 _1735_ (
    .A(mem_dbus_ack),
    .B(_445_),
    .Y(_1027_)
);

NOR2X1 _1315_ (
    .A(_568_),
    .B(_567_),
    .Y(_566_)
);

DFFPOSX1 _2693_ (
    .D(_825_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

INVX1 _2273_ (
    .A(_185_),
    .Y(_186_)
);

NAND3X1 _1964_ (
    .A(\u_rf_if.pending_read ),
    .B(_1163_),
    .C(_1198_),
    .Y(_1199_)
);

OAI21X1 _1544_ (
    .A(_561_),
    .B(_376_),
    .C(_375_),
    .Y(_912_)
);

DFFPOSX1 _2749_ (
    .D(_880_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [2])
);

OAI21X1 _2329_ (
    .A(\u_mem_serial.active_we ),
    .B(i_mem_miso),
    .C(_228_),
    .Y(_229_)
);

OAI22X1 _2082_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [7]),
    .C(\u_rf_if.read_buf0 [8]),
    .D(_1171_),
    .Y(_46_)
);

INVX1 _1773_ (
    .A(\u_mem_serial.shift_reg [7]),
    .Y(_1057_)
);

NOR2X1 _1353_ (
    .A(_531_),
    .B(_530_),
    .Y(_529_)
);

DFFPOSX1 _2558_ (
    .D(_717_),
    .CLK(i_clk_fast),
    .Q(rf_shared_rdata[1])
);

OAI22X1 _2138_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [27]),
    .C(\u_rf_if.read_buf0 [26]),
    .D(_1174_),
    .Y(_82_)
);

INVX1 _1829_ (
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1097_)
);

AOI21X1 _1409_ (
    .A(_621_),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_rf_if.ready_pulse ),
    .Y(_480_)
);

INVX1 _1582_ (
    .A(\u_cpu.bufreg.data [23]),
    .Y(_347_)
);

AOI22X1 _2367_ (
    .A(\u_cpu.bufreg2.dlo [18]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [17]),
    .Y(_249_)
);

NOR2X1 _1638_ (
    .A(_584_),
    .B(_724_),
    .Y(_805_)
);

NOR2X1 _1391_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(mem_ibus_ack),
    .Y(_495_)
);

NAND2X1 _2596_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(_660_),
    .Y(_659_)
);

INVX1 _2176_ (
    .A(\u_rf_if.o_waddr [2]),
    .Y(_108_)
);

INVX1 _1867_ (
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_1116_)
);

INVX1 _1447_ (
    .A(rreg0[1]),
    .Y(_452_)
);

MUX2X1 _1676_ (
    .A(_979_),
    .B(\u_mem_serial.shift_reg [28]),
    .S(_972_),
    .Y(_980_)
);

NAND2X1 _1256_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.state.o_cnt [2]),
    .Y(_625_)
);

INVX1 _1485_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .Y(_422_)
);

OAI21X1 _1294_ (
    .A(_589_),
    .B(_588_),
    .C(_621_),
    .Y(_587_)
);

DFFPOSX1 _2499_ (
    .D(_913_),
    .CLK(i_clk_sys_ext),
    .Q(rf_wreg0_to_if[0])
);

OAI22X1 _2079_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [6]),
    .C(\u_rf_if.read_buf0 [7]),
    .D(_1171_),
    .Y(_44_)
);

DFFPOSX1 _2711_ (
    .D(_842_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

INVX1 _1999_ (
    .A(\u_rf_if.o_waddr [0]),
    .Y(_1226_)
);

MUX2X1 _1579_ (
    .A(_350_),
    .B(_349_),
    .S(_597_),
    .Y(_903_)
);

DFFPOSX1 _2520_ (
    .D(_933_),
    .CLK(i_clk_sys_ext),
    .Q(rreg0[3])
);

AOI21X1 _2100_ (
    .A(_56_),
    .B(_1170_),
    .C(_57_),
    .Y(_764_)
);

OAI21X1 _1388_ (
    .A(mem_ibus_ack),
    .B(_546_),
    .C(_497_),
    .Y(_946_)
);

INVX1 _1600_ (
    .A(\u_cpu.bufreg.data [14]),
    .Y(_338_)
);

DFFPOSX1 _2614_ (
    .D(_751_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [25])
);

AOI22X1 _2423_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [26]),
    .Y(_296_)
);

NOR2X1 _2003_ (
    .A(_1225_),
    .B(_1229_),
    .Y(_1230_)
);

DFFPOSX1 _2652_ (
    .D(_672_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.init_done )
);

NAND2X1 _2232_ (
    .A(i_rst_n),
    .B(_600_),
    .Y(_148_)
);

NOR2X1 _1923_ (
    .A(ren),
    .B(_392_),
    .Y(_1159_)
);

NOR2X1 _1503_ (
    .A(_408_),
    .B(_413_),
    .Y(_407_)
);

DFFPOSX1 _2708_ (
    .D(_839_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

NOR2X1 _2461_ (
    .A(mem_ibus_ack),
    .B(_622_),
    .Y(_326_)
);

NOR2X1 _2041_ (
    .A(_17_),
    .B(\u_cpu.o_wdata0 ),
    .Y(_18_)
);

OAI21X1 _1732_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [17]),
    .C(_1024_),
    .Y(_1025_)
);

INVX1 _1312_ (
    .A(_570_),
    .Y(_569_)
);

DFFPOSX1 _2517_ (
    .D(_930_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.csr_imm )
);

DFFPOSX1 _2690_ (
    .D(_822_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

INVX1 _2270_ (
    .A(_182_),
    .Y(_183_)
);

NAND2X1 _1961_ (
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_561_),
    .Y(_1195_)
);

OAI21X1 _1541_ (
    .A(_380_),
    .B(_378_),
    .C(_377_),
    .Y(_913_)
);

DFFPOSX1 _2746_ (
    .D(_877_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [30])
);

OAI21X1 _2326_ (
    .A(_510_),
    .B(_180_),
    .C(\u_mem_serial.active_we ),
    .Y(_226_)
);

NAND2X1 _1770_ (
    .A(mem_dbus_ack),
    .B(_1054_),
    .Y(_1055_)
);

NAND3X1 _1350_ (
    .A(_546_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_533_),
    .Y(_532_)
);

DFFPOSX1 _2555_ (
    .D(_715_),
    .CLK(i_clk_fast),
    .Q(mem_ibus_ack)
);

OAI22X1 _2135_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [26]),
    .C(\u_rf_if.read_buf0 [27]),
    .D(_1171_),
    .Y(_80_)
);

MUX2X1 _1826_ (
    .A(_1094_),
    .B(_1095_),
    .S(_1091_),
    .Y(_837_)
);

AOI21X1 _1406_ (
    .A(_491_),
    .B(_484_),
    .C(mem_dbus_ack),
    .Y(_483_)
);

MUX2X1 _2364_ (
    .A(_451_),
    .B(_247_),
    .S(_179_),
    .Y(_690_)
);

INVX1 _1635_ (
    .A(_575_),
    .Y(_670_)
);

DFFPOSX1 _2593_ (
    .D(_738_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.o_waddr [2])
);

AOI21X1 _2173_ (
    .A(_1226_),
    .B(_1241_),
    .C(_106_),
    .Y(_740_)
);

MUX2X1 _1864_ (
    .A(_1113_),
    .B(_1114_),
    .S(_1091_),
    .Y(_818_)
);

OAI21X1 _1444_ (
    .A(mem_ibus_ack),
    .B(_470_),
    .C(_455_),
    .Y(_454_)
);

DFFPOSX1 _2649_ (
    .D(_783_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf1 )
);

NAND2X1 _2229_ (
    .A(_141_),
    .B(_144_),
    .Y(_145_)
);

AND2X2 _1673_ (
    .A(_612_),
    .B(\u_cpu.bufreg2.dhi [4]),
    .Y(_977_)
);

INVX1 _1253_ (
    .A(_629_),
    .Y(_628_)
);

AOI21X1 _2458_ (
    .A(_324_),
    .B(_320_),
    .C(_492_),
    .Y(_673_)
);

NAND2X1 _2038_ (
    .A(\u_rf_if.read_buf0 [31]),
    .B(_1175_),
    .Y(_16_)
);

NOR2X1 _1729_ (
    .A(\u_cpu.bufreg2.dlo [17]),
    .B(_1013_),
    .Y(_1023_)
);

NOR2X1 _1309_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_572_)
);

INVX1 _1482_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .Y(_424_)
);

DFFPOSX1 _2687_ (
    .D(_819_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

NAND3X1 _2267_ (
    .A(\u_mem_serial.bit_count [5]),
    .B(\u_mem_serial.bit_count [0]),
    .C(_172_),
    .Y(_180_)
);

AOI21X1 _1958_ (
    .A(_1189_),
    .B(_1188_),
    .C(_1192_),
    .Y(_801_)
);

AOI21X1 _1538_ (
    .A(_389_),
    .B(_380_),
    .C(_379_),
    .Y(_914_)
);

AOI21X1 _1291_ (
    .A(_591_),
    .B(_593_),
    .C(_594_),
    .Y(_590_)
);

DFFPOSX1 _2496_ (
    .D(_942_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.opcode [0])
);

AOI21X1 _2076_ (
    .A(_41_),
    .B(_1170_),
    .C(_42_),
    .Y(_773_)
);

NOR2X1 _1767_ (
    .A(\u_cpu.bufreg2.dlo [9]),
    .B(_1013_),
    .Y(_1053_)
);

AND2X2 _1347_ (
    .A(_549_),
    .B(_566_),
    .Y(_535_)
);

NAND2X1 _1996_ (
    .A(\u_rf_if.write_wait [1]),
    .B(_1223_),
    .Y(_1224_)
);

INVX1 _1576_ (
    .A(\u_cpu.bufreg.data [26]),
    .Y(_350_)
);

NAND2X1 _1385_ (
    .A(\u_mem_serial.shift_reg [13]),
    .B(mem_ibus_ack),
    .Y(_498_)
);

MUX2X1 _2399_ (
    .A(_411_),
    .B(_275_),
    .S(_179_),
    .Y(_683_)
);

DFFPOSX1 _2611_ (
    .D(_748_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [28])
);

INVX1 _1899_ (
    .A(\u_rf_if.issue_idx [2]),
    .Y(_1137_)
);

OAI21X1 _1479_ (
    .A(mem_ibus_ack),
    .B(_602_),
    .C(_427_),
    .Y(_426_)
);

INVX1 _2420_ (
    .A(\u_mem_serial.shift_reg [27]),
    .Y(_293_)
);

INVX1 _2000_ (
    .A(\u_rf_if.o_waddr [3]),
    .Y(_1227_)
);

NOR2X1 _1288_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_593_)
);

NOR2X1 _1920_ (
    .A(_1152_),
    .B(_1155_),
    .Y(_1156_)
);

NOR2X1 _1500_ (
    .A(_561_),
    .B(_411_),
    .Y(_410_)
);

DFFPOSX1 _2705_ (
    .D(_836_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

DFFPOSX1 _2514_ (
    .D(_927_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

DFFPOSX1 _2743_ (
    .D(_873_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dhi [6])
);

NOR2X1 _2323_ (
    .A(i_mem_miso),
    .B(_200_),
    .Y(_225_)
);

DFFPOSX1 _2552_ (
    .D(_713_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [5])
);

NOR2X1 _2132_ (
    .A(\u_rf_if.read_buf0 [24]),
    .B(_1174_),
    .Y(_78_)
);

INVX1 _1823_ (
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1094_)
);

NOR2X1 _1403_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_656_),
    .Y(_486_)
);

DFFPOSX1 _2608_ (
    .D(_781_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.write_wait [1])
);

AOI22X1 _2361_ (
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [14]),
    .Y(_246_)
);

MUX2X1 _1632_ (
    .A(_668_),
    .B(_352_),
    .S(_597_),
    .Y(_878_)
);

OAI22X1 _2417_ (
    .A(_616_),
    .B(_186_),
    .C(_280_),
    .D(_258_),
    .Y(_291_)
);

DFFPOSX1 _2590_ (
    .D(_691_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [15])
);

NAND2X1 _2170_ (
    .A(_103_),
    .B(_104_),
    .Y(_105_)
);

INVX1 _1861_ (
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_1113_)
);

INVX1 _1441_ (
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_457_)
);

DFFPOSX1 _2646_ (
    .D(_793_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[3])
);

INVX1 _2226_ (
    .A(\u_mem_serial.state [0]),
    .Y(_142_)
);

NOR2X1 _1917_ (
    .A(ren),
    .B(_383_),
    .Y(_1153_)
);

AOI21X1 _1670_ (
    .A(mem_dbus_ack),
    .B(\u_mem_serial.shift_reg [29]),
    .C(_971_),
    .Y(_975_)
);

OAI21X1 _1250_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bne_or_bge ),
    .C(_632_),
    .Y(_631_)
);

OAI21X1 _2455_ (
    .A(\u_cpu.bne_or_bge ),
    .B(_1134_),
    .C(_661_),
    .Y(_322_)
);

NAND2X1 _2035_ (
    .A(i_rst_n),
    .B(_10_),
    .Y(_14_)
);

AOI21X1 _1726_ (
    .A(_1013_),
    .B(_1019_),
    .C(_1020_),
    .Y(_862_)
);

NOR2X1 _1306_ (
    .A(_580_),
    .B(_576_),
    .Y(_575_)
);

DFFPOSX1 _2684_ (
    .D(_816_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

AND2X2 _2264_ (
    .A(_176_),
    .B(_175_),
    .Y(_177_)
);

NOR2X1 _1955_ (
    .A(\u_rf_if.stream_cnt [0]),
    .B(_568_),
    .Y(_1190_)
);

AOI21X1 _1535_ (
    .A(_384_),
    .B(_392_),
    .C(_381_),
    .Y(_915_)
);

DFFPOSX1 _2493_ (
    .D(_908_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[4])
);

AOI21X1 _2073_ (
    .A(_39_),
    .B(_1170_),
    .C(_40_),
    .Y(_774_)
);

INVX1 _1764_ (
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_1050_)
);

OR2X2 _1344_ (
    .A(_539_),
    .B(_562_),
    .Y(_538_)
);

DFFPOSX1 _2549_ (
    .D(_710_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [3])
);

INVX1 _2129_ (
    .A(\u_rf_if.read_buf0 [25]),
    .Y(_76_)
);

NOR2X1 _1993_ (
    .A(_492_),
    .B(_482_),
    .Y(_1221_)
);

MUX2X1 _1573_ (
    .A(_352_),
    .B(_353_),
    .S(_597_),
    .Y(_906_)
);

MUX2X1 _2358_ (
    .A(_1034_),
    .B(_244_),
    .S(_179_),
    .Y(_693_)
);

OAI21X1 _1629_ (
    .A(_629_),
    .B(_665_),
    .C(_666_),
    .Y(_667_)
);

OAI21X1 _1382_ (
    .A(_511_),
    .B(_512_),
    .C(_501_),
    .Y(_500_)
);

DFFPOSX1 _2587_ (
    .D(_735_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [2])
);

NOR2X1 _2167_ (
    .A(\u_rf_if.rcnt [0]),
    .B(_102_),
    .Y(_742_)
);

MUX2X1 _1858_ (
    .A(_1110_),
    .B(_1111_),
    .S(_1091_),
    .Y(_821_)
);

NOR2X1 _1438_ (
    .A(_460_),
    .B(_465_),
    .Y(_459_)
);

OAI21X1 _2396_ (
    .A(_139_),
    .B(raddr[1]),
    .C(_272_),
    .Y(_273_)
);

INVX1 _1667_ (
    .A(mem_dbus_ack),
    .Y(_972_)
);

INVX1 _1247_ (
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_634_)
);

MUX2X1 _1896_ (
    .A(_1134_),
    .B(_531_),
    .S(_602_),
    .Y(_806_)
);

AOI21X1 _1476_ (
    .A(_431_),
    .B(_465_),
    .C(_429_),
    .Y(_926_)
);

INVX1 _1285_ (
    .A(_597_),
    .Y(_596_)
);

DFFPOSX1 _2702_ (
    .D(_833_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

INVX1 _2299_ (
    .A(_202_),
    .Y(_208_)
);

DFFPOSX1 _2511_ (
    .D(_808_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

FILL FILL98550x21750 (
);

NAND2X1 _1799_ (
    .A(mem_dbus_ack),
    .B(_1076_),
    .Y(_1077_)
);

INVX1 _1379_ (
    .A(_504_),
    .Y(_503_)
);

DFFPOSX1 _2740_ (
    .D(_870_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dhi [3])
);

AOI22X1 _2320_ (
    .A(_163_),
    .B(_223_),
    .C(_167_),
    .D(_169_),
    .Y(_710_)
);

MUX2X1 _1820_ (
    .A(_1089_),
    .B(_1092_),
    .S(_1091_),
    .Y(_840_)
);

NAND3X1 _1400_ (
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_601_),
    .Y(_489_)
);

DFFPOSX1 _2605_ (
    .D(_787_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rtrig1 )
);

NAND2X1 _2414_ (
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .B(_142_),
    .Y(_288_)
);

DFFPOSX1 _2643_ (
    .D(_775_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [1])
);

INVX1 _2223_ (
    .A(ren),
    .Y(_139_)
);

NOR2X1 _1914_ (
    .A(ren),
    .B(_589_),
    .Y(_1150_)
);

NOR2X1 _2452_ (
    .A(_523_),
    .B(_492_),
    .Y(_674_)
);

NOR2X1 _2032_ (
    .A(_1179_),
    .B(_568_),
    .Y(_11_)
);

NAND2X1 _1723_ (
    .A(mem_dbus_ack),
    .B(_463_),
    .Y(_1018_)
);

INVX1 _1303_ (
    .A(_579_),
    .Y(_578_)
);

DFFPOSX1 _2508_ (
    .D(_922_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

DFFPOSX1 _2681_ (
    .D(_813_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

OAI21X1 _2261_ (
    .A(_162_),
    .B(_168_),
    .C(_174_),
    .Y(_720_)
);

OAI21X1 _1952_ (
    .A(_1179_),
    .B(_1186_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_1187_)
);

INVX1 _1532_ (
    .A(rf_wreg0_to_if[2]),
    .Y(_383_)
);

DFFPOSX1 _2737_ (
    .D(_868_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

NAND2X1 _2317_ (
    .A(\u_mem_serial.bit_count [3]),
    .B(\u_mem_serial.state [0]),
    .Y(_221_)
);

DFFPOSX1 _2490_ (
    .D(_906_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [28])
);

OAI21X1 _2070_ (
    .A(_37_),
    .B(_1174_),
    .C(_38_),
    .Y(_775_)
);

OAI21X1 _1761_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [11]),
    .C(_1047_),
    .Y(_1048_)
);

NAND2X1 _1341_ (
    .A(_542_),
    .B(_548_),
    .Y(_541_)
);

DFFPOSX1 _2546_ (
    .D(_708_),
    .CLK(i_clk_fast),
    .Q(rf_shared_rdata[0])
);

NOR2X1 _2126_ (
    .A(_73_),
    .B(_74_),
    .Y(_755_)
);

NOR2X1 _1817_ (
    .A(_601_),
    .B(_628_),
    .Y(_1091_)
);

OAI21X1 _1990_ (
    .A(raddr[3]),
    .B(_1218_),
    .C(_1219_),
    .Y(_1220_)
);

OAI21X1 _1570_ (
    .A(_385_),
    .B(_357_),
    .C(_354_),
    .Y(_907_)
);

AOI22X1 _2355_ (
    .A(\u_cpu.bufreg2.dlo [12]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [11]),
    .Y(_243_)
);

INVX1 _1626_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_664_)
);

NOR2X1 _2584_ (
    .A(_656_),
    .B(_655_),
    .Y(_654_)
);

OAI21X1 _2164_ (
    .A(_29_),
    .B(_100_),
    .C(i_rst_n),
    .Y(_101_)
);

INVX1 _1855_ (
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_1110_)
);

NOR2X1 _1435_ (
    .A(_561_),
    .B(_463_),
    .Y(_462_)
);

AOI21X1 _2393_ (
    .A(\u_mem_serial.shift_reg [21]),
    .B(_184_),
    .C(_270_),
    .Y(_271_)
);

MUX2X1 _1664_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .S(mem_dbus_ack),
    .Y(_970_)
);

BUFX2 _1244_ (
    .A(_1194_),
    .Y(o_mem_sck)
);

AOI22X1 _2449_ (
    .A(_312_),
    .B(_179_),
    .C(_318_),
    .D(_316_),
    .Y(_676_)
);

OAI21X1 _2029_ (
    .A(_1179_),
    .B(_1186_),
    .C(\u_rf_if.stream_active ),
    .Y(_9_)
);

AND2X2 _1893_ (
    .A(_1126_),
    .B(_1130_),
    .Y(_1132_)
);

INVX1 _1473_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_431_)
);

DFFPOSX1 _2678_ (
    .D(_807_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.alu.add_cy_r )
);

NOR2X1 _2258_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_171_),
    .Y(_172_)
);

NAND2X1 _1949_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1183_),
    .Y(_1184_)
);

MUX2X1 _1529_ (
    .A(_392_),
    .B(_386_),
    .S(_389_),
    .Y(_916_)
);

NOR2X1 _1282_ (
    .A(_600_),
    .B(_601_),
    .Y(_599_)
);

DFFPOSX1 _2487_ (
    .D(_903_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [25])
);

OAI21X1 _2067_ (
    .A(_567_),
    .B(_1174_),
    .C(_36_),
    .Y(_776_)
);

AOI21X1 _1758_ (
    .A(_1013_),
    .B(_1044_),
    .C(_1045_),
    .Y(_855_)
);

NOR2X1 _1338_ (
    .A(\u_cpu.branch_op ),
    .B(_545_),
    .Y(_544_)
);

NAND2X1 _2296_ (
    .A(_205_),
    .B(_202_),
    .Y(_206_)
);

OAI21X1 _1987_ (
    .A(_1209_),
    .B(_1216_),
    .C(_1217_),
    .Y(_794_)
);

NOR2X1 _1567_ (
    .A(_356_),
    .B(_413_),
    .Y(_355_)
);

NOR2X1 _1796_ (
    .A(\u_cpu.bufreg2.dlo [2]),
    .B(_1013_),
    .Y(_1075_)
);

AOI21X1 _1376_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_640_),
    .Y(_506_)
);

NOR2X1 _2602_ (
    .A(\u_cpu.branch_op ),
    .B(_661_),
    .Y(_660_)
);

NAND2X1 _2199_ (
    .A(\u_rf_if.rreg0_latched [1]),
    .B(_561_),
    .Y(_124_)
);

AOI21X1 _2411_ (
    .A(\u_mem_serial.shift_reg [24]),
    .B(_184_),
    .C(_285_),
    .Y(_286_)
);

OAI21X1 _1699_ (
    .A(_972_),
    .B(\u_mem_serial.shift_reg [25]),
    .C(_969_),
    .Y(_1000_)
);

NAND2X1 _1279_ (
    .A(_604_),
    .B(_603_),
    .Y(_602_)
);

DFFPOSX1 _2640_ (
    .D(_772_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [4])
);

INVX1 _2220_ (
    .A(_1196_),
    .Y(_138_)
);

INVX1 _1911_ (
    .A(_1146_),
    .Y(_1147_)
);

OAI21X1 _1720_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [20]),
    .C(_1015_),
    .Y(_1016_)
);

AOI22X1 _1300_ (
    .A(_583_),
    .B(_582_),
    .C(_595_),
    .D(_659_),
    .Y(_581_)
);

DFFPOSX1 _2505_ (
    .D(_919_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[2])
);

DFFPOSX1 _2734_ (
    .D(_865_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [21])
);

OAI21X1 _2314_ (
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .C(\u_mem_serial.state [0]),
    .Y(_219_)
);

DFFPOSX1 _2543_ (
    .D(_680_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [26])
);

AOI21X1 _2123_ (
    .A(_71_),
    .B(_1170_),
    .C(_72_),
    .Y(_756_)
);

MUX2X1 _1814_ (
    .A(_1088_),
    .B(_1086_),
    .S(_969_),
    .Y(_842_)
);

MUX2X1 _2352_ (
    .A(_1046_),
    .B(_241_),
    .S(_179_),
    .Y(_696_)
);

MUX2X1 _1623_ (
    .A(_328_),
    .B(_662_),
    .S(_597_),
    .Y(_881_)
);

NOR2X1 _2408_ (
    .A(_521_),
    .B(_195_),
    .Y(_283_)
);

DFFPOSX1 _2581_ (
    .D(_732_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg0_latched [0])
);

NOR2X1 _2161_ (
    .A(_1181_),
    .B(_96_),
    .Y(_98_)
);

MUX2X1 _1852_ (
    .A(_1107_),
    .B(_1108_),
    .S(_1091_),
    .Y(_824_)
);

OAI21X1 _1432_ (
    .A(_467_),
    .B(_466_),
    .C(_468_),
    .Y(_465_)
);

DFFPOSX1 _2637_ (
    .D(_770_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [6])
);

OAI21X1 _2217_ (
    .A(_132_),
    .B(_134_),
    .C(_135_),
    .Y(_136_)
);

NAND2X1 _2390_ (
    .A(_1226_),
    .B(_139_),
    .Y(_268_)
);

AOI21X1 _1908_ (
    .A(_626_),
    .B(_475_),
    .C(_1144_),
    .Y(_803_)
);

OAI21X1 _1661_ (
    .A(_963_),
    .B(_964_),
    .C(_966_),
    .Y(_967_)
);

NAND2X1 _2446_ (
    .A(_142_),
    .B(_315_),
    .Y(_316_)
);

NAND2X1 _2026_ (
    .A(_7_),
    .B(_1148_),
    .Y(_8_)
);

INVX1 _1717_ (
    .A(_968_),
    .Y(_1013_)
);

OAI21X1 _1890_ (
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(_1129_)
);

OAI21X1 _1470_ (
    .A(mem_ibus_ack),
    .B(_437_),
    .C(_497_),
    .Y(_433_)
);

DFFPOSX1 _2675_ (
    .D(_803_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.o_cnt [2])
);

INVX1 _2255_ (
    .A(\u_mem_serial.bit_count [3]),
    .Y(_169_)
);

INVX1 _1946_ (
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_1181_)
);

INVX1 _1526_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_388_)
);

DFFPOSX1 _2484_ (
    .D(_900_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [22])
);

AOI22X1 _2064_ (
    .A(_1206_),
    .B(_34_),
    .C(_1213_),
    .D(raddr[1]),
    .Y(_35_)
);

NAND2X1 _1755_ (
    .A(mem_dbus_ack),
    .B(_1042_),
    .Y(_1043_)
);

INVX1 _1335_ (
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_547_)
);

NOR2X1 _2293_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_191_),
    .Y(_203_)
);

NOR2X1 _1984_ (
    .A(_1215_),
    .B(_1200_),
    .Y(_795_)
);

NOR2X1 _1564_ (
    .A(mem_ibus_ack),
    .B(_418_),
    .Y(_358_)
);

AOI22X1 _2349_ (
    .A(\u_cpu.bufreg2.dlo [9]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [8]),
    .Y(_240_)
);

AOI21X1 _1793_ (
    .A(_1013_),
    .B(_1071_),
    .C(_1072_),
    .Y(_847_)
);

AOI21X1 _1373_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(\u_cpu.bufreg.data [0]),
    .Y(_509_)
);

DFFPOSX1 _2578_ (
    .D(_688_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [18])
);

INVX1 _2158_ (
    .A(_95_),
    .Y(_96_)
);

INVX1 _1849_ (
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_1107_)
);

INVX1 _1429_ (
    .A(_469_),
    .Y(_468_)
);

OAI22X1 _2387_ (
    .A(_1007_),
    .B(_186_),
    .C(_478_),
    .D(_258_),
    .Y(_266_)
);

OAI21X1 _1658_ (
    .A(_627_),
    .B(_664_),
    .C(_637_),
    .Y(_964_)
);

AND2X2 _2196_ (
    .A(_122_),
    .B(_114_),
    .Y(_733_)
);

NOR2X1 _1887_ (
    .A(_601_),
    .B(_1126_),
    .Y(_1127_)
);

NOR2X1 _1467_ (
    .A(_436_),
    .B(_465_),
    .Y(_435_)
);

OAI21X1 _1696_ (
    .A(_615_),
    .B(_996_),
    .C(_618_),
    .Y(_997_)
);

OAI21X1 _1276_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_607_),
    .C(_606_),
    .Y(_605_)
);

DFFPOSX1 _2502_ (
    .D(_916_),
    .CLK(i_clk_sys_ext),
    .Q(rf_wreg0_to_if[3])
);

OAI22X1 _2099_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [13]),
    .C(\u_rf_if.read_buf0 [12]),
    .D(_1174_),
    .Y(_57_)
);

DFFPOSX1 _2731_ (
    .D(_862_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [18])
);

NOR2X1 _2311_ (
    .A(\u_mem_serial.state [0]),
    .B(_159_),
    .Y(_216_)
);

MUX2X1 _1599_ (
    .A(_340_),
    .B(_339_),
    .S(_597_),
    .Y(_893_)
);

DFFPOSX1 _2540_ (
    .D(_704_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [2])
);

NOR2X1 _2120_ (
    .A(_69_),
    .B(_70_),
    .Y(_757_)
);

INVX1 _1811_ (
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_1086_)
);

INVX1 _1620_ (
    .A(\u_cpu.bufreg.data [4]),
    .Y(_328_)
);

INVX1 _2405_ (
    .A(\u_mem_serial.shift_reg [25]),
    .Y(_280_)
);

DFFPOSX1 _2634_ (
    .D(_768_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [8])
);

NOR2X1 _2214_ (
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_1177_),
    .Y(_133_)
);

NAND2X1 _1905_ (
    .A(i_rst_n),
    .B(\u_rf_if.prefetch_active ),
    .Y(_1143_)
);

NOR2X1 _2443_ (
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_202_),
    .Y(_313_)
);

NAND3X1 _2023_ (
    .A(_383_),
    .B(_380_),
    .C(_589_),
    .Y(_5_)
);

NAND2X1 _1714_ (
    .A(mem_dbus_ack),
    .B(_478_),
    .Y(_1011_)
);

DFFPOSX1 _2672_ (
    .D(_675_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

NOR2X1 _2252_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(_165_),
    .Y(_166_)
);

INVX1 _1943_ (
    .A(_1177_),
    .Y(_1178_)
);

OAI21X1 _1523_ (
    .A(_660_),
    .B(_591_),
    .C(_656_),
    .Y(_391_)
);

DFFPOSX1 _2728_ (
    .D(_859_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [15])
);

NAND3X1 _2308_ (
    .A(\u_mem_serial.bit_count [5]),
    .B(_174_),
    .C(_210_),
    .Y(_215_)
);

DFFPOSX1 _2481_ (
    .D(_898_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [20])
);

OAI21X1 _2061_ (
    .A(_1137_),
    .B(_1209_),
    .C(_32_),
    .Y(_778_)
);

NOR2X1 _1752_ (
    .A(\u_cpu.bufreg2.dlo [12]),
    .B(_1013_),
    .Y(_1041_)
);

NAND3X1 _1332_ (
    .A(\u_rf_if.rs2_stream_buf [0]),
    .B(_551_),
    .C(\u_rf_if.i_stream_rs2_en ),
    .Y(_550_)
);

DFFPOSX1 _2537_ (
    .D(_677_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [29])
);

AOI21X1 _2117_ (
    .A(_67_),
    .B(_1170_),
    .C(_68_),
    .Y(_758_)
);

MUX2X1 _2290_ (
    .A(_197_),
    .B(_198_),
    .S(_200_),
    .Y(_717_)
);

OAI21X1 _1808_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(mem_dbus_ack),
    .C(_1083_),
    .Y(_1084_)
);

OAI21X1 _1981_ (
    .A(_1202_),
    .B(_1209_),
    .C(_1214_),
    .Y(_797_)
);

AOI21X1 _1561_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [30]),
    .C(_426_),
    .Y(_360_)
);

DFFPOSX1 _2766_ (
    .D(_896_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [18])
);

MUX2X1 _2346_ (
    .A(_1057_),
    .B(_238_),
    .S(_179_),
    .Y(_699_)
);

MUX2X1 _1617_ (
    .A(_331_),
    .B(_330_),
    .S(_597_),
    .Y(_884_)
);

NAND2X1 _1790_ (
    .A(mem_dbus_ack),
    .B(_494_),
    .Y(_1070_)
);

INVX1 _1370_ (
    .A(_513_),
    .Y(_512_)
);

DFFPOSX1 _2575_ (
    .D(_729_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg1_latched [0])
);

OAI21X1 _2155_ (
    .A(\u_rf_if.stream_cnt [1]),
    .B(_92_),
    .C(_93_),
    .Y(_94_)
);

MUX2X1 _1846_ (
    .A(_1104_),
    .B(_1105_),
    .S(_1091_),
    .Y(_827_)
);

OAI21X1 _1426_ (
    .A(mem_ibus_ack),
    .B(_547_),
    .C(_471_),
    .Y(_934_)
);

OAI21X1 _2384_ (
    .A(_1147_),
    .B(_482_),
    .C(_216_),
    .Y(_263_)
);

AOI21X1 _1655_ (
    .A(_669_),
    .B(_596_),
    .C(_961_),
    .Y(_874_)
);

OAI21X1 _2193_ (
    .A(_1136_),
    .B(_120_),
    .C(_114_),
    .Y(_121_)
);

OAI21X1 _1884_ (
    .A(\u_cpu.ctrl.i_jump ),
    .B(_513_),
    .C(_1091_),
    .Y(_1125_)
);

AOI21X1 _1464_ (
    .A(_440_),
    .B(_465_),
    .C(_438_),
    .Y(_929_)
);

DFFPOSX1 _2669_ (
    .D(_798_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [5])
);

OAI21X1 _2249_ (
    .A(_145_),
    .B(_156_),
    .C(_142_),
    .Y(_163_)
);

INVX1 _1693_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_994_)
);

AND2X2 _1273_ (
    .A(_610_),
    .B(_609_),
    .Y(_608_)
);

NOR2X1 _2478_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_656_),
    .Y(_638_)
);

OAI21X1 _2058_ (
    .A(_1181_),
    .B(_1182_),
    .C(_29_),
    .Y(_30_)
);

INVX1 _1749_ (
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_1038_)
);

INVX1 _1329_ (
    .A(_553_),
    .Y(_552_)
);

INVX1 _2287_ (
    .A(rf_shared_rdata[0]),
    .Y(_198_)
);

INVX1 _1978_ (
    .A(_1207_),
    .Y(_1212_)
);

OAI21X1 _1558_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_364_),
    .C(_366_),
    .Y(_363_)
);

OAI22X1 _2096_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [12]),
    .C(\u_rf_if.read_buf0 [13]),
    .D(_1171_),
    .Y(_55_)
);

OAI21X1 _1787_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [5]),
    .C(_1067_),
    .Y(_1068_)
);

INVX1 _1367_ (
    .A(_516_),
    .Y(_515_)
);

INVX1 _1596_ (
    .A(\u_cpu.bufreg.data [16]),
    .Y(_340_)
);

OAI22X1 _2402_ (
    .A(_217_),
    .B(_277_),
    .C(_411_),
    .D(_258_),
    .Y(_278_)
);

DFFPOSX1 _2631_ (
    .D(_765_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [11])
);

NAND2X1 _2211_ (
    .A(raddr[6]),
    .B(_1213_),
    .Y(_131_)
);

NOR2X1 _1902_ (
    .A(\u_rf_if.issue_idx [0]),
    .B(_1139_),
    .Y(_1140_)
);

INVX1 _1499_ (
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_411_)
);

NOR2X1 _2440_ (
    .A(_179_),
    .B(_310_),
    .Y(_311_)
);

OAI21X1 _2020_ (
    .A(_1227_),
    .B(_2_),
    .C(_1221_),
    .Y(_3_)
);

OAI21X1 _1711_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [22]),
    .C(_1008_),
    .Y(_1009_)
);

AOI22X1 _1940_ (
    .A(\u_rf_if.read_buf0 [31]),
    .B(\u_rf_if.stream_active ),
    .C(_1175_),
    .D(\u_rf_if.read_buf0 [30]),
    .Y(_1176_)
);

NOR2X1 _1520_ (
    .A(_394_),
    .B(_413_),
    .Y(_393_)
);

DFFPOSX1 _2725_ (
    .D(_856_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [12])
);

OAI21X1 _2305_ (
    .A(_211_),
    .B(_212_),
    .C(_210_),
    .Y(_714_)
);

DFFPOSX1 _2534_ (
    .D(_701_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [5])
);

NOR2X1 _2114_ (
    .A(_65_),
    .B(_66_),
    .Y(_759_)
);

OAI21X1 _1805_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(_1081_),
    .Y(_1082_)
);

FILL FILL98550x36150 (
);

DFFPOSX1 _2763_ (
    .D(_893_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [15])
);

AOI22X1 _2343_ (
    .A(\u_cpu.bufreg2.dlo [6]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [5]),
    .Y(_237_)
);

INVX1 _1614_ (
    .A(\u_cpu.bufreg.data [7]),
    .Y(_331_)
);

DFFPOSX1 _2572_ (
    .D(_728_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg1_latched [1])
);

AND2X2 _2152_ (
    .A(_89_),
    .B(_91_),
    .Y(_746_)
);

INVX1 _1843_ (
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_1104_)
);

OAI21X1 _1423_ (
    .A(_626_),
    .B(_625_),
    .C(i_rst_n),
    .Y(_472_)
);

DFFPOSX1 _2628_ (
    .D(_763_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [13])
);

AOI21X1 _2208_ (
    .A(_403_),
    .B(_128_),
    .C(_492_),
    .Y(_727_)
);

AOI22X1 _2381_ (
    .A(_478_),
    .B(_179_),
    .C(_257_),
    .D(_260_),
    .Y(_686_)
);

NAND2X1 _1652_ (
    .A(\u_cpu.bufreg.i_sh_signed ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_959_)
);

OAI21X1 _2437_ (
    .A(_1113_),
    .B(_202_),
    .C(_307_),
    .Y(_308_)
);

INVX1 _2017_ (
    .A(_1242_),
    .Y(_1197_)
);

AOI21X1 _2190_ (
    .A(_1137_),
    .B(_117_),
    .C(_118_),
    .Y(_735_)
);

MUX2X1 _1708_ (
    .A(_1004_),
    .B(_1006_),
    .S(_968_),
    .Y(_866_)
);

INVX1 _1881_ (
    .A(_1091_),
    .Y(_1123_)
);

INVX1 _1461_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_440_)
);

DFFPOSX1 _2666_ (
    .D(_795_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.pending_read )
);

NAND3X1 _2246_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_159_),
    .C(_160_),
    .Y(_161_)
);

INVX1 _1937_ (
    .A(_1168_),
    .Y(_1173_)
);

NOR2X1 _1517_ (
    .A(_396_),
    .B(_413_),
    .Y(_395_)
);

NAND2X1 _1690_ (
    .A(_972_),
    .B(_991_),
    .Y(_992_)
);

NOR2X1 _1270_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_612_),
    .Y(_611_)
);

NAND2X1 _2475_ (
    .A(_642_),
    .B(_643_),
    .Y(_641_)
);

OAI22X1 _2055_ (
    .A(_1182_),
    .B(_1205_),
    .C(raddr[0]),
    .D(_1218_),
    .Y(_28_)
);

OAI21X1 _1746_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [14]),
    .C(_1035_),
    .Y(_1036_)
);

INVX1 _1326_ (
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_555_)
);

NAND3X1 _2284_ (
    .A(_141_),
    .B(_195_),
    .C(_193_),
    .Y(_196_)
);

INVX1 _1975_ (
    .A(_1208_),
    .Y(_1209_)
);

NAND2X1 _1555_ (
    .A(\u_cpu.branch_op ),
    .B(_661_),
    .Y(_366_)
);

INVX1 _2093_ (
    .A(\u_rf_if.read_buf0 [12]),
    .Y(_53_)
);

NOR2X1 _1784_ (
    .A(\u_cpu.bufreg2.dlo [5]),
    .B(_1013_),
    .Y(_1066_)
);

NOR2X1 _1364_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_518_)
);

DFFPOSX1 _2569_ (
    .D(_686_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [20])
);

INVX1 _2149_ (
    .A(_14_),
    .Y(_89_)
);

MUX2X1 _1593_ (
    .A(_343_),
    .B(_342_),
    .S(_597_),
    .Y(_896_)
);

INVX1 _2378_ (
    .A(_184_),
    .Y(_258_)
);

OAI21X1 _1649_ (
    .A(_953_),
    .B(_948_),
    .C(_951_),
    .Y(_957_)
);

NOR2X1 _2187_ (
    .A(_1138_),
    .B(_113_),
    .Y(_116_)
);

OAI21X1 _1878_ (
    .A(_641_),
    .B(_581_),
    .C(_643_),
    .Y(_1121_)
);

OAI21X1 _1458_ (
    .A(mem_ibus_ack),
    .B(_452_),
    .C(_443_),
    .Y(_442_)
);

NOR2X1 _1687_ (
    .A(_616_),
    .B(_615_),
    .Y(_989_)
);

NAND2X1 _1267_ (
    .A(_616_),
    .B(_615_),
    .Y(_614_)
);

OAI21X1 _1496_ (
    .A(_656_),
    .B(_655_),
    .C(_561_),
    .Y(_414_)
);

DFFPOSX1 _2722_ (
    .D(_853_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [9])
);

INVX1 _2302_ (
    .A(_157_),
    .Y(_210_)
);

DFFPOSX1 _2531_ (
    .D(_944_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.opcode [2])
);

AOI21X1 _2111_ (
    .A(_60_),
    .B(_1175_),
    .C(_64_),
    .Y(_760_)
);

AOI21X1 _1802_ (
    .A(_1013_),
    .B(_1078_),
    .C(_1079_),
    .Y(_845_)
);

INVX1 _1399_ (
    .A(_491_),
    .Y(_490_)
);

DFFPOSX1 _2760_ (
    .D(_890_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [12])
);

MUX2X1 _2340_ (
    .A(_559_),
    .B(_235_),
    .S(_179_),
    .Y(_702_)
);

FILL FILL98550x90150 (
);

MUX2X1 _1611_ (
    .A(_334_),
    .B(_333_),
    .S(_597_),
    .Y(_887_)
);

MUX2X1 _1840_ (
    .A(_1101_),
    .B(_1102_),
    .S(_1091_),
    .Y(_830_)
);

INVX1 _1420_ (
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_475_)
);

DFFPOSX1 _2625_ (
    .D(_760_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [16])
);

NAND2X1 _2205_ (
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_561_),
    .Y(_127_)
);

INVX1 _2434_ (
    .A(\u_mem_serial.shift_reg [29]),
    .Y(_305_)
);

NOR2X1 _2014_ (
    .A(_1239_),
    .B(_1149_),
    .Y(_1240_)
);

INVX1 _1705_ (
    .A(\u_cpu.bufreg2.dlo [22]),
    .Y(_1004_)
);

DFFPOSX1 _2663_ (
    .D(_791_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.write_wait [0])
);

NOR2X1 _2243_ (
    .A(\u_mem_serial.active_we ),
    .B(_157_),
    .Y(_158_)
);

NOR2X1 _1934_ (
    .A(\u_rf_if.stream_active ),
    .B(_1169_),
    .Y(_1170_)
);

NOR2X1 _1514_ (
    .A(_561_),
    .B(_399_),
    .Y(_398_)
);

DFFPOSX1 _2719_ (
    .D(_850_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [6])
);

OAI21X1 _2472_ (
    .A(_652_),
    .B(_645_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_644_)
);

AOI22X1 _2052_ (
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[4]),
    .Y(_26_)
);

AOI21X1 _1743_ (
    .A(_1013_),
    .B(_1032_),
    .C(_1033_),
    .Y(_858_)
);

INVX1 _1323_ (
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_558_)
);

DFFPOSX1 _2528_ (
    .D(_941_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.cnt_r [0])
);

OAI22X1 _2108_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [16]),
    .C(\u_rf_if.read_buf0 [17]),
    .D(_1171_),
    .Y(_63_)
);

OAI21X1 _2281_ (
    .A(_191_),
    .B(_178_),
    .C(_192_),
    .Y(_193_)
);

INVX1 _1972_ (
    .A(_1205_),
    .Y(_1206_)
);

OAI21X1 _1552_ (
    .A(_601_),
    .B(_373_),
    .C(_369_),
    .Y(_910_)
);

DFFPOSX1 _2757_ (
    .D(_725_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rs2_stream_buf [0])
);

AOI22X1 _2337_ (
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [2]),
    .Y(_234_)
);

INVX1 _2090_ (
    .A(\u_rf_if.read_buf0 [11]),
    .Y(_51_)
);

INVX1 _1608_ (
    .A(\u_cpu.bufreg.data [10]),
    .Y(_334_)
);

AOI21X1 _1781_ (
    .A(_1013_),
    .B(_1062_),
    .C(_1063_),
    .Y(_850_)
);

INVX1 _1361_ (
    .A(\u_cpu.ctrl.pc ),
    .Y(_521_)
);

DFFPOSX1 _2566_ (
    .D(_685_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [21])
);

NOR2X1 _2146_ (
    .A(\u_rf_if.read_buf0 [29]),
    .B(_1174_),
    .Y(_87_)
);

INVX1 _1837_ (
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_1101_)
);

INVX1 _1417_ (
    .A(_477_),
    .Y(_476_)
);

INVX1 _1590_ (
    .A(\u_cpu.bufreg.data [19]),
    .Y(_343_)
);

OAI21X1 _2375_ (
    .A(_252_),
    .B(_1234_),
    .C(\u_rf_if.wdata0_r [0]),
    .Y(_255_)
);

AOI21X1 _1646_ (
    .A(_948_),
    .B(_953_),
    .C(_954_),
    .Y(_955_)
);

INVX1 _2184_ (
    .A(_1200_),
    .Y(_114_)
);

INVX1 _1875_ (
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_1120_)
);

INVX1 _1455_ (
    .A(\u_mem_serial.shift_reg [15]),
    .Y(_445_)
);

AOI21X1 _1684_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_982_),
    .C(_986_),
    .Y(_987_)
);

INVX1 _1264_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_617_)
);

NOR2X1 _2469_ (
    .A(_661_),
    .B(_648_),
    .Y(_647_)
);

NAND2X1 _2049_ (
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_24_)
);

MUX2X1 _1493_ (
    .A(_418_),
    .B(_417_),
    .S(_426_),
    .Y(_921_)
);

DFFPOSX1 _2698_ (
    .D(_830_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

MUX2X1 _2278_ (
    .A(_376_),
    .B(_190_),
    .S(_179_),
    .Y(_719_)
);

INVX1 _1969_ (
    .A(\u_rf_if.i_stream_rs2_en ),
    .Y(_1203_)
);

AOI21X1 _1549_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [19]),
    .C(_465_),
    .Y(_370_)
);

NOR2X1 _2087_ (
    .A(\u_rf_if.read_buf0 [8]),
    .B(_1174_),
    .Y(_49_)
);

NAND2X1 _1778_ (
    .A(mem_dbus_ack),
    .B(_558_),
    .Y(_1061_)
);

AND2X2 _1358_ (
    .A(_632_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_524_)
);

MUX2X1 _1587_ (
    .A(_346_),
    .B(_345_),
    .S(_597_),
    .Y(_899_)
);

OAI21X1 _1396_ (
    .A(mem_ibus_ack),
    .B(_661_),
    .C(_493_),
    .Y(_942_)
);

DFFPOSX1 _2622_ (
    .D(_779_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[0])
);

AOI21X1 _2202_ (
    .A(_455_),
    .B(_125_),
    .C(_492_),
    .Y(_730_)
);

OAI21X1 _2431_ (
    .A(_195_),
    .B(_301_),
    .C(_302_),
    .Y(_303_)
);

AOI21X1 _2011_ (
    .A(_1236_),
    .B(_1237_),
    .C(_1222_),
    .Y(_790_)
);

NAND2X1 _1702_ (
    .A(mem_dbus_ack),
    .B(_359_),
    .Y(_1002_)
);

AOI21X1 _1299_ (
    .A(_627_),
    .B(_625_),
    .C(_659_),
    .Y(_582_)
);

DFFPOSX1 _2660_ (
    .D(_698_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [8])
);

OAI21X1 _2240_ (
    .A(_155_),
    .B(_152_),
    .C(_146_),
    .Y(_722_)
);

NOR2X1 _1931_ (
    .A(_1166_),
    .B(_1139_),
    .Y(_1167_)
);

AOI21X1 _1511_ (
    .A(_406_),
    .B(_413_),
    .C(_401_),
    .Y(_919_)
);

DFFPOSX1 _2716_ (
    .D(_847_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [3])
);

NAND2X1 _1740_ (
    .A(mem_dbus_ack),
    .B(_1030_),
    .Y(_1031_)
);

INVX1 _1320_ (
    .A(mem_ibus_ack),
    .Y(_561_)
);

DFFPOSX1 _2525_ (
    .D(_938_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

OAI22X1 _2105_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [15]),
    .C(\u_rf_if.read_buf0 [14]),
    .D(_1174_),
    .Y(_61_)
);

FILL FILL98550x43350 (
);

DFFPOSX1 _2754_ (
    .D(_885_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [7])
);

MUX2X1 _2334_ (
    .A(_1076_),
    .B(_232_),
    .S(_179_),
    .Y(_705_)
);

MUX2X1 _1605_ (
    .A(_337_),
    .B(_336_),
    .S(_597_),
    .Y(_890_)
);

DFFPOSX1 _2563_ (
    .D(_720_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [4])
);

INVX1 _2143_ (
    .A(\u_rf_if.read_buf0 [30]),
    .Y(_85_)
);

MUX2X1 _1834_ (
    .A(_1098_),
    .B(_1099_),
    .S(_1091_),
    .Y(_833_)
);

OAI21X1 _1414_ (
    .A(mem_ibus_ack),
    .B(_636_),
    .C(_479_),
    .Y(_938_)
);

DFFPOSX1 _2619_ (
    .D(_756_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [20])
);

AOI21X1 _2372_ (
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_1229_),
    .C(_1230_),
    .Y(_252_)
);

OR2X2 _1643_ (
    .A(_950_),
    .B(\u_cpu.bufreg.c_r ),
    .Y(_952_)
);

NAND2X1 _2428_ (
    .A(_216_),
    .B(_1155_),
    .Y(_300_)
);

NOR2X1 _2008_ (
    .A(_1234_),
    .B(_1233_),
    .Y(_1235_)
);

NAND2X1 _2181_ (
    .A(\u_rf_if.issue_idx [0]),
    .B(_1207_),
    .Y(_112_)
);

INVX1 _1872_ (
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_1118_)
);

NOR2X1 _1452_ (
    .A(_448_),
    .B(_465_),
    .Y(_447_)
);

DFFPOSX1 _2657_ (
    .D(\u_cpu.o_wdata0 ),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.wdata0_next [0])
);

INVX1 _2237_ (
    .A(\u_mem_serial.req_pending ),
    .Y(_153_)
);

NOR2X1 _1928_ (
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [5]),
    .Y(_1164_)
);

INVX1 _1508_ (
    .A(_404_),
    .Y(_403_)
);

NOR2X1 _1681_ (
    .A(_981_),
    .B(_983_),
    .Y(_984_)
);

OAI21X1 _1261_ (
    .A(_636_),
    .B(_621_),
    .C(_628_),
    .Y(_620_)
);

INVX1 _2466_ (
    .A(_651_),
    .Y(_650_)
);

AOI21X1 _2046_ (
    .A(_1145_),
    .B(_21_),
    .C(mem_ibus_ack),
    .Y(_22_)
);

NOR2X1 _1737_ (
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_1013_),
    .Y(_1029_)
);

INVX1 _1317_ (
    .A(\u_cpu.alu.add_cy_r ),
    .Y(_564_)
);

MUX2X1 _1490_ (
    .A(_420_),
    .B(_419_),
    .S(_426_),
    .Y(_922_)
);

DFFPOSX1 _2695_ (
    .D(_827_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

AND2X2 _2275_ (
    .A(_161_),
    .B(_187_),
    .Y(_188_)
);

NOR2X1 _1966_ (
    .A(_1135_),
    .B(_1200_),
    .Y(_798_)
);

OAI21X1 _1546_ (
    .A(_636_),
    .B(_653_),
    .C(_374_),
    .Y(_373_)
);

INVX1 _2084_ (
    .A(\u_rf_if.read_buf0 [9]),
    .Y(_47_)
);

OAI21X1 _1775_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [8]),
    .C(_1058_),
    .Y(_1059_)
);

NAND2X1 _1355_ (
    .A(_528_),
    .B(_532_),
    .Y(_527_)
);

INVX1 _1584_ (
    .A(\u_cpu.bufreg.data [22]),
    .Y(_346_)
);

AOI22X1 _2369_ (
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [18]),
    .Y(_250_)
);

INVX1 _1393_ (
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_494_)
);

DFFPOSX1 _2598_ (
    .D(_741_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rcnt [2])
);

OAI21X1 _2178_ (
    .A(_108_),
    .B(_109_),
    .C(_1221_),
    .Y(_110_)
);

MUX2X1 _1869_ (
    .A(_1116_),
    .B(_521_),
    .S(_1091_),
    .Y(_815_)
);

NOR2X1 _1449_ (
    .A(_561_),
    .B(_451_),
    .Y(_450_)
);

INVX1 _1678_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_981_)
);

INVX1 _1258_ (
    .A(_624_),
    .Y(_623_)
);

MUX2X1 _1487_ (
    .A(_422_),
    .B(_421_),
    .S(_426_),
    .Y(_923_)
);

NAND2X1 _1296_ (
    .A(_586_),
    .B(_622_),
    .Y(_585_)
);

DFFPOSX1 _2713_ (
    .D(_844_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [0])
);

DFFPOSX1 _2522_ (
    .D(_935_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

OAI22X1 _2102_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [14]),
    .C(\u_rf_if.read_buf0 [15]),
    .D(_1171_),
    .Y(_59_)
);

FILL FILL98550x64950 (
);

DFFPOSX1 _2751_ (
    .D(_882_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [4])
);

AOI21X1 _2331_ (
    .A(_226_),
    .B(_230_),
    .C(_179_),
    .Y(_231_)
);

INVX1 _1602_ (
    .A(\u_cpu.bufreg.data [13]),
    .Y(_337_)
);

DFFPOSX1 _2560_ (
    .D(_788_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.wen0_r )
);

NOR2X1 _2140_ (
    .A(\u_rf_if.read_buf0 [27]),
    .B(_1174_),
    .Y(_83_)
);

INVX1 _1831_ (
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_1098_)
);

NOR2X1 _1411_ (
    .A(_580_),
    .B(_492_),
    .Y(_940_)
);

DFFPOSX1 _2616_ (
    .D(_753_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [23])
);

OAI21X1 _1640_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_655_),
    .C(_566_),
    .Y(_949_)
);

NOR2X1 _2425_ (
    .A(_179_),
    .B(_297_),
    .Y(_298_)
);

OAI21X1 _2005_ (
    .A(_1147_),
    .B(_482_),
    .C(\u_rf_if.wen0_r ),
    .Y(_1232_)
);

DFFPOSX1 _2654_ (
    .D(_786_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_active )
);

NAND2X1 _2234_ (
    .A(_601_),
    .B(_149_),
    .Y(_150_)
);

NAND3X1 _1925_ (
    .A(_1158_),
    .B(_1160_),
    .C(_1156_),
    .Y(_1161_)
);

INVX1 _1505_ (
    .A(rreg1[2]),
    .Y(_406_)
);

OAI21X1 _2463_ (
    .A(_326_),
    .B(_1123_),
    .C(_327_),
    .Y(_671_)
);

OAI21X1 _2043_ (
    .A(\u_rf_if.read_buf1 ),
    .B(_19_),
    .C(_481_),
    .Y(_20_)
);

AOI21X1 _1734_ (
    .A(_1013_),
    .B(_1025_),
    .C(_1026_),
    .Y(_860_)
);

INVX1 _1314_ (
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_567_)
);

DFFPOSX1 _2519_ (
    .D(_932_),
    .CLK(i_clk_sys_ext),
    .Q(rreg0[2])
);

DFFPOSX1 _2692_ (
    .D(_824_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

NOR2X1 _2272_ (
    .A(_142_),
    .B(_182_),
    .Y(_185_)
);

NOR2X1 _1963_ (
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1198_)
);

NAND2X1 _1543_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_561_),
    .Y(_375_)
);

DFFPOSX1 _2748_ (
    .D(_879_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [0])
);

NOR2X1 _2328_ (
    .A(\u_mem_serial.state [1]),
    .B(_142_),
    .Y(_228_)
);

NOR2X1 _2081_ (
    .A(\u_rf_if.read_buf0 [6]),
    .B(_1174_),
    .Y(_45_)
);

MUX2X1 _1772_ (
    .A(_507_),
    .B(_1056_),
    .S(_968_),
    .Y(_852_)
);

NAND2X1 _1352_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_636_),
    .Y(_530_)
);

DFFPOSX1 _2557_ (
    .D(_800_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg1_latched [3])
);

INVX1 _2137_ (
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_81_)
);

MUX2X1 _1828_ (
    .A(_1095_),
    .B(_1096_),
    .S(_1091_),
    .Y(_836_)
);

INVX1 _1408_ (
    .A(_482_),
    .Y(_481_)
);

MUX2X1 _1581_ (
    .A(_349_),
    .B(_348_),
    .S(_597_),
    .Y(_902_)
);

MUX2X1 _2366_ (
    .A(_457_),
    .B(_248_),
    .S(_179_),
    .Y(_689_)
);

OAI21X1 _1637_ (
    .A(_723_),
    .B(_670_),
    .C(_656_),
    .Y(_724_)
);

OAI21X1 _1390_ (
    .A(mem_ibus_ack),
    .B(_592_),
    .C(_496_),
    .Y(_945_)
);

DFFPOSX1 _2595_ (
    .D(_739_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.o_waddr [1])
);

AOI21X1 _2175_ (
    .A(_1238_),
    .B(_1197_),
    .C(_107_),
    .Y(_739_)
);

MUX2X1 _1866_ (
    .A(_1114_),
    .B(_1115_),
    .S(_1091_),
    .Y(_817_)
);

AOI21X1 _1446_ (
    .A(_458_),
    .B(_465_),
    .C(_453_),
    .Y(_932_)
);

OAI21X1 _1675_ (
    .A(_617_),
    .B(_618_),
    .C(_978_),
    .Y(_979_)
);

INVX1 _1255_ (
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_626_)
);

MUX2X1 _1484_ (
    .A(_424_),
    .B(_423_),
    .S(_426_),
    .Y(_924_)
);

DFFPOSX1 _2689_ (
    .D(_821_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

NAND2X1 _2269_ (
    .A(\u_mem_serial.active_we ),
    .B(_181_),
    .Y(_182_)
);

NAND2X1 _1293_ (
    .A(_593_),
    .B(_591_),
    .Y(_588_)
);

DFFPOSX1 _2498_ (
    .D(_912_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

AOI21X1 _2078_ (
    .A(_39_),
    .B(_1175_),
    .C(_43_),
    .Y(_772_)
);

INVX1 _1769_ (
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_1054_)
);

NOR2X1 _1349_ (
    .A(_534_),
    .B(_535_),
    .Y(_533_)
);

DFFPOSX1 _2710_ (
    .D(_841_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

INVX1 _1998_ (
    .A(\u_rf_if.rcnt [2]),
    .Y(_1225_)
);

INVX1 _1578_ (
    .A(\u_cpu.bufreg.data [25]),
    .Y(_349_)
);

NAND2X1 _1387_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [12]),
    .Y(_497_)
);

DFFPOSX1 _2613_ (
    .D(_750_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [26])
);

MUX2X1 _2422_ (
    .A(\u_cpu.bufreg.data [2]),
    .B(\u_cpu.ctrl.o_ibus_adr [2]),
    .S(_202_),
    .Y(_295_)
);

NAND3X1 _2002_ (
    .A(_1226_),
    .B(_1227_),
    .C(_1228_),
    .Y(_1229_)
);

DFFPOSX1 _2651_ (
    .D(_784_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [31])
);

INVX1 _2231_ (
    .A(\u_cpu.state.ibus_cyc ),
    .Y(_147_)
);

AOI22X1 _1922_ (
    .A(ren),
    .B(raddr[5]),
    .C(_1149_),
    .D(_1157_),
    .Y(_1158_)
);

OAI21X1 _1502_ (
    .A(mem_ibus_ack),
    .B(_412_),
    .C(_409_),
    .Y(_408_)
);

DFFPOSX1 _2707_ (
    .D(_838_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

AOI21X1 _2460_ (
    .A(_490_),
    .B(_325_),
    .C(_492_),
    .Y(_672_)
);

NAND2X1 _2040_ (
    .A(\u_rf_if.i_stream_rs2_en ),
    .B(_1235_),
    .Y(_17_)
);

FILL FILL98550x50550 (
);

NAND2X1 _1731_ (
    .A(mem_dbus_ack),
    .B(_451_),
    .Y(_1024_)
);

NOR2X1 _1311_ (
    .A(\u_cpu.bne_or_bge ),
    .B(_571_),
    .Y(_570_)
);

DFFPOSX1 _2516_ (
    .D(_929_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

AOI21X1 _1960_ (
    .A(_409_),
    .B(_1193_),
    .C(_492_),
    .Y(_800_)
);

AOI22X1 _1540_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_389_),
    .D(rf_wreg0_to_if[0]),
    .Y(_377_)
);

DFFPOSX1 _2745_ (
    .D(_875_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.c_r )
);

OR2X2 _2325_ (
    .A(_157_),
    .B(_204_),
    .Y(_707_)
);

DFFPOSX1 _2554_ (
    .D(_714_),
    .CLK(i_clk_fast),
    .Q(_1196_)
);

NOR2X1 _2134_ (
    .A(_78_),
    .B(_79_),
    .Y(_752_)
);

INVX1 _1825_ (
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1095_)
);

OAI21X1 _1405_ (
    .A(_530_),
    .B(_485_),
    .C(_655_),
    .Y(_484_)
);

AOI22X1 _2363_ (
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [15]),
    .Y(_247_)
);

MUX2X1 _1634_ (
    .A(_669_),
    .B(_668_),
    .S(_597_),
    .Y(_877_)
);

AOI22X1 _2419_ (
    .A(_287_),
    .B(_179_),
    .C(_290_),
    .D(_292_),
    .Y(_680_)
);

INVX1 _2592_ (
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_658_)
);

OAI21X1 _2172_ (
    .A(_1226_),
    .B(_1241_),
    .C(_1221_),
    .Y(_106_)
);

INVX1 _1863_ (
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_1114_)
);

INVX1 _1443_ (
    .A(_456_),
    .Y(_455_)
);

INVX1 _2648_ (
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_657_)
);

NOR2X1 _2228_ (
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_143_),
    .Y(_144_)
);

INVX1 _1919_ (
    .A(_1154_),
    .Y(_1155_)
);

NAND2X1 _1672_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_971_),
    .Y(_976_)
);

NAND2X1 _1252_ (
    .A(_635_),
    .B(_630_),
    .Y(_629_)
);

OAI21X1 _2457_ (
    .A(_322_),
    .B(_321_),
    .C(_323_),
    .Y(_324_)
);

AND2X2 _2037_ (
    .A(_15_),
    .B(_13_),
    .Y(_785_)
);

OAI21X1 _1728_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [18]),
    .C(_1021_),
    .Y(_1022_)
);

OAI21X1 _1308_ (
    .A(_641_),
    .B(_581_),
    .C(_574_),
    .Y(_573_)
);

MUX2X1 _1481_ (
    .A(_428_),
    .B(_425_),
    .S(_426_),
    .Y(_925_)
);

DFFPOSX1 _2686_ (
    .D(_818_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

OAI21X1 _2266_ (
    .A(\u_mem_serial.state [0]),
    .B(_157_),
    .C(_178_),
    .Y(_179_)
);

OAI21X1 _1957_ (
    .A(\u_rf_if.rs2_stream_buf [1]),
    .B(_1188_),
    .C(_1191_),
    .Y(_1192_)
);

OAI22X1 _1537_ (
    .A(_561_),
    .B(\u_mem_serial.shift_reg [8]),
    .C(_382_),
    .D(_385_),
    .Y(_379_)
);

NOR2X1 _1290_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_592_),
    .Y(_591_)
);

DFFPOSX1 _2495_ (
    .D(_910_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

OAI22X1 _2075_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [4]),
    .C(\u_rf_if.read_buf0 [3]),
    .D(_1174_),
    .Y(_42_)
);

OAI21X1 _1766_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [10]),
    .C(_1051_),
    .Y(_1052_)
);

NAND2X1 _1346_ (
    .A(_537_),
    .B(_538_),
    .Y(_536_)
);

INVX1 _1995_ (
    .A(\u_rf_if.write_wait [0]),
    .Y(_1223_)
);

MUX2X1 _1575_ (
    .A(_353_),
    .B(_351_),
    .S(_597_),
    .Y(_905_)
);

OAI21X1 _1384_ (
    .A(_659_),
    .B(_573_),
    .C(_499_),
    .Y(\u_cpu.o_wdata0 )
);

DFFPOSX1 _2589_ (
    .D(_736_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [1])
);

OAI21X1 _2169_ (
    .A(_1145_),
    .B(_21_),
    .C(_1225_),
    .Y(_104_)
);

AOI21X1 _2398_ (
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_185_),
    .C(_274_),
    .Y(_275_)
);

NAND3X1 _1669_ (
    .A(_972_),
    .B(_973_),
    .C(_607_),
    .Y(_974_)
);

NOR2X1 _1249_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.branch_op ),
    .Y(_632_)
);

DFFPOSX1 _2610_ (
    .D(_747_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [29])
);

INVX1 _1898_ (
    .A(\u_rf_if.issue_idx [3]),
    .Y(_1136_)
);

NAND3X1 _1478_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_649_),
    .C(_495_),
    .Y(_427_)
);

INVX1 _1287_ (
    .A(rreg1[0]),
    .Y(_594_)
);

DFFPOSX1 _2704_ (
    .D(_835_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

DFFPOSX1 _2513_ (
    .D(_926_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

DFFPOSX1 _2742_ (
    .D(_872_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dhi [5])
);

NAND2X1 _2322_ (
    .A(_224_),
    .B(_167_),
    .Y(_709_)
);

DFFPOSX1 _2551_ (
    .D(_712_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [0])
);

AOI21X1 _2131_ (
    .A(_76_),
    .B(_1170_),
    .C(_77_),
    .Y(_753_)
);

MUX2X1 _1822_ (
    .A(_1092_),
    .B(_1093_),
    .S(_1091_),
    .Y(_839_)
);

OAI21X1 _1402_ (
    .A(_636_),
    .B(_607_),
    .C(_488_),
    .Y(_487_)
);

DFFPOSX1 _2607_ (
    .D(_671_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.ibus_cyc )
);

MUX2X1 _2360_ (
    .A(_1030_),
    .B(_245_),
    .S(_179_),
    .Y(_692_)
);

INVX1 _1631_ (
    .A(\u_cpu.bufreg.data [30]),
    .Y(_668_)
);

OAI21X1 _2416_ (
    .A(_159_),
    .B(_1152_),
    .C(_289_),
    .Y(_290_)
);

MUX2X1 _1860_ (
    .A(_1111_),
    .B(_1112_),
    .S(_1091_),
    .Y(_820_)
);

INVX1 _1440_ (
    .A(rreg0[2]),
    .Y(_458_)
);

DFFPOSX1 _2645_ (
    .D(_695_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [11])
);

INVX1 _2225_ (
    .A(\u_mem_serial.state [1]),
    .Y(_141_)
);

INVX1 _1916_ (
    .A(_1151_),
    .Y(_1152_)
);

AND2X2 _2454_ (
    .A(_1134_),
    .B(\u_cpu.bne_or_bge ),
    .Y(_321_)
);

OAI21X1 _2034_ (
    .A(_1180_),
    .B(_11_),
    .C(_12_),
    .Y(_13_)
);

NOR2X1 _1725_ (
    .A(\u_cpu.bufreg2.dlo [18]),
    .B(_1013_),
    .Y(_1020_)
);

INVX1 _1305_ (
    .A(_577_),
    .Y(_576_)
);

DFFPOSX1 _2683_ (
    .D(_815_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.pc )
);

NOR2X1 _2263_ (
    .A(\u_mem_serial.bit_count [5]),
    .B(_171_),
    .Y(_176_)
);

NAND2X1 _1954_ (
    .A(rf_shared_rdata[1]),
    .B(_1161_),
    .Y(_1189_)
);

OAI22X1 _1534_ (
    .A(_561_),
    .B(\u_mem_serial.shift_reg [9]),
    .C(_382_),
    .D(_390_),
    .Y(_381_)
);

DFFPOSX1 _2739_ (
    .D(_869_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

OAI21X1 _2319_ (
    .A(_221_),
    .B(_222_),
    .C(_195_),
    .Y(_223_)
);

DFFPOSX1 _2492_ (
    .D(_727_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg1_latched [2])
);

OAI22X1 _2072_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [3]),
    .C(\u_rf_if.read_buf0 [2]),
    .D(_1174_),
    .Y(_40_)
);

AOI21X1 _1763_ (
    .A(_1013_),
    .B(_1048_),
    .C(_1049_),
    .Y(_854_)
);

NAND2X1 _1343_ (
    .A(_540_),
    .B(_541_),
    .Y(_539_)
);

DFFPOSX1 _2548_ (
    .D(_709_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.bit_count [2])
);

AOI21X1 _2128_ (
    .A(_71_),
    .B(_1175_),
    .C(_75_),
    .Y(_754_)
);

INVX1 _1819_ (
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_1092_)
);

AOI21X1 _1992_ (
    .A(_1207_),
    .B(_1199_),
    .C(_492_),
    .Y(_792_)
);

INVX1 _1572_ (
    .A(\u_cpu.bufreg.data [29]),
    .Y(_352_)
);

AOI22X1 _2357_ (
    .A(\u_cpu.bufreg2.dlo [13]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [12]),
    .Y(_244_)
);

NAND2X1 _1628_ (
    .A(_629_),
    .B(_597_),
    .Y(_666_)
);

NAND3X1 _1381_ (
    .A(_508_),
    .B(_505_),
    .C(_502_),
    .Y(_501_)
);

DFFPOSX1 _2586_ (
    .D(_690_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [16])
);

NAND2X1 _2166_ (
    .A(_561_),
    .B(_1221_),
    .Y(_102_)
);

INVX1 _1857_ (
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_1111_)
);

OAI21X1 _1437_ (
    .A(mem_ibus_ack),
    .B(_464_),
    .C(_461_),
    .Y(_460_)
);

NAND2X1 _2395_ (
    .A(_1238_),
    .B(_139_),
    .Y(_272_)
);

INVX1 _1666_ (
    .A(_969_),
    .Y(_971_)
);

INVX1 _1246_ (
    .A(\u_cpu.state.init_done ),
    .Y(_635_)
);

OAI21X1 _1895_ (
    .A(_571_),
    .B(_1128_),
    .C(_1133_),
    .Y(_1134_)
);

NOR2X1 _1475_ (
    .A(_430_),
    .B(_465_),
    .Y(_429_)
);

NAND2X1 _1284_ (
    .A(_598_),
    .B(_605_),
    .Y(_597_)
);

DFFPOSX1 _2489_ (
    .D(_905_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [27])
);

AOI22X1 _2069_ (
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.read_buf0 [2]),
    .C(_1170_),
    .D(\u_rf_if.read_buf0 [3]),
    .Y(_38_)
);

DFFPOSX1 _2701_ (
    .D(_832_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

AOI21X1 _2298_ (
    .A(_206_),
    .B(_972_),
    .C(_207_),
    .Y(_716_)
);

NAND3X1 _1989_ (
    .A(_1180_),
    .B(_1184_),
    .C(_1204_),
    .Y(_1219_)
);

AOI22X1 _1569_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [11]),
    .C(_385_),
    .D(_387_),
    .Y(_354_)
);

DFFPOSX1 _2510_ (
    .D(_924_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

INVX1 _1798_ (
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_1076_)
);

NOR2X1 _1378_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(_634_),
    .Y(_504_)
);

DFFPOSX1 _2604_ (
    .D(_694_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [12])
);

INVX1 _2413_ (
    .A(\u_mem_serial.shift_reg [26]),
    .Y(_287_)
);

DFFPOSX1 _2642_ (
    .D(_774_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [2])
);

NOR2X1 _2222_ (
    .A(_376_),
    .B(_138_),
    .Y(_0_)
);

INVX1 _1913_ (
    .A(_1148_),
    .Y(_1149_)
);

AOI21X1 _2451_ (
    .A(_627_),
    .B(_623_),
    .C(_319_),
    .Y(_675_)
);

AOI21X1 _2031_ (
    .A(_9_),
    .B(_10_),
    .C(_492_),
    .Y(_786_)
);

AOI21X1 _1722_ (
    .A(_1013_),
    .B(_1016_),
    .C(_1017_),
    .Y(_863_)
);

NOR2X1 _1302_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_579_)
);

DFFPOSX1 _2507_ (
    .D(_921_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

DFFPOSX1 _2680_ (
    .D(_812_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

NAND2X1 _2260_ (
    .A(_173_),
    .B(_172_),
    .Y(_174_)
);

INVX1 _1951_ (
    .A(_1185_),
    .Y(_1186_)
);

NOR2X1 _1531_ (
    .A(mem_ibus_ack),
    .B(_385_),
    .Y(_384_)
);

FILL FILL98250x36150 (
);

DFFPOSX1 _2736_ (
    .D(_867_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

MUX2X1 _2316_ (
    .A(_220_),
    .B(_175_),
    .S(_163_),
    .Y(_711_)
);

NAND2X1 _1760_ (
    .A(mem_dbus_ack),
    .B(_1046_),
    .Y(_1047_)
);

INVX1 _1340_ (
    .A(_543_),
    .Y(_542_)
);

DFFPOSX1 _2545_ (
    .D(_707_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.state [0])
);

OAI22X1 _2125_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [22]),
    .C(\u_rf_if.read_buf0 [23]),
    .D(_1171_),
    .Y(_74_)
);

INVX1 _1816_ (
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_1090_)
);

MUX2X1 _2354_ (
    .A(_1042_),
    .B(_242_),
    .S(_179_),
    .Y(_695_)
);

AOI21X1 _1625_ (
    .A(_662_),
    .B(_597_),
    .C(_663_),
    .Y(_880_)
);

FILL FILL98550x79350 (
);

DFFPOSX1 _2583_ (
    .D(_733_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.issue_idx [4])
);

INVX1 _2163_ (
    .A(_98_),
    .Y(_100_)
);

MUX2X1 _1854_ (
    .A(_1108_),
    .B(_1109_),
    .S(_1091_),
    .Y(_823_)
);

INVX1 _1434_ (
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_463_)
);

DFFPOSX1 _2639_ (
    .D(_771_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [5])
);

NAND2X1 _2219_ (
    .A(_137_),
    .B(_136_),
    .Y(_725_)
);

OAI22X1 _2392_ (
    .A(_217_),
    .B(_269_),
    .C(_1004_),
    .D(_186_),
    .Y(_270_)
);

OAI21X1 _1663_ (
    .A(_637_),
    .B(_619_),
    .C(_968_),
    .Y(_969_)
);

BUFX2 _1243_ (
    .A(_1196_),
    .Y(o_mem_sync)
);

NOR2X1 _2448_ (
    .A(_179_),
    .B(_317_),
    .Y(_318_)
);

NOR2X1 _2028_ (
    .A(_1147_),
    .B(_1222_),
    .Y(_787_)
);

NAND2X1 _1719_ (
    .A(mem_dbus_ack),
    .B(_1014_),
    .Y(_1015_)
);

NOR2X1 _1892_ (
    .A(_1130_),
    .B(_1126_),
    .Y(_1131_)
);

AOI21X1 _1472_ (
    .A(_434_),
    .B(_465_),
    .C(_432_),
    .Y(_927_)
);

DFFPOSX1 _2677_ (
    .D(_806_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.alu.cmp_r )
);

NAND3X1 _2257_ (
    .A(_162_),
    .B(_169_),
    .C(_170_),
    .Y(_171_)
);

NOR2X1 _1948_ (
    .A(_1181_),
    .B(_1182_),
    .Y(_1183_)
);

AOI21X1 _1528_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [10]),
    .C(_387_),
    .Y(_386_)
);

NOR2X1 _1281_ (
    .A(\u_cpu.branch_op ),
    .B(_635_),
    .Y(_600_)
);

DFFPOSX1 _2486_ (
    .D(_902_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [24])
);

AOI22X1 _2066_ (
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.read_buf0 [1]),
    .C(_1170_),
    .D(\u_rf_if.read_buf0 [2]),
    .Y(_36_)
);

NOR2X1 _1757_ (
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_1013_),
    .Y(_1045_)
);

NAND2X1 _1337_ (
    .A(_634_),
    .B(_546_),
    .Y(_545_)
);

AOI21X1 _2295_ (
    .A(\u_mem_serial.state [1]),
    .B(_192_),
    .C(_204_),
    .Y(_205_)
);

AOI22X1 _1986_ (
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[5]),
    .Y(_1217_)
);

OAI21X1 _1566_ (
    .A(_561_),
    .B(_359_),
    .C(_357_),
    .Y(_356_)
);

OAI21X1 _1795_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [3]),
    .C(_1073_),
    .Y(_1074_)
);

INVX1 _1375_ (
    .A(\u_cpu.bufreg2.dlo [8]),
    .Y(_507_)
);

AOI22X1 _2389_ (
    .A(_399_),
    .B(_179_),
    .C(_265_),
    .D(_267_),
    .Y(_685_)
);

DFFPOSX1 _2601_ (
    .D(_743_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.stream_cnt [3])
);

AOI21X1 _2198_ (
    .A(_443_),
    .B(_123_),
    .C(_492_),
    .Y(_732_)
);

AOI22X1 _1889_ (
    .A(_531_),
    .B(_670_),
    .C(_538_),
    .D(_537_),
    .Y(_1128_)
);

INVX1 _1469_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_434_)
);

OAI21X1 _2410_ (
    .A(_994_),
    .B(_186_),
    .C(_284_),
    .Y(_285_)
);

AOI21X1 _1698_ (
    .A(\u_cpu.bufreg.i_shamt [2]),
    .B(_982_),
    .C(_998_),
    .Y(_999_)
);

NOR2X1 _1278_ (
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_603_)
);

NOR2X1 _1910_ (
    .A(mem_ibus_ack),
    .B(_1145_),
    .Y(_1146_)
);

DFFPOSX1 _2504_ (
    .D(_918_),
    .CLK(i_clk_sys_ext),
    .Q(rreg1[1])
);

DFFPOSX1 _2733_ (
    .D(_864_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [20])
);

NOR2X1 _2313_ (
    .A(_191_),
    .B(_175_),
    .Y(_218_)
);

FILL FILL98250x90150 (
);

DFFPOSX1 _2542_ (
    .D(_705_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [1])
);

OAI22X1 _2122_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [21]),
    .C(\u_rf_if.read_buf0 [20]),
    .D(_1174_),
    .Y(_72_)
);

OAI21X1 _1813_ (
    .A(mem_dbus_ack),
    .B(_549_),
    .C(_1087_),
    .Y(_1088_)
);

AOI22X1 _2351_ (
    .A(\u_cpu.bufreg2.dlo [10]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [9]),
    .Y(_241_)
);

INVX1 _1622_ (
    .A(\u_cpu.bufreg.data [3]),
    .Y(_662_)
);

AOI21X1 _2407_ (
    .A(_1227_),
    .B(_139_),
    .C(_281_),
    .Y(_282_)
);

INVX1 _2580_ (
    .A(_654_),
    .Y(_653_)
);

AOI21X1 _2160_ (
    .A(_1181_),
    .B(_96_),
    .C(_97_),
    .Y(_744_)
);

INVX1 _1851_ (
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_1108_)
);

OAI21X1 _1431_ (
    .A(_636_),
    .B(_653_),
    .C(_561_),
    .Y(_466_)
);

FILL FILL98550x10950 (
);

DFFPOSX1 _2636_ (
    .D(_769_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [7])
);

AOI21X1 _2216_ (
    .A(_1162_),
    .B(_132_),
    .C(_92_),
    .Y(_135_)
);

OAI21X1 _1907_ (
    .A(_626_),
    .B(_475_),
    .C(i_rst_n),
    .Y(_1144_)
);

NAND2X1 _1660_ (
    .A(_965_),
    .B(_628_),
    .Y(_966_)
);

OAI21X1 _2445_ (
    .A(_313_),
    .B(_314_),
    .C(_139_),
    .Y(_315_)
);

NOR2X1 _2025_ (
    .A(_6_),
    .B(_1123_),
    .Y(_7_)
);

MUX2X1 _1716_ (
    .A(_1010_),
    .B(_1012_),
    .S(_968_),
    .Y(_864_)
);

DFFPOSX1 _2674_ (
    .D(_802_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [30])
);

AOI21X1 _2254_ (
    .A(\u_mem_serial.bit_count [3]),
    .B(\u_mem_serial.state [0]),
    .C(_167_),
    .Y(_168_)
);

FILL FILL98250x150 (
);

INVX1 _1945_ (
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_1180_)
);

NOR2X1 _1525_ (
    .A(mem_ibus_ack),
    .B(_390_),
    .Y(_389_)
);

DFFPOSX1 _2483_ (
    .D(\u_rf_if.wdata0_next [0]),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.wdata0_r [0])
);

NOR2X1 _2063_ (
    .A(_33_),
    .B(_1183_),
    .Y(_34_)
);

INVX1 _1754_ (
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_1042_)
);

INVX1 _1334_ (
    .A(_549_),
    .Y(_548_)
);

DFFPOSX1 _2539_ (
    .D(_678_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [28])
);

OAI22X1 _2119_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [20]),
    .C(\u_rf_if.read_buf0 [21]),
    .D(_1171_),
    .Y(_70_)
);

NAND2X1 _2292_ (
    .A(_201_),
    .B(_150_),
    .Y(_202_)
);

NOR2X1 _1983_ (
    .A(\u_rf_if.pending_read ),
    .B(mem_ibus_ack),
    .Y(_1215_)
);

INVX1 _1563_ (
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_359_)
);

MUX2X1 _2348_ (
    .A(_1054_),
    .B(_239_),
    .S(_179_),
    .Y(_698_)
);

MUX2X1 _1619_ (
    .A(_330_),
    .B(_329_),
    .S(_597_),
    .Y(_883_)
);

NOR2X1 _1792_ (
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_1013_),
    .Y(_1072_)
);

INVX1 _1372_ (
    .A(\u_cpu.bufreg2.dlo [0]),
    .Y(_510_)
);

DFFPOSX1 _2577_ (
    .D(_730_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg0_latched [2])
);

NOR2X1 _2157_ (
    .A(_1182_),
    .B(_92_),
    .Y(_95_)
);

MUX2X1 _1848_ (
    .A(_1105_),
    .B(_1106_),
    .S(_1091_),
    .Y(_826_)
);

NOR2X1 _1428_ (
    .A(mem_ibus_ack),
    .B(_602_),
    .Y(_469_)
);

OAI21X1 _2386_ (
    .A(_261_),
    .B(\u_cpu.o_wdata0 ),
    .C(_264_),
    .Y(_265_)
);

AOI21X1 _1657_ (
    .A(_627_),
    .B(_664_),
    .C(_962_),
    .Y(_963_)
);

OAI21X1 _2195_ (
    .A(_1136_),
    .B(_120_),
    .C(_1201_),
    .Y(_122_)
);

OAI21X1 _1886_ (
    .A(_562_),
    .B(_539_),
    .C(_565_),
    .Y(_1126_)
);

OAI21X1 _1466_ (
    .A(mem_ibus_ack),
    .B(_440_),
    .C(_498_),
    .Y(_436_)
);

NOR2X1 _1695_ (
    .A(_995_),
    .B(_994_),
    .Y(_996_)
);

NOR2X1 _1275_ (
    .A(_635_),
    .B(_637_),
    .Y(_606_)
);

NAND3X1 _2289_ (
    .A(\u_mem_serial.state [0]),
    .B(_199_),
    .C(_176_),
    .Y(_200_)
);

FILL FILL97950x43350 (
);

DFFPOSX1 _2501_ (
    .D(_915_),
    .CLK(i_clk_sys_ext),
    .Q(rf_wreg0_to_if[2])
);

INVX1 _2098_ (
    .A(\u_rf_if.read_buf0 [14]),
    .Y(_56_)
);

AOI21X1 _1789_ (
    .A(_1013_),
    .B(_1068_),
    .C(_1069_),
    .Y(_848_)
);

NOR2X1 _1369_ (
    .A(_514_),
    .B(_515_),
    .Y(_513_)
);

DFFPOSX1 _2730_ (
    .D(_861_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [17])
);

OAI21X1 _2310_ (
    .A(_191_),
    .B(_163_),
    .C(_214_),
    .Y(_712_)
);

INVX1 _1598_ (
    .A(\u_cpu.bufreg.data [15]),
    .Y(_339_)
);

AOI21X1 _1810_ (
    .A(_1013_),
    .B(_1084_),
    .C(_1085_),
    .Y(_843_)
);

MUX2X1 _2404_ (
    .A(_359_),
    .B(_279_),
    .S(_179_),
    .Y(_682_)
);

DFFPOSX1 _2633_ (
    .D(_767_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [9])
);

INVX1 _2213_ (
    .A(_1187_),
    .Y(_132_)
);

OAI21X1 _1904_ (
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [5]),
    .C(_1141_),
    .Y(_1142_)
);

INVX1 _2442_ (
    .A(\u_mem_serial.shift_reg [30]),
    .Y(_312_)
);

NAND2X1 _2022_ (
    .A(_388_),
    .B(_392_),
    .Y(_4_)
);

INVX1 _1713_ (
    .A(\u_cpu.bufreg2.dlo [20]),
    .Y(_1010_)
);

DFFPOSX1 _2671_ (
    .D(_799_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.rreg0_latched [3])
);

INVX1 _2251_ (
    .A(_164_),
    .Y(_165_)
);

FILL FILL98250x43350 (
);

NOR2X1 _1942_ (
    .A(_1172_),
    .B(_1168_),
    .Y(_1177_)
);

INVX1 _1522_ (
    .A(rf_wreg0_to_if[3]),
    .Y(_392_)
);

DFFPOSX1 _2727_ (
    .D(_858_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [14])
);

OAI21X1 _2307_ (
    .A(_173_),
    .B(_194_),
    .C(_163_),
    .Y(_214_)
);

INVX1 _2480_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_636_)
);

AOI22X1 _2060_ (
    .A(_1204_),
    .B(_31_),
    .C(_1213_),
    .D(raddr[2]),
    .Y(_32_)
);

OAI21X1 _1751_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(_1039_),
    .Y(_1040_)
);

NOR2X1 _1331_ (
    .A(_592_),
    .B(_568_),
    .Y(_551_)
);

DFFPOSX1 _2536_ (
    .D(_702_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [4])
);

OAI22X1 _2116_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [19]),
    .C(\u_rf_if.read_buf0 [18]),
    .D(_1174_),
    .Y(_68_)
);

NAND2X1 _1807_ (
    .A(mem_dbus_ack),
    .B(_411_),
    .Y(_1083_)
);

AOI22X1 _1980_ (
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_1211_),
    .C(_1213_),
    .D(raddr[7]),
    .Y(_1214_)
);

OAI21X1 _1560_ (
    .A(_365_),
    .B(_362_),
    .C(_561_),
    .Y(_361_)
);

DFFPOSX1 _2765_ (
    .D(_895_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [17])
);

AOI22X1 _2345_ (
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [6]),
    .Y(_238_)
);

FILL FILL98550x86550 (
);

INVX1 _1616_ (
    .A(\u_cpu.bufreg.data [6]),
    .Y(_330_)
);

DFFPOSX1 _2574_ (
    .D(_687_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [19])
);

NAND3X1 _2154_ (
    .A(\u_rf_if.stream_cnt [1]),
    .B(_10_),
    .C(_92_),
    .Y(_93_)
);

INVX1 _1845_ (
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_1105_)
);

NAND2X1 _1425_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [30]),
    .Y(_471_)
);

INVX1 _2383_ (
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_262_)
);

NOR2X1 _1654_ (
    .A(_596_),
    .B(_960_),
    .Y(_961_)
);

OAI21X1 _2439_ (
    .A(_617_),
    .B(_186_),
    .C(_309_),
    .Y(_310_)
);

NAND2X1 _2019_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(_1_),
    .Y(_2_)
);

INVX1 _2192_ (
    .A(_119_),
    .Y(_120_)
);

AND2X2 _1883_ (
    .A(_573_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_1124_)
);

NOR2X1 _1463_ (
    .A(_439_),
    .B(_465_),
    .Y(_438_)
);

DFFPOSX1 _2668_ (
    .D(_674_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.cnt_r [3])
);

INVX1 _2248_ (
    .A(\u_mem_serial.bit_count [4]),
    .Y(_162_)
);

INVX1 _1939_ (
    .A(_1174_),
    .Y(_1175_)
);

OAI21X1 _1519_ (
    .A(mem_ibus_ack),
    .B(_400_),
    .C(_476_),
    .Y(_394_)
);

AOI22X1 _1692_ (
    .A(_616_),
    .B(_971_),
    .C(_993_),
    .D(_992_),
    .Y(_869_)
);

OAI21X1 _1272_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_612_),
    .C(\u_cpu.bufreg2.dhi [5]),
    .Y(_609_)
);

INVX1 _2477_ (
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_639_)
);

INVX1 _2057_ (
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_29_)
);

FILL FILL98550x18150 (
);

AOI21X1 _1748_ (
    .A(_1013_),
    .B(_1036_),
    .C(_1037_),
    .Y(_857_)
);

NOR3X1 _1328_ (
    .A(_556_),
    .B(\u_mem_serial.shift_reg [3]),
    .C(_554_),
    .Y(_553_)
);

INVX1 _2286_ (
    .A(rf_shared_rdata[1]),
    .Y(_197_)
);

OAI21X1 _1977_ (
    .A(_1163_),
    .B(_1210_),
    .C(_1205_),
    .Y(_1211_)
);

OAI21X1 _1557_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_650_),
    .Y(_364_)
);

AOI21X1 _2095_ (
    .A(_53_),
    .B(_1170_),
    .C(_54_),
    .Y(_766_)
);

NAND2X1 _1786_ (
    .A(mem_dbus_ack),
    .B(_559_),
    .Y(_1067_)
);

NAND2X1 _1366_ (
    .A(_517_),
    .B(_522_),
    .Y(_516_)
);

MUX2X1 _1595_ (
    .A(_342_),
    .B(_341_),
    .S(_597_),
    .Y(_895_)
);

OAI21X1 _2189_ (
    .A(_1137_),
    .B(_117_),
    .C(_114_),
    .Y(_118_)
);

OAI21X1 _2401_ (
    .A(_139_),
    .B(raddr[2]),
    .C(_276_),
    .Y(_277_)
);

OAI21X1 _1689_ (
    .A(_981_),
    .B(_618_),
    .C(_990_),
    .Y(_991_)
);

INVX1 _1269_ (
    .A(_613_),
    .Y(_612_)
);

DFFPOSX1 _2630_ (
    .D(_778_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[2])
);

NAND3X1 _2210_ (
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_1210_),
    .C(_1208_),
    .Y(_130_)
);

NAND3X1 _1901_ (
    .A(_1136_),
    .B(_1137_),
    .C(_1138_),
    .Y(_1139_)
);

INVX1 _1498_ (
    .A(rreg1[4]),
    .Y(_412_)
);

NAND2X1 _1710_ (
    .A(mem_dbus_ack),
    .B(_399_),
    .Y(_1008_)
);

DFFPOSX1 _2724_ (
    .D(_855_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [11])
);

OAI21X1 _2304_ (
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .C(_1196_),
    .Y(_212_)
);

DFFPOSX1 _2533_ (
    .D(_946_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bne_or_bge )
);

OAI22X1 _2113_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [18]),
    .C(\u_rf_if.read_buf0 [19]),
    .D(_1171_),
    .Y(_66_)
);

NAND2X1 _1804_ (
    .A(mem_dbus_ack),
    .B(_1080_),
    .Y(_1081_)
);

DFFPOSX1 _2762_ (
    .D(_892_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [14])
);

MUX2X1 _2342_ (
    .A(_556_),
    .B(_236_),
    .S(_179_),
    .Y(_701_)
);

MUX2X1 _1613_ (
    .A(_333_),
    .B(_332_),
    .S(_597_),
    .Y(_886_)
);

INVX1 _2571_ (
    .A(\u_cpu.decode.opcode [2]),
    .Y(_656_)
);

NOR2X1 _2151_ (
    .A(_90_),
    .B(_11_),
    .Y(_91_)
);

MUX2X1 _1842_ (
    .A(_1102_),
    .B(_1103_),
    .S(_1091_),
    .Y(_829_)
);

NOR2X1 _1422_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_474_),
    .Y(_473_)
);

DFFPOSX1 _2627_ (
    .D(_762_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [14])
);

NAND2X1 _2207_ (
    .A(\u_rf_if.rreg1_latched [2]),
    .B(_561_),
    .Y(_128_)
);

NOR2X1 _2380_ (
    .A(_179_),
    .B(_259_),
    .Y(_260_)
);

INVX1 _1651_ (
    .A(_955_),
    .Y(_958_)
);

NAND2X1 _2436_ (
    .A(\u_cpu.bufreg.data [4]),
    .B(_202_),
    .Y(_307_)
);

NOR2X1 _2016_ (
    .A(_1226_),
    .B(_1241_),
    .Y(_1242_)
);

OAI21X1 _1707_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [23]),
    .C(_1005_),
    .Y(_1006_)
);

INVX1 _1880_ (
    .A(_519_),
    .Y(_1122_)
);

AOI21X1 _1460_ (
    .A(_446_),
    .B(_465_),
    .C(_441_),
    .Y(_930_)
);

DFFPOSX1 _2665_ (
    .D(_699_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [7])
);

INVX1 _2245_ (
    .A(_150_),
    .Y(_160_)
);

INVX1 _1936_ (
    .A(_1165_),
    .Y(_1172_)
);

OAI21X1 _1516_ (
    .A(mem_ibus_ack),
    .B(_406_),
    .C(_397_),
    .Y(_396_)
);

NAND2X1 _2474_ (
    .A(_658_),
    .B(_644_),
    .Y(_642_)
);

NOR2X1 _2054_ (
    .A(\u_rf_if.issue_idx [0]),
    .B(_1207_),
    .Y(_27_)
);

NAND2X1 _1745_ (
    .A(mem_dbus_ack),
    .B(_1034_),
    .Y(_1035_)
);

INVX1 _1325_ (
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_556_)
);

INVX1 _2283_ (
    .A(_194_),
    .Y(_195_)
);

NOR2X1 _1974_ (
    .A(_1207_),
    .B(_1206_),
    .Y(_1208_)
);

INVX1 _1554_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_367_)
);

DFFPOSX1 _2759_ (
    .D(_889_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [11])
);

AOI22X1 _2339_ (
    .A(\u_cpu.bufreg2.dlo [4]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [3]),
    .Y(_235_)
);

AOI21X1 _2092_ (
    .A(_51_),
    .B(_1170_),
    .C(_52_),
    .Y(_767_)
);

OAI21X1 _1783_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [6]),
    .C(_1064_),
    .Y(_1065_)
);

NOR2X1 _1363_ (
    .A(_521_),
    .B(_520_),
    .Y(_519_)
);

DFFPOSX1 _2568_ (
    .D(_947_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.co_mem_word )
);

NOR2X1 _2148_ (
    .A(_87_),
    .B(_88_),
    .Y(_747_)
);

INVX1 _1839_ (
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_1102_)
);

AND2X2 _1419_ (
    .A(\u_cpu.state.cnt_r [1]),
    .B(i_rst_n),
    .Y(_936_)
);

INVX1 _1592_ (
    .A(\u_cpu.bufreg.data [18]),
    .Y(_342_)
);

NAND3X1 _2377_ (
    .A(_216_),
    .B(_256_),
    .C(_1149_),
    .Y(_257_)
);

MUX2X1 _1648_ (
    .A(_956_),
    .B(_664_),
    .S(_667_),
    .Y(_876_)
);

AOI21X1 _2186_ (
    .A(_1138_),
    .B(_113_),
    .C(_115_),
    .Y(_736_)
);

MUX2X1 _1877_ (
    .A(_1120_),
    .B(_1117_),
    .S(_1091_),
    .Y(_811_)
);

INVX1 _1457_ (
    .A(_444_),
    .Y(_443_)
);

OAI22X1 _1686_ (
    .A(_981_),
    .B(_969_),
    .C(_988_),
    .D(_987_),
    .Y(_870_)
);

NOR2X1 _1266_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_615_)
);

INVX1 _1495_ (
    .A(_591_),
    .Y(_415_)
);

NOR2X1 _2089_ (
    .A(_49_),
    .B(_50_),
    .Y(_768_)
);

DFFPOSX1 _2721_ (
    .D(_852_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [8])
);

AOI21X1 _2301_ (
    .A(_209_),
    .B(_561_),
    .C(_207_),
    .Y(_715_)
);

MUX2X1 _1589_ (
    .A(_345_),
    .B(_344_),
    .S(_597_),
    .Y(_898_)
);

DFFPOSX1 _2530_ (
    .D(_943_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.opcode [1])
);

OAI22X1 _2110_ (
    .A(_568_),
    .B(\u_rf_if.read_buf0 [17]),
    .C(\u_rf_if.read_buf0 [18]),
    .D(_1171_),
    .Y(_64_)
);

NOR2X1 _1801_ (
    .A(\u_cpu.bufreg2.dlo [1]),
    .B(_1013_),
    .Y(_1079_)
);

FILL FILL98550x150 (
);

NOR2X1 _1398_ (
    .A(_629_),
    .B(_621_),
    .Y(_491_)
);

INVX1 _1610_ (
    .A(\u_cpu.bufreg.data [9]),
    .Y(_333_)
);

DFFPOSX1 _2624_ (
    .D(_759_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [17])
);

AOI21X1 _2204_ (
    .A(_476_),
    .B(_126_),
    .C(_492_),
    .Y(_729_)
);

AOI22X1 _2433_ (
    .A(_299_),
    .B(_179_),
    .C(_300_),
    .D(_304_),
    .Y(_678_)
);

INVX1 _2013_ (
    .A(\u_rf_if.wen0_r ),
    .Y(_1239_)
);

FILL FILL98250x50550 (
);

MUX2X1 _1704_ (
    .A(_1003_),
    .B(_995_),
    .S(_969_),
    .Y(_867_)
);

DFFPOSX1 _2662_ (
    .D(_673_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.i_jump )
);

NOR2X1 _2242_ (
    .A(_145_),
    .B(_156_),
    .Y(_157_)
);

NAND2X1 _1933_ (
    .A(_1165_),
    .B(_1168_),
    .Y(_1169_)
);

INVX1 _1513_ (
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_399_)
);

DFFPOSX1 _2718_ (
    .D(_849_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [5])
);

OAI21X1 _2471_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(_650_),
    .C(_646_),
    .Y(_645_)
);

OAI21X1 _2051_ (
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [0]),
    .Y(_25_)
);

NOR2X1 _1742_ (
    .A(\u_cpu.bufreg2.dlo [14]),
    .B(_1013_),
    .Y(_1033_)
);

INVX1 _1322_ (
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_559_)
);

DFFPOSX1 _2527_ (
    .D(_940_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.state.cnt_r [1])
);

NOR2X1 _2107_ (
    .A(\u_rf_if.read_buf0 [15]),
    .B(_1174_),
    .Y(_62_)
);

INVX1 _2280_ (
    .A(_144_),
    .Y(_192_)
);

FILL FILL98550x93750 (
);

OAI21X1 _1971_ (
    .A(_1180_),
    .B(_1184_),
    .C(_1204_),
    .Y(_1205_)
);

AOI22X1 _1551_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_469_),
    .D(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_369_)
);

DFFPOSX1 _2756_ (
    .D(_887_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [9])
);

MUX2X1 _2336_ (
    .A(_555_),
    .B(_233_),
    .S(_179_),
    .Y(_704_)
);

MUX2X1 _1607_ (
    .A(_336_),
    .B(_335_),
    .S(_597_),
    .Y(_889_)
);

NOR2X1 _1780_ (
    .A(\u_cpu.bufreg2.dlo [6]),
    .B(_1013_),
    .Y(_1063_)
);

NOR2X1 _1360_ (
    .A(_523_),
    .B(_576_),
    .Y(_522_)
);

DFFPOSX1 _2565_ (
    .D(_721_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.active_we )
);

AOI21X1 _2145_ (
    .A(_85_),
    .B(_1170_),
    .C(_86_),
    .Y(_748_)
);

MUX2X1 _1836_ (
    .A(_1099_),
    .B(_1100_),
    .S(_1091_),
    .Y(_832_)
);

NOR2X1 _1416_ (
    .A(_561_),
    .B(_478_),
    .Y(_477_)
);

OAI21X1 _2374_ (
    .A(\u_rf_if.read_buf1 ),
    .B(_1203_),
    .C(_253_),
    .Y(_254_)
);

OAI21X1 _1645_ (
    .A(_953_),
    .B(_948_),
    .C(_628_),
    .Y(_954_)
);

NAND2X1 _2183_ (
    .A(\u_rf_if.issue_idx [0]),
    .B(_1212_),
    .Y(_113_)
);

MUX2X1 _1874_ (
    .A(_1119_),
    .B(_1118_),
    .S(_1091_),
    .Y(_813_)
);

INVX1 _1454_ (
    .A(\u_cpu.csr_imm ),
    .Y(_446_)
);

DFFPOSX1 _2659_ (
    .D(_789_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.o_waddr [3])
);

NAND2X1 _2239_ (
    .A(_153_),
    .B(_154_),
    .Y(_155_)
);

NAND2X1 _1683_ (
    .A(_972_),
    .B(_985_),
    .Y(_986_)
);

NOR2X1 _1263_ (
    .A(_637_),
    .B(_619_),
    .Y(_618_)
);

INVX1 _2468_ (
    .A(\u_cpu.decode.opcode [1]),
    .Y(_648_)
);

AOI21X1 _2048_ (
    .A(_481_),
    .B(_23_),
    .C(_492_),
    .Y(_782_)
);

INVX1 _1739_ (
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_1030_)
);

NAND2X1 _1319_ (
    .A(_563_),
    .B(_565_),
    .Y(_562_)
);

MUX2X1 _1492_ (
    .A(\u_mem_serial.shift_reg [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(mem_ibus_ack),
    .Y(_417_)
);

DFFPOSX1 _2697_ (
    .D(_829_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

AOI21X1 _2277_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(_184_),
    .C(_189_),
    .Y(_190_)
);

OAI21X1 _1968_ (
    .A(_1201_),
    .B(_1141_),
    .C(\u_rf_if.rreg0_latched [3]),
    .Y(_1202_)
);

OAI21X1 _1548_ (
    .A(\u_cpu.branch_op ),
    .B(rreg1[0]),
    .C(_372_),
    .Y(_371_)
);

AOI21X1 _2086_ (
    .A(_47_),
    .B(_1170_),
    .C(_48_),
    .Y(_769_)
);

AOI21X1 _1777_ (
    .A(_1013_),
    .B(_1059_),
    .C(_1060_),
    .Y(_851_)
);

OAI21X1 _1357_ (
    .A(_569_),
    .B(_536_),
    .C(_526_),
    .Y(_525_)
);

INVX1 _1586_ (
    .A(\u_cpu.bufreg.data [21]),
    .Y(_345_)
);

NAND2X1 _1395_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [2]),
    .Y(_493_)
);

DFFPOSX1 _2621_ (
    .D(_780_),
    .CLK(i_clk_sys_ext),
    .Q(raddr[4])
);

NAND2X1 _2201_ (
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_561_),
    .Y(_125_)
);

MUX2X1 _1489_ (
    .A(\u_mem_serial.shift_reg [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(mem_ibus_ack),
    .Y(_419_)
);

AOI22X1 _2430_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [27]),
    .Y(_302_)
);

OAI21X1 _2010_ (
    .A(_1229_),
    .B(_1233_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1237_)
);

MUX2X1 _1701_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_994_),
    .S(_618_),
    .Y(_1001_)
);

INVX1 _1298_ (
    .A(_584_),
    .Y(_583_)
);

NAND2X1 _1930_ (
    .A(\u_rf_if.issue_idx [4]),
    .B(\u_rf_if.issue_idx [0]),
    .Y(_1166_)
);

NOR2X1 _1510_ (
    .A(_402_),
    .B(_413_),
    .Y(_401_)
);

DFFPOSX1 _2715_ (
    .D(_846_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg2.dlo [2])
);

DFFPOSX1 _2524_ (
    .D(_937_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.decode.co_ebreak )
);

INVX1 _2104_ (
    .A(\u_rf_if.read_buf0 [16]),
    .Y(_60_)
);

DFFPOSX1 _2753_ (
    .D(_884_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.bufreg.data [6])
);

AOI22X1 _2333_ (
    .A(\u_cpu.bufreg2.dlo [1]),
    .B(_185_),
    .C(_184_),
    .D(\u_mem_serial.shift_reg [0]),
    .Y(_232_)
);

INVX1 _1604_ (
    .A(\u_cpu.bufreg.data [12]),
    .Y(_336_)
);

DFFPOSX1 _2562_ (
    .D(_683_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [23])
);

NOR2X1 _2142_ (
    .A(_83_),
    .B(_84_),
    .Y(_749_)
);

INVX1 _1833_ (
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_1099_)
);

NAND2X1 _1413_ (
    .A(mem_ibus_ack),
    .B(\u_mem_serial.shift_reg [14]),
    .Y(_479_)
);

DFFPOSX1 _2618_ (
    .D(_755_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.read_buf0 [21])
);

NOR2X1 _2371_ (
    .A(\u_rf_if.wdata0_next [0]),
    .B(\u_rf_if.i_stream_rs2_en ),
    .Y(_251_)
);

NAND2X1 _1642_ (
    .A(\u_cpu.bufreg.c_r ),
    .B(_950_),
    .Y(_951_)
);

INVX1 _2427_ (
    .A(\u_mem_serial.shift_reg [28]),
    .Y(_299_)
);

NAND3X1 _2007_ (
    .A(_570_),
    .B(_486_),
    .C(_542_),
    .Y(_1234_)
);

INVX1 _2180_ (
    .A(_27_),
    .Y(_111_)
);

MUX2X1 _1871_ (
    .A(_1117_),
    .B(_1090_),
    .S(_1091_),
    .Y(_814_)
);

OAI21X1 _1451_ (
    .A(mem_ibus_ack),
    .B(_458_),
    .C(_449_),
    .Y(_448_)
);

DFFPOSX1 _2656_ (
    .D(_697_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.shift_reg [9])
);

INVX1 _2236_ (
    .A(_151_),
    .Y(_152_)
);

INVX1 _1927_ (
    .A(\u_rf_if.prefetch_active ),
    .Y(_1163_)
);

NOR2X1 _1507_ (
    .A(_561_),
    .B(_405_),
    .Y(_404_)
);

INVX1 _1680_ (
    .A(_614_),
    .Y(_983_)
);

INVX1 _1260_ (
    .A(_622_),
    .Y(_621_)
);

NOR2X1 _2465_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_651_)
);

INVX1 _2045_ (
    .A(\u_rf_if.rcnt [1]),
    .Y(_21_)
);

OAI21X1 _1736_ (
    .A(mem_dbus_ack),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(_1027_),
    .Y(_1028_)
);

NAND2X1 _1316_ (
    .A(\u_cpu.alu.add_cy_r ),
    .B(_566_),
    .Y(_565_)
);

DFFPOSX1 _2694_ (
    .D(_826_),
    .CLK(i_clk_sys_ext),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

NAND2X1 _2274_ (
    .A(\u_rf_if.wen0_r ),
    .B(\u_rf_if.rtrig1 ),
    .Y(_187_)
);

NAND2X1 _1965_ (
    .A(i_rst_n),
    .B(_1199_),
    .Y(_1200_)
);

INVX1 _1545_ (
    .A(_375_),
    .Y(_374_)
);

NOR2X1 _2083_ (
    .A(_45_),
    .B(_46_),
    .Y(_770_)
);

NAND2X1 _1774_ (
    .A(mem_dbus_ack),
    .B(_1057_),
    .Y(_1058_)
);

AOI22X1 _1354_ (
    .A(_575_),
    .B(_529_),
    .C(_535_),
    .D(_633_),
    .Y(_528_)
);

DFFPOSX1 _2559_ (
    .D(_718_),
    .CLK(i_clk_fast),
    .Q(\u_mem_serial.state [1])
);

AOI21X1 _2139_ (
    .A(_81_),
    .B(_1170_),
    .C(_82_),
    .Y(_750_)
);

MUX2X1 _1583_ (
    .A(_348_),
    .B(_347_),
    .S(_597_),
    .Y(_901_)
);

MUX2X1 _2368_ (
    .A(_463_),
    .B(_249_),
    .S(_179_),
    .Y(_688_)
);

INVX1 _1639_ (
    .A(_805_),
    .Y(_948_)
);

AOI21X1 _1392_ (
    .A(mem_ibus_ack),
    .B(_559_),
    .C(_495_),
    .Y(_944_)
);

DFFPOSX1 _2597_ (
    .D(_740_),
    .CLK(i_clk_sys_ext),
    .Q(\u_rf_if.o_waddr [0])
);

INVX1 _2177_ (
    .A(_1_),
    .Y(_109_)
);

MUX2X1 _1868_ (
    .A(_1115_),
    .B(_1116_),
    .S(_1091_),
    .Y(_816_)
);

INVX1 _1448_ (
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_451_)
);

endmodule
