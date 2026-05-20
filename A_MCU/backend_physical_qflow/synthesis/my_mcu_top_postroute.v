/* Verilog module written by DEF2Verilog (qflow) */
module my_mcu_top (
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

wire o_mem_sck ;
wire _1677_ ;
wire _1257_ ;
wire _588_ ;
wire _168_ ;
wire _800_ ;
wire _60_ ;
wire _1486_ ;
wire _1066_ ;
wire _397_ ;
wire \u_cpu.ctrl.pc_plus_4_cy_r_w  ;
wire _1295_ ;
wire _703_ ;
wire [2:0] \u_cpu.decode.opcode  ;
wire _1389_ ;
wire _19_ ;
wire _1601_ ;
wire _932_ ;
wire _512_ ;
wire _1198_ ;
wire _1830_ ;
wire _1410_ ;
wire _741_ ;
wire _321_ ;
wire _57_ ;
wire _970_ ;
wire _550_ ;
wire _130_ ;
wire [2:2] \u_cpu.state.o_cnt  ;
wire _606_ ;
wire _1504_ ;
wire _835_ ;
wire _415_ ;
wire _95_ ;
wire _1733_ ;
wire _1313_ ;
wire _644_ ;
wire _224_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf11  ;
wire _1542_ ;
wire _1122_ ;
wire _873_ ;
wire _453_ ;
wire _929_ ;
wire _509_ ;
wire _1771_ ;
wire _1351_ ;
wire _682_ ;
wire _262_ ;
wire _1827_ ;
wire _1407_ ;
wire _1023__bF$buf0 ;
wire _1023__bF$buf1 ;
wire _1023__bF$buf2 ;
wire _738_ ;
wire _1023__bF$buf3 ;
wire _318_ ;
wire _1023__bF$buf4 ;
wire _1023__bF$buf5 ;
wire _1580_ ;
wire _1160_ ;
wire _491_ ;
wire _1636_ ;
wire _1216_ ;
wire _967_ ;
wire _547_ ;
wire _127_ ;
wire _1445_ ;
wire _1025_ ;
wire _776_ ;
wire _356_ ;
wire _1674_ ;
wire _1254_ ;
wire _585_ ;
wire _165_ ;
wire _1483_ ;
wire _1063_ ;
wire _394_ ;
wire _1539_ ;
wire _1119_ ;
wire _1292_ ;
wire _1768_ ;
wire _1348_ ;
wire _679_ ;
wire _259_ ;
wire _1577_ ;
wire _1157_ ;
wire _488_ ;
wire _700_ ;
wire _1386_ ;
wire _297_ ;
wire _16_ ;
wire _1195_ ;
wire _54_ ;
wire _603_ ;
wire _1289_ ;
wire _1501_ ;
wire _832_ ;
wire _412_ ;
wire _92_ ;
wire _1098_ ;
wire _1730_ ;
wire _1310_ ;
wire _641_ ;
wire _221_ ;
wire _870_ ;
wire _450_ ;
wire _926_ ;
wire _506_ ;
wire _1824_ ;
wire _1404_ ;
wire _735_ ;
wire _315_ ;
wire _1633_ ;
wire _1213_ ;
wire _964_ ;
wire _544_ ;
wire _124_ ;
wire _1442_ ;
wire _1022_ ;
wire _773_ ;
wire _353_ ;
wire _829_ ;
wire _409_ ;
wire _89_ ;
wire _1671_ ;
wire _1251_ ;
wire _582_ ;
wire _162_ ;
wire _1727_ ;
wire _1307_ ;
wire _638_ ;
wire _218_ ;
wire _1480_ ;
wire _1060_ ;
wire _391_ ;
wire _1692__bF$buf0 ;
wire _1692__bF$buf1 ;
wire _1692__bF$buf2 ;
wire _1692__bF$buf3 ;
wire _1692__bF$buf4 ;
wire _1536_ ;
wire _1116_ ;
wire _867_ ;
wire _447_ ;
wire _1765_ ;
wire _1345_ ;
wire _676_ ;
wire _256_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf43  ;
wire _1574_ ;
wire _1154_ ;
wire _485_ ;
wire \u_mem_serial.req_pending  ;
wire _1383_ ;
wire _294_ ;
wire _13_ ;
wire _1859_ ;
wire _1439_ ;
wire _1019_ ;
wire _1192_ ;
wire _1668_ ;
wire _1248_ ;
wire _999_ ;
wire _579_ ;
wire _159_ ;
wire _51_ ;
wire _1477_ ;
wire _1057_ ;
wire _388_ ;
wire _600_ ;
wire _1286_ ;
wire _197_ ;
wire [4:0] \u_rf_if.stream_cnt  ;
wire _1095_ ;
wire \u_rf_if.pending_read  ;
wire _7_ ;
wire _923_ ;
wire _503_ ;
wire _1189_ ;
wire _1821_ ;
wire _1401_ ;
wire _732_ ;
wire _312_ ;
wire _48_ ;
wire _1630_ ;
wire _1210_ ;
wire _961_ ;
wire _541_ ;
wire _121_ ;
wire _770_ ;
wire _350_ ;
wire _826_ ;
wire _406_ ;
wire _86_ ;
wire _1724_ ;
wire _1304_ ;
wire _635_ ;
wire _215_ ;
wire o_rf_sync ;
wire _1533_ ;
wire _1113_ ;
wire _864_ ;
wire _444_ ;
wire _1762_ ;
wire _1342_ ;
wire _673_ ;
wire _253_ ;
wire _1818_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf40  ;
wire _729_ ;
wire _309_ ;
wire _1571_ ;
wire _1151_ ;
wire _482_ ;
wire _1627_ ;
wire _1207_ ;
wire _958_ ;
wire _538_ ;
wire _118_ ;
wire _1380_ ;
wire _291_ ;
wire _10_ ;
wire _1856_ ;
wire _1436_ ;
wire _1016_ ;
wire _767_ ;
wire _347_ ;
wire _1665_ ;
wire _1245_ ;
wire _996_ ;
wire _576_ ;
wire _156_ ;
wire _1474_ ;
wire _1054_ ;
wire _385_ ;
wire _1283_ ;
wire _194_ ;
wire _1759_ ;
wire _1339_ ;
wire _1092_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf37  ;
wire _1568_ ;
wire _1148_ ;
wire _899_ ;
wire _479_ ;
wire _674__bF$buf0 ;
wire _674__bF$buf1 ;
wire _674__bF$buf2 ;
wire _674__bF$buf3 ;
wire _1797_ ;
wire _1377_ ;
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
wire _1721_ ;
wire _1301_ ;
wire _632_ ;
wire _212_ ;
wire _1530_ ;
wire _1110_ ;
wire _861_ ;
wire _441_ ;
wire _917_ ;
wire _670_ ;
wire _250_ ;
wire _1815_ ;
wire _726_ ;
wire _306_ ;
wire _1624_ ;
wire _1204_ ;
wire _955_ ;
wire _535_ ;
wire _115_ ;
wire _973__bF$buf0 ;
wire _973__bF$buf1 ;
wire _973__bF$buf2 ;
wire _973__bF$buf3 ;
wire _973__bF$buf4 ;
wire _973__bF$buf5 ;
wire _973__bF$buf6 ;
wire _1853_ ;
wire _1433_ ;
wire _1013_ ;
wire i_mem_miso ;
wire _764_ ;
wire _344_ ;
wire _1662_ ;
wire _1242_ ;
wire _993_ ;
wire _573_ ;
wire _153_ ;
wire _1718_ ;
wire _629_ ;
wire _209_ ;
wire _1471_ ;
wire _1051_ ;
wire _382_ ;
wire _1527_ ;
wire _1107_ ;
wire _858_ ;
wire _438_ ;
wire _1280_ ;
wire _191_ ;
wire _1756_ ;
wire _1336_ ;
wire _667_ ;
wire _247_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf34  ;
wire _1565_ ;
wire _1145_ ;
wire _896_ ;
wire _476_ ;
wire _1794_ ;
wire _1374_ ;
wire _285_ ;
wire _1_ ;
wire [31:0] \u_rf_if.read_buf1  ;
wire _1183_ ;
wire _1659_ ;
wire _1239_ ;
wire \u_cpu.bne_or_bge  ;
wire _42_ ;
wire _1468_ ;
wire _1048_ ;
wire _799_ ;
wire _379_ ;
wire _1697_ ;
wire _1277_ ;
wire _188_ ;
wire \u_cpu.decode.co_ebreak  ;
wire _820_ ;
wire _400_ ;
wire _80_ ;
wire _1086_ ;
wire \u_cpu.alu.add_cy_r  ;
wire _914_ ;
wire _1812_ ;
wire _723_ ;
wire _303_ ;
wire _39_ ;
wire _1621_ ;
wire _1201_ ;
wire _952_ ;
wire _532_ ;
wire _112_ ;
wire _1850_ ;
wire _1430_ ;
wire _1010_ ;
wire _761_ ;
wire _341_ ;
wire _817_ ;
wire _77_ ;
wire _990_ ;
wire _570_ ;
wire _150_ ;
wire _1715_ ;
wire _626_ ;
wire _206_ ;
wire _1524_ ;
wire _1104_ ;
wire _855_ ;
wire _435_ ;
wire _1753_ ;
wire _1333_ ;
wire _664_ ;
wire _244_ ;
wire _1809_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf31  ;
wire _1562_ ;
wire _1142_ ;
wire _893_ ;
wire _473_ ;
wire _1618_ ;
wire _949_ ;
wire _529_ ;
wire _109_ ;
wire _1791_ ;
wire _1371_ ;
wire _282_ ;
wire _1847_ ;
wire _1427_ ;
wire _1007_ ;
wire _758_ ;
wire _338_ ;
wire _1180_ ;
wire _1656_ ;
wire _1236_ ;
wire _987_ ;
wire _567_ ;
wire _147_ ;
wire _1465_ ;
wire _1045_ ;
wire _796_ ;
wire _376_ ;
wire _1694_ ;
wire _1274_ ;
wire _185_ ;
wire _1083_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf28  ;
wire _1559_ ;
wire _1139_ ;
wire _1788_ ;
wire _1368_ ;
wire _699_ ;
wire _279_ ;
wire _911_ ;
wire _1597_ ;
wire _1177_ ;
wire \u_rf_if.stream_active_bF$buf6  ;
wire _720_ ;
wire _300_ ;
wire _36_ ;
wire _814_ ;
wire _74_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf7  ;
wire _1712_ ;
wire _623_ ;
wire _203_ ;
wire _1521_ ;
wire _1101_ ;
wire _852_ ;
wire _432_ ;
wire _908_ ;
wire _1750_ ;
wire _1330_ ;
wire _661_ ;
wire \u_mem_serial.active_we  ;
wire _241_ ;
wire _1806_ ;
wire _717_ ;
wire _890_ ;
wire _470_ ;
wire _1615_ ;
wire _946_ ;
wire _526_ ;
wire _106_ ;
wire _1844_ ;
wire _1424_ ;
wire _1004_ ;
wire _755_ ;
wire _335_ ;
wire _1653_ ;
wire _1233_ ;
wire _984_ ;
wire _564_ ;
wire _144_ ;
wire _1709_ ;
wire _1462_ ;
wire _1042_ ;
wire _793_ ;
wire _373_ ;
wire _1518_ ;
wire _849_ ;
wire _429_ ;
wire _1691_ ;
wire _1271_ ;
wire _182_ ;
wire [0:0] \u_rf_if.wdata0_r  ;
wire _1747_ ;
wire _1327_ ;
wire _658_ ;
wire _238_ ;
wire _1080_ ;
wire _22__bF$buf0 ;
wire _22__bF$buf1 ;
wire _22__bF$buf2 ;
wire _22__bF$buf3 ;
wire _22__bF$buf4 ;
wire _22__bF$buf5 ;
wire _22__bF$buf6 ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf25  ;
wire _1556_ ;
wire _1136_ ;
wire _887_ ;
wire _467_ ;
wire \u_mem_serial.active_ibus  ;
wire _1785_ ;
wire _1365_ ;
wire _696_ ;
wire _276_ ;
wire _1594_ ;
wire _1174_ ;
wire \u_rf_if.stream_active_bF$buf3  ;
wire _33_ ;
wire _1459_ ;
wire _1039_ ;
wire _1688_ ;
wire _1268_ ;
wire _599_ ;
wire _179_ ;
wire _811_ ;
wire _71_ ;
wire _1497_ ;
wire _1077_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf4  ;
wire _620_ ;
wire _200_ ;
wire \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5  ;
wire [1:0] \u_rf_if.shift_rx  ;
wire _905_ ;
wire _1803_ ;
wire [37:0] \u_mem_serial.shift_reg  ;
wire _714_ ;
wire _1612_ ;
wire _943_ ;
wire _523_ ;
wire _103_ ;
wire _1841_ ;
wire _1421_ ;
wire _1001_ ;
wire _752_ ;
wire _332_ ;
wire _808_ ;
wire _68_ ;
wire _1650_ ;
wire _1230_ ;
wire _981_ ;
wire _561_ ;
wire _141_ ;
wire \u_cpu.bufreg.c_r  ;
wire _1706_ ;
wire _617_ ;
wire _790_ ;
wire _370_ ;
wire _1515_ ;
wire _846_ ;
wire _426_ ;
wire _1744_ ;
wire _1324_ ;
wire ibus_pending_ack_bF$buf0 ;
wire ibus_pending_ack_bF$buf1 ;
wire ibus_pending_ack_bF$buf2 ;
wire ibus_pending_ack_bF$buf3 ;
wire ibus_pending_ack_bF$buf4 ;
wire ibus_pending_ack_bF$buf5 ;
wire _655_ ;
wire _235_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf22  ;
wire _1553_ ;
wire _1133_ ;
wire [3:0] \u_rf_if.o_waddr  ;
wire _884_ ;
wire _464_ ;
wire _1609_ ;
wire _1782_ ;
wire _1362_ ;
wire _693_ ;
wire _273_ ;
wire _1838_ ;
wire _1418_ ;
wire _749_ ;
wire _329_ ;
wire _1591_ ;
wire _1171_ ;
wire \u_rf_if.stream_active_bF$buf0  ;
wire _1647_ ;
wire _1227_ ;
wire _978_ ;
wire _558_ ;
wire _138_ ;
wire _30_ ;
wire _1456_ ;
wire _1036_ ;
wire ren ;
wire _787_ ;
wire _367_ ;
wire _1685_ ;
wire _1265_ ;
wire _596_ ;
wire _176_ ;
wire _1494_ ;
wire _1074_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf1  ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf19  ;
wire \gen_int_sys_clk.clk_sys_r_hier0_bF$buf2  ;
wire _1779_ ;
wire _1359_ ;
wire \u_cpu.bufreg.i_sh_signed  ;
wire _902_ ;
wire _1588_ ;
wire _1168_ ;
wire _499_ ;
wire _1800_ ;
wire _711_ ;
wire _1397_ ;
wire rf_write_drain_busy ;
wire _27_ ;
wire _940_ ;
wire _520_ ;
wire _100_ ;
wire _805_ ;
wire _65_ ;
wire _1703_ ;
wire _614_ ;
wire _1512_ ;
wire _843_ ;
wire _423_ ;
wire _1741_ ;
wire _1321_ ;
wire _652_ ;
wire _232_ ;
wire \u_rf_if.prefetch_active  ;
wire _708_ ;
wire _1550_ ;
wire _1130_ ;
wire _881_ ;
wire _461_ ;
wire _1606_ ;
wire _937_ ;
wire _517_ ;
wire _690_ ;
wire _270_ ;
wire _1835_ ;
wire _1415_ ;
wire _746_ ;
wire _326_ ;
wire _1644_ ;
wire _1224_ ;
wire _975_ ;
wire _555_ ;
wire _135_ ;
wire _1453_ ;
wire [1:0] \u_mem_serial.state  ;
wire _1033_ ;
wire _784_ ;
wire _364_ ;
wire _1509_ ;
wire _1682_ ;
wire _1262_ ;
wire _593_ ;
wire _173_ ;
wire _1738_ ;
wire _1318_ ;
wire _649_ ;
wire _229_ ;
wire _1491_ ;
wire _1071_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf16  ;
wire _1547_ ;
wire _1127_ ;
wire _878_ ;
wire _458_ ;
wire _1776_ ;
wire _1356_ ;
wire _687_ ;
wire _267_ ;
wire _1585_ ;
wire _1165_ ;
wire _496_ ;
wire _1394_ ;
wire \u_rf_if.wen0_r  ;
wire _24_ ;
wire _1679_ ;
wire _1259_ ;
wire _802_ ;
wire _62_ ;
wire _1488_ ;
wire _1068_ ;
wire _399_ ;
wire _1700_ ;
wire _611_ ;
wire _1297_ ;
wire _840_ ;
wire _420_ ;
wire \u_rf_if.rtrig1  ;
wire _705_ ;
wire _1603_ ;
wire _934_ ;
wire _514_ ;
wire _1832_ ;
wire _1412_ ;
wire _743_ ;
wire _323_ ;
wire _59_ ;
wire _1641_ ;
wire _1221_ ;
wire _972_ ;
wire _552_ ;
wire _132_ ;
wire _608_ ;
wire _1450_ ;
wire _1030_ ;
wire _781_ ;
wire _361_ ;
wire _1506_ ;
wire _837_ ;
wire _417_ ;
wire _97_ ;
wire _590_ ;
wire _170_ ;
wire _1735_ ;
wire _1315_ ;
wire _646_ ;
wire _226_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf13  ;
wire _1544_ ;
wire _1124_ ;
wire _875_ ;
wire _455_ ;
wire _1773_ ;
wire _1353_ ;
wire _684_ ;
wire _264_ ;
wire _1829_ ;
wire _1409_ ;
wire _1582_ ;
wire _1162_ ;
wire _493_ ;
wire _1638_ ;
wire _1218_ ;
wire _969_ ;
wire _549_ ;
wire _129_ ;
wire _1391_ ;
wire _21_ ;
wire _1447_ ;
wire _1027_ ;
wire _778_ ;
wire _358_ ;
wire _1676_ ;
wire _1256_ ;
wire _587_ ;
wire _167_ ;
wire _570__bF$buf0 ;
wire _570__bF$buf1 ;
wire _570__bF$buf2 ;
wire _570__bF$buf3 ;
wire _570__bF$buf4 ;
wire _1485_ ;
wire _1065_ ;
wire _396_ ;
wire _1294_ ;
wire _1579_ ;
wire _1159_ ;
wire _702_ ;
wire _1388_ ;
wire _299_ ;
wire _18_ ;
wire _1600_ ;
wire _931_ ;
wire _511_ ;
wire [5:5] \u_rf_if.issue_idx  ;
wire _1197_ ;
wire _740_ ;
wire _320_ ;
wire [6:0] \u_mem_serial.bit_count  ;
wire _56_ ;
wire i_rst_n ;
wire _605_ ;
wire _1503_ ;
wire _834_ ;
wire _414_ ;
wire _94_ ;
wire _1732_ ;
wire _1312_ ;
wire _643_ ;
wire _223_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf10  ;
wire _1541_ ;
wire _1121_ ;
wire _872_ ;
wire _452_ ;
wire _928_ ;
wire _508_ ;
wire _1770_ ;
wire _1350_ ;
wire _681_ ;
wire _261_ ;
wire _1826_ ;
wire _1406_ ;
wire _737_ ;
wire _317_ ;
wire _490_ ;
wire _1635_ ;
wire _1215_ ;
wire _966_ ;
wire _546_ ;
wire _126_ ;
wire _1444_ ;
wire _1024_ ;
wire _775_ ;
wire _355_ ;
wire _1673_ ;
wire _1253_ ;
wire _584_ ;
wire _164_ ;
wire _1729_ ;
wire _1309_ ;
wire _1482_ ;
wire _1062_ ;
wire _393_ ;
wire _1538_ ;
wire _1118_ ;
wire _1070__bF$buf0 ;
wire _1070__bF$buf1 ;
wire _1070__bF$buf2 ;
wire _1070__bF$buf3 ;
wire _1070__bF$buf4 ;
wire _1070__bF$buf5 ;
wire _1070__bF$buf6 ;
wire _869_ ;
wire _449_ ;
wire _1291_ ;
wire _1767_ ;
wire _1347_ ;
wire _678_ ;
wire _258_ ;
wire _1576_ ;
wire _1156_ ;
wire _487_ ;
wire _1385_ ;
wire _296_ ;
wire _15_ ;
wire _1194_ ;
wire _53_ ;
wire _1479_ ;
wire _1059_ ;
wire _602_ ;
wire _1288_ ;
wire _199_ ;
wire [2:0] \u_cpu.bufreg.i_shamt  ;
wire _1500_ ;
wire _831_ ;
wire _411_ ;
wire _91_ ;
wire _1097_ ;
wire _640_ ;
wire _220_ ;
wire _9_ ;
wire _925_ ;
wire _505_ ;
wire _1823_ ;
wire _1403_ ;
wire _734_ ;
wire _314_ ;
wire \u_cpu.branch_op  ;
wire _1632_ ;
wire _1212_ ;
wire _963_ ;
wire _543_ ;
wire _123_ ;
wire _1441_ ;
wire _1021_ ;
wire _772_ ;
wire _352_ ;
wire _828_ ;
wire _408_ ;
wire _88_ ;
wire _1670_ ;
wire _1250_ ;
wire _581_ ;
wire _161_ ;
wire _1726_ ;
wire _1306_ ;
wire _637_ ;
wire _217_ ;
wire _390_ ;
wire _1535_ ;
wire _1115_ ;
wire _866_ ;
wire _446_ ;
wire _1764_ ;
wire _1344_ ;
wire _675_ ;
wire _255_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf42  ;
wire _1573_ ;
wire _1153_ ;
wire _484_ ;
wire _1629_ ;
wire _1209_ ;
wire _1382_ ;
wire _293_ ;
wire _12_ ;
wire _1858_ ;
wire _1438_ ;
wire _1018_ ;
wire _769_ ;
wire _349_ ;
wire _1191_ ;
wire _1667_ ;
wire _1247_ ;
wire _998_ ;
wire _578_ ;
wire _158_ ;
wire _1002__bF$buf0 ;
wire _1002__bF$buf1 ;
wire _1002__bF$buf2 ;
wire _1002__bF$buf3 ;
wire _1002__bF$buf4 ;
wire _50_ ;
wire _1476_ ;
wire _1056_ ;
wire _387_ ;
wire _1285_ ;
wire _196_ ;
wire _1094_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf39  ;
wire _1799_ ;
wire _1379_ ;
wire _6_ ;
wire _922_ ;
wire _502_ ;
wire _1188_ ;
wire _1820_ ;
wire _1400_ ;
wire _731_ ;
wire _311_ ;
wire _47_ ;
wire _960_ ;
wire _540_ ;
wire _120_ ;
wire _825_ ;
wire _405_ ;
wire _85_ ;
wire _1723_ ;
wire _1303_ ;
wire _634_ ;
wire _214_ ;
wire _1532_ ;
wire _1112_ ;
wire _863_ ;
wire _443_ ;
wire _919_ ;
wire _1761_ ;
wire _1341_ ;
wire _672_ ;
wire _252_ ;
wire _1817_ ;
wire _728_ ;
wire _308_ ;
wire _1570_ ;
wire _1150_ ;
wire _481_ ;
wire _1626_ ;
wire _1206_ ;
wire _957_ ;
wire _537_ ;
wire _117_ ;
wire _290_ ;
wire i_rst_n_bF$buf10 ;
wire i_rst_n_bF$buf11 ;
wire _1855_ ;
wire _1435_ ;
wire _1015_ ;
wire _766_ ;
wire _346_ ;
wire _1664_ ;
wire _1244_ ;
wire _995_ ;
wire _575_ ;
wire _155_ ;
wire _1473_ ;
wire _1053_ ;
wire _384_ ;
wire _1529_ ;
wire _1109_ ;
wire _1282_ ;
wire _193_ ;
wire \u_cpu.bufreg2.i_op_b_sel  ;
wire _1758_ ;
wire _1338_ ;
wire _669_ ;
wire _249_ ;
wire _1091_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf36  ;
wire _1567_ ;
wire _1147_ ;
wire _898_ ;
wire _478_ ;
wire _1796_ ;
wire _1376_ ;
wire _287_ ;
wire _3_ ;
wire _1185_ ;
wire _44_ ;
wire _1699_ ;
wire _1279_ ;
wire _822_ ;
wire _402_ ;
wire _82_ ;
wire _1088_ ;
wire i_clk_sys_ext ;
wire _1720_ ;
wire _1300_ ;
wire _631_ ;
wire _211_ ;
wire _860_ ;
wire _440_ ;
wire _916_ ;
wire \u_cpu.immdec.gen_immdec_w_eq_1.imm31  ;
wire \u_rf_if.wdata0_next_phase  ;
wire _1814_ ;
wire [4:0] \u_rf_if.rreg0_latched  ;
wire _725_ ;
wire _305_ ;
wire _1623_ ;
wire _1203_ ;
wire _954_ ;
wire _534_ ;
wire _114_ ;
wire ibus_pending_ack ;
wire _1852_ ;
wire _1432_ ;
wire _1012_ ;
wire _763_ ;
wire _343_ ;
wire _819_ ;
wire _79_ ;
wire _1661_ ;
wire _1241_ ;
wire _992_ ;
wire _572_ ;
wire _152_ ;
wire _1717_ ;
wire _628_ ;
wire _208_ ;
wire _1470_ ;
wire _1050_ ;
wire _381_ ;
wire _1526_ ;
wire _1106_ ;
wire _857_ ;
wire _437_ ;
wire _190_ ;
wire _1755_ ;
wire _1335_ ;
wire _666_ ;
wire _246_ ;
wire _1536__bF$buf0 ;
wire _1536__bF$buf1 ;
wire _1536__bF$buf2 ;
wire _1536__bF$buf3 ;
wire _1536__bF$buf4 ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf33  ;
wire _1564_ ;
wire _1144_ ;
wire _895_ ;
wire _475_ ;
wire _1793_ ;
wire _1373_ ;
wire _284_ ;
wire _0_ ;
wire _1849_ ;
wire _1429_ ;
wire _1009_ ;
wire [31:0] \u_rf_if.read_buf0  ;
wire i_clk_fast ;
wire _1182_ ;
wire _1658_ ;
wire _1238_ ;
wire _989_ ;
wire _569_ ;
wire _149_ ;
wire _41_ ;
wire _1467_ ;
wire _1047_ ;
wire _798_ ;
wire _378_ ;
wire _1696_ ;
wire _1276_ ;
wire _187_ ;
wire _1085_ ;
wire _913_ ;
wire _1599_ ;
wire _1179_ ;
wire [6:3] \u_cpu.bufreg2.dhi  ;
wire _1811_ ;
wire _722_ ;
wire _302_ ;
wire _38_ ;
wire _1620_ ;
wire _1200_ ;
wire _951_ ;
wire _531_ ;
wire _111_ ;
wire _760_ ;
wire _340_ ;
wire _816_ ;
wire _76_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf9  ;
wire _1714_ ;
wire _625_ ;
wire _205_ ;
wire \u_cpu.csr_imm  ;
wire mem_dbus_ack ;
wire _1523_ ;
wire _1103_ ;
wire _854_ ;
wire _434_ ;
wire _1752_ ;
wire _1332_ ;
wire _663_ ;
wire _243_ ;
wire _1808_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf30  ;
wire _719_ ;
wire _1561_ ;
wire _1141_ ;
wire _892_ ;
wire _472_ ;
wire _1617_ ;
wire _948_ ;
wire _528_ ;
wire _108_ ;
wire _1790_ ;
wire _1370_ ;
wire _281_ ;
wire _1846_ ;
wire _1426_ ;
wire _1006_ ;
wire _757_ ;
wire _337_ ;
wire [0:0] \u_rf_if.wdata0_next  ;
wire _1655_ ;
wire _1235_ ;
wire _986_ ;
wire _566_ ;
wire _146_ ;
wire _1464_ ;
wire _1044_ ;
wire _795_ ;
wire _375_ ;
wire _1693_ ;
wire _1273_ ;
wire _184_ ;
wire _1749_ ;
wire _1329_ ;
wire _1082_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf27  ;
wire _1558_ ;
wire _1138_ ;
wire _889_ ;
wire _469_ ;
wire _1787_ ;
wire _1367_ ;
wire _698_ ;
wire _278_ ;
wire _910_ ;
wire _1596_ ;
wire _1176_ ;
wire \u_rf_if.stream_active_bF$buf5  ;
wire _35_ ;
wire _813_ ;
wire _73_ ;
wire _1499_ ;
wire _1079_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf6  ;
wire _1711_ ;
wire _622_ ;
wire _202_ ;
wire _1520_ ;
wire _1100_ ;
wire _851_ ;
wire _431_ ;
wire _907_ ;
wire _660_ ;
wire _240_ ;
wire _1805_ ;
wire _716_ ;
wire _1614_ ;
wire _945_ ;
wire _525_ ;
wire _105_ ;
wire _1843_ ;
wire _1423_ ;
wire _1003_ ;
wire _754_ ;
wire _334_ ;
wire _1652_ ;
wire _1232_ ;
wire _983_ ;
wire _563_ ;
wire _143_ ;
wire _1708_ ;
wire _619_ ;
wire _1461_ ;
wire _1041_ ;
wire _792_ ;
wire _372_ ;
wire _1517_ ;
wire _848_ ;
wire _428_ ;
wire _1690_ ;
wire _1270_ ;
wire _181_ ;
wire _1746_ ;
wire _1326_ ;
wire _657_ ;
wire _237_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf24  ;
wire _1555_ ;
wire _1135_ ;
wire _886_ ;
wire _466_ ;
wire _1784_ ;
wire _1364_ ;
wire _695_ ;
wire _275_ ;
wire o_rf_sck ;
wire _1593_ ;
wire _1173_ ;
wire \u_rf_if.stream_active_bF$buf2  ;
wire _1649_ ;
wire _1229_ ;
wire _32_ ;
wire _1458_ ;
wire _1038_ ;
wire _789_ ;
wire _369_ ;
wire _1687_ ;
wire _1267_ ;
wire _598_ ;
wire _178_ ;
wire _810_ ;
wire _70_ ;
wire _1496_ ;
wire _1076_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf3  ;
wire \gen_int_sys_clk.clk_sys_r_hier0_bF$buf4  ;
wire i_clk_fast_bF$buf0 ;
wire i_clk_fast_bF$buf1 ;
wire i_clk_fast_bF$buf2 ;
wire i_clk_fast_bF$buf3 ;
wire i_clk_fast_bF$buf4 ;
wire i_clk_fast_bF$buf5 ;
wire i_clk_fast_bF$buf6 ;
wire i_clk_fast_bF$buf7 ;
wire i_clk_fast_bF$buf8 ;
wire [3:0] \u_cpu.state.cnt_r  ;
wire _904_ ;
wire _1802_ ;
wire _713_ ;
wire _659__bF$buf0 ;
wire _659__bF$buf1 ;
wire _659__bF$buf2 ;
wire _659__bF$buf3 ;
wire _659__bF$buf4 ;
wire _659__bF$buf5 ;
wire _1399_ ;
wire _29_ ;
wire _1611_ ;
wire _942_ ;
wire _522_ ;
wire _102_ ;
wire _1840_ ;
wire _1420_ ;
wire _1000_ ;
wire _751_ ;
wire _331_ ;
wire _807_ ;
wire _67_ ;
wire _980_ ;
wire _560_ ;
wire _140_ ;
wire [31:1] \u_cpu.ctrl.o_ibus_adr  ;
wire _1705_ ;
wire _616_ ;
wire _450__bF$buf0 ;
wire _450__bF$buf1 ;
wire _450__bF$buf2 ;
wire _450__bF$buf3 ;
wire _450__bF$buf4 ;
wire _1514_ ;
wire _845_ ;
wire _425_ ;
wire _1743_ ;
wire _1323_ ;
wire _654_ ;
wire _234_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf21  ;
wire _1552_ ;
wire _1132_ ;
wire _883_ ;
wire _463_ ;
wire _1608_ ;
wire _939_ ;
wire _519_ ;
wire _1781_ ;
wire _1361_ ;
wire _692_ ;
wire _272_ ;
wire _1837_ ;
wire _1417_ ;
wire _748_ ;
wire _328_ ;
wire _1590_ ;
wire _1170_ ;
wire _1646_ ;
wire _1226_ ;
wire _977_ ;
wire _557_ ;
wire _137_ ;
wire _1455_ ;
wire _1035_ ;
wire _786_ ;
wire _366_ ;
wire _1684_ ;
wire _1264_ ;
wire _595_ ;
wire _175_ ;
wire _1493_ ;
wire _1073_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf0  ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf18  ;
wire _1549_ ;
wire _1129_ ;
wire \gen_int_sys_clk.clk_sys_r_hier0_bF$buf1  ;
wire _1778_ ;
wire _1358_ ;
wire _689_ ;
wire _269_ ;
wire _901_ ;
wire _1587_ ;
wire _1167_ ;
wire _498_ ;
wire _710_ ;
wire _1396_ ;
wire _26_ ;
wire _804_ ;
wire _64_ ;
wire _1702_ ;
wire _613_ ;
wire _1299_ ;
wire _1511_ ;
wire _842_ ;
wire _422_ ;
wire [4:0] \u_rf_if.tx_state  ;
wire _1740_ ;
wire _1320_ ;
wire _651_ ;
wire _231_ ;
wire \u_cpu.mem_if.signbit  ;
wire _707_ ;
wire _880_ ;
wire _460_ ;
wire \u_rf_if.stream_active  ;
wire _1605_ ;
wire _936_ ;
wire _516_ ;
wire \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
wire _1834_ ;
wire _1414_ ;
wire _745_ ;
wire _325_ ;
wire _1643_ ;
wire _1223_ ;
wire _974_ ;
wire _554_ ;
wire _134_ ;
wire _1452_ ;
wire _1032_ ;
wire _783_ ;
wire _363_ ;
wire _1508_ ;
wire _839_ ;
wire _419_ ;
wire _99_ ;
wire _1681_ ;
wire _1261_ ;
wire _592_ ;
wire _172_ ;
wire _1737_ ;
wire _1317_ ;
wire _648_ ;
wire _228_ ;
wire _1490_ ;
wire _1070_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf15  ;
wire _1546_ ;
wire _1126_ ;
wire _877_ ;
wire _457_ ;
wire _1775_ ;
wire _1355_ ;
wire _686_ ;
wire _266_ ;
wire \u_cpu.decode.co_mem_word  ;
wire _1584_ ;
wire _1164_ ;
wire _495_ ;
wire _1393_ ;
wire _23_ ;
wire _1449_ ;
wire _1029_ ;
wire _1678_ ;
wire _1258_ ;
wire _589_ ;
wire _169_ ;
wire _801_ ;
wire _61_ ;
wire _1487_ ;
wire _1067_ ;
wire _398_ ;
wire _610_ ;
wire _1296_ ;
wire \u_rf_if.ready_pulse  ;
wire [4:1] rreg0 ;
wire [4:0] rreg1 ;
wire _704_ ;
wire _1602_ ;
wire _933_ ;
wire _513_ ;
wire \u_rf_if.issue_sel  ;
wire _1199_ ;
wire _673__bF$buf0 ;
wire _673__bF$buf1 ;
wire _673__bF$buf2 ;
wire _673__bF$buf3 ;
wire _1831_ ;
wire _1411_ ;
wire _742_ ;
wire _322_ ;
wire _58_ ;
wire _1640_ ;
wire _1220_ ;
wire _971_ ;
wire _551_ ;
wire _131_ ;
wire _602__bF$buf0 ;
wire _602__bF$buf1 ;
wire _602__bF$buf2 ;
wire _602__bF$buf3 ;
wire _602__bF$buf4 ;
wire _607_ ;
wire _780_ ;
wire _360_ ;
wire _1505_ ;
wire _836_ ;
wire _416_ ;
wire _96_ ;
wire _1734_ ;
wire _1314_ ;
wire _645_ ;
wire _225_ ;
wire \u_rf_if.req_seen  ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf12  ;
wire _1543_ ;
wire _1123_ ;
wire _874_ ;
wire _454_ ;
wire _1772_ ;
wire _1352_ ;
wire _683_ ;
wire _263_ ;
wire _1828_ ;
wire _1408_ ;
wire _739_ ;
wire _319_ ;
wire _1581_ ;
wire _1161_ ;
wire _492_ ;
wire _1637_ ;
wire _1217_ ;
wire _968_ ;
wire _548_ ;
wire _128_ ;
wire _1390_ ;
wire _20_ ;
wire _1446_ ;
wire _1026_ ;
wire _777_ ;
wire _357_ ;
wire _1675_ ;
wire _1255_ ;
wire _586_ ;
wire _166_ ;
wire \u_cpu.state.ibus_cyc  ;
wire o_mem_mosi ;
wire _1484_ ;
wire _1064_ ;
wire _395_ ;
wire _1293_ ;
wire _1769_ ;
wire _1349_ ;
wire _1578_ ;
wire _1158_ ;
wire _489_ ;
wire _701_ ;
wire _1387_ ;
wire _298_ ;
wire _17_ ;
wire _930_ ;
wire _510_ ;
wire _1196_ ;
wire _55_ ;
wire _604_ ;
wire _1502_ ;
wire _833_ ;
wire _413_ ;
wire _93_ ;
wire _1099_ ;
wire _1731_ ;
wire _1311_ ;
wire _642_ ;
wire _222_ ;
wire _1540_ ;
wire _1120_ ;
wire _871_ ;
wire _451_ ;
wire _927_ ;
wire _507_ ;
wire _680_ ;
wire _260_ ;
wire _1825_ ;
wire _1405_ ;
wire _736_ ;
wire _316_ ;
wire _1634_ ;
wire _1214_ ;
wire _965_ ;
wire _545_ ;
wire _125_ ;
wire _1443_ ;
wire _1023_ ;
wire _774_ ;
wire _354_ ;
wire _1672_ ;
wire _1252_ ;
wire _583_ ;
wire _163_ ;
wire _1728_ ;
wire _1308_ ;
wire _639_ ;
wire _219_ ;
wire _1481_ ;
wire _1061_ ;
wire _1783__bF$buf0 ;
wire _1783__bF$buf1 ;
wire _1783__bF$buf2 ;
wire _1783__bF$buf3 ;
wire _1783__bF$buf4 ;
wire _1783__bF$buf5 ;
wire _1783__bF$buf6 ;
wire _392_ ;
wire _1537_ ;
wire _1117_ ;
wire _868_ ;
wire _448_ ;
wire _1290_ ;
wire _1766_ ;
wire _1346_ ;
wire _677_ ;
wire _257_ ;
wire _1575_ ;
wire _1155_ ;
wire _486_ ;
wire _1384_ ;
wire _295_ ;
wire _14_ ;
wire _1193_ ;
wire [5:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm30_25  ;
wire _1669_ ;
wire _1249_ ;
wire \u_cpu.alu.cmp_r  ;
wire _52_ ;
wire _1478_ ;
wire _1058_ ;
wire _389_ ;
wire _601_ ;
wire [2:0] \u_rf_if.rcnt  ;
wire _1287_ ;
wire _198_ ;
wire _830_ ;
wire _410_ ;
wire _90_ ;
wire _1096_ ;
wire _8_ ;
wire _994__bF$buf0 ;
wire _994__bF$buf1 ;
wire _994__bF$buf2 ;
wire _994__bF$buf3 ;
wire _994__bF$buf4 ;
wire _994__bF$buf5 ;
wire _924_ ;
wire _504_ ;
wire _1822_ ;
wire _1402_ ;
wire _733_ ;
wire _313_ ;
wire _49_ ;
wire _1631_ ;
wire _1211_ ;
wire _962_ ;
wire _542_ ;
wire _122_ ;
wire _1440_ ;
wire _1020_ ;
wire _771_ ;
wire _351_ ;
wire _827_ ;
wire _407_ ;
wire _87_ ;
wire _580_ ;
wire _160_ ;
wire _1725_ ;
wire _1305_ ;
wire _636_ ;
wire _216_ ;
wire _1534_ ;
wire _1114_ ;
wire _865_ ;
wire _445_ ;
wire _1763_ ;
wire _1343_ ;
wire _674_ ;
wire _254_ ;
wire _1819_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf41  ;
wire _1572_ ;
wire _1152_ ;
wire _483_ ;
wire _1628_ ;
wire _1208_ ;
wire _959_ ;
wire _539_ ;
wire _119_ ;
wire _1381_ ;
wire _292_ ;
wire [23:0] \u_cpu.bufreg2.dlo  ;
wire _11_ ;
wire _1857_ ;
wire _1437_ ;
wire _1017_ ;
wire _768_ ;
wire _348_ ;
wire _1190_ ;
wire _1666_ ;
wire _1246_ ;
wire _997_ ;
wire _577_ ;
wire _157_ ;
wire \u_rf_if.launch_pending  ;
wire _1475_ ;
wire _1055_ ;
wire _386_ ;
wire _1284_ ;
wire _195_ ;
wire _1093_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf38  ;
wire _1569_ ;
wire _1149_ ;
wire _1798_ ;
wire _1378_ ;
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
wire _1722_ ;
wire _1302_ ;
wire _633_ ;
wire _213_ ;
wire _1531_ ;
wire _1111_ ;
wire _862_ ;
wire _442_ ;
wire _918_ ;
wire _1760_ ;
wire _1340_ ;
wire _671_ ;
wire _251_ ;
wire [8:0] raddr ;
wire _1816_ ;
wire _727_ ;
wire _307_ ;
wire _480_ ;
wire _1625_ ;
wire _1205_ ;
wire \u_cpu.ctrl.i_jump  ;
wire _956_ ;
wire _536_ ;
wire _116_ ;
wire _1854_ ;
wire _1434_ ;
wire _1014_ ;
wire _765_ ;
wire _345_ ;
wire _1663_ ;
wire _1243_ ;
wire _994_ ;
wire _574_ ;
wire _154_ ;
wire _1719_ ;
wire _1472_ ;
wire _1052_ ;
wire _383_ ;
wire gnd = 1'b0 ;
wire _1528_ ;
wire _1108_ ;
wire _859_ ;
wire _439_ ;
wire _1281_ ;
wire _192_ ;
wire _1757_ ;
wire _1337_ ;
wire _668_ ;
wire _248_ ;
wire _1090_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf35  ;
wire _1566_ ;
wire _1146_ ;
wire _897_ ;
wire _477_ ;
wire current_wdata0_next_hint ;
wire _1795_ ;
wire _1375_ ;
wire _286_ ;
wire _2_ ;
wire _1184_ ;
wire i_rst_n_bF$buf0 ;
wire i_rst_n_bF$buf1 ;
wire i_rst_n_bF$buf2 ;
wire i_rst_n_bF$buf3 ;
wire i_rst_n_bF$buf4 ;
wire i_rst_n_bF$buf5 ;
wire i_rst_n_bF$buf6 ;
wire i_rst_n_bF$buf7 ;
wire i_rst_n_bF$buf8 ;
wire i_rst_n_bF$buf9 ;
wire _43_ ;
wire _1469_ ;
wire _1049_ ;
wire i_rf_miso ;
wire _1698_ ;
wire _1278_ ;
wire _189_ ;
wire _821_ ;
wire _401_ ;
wire _81_ ;
wire _1087_ ;
wire _630_ ;
wire _210_ ;
wire _915_ ;
wire _1813_ ;
wire _724_ ;
wire _304_ ;
wire [3:0] \u_rf_if.issue_chunk  ;
wire o_rf_mosi ;
wire _1622_ ;
wire _1202_ ;
wire _953_ ;
wire _533_ ;
wire _113_ ;
wire _1851_ ;
wire _1431_ ;
wire _1011_ ;
wire _762_ ;
wire _342_ ;
wire _818_ ;
wire _78_ ;
wire _1660_ ;
wire _1240_ ;
wire _991_ ;
wire _571_ ;
wire _151_ ;
wire _1716_ ;
wire _627_ ;
wire _207_ ;
wire _380_ ;
wire _1525_ ;
wire _1105_ ;
wire _856_ ;
wire _436_ ;
wire _1754_ ;
wire _1334_ ;
wire _665_ ;
wire _245_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf32  ;
wire _1563_ ;
wire _1143_ ;
wire _894_ ;
wire _474_ ;
wire [1:0] \u_cpu.bufreg2.i_bytecnt  ;
wire _1619_ ;
wire _1792_ ;
wire _1372_ ;
wire _283_ ;
wire _1848_ ;
wire _1428_ ;
wire _1008_ ;
wire _759_ ;
wire _339_ ;
wire _1181_ ;
wire _1657_ ;
wire _1237_ ;
wire _988_ ;
wire _568_ ;
wire _148_ ;
wire _40_ ;
wire _1466_ ;
wire _1046_ ;
wire _797_ ;
wire _377_ ;
wire _1695_ ;
wire _1275_ ;
wire _186_ ;
wire _1084_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf29  ;
wire _1789_ ;
wire _1369_ ;
wire _912_ ;
wire _1598_ ;
wire _1178_ ;
wire \u_rf_if.stream_active_bF$buf7  ;
wire _1810_ ;
wire _721_ ;
wire _301_ ;
wire \u_cpu.state.i_ctrl_misalign  ;
wire _37_ ;
wire _950_ ;
wire _530_ ;
wire _110_ ;
wire _815_ ;
wire _75_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf8  ;
wire _1713_ ;
wire _624_ ;
wire _204_ ;
wire _1522_ ;
wire _1102_ ;
wire _853_ ;
wire _433_ ;
wire _909_ ;
wire _1751_ ;
wire _1331_ ;
wire _662_ ;
wire _242_ ;
wire _1807_ ;
wire _718_ ;
wire _1560_ ;
wire _1140_ ;
wire _891_ ;
wire _471_ ;
wire _1616_ ;
wire _947_ ;
wire _527_ ;
wire _107_ ;
wire _280_ ;
wire _1845_ ;
wire _1425_ ;
wire _1005_ ;
wire _756_ ;
wire _336_ ;
wire _1654_ ;
wire _1234_ ;
wire _985_ ;
wire _565_ ;
wire _145_ ;
wire _1463_ ;
wire _1043_ ;
wire _794_ ;
wire _374_ ;
wire _1519_ ;
wire _1692_ ;
wire _1272_ ;
wire _183_ ;
wire [6:6] \u_cpu.bufreg2.cnt_next  ;
wire _1748_ ;
wire _1328_ ;
wire _659_ ;
wire _239_ ;
wire _1081_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf26  ;
wire _1557_ ;
wire _1137_ ;
wire _888_ ;
wire _468_ ;
wire _1786_ ;
wire _1366_ ;
wire _697_ ;
wire _277_ ;
wire _1595_ ;
wire _1175_ ;
wire \u_rf_if.stream_active_bF$buf4  ;
wire \u_cpu.ctrl.pc  ;
wire _34_ ;
wire _1689_ ;
wire _1269_ ;
wire _812_ ;
wire _72_ ;
wire [10:0] \u_rf_if.last_req_key  ;
wire _1498_ ;
wire _1078_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf5  ;
wire _1710_ ;
wire _621_ ;
wire _201_ ;
wire \u_cpu.state.init_done  ;
wire _850_ ;
wire _430_ ;
wire _906_ ;
wire _1804_ ;
wire _715_ ;
wire _1613_ ;
wire _944_ ;
wire _524_ ;
wire _104_ ;
wire _1842_ ;
wire _1422_ ;
wire _1002_ ;
wire _753_ ;
wire _333_ ;
wire _809_ ;
wire _69_ ;
wire _1651_ ;
wire _1231_ ;
wire _982_ ;
wire _562_ ;
wire _142_ ;
wire _1707_ ;
wire _618_ ;
wire _1006__bF$buf0 ;
wire _1006__bF$buf1 ;
wire _1006__bF$buf2 ;
wire _1006__bF$buf3 ;
wire _1006__bF$buf4 ;
wire _1460_ ;
wire _1040_ ;
wire _791_ ;
wire _371_ ;
wire \gen_int_sys_clk.clk_sys_r  ;
wire _1516_ ;
wire _847_ ;
wire _427_ ;
wire _180_ ;
wire _1745_ ;
wire _1325_ ;
wire _656_ ;
wire _236_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf23  ;
wire _1554_ ;
wire _1134_ ;
wire _885_ ;
wire _465_ ;
wire _1783_ ;
wire _1363_ ;
wire _694_ ;
wire _274_ ;
wire _1839_ ;
wire _1419_ ;
wire _1592_ ;
wire _1172_ ;
wire \u_rf_if.stream_active_bF$buf1  ;
wire _1648_ ;
wire _1228_ ;
wire _979_ ;
wire _559_ ;
wire _139_ ;
wire _31_ ;
wire _1457_ ;
wire _1037_ ;
wire _788_ ;
wire _368_ ;
wire [4:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7  ;
wire _1686_ ;
wire _1266_ ;
wire _597_ ;
wire _177_ ;
wire vdd = 1'b1 ;
wire _1495_ ;
wire _1075_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf2  ;
wire [4:0] \u_rf_if.rreg1_latched  ;
wire \gen_int_sys_clk.clk_sys_r_hier0_bF$buf3  ;
wire _903_ ;
wire _1589_ ;
wire _1169_ ;
wire _1801_ ;
wire _712_ ;
wire _1398_ ;
wire _28_ ;
wire _1610_ ;
wire _941_ ;
wire _521_ ;
wire _101_ ;
wire _750_ ;
wire _330_ ;
wire _806_ ;
wire _66_ ;
wire mem_dbus_ack_bF$buf0 ;
wire mem_dbus_ack_bF$buf1 ;
wire mem_dbus_ack_bF$buf2 ;
wire mem_dbus_ack_bF$buf3 ;
wire mem_dbus_ack_bF$buf4 ;
wire mem_dbus_ack_bF$buf5 ;
wire mem_dbus_ack_bF$buf6 ;
wire _1704_ ;
wire _615_ ;
wire \u_cpu.bufreg.i_right_shift_op  ;
wire _1513_ ;
wire _844_ ;
wire _424_ ;
wire \u_cpu.immdec.gen_immdec_w_eq_1.imm7  ;
wire _1742_ ;
wire _1322_ ;
wire _653_ ;
wire _233_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf20  ;
wire _709_ ;
wire _1551_ ;
wire _1131_ ;
wire _882_ ;
wire _462_ ;
wire _1607_ ;
wire _938_ ;
wire _518_ ;
wire _1780_ ;
wire _1360_ ;
wire _691_ ;
wire _271_ ;
wire _1836_ ;
wire _1416_ ;
wire _747_ ;
wire _327_ ;
wire [3:0] \gen_int_sys_clk.clk_div  ;
wire _1645_ ;
wire _1225_ ;
wire _976_ ;
wire _556_ ;
wire _136_ ;
wire _1454_ ;
wire _1034_ ;
wire _785_ ;
wire _365_ ;
wire _1683_ ;
wire _1263_ ;
wire _594_ ;
wire _174_ ;
wire [3:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20  ;
wire _1739_ ;
wire _1319_ ;
wire _1492_ ;
wire _1072_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf17  ;
wire _1548_ ;
wire _1128_ ;
wire _879_ ;
wire _459_ ;
wire \gen_int_sys_clk.clk_sys_r_hier0_bF$buf0  ;
wire _1777_ ;
wire _1357_ ;
wire _688_ ;
wire _268_ ;
wire _900_ ;
wire o_mem_sync ;
wire _1586_ ;
wire _1166_ ;
wire _497_ ;
wire _1395_ ;
wire _25_ ;
wire _803_ ;
wire _63_ ;
wire _1489_ ;
wire _1069_ ;
wire _1701_ ;
wire _612_ ;
wire _1298_ ;
wire _1510_ ;
wire _841_ ;
wire _421_ ;
wire _650_ ;
wire _230_ ;
wire _706_ ;
wire _1604_ ;
wire _935_ ;
wire _515_ ;
wire _1833_ ;
wire _1413_ ;
wire _744_ ;
wire _324_ ;
wire [31:0] ibus_pending_rdt ;
wire _1642_ ;
wire _1222_ ;
wire _973_ ;
wire _553_ ;
wire _133_ ;
wire _609_ ;
wire _1451_ ;
wire _1031_ ;
wire _782_ ;
wire _362_ ;
wire _1507_ ;
wire _838_ ;
wire _418_ ;
wire _98_ ;
wire _1680_ ;
wire _1260_ ;
wire _591_ ;
wire _171_ ;
wire _1736_ ;
wire _1316_ ;
wire _647_ ;
wire _227_ ;
wire \u_mem_serial.clk_sys_prev  ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf14  ;
wire _1545_ ;
wire _1125_ ;
wire _876_ ;
wire _456_ ;
wire mem_ibus_ack ;
wire _1774_ ;
wire _1354_ ;
wire _685_ ;
wire _265_ ;
wire _1583_ ;
wire _1163_ ;
wire _212__bF$buf0 ;
wire _212__bF$buf1 ;
wire _212__bF$buf2 ;
wire _212__bF$buf3 ;
wire _212__bF$buf4 ;
wire _494_ ;
wire _1639_ ;
wire _1219_ ;
wire _1392_ ;
wire _22_ ;
wire _1448_ ;
wire _1028_ ;
wire _779_ ;
wire _359_ ;

DFFPOSX1 _3823_ (
    .D(_1192_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

OAI21X1 _3403_ (
    .A(_1553_),
    .B(_704_),
    .C(_727_),
    .Y(_449_)
);

FILL FILL_0_CLKBUF1_insert134 (
);

MUX2X1 _3632_ (
    .A(_151_),
    .B(_854_),
    .S(_602__bF$buf1),
    .Y(_1114_)
);

INVX1 _3212_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_311_)
);

NAND2X1 _2903_ (
    .A(\u_rf_if.read_buf0 [21]),
    .B(_22__bF$buf1),
    .Y(_87_)
);

FILL FILL_0__3269_ (
);

DFFPOSX1 _3861_ (
    .D(_1126_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

NOR2X1 _3441_ (
    .A(_480_),
    .B(_481_),
    .Y(_482_)
);

AOI21X1 _3021_ (
    .A(\u_rf_if.issue_chunk [0]),
    .B(_173_),
    .C(_175_),
    .Y(_1298_)
);

FILL FILL_0__2293_ (
);

NAND2X1 _2712_ (
    .A(\u_rf_if.read_buf1 [4]),
    .B(_1783__bF$buf1),
    .Y(_1797_)
);

FILL FILL_0__3498_ (
);

DFFPOSX1 _3917_ (
    .D(_1353_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_rf_if.read_buf1 [25])
);

INVX1 _3670_ (
    .A(_1052_),
    .Y(_1051_)
);

AOI22X1 _3250_ (
    .A(_338_),
    .B(_342_),
    .C(_153_),
    .D(_341_),
    .Y(_1236_)
);

DFFPOSX1 _4035_ (
    .D(_1211_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_cpu.bufreg.data [17])
);

FILL FILL_0_BUFX2_insert23 (
);

OAI21X1 _2941_ (
    .A(_1732_),
    .B(_1733_),
    .C(_1699_),
    .Y(_116_)
);

AOI21X1 _2521_ (
    .A(_1640_),
    .B(_1641_),
    .C(_1643_),
    .Y(_1644_)
);

OAI21X1 _2101_ (
    .A(_840_),
    .B(_973__bF$buf4),
    .C(_835_),
    .Y(_834_)
);

DFFPOSX1 _3726_ (
    .D(_1250_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

OAI21X1 _3306_ (
    .A(_659__bF$buf2),
    .B(_292_),
    .C(_387_),
    .Y(_388_)
);

AND2X2 _2750_ (
    .A(_1825_),
    .B(i_rst_n_bF$buf0),
    .Y(_1365_)
);

OAI21X1 _2330_ (
    .A(ren),
    .B(\u_rf_if.o_waddr [0]),
    .C(_1090_),
    .Y(_1256_)
);

DFFPOSX1 _3955_ (
    .D(_1372_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [6])
);

OAI21X1 _3535_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [3]),
    .C(_553_),
    .Y(_554_)
);

OAI21X1 _3115_ (
    .A(_238_),
    .B(_237_),
    .C(_240_),
    .Y(_241_)
);

DFFPOSX1 _4073_ (
    .D(_1438_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [17])
);

OAI21X1 _2806_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_1742_),
    .C(_13_),
    .Y(_14_)
);

FILL FILL126750x118950 (
);

DFFSR _3764_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1111_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(ibus_pending_rdt[20])
);

INVX1 _3344_ (
    .A(\u_cpu.bufreg.data [15]),
    .Y(_410_)
);

FILL FILL_0__2196_ (
);

OAI21X1 _2615_ (
    .A(_1714_),
    .B(_1721_),
    .C(_1724_),
    .Y(_1725_)
);

BUFX2 BUFX2_insert30 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf5)
);

BUFX2 BUFX2_insert31 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf4)
);

BUFX2 BUFX2_insert32 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert33 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert34 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert35 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

BUFX2 BUFX2_insert36 (
    .A(_602_),
    .Y(_602__bF$buf4)
);

BUFX2 BUFX2_insert37 (
    .A(_602_),
    .Y(_602__bF$buf3)
);

BUFX2 BUFX2_insert38 (
    .A(_602_),
    .Y(_602__bF$buf2)
);

BUFX2 BUFX2_insert39 (
    .A(_602_),
    .Y(_602__bF$buf1)
);

DFFPOSX1 _3993_ (
    .D(_1193_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(\u_cpu.bufreg.data [30])
);

OAI22X1 _3573_ (
    .A(_578_),
    .B(_212__bF$buf2),
    .C(_577_),
    .D(_570__bF$buf4),
    .Y(_1149_)
);

INVX1 _3153_ (
    .A(ibus_pending_rdt[2]),
    .Y(_269_)
);

OAI21X1 _2844_ (
    .A(_22__bF$buf2),
    .B(_41_),
    .C(_42_),
    .Y(_43_)
);

INVX1 _2424_ (
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_1547_)
);

OAI21X1 _2004_ (
    .A(_922_),
    .B(_920_),
    .C(_973__bF$buf6),
    .Y(_919_)
);

MUX2X1 _3629_ (
    .A(_330_),
    .B(_833_),
    .S(_602__bF$buf3),
    .Y(_1117_)
);

INVX1 _3209_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_309_)
);

AOI21X1 _3382_ (
    .A(_1585_),
    .B(_430_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_431_)
);

NOR2X1 _2653_ (
    .A(_1753_),
    .B(_1754_),
    .Y(_1755_)
);

NOR2X1 _2233_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_715_)
);

DFFPOSX1 _3858_ (
    .D(_1324_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_rf_if.read_buf0 [24])
);

INVX1 _3438_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_479_)
);

INVX1 _3018_ (
    .A(_170_),
    .Y(_173_)
);

OAI21X1 _3191_ (
    .A(rreg0[4]),
    .B(_296_),
    .C(_659__bF$buf3),
    .Y(_297_)
);

OAI21X1 _1924_ (
    .A(_1023__bF$buf3),
    .B(_990_),
    .C(_989_),
    .Y(_988_)
);

OAI21X1 _2709_ (
    .A(_1783__bF$buf2),
    .B(_1793_),
    .C(_1794_),
    .Y(_1795_)
);

MUX2X1 _2882_ (
    .A(\u_rf_if.read_buf0 [17]),
    .B(\u_rf_if.read_buf0 [18]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_71_)
);

INVX1 _2462_ (
    .A(_1555_),
    .Y(_1585_)
);

MUX2X1 _2042_ (
    .A(\u_cpu.bufreg.data [18]),
    .B(\u_cpu.ctrl.o_ibus_adr [18]),
    .S(_1006__bF$buf0),
    .Y(_886_)
);

AOI21X1 _3667_ (
    .A(_1059_),
    .B(_1055_),
    .C(_1057_),
    .Y(_1048_)
);

OAI21X1 _3247_ (
    .A(_1524_),
    .B(_339_),
    .C(_1066_),
    .Y(_340_)
);

FILL FILL_0__2099_ (
);

NAND2X1 _2938_ (
    .A(\u_rf_if.read_buf0 [29]),
    .B(_22__bF$buf3),
    .Y(_114_)
);

NOR2X1 _2518_ (
    .A(\u_rf_if.tx_state [1]),
    .B(_1618_),
    .Y(_1641_)
);

INVX1 _2691_ (
    .A(_1756_),
    .Y(_1781_)
);

OAI21X1 _2271_ (
    .A(_685_),
    .B(_681_),
    .C(_678_),
    .Y(_677_)
);

DFFPOSX1 _3896_ (
    .D(_1152_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

OAI21X1 _3476_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [17]),
    .C(_508_),
    .Y(_509_)
);

AOI21X1 _3056_ (
    .A(_200_),
    .B(_199_),
    .C(_1070__bF$buf5),
    .Y(_1288_)
);

MUX2X1 _1962_ (
    .A(\u_cpu.bufreg.data [8]),
    .B(\u_cpu.ctrl.o_ibus_adr [8]),
    .S(_1006__bF$buf4),
    .Y(_956_)
);

MUX2X1 _2747_ (
    .A(\u_rf_if.read_buf1 [14]),
    .B(\u_rf_if.read_buf1 [15]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1823_)
);

OR2X2 _2327_ (
    .A(_1086_),
    .B(\u_rf_if.last_req_key [1]),
    .Y(_1088_)
);

MUX2X1 _2080_ (
    .A(\u_mem_serial.shift_reg [22]),
    .B(\u_cpu.bufreg2.dlo [17]),
    .S(_994__bF$buf1),
    .Y(_853_)
);

NAND2X1 _3285_ (
    .A(ibus_pending_ack_bF$buf1),
    .B(_369_),
    .Y(_370_)
);

FILL FILL_0__2120_ (
);

FILL FILL_0_BUFX2_insert113 (
);

MUX2X1 _2976_ (
    .A(_139_),
    .B(_875_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_140_)
);

NAND2X1 _2556_ (
    .A(_1670_),
    .B(_1671_),
    .Y(_1674_)
);

MUX2X1 _2136_ (
    .A(\u_mem_serial.shift_reg [29]),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .S(_994__bF$buf3),
    .Y(_804_)
);

INVX1 _3094_ (
    .A(_223_),
    .Y(_224_)
);

OAI21X1 _2785_ (
    .A(_1783__bF$buf3),
    .B(_1850_),
    .C(_1851_),
    .Y(_1852_)
);

OAI21X1 _2365_ (
    .A(_1492_),
    .B(_736_),
    .C(_1858_),
    .Y(_1493_)
);

AOI21X1 _2594_ (
    .A(_1705_),
    .B(_1703_),
    .C(_1698_),
    .Y(_1401_)
);

INVX1 _2174_ (
    .A(\u_mem_serial.shift_reg [34]),
    .Y(_770_)
);

DFFPOSX1 _3799_ (
    .D(_1296_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_rf_if.issue_chunk [2])
);

AOI21X1 _3379_ (
    .A(_427_),
    .B(_424_),
    .C(_428_),
    .Y(_1193_)
);

FILL FILL127350x10950 (
);

BUFX2 _1865_ (
    .A(_0_),
    .Y(o_mem_mosi)
);

FILL FILL_0__3172_ (
);

FILL FILL_0__1905_ (
);

NOR2X1 _3188_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_294_)
);

FILL FILL_0__2023_ (
);

FILL FILL_0__3228_ (
);

NAND2X1 _2879_ (
    .A(\u_rf_if.read_buf0 [15]),
    .B(_22__bF$buf6),
    .Y(_69_)
);

NAND2X1 _2459_ (
    .A(_1580_),
    .B(_1579_),
    .Y(_1582_)
);

INVX1 _2039_ (
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_889_)
);

DFFPOSX1 _3820_ (
    .D(_1134_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

AOI22X1 _3400_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .C(\u_cpu.bufreg2.i_bytecnt [1]),
    .D(\u_cpu.state.i_ctrl_misalign ),
    .Y(_446_)
);

FILL FILL_0__2252_ (
);

OAI21X1 _2688_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1755_),
    .C(i_rst_n_bF$buf6),
    .Y(_1779_)
);

NOR2X1 _2268_ (
    .A(\u_cpu.branch_op ),
    .B(_725_),
    .Y(_680_)
);

INVX1 _1959_ (
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_959_)
);

OAI21X1 _2900_ (
    .A(_22__bF$buf1),
    .B(_83_),
    .C(_84_),
    .Y(_85_)
);

OAI21X1 _2497_ (
    .A(_1619_),
    .B(_1517_),
    .C(_1618_),
    .Y(_1620_)
);

OAI21X1 _2077_ (
    .A(_861_),
    .B(_973__bF$buf5),
    .C(_856_),
    .Y(_855_)
);

FILL FILL_0__3075_ (
);

DFFSR _3914_ (
    .R(i_rst_n_bF$buf11),
    .S(vdd),
    .D(_1101_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(ibus_pending_rdt[10])
);

DFFPOSX1 _4032_ (
    .D(_1418_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.state [0])
);

OAI21X1 _1997_ (
    .A(_931_),
    .B(_973__bF$buf6),
    .C(_926_),
    .Y(_925_)
);

DFFPOSX1 _3723_ (
    .D(_1457_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [4])
);

OAI21X1 _3303_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_381_),
    .C(_384_),
    .Y(_385_)
);

FILL FILL_0__2155_ (
);

DFFPOSX1 _3952_ (
    .D(_1175_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [15])
);

INVX1 _3532_ (
    .A(\u_cpu.bufreg2.dlo [2]),
    .Y(_551_)
);

OAI21X1 _3112_ (
    .A(_1500_),
    .B(_236_),
    .C(_725_),
    .Y(_238_)
);

DFFPOSX1 _4070_ (
    .D(_1228_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

INVX1 _2803_ (
    .A(\u_rf_if.read_buf1 [29]),
    .Y(_11_)
);

DFFPOSX1 _3761_ (
    .D(_1277_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.active_we )
);

MUX2X1 _3341_ (
    .A(_407_),
    .B(_408_),
    .S(_1536__bF$buf0),
    .Y(_1211_)
);

NAND2X1 _2612_ (
    .A(\u_rf_if.read_buf1 [30]),
    .B(_1560_),
    .Y(_1722_)
);

DFFPOSX1 _3817_ (
    .D(_1305_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(\u_rf_if.rreg1_latched [2])
);

DFFPOSX1 _3990_ (
    .D(_1393_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_rf_if.rreg1_latched [4])
);

INVX1 _3570_ (
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_577_)
);

OAI21X1 _3150_ (
    .A(\u_mem_serial.shift_reg [3]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_266_),
    .Y(_267_)
);

AND2X2 _2841_ (
    .A(_40_),
    .B(i_rst_n_bF$buf0),
    .Y(_1343_)
);

AOI21X1 _2421_ (
    .A(_1543_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .C(_701_),
    .Y(_1544_)
);

NOR2X1 _2001_ (
    .A(_1002__bF$buf2),
    .B(_923_),
    .Y(_922_)
);

MUX2X1 _3626_ (
    .A(_316_),
    .B(_812_),
    .S(_602__bF$buf0),
    .Y(_1120_)
);

INVX1 _3206_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_307_)
);

FILL FILL_0__2058_ (
);

INVX1 _2650_ (
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_1752_)
);

NAND3X1 _2230_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_719_),
    .Y(_718_)
);

DFFPOSX1 _3855_ (
    .D(_1142_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

AOI21X1 _3435_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_708_),
    .C(_476_),
    .Y(_477_)
);

OAI21X1 _3015_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1679_),
    .C(_1708_),
    .Y(_171_)
);

NOR2X1 _1921_ (
    .A(_1070__bF$buf1),
    .B(_991_),
    .Y(_1454_)
);

AND2X2 _2706_ (
    .A(_1792_),
    .B(i_rst_n_bF$buf8),
    .Y(_1376_)
);

OAI21X1 _3664_ (
    .A(_1046_),
    .B(_1048_),
    .C(\u_mem_serial.bit_count [0]),
    .Y(_1045_)
);

AOI21X1 _3244_ (
    .A(_315_),
    .B(_336_),
    .C(_337_),
    .Y(_1237_)
);

DFFPOSX1 _4029_ (
    .D(_1208_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [14])
);

FILL FILL126450x50550 (
);

OAI21X1 _2935_ (
    .A(_111_),
    .B(_22__bF$buf3),
    .C(i_rst_n_bF$buf10),
    .Y(_112_)
);

INVX1 _2515_ (
    .A(_1637_),
    .Y(_1638_)
);

DFFPOSX1 _3893_ (
    .D(_1341_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_rf_if.read_buf0 [7])
);

OAI21X1 _3473_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [18]),
    .C(_506_),
    .Y(_507_)
);

AOI21X1 _3053_ (
    .A(_198_),
    .B(_196_),
    .C(_1070__bF$buf5),
    .Y(_1289_)
);

FILL FILL126750x104550 (
);

NAND2X1 _2744_ (
    .A(\u_rf_if.read_buf1 [12]),
    .B(_1783__bF$buf4),
    .Y(_1821_)
);

OR2X2 _2324_ (
    .A(_735_),
    .B(raddr[1]),
    .Y(_1085_)
);

DFFPOSX1 _3949_ (
    .D(_1369_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_rf_if.read_buf1 [9])
);

NAND2X1 _3529_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(_548_),
    .Y(_549_)
);

AOI21X1 _3109_ (
    .A(_233_),
    .B(_232_),
    .C(_229_),
    .Y(_235_)
);

AOI22X1 _3282_ (
    .A(_366_),
    .B(_367_),
    .C(_351_),
    .D(_686_),
    .Y(_1229_)
);

DFFPOSX1 _4067_ (
    .D(_1435_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [20])
);

AOI21X1 _2973_ (
    .A(_1680_),
    .B(_136_),
    .C(_137_),
    .Y(_1308_)
);

INVX1 _2553_ (
    .A(\u_rf_if.rcnt [1]),
    .Y(_1671_)
);

OAI21X1 _2133_ (
    .A(_812_),
    .B(_973__bF$buf4),
    .C(_807_),
    .Y(_806_)
);

DFFPOSX1 _3758_ (
    .D(_1275_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.state.cnt_r [1])
);

INVX1 _3338_ (
    .A(\u_cpu.bufreg.data [18]),
    .Y(_407_)
);

AOI21X1 _3091_ (
    .A(_689_),
    .B(_221_),
    .C(_1070__bF$buf1),
    .Y(_1274_)
);

FILL FILL126750x93750 (
);

FILL FILL_0__3131_ (
);

NOR2X1 _2609_ (
    .A(_1718_),
    .B(_1638_),
    .Y(_1719_)
);

AND2X2 _2782_ (
    .A(_1849_),
    .B(i_rst_n_bF$buf1),
    .Y(_1357_)
);

NOR2X1 _2362_ (
    .A(\u_rf_if.tx_state [3]),
    .B(\u_rf_if.tx_state [2]),
    .Y(_1490_)
);

DFFPOSX1 _3987_ (
    .D(_1189_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.bufreg2.dhi [6])
);

OAI22X1 _3567_ (
    .A(_575_),
    .B(_212__bF$buf2),
    .C(_574_),
    .D(_570__bF$buf4),
    .Y(_1152_)
);

OAI21X1 _3147_ (
    .A(_1062_),
    .B(_1692__bF$buf3),
    .C(_264_),
    .Y(_1261_)
);

MUX2X1 _2838_ (
    .A(\u_rf_if.read_buf0 [6]),
    .B(\u_rf_if.read_buf0 [7]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_38_)
);

OAI21X1 _2418_ (
    .A(_787_),
    .B(_1521_),
    .C(_1540_),
    .Y(_1541_)
);

OAI21X1 _2591_ (
    .A(_1701_),
    .B(_1702_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1703_)
);

INVX1 _2171_ (
    .A(\u_mem_serial.shift_reg [33]),
    .Y(_772_)
);

DFFPOSX1 _3796_ (
    .D(_1128_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

INVX1 _3376_ (
    .A(\u_cpu.bufreg.data [30]),
    .Y(_427_)
);

BUFX2 _1862_ (
    .A(_1856_),
    .Y(o_rf_mosi)
);

NOR2X1 _2647_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_1749_)
);

OAI21X1 _2227_ (
    .A(_724_),
    .B(_722_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_721_)
);

OAI21X1 _3185_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(ibus_pending_ack_bF$buf4),
    .C(_291_),
    .Y(_292_)
);

NAND3X1 _1918_ (
    .A(\u_mem_serial.shift_reg [0]),
    .B(_1023__bF$buf2),
    .C(_994__bF$buf5),
    .Y(_993_)
);

OAI21X1 _2876_ (
    .A(_22__bF$buf5),
    .B(_65_),
    .C(_66_),
    .Y(_67_)
);

NAND2X1 _2456_ (
    .A(_1578_),
    .B(_1567_),
    .Y(_1579_)
);

OAI21X1 _2036_ (
    .A(_894_),
    .B(_892_),
    .C(_973__bF$buf2),
    .Y(_891_)
);

FILL FILL_0__2916_ (
);

FILL FILL_0__3034_ (
);

AOI21X1 _2685_ (
    .A(_1774_),
    .B(_1775_),
    .C(_1776_),
    .Y(_1381_)
);

INVX1 _2265_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .Y(_683_)
);

FILL FILL_0__1940_ (
);

OAI21X1 _1956_ (
    .A(_964_),
    .B(_962_),
    .C(_973__bF$buf0),
    .Y(_961_)
);

OAI21X1 _2494_ (
    .A(_1518_),
    .B(_1558_),
    .C(_1616_),
    .Y(_1617_)
);

MUX2X1 _2074_ (
    .A(\u_cpu.bufreg.data [22]),
    .B(\u_cpu.ctrl.o_ibus_adr [22]),
    .S(_1006__bF$buf0),
    .Y(_858_)
);

NOR2X1 _3699_ (
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_1056_),
    .Y(_1055_)
);

MUX2X1 _3279_ (
    .A(_364_),
    .B(_966_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_365_)
);

DFFPOSX1 _3911_ (
    .D(_1350_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_rf_if.read_buf1 [28])
);

AND2X2 _3088_ (
    .A(i_rst_n_bF$buf5),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_1276_)
);

FILL FILL127350x86550 (
);

MUX2X1 _1994_ (
    .A(\u_cpu.bufreg.data [12]),
    .B(\u_cpu.ctrl.o_ibus_adr [12]),
    .S(_1006__bF$buf2),
    .Y(_928_)
);

MUX2X1 _2779_ (
    .A(\u_rf_if.read_buf1 [22]),
    .B(\u_rf_if.read_buf1 [23]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_1847_)
);

NAND3X1 _2359_ (
    .A(_651_),
    .B(_1486_),
    .C(_607_),
    .Y(_1487_)
);

DFFPOSX1 _3720_ (
    .D(_1247_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(rreg0[1])
);

INVX1 _3300_ (
    .A(_381_),
    .Y(_382_)
);

FILL FILL_0__2819_ (
);

FILL FILL_0__2992_ (
);

INVX1 _2588_ (
    .A(_1700_),
    .Y(_1402_)
);

MUX2X1 _2168_ (
    .A(_791_),
    .B(_776_),
    .S(_994__bF$buf5),
    .Y(_775_)
);

NAND2X1 _2800_ (
    .A(\u_rf_if.read_buf1 [26]),
    .B(_1783__bF$buf2),
    .Y(_9_)
);

INVX1 _2397_ (
    .A(\u_cpu.decode.opcode [1]),
    .Y(_1520_)
);

NAND2X1 _3814_ (
    .A(\u_cpu.state.init_done ),
    .B(_1065_),
    .Y(_1064_)
);

NAND3X1 _1897_ (
    .A(\u_mem_serial.bit_count [5]),
    .B(_1026_),
    .C(_1021_),
    .Y(_1013_)
);

OAI21X1 _3623_ (
    .A(_1602_),
    .B(_1592_),
    .C(_1601_),
    .Y(_1122_)
);

INVX1 _3203_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_305_)
);

FILL FILL_0__2895_ (
);

FILL FILL127350x18150 (
);

DFFPOSX1 _3852_ (
    .D(_1321_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf0 [27])
);

NOR2X1 _3432_ (
    .A(_716_),
    .B(_715_),
    .Y(_474_)
);

NAND2X1 _3012_ (
    .A(_168_),
    .B(_1692__bF$buf4),
    .Y(_169_)
);

MUX2X1 _2703_ (
    .A(\u_rf_if.read_buf1 [3]),
    .B(\u_rf_if.read_buf1 [4]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1790_)
);

DFFPOSX1 _3908_ (
    .D(_1155_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

FILL FILL_0__1975_ (
);

AND2X2 _3661_ (
    .A(_1043_),
    .B(_1044_),
    .Y(_1042_)
);

MUX2X1 _3241_ (
    .A(_334_),
    .B(_840_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_335_)
);

DFFPOSX1 _4026_ (
    .D(_1207_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [13])
);

NAND2X1 _2932_ (
    .A(\u_rf_if.read_buf0 [27]),
    .B(_22__bF$buf2),
    .Y(_110_)
);

OAI21X1 _2512_ (
    .A(\u_rf_if.tx_state [2]),
    .B(_739_),
    .C(\u_rf_if.tx_state [3]),
    .Y(_1635_)
);

DFFPOSX1 _3717_ (
    .D(_1454_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [1])
);

DFFSR _3890_ (
    .R(vdd),
    .S(i_rst_n_bF$buf9),
    .D(_1095_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(ibus_pending_rdt[4])
);

MUX2X1 _3470_ (
    .A(_502_),
    .B(_504_),
    .S(_450__bF$buf0),
    .Y(_1178_)
);

NAND2X1 _3050_ (
    .A(\u_rf_if.last_req_key [5]),
    .B(_1488_),
    .Y(_196_)
);

OAI21X1 _2741_ (
    .A(_1783__bF$buf6),
    .B(_1817_),
    .C(_1818_),
    .Y(_1819_)
);

NOR2X1 _2321_ (
    .A(\u_rf_if.last_req_key [3]),
    .B(_1076_),
    .Y(_1077_)
);

DFFPOSX1 _3946_ (
    .D(_1172_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_cpu.bufreg2.dlo [12])
);

MUX2X1 _3526_ (
    .A(_544_),
    .B(_546_),
    .S(_450__bF$buf0),
    .Y(_1164_)
);

OAI21X1 _3106_ (
    .A(_1575_),
    .B(_1582_),
    .C(_1572_),
    .Y(_232_)
);

FILL FILL_0__2798_ (
);

DFFPOSX1 _4064_ (
    .D(_1225_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

AOI21X1 _2970_ (
    .A(_1680_),
    .B(_134_),
    .C(_135_),
    .Y(_1309_)
);

NAND2X1 _2550_ (
    .A(_1855_),
    .B(_1668_),
    .Y(_1669_)
);

MUX2X1 _2130_ (
    .A(\u_cpu.bufreg.data [29]),
    .B(\u_cpu.ctrl.o_ibus_adr [29]),
    .S(_1006__bF$buf3),
    .Y(_809_)
);

DFFPOSX1 _3755_ (
    .D(_1272_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.state.o_cnt [2])
);

MUX2X1 _3335_ (
    .A(_404_),
    .B(_405_),
    .S(_1536__bF$buf3),
    .Y(_1214_)
);

INVX1 _2606_ (
    .A(_605_),
    .Y(_1716_)
);

FILL FILL_0__1878_ (
);

DFFPOSX1 _3984_ (
    .D(_1390_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.rtrig1 )
);

INVX1 _3564_ (
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_574_)
);

INVX1 _3144_ (
    .A(ibus_pending_rdt[4]),
    .Y(_262_)
);

NAND2X1 _2835_ (
    .A(\u_rf_if.read_buf0 [4]),
    .B(_22__bF$buf4),
    .Y(_36_)
);

INVX1 _2415_ (
    .A(_1518_),
    .Y(_1538_)
);

DFFPOSX1 _3793_ (
    .D(_1293_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_if.last_req_key [1])
);

OAI21X1 _3373_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .C(_1554_),
    .Y(_425_)
);

AOI21X1 _2644_ (
    .A(_1747_),
    .B(_1744_),
    .C(_1070__bF$buf0),
    .Y(_1393_)
);

NAND2X1 _2224_ (
    .A(_1063_),
    .B(_725_),
    .Y(_724_)
);

INVX2 _3849_ (
    .A(\u_cpu.decode.opcode [2]),
    .Y(_1062_)
);

MUX2X1 _3429_ (
    .A(_768_),
    .B(_471_),
    .S(_708_),
    .Y(_472_)
);

OAI21X1 _3009_ (
    .A(_673__bF$buf3),
    .B(_674__bF$buf3),
    .C(\u_rf_if.rreg0_latched [3]),
    .Y(_166_)
);

OAI21X1 _3182_ (
    .A(_673__bF$buf2),
    .B(_674__bF$buf0),
    .C(\u_cpu.bufreg.i_sh_signed ),
    .Y(_289_)
);

NOR2X1 _1915_ (
    .A(_1070__bF$buf1),
    .B(_996_),
    .Y(_1455_)
);

AND2X2 _2873_ (
    .A(_64_),
    .B(i_rst_n_bF$buf1),
    .Y(_1335_)
);

INVX1 _2453_ (
    .A(_1575_),
    .Y(_1576_)
);

NOR2X1 _2033_ (
    .A(_1002__bF$buf2),
    .B(_895_),
    .Y(_894_)
);

OAI21X1 _3658_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_1041_),
    .C(_1052_),
    .Y(_1040_)
);

NOR2X1 _3238_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_315_),
    .Y(_333_)
);

NAND2X1 _2929_ (
    .A(\u_rf_if.read_buf0 [28]),
    .B(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_107_)
);

OAI21X1 _2509_ (
    .A(_739_),
    .B(_1086_),
    .C(_1631_),
    .Y(_1632_)
);

NAND2X1 _2682_ (
    .A(\u_rf_if.stream_cnt [1]),
    .B(_1749_),
    .Y(_1774_)
);

INVX1 _2262_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_686_)
);

DFFPOSX1 _3887_ (
    .D(_1338_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf0 [10])
);

INVX1 _3467_ (
    .A(\u_cpu.bufreg2.dlo [18]),
    .Y(_502_)
);

NAND2X1 _3047_ (
    .A(\u_rf_if.last_req_key [4]),
    .B(_1488_),
    .Y(_194_)
);

FILL FILL_0__2722_ (
);

FILL FILL127050x64950 (
);

NOR2X1 _1953_ (
    .A(_1002__bF$buf1),
    .B(_965_),
    .Y(_964_)
);

AND2X2 _2738_ (
    .A(_1816_),
    .B(i_rst_n_bF$buf3),
    .Y(_1368_)
);

AOI22X1 _2318_ (
    .A(ren),
    .B(raddr[7]),
    .C(_671_),
    .D(_606_),
    .Y(_605_)
);

NAND3X1 _2491_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .C(_1613_),
    .Y(_1614_)
);

INVX1 _2071_ (
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_861_)
);

INVX1 _3696_ (
    .A(_630_),
    .Y(_631_)
);

OAI21X1 _3276_ (
    .A(_659__bF$buf5),
    .B(_361_),
    .C(_362_),
    .Y(_363_)
);

FILL FILL126750x46950 (
);

FILL FILL_0__2951_ (
);

OAI22X1 _2967_ (
    .A(_1680_),
    .B(_129_),
    .C(_1690_),
    .D(_133_),
    .Y(_1310_)
);

NAND3X1 _2547_ (
    .A(_736_),
    .B(_1471_),
    .C(_1666_),
    .Y(_1667_)
);

INVX1 _2127_ (
    .A(\u_mem_serial.shift_reg [29]),
    .Y(_812_)
);

NOR2X1 _3085_ (
    .A(_1070__bF$buf4),
    .B(_219_),
    .Y(_1278_)
);

INVX1 _1991_ (
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_931_)
);

NAND2X1 _2776_ (
    .A(\u_rf_if.read_buf1 [20]),
    .B(_1783__bF$buf5),
    .Y(_1845_)
);

NAND3X1 _2356_ (
    .A(\u_rf_if.last_req_key [7]),
    .B(_1482_),
    .C(_1483_),
    .Y(_1484_)
);

DFFPOSX1 _4099_ (
    .D(_1451_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [4])
);

NAND2X1 _2585_ (
    .A(i_rst_n_bF$buf4),
    .B(_689_),
    .Y(_1698_)
);

NOR2X1 _2165_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_785_),
    .Y(_778_)
);

FILL FILL_0__2625_ (
);

INVX1 _2394_ (
    .A(_1516_),
    .Y(_1517_)
);

OAI22X1 _3599_ (
    .A(_591_),
    .B(_212__bF$buf3),
    .C(_590_),
    .D(_570__bF$buf0),
    .Y(_1136_)
);

NAND3X1 _3179_ (
    .A(_245_),
    .B(_1047_),
    .C(_278_),
    .Y(_287_)
);

FILL FILL_0__2854_ (
);

DFFPOSX1 _3811_ (
    .D(_1302_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_rf_if.rreg0_latched [1])
);

AOI21X1 _1894_ (
    .A(_1018_),
    .B(_1017_),
    .C(_1022_),
    .Y(_1016_)
);

INVX1 _2679_ (
    .A(_1749_),
    .Y(_1772_)
);

AOI21X1 _2259_ (
    .A(_706_),
    .B(_698_),
    .C(_690_),
    .Y(_689_)
);

INVX1 _3620_ (
    .A(\u_cpu.alu.cmp_r ),
    .Y(_600_)
);

INVX1 _3200_ (
    .A(\u_cpu.csr_imm ),
    .Y(_303_)
);

INVX1 _2488_ (
    .A(_1610_),
    .Y(_1611_)
);

OAI21X1 _2068_ (
    .A(_866_),
    .B(_864_),
    .C(_973__bF$buf5),
    .Y(_863_)
);

FILL FILL_0__2528_ (
);

FILL FILL127350x72150 (
);

FILL FILL127350x39750 (
);

NAND2X1 _2700_ (
    .A(\u_rf_if.read_buf1 [1]),
    .B(_1783__bF$buf0),
    .Y(_1788_)
);

DFFPOSX1 _3905_ (
    .D(_1347_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf0 [1])
);

INVX1 _2297_ (
    .A(_652_),
    .Y(_651_)
);

FILL FILL_0__2757_ (
);

DFFPOSX1 _4023_ (
    .D(_1411_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.shift_rx [0])
);

OAI21X1 _1988_ (
    .A(_936_),
    .B(_934_),
    .C(_973__bF$buf6),
    .Y(_933_)
);

DFFPOSX1 _3714_ (
    .D(_1244_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

DFFPOSX1 _3943_ (
    .D(_1366_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_rf_if.read_buf1 [12])
);

INVX1 _3523_ (
    .A(\u_cpu.bufreg2.dlo [4]),
    .Y(_544_)
);

NOR2X1 _3103_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_229_)
);

DFFPOSX1 _4061_ (
    .D(_1432_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [23])
);

DFFPOSX1 _3752_ (
    .D(_1269_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.ctrl.i_jump )
);

INVX1 _3332_ (
    .A(\u_cpu.bufreg.data [21]),
    .Y(_404_)
);

AOI21X1 _2603_ (
    .A(_1712_),
    .B(_1709_),
    .C(_1679_),
    .Y(_1713_)
);

DFFPOSX1 _3808_ (
    .D(_1131_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.ctrl.pc )
);

DFFPOSX1 _3981_ (
    .D(_1387_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.shift_rx [1])
);

OAI22X1 _3561_ (
    .A(_572_),
    .B(_212__bF$buf2),
    .C(_571_),
    .D(_570__bF$buf4),
    .Y(_1155_)
);

OAI21X1 _3141_ (
    .A(\u_mem_serial.shift_reg [5]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_259_),
    .Y(_260_)
);

FILL FILL_0__3601_ (
);

OAI21X1 _2832_ (
    .A(_22__bF$buf4),
    .B(_32_),
    .C(_33_),
    .Y(_34_)
);

NAND2X1 _2412_ (
    .A(_721_),
    .B(_1534_),
    .Y(_1535_)
);

AOI21X1 _3617_ (
    .A(_1610_),
    .B(_598_),
    .C(_688_),
    .Y(_1125_)
);

DFFSR _3790_ (
    .R(i_rst_n_bF$buf7),
    .S(vdd),
    .D(_1071_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(ibus_pending_rdt[31])
);

NOR2X1 _3370_ (
    .A(\u_cpu.bufreg.data [2]),
    .B(_1536__bF$buf1),
    .Y(_423_)
);

INVX1 _2641_ (
    .A(ibus_pending_rdt[24]),
    .Y(_1745_)
);

NOR2X1 _2221_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_1062_),
    .Y(_727_)
);

DFFPOSX1 _3846_ (
    .D(_1318_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_rf_if.o_waddr [0])
);

INVX1 _3426_ (
    .A(_468_),
    .Y(_469_)
);

MUX2X1 _3006_ (
    .A(_163_),
    .B(_896_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_164_)
);

NAND3X1 _1912_ (
    .A(_1026_),
    .B(_1003_),
    .C(_999_),
    .Y(_998_)
);

MUX2X1 _2870_ (
    .A(\u_rf_if.read_buf0 [14]),
    .B(\u_rf_if.read_buf0 [15]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_62_)
);

INVX1 _2450_ (
    .A(\u_cpu.alu.add_cy_r ),
    .Y(_1573_)
);

AND2X2 _2030_ (
    .A(_897_),
    .B(i_rst_n_bF$buf2),
    .Y(_1439_)
);

MUX2X1 _3655_ (
    .A(_603_),
    .B(_556_),
    .S(_602__bF$buf2),
    .Y(_1092_)
);

INVX1 _3235_ (
    .A(ibus_pending_rdt[26]),
    .Y(_330_)
);

NAND2X1 _2926_ (
    .A(\u_rf_if.read_buf0 [26]),
    .B(_22__bF$buf2),
    .Y(_105_)
);

OAI21X1 _2506_ (
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .C(\u_rf_if.tx_state [2]),
    .Y(_1629_)
);

DFFPOSX1 _3884_ (
    .D(_1149_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

NAND2X1 _3464_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(_882_),
    .Y(_500_)
);

NAND3X1 _3044_ (
    .A(_736_),
    .B(_191_),
    .C(_1666_),
    .Y(_192_)
);

FILL FILL_0__3504_ (
);

AND2X2 _1950_ (
    .A(_967_),
    .B(i_rst_n_bF$buf2),
    .Y(_1449_)
);

MUX2X1 _2735_ (
    .A(\u_rf_if.read_buf1 [11]),
    .B(\u_rf_if.read_buf1 [12]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1814_)
);

OAI21X1 _2315_ (
    .A(\u_rf_if.last_req_key [8]),
    .B(_654_),
    .C(_609_),
    .Y(_608_)
);

NAND3X1 _3693_ (
    .A(ibus_pending_ack_bF$buf0),
    .B(ibus_pending_rdt[1]),
    .C(ibus_pending_rdt[0]),
    .Y(_628_)
);

INVX1 _3273_ (
    .A(ibus_pending_rdt[8]),
    .Y(_360_)
);

DFFPOSX1 _4058_ (
    .D(_1222_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg.data [28])
);

NOR2X1 _2964_ (
    .A(\u_rf_if.issue_sel ),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_131_)
);

AOI21X1 _2544_ (
    .A(_1664_),
    .B(_1663_),
    .C(_1494_),
    .Y(_1410_)
);

OAI21X1 _2124_ (
    .A(_817_),
    .B(_815_),
    .C(_973__bF$buf4),
    .Y(_814_)
);

DFFSR _3749_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1107_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(ibus_pending_rdt[16])
);

MUX2X1 _3329_ (
    .A(_401_),
    .B(_402_),
    .S(_1536__bF$buf3),
    .Y(_1217_)
);

MUX2X1 _3082_ (
    .A(\u_mem_serial.shift_reg [36]),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .S(_994__bF$buf5),
    .Y(_217_)
);

OAI21X1 _2773_ (
    .A(_1783__bF$buf5),
    .B(_1841_),
    .C(_1842_),
    .Y(_1843_)
);

OAI21X1 _2353_ (
    .A(_642_),
    .B(_1480_),
    .C(_1478_),
    .Y(_1481_)
);

DFFPOSX1 _3978_ (
    .D(_1385_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_rf_if.wdata0_r [0])
);

INVX1 _3558_ (
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_571_)
);

OAI21X1 _3138_ (
    .A(_1500_),
    .B(_1692__bF$buf3),
    .C(_257_),
    .Y(_1263_)
);

DFFPOSX1 _4096_ (
    .D(_1241_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

AND2X2 _2829_ (
    .A(_31_),
    .B(i_rst_n_bF$buf10),
    .Y(_1346_)
);

NAND2X1 _2409_ (
    .A(_705_),
    .B(_663_),
    .Y(_1532_)
);

INVX1 _2582_ (
    .A(\u_rf_if.pending_read ),
    .Y(_1696_)
);

AND2X2 _2162_ (
    .A(_781_),
    .B(i_rst_n_bF$buf5),
    .Y(_1423_)
);

DFFPOSX1 _3787_ (
    .D(_1290_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_if.last_req_key [4])
);

MUX2X1 _3367_ (
    .A(_420_),
    .B(_421_),
    .S(_1536__bF$buf2),
    .Y(_1198_)
);

OAI21X1 _2638_ (
    .A(\u_rf_if.read_buf1 [31]),
    .B(_1742_),
    .C(_1740_),
    .Y(_1743_)
);

NOR2X1 _2218_ (
    .A(_735_),
    .B(_731_),
    .Y(_730_)
);

NAND2X1 _2391_ (
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_1511_),
    .Y(_1514_)
);

INVX1 _3596_ (
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_590_)
);

OR2X2 _3176_ (
    .A(_659__bF$buf2),
    .B(_285_),
    .Y(_286_)
);

INVX1 _1909_ (
    .A(\u_mem_serial.active_we ),
    .Y(_1001_)
);

FILL FILL_0__3636_ (
);

NAND2X1 _2867_ (
    .A(\u_rf_if.read_buf0 [12]),
    .B(_22__bF$buf5),
    .Y(_60_)
);

OAI22X1 _2447_ (
    .A(_694_),
    .B(_1566_),
    .C(\u_cpu.bne_or_bge ),
    .D(_1569_),
    .Y(_1570_)
);

NOR2X1 _2027_ (
    .A(_1023__bF$buf1),
    .B(_900_),
    .Y(_899_)
);

FILL FILL127050x50550 (
);

FILL FILL_0__2660_ (
);

FILL FILL127050x3750 (
);

NAND2X1 _1891_ (
    .A(_1021_),
    .B(_1020_),
    .Y(_1019_)
);

NAND2X1 _2676_ (
    .A(\u_rf_if.rcnt [2]),
    .B(_1672_),
    .Y(_1770_)
);

NOR2X1 _2256_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_1062_),
    .Y(_692_)
);

NOR2X1 _1947_ (
    .A(_1023__bF$buf5),
    .B(_970_),
    .Y(_969_)
);

NOR2X1 _2485_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1608_)
);

NOR2X1 _2065_ (
    .A(_1002__bF$buf0),
    .B(_867_),
    .Y(_866_)
);

DFFSR _3902_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1098_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(ibus_pending_rdt[7])
);

FILL FILL127350x93750 (
);

AOI22X1 _2294_ (
    .A(ren),
    .B(raddr[8]),
    .C(_671_),
    .D(_655_),
    .Y(_654_)
);

NAND2X1 _3499_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(_945_),
    .Y(_526_)
);

OAI22X1 _3079_ (
    .A(_211_),
    .B(_212__bF$buf1),
    .C(_215_),
    .D(_213_),
    .Y(_1280_)
);

DFFPOSX1 _4020_ (
    .D(_1409_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_if.last_req_key [10])
);

FILL FILL_0__3539_ (
);

NOR2X1 _1985_ (
    .A(_1002__bF$buf2),
    .B(_937_),
    .Y(_936_)
);

NOR2X1 _3711_ (
    .A(_620_),
    .B(_639_),
    .Y(_1072_)
);

FILL FILL_0__2563_ (
);

OAI21X1 _2999_ (
    .A(_673__bF$buf3),
    .B(_674__bF$buf3),
    .C(\u_rf_if.rreg0_latched [1]),
    .Y(_158_)
);

MUX2X1 _2579_ (
    .A(_1693_),
    .B(_882_),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_1694_)
);

OAI21X1 _2159_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_784_),
    .Y(_783_)
);

DFFPOSX1 _3940_ (
    .D(_1169_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.bufreg2.dlo [9])
);

NAND2X1 _3520_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(_541_),
    .Y(_542_)
);

AOI21X1 _3100_ (
    .A(_703_),
    .B(_720_),
    .C(_227_),
    .Y(_1271_)
);

NAND2X1 _2388_ (
    .A(_1509_),
    .B(_1510_),
    .Y(_1511_)
);

NOR2X1 _2600_ (
    .A(\u_rf_if.issue_chunk [1]),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_1710_)
);

DFFPOSX1 _3805_ (
    .D(_1299_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_rf_if.issue_sel )
);

OR2X2 _2197_ (
    .A(_751_),
    .B(\u_mem_serial.bit_count [6]),
    .Y(_750_)
);

NAND3X1 _1888_ (
    .A(_1026_),
    .B(_1025_),
    .C(_1023__bF$buf2),
    .Y(_1022_)
);

OAI22X1 _3614_ (
    .A(_595_),
    .B(_212__bF$buf4),
    .C(_597_),
    .D(_570__bF$buf3),
    .Y(_1127_)
);

FILL FILL127350x25350 (
);

FILL FILL_0__2466_ (
);

DFFPOSX1 _3843_ (
    .D(_1139_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

MUX2X1 _3423_ (
    .A(_466_),
    .B(_768_),
    .S(_451_),
    .Y(_1187_)
);

AOI21X1 _3003_ (
    .A(_161_),
    .B(_158_),
    .C(_1070__bF$buf0),
    .Y(_1302_)
);

FILL FILL_0__2695_ (
);

MUX2X1 _3652_ (
    .A(_265_),
    .B(_548_),
    .S(_602__bF$buf4),
    .Y(_1094_)
);

MUX2X1 _3232_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_327_),
    .S(_659__bF$buf4),
    .Y(_328_)
);

DFFPOSX1 _4017_ (
    .D(_1203_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_cpu.bufreg.data [9])
);

NAND2X1 _2923_ (
    .A(\u_rf_if.read_buf0 [27]),
    .B(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_102_)
);

OAI21X1 _2503_ (
    .A(_1619_),
    .B(_1516_),
    .C(_1625_),
    .Y(_1626_)
);

NAND2X1 _3708_ (
    .A(ibus_pending_ack_bF$buf2),
    .B(_674__bF$buf2),
    .Y(_638_)
);

DFFPOSX1 _3881_ (
    .D(_1335_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_rf_if.read_buf0 [13])
);

OAI21X1 _3461_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(_497_),
    .Y(_498_)
);

NAND2X1 _3041_ (
    .A(\u_rf_if.last_req_key [2]),
    .B(_1488_),
    .Y(_190_)
);

NAND2X1 _2732_ (
    .A(\u_rf_if.read_buf1 [9]),
    .B(_1783__bF$buf6),
    .Y(_1812_)
);

INVX1 _2312_ (
    .A(_648_),
    .Y(_611_)
);

DFFPOSX1 _3937_ (
    .D(_1363_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [15])
);

MUX2X1 _3517_ (
    .A(_537_),
    .B(_539_),
    .S(_450__bF$buf3),
    .Y(_1166_)
);

NAND3X1 _3690_ (
    .A(_253_),
    .B(_623_),
    .C(_624_),
    .Y(_625_)
);

NAND3X1 _3270_ (
    .A(_682_),
    .B(_350_),
    .C(_659__bF$buf5),
    .Y(_358_)
);

FILL FILL_0__2369_ (
);

DFFPOSX1 _4055_ (
    .D(_1429_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [26])
);

AOI21X1 _2961_ (
    .A(_1680_),
    .B(_127_),
    .C(_128_),
    .Y(_1311_)
);

INVX1 _2541_ (
    .A(_1662_),
    .Y(_1411_)
);

NOR2X1 _2121_ (
    .A(_1002__bF$buf3),
    .B(_818_),
    .Y(_817_)
);

DFFSR _3746_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1106_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(ibus_pending_rdt[15])
);

INVX1 _3326_ (
    .A(\u_cpu.bufreg.data [24]),
    .Y(_401_)
);

FILL FILL_0__2598_ (
);

AND2X2 _2770_ (
    .A(_1840_),
    .B(i_rst_n_bF$buf6),
    .Y(_1360_)
);

INVX1 _2350_ (
    .A(\u_rf_if.last_req_key [6]),
    .Y(_1478_)
);

DFFPOSX1 _3975_ (
    .D(_1382_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_rf_if.stream_cnt [0])
);

INVX1 _3555_ (
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_569_)
);

INVX1 _3135_ (
    .A(ibus_pending_rdt[12]),
    .Y(_255_)
);

DFFPOSX1 _4093_ (
    .D(_1448_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [7])
);

MUX2X1 _2826_ (
    .A(\u_rf_if.read_buf0 [3]),
    .B(\u_rf_if.read_buf0 [4]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_29_)
);

OAI21X1 _2406_ (
    .A(_1522_),
    .B(_1528_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_1529_)
);

DFFSR _3784_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1121_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(ibus_pending_rdt[30])
);

INVX1 _3364_ (
    .A(\u_cpu.bufreg.data [5]),
    .Y(_420_)
);

OAI21X1 _2635_ (
    .A(\u_rf_if.read_buf0 [31]),
    .B(_1738_),
    .C(_1740_),
    .Y(_1741_)
);

INVX1 _2215_ (
    .A(\u_rf_if.rtrig1 ),
    .Y(_733_)
);

FILL FILL127350x108150 (
);

OAI22X1 _3593_ (
    .A(_588_),
    .B(_212__bF$buf0),
    .C(_587_),
    .D(_570__bF$buf1),
    .Y(_1139_)
);

INVX1 _3173_ (
    .A(ibus_pending_rdt[14]),
    .Y(_283_)
);

OAI21X1 _1906_ (
    .A(\u_mem_serial.state [1]),
    .B(_1024_),
    .C(_1005_),
    .Y(_1004_)
);

OAI21X1 _2864_ (
    .A(_22__bF$buf5),
    .B(_56_),
    .C(_57_),
    .Y(_58_)
);

OAI21X1 _2444_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_1545_),
    .C(_1563_),
    .Y(_1567_)
);

MUX2X1 _2024_ (
    .A(\u_mem_serial.shift_reg [15]),
    .B(\u_cpu.bufreg2.dlo [10]),
    .S(_994__bF$buf2),
    .Y(_902_)
);

MUX2X1 _3649_ (
    .A(_280_),
    .B(_974_),
    .S(_602__bF$buf2),
    .Y(_1097_)
);

AOI21X1 _3229_ (
    .A(_315_),
    .B(_324_),
    .C(_325_),
    .Y(_1240_)
);

FILL FILL_0__3442_ (
);

NAND2X1 _2673_ (
    .A(_1670_),
    .B(_1767_),
    .Y(_1768_)
);

NAND2X1 _2253_ (
    .A(_702_),
    .B(_696_),
    .Y(_695_)
);

DFFSR _3878_ (
    .R(vdd),
    .S(i_rst_n_bF$buf2),
    .D(_1092_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(ibus_pending_rdt[1])
);

MUX2X1 _3458_ (
    .A(_493_),
    .B(_495_),
    .S(_450__bF$buf4),
    .Y(_1181_)
);

NAND2X1 _3038_ (
    .A(\u_rf_if.last_req_key [1]),
    .B(_1488_),
    .Y(_188_)
);

MUX2X1 _1944_ (
    .A(\u_mem_serial.shift_reg [5]),
    .B(\u_cpu.bufreg2.dlo [0]),
    .S(_994__bF$buf0),
    .Y(_972_)
);

FILL FILL_0__3671_ (
);

OAI21X1 _2729_ (
    .A(_1783__bF$buf2),
    .B(_1808_),
    .C(_1809_),
    .Y(_1810_)
);

NAND2X1 _2309_ (
    .A(_640_),
    .B(_671_),
    .Y(_634_)
);

AND2X2 _2482_ (
    .A(_1604_),
    .B(_1601_),
    .Y(_1605_)
);

AND2X2 _2062_ (
    .A(_869_),
    .B(i_rst_n_bF$buf7),
    .Y(_1435_)
);

INVX1 _3687_ (
    .A(_271_),
    .Y(_622_)
);

AOI21X1 _3267_ (
    .A(_351_),
    .B(_682_),
    .C(_355_),
    .Y(_1232_)
);

AOI21X1 _2958_ (
    .A(_1681_),
    .B(_126_),
    .C(_1070__bF$buf3),
    .Y(_1312_)
);

AND2X2 _2538_ (
    .A(_1659_),
    .B(_1658_),
    .Y(_1660_)
);

AND2X2 _2118_ (
    .A(_820_),
    .B(i_rst_n_bF$buf7),
    .Y(_1428_)
);

AOI21X1 _2291_ (
    .A(_659__bF$buf1),
    .B(_672_),
    .C(_658_),
    .Y(_657_)
);

OAI21X1 _3496_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [12]),
    .C(_523_),
    .Y(_524_)
);

AND2X2 _3076_ (
    .A(_1558_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_213_)
);

AND2X2 _1982_ (
    .A(_939_),
    .B(i_rst_n_bF$buf8),
    .Y(_1445_)
);

MUX2X1 _2767_ (
    .A(\u_rf_if.read_buf1 [19]),
    .B(\u_rf_if.read_buf1 [20]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1838_)
);

NAND3X1 _2347_ (
    .A(_1463_),
    .B(_1474_),
    .C(_1468_),
    .Y(_1475_)
);

FILL FILL_0__3345_ (
);

MUX2X1 _2996_ (
    .A(_155_),
    .B(_910_),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_156_)
);

OAI21X1 _2576_ (
    .A(_673__bF$buf3),
    .B(_674__bF$buf3),
    .C(\u_rf_if.rreg0_latched [4]),
    .Y(_1691_)
);

NOR2X1 _2156_ (
    .A(_787_),
    .B(_1060_),
    .Y(_786_)
);

FILL FILL_0__3574_ (
);

INVX1 _2385_ (
    .A(\u_rf_if.rcnt [2]),
    .Y(_1508_)
);

FILL FILL_0__2425_ (
);

INVX8 _3802_ (
    .A(i_rst_n_bF$buf11),
    .Y(_1070_)
);

NAND2X1 _2194_ (
    .A(\u_mem_serial.shift_reg [36]),
    .B(_1009_),
    .Y(_752_)
);

NOR2X1 _3399_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .Y(_445_)
);

INVX1 _1885_ (
    .A(\u_mem_serial.bit_count [5]),
    .Y(_1025_)
);

OAI22X1 _3611_ (
    .A(_596_),
    .B(_212__bF$buf1),
    .C(_211_),
    .D(_570__bF$buf3),
    .Y(_1129_)
);

FILL FILL_0__3248_ (
);

NAND2X1 _2899_ (
    .A(\u_rf_if.read_buf0 [20]),
    .B(_22__bF$buf1),
    .Y(_84_)
);

INVX1 _2479_ (
    .A(\u_cpu.mem_if.signbit ),
    .Y(_1602_)
);

FILL FILL127350x46950 (
);

NOR2X1 _2059_ (
    .A(_1023__bF$buf5),
    .B(_872_),
    .Y(_871_)
);

DFFPOSX1 _3840_ (
    .D(_1315_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(raddr[0])
);

NOR2X1 _3420_ (
    .A(_462_),
    .B(_463_),
    .Y(_464_)
);

INVX1 _3000_ (
    .A(ibus_pending_rdt[16]),
    .Y(_159_)
);

FILL FILL_0__2272_ (
);

FILL FILL_0__3477_ (
);

INVX1 _2288_ (
    .A(_673__bF$buf0),
    .Y(_660_)
);

FILL FILL_0__2328_ (
);

DFFPOSX1 _4014_ (
    .D(_1406_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_rf_if.issue_idx [5])
);

NOR2X1 _1979_ (
    .A(_1023__bF$buf4),
    .B(_942_),
    .Y(_941_)
);

OAI21X1 _2920_ (
    .A(_22__bF$buf6),
    .B(_98_),
    .C(_99_),
    .Y(_100_)
);

NOR2X1 _2500_ (
    .A(_1622_),
    .B(_1618_),
    .Y(_1623_)
);

OAI21X1 _3705_ (
    .A(_636_),
    .B(_1701_),
    .C(rf_write_drain_busy),
    .Y(_637_)
);

NOR2X1 _2097_ (
    .A(_1002__bF$buf3),
    .B(_839_),
    .Y(_838_)
);

DFFPOSX1 _3934_ (
    .D(_1166_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.bufreg2.dlo [6])
);

INVX1 _3514_ (
    .A(\u_cpu.bufreg2.dlo [6]),
    .Y(_537_)
);

DFFPOSX1 _4052_ (
    .D(_1428_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [27])
);

DFFPOSX1 _3743_ (
    .D(_1264_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.decode.co_mem_word )
);

MUX2X1 _3323_ (
    .A(_398_),
    .B(_399_),
    .S(_1536__bF$buf2),
    .Y(_1220_)
);

FILL FILL_0__2175_ (
);

DFFPOSX1 _3972_ (
    .D(_1185_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

AOI21X1 _3552_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_reg [31]),
    .C(_452_),
    .Y(_567_)
);

OAI21X1 _3132_ (
    .A(\u_mem_serial.shift_reg [13]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_252_),
    .Y(_253_)
);

DFFPOSX1 _4090_ (
    .D(_1238_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

NAND2X1 _2823_ (
    .A(\u_rf_if.read_buf0 [1]),
    .B(_22__bF$buf3),
    .Y(_27_)
);

NOR2X1 _2403_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_1526_)
);

INVX1 _3608_ (
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_595_)
);

DFFPOSX1 _3781_ (
    .D(_1287_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_if.last_req_key [7])
);

MUX2X1 _3361_ (
    .A(_417_),
    .B(_418_),
    .S(_1536__bF$buf4),
    .Y(_1201_)
);

FILL FILL_0__3401_ (
);

INVX2 _2632_ (
    .A(_1726_),
    .Y(_1738_)
);

NOR2X1 _2212_ (
    .A(\u_rf_if.tx_state [4]),
    .B(_737_),
    .Y(_736_)
);

DFFPOSX1 _3837_ (
    .D(_1082_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\gen_int_sys_clk.clk_div [2])
);

NAND2X1 _3417_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_819_),
    .Y(_461_)
);

INVX1 _3590_ (
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_587_)
);

NAND2X1 _3170_ (
    .A(ibus_pending_ack_bF$buf3),
    .B(_280_),
    .Y(_281_)
);

NOR2X1 _1903_ (
    .A(_1070__bF$buf1),
    .B(_1069_),
    .Y(_1007_)
);

AND2X2 _2861_ (
    .A(_55_),
    .B(i_rst_n_bF$buf0),
    .Y(_1338_)
);

OAI21X1 _2441_ (
    .A(_1544_),
    .B(_1542_),
    .C(_787_),
    .Y(_1564_)
);

OAI21X1 _2021_ (
    .A(_910_),
    .B(_973__bF$buf2),
    .C(_905_),
    .Y(_904_)
);

MUX2X1 _3646_ (
    .A(_356_),
    .B(_952_),
    .S(_602__bF$buf2),
    .Y(_1100_)
);

MUX2X1 _3226_ (
    .A(_322_),
    .B(_819_),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_323_)
);

FILL FILL_0__2078_ (
);

AND2X2 _2917_ (
    .A(_97_),
    .B(i_rst_n_bF$buf1),
    .Y(_1324_)
);

AOI21X1 _2670_ (
    .A(_1765_),
    .B(\u_rf_if.stream_active_bF$buf6 ),
    .C(_1766_),
    .Y(_1386_)
);

INVX1 _2250_ (
    .A(_699_),
    .Y(_698_)
);

DFFPOSX1 _3875_ (
    .D(_1332_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_rf_if.read_buf0 [16])
);

INVX1 _3455_ (
    .A(\u_cpu.bufreg2.dlo [21]),
    .Y(_493_)
);

AOI21X1 _3035_ (
    .A(_184_),
    .B(_185_),
    .C(_1070__bF$buf6),
    .Y(_1294_)
);

NOR2X1 _1941_ (
    .A(_1070__bF$buf2),
    .B(_975_),
    .Y(_1450_)
);

AND2X2 _2726_ (
    .A(_1807_),
    .B(i_rst_n_bF$buf3),
    .Y(_1371_)
);

NOR2X1 _2306_ (
    .A(_735_),
    .B(_643_),
    .Y(_642_)
);

NOR2X1 _3684_ (
    .A(_618_),
    .B(_614_),
    .Y(_620_)
);

MUX2X1 _3264_ (
    .A(_352_),
    .B(_945_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_353_)
);

FILL FILL127050x115350 (
);

DFFPOSX1 _4049_ (
    .D(_1218_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_cpu.bufreg.data [24])
);

FILL FILL_0__3304_ (
);

NAND2X1 _2955_ (
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1680_),
    .Y(_125_)
);

AOI21X1 _2535_ (
    .A(_1648_),
    .B(_1657_),
    .C(_1497_),
    .Y(_1856_)
);

NOR2X1 _2115_ (
    .A(_1023__bF$buf0),
    .B(_823_),
    .Y(_822_)
);

MUX2X1 _3493_ (
    .A(_519_),
    .B(_521_),
    .S(_450__bF$buf0),
    .Y(_1172_)
);

NOR3X1 _3073_ (
    .A(_1070__bF$buf6),
    .B(_210_),
    .C(_207_),
    .Y(_1281_)
);

NAND2X1 _2764_ (
    .A(\u_rf_if.read_buf1 [17]),
    .B(_1783__bF$buf5),
    .Y(_1836_)
);

OR2X2 _2344_ (
    .A(_1471_),
    .B(\u_rf_if.last_req_key [10]),
    .Y(_1472_)
);

FILL FILL126450x86550 (
);

DFFPOSX1 _3969_ (
    .D(_1379_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_rf_if.stream_cnt [3])
);

MUX2X1 _3549_ (
    .A(_562_),
    .B(_564_),
    .S(_450__bF$buf1),
    .Y(_1159_)
);

AOI21X1 _3129_ (
    .A(_249_),
    .B(_248_),
    .C(_250_),
    .Y(_1265_)
);

DFFPOSX1 _4087_ (
    .D(_1445_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [10])
);

CLKBUF1 CLKBUF1_insert180 (
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 )
);

CLKBUF1 CLKBUF1_insert181 (
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 )
);

CLKBUF1 CLKBUF1_insert182 (
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 )
);

CLKBUF1 CLKBUF1_insert183 (
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 )
);

CLKBUF1 CLKBUF1_insert184 (
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 )
);

CLKBUF1 CLKBUF1_insert185 (
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 )
);

AOI21X1 _2993_ (
    .A(_153_),
    .B(_150_),
    .C(_1070__bF$buf0),
    .Y(_1304_)
);

INVX1 _2573_ (
    .A(_1688_),
    .Y(_1689_)
);

AOI21X1 _2153_ (
    .A(_790_),
    .B(\u_cpu.bufreg.i_shamt [2]),
    .C(_1002__bF$buf4),
    .Y(_789_)
);

DFFSR _3778_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1118_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(ibus_pending_rdt[27])
);

INVX1 _3358_ (
    .A(\u_cpu.bufreg.data [8]),
    .Y(_417_)
);

CLKBUF1 CLKBUF1_insert50 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert51 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert52 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert53 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert54 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

CLKBUF1 CLKBUF1_insert55 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

FILL FILL_0__3151_ (
);

NOR2X1 _2629_ (
    .A(_1731_),
    .B(_1735_),
    .Y(_1736_)
);

INVX2 _2209_ (
    .A(_740_),
    .Y(_739_)
);

AOI21X1 _2382_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.bufreg.i_sh_signed ),
    .C(_1504_),
    .Y(_1505_)
);

OAI22X1 _3587_ (
    .A(_585_),
    .B(_212__bF$buf0),
    .C(_584_),
    .D(_570__bF$buf1),
    .Y(_1142_)
);

NAND3X1 _3167_ (
    .A(\u_mem_serial.active_ibus ),
    .B(_1047_),
    .C(_278_),
    .Y(_279_)
);

FILL FILL_0__2002_ (
);

FILL FILL_0__3207_ (
);

FILL FILL_0__3380_ (
);

MUX2X1 _2858_ (
    .A(\u_rf_if.read_buf0 [11]),
    .B(\u_rf_if.read_buf0 [12]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_53_)
);

NOR2X1 _2438_ (
    .A(_1559_),
    .B(_1560_),
    .Y(_1561_)
);

MUX2X1 _2018_ (
    .A(\u_cpu.bufreg.data [15]),
    .B(\u_cpu.ctrl.o_ibus_adr [15]),
    .S(_1006__bF$buf4),
    .Y(_907_)
);

MUX2X1 _2191_ (
    .A(\u_mem_serial.shift_reg [35]),
    .B(\u_cpu.bufreg2.dhi [6]),
    .S(_994__bF$buf5),
    .Y(_755_)
);

AOI21X1 _3396_ (
    .A(_704_),
    .B(_442_),
    .C(_440_),
    .Y(_443_)
);

FILL FILL_0__2231_ (
);

OAI21X1 _1882_ (
    .A(\u_mem_serial.bit_count [5]),
    .B(_1030_),
    .C(_1050_),
    .Y(_1027_)
);

AOI21X1 _2667_ (
    .A(_1658_),
    .B(_1763_),
    .C(_1764_),
    .Y(_1387_)
);

INVX1 _2247_ (
    .A(_702_),
    .Y(_701_)
);

NAND3X1 _1938_ (
    .A(\u_mem_serial.shift_reg [4]),
    .B(_1023__bF$buf0),
    .C(_994__bF$buf0),
    .Y(_977_)
);

OAI21X1 _2896_ (
    .A(_22__bF$buf1),
    .B(_80_),
    .C(_81_),
    .Y(_82_)
);

NAND2X1 _2476_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1599_)
);

MUX2X1 _2056_ (
    .A(\u_mem_serial.shift_reg [19]),
    .B(\u_cpu.bufreg2.dlo [14]),
    .S(_994__bF$buf1),
    .Y(_874_)
);

AOI21X1 _2285_ (
    .A(_666_),
    .B(_710_),
    .C(_664_),
    .Y(_663_)
);

DFFPOSX1 _4011_ (
    .D(_1404_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_rf_if.rreg0_latched [4])
);

MUX2X1 _1976_ (
    .A(\u_mem_serial.shift_reg [9]),
    .B(\u_cpu.bufreg2.dlo [4]),
    .S(_994__bF$buf4),
    .Y(_944_)
);

FILL FILL_0__3283_ (
);

NOR2X1 _3702_ (
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .Y(_1058_)
);

AND2X2 _2094_ (
    .A(_841_),
    .B(i_rst_n_bF$buf7),
    .Y(_1431_)
);

OAI21X1 _3299_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_380_),
    .Y(_381_)
);

FILL FILL_0__2134_ (
);

DFFPOSX1 _3931_ (
    .D(_1360_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.read_buf1 [18])
);

NAND2X1 _3511_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(_966_),
    .Y(_535_)
);

FILL FILL127350x150 (
);

MUX2X1 _2799_ (
    .A(\u_rf_if.read_buf1 [27]),
    .B(\u_rf_if.read_buf1 [28]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_8_)
);

NOR2X1 _2379_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_1501_),
    .Y(_1502_)
);

DFFPOSX1 _3740_ (
    .D(_1261_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.decode.opcode [2])
);

INVX1 _3320_ (
    .A(\u_cpu.bufreg.data [27]),
    .Y(_398_)
);

OAI21X1 _2188_ (
    .A(_1002__bF$buf4),
    .B(_758_),
    .C(_760_),
    .Y(_757_)
);

INVX1 _1879_ (
    .A(_1030_),
    .Y(_1029_)
);

FILL FILL127350x32550 (
);

OAI21X1 _2820_ (
    .A(_22__bF$buf3),
    .B(_23_),
    .C(_24_),
    .Y(_25_)
);

INVX1 _2400_ (
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_1523_)
);

FILL FILL_0__3186_ (
);

FILL FILL_0__1919_ (
);

OAI22X1 _3605_ (
    .A(_594_),
    .B(_212__bF$buf4),
    .C(_593_),
    .D(_570__bF$buf3),
    .Y(_1133_)
);

FILL FILL_0__2037_ (
);

DFFPOSX1 _3834_ (
    .D(_1312_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(raddr[3])
);

OR2X2 _3414_ (
    .A(_663_),
    .B(_458_),
    .Y(_459_)
);

NAND2X1 _1900_ (
    .A(_1016_),
    .B(_1011_),
    .Y(_1010_)
);

MUX2X1 _3643_ (
    .A(_255_),
    .B(_931_),
    .S(_602__bF$buf1),
    .Y(_1103_)
);

NOR2X1 _3223_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_315_),
    .Y(_321_)
);

DFFPOSX1 _4008_ (
    .D(_1200_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_cpu.bufreg.data [6])
);

MUX2X1 _2914_ (
    .A(\u_rf_if.read_buf0 [25]),
    .B(\u_rf_if.read_buf0 [26]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_95_)
);

DFFPOSX1 _3872_ (
    .D(_1146_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

NAND2X1 _3452_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_861_),
    .Y(_491_)
);

AOI21X1 _3032_ (
    .A(_1678_),
    .B(_1682_),
    .C(_183_),
    .Y(_1295_)
);

MUX2X1 _2723_ (
    .A(\u_rf_if.read_buf1 [8]),
    .B(\u_rf_if.read_buf1 [9]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1805_)
);

AOI21X1 _2303_ (
    .A(_659__bF$buf1),
    .B(_672_),
    .C(_646_),
    .Y(_645_)
);

FILL FILL_0__3089_ (
);

DFFPOSX1 _3928_ (
    .D(_1163_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_cpu.bufreg2.dlo [3])
);

OAI21X1 _3508_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.dlo [9]),
    .C(_532_),
    .Y(_533_)
);

FILL FILL_0__1995_ (
);

INVX1 _3681_ (
    .A(\gen_int_sys_clk.clk_div [0]),
    .Y(_1080_)
);

INVX1 _3261_ (
    .A(_349_),
    .Y(_350_)
);

DFFPOSX1 _4046_ (
    .D(_1425_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [30])
);

OAI21X1 _2952_ (
    .A(raddr[1]),
    .B(_1680_),
    .C(i_rst_n_bF$buf10),
    .Y(_123_)
);

OAI21X1 _2532_ (
    .A(_1654_),
    .B(_1652_),
    .C(_1631_),
    .Y(_1655_)
);

MUX2X1 _2112_ (
    .A(\u_mem_serial.shift_reg [26]),
    .B(\u_cpu.bufreg2.dlo [21]),
    .S(_994__bF$buf0),
    .Y(_825_)
);

DFFPOSX1 _3737_ (
    .D(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\u_mem_serial.clk_sys_prev )
);

INVX1 _3317_ (
    .A(\u_cpu.bufreg.data [28]),
    .Y(_396_)
);

INVX1 _3490_ (
    .A(\u_cpu.bufreg2.dlo [12]),
    .Y(_519_)
);

NOR2X1 _3070_ (
    .A(_209_),
    .B(_736_),
    .Y(_1283_)
);

FILL FILL_0__3110_ (
);

OAI21X1 _2761_ (
    .A(_1783__bF$buf3),
    .B(_1832_),
    .C(_1833_),
    .Y(_1834_)
);

INVX1 _2341_ (
    .A(\u_rf_if.last_req_key [0]),
    .Y(_1469_)
);

DFFPOSX1 _3966_ (
    .D(_1182_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [22])
);

INVX1 _3546_ (
    .A(\u_cpu.bufreg2.dlo [23]),
    .Y(_562_)
);

INVX1 _3126_ (
    .A(\u_mem_serial.req_pending ),
    .Y(_248_)
);

DFFPOSX1 _4084_ (
    .D(_1235_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(rreg1[2])
);

NOR2X1 _2817_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1738_),
    .Y(_22_)
);

CLKBUF1 CLKBUF1_insert150 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf8 )
);

CLKBUF1 CLKBUF1_insert151 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf7 )
);

CLKBUF1 CLKBUF1_insert152 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf6 )
);

CLKBUF1 CLKBUF1_insert153 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf5 )
);

CLKBUF1 CLKBUF1_insert154 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf4 )
);

CLKBUF1 CLKBUF1_insert155 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf3 )
);

CLKBUF1 CLKBUF1_insert156 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf2 )
);

CLKBUF1 CLKBUF1_insert157 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf1 )
);

CLKBUF1 CLKBUF1_insert158 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf0 )
);

INVX1 _2990_ (
    .A(ibus_pending_rdt[23]),
    .Y(_151_)
);

OAI21X1 _2570_ (
    .A(_1686_),
    .B(_1685_),
    .C(i_rst_n_bF$buf4),
    .Y(_1687_)
);

AND2X2 _2150_ (
    .A(_792_),
    .B(i_rst_n_bF$buf7),
    .Y(_1424_)
);

DFFPOSX1 _3775_ (
    .D(_1284_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.tx_state [0])
);

MUX2X1 _3355_ (
    .A(_414_),
    .B(_415_),
    .S(_1536__bF$buf0),
    .Y(_1204_)
);

FILL FILL127350x115350 (
);

NAND2X1 _2626_ (
    .A(\u_rf_if.wen0_r ),
    .B(_1702_),
    .Y(_1733_)
);

AOI21X1 _2206_ (
    .A(_1024_),
    .B(_744_),
    .C(_742_),
    .Y(_1418_)
);

FILL FILL_0__1898_ (
);

INVX1 _3584_ (
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_584_)
);

INVX1 _3164_ (
    .A(mem_ibus_ack),
    .Y(_276_)
);

NAND2X1 _2855_ (
    .A(\u_rf_if.read_buf0 [9]),
    .B(_22__bF$buf0),
    .Y(_51_)
);

NAND3X1 _2435_ (
    .A(_1555_),
    .B(_1557_),
    .C(_1551_),
    .Y(_1558_)
);

INVX1 _2015_ (
    .A(\u_mem_serial.shift_reg [15]),
    .Y(_910_)
);

MUX2X1 _3393_ (
    .A(_441_),
    .B(_780_),
    .S(_426_),
    .Y(_1192_)
);

FILL FILL_0__3853_ (
);

FILL FILL_0__3013_ (
);

INVX1 _2664_ (
    .A(_1762_),
    .Y(_1388_)
);

NAND2X1 _2244_ (
    .A(_726_),
    .B(_721_),
    .Y(_704_)
);

DFFPOSX1 _3869_ (
    .D(_1329_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_rf_if.read_buf0 [19])
);

MUX2X1 _3449_ (
    .A(_488_),
    .B(\u_mem_serial.shift_reg [24]),
    .S(_697_),
    .Y(_489_)
);

OAI21X1 _3029_ (
    .A(\u_rf_if.issue_chunk [2]),
    .B(_178_),
    .C(_174_),
    .Y(_182_)
);

MUX2X1 _1935_ (
    .A(\u_mem_serial.shift_reg [4]),
    .B(_980_),
    .S(_1009_),
    .Y(_979_)
);

AND2X2 _2893_ (
    .A(_79_),
    .B(i_rst_n_bF$buf1),
    .Y(_1330_)
);

INVX1 _2473_ (
    .A(\u_cpu.bufreg2.dlo [0]),
    .Y(_1596_)
);

OAI21X1 _2053_ (
    .A(_882_),
    .B(_973__bF$buf0),
    .C(_877_),
    .Y(_876_)
);

NOR2X1 _3678_ (
    .A(_616_),
    .B(_615_),
    .Y(_1082_)
);

AOI22X1 _3258_ (
    .A(_1540_),
    .B(_342_),
    .C(_141_),
    .D(_347_),
    .Y(_1233_)
);

NAND2X1 _2949_ (
    .A(\u_rf_if.issue_chunk [0]),
    .B(_1680_),
    .Y(_121_)
);

OAI22X1 _2529_ (
    .A(_735_),
    .B(_739_),
    .C(_1649_),
    .D(_1651_),
    .Y(_1652_)
);

OAI21X1 _2109_ (
    .A(_833_),
    .B(_973__bF$buf4),
    .C(_828_),
    .Y(_827_)
);

AND2X2 _2282_ (
    .A(_717_),
    .B(_727_),
    .Y(_666_)
);

NAND2X1 _3487_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(_924_),
    .Y(_517_)
);

NAND2X1 _3067_ (
    .A(i_rst_n_bF$buf10),
    .B(_1618_),
    .Y(_208_)
);

OAI21X1 _1973_ (
    .A(_952_),
    .B(_973__bF$buf6),
    .C(_947_),
    .Y(_946_)
);

AND2X2 _2758_ (
    .A(_1831_),
    .B(i_rst_n_bF$buf6),
    .Y(_1363_)
);

AND2X2 _2338_ (
    .A(_1465_),
    .B(\u_rf_if.last_req_key [2]),
    .Y(_1466_)
);

NOR2X1 _2091_ (
    .A(_1023__bF$buf5),
    .B(_844_),
    .Y(_843_)
);

OAI21X1 _3296_ (
    .A(_1065_),
    .B(_373_),
    .C(_378_),
    .Y(_1226_)
);

FILL FILL_0__2971_ (
);

NAND2X1 _2987_ (
    .A(_148_),
    .B(_1692__bF$buf2),
    .Y(_149_)
);

NOR2X1 _2567_ (
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1684_)
);

NOR2X1 _2147_ (
    .A(_1023__bF$buf2),
    .B(_795_),
    .Y(_794_)
);

FILL FILL_0__3145_ (
);

NAND2X1 _2796_ (
    .A(\u_rf_if.read_buf1 [25]),
    .B(_1783__bF$buf0),
    .Y(_6_)
);

INVX1 _2376_ (
    .A(current_wdata0_next_hint),
    .Y(_1499_)
);

NAND2X1 _2185_ (
    .A(_761_),
    .B(_778_),
    .Y(_760_)
);

OAI21X1 _1876_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(_1037_),
    .C(\u_mem_serial.bit_count [3]),
    .Y(_1031_)
);

INVX1 _3602_ (
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_593_)
);

AOI22X1 _3199_ (
    .A(_301_),
    .B(_298_),
    .C(_161_),
    .D(_302_),
    .Y(_1247_)
);

DFFPOSX1 _3831_ (
    .D(_1136_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

NOR2X1 _3411_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .B(_666_),
    .Y(_456_)
);

FILL FILL_0__3048_ (
);

MUX2X1 _2699_ (
    .A(\u_rf_if.read_buf1 [2]),
    .B(\u_rf_if.read_buf1 [3]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1787_)
);

NAND2X1 _2279_ (
    .A(_670_),
    .B(_671_),
    .Y(_669_)
);

FILL FILL_0__1954_ (
);

MUX2X1 _3640_ (
    .A(_155_),
    .B(_910_),
    .S(_602__bF$buf4),
    .Y(_1106_)
);

INVX1 _3220_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_318_)
);

DFFPOSX1 _4005_ (
    .D(_1401_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.wdata0_next_phase )
);

FILL FILL_0__2072_ (
);

NAND2X1 _2911_ (
    .A(\u_rf_if.read_buf0 [23]),
    .B(_22__bF$buf0),
    .Y(_93_)
);

BUFX2 BUFX2_insert0 (
    .A(_450_),
    .Y(_450__bF$buf4)
);

BUFX2 BUFX2_insert1 (
    .A(_450_),
    .Y(_450__bF$buf3)
);

BUFX2 BUFX2_insert2 (
    .A(_450_),
    .Y(_450__bF$buf2)
);

BUFX2 BUFX2_insert3 (
    .A(_450_),
    .Y(_450__bF$buf1)
);

BUFX2 BUFX2_insert4 (
    .A(_450_),
    .Y(_450__bF$buf0)
);

BUFX2 BUFX2_insert5 (
    .A(_1536_),
    .Y(_1536__bF$buf4)
);

BUFX2 BUFX2_insert6 (
    .A(_1536_),
    .Y(_1536__bF$buf3)
);

BUFX2 BUFX2_insert7 (
    .A(_1536_),
    .Y(_1536__bF$buf2)
);

BUFX2 BUFX2_insert8 (
    .A(_1536_),
    .Y(_1536__bF$buf1)
);

BUFX2 BUFX2_insert9 (
    .A(_1536_),
    .Y(_1536__bF$buf0)
);

MUX2X1 _2088_ (
    .A(\u_mem_serial.shift_reg [23]),
    .B(\u_cpu.bufreg2.dlo [18]),
    .S(_994__bF$buf2),
    .Y(_846_)
);

NAND2X1 _2720_ (
    .A(\u_rf_if.read_buf1 [6]),
    .B(_1783__bF$buf1),
    .Y(_1803_)
);

NOR2X1 _2300_ (
    .A(_735_),
    .B(_649_),
    .Y(_648_)
);

DFFPOSX1 _3925_ (
    .D(_1357_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [21])
);

MUX2X1 _3505_ (
    .A(_528_),
    .B(_530_),
    .S(_450__bF$buf3),
    .Y(_1169_)
);

DFFPOSX1 _4043_ (
    .D(_1215_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_cpu.bufreg.data [21])
);

DFFSR _3734_ (
    .R(i_rst_n_bF$buf11),
    .S(vdd),
    .D(_1103_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(ibus_pending_rdt[12])
);

MUX2X1 _3314_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_393_),
    .S(_659__bF$buf1),
    .Y(_394_)
);

DFFPOSX1 _3963_ (
    .D(_1376_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [2])
);

NAND2X1 _3543_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_559_),
    .Y(_560_)
);

INVX1 _3123_ (
    .A(_1053_),
    .Y(_246_)
);

DFFPOSX1 _4081_ (
    .D(_1442_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [13])
);

NAND2X1 _2814_ (
    .A(\u_rf_if.read_buf1 [29]),
    .B(_1783__bF$buf6),
    .Y(_20_)
);

CLKBUF1 CLKBUF1_insert120 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf38 )
);

CLKBUF1 CLKBUF1_insert121 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf37 )
);

CLKBUF1 CLKBUF1_insert122 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf36 )
);

CLKBUF1 CLKBUF1_insert123 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf35 )
);

CLKBUF1 CLKBUF1_insert124 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf34 )
);

CLKBUF1 CLKBUF1_insert125 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf33 )
);

CLKBUF1 CLKBUF1_insert126 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf32 )
);

CLKBUF1 CLKBUF1_insert127 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf31 )
);

CLKBUF1 CLKBUF1_insert128 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf30 )
);

CLKBUF1 CLKBUF1_insert129 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf29 )
);

DFFSR _3772_ (
    .R(i_rst_n_bF$buf11),
    .S(vdd),
    .D(_1115_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(ibus_pending_rdt[24])
);

INVX1 _3352_ (
    .A(\u_cpu.bufreg.data [11]),
    .Y(_414_)
);

AND2X2 _2623_ (
    .A(_1730_),
    .B(i_rst_n_bF$buf10),
    .Y(_1397_)
);

OAI21X1 _2203_ (
    .A(\u_mem_serial.req_pending ),
    .B(_1057_),
    .C(_745_),
    .Y(_744_)
);

DFFPOSX1 _3828_ (
    .D(_1080_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\gen_int_sys_clk.clk_div [0])
);

NAND2X1 _3408_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(_805_),
    .Y(_454_)
);

OAI22X1 _3581_ (
    .A(_582_),
    .B(_212__bF$buf3),
    .C(_581_),
    .D(_570__bF$buf2),
    .Y(_1145_)
);

INVX1 _3161_ (
    .A(_1855_),
    .Y(_275_)
);

FILL FILL_0_CLKBUF1_insert182 (
);

OAI21X1 _2852_ (
    .A(_22__bF$buf2),
    .B(_47_),
    .C(_48_),
    .Y(_49_)
);

NAND2X1 _2432_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(_1554_),
    .Y(_1555_)
);

OAI21X1 _2012_ (
    .A(_915_),
    .B(_913_),
    .C(_973__bF$buf3),
    .Y(_912_)
);

MUX2X1 _3637_ (
    .A(_167_),
    .B(_889_),
    .S(_602__bF$buf0),
    .Y(_1109_)
);

INVX4 _3217_ (
    .A(_314_),
    .Y(_315_)
);

AOI21X1 _3390_ (
    .A(_432_),
    .B(_437_),
    .C(_704_),
    .Y(_439_)
);

BUFX2 BUFX2_insert170 (
    .A(_973_),
    .Y(_973__bF$buf2)
);

BUFX2 BUFX2_insert171 (
    .A(_973_),
    .Y(_973__bF$buf1)
);

BUFX2 BUFX2_insert172 (
    .A(_973_),
    .Y(_973__bF$buf0)
);

BUFX2 BUFX2_insert173 (
    .A(_22_),
    .Y(_22__bF$buf6)
);

BUFX2 BUFX2_insert174 (
    .A(_22_),
    .Y(_22__bF$buf5)
);

BUFX2 BUFX2_insert175 (
    .A(_22_),
    .Y(_22__bF$buf4)
);

BUFX2 BUFX2_insert176 (
    .A(_22_),
    .Y(_22__bF$buf3)
);

BUFX2 BUFX2_insert177 (
    .A(_22_),
    .Y(_22__bF$buf2)
);

BUFX2 BUFX2_insert178 (
    .A(_22_),
    .Y(_22__bF$buf1)
);

BUFX2 BUFX2_insert179 (
    .A(_22_),
    .Y(_22__bF$buf0)
);

OAI21X1 _2908_ (
    .A(_22__bF$buf1),
    .B(_89_),
    .C(_90_),
    .Y(_91_)
);

INVX1 _2661_ (
    .A(_1761_),
    .Y(_1390_)
);

NAND2X1 _2241_ (
    .A(\u_cpu.bufreg2.dhi [6]),
    .B(_708_),
    .Y(_707_)
);

NOR2X1 _3866_ (
    .A(\u_cpu.state.cnt_r [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .Y(_1067_)
);

NAND2X1 _3446_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_452_),
    .Y(_486_)
);

NAND2X1 _3026_ (
    .A(_177_),
    .B(_179_),
    .Y(_180_)
);

FILL FILL_0__2701_ (
);

MUX2X1 _1932_ (
    .A(\u_cpu.bufreg.data [4]),
    .B(\u_cpu.ctrl.o_ibus_adr [4]),
    .S(_1006__bF$buf1),
    .Y(_982_)
);

FILL FILL127050x122550 (
);

OAI21X1 _2717_ (
    .A(_1783__bF$buf1),
    .B(_1799_),
    .C(_1800_),
    .Y(_1801_)
);

MUX2X1 _2890_ (
    .A(\u_rf_if.read_buf0 [19]),
    .B(\u_rf_if.read_buf0 [20]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_77_)
);

INVX1 _2470_ (
    .A(\u_cpu.bufreg2.dlo [16]),
    .Y(_1593_)
);

MUX2X1 _2050_ (
    .A(\u_cpu.bufreg.data [19]),
    .B(\u_cpu.ctrl.o_ibus_adr [19]),
    .S(_1006__bF$buf2),
    .Y(_879_)
);

NAND2X1 _3675_ (
    .A(\gen_int_sys_clk.clk_div [2]),
    .B(_613_),
    .Y(_614_)
);

OAI21X1 _3255_ (
    .A(rreg1[2]),
    .B(_340_),
    .C(_659__bF$buf0),
    .Y(_346_)
);

FILL FILL_0__2930_ (
);

FILL FILL_0_BUFX2_insert71 (
);

FILL FILL_0_BUFX2_insert78 (
);

OAI21X1 _2946_ (
    .A(_1731_),
    .B(_1735_),
    .C(_1699_),
    .Y(_119_)
);

INVX1 _2526_ (
    .A(_1641_),
    .Y(_1649_)
);

MUX2X1 _2106_ (
    .A(\u_cpu.bufreg.data [26]),
    .B(\u_cpu.ctrl.o_ibus_adr [26]),
    .S(_1006__bF$buf1),
    .Y(_830_)
);

OAI21X1 _3484_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [15]),
    .C(_514_),
    .Y(_515_)
);

NAND2X1 _3064_ (
    .A(\u_rf_if.last_req_key [9]),
    .B(_1488_),
    .Y(_206_)
);

MUX2X1 _1970_ (
    .A(\u_cpu.bufreg.data [9]),
    .B(\u_cpu.ctrl.o_ibus_adr [9]),
    .S(_1006__bF$buf4),
    .Y(_949_)
);

MUX2X1 _2755_ (
    .A(\u_rf_if.read_buf1 [16]),
    .B(\u_rf_if.read_buf1 [17]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_1829_)
);

AOI21X1 _2335_ (
    .A(\u_rf_if.last_req_key [0]),
    .B(_1256_),
    .C(_1462_),
    .Y(_1463_)
);

AOI22X1 _3293_ (
    .A(_372_),
    .B(_298_),
    .C(_375_),
    .D(_376_),
    .Y(_1227_)
);

DFFPOSX1 _4078_ (
    .D(_1232_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3])
);

OAI21X1 _2984_ (
    .A(_673__bF$buf0),
    .B(_674__bF$buf2),
    .C(\u_rf_if.rreg1_latched [2]),
    .Y(_146_)
);

NAND2X1 _2564_ (
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1680_),
    .Y(_1681_)
);

MUX2X1 _2144_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .S(_994__bF$buf3),
    .Y(_797_)
);

DFFPOSX1 _3769_ (
    .D(_1281_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [3])
);

MUX2X1 _3349_ (
    .A(_411_),
    .B(_412_),
    .S(_1536__bF$buf0),
    .Y(_1207_)
);

BUFX2 BUFX2_insert80 (
    .A(_1070_),
    .Y(_1070__bF$buf2)
);

BUFX2 BUFX2_insert81 (
    .A(_1070_),
    .Y(_1070__bF$buf1)
);

BUFX2 BUFX2_insert82 (
    .A(_1070_),
    .Y(_1070__bF$buf0)
);

BUFX2 BUFX2_insert83 (
    .A(_1023_),
    .Y(_1023__bF$buf5)
);

BUFX2 BUFX2_insert84 (
    .A(_1023_),
    .Y(_1023__bF$buf4)
);

BUFX2 BUFX2_insert85 (
    .A(_1023_),
    .Y(_1023__bF$buf3)
);

BUFX2 BUFX2_insert86 (
    .A(_1023_),
    .Y(_1023__bF$buf2)
);

BUFX2 BUFX2_insert87 (
    .A(_1023_),
    .Y(_1023__bF$buf1)
);

BUFX2 BUFX2_insert88 (
    .A(_1023_),
    .Y(_1023__bF$buf0)
);

BUFX2 BUFX2_insert89 (
    .A(_674_),
    .Y(_674__bF$buf3)
);

OAI21X1 _2793_ (
    .A(_1783__bF$buf0),
    .B(_2_),
    .C(_3_),
    .Y(_4_)
);

NOR2X1 _2373_ (
    .A(i_clk_fast_bF$buf1),
    .B(_1497_),
    .Y(_1857_)
);

DFFPOSX1 _3998_ (
    .D(_1397_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_rf_if.read_buf0 [30])
);

INVX1 _3578_ (
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_581_)
);

NOR2X1 _3158_ (
    .A(_751_),
    .B(_1032_),
    .Y(_273_)
);

FILL FILL_0__2833_ (
);

AND2X2 _2849_ (
    .A(_46_),
    .B(i_rst_n_bF$buf0),
    .Y(_1341_)
);

NOR2X1 _2429_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1552_)
);

NOR2X1 _2009_ (
    .A(_1002__bF$buf0),
    .B(_916_),
    .Y(_915_)
);

OAI21X1 _2182_ (
    .A(_770_),
    .B(_973__bF$buf1),
    .C(_763_),
    .Y(_762_)
);

OR2X2 _3387_ (
    .A(_434_),
    .B(\u_cpu.bufreg.c_r ),
    .Y(_436_)
);

INVX1 _1873_ (
    .A(\u_mem_serial.bit_count [3]),
    .Y(_1034_)
);

OAI21X1 _2658_ (
    .A(\u_rf_if.stream_cnt [4]),
    .B(_1757_),
    .C(i_rst_n_bF$buf6),
    .Y(_1760_)
);

NAND2X1 _2238_ (
    .A(_713_),
    .B(_711_),
    .Y(_710_)
);

AOI22X1 _3196_ (
    .A(_299_),
    .B(_298_),
    .C(_165_),
    .D(_300_),
    .Y(_1248_)
);

OAI21X1 _1929_ (
    .A(_1023__bF$buf0),
    .B(_986_),
    .C(_985_),
    .Y(_984_)
);

NAND2X1 _2887_ (
    .A(\u_rf_if.read_buf0 [17]),
    .B(_22__bF$buf6),
    .Y(_75_)
);

NAND2X1 _2467_ (
    .A(_725_),
    .B(_1062_),
    .Y(_1590_)
);

INVX1 _2047_ (
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_882_)
);

NAND2X1 _2696_ (
    .A(\u_rf_if.read_buf1 [0]),
    .B(_1783__bF$buf1),
    .Y(_1785_)
);

AND2X2 _2276_ (
    .A(_689_),
    .B(\u_rf_if.rcnt [0]),
    .Y(_672_)
);

FILL FILL_0__2736_ (
);

DFFPOSX1 _4002_ (
    .D(_1197_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.bufreg.data [3])
);

INVX1 _1967_ (
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_952_)
);

FILL FILL127050x86550 (
);

OAI21X1 _2085_ (
    .A(_854_),
    .B(_973__bF$buf0),
    .C(_849_),
    .Y(_848_)
);

FILL FILL_0__2965_ (
);

FILL FILL_0_BUFX2_insert161 (
);

FILL FILL_0_BUFX2_insert168 (
);

DFFPOSX1 _3922_ (
    .D(_1160_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_cpu.bufreg2.dlo [0])
);

INVX1 _3502_ (
    .A(\u_cpu.bufreg2.dlo [9]),
    .Y(_528_)
);

OAI21X1 _3099_ (
    .A(_703_),
    .B(_720_),
    .C(i_rst_n_bF$buf5),
    .Y(_227_)
);

DFFPOSX1 _4040_ (
    .D(_1422_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [33])
);

DFFPOSX1 _3731_ (
    .D(_1252_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(\u_cpu.decode.co_ebreak )
);

OAI21X1 _3311_ (
    .A(_342_),
    .B(_390_),
    .C(_391_),
    .Y(_1224_)
);

NOR2X1 _2599_ (
    .A(\u_rf_if.issue_chunk [3]),
    .B(\u_rf_if.issue_chunk [2]),
    .Y(_1709_)
);

NAND2X1 _2179_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_766_),
    .Y(_765_)
);

DFFPOSX1 _3960_ (
    .D(_1179_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_cpu.bufreg2.dlo [19])
);

OAI21X1 _3540_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [2]),
    .C(_557_),
    .Y(_558_)
);

OAI21X1 _3120_ (
    .A(_227_),
    .B(_1692__bF$buf3),
    .C(_212__bF$buf1),
    .Y(_244_)
);

FILL FILL_0__2639_ (
);

OAI21X1 _2811_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_1742_),
    .C(_17_),
    .Y(_18_)
);

FILL FILL_0__2868_ (
);

INVX1 _2620_ (
    .A(_1727_),
    .Y(_1728_)
);

OAI21X1 _2200_ (
    .A(_1056_),
    .B(\u_mem_serial.clk_sys_prev ),
    .C(_748_),
    .Y(_747_)
);

FILL FILL127050x18150 (
);

DFFPOSX1 _3825_ (
    .D(_1135_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

NAND2X1 _3405_ (
    .A(_708_),
    .B(_450__bF$buf4),
    .Y(_451_)
);

FILL FILL_0__1892_ (
);

FILL FILL_0_CLKBUF1_insert154 (
);

MUX2X1 _3634_ (
    .A(_143_),
    .B(_868_),
    .S(_602__bF$buf4),
    .Y(_1112_)
);

AOI22X1 _3214_ (
    .A(_311_),
    .B(_298_),
    .C(_141_),
    .D(_312_),
    .Y(_1242_)
);

AND2X2 _2905_ (
    .A(_88_),
    .B(i_rst_n_bF$buf1),
    .Y(_1327_)
);

DFFPOSX1 _3863_ (
    .D(_1326_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_rf_if.read_buf0 [22])
);

AOI21X1 _3443_ (
    .A(_666_),
    .B(_482_),
    .C(_483_),
    .Y(_484_)
);

OAI21X1 _3023_ (
    .A(_176_),
    .B(_170_),
    .C(_122_),
    .Y(_177_)
);

AND2X2 _2714_ (
    .A(_1798_),
    .B(i_rst_n_bF$buf8),
    .Y(_1374_)
);

DFFPOSX1 _3919_ (
    .D(_1354_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [24])
);

NOR2X1 _3672_ (
    .A(_1057_),
    .B(_1054_),
    .Y(_1053_)
);

OAI21X1 _3252_ (
    .A(rreg1[3]),
    .B(_340_),
    .C(_659__bF$buf0),
    .Y(_344_)
);

DFFPOSX1 _4037_ (
    .D(_1212_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [18])
);

FILL FILL_0__3712_ (
);

FILL FILL_0_BUFX2_insert44 (
);

AOI21X1 _2943_ (
    .A(_1734_),
    .B(\u_rf_if.o_waddr [1]),
    .C(_1698_),
    .Y(_117_)
);

AOI21X1 _2523_ (
    .A(_1638_),
    .B(_1623_),
    .C(_1645_),
    .Y(_1646_)
);

INVX1 _2103_ (
    .A(\u_mem_serial.shift_reg [26]),
    .Y(_833_)
);

DFFSR _3728_ (
    .R(i_rst_n_bF$buf8),
    .S(vdd),
    .D(_1102_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(ibus_pending_rdt[11])
);

OAI21X1 _3308_ (
    .A(_318_),
    .B(_315_),
    .C(_389_),
    .Y(_1225_)
);

MUX2X1 _3481_ (
    .A(_510_),
    .B(_512_),
    .S(_450__bF$buf1),
    .Y(_1175_)
);

NAND3X1 _3061_ (
    .A(_736_),
    .B(_1718_),
    .C(_1666_),
    .Y(_204_)
);

NAND2X1 _2752_ (
    .A(\u_rf_if.read_buf1 [14]),
    .B(_1783__bF$buf4),
    .Y(_1827_)
);

NAND2X1 _2332_ (
    .A(\u_rf_if.req_seen ),
    .B(_1257_),
    .Y(_1412_)
);

DFFPOSX1 _3957_ (
    .D(_1373_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [5])
);

INVX1 _3537_ (
    .A(\u_cpu.bufreg2.dlo [1]),
    .Y(_555_)
);

OAI21X1 _3117_ (
    .A(_703_),
    .B(_720_),
    .C(\u_cpu.state.init_done ),
    .Y(_242_)
);

OAI21X1 _3290_ (
    .A(\u_cpu.branch_op ),
    .B(_1692__bF$buf1),
    .C(_373_),
    .Y(_374_)
);

DFFPOSX1 _4075_ (
    .D(_1439_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [16])
);

AOI21X1 _2808_ (
    .A(_15_),
    .B(_14_),
    .C(_1070__bF$buf2),
    .Y(_1351_)
);

MUX2X1 _2981_ (
    .A(_143_),
    .B(_868_),
    .S(ibus_pending_ack_bF$buf4),
    .Y(_144_)
);

FILL FILL127350x122550 (
);

NOR2X1 _2561_ (
    .A(_1676_),
    .B(_1677_),
    .Y(_1678_)
);

OAI21X1 _2141_ (
    .A(_805_),
    .B(_973__bF$buf4),
    .C(_800_),
    .Y(_799_)
);

DFFSR _3766_ (
    .R(i_rst_n_bF$buf7),
    .S(vdd),
    .D(_1112_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(ibus_pending_rdt[21])
);

INVX1 _3346_ (
    .A(\u_cpu.bufreg.data [14]),
    .Y(_411_)
);

INVX1 _2617_ (
    .A(_1690_),
    .Y(_1398_)
);

BUFX2 BUFX2_insert56 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf6)
);

BUFX2 BUFX2_insert57 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf5)
);

BUFX2 BUFX2_insert58 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf4)
);

BUFX2 BUFX2_insert59 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf3)
);

AND2X2 _2790_ (
    .A(_1_),
    .B(i_rst_n_bF$buf6),
    .Y(_1355_)
);

NAND2X1 _2370_ (
    .A(i_rst_n_bF$buf10),
    .B(\u_rf_if.tx_state [4]),
    .Y(_1496_)
);

DFFPOSX1 _3995_ (
    .D(_1194_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.bufreg.data [29])
);

OAI22X1 _3575_ (
    .A(_579_),
    .B(_212__bF$buf3),
    .C(_578_),
    .D(_570__bF$buf2),
    .Y(_1148_)
);

OAI21X1 _3155_ (
    .A(\u_mem_serial.shift_reg [2]),
    .B(ibus_pending_ack_bF$buf4),
    .C(_270_),
    .Y(_271_)
);

FILL FILL_0__3615_ (
);

MUX2X1 _2846_ (
    .A(\u_rf_if.read_buf0 [8]),
    .B(\u_rf_if.read_buf0 [9]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_44_)
);

NAND3X1 _2426_ (
    .A(_1538_),
    .B(_1548_),
    .C(_1545_),
    .Y(_1549_)
);

AND2X2 _2006_ (
    .A(_918_),
    .B(i_rst_n_bF$buf2),
    .Y(_1442_)
);

OAI21X1 _3384_ (
    .A(_1063_),
    .B(\u_cpu.decode.opcode [0]),
    .C(_1561_),
    .Y(_433_)
);

OAI21X1 _1870_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(_1037_),
    .C(_1052_),
    .Y(_1036_)
);

NOR2X1 _2655_ (
    .A(_1752_),
    .B(_1756_),
    .Y(_1757_)
);

OAI21X1 _2235_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_714_),
    .C(\u_cpu.bufreg2.dhi [5]),
    .Y(_713_)
);

AOI22X1 _3193_ (
    .A(_293_),
    .B(_298_),
    .C(_169_),
    .D(_297_),
    .Y(_1249_)
);

NOR2X1 _1926_ (
    .A(_1070__bF$buf2),
    .B(_987_),
    .Y(_1453_)
);

OAI21X1 _2884_ (
    .A(_22__bF$buf6),
    .B(_71_),
    .C(_72_),
    .Y(_73_)
);

INVX1 _2464_ (
    .A(_1586_),
    .Y(_1587_)
);

OAI21X1 _2044_ (
    .A(_887_),
    .B(_885_),
    .C(_973__bF$buf2),
    .Y(_884_)
);

NOR2X1 _3669_ (
    .A(_1070__bF$buf4),
    .B(_1051_),
    .Y(_1050_)
);

AND2X2 _3249_ (
    .A(_659__bF$buf0),
    .B(_340_),
    .Y(_342_)
);

FILL FILL126450x46950 (
);

NOR2X1 _2693_ (
    .A(_1782_),
    .B(_1780_),
    .Y(_1379_)
);

INVX1 _2273_ (
    .A(_676_),
    .Y(_675_)
);

DFFSR _3898_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1097_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(ibus_pending_rdt[6])
);

INVX1 _3478_ (
    .A(\u_cpu.bufreg2.dlo [15]),
    .Y(_510_)
);

NAND3X1 _3058_ (
    .A(_736_),
    .B(_1716_),
    .C(_1666_),
    .Y(_202_)
);

FILL FILL_0__3518_ (
);

OAI21X1 _1964_ (
    .A(_957_),
    .B(_955_),
    .C(_973__bF$buf2),
    .Y(_954_)
);

FILL FILL_0__3691_ (
);

OAI21X1 _2749_ (
    .A(_1783__bF$buf4),
    .B(_1823_),
    .C(_1824_),
    .Y(_1825_)
);

OR2X2 _2329_ (
    .A(_735_),
    .B(raddr[0]),
    .Y(_1090_)
);

MUX2X1 _2082_ (
    .A(\u_cpu.bufreg.data [23]),
    .B(\u_cpu.ctrl.o_ibus_adr [23]),
    .S(_1006__bF$buf0),
    .Y(_851_)
);

OAI21X1 _3287_ (
    .A(_659__bF$buf4),
    .B(_371_),
    .C(_368_),
    .Y(_1228_)
);

FILL FILL_0__2542_ (
);

AOI21X1 _2978_ (
    .A(_141_),
    .B(_138_),
    .C(_1070__bF$buf0),
    .Y(_1307_)
);

AOI21X1 _2558_ (
    .A(_1675_),
    .B(_689_),
    .C(_1070__bF$buf5),
    .Y(_1407_)
);

MUX2X1 _2138_ (
    .A(\u_cpu.bufreg.data [30]),
    .B(\u_cpu.ctrl.o_ibus_adr [30]),
    .S(_1006__bF$buf3),
    .Y(_802_)
);

AOI21X1 _3096_ (
    .A(_1546_),
    .B(_224_),
    .C(_225_),
    .Y(_1273_)
);

FILL FILL_0__2771_ (
);

MUX2X1 _2787_ (
    .A(\u_rf_if.read_buf1 [24]),
    .B(\u_rf_if.read_buf1 [25]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1853_)
);

OAI21X1 _2367_ (
    .A(ren),
    .B(_1471_),
    .C(i_rst_n_bF$buf4),
    .Y(_1494_)
);

OAI21X1 _2596_ (
    .A(raddr[8]),
    .B(_1680_),
    .C(i_rst_n_bF$buf4),
    .Y(_1707_)
);

INVX2 _2176_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_768_)
);

NOR2X1 _1867_ (
    .A(_1070__bF$buf3),
    .B(_1039_),
    .Y(_1460_)
);

FILL FILL_0__3594_ (
);

FILL FILL_0__2445_ (
);

DFFPOSX1 _3822_ (
    .D(_1079_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\gen_int_sys_clk.clk_sys_r )
);

INVX1 _3402_ (
    .A(_447_),
    .Y(_448_)
);

FILL FILL_0__2674_ (
);

FILL FILL_0_CLKBUF1_insert120 (
);

FILL FILL_0_CLKBUF1_insert127 (
);

MUX2X1 _3631_ (
    .A(_1745_),
    .B(_847_),
    .S(_602__bF$buf1),
    .Y(_1115_)
);

AOI22X1 _3211_ (
    .A(_309_),
    .B(_298_),
    .C(_257_),
    .D(_310_),
    .Y(_1243_)
);

BUFX2 BUFX2_insert110 (
    .A(_1002_),
    .Y(_1002__bF$buf4)
);

BUFX2 BUFX2_insert111 (
    .A(_1002_),
    .Y(_1002__bF$buf3)
);

BUFX2 BUFX2_insert112 (
    .A(_1002_),
    .Y(_1002__bF$buf2)
);

BUFX2 BUFX2_insert113 (
    .A(_1002_),
    .Y(_1002__bF$buf1)
);

BUFX2 BUFX2_insert114 (
    .A(_1002_),
    .Y(_1002__bF$buf0)
);

MUX2X1 _2902_ (
    .A(\u_rf_if.read_buf0 [22]),
    .B(\u_rf_if.read_buf0 [23]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_86_)
);

INVX1 _2499_ (
    .A(\u_rf_if.tx_state [1]),
    .Y(_1622_)
);

INVX1 _2079_ (
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_854_)
);

DFFPOSX1 _3860_ (
    .D(_1325_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_rf_if.read_buf0 [23])
);

NOR2X1 _3440_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_479_),
    .Y(_481_)
);

OAI21X1 _3020_ (
    .A(\u_rf_if.issue_chunk [0]),
    .B(_173_),
    .C(_174_),
    .Y(_175_)
);

MUX2X1 _2711_ (
    .A(\u_rf_if.read_buf1 [5]),
    .B(\u_rf_if.read_buf1 [6]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1796_)
);

DFFPOSX1 _3916_ (
    .D(_1157_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

FILL FILL_0__2348_ (
);

DFFPOSX1 _4034_ (
    .D(_1419_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [36])
);

INVX1 _1999_ (
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_924_)
);

FILL FILL_0_BUFX2_insert16 (
);

AND2X2 _2940_ (
    .A(_115_),
    .B(i_rst_n_bF$buf10),
    .Y(_1319_)
);

OAI21X1 _2520_ (
    .A(_1076_),
    .B(_1642_),
    .C(_1630_),
    .Y(_1643_)
);

OAI21X1 _2100_ (
    .A(_838_),
    .B(_836_),
    .C(_973__bF$buf5),
    .Y(_835_)
);

DFFPOSX1 _3725_ (
    .D(_1458_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [3])
);

OAI21X1 _3305_ (
    .A(_673__bF$buf2),
    .B(_674__bF$buf0),
    .C(_386_),
    .Y(_387_)
);

FILL FILL_0__2577_ (
);

DFFPOSX1 _3954_ (
    .D(_1176_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [16])
);

NAND2X1 _3534_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_552_),
    .Y(_553_)
);

NOR2X1 _3114_ (
    .A(_239_),
    .B(_695_),
    .Y(_240_)
);

DFFPOSX1 _4072_ (
    .D(_1229_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0])
);

OAI21X1 _2805_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_11_),
    .C(_12_),
    .Y(_13_)
);

DFFPOSX1 _3763_ (
    .D(_1278_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [37])
);

MUX2X1 _3343_ (
    .A(_408_),
    .B(_409_),
    .S(_1536__bF$buf4),
    .Y(_1210_)
);

AOI22X1 _2614_ (
    .A(\u_rf_if.read_buf1 [31]),
    .B(\u_rf_if.stream_active_bF$buf1 ),
    .C(_1714_),
    .D(_1723_),
    .Y(_1724_)
);

DFFPOSX1 _3819_ (
    .D(_1306_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_rf_if.rreg1_latched [1])
);

BUFX2 BUFX2_insert20 (
    .A(_570_),
    .Y(_570__bF$buf3)
);

BUFX2 BUFX2_insert21 (
    .A(_570_),
    .Y(_570__bF$buf2)
);

BUFX2 BUFX2_insert22 (
    .A(_570_),
    .Y(_570__bF$buf1)
);

BUFX2 BUFX2_insert23 (
    .A(_570_),
    .Y(_570__bF$buf0)
);

BUFX2 BUFX2_insert24 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf11)
);

BUFX2 BUFX2_insert25 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf10)
);

BUFX2 BUFX2_insert26 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf9)
);

BUFX2 BUFX2_insert27 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf8)
);

BUFX2 BUFX2_insert28 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf7)
);

BUFX2 BUFX2_insert29 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf6)
);

DFFPOSX1 _3992_ (
    .D(_1394_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_rf_if.read_buf1 [31])
);

INVX1 _3572_ (
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_578_)
);

OAI21X1 _3152_ (
    .A(_673__bF$buf2),
    .B(_674__bF$buf0),
    .C(\u_cpu.decode.opcode [0]),
    .Y(_268_)
);

NAND2X1 _2843_ (
    .A(\u_rf_if.read_buf0 [6]),
    .B(_22__bF$buf2),
    .Y(_42_)
);

INVX1 _2423_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1546_)
);

NOR2X1 _2003_ (
    .A(_1023__bF$buf4),
    .B(_921_),
    .Y(_920_)
);

MUX2X1 _3628_ (
    .A(_326_),
    .B(_826_),
    .S(_602__bF$buf3),
    .Y(_1118_)
);

AOI22X1 _3208_ (
    .A(_307_),
    .B(_298_),
    .C(_254_),
    .D(_308_),
    .Y(_1244_)
);

AOI21X1 _3381_ (
    .A(_380_),
    .B(_429_),
    .C(_1063_),
    .Y(_430_)
);

FILL FILL_0__3421_ (
);

INVX1 _2652_ (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_1754_)
);

INVX1 _2232_ (
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_716_)
);

INVX1 _3857_ (
    .A(_1066_),
    .Y(_1065_)
);

OAI22X1 _3437_ (
    .A(_716_),
    .B(_451_),
    .C(_477_),
    .D(_478_),
    .Y(_1185_)
);

NOR2X1 _3017_ (
    .A(_1687_),
    .B(_172_),
    .Y(_1299_)
);

NAND2X1 _3190_ (
    .A(_1066_),
    .B(_295_),
    .Y(_296_)
);

NAND3X1 _1923_ (
    .A(\u_mem_serial.shift_reg [1]),
    .B(_1023__bF$buf3),
    .C(_994__bF$buf3),
    .Y(_989_)
);

FILL FILL_0__3650_ (
);

NAND2X1 _2708_ (
    .A(\u_rf_if.read_buf1 [3]),
    .B(_1783__bF$buf2),
    .Y(_1794_)
);

AND2X2 _2881_ (
    .A(_70_),
    .B(i_rst_n_bF$buf0),
    .Y(_1333_)
);

NAND3X1 _2461_ (
    .A(_1502_),
    .B(_1581_),
    .C(_1583_),
    .Y(_1584_)
);

NOR2X1 _2041_ (
    .A(_1002__bF$buf2),
    .B(_888_),
    .Y(_887_)
);

INVX1 _3666_ (
    .A(\u_mem_serial.state [1]),
    .Y(_1047_)
);

INVX1 _3246_ (
    .A(_679_),
    .Y(_339_)
);

FILL FILL_0__2501_ (
);

FILL FILL126750x150 (
);

MUX2X1 _2937_ (
    .A(\u_rf_if.read_buf0 [30]),
    .B(\u_rf_if.read_buf0 [31]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_113_)
);

INVX1 _2517_ (
    .A(_1465_),
    .Y(_1640_)
);

AOI22X1 _2690_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1749_),
    .C(_1758_),
    .D(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1780_)
);

OAI21X1 _2270_ (
    .A(_680_),
    .B(_679_),
    .C(_1062_),
    .Y(_678_)
);

DFFPOSX1 _3895_ (
    .D(_1342_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_rf_if.read_buf0 [6])
);

NAND2X1 _3475_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(_903_),
    .Y(_508_)
);

NAND3X1 _3055_ (
    .A(_736_),
    .B(_1715_),
    .C(_1666_),
    .Y(_200_)
);

NOR2X1 _1961_ (
    .A(_1002__bF$buf1),
    .B(_958_),
    .Y(_957_)
);

AND2X2 _2746_ (
    .A(_1822_),
    .B(i_rst_n_bF$buf3),
    .Y(_1366_)
);

NAND2X1 _2326_ (
    .A(\u_rf_if.last_req_key [1]),
    .B(_1086_),
    .Y(_1087_)
);

INVX1 _3284_ (
    .A(ibus_pending_rdt[31]),
    .Y(_369_)
);

FILL FILL_0_BUFX2_insert106 (
);

DFFPOSX1 _4069_ (
    .D(_1436_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [19])
);

FILL FILL_0__3324_ (
);

INVX1 _2975_ (
    .A(ibus_pending_rdt[20]),
    .Y(_139_)
);

INVX1 _2555_ (
    .A(_1672_),
    .Y(_1673_)
);

INVX1 _2135_ (
    .A(\u_mem_serial.shift_reg [30]),
    .Y(_805_)
);

NOR2X1 _3093_ (
    .A(_222_),
    .B(_1547_),
    .Y(_223_)
);

FILL FILL_0__3553_ (
);

NAND2X1 _2784_ (
    .A(\u_rf_if.read_buf1 [22]),
    .B(_1783__bF$buf3),
    .Y(_1851_)
);

OR2X2 _2364_ (
    .A(_1491_),
    .B(\u_rf_if.tx_state [1]),
    .Y(_1492_)
);

DFFPOSX1 _3989_ (
    .D(_1190_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.bufreg.data [31])
);

OAI22X1 _3569_ (
    .A(_576_),
    .B(_212__bF$buf2),
    .C(_575_),
    .D(_570__bF$buf4),
    .Y(_1151_)
);

NAND2X1 _3149_ (
    .A(ibus_pending_ack_bF$buf3),
    .B(_265_),
    .Y(_266_)
);

FILL FILL_0__2404_ (
);

AOI21X1 _2593_ (
    .A(_1704_),
    .B(_1513_),
    .C(_1515_),
    .Y(_1705_)
);

AND2X2 _2173_ (
    .A(_773_),
    .B(_771_),
    .Y(_1422_)
);

DFFSR _3798_ (
    .R(i_rst_n_bF$buf11),
    .S(vdd),
    .D(_1073_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(ibus_pending_ack)
);

NOR2X1 _3378_ (
    .A(\u_cpu.bufreg.data [31]),
    .B(_424_),
    .Y(_428_)
);

BUFX2 _1864_ (
    .A(_1854_),
    .Y(o_mem_sck)
);

INVX1 _2649_ (
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_1751_)
);

INVX1 _2229_ (
    .A(_720_),
    .Y(_719_)
);

INVX1 _3187_ (
    .A(rreg0[3]),
    .Y(_293_)
);

MUX2X1 _2878_ (
    .A(\u_rf_if.read_buf0 [16]),
    .B(\u_rf_if.read_buf0 [17]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_68_)
);

NAND3X1 _2458_ (
    .A(_1576_),
    .B(_1580_),
    .C(_1579_),
    .Y(_1581_)
);

AND2X2 _2038_ (
    .A(_890_),
    .B(i_rst_n_bF$buf8),
    .Y(_1438_)
);

FILL FILL_0__3456_ (
);

NAND2X1 _2687_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_1756_),
    .Y(_1778_)
);

NAND3X1 _2267_ (
    .A(_684_),
    .B(_683_),
    .C(_682_),
    .Y(_681_)
);

FILL FILL127050x93750 (
);

FILL FILL_0__2307_ (
);

FILL FILL_0__2480_ (
);

AND2X2 _1958_ (
    .A(_960_),
    .B(i_rst_n_bF$buf2),
    .Y(_1448_)
);

INVX1 _2496_ (
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_1619_)
);

OAI21X1 _2076_ (
    .A(_859_),
    .B(_857_),
    .C(_973__bF$buf5),
    .Y(_856_)
);

DFFPOSX1 _3913_ (
    .D(_1351_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(\u_rf_if.read_buf1 [27])
);

DFFPOSX1 _4031_ (
    .D(_1209_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_cpu.bufreg.data [15])
);

OAI21X1 _1996_ (
    .A(_929_),
    .B(_927_),
    .C(_973__bF$buf6),
    .Y(_926_)
);

DFFPOSX1 _3722_ (
    .D(_1248_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(rreg0[2])
);

NAND2X1 _3302_ (
    .A(\u_cpu.branch_op ),
    .B(_725_),
    .Y(_384_)
);

FILL FILL_0__3359_ (
);

DFFPOSX1 _3951_ (
    .D(_1370_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_rf_if.read_buf1 [8])
);

MUX2X1 _3531_ (
    .A(_547_),
    .B(_550_),
    .S(_450__bF$buf2),
    .Y(_1163_)
);

AND2X2 _3111_ (
    .A(_236_),
    .B(_1500_),
    .Y(_237_)
);

FILL FILL_0__2383_ (
);

AND2X2 _2802_ (
    .A(_10_),
    .B(i_rst_n_bF$buf3),
    .Y(_1352_)
);

FILL FILL_0__3588_ (
);

INVX1 _2399_ (
    .A(_1521_),
    .Y(_1522_)
);

DFFSR _3760_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1109_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(ibus_pending_rdt[18])
);

INVX1 _3340_ (
    .A(\u_cpu.bufreg.data [17]),
    .Y(_408_)
);

NAND3X1 _2611_ (
    .A(\u_rf_if.shift_rx [0]),
    .B(_1560_),
    .C(_1720_),
    .Y(_1721_)
);

DFFPOSX1 _3816_ (
    .D(_1133_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

NOR2X1 _1899_ (
    .A(_1012_),
    .B(_1015_),
    .Y(_1011_)
);

OAI21X1 _2840_ (
    .A(_22__bF$buf4),
    .B(_38_),
    .C(_39_),
    .Y(_40_)
);

NAND2X1 _2420_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_1524_),
    .Y(_1543_)
);

MUX2X1 _2000_ (
    .A(\u_mem_serial.shift_reg [12]),
    .B(\u_cpu.bufreg2.dlo [7]),
    .S(_994__bF$buf2),
    .Y(_923_)
);

MUX2X1 _3625_ (
    .A(_290_),
    .B(_805_),
    .S(_602__bF$buf4),
    .Y(_1121_)
);

AOI22X1 _3205_ (
    .A(_305_),
    .B(_298_),
    .C(_286_),
    .D(_306_),
    .Y(_1245_)
);

DFFPOSX1 _3854_ (
    .D(_1322_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(\u_rf_if.read_buf0 [26])
);

OAI21X1 _3434_ (
    .A(_475_),
    .B(_708_),
    .C(_697_),
    .Y(_476_)
);

NAND2X1 _3014_ (
    .A(\u_rf_if.issue_sel ),
    .B(_1680_),
    .Y(_170_)
);

MUX2X1 _1920_ (
    .A(\u_mem_serial.shift_reg [1]),
    .B(_992_),
    .S(_1009_),
    .Y(_991_)
);

FILL FILL_0__2286_ (
);

OAI21X1 _2705_ (
    .A(_1783__bF$buf0),
    .B(_1790_),
    .C(_1791_),
    .Y(_1792_)
);

INVX1 _3663_ (
    .A(\u_mem_serial.bit_count [0]),
    .Y(_1044_)
);

NOR2X1 _3243_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_315_),
    .Y(_337_)
);

DFFPOSX1 _4028_ (
    .D(_1416_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.launch_pending )
);

OAI21X1 _2934_ (
    .A(_106_),
    .B(_1560_),
    .C(_1727_),
    .Y(_111_)
);

NOR2X1 _2514_ (
    .A(_648_),
    .B(_645_),
    .Y(_1637_)
);

DFFPOSX1 _3719_ (
    .D(_1455_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [0])
);

DFFPOSX1 _3892_ (
    .D(_1151_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

NAND2X1 _3472_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(_896_),
    .Y(_506_)
);

NAND3X1 _3052_ (
    .A(_736_),
    .B(_197_),
    .C(_1666_),
    .Y(_198_)
);

MUX2X1 _2743_ (
    .A(\u_rf_if.read_buf1 [13]),
    .B(\u_rf_if.read_buf1 [14]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1820_)
);

NOR2X1 _2323_ (
    .A(_1077_),
    .B(_1083_),
    .Y(_1084_)
);

DFFPOSX1 _3948_ (
    .D(_1173_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_cpu.bufreg2.dlo [13])
);

INVX1 _3528_ (
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_548_)
);

OR2X2 _3108_ (
    .A(_233_),
    .B(_232_),
    .Y(_234_)
);

OAI21X1 _3281_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_349_),
    .C(_659__bF$buf5),
    .Y(_367_)
);

DFFPOSX1 _4066_ (
    .D(_1226_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

OAI21X1 _2972_ (
    .A(raddr[7]),
    .B(_1680_),
    .C(i_rst_n_bF$buf4),
    .Y(_137_)
);

INVX1 _2552_ (
    .A(\u_rf_if.rcnt [0]),
    .Y(_1670_)
);

OAI21X1 _2132_ (
    .A(_810_),
    .B(_808_),
    .C(_973__bF$buf4),
    .Y(_807_)
);

DFFPOSX1 _3757_ (
    .D(_1274_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.state.cnt_r [0])
);

MUX2X1 _3337_ (
    .A(_405_),
    .B(_406_),
    .S(_1536__bF$buf3),
    .Y(_1213_)
);

AOI21X1 _3090_ (
    .A(_701_),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_rf_if.ready_pulse ),
    .Y(_221_)
);

FILL FILL_0__2189_ (
);

INVX1 _2608_ (
    .A(_654_),
    .Y(_1718_)
);

OAI21X1 _2781_ (
    .A(_1783__bF$buf3),
    .B(_1847_),
    .C(_1848_),
    .Y(_1849_)
);

INVX1 _2361_ (
    .A(\u_rf_if.tx_state [4]),
    .Y(_1489_)
);

DFFPOSX1 _3986_ (
    .D(_1391_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.stream_cnt [4])
);

INVX1 _3566_ (
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_575_)
);

NAND2X1 _3146_ (
    .A(_263_),
    .B(_1692__bF$buf2),
    .Y(_264_)
);

AND2X2 _2837_ (
    .A(_37_),
    .B(i_rst_n_bF$buf10),
    .Y(_1344_)
);

INVX1 _2417_ (
    .A(rreg1[0]),
    .Y(_1540_)
);

INVX1 _2590_ (
    .A(_671_),
    .Y(_1702_)
);

OAI21X1 _2170_ (
    .A(_774_),
    .B(_777_),
    .C(_973__bF$buf1),
    .Y(_773_)
);

DFFPOSX1 _3795_ (
    .D(_1294_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_if.last_req_key [0])
);

MUX2X1 _3375_ (
    .A(_780_),
    .B(_766_),
    .S(_426_),
    .Y(_1195_)
);

FILL FILL_0__2210_ (
);

BUFX2 _1861_ (
    .A(_1857_),
    .Y(o_rf_sck)
);

AOI21X1 _2646_ (
    .A(_689_),
    .B(_1748_),
    .C(_1070__bF$buf5),
    .Y(_1392_)
);

OAI21X1 _2226_ (
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .C(_723_),
    .Y(_722_)
);

NAND2X1 _3184_ (
    .A(ibus_pending_ack_bF$buf0),
    .B(_290_),
    .Y(_291_)
);

NAND2X1 _1917_ (
    .A(\u_mem_serial.active_we ),
    .B(_1012_),
    .Y(_994_)
);

NAND2X1 _2875_ (
    .A(\u_rf_if.read_buf0 [14]),
    .B(_22__bF$buf5),
    .Y(_66_)
);

INVX1 _2455_ (
    .A(_1577_),
    .Y(_1578_)
);

NOR2X1 _2035_ (
    .A(_1023__bF$buf1),
    .B(_893_),
    .Y(_892_)
);

OAI21X1 _2684_ (
    .A(\u_rf_if.stream_cnt [1]),
    .B(\u_rf_if.stream_cnt [0]),
    .C(i_rst_n_bF$buf8),
    .Y(_1776_)
);

INVX1 _2264_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .Y(_684_)
);

DFFPOSX1 _3889_ (
    .D(_1339_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(\u_rf_if.read_buf0 [9])
);

OAI21X1 _3469_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [19]),
    .C(_503_),
    .Y(_504_)
);

AOI21X1 _3049_ (
    .A(_195_),
    .B(_194_),
    .C(_1070__bF$buf6),
    .Y(_1290_)
);

NOR2X1 _1955_ (
    .A(_1023__bF$buf5),
    .B(_963_),
    .Y(_962_)
);

FILL FILL_0__3262_ (
);

AOI21X1 _2493_ (
    .A(_1589_),
    .B(_1503_),
    .C(_1615_),
    .Y(_1616_)
);

NOR2X1 _2073_ (
    .A(_1002__bF$buf0),
    .B(_860_),
    .Y(_859_)
);

OAI22X1 _3698_ (
    .A(_1499_),
    .B(_1692__bF$buf4),
    .C(_632_),
    .D(_264_),
    .Y(_1078_)
);

INVX1 _3278_ (
    .A(ibus_pending_rdt[7]),
    .Y(_364_)
);

FILL FILL_0__2113_ (
);

FILL FILL_0__3318_ (
);

FILL FILL_0__3491_ (
);

OAI21X1 _2969_ (
    .A(raddr[6]),
    .B(_1680_),
    .C(i_rst_n_bF$buf4),
    .Y(_135_)
);

NAND2X1 _2549_ (
    .A(_1047_),
    .B(_749_),
    .Y(_1668_)
);

NOR2X1 _2129_ (
    .A(_1002__bF$buf3),
    .B(_811_),
    .Y(_810_)
);

DFFSR _3910_ (
    .R(i_rst_n_bF$buf8),
    .S(vdd),
    .D(_1100_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(ibus_pending_rdt[9])
);

NOR2X1 _3087_ (
    .A(_1070__bF$buf4),
    .B(_220_),
    .Y(_1277_)
);

FILL FILL_0__2342_ (
);

NOR2X1 _1993_ (
    .A(_1002__bF$buf2),
    .B(_930_),
    .Y(_929_)
);

AND2X2 _2778_ (
    .A(_1846_),
    .B(i_rst_n_bF$buf1),
    .Y(_1358_)
);

NOR2X1 _2358_ (
    .A(_1477_),
    .B(_1485_),
    .Y(_1486_)
);

NAND3X1 _2587_ (
    .A(\u_rf_if.write_wait [1]),
    .B(_1697_),
    .C(_1699_),
    .Y(_1700_)
);

INVX1 _2167_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_776_)
);

FILL FILL_0__3165_ (
);

INVX1 _2396_ (
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_1519_)
);

FILL FILL_0__2016_ (
);

FILL FILL_0__3394_ (
);

FILL FILL127050x46950 (
);

DFFPOSX1 _3813_ (
    .D(_1303_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.rreg0_latched [0])
);

FILL FILL_0__2245_ (
);

NAND3X1 _1896_ (
    .A(_1038_),
    .B(\u_mem_serial.bit_count [0]),
    .C(_1020_),
    .Y(_1014_)
);

OAI21X1 _3622_ (
    .A(_600_),
    .B(_1066_),
    .C(_601_),
    .Y(_1123_)
);

AOI22X1 _3202_ (
    .A(_303_),
    .B(_298_),
    .C(_157_),
    .D(_304_),
    .Y(_1246_)
);

DFFPOSX1 _3851_ (
    .D(_1141_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

MUX2X1 _3431_ (
    .A(_473_),
    .B(_776_),
    .S(_451_),
    .Y(_1186_)
);

MUX2X1 _3011_ (
    .A(_167_),
    .B(_889_),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_168_)
);

AND2X2 _2702_ (
    .A(_1789_),
    .B(i_rst_n_bF$buf8),
    .Y(_1377_)
);

FILL FILL_0__3068_ (
);

DFFPOSX1 _3907_ (
    .D(_1348_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_rf_if.read_buf0 [0])
);

INVX1 _2299_ (
    .A(raddr[4]),
    .Y(_649_)
);

INVX1 _3660_ (
    .A(_1042_),
    .Y(_1041_)
);

INVX1 _3240_ (
    .A(ibus_pending_rdt[25]),
    .Y(_334_)
);

DFFPOSX1 _4025_ (
    .D(_1413_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.wen0_r )
);

FILL FILL_0__2092_ (
);

OAI21X1 _2931_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1738_),
    .C(_108_),
    .Y(_109_)
);

OAI21X1 _2511_ (
    .A(_1627_),
    .B(_1621_),
    .C(_1633_),
    .Y(_1634_)
);

FILL FILL_0__3297_ (
);

DFFPOSX1 _3716_ (
    .D(_1245_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

FILL FILL_0__2148_ (
);

NAND2X1 _2740_ (
    .A(\u_rf_if.read_buf1 [11]),
    .B(_1783__bF$buf6),
    .Y(_1818_)
);

OAI21X1 _2320_ (
    .A(ren),
    .B(\u_rf_if.o_waddr [3]),
    .C(_1074_),
    .Y(_1076_)
);

DFFPOSX1 _3945_ (
    .D(_1367_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf1 [11])
);

OAI21X1 _3525_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [5]),
    .C(_545_),
    .Y(_546_)
);

OAI21X1 _3105_ (
    .A(\u_cpu.alu.cmp_r ),
    .B(_1585_),
    .C(_230_),
    .Y(_231_)
);

DFFPOSX1 _4063_ (
    .D(_1433_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [22])
);

DFFPOSX1 _3754_ (
    .D(_1271_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

INVX1 _3334_ (
    .A(\u_cpu.bufreg.data [20]),
    .Y(_405_)
);

INVX1 _2605_ (
    .A(_1651_),
    .Y(_1715_)
);

DFFPOSX1 _3983_ (
    .D(_1389_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_rf_if.wdata0_next [0])
);

OAI22X1 _3563_ (
    .A(_573_),
    .B(_212__bF$buf2),
    .C(_572_),
    .D(_570__bF$buf4),
    .Y(_1154_)
);

INVX1 _3143_ (
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_261_)
);

FILL FILL127050x150 (
);

MUX2X1 _2834_ (
    .A(\u_rf_if.read_buf0 [5]),
    .B(\u_rf_if.read_buf0 [6]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_35_)
);

NAND3X1 _2414_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(_1518_),
    .C(_1536__bF$buf1),
    .Y(_1537_)
);

OAI21X1 _3619_ (
    .A(_1066_),
    .B(_1578_),
    .C(_599_),
    .Y(_1124_)
);

FILL FILL127350x54150 (
);

DFFPOSX1 _3792_ (
    .D(_1124_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.alu.add_cy_r )
);

INVX2 _3372_ (
    .A(_1536__bF$buf1),
    .Y(_424_)
);

NAND2X1 _2643_ (
    .A(_1746_),
    .B(_1692__bF$buf4),
    .Y(_1747_)
);

INVX2 _2223_ (
    .A(\u_cpu.decode.opcode [0]),
    .Y(_725_)
);

DFFPOSX1 _3848_ (
    .D(_1319_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_rf_if.read_buf0 [29])
);

NOR2X1 _3428_ (
    .A(_712_),
    .B(_470_),
    .Y(_471_)
);

AOI21X1 _3008_ (
    .A(_165_),
    .B(_162_),
    .C(_1070__bF$buf0),
    .Y(_1301_)
);

AOI21X1 _3181_ (
    .A(_288_),
    .B(_287_),
    .C(_277_),
    .Y(_1251_)
);

MUX2X1 _1914_ (
    .A(\u_mem_serial.shift_reg [0]),
    .B(_997_),
    .S(_1009_),
    .Y(_996_)
);

FILL FILL_0__3221_ (
);

OAI21X1 _2872_ (
    .A(_22__bF$buf5),
    .B(_62_),
    .C(_63_),
    .Y(_64_)
);

NAND2X1 _2452_ (
    .A(_1574_),
    .B(_1572_),
    .Y(_1575_)
);

MUX2X1 _2032_ (
    .A(\u_mem_serial.shift_reg [16]),
    .B(\u_cpu.bufreg2.dlo [11]),
    .S(_994__bF$buf4),
    .Y(_895_)
);

MUX2X1 _3657_ (
    .A(_604_),
    .B(_559_),
    .S(_602__bF$buf4),
    .Y(_1091_)
);

MUX2X1 _3237_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_331_),
    .S(_659__bF$buf4),
    .Y(_332_)
);

INVX1 _2928_ (
    .A(\u_rf_if.read_buf0 [29]),
    .Y(_106_)
);

INVX1 _2508_ (
    .A(_1630_),
    .Y(_1631_)
);

AOI21X1 _2681_ (
    .A(_1772_),
    .B(\u_rf_if.stream_cnt [0]),
    .C(_1773_),
    .Y(_1382_)
);

INVX1 _2261_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_687_)
);

FILL FILL127350x3750 (
);

DFFSR _3886_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1094_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(ibus_pending_rdt[3])
);

MUX2X1 _3466_ (
    .A(_499_),
    .B(_501_),
    .S(_450__bF$buf2),
    .Y(_1179_)
);

AOI21X1 _3046_ (
    .A(_192_),
    .B(_193_),
    .C(_1070__bF$buf6),
    .Y(_1291_)
);

MUX2X1 _1952_ (
    .A(\u_mem_serial.shift_reg [6]),
    .B(\u_cpu.bufreg2.dlo [1]),
    .S(_994__bF$buf1),
    .Y(_965_)
);

OAI21X1 _2737_ (
    .A(_1783__bF$buf6),
    .B(_1814_),
    .C(_1815_),
    .Y(_1816_)
);

NOR2X1 _2317_ (
    .A(ren),
    .B(_682_),
    .Y(_606_)
);

NOR2X1 _2490_ (
    .A(_1612_),
    .B(_1611_),
    .Y(_1613_)
);

AND2X2 _2070_ (
    .A(_862_),
    .B(i_rst_n_bF$buf7),
    .Y(_1434_)
);

NAND3X1 _3695_ (
    .A(_629_),
    .B(_267_),
    .C(_282_),
    .Y(_630_)
);

NAND3X1 _3275_ (
    .A(_683_),
    .B(_350_),
    .C(_659__bF$buf5),
    .Y(_362_)
);

OAI21X1 _2966_ (
    .A(_1685_),
    .B(_1686_),
    .C(_132_),
    .Y(_133_)
);

AND2X2 _2546_ (
    .A(_1487_),
    .B(_732_),
    .Y(_1666_)
);

AND2X2 _2126_ (
    .A(_813_),
    .B(i_rst_n_bF$buf7),
    .Y(_1427_)
);

MUX2X1 _3084_ (
    .A(\u_mem_serial.shift_reg [37]),
    .B(_218_),
    .S(_1009_),
    .Y(_219_)
);

FILL FILL_0__3124_ (
);

AND2X2 _1990_ (
    .A(_932_),
    .B(i_rst_n_bF$buf8),
    .Y(_1444_)
);

MUX2X1 _2775_ (
    .A(\u_rf_if.read_buf1 [21]),
    .B(\u_rf_if.read_buf1 [22]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_1844_)
);

NAND2X1 _2355_ (
    .A(_606_),
    .B(_671_),
    .Y(_1483_)
);

DFFPOSX1 _4098_ (
    .D(_1242_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

INVX1 _2584_ (
    .A(\u_rf_if.write_wait [0]),
    .Y(_1697_)
);

OAI21X1 _2164_ (
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.bufreg.data [0]),
    .C(_780_),
    .Y(_779_)
);

DFFPOSX1 _3789_ (
    .D(_1291_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_if.last_req_key [3])
);

MUX2X1 _3369_ (
    .A(_421_),
    .B(_422_),
    .S(_1536__bF$buf2),
    .Y(_1197_)
);

AOI21X1 _2393_ (
    .A(_1507_),
    .B(_1515_),
    .C(_1513_),
    .Y(_1516_)
);

INVX1 _3598_ (
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_591_)
);

OAI21X1 _3178_ (
    .A(_1523_),
    .B(_1692__bF$buf0),
    .C(_141_),
    .Y(_1252_)
);

AND2X2 _2869_ (
    .A(_61_),
    .B(i_rst_n_bF$buf1),
    .Y(_1336_)
);

NAND2X1 _2449_ (
    .A(\u_cpu.alu.add_cy_r ),
    .B(_1561_),
    .Y(_1572_)
);

OAI21X1 _2029_ (
    .A(_903_),
    .B(_973__bF$buf0),
    .C(_898_),
    .Y(_897_)
);

INVX1 _3810_ (
    .A(\u_cpu.state.ibus_cyc ),
    .Y(_1069_)
);

FILL FILL_0__2909_ (
);

FILL FILL_0__3027_ (
);

NOR2X1 _1893_ (
    .A(\u_mem_serial.bit_count [0]),
    .B(_1038_),
    .Y(_1017_)
);

INVX1 _2678_ (
    .A(_1771_),
    .Y(_1383_)
);

OAI21X1 _2258_ (
    .A(_691_),
    .B(_695_),
    .C(_697_),
    .Y(_690_)
);

FILL FILL_0__1933_ (
);

FILL FILL_0__2051_ (
);

OAI21X1 _1949_ (
    .A(_974_),
    .B(_973__bF$buf3),
    .C(_968_),
    .Y(_967_)
);

NAND3X1 _2487_ (
    .A(\u_cpu.state.cnt_r [2]),
    .B(_1554_),
    .C(_1609_),
    .Y(_1610_)
);

NOR2X1 _2067_ (
    .A(_1023__bF$buf5),
    .B(_865_),
    .Y(_864_)
);

DFFPOSX1 _3904_ (
    .D(_1154_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

NAND3X1 _2296_ (
    .A(_656_),
    .B(_668_),
    .C(_653_),
    .Y(_652_)
);

DFFPOSX1 _4022_ (
    .D(_1205_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [11])
);

NOR2X1 _1987_ (
    .A(_1023__bF$buf4),
    .B(_935_),
    .Y(_934_)
);

DFFPOSX1 _3713_ (
    .D(_1452_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [3])
);

FILL FILL_0__2985_ (
);

DFFPOSX1 _3942_ (
    .D(_1170_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.bufreg2.dlo [10])
);

MUX2X1 _3522_ (
    .A(_540_),
    .B(_543_),
    .S(_450__bF$buf3),
    .Y(_1165_)
);

INVX1 _3102_ (
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_228_)
);

DFFPOSX1 _4060_ (
    .D(_1223_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

DFFSR _3751_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1108_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(ibus_pending_rdt[17])
);

MUX2X1 _3331_ (
    .A(_402_),
    .B(_403_),
    .S(_1536__bF$buf3),
    .Y(_1216_)
);

AND2X2 _2602_ (
    .A(_1710_),
    .B(_1711_),
    .Y(_1712_)
);

DFFPOSX1 _3807_ (
    .D(_1300_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_rf_if.rreg0_latched [3])
);

NOR2X1 _2199_ (
    .A(\u_mem_serial.state [0]),
    .B(_1047_),
    .Y(_748_)
);

DFFPOSX1 _3980_ (
    .D(_1187_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(\u_cpu.bufreg2.dhi [4])
);

INVX1 _3560_ (
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_572_)
);

NAND2X1 _3140_ (
    .A(ibus_pending_ack_bF$buf5),
    .B(_258_),
    .Y(_259_)
);

NAND2X1 _2831_ (
    .A(\u_rf_if.read_buf0 [3]),
    .B(_22__bF$buf4),
    .Y(_33_)
);

AOI21X1 _2411_ (
    .A(\u_cpu.state.init_done ),
    .B(_1063_),
    .C(_1065_),
    .Y(_1534_)
);

INVX1 _3616_ (
    .A(_1607_),
    .Y(_598_)
);

FILL FILL_0__2888_ (
);

OAI21X1 _2640_ (
    .A(_673__bF$buf0),
    .B(_674__bF$buf2),
    .C(\u_rf_if.rreg1_latched [4]),
    .Y(_1744_)
);

INVX1 _2220_ (
    .A(rf_write_drain_busy),
    .Y(_728_)
);

NAND3X1 _3845_ (
    .A(i_rst_n_bF$buf5),
    .B(_1063_),
    .C(_1062_),
    .Y(_1061_)
);

NAND2X1 _3425_ (
    .A(_716_),
    .B(_715_),
    .Y(_468_)
);

INVX1 _3005_ (
    .A(ibus_pending_rdt[17]),
    .Y(_163_)
);

NOR2X1 _1911_ (
    .A(_1000_),
    .B(_1002__bF$buf4),
    .Y(_999_)
);

FILL FILL_0__1968_ (
);

INVX1 _3654_ (
    .A(ibus_pending_rdt[1]),
    .Y(_603_)
);

AOI21X1 _3234_ (
    .A(_315_),
    .B(_328_),
    .C(_329_),
    .Y(_1239_)
);

DFFPOSX1 _4019_ (
    .D(_1204_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [10])
);

OAI21X1 _2925_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1738_),
    .C(_103_),
    .Y(_104_)
);

INVX1 _2505_ (
    .A(_738_),
    .Y(_1628_)
);

DFFPOSX1 _3883_ (
    .D(_1336_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.read_buf0 [12])
);

INVX1 _3463_ (
    .A(\u_cpu.bufreg2.dlo [19]),
    .Y(_499_)
);

INVX1 _3043_ (
    .A(_1076_),
    .Y(_191_)
);

AND2X2 _2734_ (
    .A(_1813_),
    .B(i_rst_n_bF$buf3),
    .Y(_1369_)
);

NAND3X1 _2314_ (
    .A(\u_rf_if.last_req_key [4]),
    .B(_611_),
    .C(_610_),
    .Y(_609_)
);

DFFPOSX1 _3939_ (
    .D(_1364_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(\u_rf_if.read_buf1 [14])
);

INVX1 _3519_ (
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_541_)
);

NAND2X1 _3692_ (
    .A(\u_mem_serial.shift_reg [1]),
    .B(\u_mem_serial.shift_reg [0]),
    .Y(_627_)
);

AOI21X1 _3272_ (
    .A(_351_),
    .B(_683_),
    .C(_359_),
    .Y(_1231_)
);

DFFPOSX1 _4057_ (
    .D(_1430_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [25])
);

INVX1 _2963_ (
    .A(\u_rf_if.rreg1_latched [1]),
    .Y(_130_)
);

INVX1 _2543_ (
    .A(_736_),
    .Y(_1664_)
);

NOR2X1 _2123_ (
    .A(_1023__bF$buf3),
    .B(_816_),
    .Y(_815_)
);

DFFPOSX1 _3748_ (
    .D(_1267_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.state.ibus_cyc )
);

INVX1 _3328_ (
    .A(\u_cpu.bufreg.data [23]),
    .Y(_402_)
);

AND2X2 _3081_ (
    .A(_216_),
    .B(i_rst_n_bF$buf11),
    .Y(_1279_)
);

NAND2X1 _2772_ (
    .A(\u_rf_if.read_buf1 [19]),
    .B(_1783__bF$buf5),
    .Y(_1842_)
);

AOI21X1 _2352_ (
    .A(_659__bF$buf1),
    .B(_672_),
    .C(_1479_),
    .Y(_1480_)
);

DFFPOSX1 _3977_ (
    .D(_1384_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_rf_if.rcnt [0])
);

OAI22X1 _3557_ (
    .A(_568_),
    .B(_212__bF$buf4),
    .C(_569_),
    .D(_570__bF$buf0),
    .Y(_1157_)
);

NAND2X1 _3137_ (
    .A(_256_),
    .B(_1692__bF$buf2),
    .Y(_257_)
);

FILL FILL_0__2812_ (
);

DFFPOSX1 _4095_ (
    .D(_1449_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [6])
);

OAI21X1 _2828_ (
    .A(_22__bF$buf4),
    .B(_29_),
    .C(_30_),
    .Y(_31_)
);

NAND2X1 _2408_ (
    .A(_1519_),
    .B(_1529_),
    .Y(_1531_)
);

AOI21X1 _2581_ (
    .A(_1695_),
    .B(_1691_),
    .C(_1070__bF$buf0),
    .Y(_1404_)
);

OAI21X1 _2161_ (
    .A(_791_),
    .B(_973__bF$buf1),
    .C(_782_),
    .Y(_781_)
);

DFFPOSX1 _3786_ (
    .D(_1122_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.mem_if.signbit )
);

INVX1 _3366_ (
    .A(\u_cpu.bufreg.data [4]),
    .Y(_421_)
);

INVX2 _2637_ (
    .A(_1714_),
    .Y(_1742_)
);

INVX1 _2217_ (
    .A(raddr[5]),
    .Y(_731_)
);

AOI21X1 _2390_ (
    .A(_1506_),
    .B(_1499_),
    .C(_1512_),
    .Y(_1513_)
);

OAI22X1 _3595_ (
    .A(_589_),
    .B(_212__bF$buf3),
    .C(_588_),
    .D(_570__bF$buf2),
    .Y(_1138_)
);

OAI21X1 _3175_ (
    .A(\u_mem_serial.shift_reg [14]),
    .B(ibus_pending_ack_bF$buf0),
    .C(_284_),
    .Y(_285_)
);

INVX8 _1908_ (
    .A(_1023__bF$buf1),
    .Y(_1002_)
);

MUX2X1 _2866_ (
    .A(\u_rf_if.read_buf0 [13]),
    .B(\u_rf_if.read_buf0 [14]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_59_)
);

NAND2X1 _2446_ (
    .A(_1568_),
    .B(_1566_),
    .Y(_1569_)
);

MUX2X1 _2026_ (
    .A(\u_cpu.bufreg.data [16]),
    .B(\u_cpu.ctrl.o_ibus_adr [16]),
    .S(_1006__bF$buf4),
    .Y(_900_)
);

NOR2X1 _1890_ (
    .A(\u_mem_serial.bit_count [3]),
    .B(\u_mem_serial.bit_count [2]),
    .Y(_1020_)
);

OAI21X1 _2675_ (
    .A(_1670_),
    .B(_1671_),
    .C(_1508_),
    .Y(_1769_)
);

NOR2X1 _2255_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_694_),
    .Y(_693_)
);

FILL FILL_0__2715_ (
);

MUX2X1 _1946_ (
    .A(\u_cpu.bufreg.data [6]),
    .B(\u_cpu.ctrl.o_ibus_adr [6]),
    .S(_1006__bF$buf4),
    .Y(_970_)
);

NOR2X1 _2484_ (
    .A(_1008_),
    .B(_1606_),
    .Y(_1607_)
);

MUX2X1 _2064_ (
    .A(\u_mem_serial.shift_reg [20]),
    .B(\u_cpu.bufreg2.dlo [15]),
    .S(_994__bF$buf1),
    .Y(_867_)
);

INVX1 _3689_ (
    .A(_292_),
    .Y(_624_)
);

MUX2X1 _3269_ (
    .A(_356_),
    .B(_952_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_357_)
);

FILL FILL_0__2944_ (
);

DFFPOSX1 _3901_ (
    .D(_1345_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf0 [3])
);

NOR2X1 _2293_ (
    .A(ren),
    .B(_687_),
    .Y(_655_)
);

INVX1 _3498_ (
    .A(\u_cpu.bufreg2.dlo [10]),
    .Y(_525_)
);

OAI21X1 _3078_ (
    .A(\u_cpu.ctrl.i_jump ),
    .B(_1613_),
    .C(_214_),
    .Y(_215_)
);

MUX2X1 _1984_ (
    .A(\u_mem_serial.shift_reg [10]),
    .B(\u_cpu.bufreg2.dlo [5]),
    .S(_994__bF$buf4),
    .Y(_937_)
);

OAI21X1 _2769_ (
    .A(_1783__bF$buf5),
    .B(_1838_),
    .C(_1839_),
    .Y(_1840_)
);

OAI21X1 _2349_ (
    .A(\u_rf_if.last_req_key [7]),
    .B(_605_),
    .C(_1476_),
    .Y(_1477_)
);

NOR2X1 _3710_ (
    .A(\gen_int_sys_clk.clk_div [3]),
    .B(_615_),
    .Y(_639_)
);

AOI21X1 _2998_ (
    .A(_157_),
    .B(_154_),
    .C(_1070__bF$buf0),
    .Y(_1303_)
);

INVX1 _2578_ (
    .A(ibus_pending_rdt[19]),
    .Y(_1693_)
);

INVX1 _2158_ (
    .A(_785_),
    .Y(_784_)
);

FILL FILL_0__2618_ (
);

FILL FILL_0__2791_ (
);

NOR2X1 _2387_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_1510_)
);

FILL FILL_0__2847_ (
);

DFFPOSX1 _3804_ (
    .D(_1130_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

NAND2X1 _2196_ (
    .A(_1025_),
    .B(_1021_),
    .Y(_751_)
);

FILL FILL_0__1871_ (
);

NOR2X1 _1887_ (
    .A(\u_mem_serial.state [1]),
    .B(_1024_),
    .Y(_1023_)
);

OAI22X1 _3613_ (
    .A(_597_),
    .B(_212__bF$buf1),
    .C(_596_),
    .D(_570__bF$buf3),
    .Y(_1128_)
);

DFFPOSX1 _3842_ (
    .D(_1316_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_rf_if.o_waddr [2])
);

OAI21X1 _3422_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(_465_),
    .C(_461_),
    .Y(_466_)
);

NAND2X1 _3002_ (
    .A(_160_),
    .B(_1692__bF$buf4),
    .Y(_161_)
);

MUX2X1 _3651_ (
    .A(_262_),
    .B(_261_),
    .S(_602__bF$buf0),
    .Y(_1095_)
);

MUX2X1 _3231_ (
    .A(_326_),
    .B(_826_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_327_)
);

DFFPOSX1 _4016_ (
    .D(_1258_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [6])
);

INVX1 _2922_ (
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_101_)
);

AOI21X1 _2502_ (
    .A(_1516_),
    .B(\u_rf_if.wdata0_r [0]),
    .C(\u_rf_if.tx_state [1]),
    .Y(_1625_)
);

OAI21X1 _3707_ (
    .A(_1070__bF$buf4),
    .B(_1069_),
    .C(_1060_),
    .Y(_1059_)
);

NOR2X1 _2099_ (
    .A(_1023__bF$buf3),
    .B(_837_),
    .Y(_836_)
);

DFFPOSX1 _3880_ (
    .D(_1148_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

NAND2X1 _3460_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_875_),
    .Y(_497_)
);

NAND3X1 _3040_ (
    .A(_736_),
    .B(_1640_),
    .C(_1666_),
    .Y(_189_)
);

MUX2X1 _2731_ (
    .A(\u_rf_if.read_buf1 [10]),
    .B(\u_rf_if.read_buf1 [11]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1811_)
);

NAND2X1 _2311_ (
    .A(_644_),
    .B(_633_),
    .Y(_612_)
);

DFFPOSX1 _3936_ (
    .D(_1167_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_cpu.bufreg2.dlo [7])
);

OAI21X1 _3516_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.dlo [7]),
    .C(_538_),
    .Y(_539_)
);

DFFPOSX1 _4054_ (
    .D(_1220_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_cpu.bufreg.data [26])
);

OAI21X1 _2960_ (
    .A(raddr[4]),
    .B(_1680_),
    .C(i_rst_n_bF$buf4),
    .Y(_128_)
);

OR2X2 _2540_ (
    .A(_1660_),
    .B(_1661_),
    .Y(_1662_)
);

MUX2X1 _2120_ (
    .A(\u_mem_serial.shift_reg [27]),
    .B(\u_cpu.bufreg2.dlo [22]),
    .S(_994__bF$buf0),
    .Y(_818_)
);

DFFPOSX1 _3745_ (
    .D(_1265_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\u_mem_serial.req_pending )
);

MUX2X1 _3325_ (
    .A(_399_),
    .B(_400_),
    .S(_1536__bF$buf2),
    .Y(_1219_)
);

DFFPOSX1 _3974_ (
    .D(_1186_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(\u_cpu.bufreg2.dhi [3])
);

INVX1 _3554_ (
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_568_)
);

OAI21X1 _3134_ (
    .A(_694_),
    .B(_1692__bF$buf3),
    .C(_254_),
    .Y(_1264_)
);

FILL FILL127350x61350 (
);

FILL FILL127350x28950 (
);

DFFPOSX1 _4092_ (
    .D(_1239_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

AND2X2 _2825_ (
    .A(_28_),
    .B(i_rst_n_bF$buf10),
    .Y(_1347_)
);

OAI21X1 _2405_ (
    .A(_1523_),
    .B(_1525_),
    .C(_1527_),
    .Y(_1528_)
);

DFFPOSX1 _3783_ (
    .D(_1288_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.last_req_key [6])
);

MUX2X1 _3363_ (
    .A(_418_),
    .B(_419_),
    .S(_1536__bF$buf4),
    .Y(_1200_)
);

NOR2X1 _2634_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_1070__bF$buf3),
    .Y(_1740_)
);

INVX1 _2214_ (
    .A(\u_rf_if.wen0_r ),
    .Y(_734_)
);

DFFPOSX1 _3839_ (
    .D(_1138_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

NOR2X1 _3419_ (
    .A(_768_),
    .B(_712_),
    .Y(_463_)
);

INVX1 _3592_ (
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_588_)
);

MUX2X1 _3172_ (
    .A(_1063_),
    .B(_282_),
    .S(_659__bF$buf4),
    .Y(_1254_)
);

INVX1 _1905_ (
    .A(_1006__bF$buf3),
    .Y(_1005_)
);

NAND2X1 _2863_ (
    .A(\u_rf_if.read_buf0 [11]),
    .B(_22__bF$buf0),
    .Y(_57_)
);

NAND2X1 _2443_ (
    .A(_1561_),
    .B(_1565_),
    .Y(_1566_)
);

INVX1 _2023_ (
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_903_)
);

MUX2X1 _3648_ (
    .A(_364_),
    .B(_966_),
    .S(_602__bF$buf3),
    .Y(_1098_)
);

NOR2X1 _3228_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_315_),
    .Y(_325_)
);

NAND2X1 _2919_ (
    .A(\u_rf_if.read_buf0 [25]),
    .B(_22__bF$buf0),
    .Y(_99_)
);

NOR2X1 _2672_ (
    .A(_1698_),
    .B(_1692__bF$buf0),
    .Y(_1767_)
);

INVX1 _2252_ (
    .A(_704_),
    .Y(_696_)
);

DFFPOSX1 _3877_ (
    .D(_1333_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(\u_rf_if.read_buf0 [15])
);

OAI21X1 _3457_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [22]),
    .C(_494_),
    .Y(_495_)
);

NAND3X1 _3037_ (
    .A(_736_),
    .B(_186_),
    .C(_1666_),
    .Y(_187_)
);

INVX8 _1943_ (
    .A(_1009_),
    .Y(_973_)
);

NAND2X1 _2728_ (
    .A(\u_rf_if.read_buf1 [8]),
    .B(_1783__bF$buf2),
    .Y(_1809_)
);

NOR2X1 _2308_ (
    .A(ren),
    .B(_683_),
    .Y(_640_)
);

NAND2X1 _2481_ (
    .A(_705_),
    .B(_1603_),
    .Y(_1604_)
);

OAI21X1 _2061_ (
    .A(_875_),
    .B(_973__bF$buf3),
    .C(_870_),
    .Y(_869_)
);

AND2X2 _3686_ (
    .A(_621_),
    .B(_619_),
    .Y(_1079_)
);

OAI21X1 _3266_ (
    .A(_659__bF$buf5),
    .B(_353_),
    .C(_354_),
    .Y(_355_)
);

FILL FILL_0__2521_ (
);

OAI21X1 _2957_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1679_),
    .C(raddr[3]),
    .Y(_126_)
);

NOR2X1 _2537_ (
    .A(_1642_),
    .B(_1491_),
    .Y(_1659_)
);

OAI21X1 _2117_ (
    .A(_826_),
    .B(_973__bF$buf5),
    .C(_821_),
    .Y(_820_)
);

INVX1 _2290_ (
    .A(_670_),
    .Y(_658_)
);

NAND2X1 _3495_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(_938_),
    .Y(_523_)
);

OAI21X1 _3075_ (
    .A(_1065_),
    .B(_696_),
    .C(i_rst_n_bF$buf5),
    .Y(_212_)
);

FILL FILL_0__2750_ (
);

OAI21X1 _1981_ (
    .A(_945_),
    .B(_973__bF$buf6),
    .C(_940_),
    .Y(_939_)
);

AND2X2 _2766_ (
    .A(_1837_),
    .B(i_rst_n_bF$buf6),
    .Y(_1361_)
);

AOI22X1 _2346_ (
    .A(_1472_),
    .B(_1473_),
    .C(_1470_),
    .D(_1469_),
    .Y(_1474_)
);

DFFPOSX1 _4089_ (
    .D(_1446_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [9])
);

INVX1 _2995_ (
    .A(ibus_pending_rdt[15]),
    .Y(_155_)
);

OAI21X1 _2575_ (
    .A(_1070__bF$buf3),
    .B(_1689_),
    .C(_1690_),
    .Y(_1405_)
);

INVX2 _2155_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_787_)
);

NAND2X1 _2384_ (
    .A(_1499_),
    .B(_1506_),
    .Y(_1507_)
);

OAI22X1 _3589_ (
    .A(_586_),
    .B(_212__bF$buf0),
    .C(_585_),
    .D(_570__bF$buf1),
    .Y(_1141_)
);

INVX1 _3169_ (
    .A(ibus_pending_rdt[6]),
    .Y(_280_)
);

FILL FILL_0__3629_ (
);

DFFPOSX1 _3801_ (
    .D(_1297_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_rf_if.issue_chunk [1])
);

NAND2X1 _2193_ (
    .A(_754_),
    .B(_973__bF$buf1),
    .Y(_753_)
);

OAI21X1 _3398_ (
    .A(_424_),
    .B(_443_),
    .C(_444_),
    .Y(_1190_)
);

FILL FILL_0__2653_ (
);

INVX1 _1884_ (
    .A(\u_mem_serial.bit_count [6]),
    .Y(_1026_)
);

OAI21X1 _2669_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.ready_pulse ),
    .C(i_rst_n_bF$buf6),
    .Y(_1766_)
);

NAND2X1 _2249_ (
    .A(_727_),
    .B(_700_),
    .Y(_699_)
);

INVX1 _3610_ (
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_596_)
);

MUX2X1 _2898_ (
    .A(\u_rf_if.read_buf0 [21]),
    .B(\u_rf_if.read_buf0 [22]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_83_)
);

OAI21X1 _2478_ (
    .A(_1595_),
    .B(_1600_),
    .C(_1592_),
    .Y(_1601_)
);

MUX2X1 _2058_ (
    .A(\u_cpu.bufreg.data [20]),
    .B(\u_cpu.ctrl.o_ibus_adr [20]),
    .S(_1006__bF$buf0),
    .Y(_872_)
);

OAI21X1 _2287_ (
    .A(_690_),
    .B(_662_),
    .C(_676_),
    .Y(_661_)
);

DFFPOSX1 _4013_ (
    .D(_1202_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_cpu.bufreg.data [8])
);

MUX2X1 _1978_ (
    .A(\u_cpu.bufreg.data [10]),
    .B(\u_cpu.ctrl.o_ibus_adr [10]),
    .S(_1006__bF$buf2),
    .Y(_942_)
);

NAND3X1 _3704_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [3]),
    .C(_635_),
    .Y(_636_)
);

MUX2X1 _2096_ (
    .A(\u_mem_serial.shift_reg [24]),
    .B(\u_cpu.bufreg2.dlo [19]),
    .S(_994__bF$buf1),
    .Y(_839_)
);

FILL FILL_0__2556_ (
);

DFFPOSX1 _3933_ (
    .D(_1361_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.read_buf1 [17])
);

MUX2X1 _3513_ (
    .A(_534_),
    .B(_536_),
    .S(_450__bF$buf3),
    .Y(_1167_)
);

FILL FILL_0__2785_ (
);

DFFPOSX1 _4051_ (
    .D(_1219_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_cpu.bufreg.data [25])
);

DFFPOSX1 _3742_ (
    .D(_1263_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.bne_or_bge )
);

INVX1 _3322_ (
    .A(\u_cpu.bufreg.data [26]),
    .Y(_399_)
);

DFFPOSX1 _3971_ (
    .D(_1380_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.stream_cnt [2])
);

NAND2X1 _3551_ (
    .A(_697_),
    .B(_1565_),
    .Y(_566_)
);

NAND2X1 _3131_ (
    .A(ibus_pending_ack_bF$buf3),
    .B(_251_),
    .Y(_252_)
);

MUX2X1 _2822_ (
    .A(\u_rf_if.read_buf0 [2]),
    .B(\u_rf_if.read_buf0 [3]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_26_)
);

INVX1 _2402_ (
    .A(_1524_),
    .Y(_1525_)
);

OAI22X1 _3607_ (
    .A(_1008_),
    .B(_212__bF$buf1),
    .C(_995_),
    .D(_570__bF$buf3),
    .Y(_1131_)
);

FILL FILL127350x82950 (
);

DFFSR _3780_ (
    .R(i_rst_n_bF$buf11),
    .S(vdd),
    .D(_1119_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(ibus_pending_rdt[28])
);

INVX1 _3360_ (
    .A(\u_cpu.bufreg.data [7]),
    .Y(_418_)
);

FILL FILL_0__2459_ (
);

AOI21X1 _2631_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(_1736_),
    .C(_1737_),
    .Y(_1396_)
);

NAND2X1 _2211_ (
    .A(_741_),
    .B(_738_),
    .Y(_737_)
);

DFFPOSX1 _3836_ (
    .D(_1313_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(raddr[2])
);

AOI22X1 _3416_ (
    .A(_450__bF$buf4),
    .B(_456_),
    .C(_460_),
    .D(_459_),
    .Y(_1188_)
);

INVX1 _1902_ (
    .A(\u_cpu.ctrl.pc ),
    .Y(_1008_)
);

FILL FILL_0__2688_ (
);

OAI21X1 _2860_ (
    .A(_22__bF$buf0),
    .B(_53_),
    .C(_54_),
    .Y(_55_)
);

INVX1 _2440_ (
    .A(_1562_),
    .Y(_1563_)
);

OAI21X1 _2020_ (
    .A(_908_),
    .B(_906_),
    .C(_973__bF$buf2),
    .Y(_905_)
);

MUX2X1 _3645_ (
    .A(_352_),
    .B(_945_),
    .S(_602__bF$buf2),
    .Y(_1101_)
);

INVX1 _3225_ (
    .A(ibus_pending_rdt[28]),
    .Y(_322_)
);

OAI21X1 _2916_ (
    .A(_22__bF$buf5),
    .B(_95_),
    .C(_96_),
    .Y(_97_)
);

DFFSR _3874_ (
    .R(vdd),
    .S(i_rst_n_bF$buf2),
    .D(_1091_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(ibus_pending_rdt[0])
);

MUX2X1 _3454_ (
    .A(_490_),
    .B(_492_),
    .S(_450__bF$buf4),
    .Y(_1182_)
);

NAND2X1 _3034_ (
    .A(\u_rf_if.last_req_key [0]),
    .B(_1488_),
    .Y(_185_)
);

MUX2X1 _1940_ (
    .A(\u_mem_serial.shift_reg [5]),
    .B(_976_),
    .S(_1009_),
    .Y(_975_)
);

OAI21X1 _2725_ (
    .A(_1783__bF$buf2),
    .B(_1805_),
    .C(_1806_),
    .Y(_1807_)
);

INVX1 _2305_ (
    .A(raddr[6]),
    .Y(_643_)
);

OAI21X1 _3683_ (
    .A(_618_),
    .B(_614_),
    .C(_1056_),
    .Y(_619_)
);

INVX1 _3263_ (
    .A(ibus_pending_rdt[10]),
    .Y(_352_)
);

DFFPOSX1 _4048_ (
    .D(_1426_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [29])
);

OAI21X1 _2954_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1679_),
    .C(raddr[2]),
    .Y(_124_)
);

NAND2X1 _2534_ (
    .A(_1636_),
    .B(_1656_),
    .Y(_1657_)
);

MUX2X1 _2114_ (
    .A(\u_cpu.bufreg.data [27]),
    .B(\u_cpu.ctrl.o_ibus_adr [27]),
    .S(_1006__bF$buf1),
    .Y(_823_)
);

DFFPOSX1 _3739_ (
    .D(_1260_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.decode.opcode [1])
);

MUX2X1 _3319_ (
    .A(_397_),
    .B(_396_),
    .S(_1536__bF$buf2),
    .Y(_1222_)
);

FILL FILL127350x14550 (
);

OAI21X1 _3492_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(_520_),
    .Y(_521_)
);

INVX1 _3072_ (
    .A(_1636_),
    .Y(_210_)
);

FILL FILL_0__3532_ (
);

MUX2X1 _2763_ (
    .A(\u_rf_if.read_buf1 [18]),
    .B(\u_rf_if.read_buf1 [19]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1835_)
);

NOR2X1 _2343_ (
    .A(_734_),
    .B(_733_),
    .Y(_1471_)
);

DFFPOSX1 _3968_ (
    .D(_1183_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

OAI21X1 _3548_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .C(_563_),
    .Y(_564_)
);

OAI21X1 _3128_ (
    .A(_1057_),
    .B(_1054_),
    .C(i_rst_n_bF$buf11),
    .Y(_250_)
);

DFFPOSX1 _4086_ (
    .D(_1236_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(rreg1[3])
);

NAND2X1 _2819_ (
    .A(\u_rf_if.read_buf0 [0]),
    .B(_22__bF$buf3),
    .Y(_24_)
);

NAND2X1 _2992_ (
    .A(_152_),
    .B(_1692__bF$buf0),
    .Y(_153_)
);

NOR2X1 _2572_ (
    .A(_1686_),
    .B(_1685_),
    .Y(_1688_)
);

INVX1 _2152_ (
    .A(_994__bF$buf5),
    .Y(_790_)
);

DFFPOSX1 _3777_ (
    .D(_1285_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_if.last_req_key [9])
);

MUX2X1 _3357_ (
    .A(_415_),
    .B(_416_),
    .S(_1536__bF$buf0),
    .Y(_1203_)
);

CLKBUF1 CLKBUF1_insert47 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf8)
);

CLKBUF1 CLKBUF1_insert48 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

CLKBUF1 CLKBUF1_insert49 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

NAND2X1 _2628_ (
    .A(\u_rf_if.o_waddr [1]),
    .B(_1734_),
    .Y(_1735_)
);

NOR2X1 _2208_ (
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .Y(_740_)
);

NAND2X1 _2381_ (
    .A(_1500_),
    .B(_694_),
    .Y(_1504_)
);

INVX1 _3586_ (
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_585_)
);

INVX1 _3166_ (
    .A(_746_),
    .Y(_278_)
);

AND2X2 _2857_ (
    .A(_52_),
    .B(i_rst_n_bF$buf0),
    .Y(_1339_)
);

INVX2 _2437_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1560_)
);

NOR2X1 _2017_ (
    .A(_1002__bF$buf1),
    .B(_909_),
    .Y(_908_)
);

AOI21X1 _2190_ (
    .A(_973__bF$buf1),
    .B(_757_),
    .C(_756_),
    .Y(_1420_)
);

AND2X2 _3395_ (
    .A(\u_cpu.bufreg.i_sh_signed ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_442_)
);

FILL FILL_0__3435_ (
);

AOI21X1 _1881_ (
    .A(_1029_),
    .B(_1028_),
    .C(_1049_),
    .Y(_1457_)
);

OAI21X1 _2666_ (
    .A(\u_rf_if.shift_rx [1]),
    .B(_1763_),
    .C(i_rst_n_bF$buf10),
    .Y(_1764_)
);

NOR2X1 _2246_ (
    .A(_703_),
    .B(_720_),
    .Y(_702_)
);

FILL FILL127050x118950 (
);

MUX2X1 _1937_ (
    .A(\u_cpu.bufreg.data [5]),
    .B(\u_cpu.ctrl.o_ibus_adr [5]),
    .S(_1006__bF$buf1),
    .Y(_978_)
);

FILL FILL_0__3664_ (
);

NAND2X1 _2895_ (
    .A(\u_rf_if.read_buf0 [19]),
    .B(_22__bF$buf1),
    .Y(_81_)
);

NAND2X1 _2475_ (
    .A(_766_),
    .B(_780_),
    .Y(_1598_)
);

INVX1 _2055_ (
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_875_)
);

FILL FILL_0__2515_ (
);

AOI21X1 _2284_ (
    .A(_717_),
    .B(_727_),
    .C(_665_),
    .Y(_664_)
);

MUX2X1 _3489_ (
    .A(_516_),
    .B(_518_),
    .S(_450__bF$buf2),
    .Y(_1173_)
);

OAI21X1 _3069_ (
    .A(_740_),
    .B(_1623_),
    .C(i_rst_n_bF$buf10),
    .Y(_209_)
);

DFFPOSX1 _4010_ (
    .D(_1201_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_cpu.bufreg.data [7])
);

INVX1 _1975_ (
    .A(\u_mem_serial.shift_reg [10]),
    .Y(_945_)
);

INVX1 _3701_ (
    .A(_1058_),
    .Y(_1057_)
);

OAI21X1 _2093_ (
    .A(_847_),
    .B(_973__bF$buf5),
    .C(_842_),
    .Y(_841_)
);

NAND2X1 _3298_ (
    .A(_725_),
    .B(_1520_),
    .Y(_380_)
);

FILL FILL_0__3338_ (
);

OAI21X1 _2989_ (
    .A(_673__bF$buf1),
    .B(_674__bF$buf1),
    .C(\u_rf_if.rreg1_latched [3]),
    .Y(_150_)
);

NAND2X1 _2569_ (
    .A(\u_rf_if.pending_read ),
    .B(_1679_),
    .Y(_1686_)
);

OAI21X1 _2149_ (
    .A(_798_),
    .B(_973__bF$buf1),
    .C(_793_),
    .Y(_792_)
);

DFFPOSX1 _3930_ (
    .D(_1164_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.bufreg2.dlo [4])
);

INVX1 _3510_ (
    .A(\u_cpu.bufreg2.dlo [7]),
    .Y(_534_)
);

FILL FILL_0__2362_ (
);

FILL FILL_0__3567_ (
);

AND2X2 _2798_ (
    .A(_7_),
    .B(i_rst_n_bF$buf6),
    .Y(_1353_)
);

NAND2X1 _2378_ (
    .A(_705_),
    .B(_1500_),
    .Y(_1501_)
);

FILL FILL_0__2418_ (
);

FILL FILL_0__2591_ (
);

MUX2X1 _2187_ (
    .A(_770_),
    .B(_759_),
    .S(_994__bF$buf5),
    .Y(_758_)
);

NOR2X1 _1878_ (
    .A(\u_mem_serial.bit_count [4]),
    .B(_1032_),
    .Y(_1030_)
);

INVX1 _3604_ (
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_594_)
);

DFFPOSX1 _3833_ (
    .D(_1081_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\gen_int_sys_clk.clk_div [1])
);

OAI21X1 _3413_ (
    .A(_457_),
    .B(_717_),
    .C(_697_),
    .Y(_458_)
);

FILL FILL126150x115350 (
);

FILL FILL_0__2265_ (
);

MUX2X1 _3642_ (
    .A(_251_),
    .B(_924_),
    .S(_602__bF$buf2),
    .Y(_1104_)
);

OAI21X1 _3222_ (
    .A(_659__bF$buf2),
    .B(_317_),
    .C(_319_),
    .Y(_320_)
);

DFFPOSX1 _4007_ (
    .D(_1402_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_rf_if.write_wait [0])
);

FILL FILL_0__2494_ (
);

AND2X2 _2913_ (
    .A(_94_),
    .B(i_rst_n_bF$buf1),
    .Y(_1325_)
);

DFFPOSX1 _3871_ (
    .D(_1330_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_rf_if.read_buf0 [18])
);

INVX1 _3451_ (
    .A(\u_cpu.bufreg2.dlo [22]),
    .Y(_490_)
);

OAI21X1 _3031_ (
    .A(\u_rf_if.issue_chunk [3]),
    .B(_181_),
    .C(_174_),
    .Y(_183_)
);

FILL FILL126750x97350 (
);

AND2X2 _2722_ (
    .A(_1804_),
    .B(i_rst_n_bF$buf3),
    .Y(_1372_)
);

INVX1 _2302_ (
    .A(_647_),
    .Y(_646_)
);

DFFPOSX1 _3927_ (
    .D(_1358_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.read_buf1 [20])
);

NAND2X1 _3507_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(_959_),
    .Y(_532_)
);

NOR2X1 _3680_ (
    .A(_617_),
    .B(_613_),
    .Y(_1081_)
);

NAND2X1 _3260_ (
    .A(_1066_),
    .B(_348_),
    .Y(_349_)
);

DFFPOSX1 _4045_ (
    .D(_1216_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg.data [22])
);

INVX1 _2951_ (
    .A(\u_rf_if.issue_chunk [1]),
    .Y(_122_)
);

OAI22X1 _2531_ (
    .A(_1653_),
    .B(_654_),
    .C(_605_),
    .D(_1642_),
    .Y(_1654_)
);

INVX1 _2111_ (
    .A(\u_mem_serial.shift_reg [27]),
    .Y(_826_)
);

DFFSR _3736_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1104_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(ibus_pending_rdt[13])
);

OAI21X1 _3316_ (
    .A(_351_),
    .B(_394_),
    .C(_395_),
    .Y(_1223_)
);

FILL FILL_0__2168_ (
);

NAND2X1 _2760_ (
    .A(\u_rf_if.read_buf1 [16]),
    .B(_1783__bF$buf3),
    .Y(_1833_)
);

NOR2X1 _2340_ (
    .A(_1467_),
    .B(_1466_),
    .Y(_1468_)
);

DFFPOSX1 _3965_ (
    .D(_1377_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_rf_if.read_buf1 [1])
);

MUX2X1 _3545_ (
    .A(_1596_),
    .B(_561_),
    .S(_450__bF$buf4),
    .Y(_1160_)
);

AOI21X1 _3125_ (
    .A(_1052_),
    .B(_245_),
    .C(_247_),
    .Y(_1266_)
);

FILL FILL_0__2397_ (
);

DFFPOSX1 _4083_ (
    .D(_1443_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [12])
);

AND2X2 _2816_ (
    .A(_21_),
    .B(i_rst_n_bF$buf3),
    .Y(_1349_)
);

CLKBUF1 CLKBUF1_insert140 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf18 )
);

CLKBUF1 CLKBUF1_insert141 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf17 )
);

CLKBUF1 CLKBUF1_insert142 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf16 )
);

CLKBUF1 CLKBUF1_insert143 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf15 )
);

CLKBUF1 CLKBUF1_insert144 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf14 )
);

CLKBUF1 CLKBUF1_insert145 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf13 )
);

CLKBUF1 CLKBUF1_insert146 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf12 )
);

CLKBUF1 CLKBUF1_insert147 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf11 )
);

CLKBUF1 CLKBUF1_insert148 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf10 )
);

CLKBUF1 CLKBUF1_insert149 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf9 )
);

DFFSR _3774_ (
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1116_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(ibus_pending_rdt[25])
);

INVX1 _3354_ (
    .A(\u_cpu.bufreg.data [10]),
    .Y(_415_)
);

INVX1 _2625_ (
    .A(\u_rf_if.o_waddr [0]),
    .Y(_1732_)
);

OAI21X1 _2205_ (
    .A(_1058_),
    .B(_743_),
    .C(i_rst_n_bF$buf11),
    .Y(_742_)
);

OAI22X1 _3583_ (
    .A(_583_),
    .B(_212__bF$buf0),
    .C(_582_),
    .D(_570__bF$buf1),
    .Y(_1144_)
);

AND2X2 _3163_ (
    .A(\u_mem_serial.shift_reg [37]),
    .B(_1855_),
    .Y(_0_)
);

MUX2X1 _2854_ (
    .A(\u_rf_if.read_buf0 [10]),
    .B(\u_rf_if.read_buf0 [11]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_50_)
);

NAND3X1 _2434_ (
    .A(_1556_),
    .B(_1549_),
    .C(_1537_),
    .Y(_1557_)
);

AND2X2 _2014_ (
    .A(_911_),
    .B(i_rst_n_bF$buf2),
    .Y(_1441_)
);

MUX2X1 _3639_ (
    .A(_159_),
    .B(_903_),
    .S(_602__bF$buf0),
    .Y(_1107_)
);

MUX2X1 _3219_ (
    .A(_316_),
    .B(_812_),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_317_)
);

AOI21X1 _3392_ (
    .A(\u_cpu.bufreg.data [2]),
    .B(_704_),
    .C(_440_),
    .Y(_441_)
);

NAND3X1 _2663_ (
    .A(i_rst_n_bF$buf4),
    .B(\u_rf_if.issue_idx [5]),
    .C(\u_rf_if.prefetch_active ),
    .Y(_1762_)
);

INVX1 _2243_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_705_)
);

DFFPOSX1 _3868_ (
    .D(_1145_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

OAI21X1 _3448_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_708_),
    .C(_487_),
    .Y(_488_)
);

AND2X2 _3028_ (
    .A(_178_),
    .B(\u_rf_if.issue_chunk [2]),
    .Y(_181_)
);

OAI21X1 _1934_ (
    .A(_1023__bF$buf0),
    .B(_982_),
    .C(_981_),
    .Y(_980_)
);

FILL FILL_0__3241_ (
);

MUX2X1 _2719_ (
    .A(\u_rf_if.read_buf1 [7]),
    .B(\u_rf_if.read_buf1 [8]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1802_)
);

OAI21X1 _2892_ (
    .A(_22__bF$buf6),
    .B(_77_),
    .C(_78_),
    .Y(_79_)
);

OAI21X1 _2472_ (
    .A(_1593_),
    .B(_765_),
    .C(_1594_),
    .Y(_1595_)
);

OAI21X1 _2052_ (
    .A(_880_),
    .B(_878_),
    .C(_973__bF$buf0),
    .Y(_877_)
);

NOR2X1 _3677_ (
    .A(\gen_int_sys_clk.clk_div [2]),
    .B(_613_),
    .Y(_616_)
);

OAI21X1 _3257_ (
    .A(rreg1[1]),
    .B(_340_),
    .C(_659__bF$buf0),
    .Y(_347_)
);

FILL FILL_0_BUFX2_insert92 (
);

FILL FILL_0__3470_ (
);

FILL FILL_0_BUFX2_insert99 (
);

OAI21X1 _2948_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1679_),
    .C(raddr[0]),
    .Y(_120_)
);

NOR2X1 _2528_ (
    .A(_642_),
    .B(_1480_),
    .Y(_1651_)
);

OAI21X1 _2108_ (
    .A(_831_),
    .B(_829_),
    .C(_973__bF$buf5),
    .Y(_828_)
);

INVX1 _2281_ (
    .A(\u_rf_if.last_req_key [5]),
    .Y(_667_)
);

INVX1 _3486_ (
    .A(\u_cpu.bufreg2.dlo [13]),
    .Y(_516_)
);

AOI21X1 _3066_ (
    .A(_1487_),
    .B(_732_),
    .C(_1664_),
    .Y(_207_)
);

FILL FILL_0__2321_ (
);

OAI21X1 _1972_ (
    .A(_950_),
    .B(_948_),
    .C(_973__bF$buf6),
    .Y(_947_)
);

OAI21X1 _2757_ (
    .A(_1783__bF$buf3),
    .B(_1829_),
    .C(_1830_),
    .Y(_1831_)
);

OAI21X1 _2337_ (
    .A(ren),
    .B(\u_rf_if.o_waddr [2]),
    .C(_1464_),
    .Y(_1465_)
);

MUX2X1 _2090_ (
    .A(\u_cpu.bufreg.data [24]),
    .B(\u_cpu.ctrl.o_ibus_adr [24]),
    .S(_1006__bF$buf0),
    .Y(_844_)
);

AOI22X1 _3295_ (
    .A(_1692__bF$buf1),
    .B(_365_),
    .C(_377_),
    .D(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_378_)
);

FILL FILL127350x118950 (
);

MUX2X1 _2986_ (
    .A(_147_),
    .B(_861_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_148_)
);

AOI21X1 _2566_ (
    .A(_1682_),
    .B(_1678_),
    .C(\u_rf_if.issue_idx [5]),
    .Y(_1683_)
);

MUX2X1 _2146_ (
    .A(\u_cpu.bufreg.data [31]),
    .B(\u_cpu.ctrl.o_ibus_adr [31]),
    .S(_1006__bF$buf3),
    .Y(_795_)
);

MUX2X1 _2795_ (
    .A(\u_rf_if.read_buf1 [26]),
    .B(\u_rf_if.read_buf1 [27]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_5_)
);

NOR2X1 _2375_ (
    .A(_1070__bF$buf5),
    .B(_1498_),
    .Y(_1413_)
);

FILL FILL_0__3373_ (
);

OAI21X1 _2184_ (
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.bufreg.data [0]),
    .C(\u_cpu.state.i_ctrl_misalign ),
    .Y(_761_)
);

FILL FILL127050x104550 (
);

OR2X2 _3389_ (
    .A(_432_),
    .B(_437_),
    .Y(_438_)
);

FILL FILL_0__2224_ (
);

NAND2X1 _1875_ (
    .A(_1034_),
    .B(_1033_),
    .Y(_1032_)
);

OAI22X1 _3601_ (
    .A(_592_),
    .B(_212__bF$buf4),
    .C(_591_),
    .D(_570__bF$buf0),
    .Y(_1135_)
);

OAI21X1 _3198_ (
    .A(rreg0[2]),
    .B(_296_),
    .C(_659__bF$buf3),
    .Y(_302_)
);

AND2X2 _2889_ (
    .A(_76_),
    .B(i_rst_n_bF$buf0),
    .Y(_1331_)
);

OAI21X1 _2469_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(_1500_),
    .C(_1591_),
    .Y(_1592_)
);

NOR2X1 _2049_ (
    .A(_1002__bF$buf2),
    .B(_881_),
    .Y(_880_)
);

DFFPOSX1 _3830_ (
    .D(_1127_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

OAI21X1 _3410_ (
    .A(_452_),
    .B(_455_),
    .C(_453_),
    .Y(_1189_)
);

AND2X2 _2698_ (
    .A(_1786_),
    .B(i_rst_n_bF$buf3),
    .Y(_1378_)
);

NOR2X1 _2278_ (
    .A(ren),
    .B(_684_),
    .Y(_670_)
);

DFFPOSX1 _4004_ (
    .D(_1198_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.bufreg.data [4])
);

NOR2X1 _1969_ (
    .A(_1002__bF$buf1),
    .B(_951_),
    .Y(_950_)
);

MUX2X1 _2910_ (
    .A(\u_rf_if.read_buf0 [24]),
    .B(\u_rf_if.read_buf0 [25]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_92_)
);

FILL FILL_0__3276_ (
);

INVX1 _2087_ (
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_847_)
);

FILL FILL_0__2127_ (
);

DFFPOSX1 _3924_ (
    .D(_1161_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_cpu.bufreg2.dlo [1])
);

OAI21X1 _3504_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.dlo [10]),
    .C(_529_),
    .Y(_530_)
);

FILL FILL126450x115350 (
);

DFFPOSX1 _4042_ (
    .D(_1423_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [32])
);

DFFPOSX1 _3733_ (
    .D(_1254_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(\u_cpu.branch_op )
);

MUX2X1 _3313_ (
    .A(_392_),
    .B(_938_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_393_)
);

DFFPOSX1 _3962_ (
    .D(_1180_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(\u_cpu.bufreg2.dlo [20])
);

INVX1 _3542_ (
    .A(\u_mem_serial.shift_reg [0]),
    .Y(_559_)
);

INVX1 _3122_ (
    .A(\u_mem_serial.active_ibus ),
    .Y(_245_)
);

DFFPOSX1 _4080_ (
    .D(_1233_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(rreg1[0])
);

MUX2X1 _2813_ (
    .A(\u_rf_if.read_buf1 [30]),
    .B(\u_rf_if.read_buf1 [31]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_19_)
);

FILL FILL_0__3179_ (
);

CLKBUF1 CLKBUF1_insert115 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf43 )
);

CLKBUF1 CLKBUF1_insert116 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf42 )
);

CLKBUF1 CLKBUF1_insert117 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf41 )
);

CLKBUF1 CLKBUF1_insert118 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf40 )
);

CLKBUF1 CLKBUF1_insert119 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf39 )
);

DFFPOSX1 _3771_ (
    .D(_1282_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [2])
);

MUX2X1 _3351_ (
    .A(_412_),
    .B(_413_),
    .S(_1536__bF$buf0),
    .Y(_1206_)
);

OAI21X1 _2622_ (
    .A(_1726_),
    .B(_1721_),
    .C(_1729_),
    .Y(_1730_)
);

NOR2X1 _2202_ (
    .A(_746_),
    .B(_1048_),
    .Y(_745_)
);

DFFPOSX1 _3827_ (
    .D(_1461_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\u_mem_serial.bit_count [0])
);

NAND2X1 _3407_ (
    .A(\u_cpu.bufreg2.dhi [6]),
    .B(_452_),
    .Y(_453_)
);

INVX1 _3580_ (
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_582_)
);

AOI21X1 _3160_ (
    .A(_274_),
    .B(_272_),
    .C(_1070__bF$buf4),
    .Y(_1258_)
);

FILL FILL_0__3200_ (
);

NAND2X1 _2851_ (
    .A(\u_rf_if.read_buf0 [8]),
    .B(_22__bF$buf2),
    .Y(_48_)
);

NOR2X1 _2431_ (
    .A(\u_cpu.state.o_cnt [2]),
    .B(_1553_),
    .Y(_1554_)
);

NOR2X1 _2011_ (
    .A(_1023__bF$buf1),
    .B(_914_),
    .Y(_913_)
);

MUX2X1 _3636_ (
    .A(_1693_),
    .B(_882_),
    .S(_602__bF$buf0),
    .Y(_1110_)
);

OAI22X1 _3216_ (
    .A(_313_),
    .B(_268_),
    .C(_1066_),
    .D(_1692__bF$buf1),
    .Y(_314_)
);

BUFX2 BUFX2_insert160 (
    .A(_1783_),
    .Y(_1783__bF$buf5)
);

BUFX2 BUFX2_insert161 (
    .A(_1783_),
    .Y(_1783__bF$buf4)
);

BUFX2 BUFX2_insert162 (
    .A(_1783_),
    .Y(_1783__bF$buf3)
);

BUFX2 BUFX2_insert163 (
    .A(_1783_),
    .Y(_1783__bF$buf2)
);

BUFX2 BUFX2_insert164 (
    .A(_1783_),
    .Y(_1783__bF$buf1)
);

BUFX2 BUFX2_insert165 (
    .A(_1783_),
    .Y(_1783__bF$buf0)
);

BUFX2 BUFX2_insert166 (
    .A(_973_),
    .Y(_973__bF$buf6)
);

BUFX2 BUFX2_insert167 (
    .A(_973_),
    .Y(_973__bF$buf5)
);

BUFX2 BUFX2_insert168 (
    .A(_973_),
    .Y(_973__bF$buf4)
);

BUFX2 BUFX2_insert169 (
    .A(_973_),
    .Y(_973__bF$buf3)
);

NAND2X1 _2907_ (
    .A(\u_rf_if.read_buf0 [22]),
    .B(_22__bF$buf1),
    .Y(_90_)
);

NAND2X1 _2660_ (
    .A(i_rst_n_bF$buf4),
    .B(_1702_),
    .Y(_1761_)
);

NAND2X1 _2240_ (
    .A(_727_),
    .B(_717_),
    .Y(_708_)
);

DFFPOSX1 _3865_ (
    .D(_1327_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_rf_if.read_buf0 [21])
);

OAI22X1 _3445_ (
    .A(_479_),
    .B(_451_),
    .C(_484_),
    .D(_485_),
    .Y(_1184_)
);

NOR2X1 _3025_ (
    .A(_1687_),
    .B(_178_),
    .Y(_179_)
);

NOR2X1 _1931_ (
    .A(_1070__bF$buf2),
    .B(_983_),
    .Y(_1452_)
);

NAND2X1 _2716_ (
    .A(\u_rf_if.read_buf1 [5]),
    .B(_1783__bF$buf1),
    .Y(_1800_)
);

FILL FILL_0__1988_ (
);

AND2X2 _3674_ (
    .A(\gen_int_sys_clk.clk_div [1]),
    .B(\gen_int_sys_clk.clk_div [0]),
    .Y(_613_)
);

INVX1 _3254_ (
    .A(rreg1[1]),
    .Y(_345_)
);

DFFPOSX1 _4039_ (
    .D(_1213_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [19])
);

FILL FILL127350x21750 (
);

FILL FILL_0_BUFX2_insert64 (
);

INVX1 _2945_ (
    .A(_118_),
    .Y(_1317_)
);

NAND2X1 _2525_ (
    .A(_1647_),
    .B(_1634_),
    .Y(_1648_)
);

NOR2X1 _2105_ (
    .A(_1002__bF$buf3),
    .B(_832_),
    .Y(_831_)
);

NAND2X1 _3483_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_917_),
    .Y(_514_)
);

NAND3X1 _3063_ (
    .A(ren),
    .B(_736_),
    .C(_1666_),
    .Y(_205_)
);

FILL FILL_0__3103_ (
);

AND2X2 _2754_ (
    .A(_1828_),
    .B(i_rst_n_bF$buf0),
    .Y(_1364_)
);

OAI21X1 _2334_ (
    .A(\u_rf_if.last_req_key [9]),
    .B(_735_),
    .C(_1414_),
    .Y(_1462_)
);

DFFPOSX1 _3959_ (
    .D(_1374_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [4])
);

NAND2X1 _3539_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(_556_),
    .Y(_557_)
);

OR2X2 _3119_ (
    .A(_1692__bF$buf3),
    .B(_227_),
    .Y(_243_)
);

AOI21X1 _3292_ (
    .A(_1692__bF$buf0),
    .B(_1694_),
    .C(_298_),
    .Y(_376_)
);

DFFPOSX1 _4077_ (
    .D(_1440_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [15])
);

AOI21X1 _2983_ (
    .A(_145_),
    .B(_142_),
    .C(_1070__bF$buf4),
    .Y(_1306_)
);

NOR2X1 _2563_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1679_),
    .Y(_1680_)
);

INVX1 _2143_ (
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_798_)
);

DFFSR _3768_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1113_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(ibus_pending_rdt[22])
);

INVX1 _3348_ (
    .A(\u_cpu.bufreg.data [13]),
    .Y(_412_)
);

NAND2X1 _2619_ (
    .A(\u_rf_if.read_buf0 [30]),
    .B(_1560_),
    .Y(_1727_)
);

BUFX2 BUFX2_insert70 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf5 )
);

BUFX2 BUFX2_insert71 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf4 )
);

BUFX2 BUFX2_insert72 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf3 )
);

BUFX2 BUFX2_insert73 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf2 )
);

BUFX2 BUFX2_insert74 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf1 )
);

BUFX2 BUFX2_insert75 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf0 )
);

BUFX2 BUFX2_insert76 (
    .A(_1070_),
    .Y(_1070__bF$buf6)
);

BUFX2 BUFX2_insert77 (
    .A(_1070_),
    .Y(_1070__bF$buf5)
);

BUFX2 BUFX2_insert78 (
    .A(_1070_),
    .Y(_1070__bF$buf4)
);

BUFX2 BUFX2_insert79 (
    .A(_1070_),
    .Y(_1070__bF$buf3)
);

NAND2X1 _2792_ (
    .A(\u_rf_if.read_buf1 [24]),
    .B(_1783__bF$buf0),
    .Y(_3_)
);

INVX1 _2372_ (
    .A(_1858_),
    .Y(_1497_)
);

DFFPOSX1 _3997_ (
    .D(_1195_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.bufreg.data [0])
);

OAI22X1 _3577_ (
    .A(_580_),
    .B(_212__bF$buf3),
    .C(_579_),
    .D(_570__bF$buf2),
    .Y(_1147_)
);

OAI21X1 _3157_ (
    .A(_751_),
    .B(_1032_),
    .C(\u_mem_serial.bit_count [6]),
    .Y(_272_)
);

OAI21X1 _2848_ (
    .A(_22__bF$buf2),
    .B(_44_),
    .C(_45_),
    .Y(_46_)
);

NAND3X1 _2428_ (
    .A(_1530_),
    .B(_1531_),
    .C(_1550_),
    .Y(_1551_)
);

MUX2X1 _2008_ (
    .A(\u_mem_serial.shift_reg [13]),
    .B(\u_cpu.bufreg2.dlo [8]),
    .S(_994__bF$buf1),
    .Y(_916_)
);

OAI21X1 _2181_ (
    .A(_769_),
    .B(_767_),
    .C(_764_),
    .Y(_763_)
);

NAND2X1 _3386_ (
    .A(\u_cpu.bufreg.c_r ),
    .B(_434_),
    .Y(_435_)
);

FILL FILL_0__3006_ (
);

NOR2X1 _1872_ (
    .A(_1070__bF$buf3),
    .B(_1035_),
    .Y(_1459_)
);

OAI21X1 _2657_ (
    .A(_1751_),
    .B(_1758_),
    .C(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1759_)
);

NAND3X1 _2237_ (
    .A(_768_),
    .B(_759_),
    .C(_712_),
    .Y(_711_)
);

FILL FILL_0__1912_ (
);

OAI21X1 _3195_ (
    .A(rreg0[3]),
    .B(_296_),
    .C(_659__bF$buf3),
    .Y(_300_)
);

FILL FILL_0__2030_ (
);

NAND3X1 _1928_ (
    .A(\u_mem_serial.shift_reg [2]),
    .B(_1023__bF$buf3),
    .C(_994__bF$buf3),
    .Y(_985_)
);

FILL FILL_0__3235_ (
);

MUX2X1 _2886_ (
    .A(\u_rf_if.read_buf0 [18]),
    .B(\u_rf_if.read_buf0 [19]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_74_)
);

NAND3X1 _2466_ (
    .A(_1584_),
    .B(_1588_),
    .C(_1571_),
    .Y(_1589_)
);

AND2X2 _2046_ (
    .A(_883_),
    .B(i_rst_n_bF$buf2),
    .Y(_1437_)
);

MUX2X1 _2695_ (
    .A(\u_rf_if.read_buf1 [1]),
    .B(\u_rf_if.read_buf1 [2]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1784_)
);

NOR2X1 _2275_ (
    .A(mem_ibus_ack),
    .B(ibus_pending_ack_bF$buf2),
    .Y(_673_)
);

DFFPOSX1 _4001_ (
    .D(_1399_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_rf_if.read_buf1 [30])
);

FILL FILL127350x104550 (
);

AND2X2 _1966_ (
    .A(_953_),
    .B(i_rst_n_bF$buf2),
    .Y(_1447_)
);

OAI21X1 _2084_ (
    .A(_852_),
    .B(_850_),
    .C(_973__bF$buf3),
    .Y(_849_)
);

NAND3X1 _3289_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_1543_),
    .C(_659__bF$buf4),
    .Y(_373_)
);

FILL FILL_0__3082_ (
);

DFFPOSX1 _3921_ (
    .D(_1355_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_rf_if.read_buf1 [23])
);

MUX2X1 _3501_ (
    .A(_525_),
    .B(_527_),
    .S(_450__bF$buf0),
    .Y(_1170_)
);

AOI21X1 _3098_ (
    .A(_222_),
    .B(_1547_),
    .C(_226_),
    .Y(_1272_)
);

FILL FILL_0__3138_ (
);

OAI21X1 _2789_ (
    .A(_1783__bF$buf3),
    .B(_1853_),
    .C(_1859_),
    .Y(_1_)
);

NOR2X1 _2369_ (
    .A(_1495_),
    .B(_736_),
    .Y(_1416_)
);

DFFPOSX1 _3730_ (
    .D(_1251_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(mem_dbus_ack)
);

NAND2X1 _3310_ (
    .A(rreg1[4]),
    .B(_342_),
    .Y(_391_)
);

FILL FILL_0__2162_ (
);

INVX1 _2598_ (
    .A(\u_rf_if.issue_sel ),
    .Y(_1708_)
);

INVX1 _2178_ (
    .A(\u_cpu.bufreg.data [0]),
    .Y(_766_)
);

NAND2X1 _1869_ (
    .A(_1038_),
    .B(_1042_),
    .Y(_1037_)
);

OAI21X1 _2810_ (
    .A(_11_),
    .B(_1560_),
    .C(_1722_),
    .Y(_17_)
);

FILL FILL126150x122550 (
);

FILL FILL126750x115350 (
);

DFFPOSX1 _3824_ (
    .D(_1308_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(raddr[7])
);

AOI21X1 _3404_ (
    .A(_449_),
    .B(_448_),
    .C(mem_dbus_ack_bF$buf2),
    .Y(_450_)
);

FILL FILL_0_CLKBUF1_insert141 (
);

FILL FILL_0_CLKBUF1_insert147 (
);

FILL FILL_0__1947_ (
);

MUX2X1 _3633_ (
    .A(_147_),
    .B(_861_),
    .S(_602__bF$buf3),
    .Y(_1113_)
);

OAI21X1 _3213_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .B(_296_),
    .C(_659__bF$buf0),
    .Y(_312_)
);

FILL FILL_0__2065_ (
);

OAI21X1 _2904_ (
    .A(_22__bF$buf1),
    .B(_86_),
    .C(_87_),
    .Y(_88_)
);

NAND2X1 _3862_ (
    .A(_1068_),
    .B(_1067_),
    .Y(_1066_)
);

OAI21X1 _3442_ (
    .A(_716_),
    .B(_666_),
    .C(_697_),
    .Y(_483_)
);

INVX1 _3022_ (
    .A(\u_rf_if.issue_chunk [0]),
    .Y(_176_)
);

OAI21X1 _2713_ (
    .A(_1783__bF$buf1),
    .B(_1796_),
    .C(_1797_),
    .Y(_1798_)
);

DFFPOSX1 _3918_ (
    .D(_1158_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

NAND2X1 _3671_ (
    .A(_1053_),
    .B(_1059_),
    .Y(_1052_)
);

INVX1 _3251_ (
    .A(rreg1[2]),
    .Y(_343_)
);

DFFPOSX1 _4036_ (
    .D(_1420_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [35])
);

FILL FILL_0_BUFX2_insert30 (
);

FILL FILL_0_BUFX2_insert37 (
);

AOI21X1 _2942_ (
    .A(_1732_),
    .B(_1733_),
    .C(_116_),
    .Y(_1318_)
);

OAI21X1 _2522_ (
    .A(_739_),
    .B(_1639_),
    .C(_1644_),
    .Y(_1645_)
);

AND2X2 _2102_ (
    .A(_834_),
    .B(i_rst_n_bF$buf7),
    .Y(_1430_)
);

DFFPOSX1 _3727_ (
    .D(_1459_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\u_mem_serial.bit_count [2])
);

NAND2X1 _3307_ (
    .A(_388_),
    .B(_315_),
    .Y(_389_)
);

OAI21X1 _3480_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(_511_),
    .Y(_512_)
);

NAND2X1 _3060_ (
    .A(\u_rf_if.last_req_key [8]),
    .B(_1488_),
    .Y(_203_)
);

FILL FILL_0__2999_ (
);

MUX2X1 _2751_ (
    .A(\u_rf_if.read_buf1 [15]),
    .B(\u_rf_if.read_buf1 [16]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1826_)
);

INVX1 _2331_ (
    .A(\u_rf_if.launch_pending ),
    .Y(_1257_)
);

DFFPOSX1 _3956_ (
    .D(_1177_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_cpu.bufreg2.dlo [17])
);

MUX2X1 _3536_ (
    .A(_551_),
    .B(_554_),
    .S(_450__bF$buf2),
    .Y(_1162_)
);

OAI21X1 _3116_ (
    .A(_228_),
    .B(_227_),
    .C(_241_),
    .Y(_1269_)
);

DFFPOSX1 _4074_ (
    .D(_1230_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1])
);

NAND2X1 _2807_ (
    .A(\u_rf_if.read_buf1 [27]),
    .B(_1783__bF$buf6),
    .Y(_15_)
);

FILL FILL127050x54150 (
);

INVX1 _2980_ (
    .A(ibus_pending_rdt[21]),
    .Y(_143_)
);

NAND2X1 _2560_ (
    .A(\u_rf_if.issue_chunk [2]),
    .B(\u_rf_if.issue_sel ),
    .Y(_1677_)
);

OAI21X1 _2140_ (
    .A(_803_),
    .B(_801_),
    .C(_973__bF$buf4),
    .Y(_800_)
);

DFFPOSX1 _3765_ (
    .D(_1279_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.state [1])
);

MUX2X1 _3345_ (
    .A(_409_),
    .B(_410_),
    .S(_1536__bF$buf4),
    .Y(_1209_)
);

FILL FILL127050x7350 (
);

AND2X2 _2616_ (
    .A(_1725_),
    .B(i_rst_n_bF$buf10),
    .Y(_1399_)
);

BUFX2 BUFX2_insert40 (
    .A(_602_),
    .Y(_602__bF$buf0)
);

BUFX2 BUFX2_insert41 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf5)
);

BUFX2 BUFX2_insert42 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf4)
);

BUFX2 BUFX2_insert43 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf3)
);

BUFX2 BUFX2_insert44 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf2)
);

BUFX2 BUFX2_insert45 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf1)
);

BUFX2 BUFX2_insert46 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf0)
);

DFFPOSX1 _3994_ (
    .D(_1395_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_rf_if.read_buf0 [31])
);

INVX1 _3574_ (
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_579_)
);

NAND2X1 _3154_ (
    .A(ibus_pending_ack_bF$buf4),
    .B(_269_),
    .Y(_270_)
);

AND2X2 _2845_ (
    .A(_43_),
    .B(i_rst_n_bF$buf0),
    .Y(_1342_)
);

OAI21X1 _2425_ (
    .A(_1546_),
    .B(_1547_),
    .C(_703_),
    .Y(_1548_)
);

OAI21X1 _2005_ (
    .A(_924_),
    .B(_973__bF$buf0),
    .C(_919_),
    .Y(_918_)
);

NAND2X1 _3383_ (
    .A(_1545_),
    .B(_431_),
    .Y(_432_)
);

FILL FILL127350x97350 (
);

NAND2X1 _2654_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1755_),
    .Y(_1756_)
);

NAND3X1 _2234_ (
    .A(_716_),
    .B(_776_),
    .C(_715_),
    .Y(_714_)
);

DFFPOSX1 _3859_ (
    .D(_1143_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

NOR2X1 _3439_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(_1597_),
    .Y(_480_)
);

INVX1 _3019_ (
    .A(_1687_),
    .Y(_174_)
);

AND2X2 _3192_ (
    .A(_659__bF$buf3),
    .B(_296_),
    .Y(_298_)
);

MUX2X1 _1925_ (
    .A(\u_mem_serial.shift_reg [2]),
    .B(_988_),
    .S(_1009_),
    .Y(_987_)
);

NAND2X1 _2883_ (
    .A(\u_rf_if.read_buf0 [16]),
    .B(_22__bF$buf6),
    .Y(_72_)
);

NAND2X1 _2463_ (
    .A(\u_cpu.alu.cmp_r ),
    .B(_693_),
    .Y(_1586_)
);

NOR2X1 _2043_ (
    .A(_1023__bF$buf1),
    .B(_886_),
    .Y(_885_)
);

INVX1 _3668_ (
    .A(_1050_),
    .Y(_1049_)
);

OAI21X1 _3248_ (
    .A(rreg1[4]),
    .B(_340_),
    .C(_659__bF$buf0),
    .Y(_341_)
);

FILL FILL_0__2923_ (
);

FILL FILL_0__3041_ (
);

OAI21X1 _2939_ (
    .A(_22__bF$buf3),
    .B(_113_),
    .C(_114_),
    .Y(_115_)
);

NAND2X1 _2519_ (
    .A(\u_rf_if.tx_state [1]),
    .B(_1618_),
    .Y(_1642_)
);

OAI21X1 _2692_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1781_),
    .C(i_rst_n_bF$buf6),
    .Y(_1782_)
);

NOR2X1 _2272_ (
    .A(_677_),
    .B(_688_),
    .Y(_676_)
);

DFFPOSX1 _3897_ (
    .D(_1343_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_rf_if.read_buf0 [5])
);

MUX2X1 _3477_ (
    .A(_1593_),
    .B(_509_),
    .S(_450__bF$buf4),
    .Y(_1176_)
);

NAND2X1 _3057_ (
    .A(\u_rf_if.last_req_key [7]),
    .B(_1488_),
    .Y(_201_)
);

NOR2X1 _1963_ (
    .A(_1023__bF$buf4),
    .B(_956_),
    .Y(_955_)
);

NAND2X1 _2748_ (
    .A(\u_rf_if.read_buf1 [13]),
    .B(_1783__bF$buf4),
    .Y(_1824_)
);

NAND3X1 _2328_ (
    .A(_1087_),
    .B(_1088_),
    .C(_1084_),
    .Y(_1089_)
);

NOR2X1 _2081_ (
    .A(_1002__bF$buf0),
    .B(_853_),
    .Y(_852_)
);

OAI21X1 _3286_ (
    .A(\u_mem_serial.shift_reg [31]),
    .B(ibus_pending_ack_bF$buf1),
    .C(_370_),
    .Y(_371_)
);

NAND2X1 _2977_ (
    .A(_140_),
    .B(_1692__bF$buf3),
    .Y(_141_)
);

NAND3X1 _2557_ (
    .A(_1673_),
    .B(_1674_),
    .C(_659__bF$buf1),
    .Y(_1675_)
);

NOR2X1 _2137_ (
    .A(_1002__bF$buf3),
    .B(_804_),
    .Y(_803_)
);

OAI21X1 _3095_ (
    .A(_1546_),
    .B(_224_),
    .C(i_rst_n_bF$buf5),
    .Y(_225_)
);

AND2X2 _2786_ (
    .A(_1852_),
    .B(i_rst_n_bF$buf0),
    .Y(_1356_)
);

AOI21X1 _2366_ (
    .A(_1488_),
    .B(_1493_),
    .C(_1070__bF$buf5),
    .Y(_1417_)
);

FILL FILL_0__2826_ (
);

MUX2X1 _2595_ (
    .A(\u_rf_if.rreg1_latched [4]),
    .B(\u_rf_if.rreg0_latched [4]),
    .S(\u_rf_if.issue_sel ),
    .Y(_1706_)
);

NOR2X1 _2175_ (
    .A(_772_),
    .B(_790_),
    .Y(_769_)
);

AOI21X1 _1866_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_1041_),
    .C(_1040_),
    .Y(_1039_)
);

OAI21X1 _3189_ (
    .A(_692_),
    .B(_294_),
    .C(_1543_),
    .Y(_295_)
);

DFFPOSX1 _3821_ (
    .D(_1307_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.rreg1_latched [0])
);

OAI21X1 _3401_ (
    .A(_445_),
    .B(_446_),
    .C(_1066_),
    .Y(_447_)
);

AOI21X1 _2689_ (
    .A(_1778_),
    .B(_1777_),
    .C(_1779_),
    .Y(_1380_)
);

NOR2X1 _2269_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_787_),
    .Y(_679_)
);

MUX2X1 _3630_ (
    .A(_334_),
    .B(_840_),
    .S(_602__bF$buf3),
    .Y(_1116_)
);

OAI21X1 _3210_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .B(_296_),
    .C(_659__bF$buf0),
    .Y(_310_)
);

FILL FILL_0__2729_ (
);

BUFX2 BUFX2_insert100 (
    .A(_1692_),
    .Y(_1692__bF$buf3)
);

BUFX2 BUFX2_insert101 (
    .A(_1692_),
    .Y(_1692__bF$buf2)
);

BUFX2 BUFX2_insert102 (
    .A(_1692_),
    .Y(_1692__bF$buf1)
);

BUFX2 BUFX2_insert103 (
    .A(_1692_),
    .Y(_1692__bF$buf0)
);

BUFX2 BUFX2_insert104 (
    .A(_659_),
    .Y(_659__bF$buf5)
);

BUFX2 BUFX2_insert105 (
    .A(_659_),
    .Y(_659__bF$buf4)
);

BUFX2 BUFX2_insert106 (
    .A(_659_),
    .Y(_659__bF$buf3)
);

BUFX2 BUFX2_insert107 (
    .A(_659_),
    .Y(_659__bF$buf2)
);

BUFX2 BUFX2_insert108 (
    .A(_659_),
    .Y(_659__bF$buf1)
);

BUFX2 BUFX2_insert109 (
    .A(_659_),
    .Y(_659__bF$buf0)
);

AND2X2 _2901_ (
    .A(_85_),
    .B(i_rst_n_bF$buf1),
    .Y(_1328_)
);

AOI21X1 _2498_ (
    .A(_1617_),
    .B(_1517_),
    .C(_1620_),
    .Y(_1621_)
);

AND2X2 _2078_ (
    .A(_855_),
    .B(i_rst_n_bF$buf7),
    .Y(_1433_)
);

FILL FILL_0__2958_ (
);

AND2X2 _2710_ (
    .A(_1795_),
    .B(i_rst_n_bF$buf3),
    .Y(_1375_)
);

FILL FILL126450x122550 (
);

DFFPOSX1 _3915_ (
    .D(_1352_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_rf_if.read_buf1 [26])
);

FILL FILL_0__1982_ (
);

DFFPOSX1 _4033_ (
    .D(_1210_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_cpu.bufreg.data [16])
);

AND2X2 _1998_ (
    .A(_925_),
    .B(i_rst_n_bF$buf8),
    .Y(_1443_)
);

DFFPOSX1 _3724_ (
    .D(_1249_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(rreg0[3])
);

OAI22X1 _3304_ (
    .A(_379_),
    .B(_384_),
    .C(_385_),
    .D(_383_),
    .Y(_386_)
);

DFFPOSX1 _3953_ (
    .D(_1371_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_rf_if.read_buf1 [7])
);

INVX1 _3533_ (
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_552_)
);

NAND2X1 _3113_ (
    .A(i_rst_n_bF$buf5),
    .B(\u_cpu.branch_op ),
    .Y(_239_)
);

DFFPOSX1 _4071_ (
    .D(_1437_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [18])
);

NAND2X1 _2804_ (
    .A(\u_rf_if.read_buf1 [28]),
    .B(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_12_)
);

DFFSR _3762_ (
    .R(i_rst_n_bF$buf11),
    .S(vdd),
    .D(_1110_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(ibus_pending_rdt[19])
);

INVX1 _3342_ (
    .A(\u_cpu.bufreg.data [16]),
    .Y(_409_)
);

INVX1 _2613_ (
    .A(_1722_),
    .Y(_1723_)
);

DFFSR _3818_ (
    .R(i_rst_n_bF$buf11),
    .S(vdd),
    .D(_1078_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(current_wdata0_next_hint)
);

BUFX2 BUFX2_insert10 (
    .A(_673_),
    .Y(_673__bF$buf3)
);

BUFX2 BUFX2_insert11 (
    .A(_673_),
    .Y(_673__bF$buf2)
);

BUFX2 BUFX2_insert12 (
    .A(_673_),
    .Y(_673__bF$buf1)
);

BUFX2 BUFX2_insert13 (
    .A(_673_),
    .Y(_673__bF$buf0)
);

BUFX2 BUFX2_insert14 (
    .A(_212_),
    .Y(_212__bF$buf4)
);

BUFX2 BUFX2_insert15 (
    .A(_212_),
    .Y(_212__bF$buf3)
);

BUFX2 BUFX2_insert16 (
    .A(_212_),
    .Y(_212__bF$buf2)
);

BUFX2 BUFX2_insert17 (
    .A(_212_),
    .Y(_212__bF$buf1)
);

BUFX2 BUFX2_insert18 (
    .A(_212_),
    .Y(_212__bF$buf0)
);

BUFX2 BUFX2_insert19 (
    .A(_570_),
    .Y(_570__bF$buf4)
);

FILL FILL_0__1885_ (
);

DFFPOSX1 _3991_ (
    .D(_1191_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.bufreg.c_r )
);

OAI22X1 _3571_ (
    .A(_577_),
    .B(_212__bF$buf2),
    .C(_576_),
    .D(_570__bF$buf4),
    .Y(_1150_)
);

MUX2X1 _3151_ (
    .A(_1520_),
    .B(_267_),
    .S(_659__bF$buf4),
    .Y(_1260_)
);

MUX2X1 _2842_ (
    .A(\u_rf_if.read_buf0 [7]),
    .B(\u_rf_if.read_buf0 [8]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_41_)
);

NOR2X1 _2422_ (
    .A(_1544_),
    .B(_1542_),
    .Y(_1545_)
);

MUX2X1 _2002_ (
    .A(\u_cpu.bufreg.data [13]),
    .B(\u_cpu.ctrl.o_ibus_adr [13]),
    .S(_1006__bF$buf2),
    .Y(_921_)
);

MUX2X1 _3627_ (
    .A(_322_),
    .B(_819_),
    .S(_602__bF$buf1),
    .Y(_1119_)
);

OAI21X1 _3207_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .B(_296_),
    .C(_659__bF$buf3),
    .Y(_308_)
);

NAND2X1 _3380_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_429_)
);

INVX1 _2651_ (
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_1753_)
);

NAND3X1 _2231_ (
    .A(_726_),
    .B(_718_),
    .C(_721_),
    .Y(_717_)
);

DFFPOSX1 _3856_ (
    .D(_1323_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf0 [25])
);

OAI21X1 _3436_ (
    .A(_697_),
    .B(\u_mem_serial.shift_reg [26]),
    .C(_451_),
    .Y(_478_)
);

NAND2X1 _3016_ (
    .A(_171_),
    .B(_170_),
    .Y(_172_)
);

FILL FILL_0_CLKBUF1_insert51 (
);

MUX2X1 _1922_ (
    .A(\u_cpu.bufreg.data [2]),
    .B(\u_cpu.ctrl.o_ibus_adr [2]),
    .S(_1006__bF$buf3),
    .Y(_990_)
);

MUX2X1 _2707_ (
    .A(\u_rf_if.read_buf1 [4]),
    .B(\u_rf_if.read_buf1 [5]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1793_)
);

OAI21X1 _2880_ (
    .A(_22__bF$buf6),
    .B(_68_),
    .C(_69_),
    .Y(_70_)
);

NAND2X1 _2460_ (
    .A(_1575_),
    .B(_1582_),
    .Y(_1583_)
);

MUX2X1 _2040_ (
    .A(\u_mem_serial.shift_reg [17]),
    .B(\u_cpu.bufreg2.dlo [12]),
    .S(_994__bF$buf4),
    .Y(_888_)
);

OAI21X1 _3665_ (
    .A(\u_mem_serial.req_pending ),
    .B(\u_mem_serial.state [0]),
    .C(_1047_),
    .Y(_1046_)
);

INVX1 _3245_ (
    .A(rreg1[3]),
    .Y(_338_)
);

FILL FILL_0__3705_ (
);

AOI21X1 _2936_ (
    .A(_101_),
    .B(_22__bF$buf3),
    .C(_112_),
    .Y(_1320_)
);

NOR2X1 _2516_ (
    .A(_730_),
    .B(_657_),
    .Y(_1639_)
);

DFFSR _3894_ (
    .R(i_rst_n_bF$buf8),
    .S(vdd),
    .D(_1096_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(ibus_pending_rdt[5])
);

MUX2X1 _3474_ (
    .A(_505_),
    .B(_507_),
    .S(_450__bF$buf1),
    .Y(_1177_)
);

NAND2X1 _3054_ (
    .A(\u_rf_if.last_req_key [6]),
    .B(_1488_),
    .Y(_199_)
);

MUX2X1 _1960_ (
    .A(\u_mem_serial.shift_reg [7]),
    .B(\u_cpu.bufreg2.dlo [2]),
    .S(_994__bF$buf2),
    .Y(_958_)
);

OAI21X1 _2745_ (
    .A(_1783__bF$buf4),
    .B(_1820_),
    .C(_1821_),
    .Y(_1822_)
);

OAI21X1 _2325_ (
    .A(ren),
    .B(\u_rf_if.o_waddr [1]),
    .C(_1085_),
    .Y(_1086_)
);

OAI21X1 _3283_ (
    .A(_673__bF$buf2),
    .B(_674__bF$buf0),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_368_)
);

DFFPOSX1 _4068_ (
    .D(_1227_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(rreg0[4])
);

OAI21X1 _2974_ (
    .A(_673__bF$buf1),
    .B(_674__bF$buf1),
    .C(\u_rf_if.rreg1_latched [0]),
    .Y(_138_)
);

NOR2X1 _2554_ (
    .A(_1670_),
    .B(_1671_),
    .Y(_1672_)
);

AND2X2 _2134_ (
    .A(_806_),
    .B(i_rst_n_bF$buf7),
    .Y(_1426_)
);

DFFPOSX1 _3759_ (
    .D(_1276_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.state.cnt_r [2])
);

MUX2X1 _3339_ (
    .A(_406_),
    .B(_407_),
    .S(_1536__bF$buf3),
    .Y(_1212_)
);

INVX1 _3092_ (
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_222_)
);

MUX2X1 _2783_ (
    .A(\u_rf_if.read_buf1 [23]),
    .B(\u_rf_if.read_buf1 [24]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1850_)
);

NAND2X1 _2363_ (
    .A(_1489_),
    .B(_1490_),
    .Y(_1491_)
);

DFFPOSX1 _3988_ (
    .D(_1392_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_rf_if.write_wait [1])
);

INVX1 _3568_ (
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_576_)
);

INVX1 _3148_ (
    .A(ibus_pending_rdt[3]),
    .Y(_265_)
);

FILL FILL_0__3608_ (
);

NAND2X1 _2839_ (
    .A(\u_rf_if.read_buf0 [5]),
    .B(_22__bF$buf4),
    .Y(_39_)
);

AOI21X1 _2419_ (
    .A(_1539_),
    .B(_1541_),
    .C(_702_),
    .Y(_1542_)
);

NOR2X1 _2592_ (
    .A(_1701_),
    .B(_1702_),
    .Y(_1704_)
);

AOI21X1 _2172_ (
    .A(_1009_),
    .B(_772_),
    .C(_1070__bF$buf1),
    .Y(_771_)
);

DFFPOSX1 _3797_ (
    .D(_1295_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_rf_if.issue_chunk [3])
);

MUX2X1 _3377_ (
    .A(_427_),
    .B(_397_),
    .S(_1536__bF$buf1),
    .Y(_1194_)
);

FILL FILL_0__2632_ (
);

BUFX2 _1863_ (
    .A(_1855_),
    .Y(o_mem_sync)
);

NAND2X1 _2648_ (
    .A(\u_rf_if.stream_cnt [4]),
    .B(_1749_),
    .Y(_1750_)
);

NAND3X1 _2228_ (
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .C(\u_cpu.state.o_cnt [2]),
    .Y(_720_)
);

OAI21X1 _3186_ (
    .A(_659__bF$buf2),
    .B(_292_),
    .C(_289_),
    .Y(_1250_)
);

FILL FILL_0__2861_ (
);

OAI21X1 _1919_ (
    .A(_995_),
    .B(_1004_),
    .C(_993_),
    .Y(_992_)
);

AND2X2 _2877_ (
    .A(_67_),
    .B(i_rst_n_bF$buf1),
    .Y(_1334_)
);

NAND3X1 _2457_ (
    .A(_1563_),
    .B(_1577_),
    .C(_1564_),
    .Y(_1580_)
);

OAI21X1 _2037_ (
    .A(_896_),
    .B(_973__bF$buf2),
    .C(_891_),
    .Y(_890_)
);

FILL FILL127350x111750 (
);

NAND2X1 _2686_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1749_),
    .Y(_1777_)
);

INVX1 _2266_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .Y(_682_)
);

OAI21X1 _1957_ (
    .A(_966_),
    .B(_973__bF$buf0),
    .C(_961_),
    .Y(_960_)
);

FILL FILL_0__3684_ (
);

INVX1 _2495_ (
    .A(\u_rf_if.tx_state [0]),
    .Y(_1618_)
);

NOR2X1 _2075_ (
    .A(_1023__bF$buf5),
    .B(_858_),
    .Y(_857_)
);

FILL FILL_0__2535_ (
);

DFFPOSX1 _3912_ (
    .D(_1156_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

AND2X2 _3089_ (
    .A(i_rst_n_bF$buf5),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_1275_)
);

FILL FILL_0__2764_ (
);

DFFPOSX1 _4030_ (
    .D(_1417_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(_1858_)
);

NOR2X1 _1995_ (
    .A(_1023__bF$buf4),
    .B(_928_),
    .Y(_927_)
);

DFFPOSX1 _3721_ (
    .D(_1456_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [5])
);

AOI21X1 _3301_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_1543_),
    .C(_382_),
    .Y(_383_)
);

INVX1 _2589_ (
    .A(_1471_),
    .Y(_1701_)
);

NOR2X1 _2169_ (
    .A(_1002__bF$buf4),
    .B(_775_),
    .Y(_774_)
);

DFFPOSX1 _3950_ (
    .D(_1174_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_cpu.bufreg2.dlo [14])
);

OAI21X1 _3530_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(_549_),
    .Y(_550_)
);

AOI22X1 _3110_ (
    .A(_229_),
    .B(_231_),
    .C(_234_),
    .D(_235_),
    .Y(_236_)
);

OAI21X1 _2801_ (
    .A(_1783__bF$buf4),
    .B(_8_),
    .C(_9_),
    .Y(_10_)
);

FILL FILL126750x122550 (
);

NAND3X1 _2398_ (
    .A(_725_),
    .B(_1062_),
    .C(_1520_),
    .Y(_1521_)
);

FILL FILL_0__2438_ (
);

NAND3X1 _2610_ (
    .A(_1639_),
    .B(_1717_),
    .C(_1719_),
    .Y(_1720_)
);

DFFPOSX1 _3815_ (
    .D(_1304_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_rf_if.rreg1_latched [3])
);

FILL FILL_0__2667_ (
);

NOR2X1 _1898_ (
    .A(_1013_),
    .B(_1014_),
    .Y(_1012_)
);

OAI21X1 _3624_ (
    .A(ibus_pending_ack_bF$buf2),
    .B(_674__bF$buf2),
    .C(mem_ibus_ack),
    .Y(_602_)
);

OAI21X1 _3204_ (
    .A(\u_cpu.csr_imm ),
    .B(_296_),
    .C(_659__bF$buf3),
    .Y(_306_)
);

INVX2 _3853_ (
    .A(\u_cpu.branch_op ),
    .Y(_1063_)
);

NOR2X1 _3433_ (
    .A(_474_),
    .B(_469_),
    .Y(_475_)
);

AOI21X1 _3013_ (
    .A(_169_),
    .B(_166_),
    .C(_1070__bF$buf0),
    .Y(_1300_)
);

NAND2X1 _2704_ (
    .A(\u_rf_if.read_buf1 [2]),
    .B(_1783__bF$buf0),
    .Y(_1791_)
);

DFFPOSX1 _3909_ (
    .D(_1349_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_rf_if.read_buf1 [29])
);

NOR2X1 _3662_ (
    .A(_1046_),
    .B(_1048_),
    .Y(_1043_)
);

MUX2X1 _3242_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_335_),
    .S(_659__bF$buf4),
    .Y(_336_)
);

DFFPOSX1 _4027_ (
    .D(_1415_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.tx_state [4])
);

AOI21X1 _2933_ (
    .A(_110_),
    .B(_109_),
    .C(_1070__bF$buf2),
    .Y(_1321_)
);

NAND2X1 _2513_ (
    .A(_1635_),
    .B(_737_),
    .Y(_1636_)
);

DFFPOSX1 _3718_ (
    .D(_1246_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(\u_cpu.csr_imm )
);

DFFPOSX1 _3891_ (
    .D(_1340_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(\u_rf_if.read_buf0 [8])
);

INVX1 _3471_ (
    .A(\u_cpu.bufreg2.dlo [17]),
    .Y(_505_)
);

INVX1 _3051_ (
    .A(_1639_),
    .Y(_197_)
);

FILL FILL_0__3511_ (
);

AND2X2 _2742_ (
    .A(_1819_),
    .B(i_rst_n_bF$buf3),
    .Y(_1367_)
);

AND2X2 _2322_ (
    .A(_1076_),
    .B(\u_rf_if.last_req_key [3]),
    .Y(_1083_)
);

DFFPOSX1 _3947_ (
    .D(_1368_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_rf_if.read_buf1 [10])
);

INVX1 _3527_ (
    .A(\u_cpu.bufreg2.dlo [3]),
    .Y(_547_)
);

AOI21X1 _3107_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_1501_),
    .C(_1569_),
    .Y(_233_)
);

FILL FILL127050x61350 (
);

NAND2X1 _3280_ (
    .A(_365_),
    .B(_1692__bF$buf2),
    .Y(_366_)
);

FILL FILL127050x28950 (
);

DFFPOSX1 _4065_ (
    .D(_1434_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [21])
);

MUX2X1 _2971_ (
    .A(\u_rf_if.rreg1_latched [3]),
    .B(\u_rf_if.rreg0_latched [3]),
    .S(\u_rf_if.issue_sel ),
    .Y(_136_)
);

AOI21X1 _2551_ (
    .A(_1052_),
    .B(_1669_),
    .C(_1070__bF$buf4),
    .Y(_1408_)
);

NOR2X1 _2131_ (
    .A(_1023__bF$buf3),
    .B(_809_),
    .Y(_808_)
);

DFFPOSX1 _3756_ (
    .D(_1273_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

INVX1 _3336_ (
    .A(\u_cpu.bufreg.data [19]),
    .Y(_406_)
);

NOR2X1 _2607_ (
    .A(_1716_),
    .B(_1715_),
    .Y(_1717_)
);

NAND2X1 _2780_ (
    .A(\u_rf_if.read_buf1 [21]),
    .B(_1783__bF$buf5),
    .Y(_1848_)
);

NAND3X1 _2360_ (
    .A(_736_),
    .B(_732_),
    .C(_1487_),
    .Y(_1488_)
);

DFFPOSX1 _3985_ (
    .D(_1188_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.bufreg2.dhi [5])
);

OAI22X1 _3565_ (
    .A(_574_),
    .B(_212__bF$buf2),
    .C(_573_),
    .D(_570__bF$buf4),
    .Y(_1153_)
);

MUX2X1 _3145_ (
    .A(_262_),
    .B(_261_),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_263_)
);

OAI21X1 _2836_ (
    .A(_22__bF$buf4),
    .B(_35_),
    .C(_36_),
    .Y(_37_)
);

NAND3X1 _2416_ (
    .A(_686_),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .C(_1522_),
    .Y(_1539_)
);

DFFPOSX1 _3794_ (
    .D(_1072_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\gen_int_sys_clk.clk_div [3])
);

MUX2X1 _3374_ (
    .A(_424_),
    .B(_425_),
    .S(_704_),
    .Y(_426_)
);

FILL FILL_0__3414_ (
);

BUFX2 _1860_ (
    .A(_1858_),
    .Y(o_rf_sync)
);

NAND2X1 _2645_ (
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1748_)
);

NAND2X1 _2225_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_723_)
);

INVX1 _3183_ (
    .A(ibus_pending_rdt[30]),
    .Y(_290_)
);

INVX1 _1916_ (
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_995_)
);

FILL FILL_0__3643_ (
);

MUX2X1 _2874_ (
    .A(\u_rf_if.read_buf0 [15]),
    .B(\u_rf_if.read_buf0 [16]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_65_)
);

NAND2X1 _2454_ (
    .A(_1063_),
    .B(_1505_),
    .Y(_1577_)
);

MUX2X1 _2034_ (
    .A(\u_cpu.bufreg.data [17]),
    .B(\u_cpu.ctrl.o_ibus_adr [17]),
    .S(_1006__bF$buf4),
    .Y(_893_)
);

AOI21X1 _3659_ (
    .A(_1041_),
    .B(_1045_),
    .C(_1049_),
    .Y(_1461_)
);

AOI21X1 _3239_ (
    .A(_315_),
    .B(_332_),
    .C(_333_),
    .Y(_1238_)
);

OAI21X1 _2683_ (
    .A(_1753_),
    .B(_1754_),
    .C(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1775_)
);

NAND2X1 _2263_ (
    .A(_687_),
    .B(_686_),
    .Y(_685_)
);

DFFPOSX1 _3888_ (
    .D(_1150_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

NAND2X1 _3468_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(_889_),
    .Y(_503_)
);

NAND3X1 _3048_ (
    .A(_736_),
    .B(_1638_),
    .C(_1666_),
    .Y(_195_)
);

MUX2X1 _1954_ (
    .A(\u_cpu.bufreg.data [7]),
    .B(\u_cpu.ctrl.o_ibus_adr [7]),
    .S(_1006__bF$buf4),
    .Y(_963_)
);

MUX2X1 _2739_ (
    .A(\u_rf_if.read_buf1 [12]),
    .B(\u_rf_if.read_buf1 [13]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1817_)
);

OR2X2 _2319_ (
    .A(_735_),
    .B(raddr[3]),
    .Y(_1074_)
);

OAI21X1 _2492_ (
    .A(_1590_),
    .B(_1605_),
    .C(_1614_),
    .Y(_1615_)
);

MUX2X1 _2072_ (
    .A(\u_mem_serial.shift_reg [21]),
    .B(\u_cpu.bufreg2.dlo [16]),
    .S(_994__bF$buf0),
    .Y(_860_)
);

OAI21X1 _3697_ (
    .A(_622_),
    .B(_626_),
    .C(_631_),
    .Y(_632_)
);

AOI21X1 _3277_ (
    .A(_351_),
    .B(_684_),
    .C(_363_),
    .Y(_1230_)
);

MUX2X1 _2968_ (
    .A(\u_rf_if.rreg1_latched [2]),
    .B(\u_rf_if.rreg0_latched [2]),
    .S(\u_rf_if.issue_sel ),
    .Y(_134_)
);

AOI21X1 _2548_ (
    .A(_1667_),
    .B(_1665_),
    .C(_1070__bF$buf6),
    .Y(_1409_)
);

MUX2X1 _2128_ (
    .A(\u_mem_serial.shift_reg [28]),
    .B(\u_cpu.bufreg2.dlo [23]),
    .S(_994__bF$buf3),
    .Y(_811_)
);

MUX2X1 _3086_ (
    .A(\u_mem_serial.active_we ),
    .B(_786_),
    .S(_1052_),
    .Y(_220_)
);

FILL FILL127350x36150 (
);

FILL FILL_0__3546_ (
);

MUX2X1 _1992_ (
    .A(\u_mem_serial.shift_reg [11]),
    .B(\u_cpu.bufreg2.dlo [6]),
    .S(_994__bF$buf4),
    .Y(_930_)
);

OAI21X1 _2777_ (
    .A(_1783__bF$buf5),
    .B(_1844_),
    .C(_1845_),
    .Y(_1846_)
);

NAND2X1 _2357_ (
    .A(_1481_),
    .B(_1484_),
    .Y(_1485_)
);

FILL FILL_0__2570_ (
);

INVX1 _2586_ (
    .A(_1698_),
    .Y(_1699_)
);

AND2X2 _2166_ (
    .A(_778_),
    .B(_779_),
    .Y(_777_)
);

NAND2X1 _2395_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(_680_),
    .Y(_1518_)
);

DFFPOSX1 _3812_ (
    .D(_1132_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

FILL FILL_0__3449_ (
);

NAND2X1 _1895_ (
    .A(_1038_),
    .B(_1018_),
    .Y(_1015_)
);

NAND2X1 _3621_ (
    .A(_1066_),
    .B(_236_),
    .Y(_601_)
);

OAI21X1 _3201_ (
    .A(rreg0[1]),
    .B(_296_),
    .C(_659__bF$buf3),
    .Y(_304_)
);

FILL FILL_0__2473_ (
);

FILL FILL_0__3678_ (
);

AOI21X1 _2489_ (
    .A(_1554_),
    .B(\u_cpu.state.cnt_r [2]),
    .C(_1609_),
    .Y(_1612_)
);

OAI21X1 _2069_ (
    .A(_868_),
    .B(_973__bF$buf5),
    .C(_863_),
    .Y(_862_)
);

DFFPOSX1 _3850_ (
    .D(_1320_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf0 [28])
);

OAI21X1 _3430_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(_472_),
    .C(_467_),
    .Y(_473_)
);

INVX1 _3010_ (
    .A(ibus_pending_rdt[18]),
    .Y(_167_)
);

OAI21X1 _2701_ (
    .A(_1783__bF$buf0),
    .B(_1787_),
    .C(_1788_),
    .Y(_1789_)
);

DFFSR _3906_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1099_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(ibus_pending_rdt[8])
);

INVX1 _2298_ (
    .A(\u_rf_if.last_req_key [4]),
    .Y(_650_)
);

DFFPOSX1 _4024_ (
    .D(_1206_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_cpu.bufreg.data [12])
);

OAI21X1 _1989_ (
    .A(_938_),
    .B(_973__bF$buf6),
    .C(_933_),
    .Y(_932_)
);

OAI21X1 _2930_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_106_),
    .C(_107_),
    .Y(_108_)
);

AOI21X1 _2510_ (
    .A(_1470_),
    .B(_1623_),
    .C(_1632_),
    .Y(_1633_)
);

DFFPOSX1 _3715_ (
    .D(_1453_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [2])
);

DFFPOSX1 _3944_ (
    .D(_1171_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_cpu.bufreg2.dlo [11])
);

NAND2X1 _3524_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(_261_),
    .Y(_545_)
);

NAND2X1 _3104_ (
    .A(_1581_),
    .B(_1583_),
    .Y(_230_)
);

FILL FILL_0__2376_ (
);

DFFPOSX1 _4062_ (
    .D(_1224_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(rreg1[4])
);

DFFPOSX1 _3753_ (
    .D(_1270_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.state.cnt_r [3])
);

MUX2X1 _3333_ (
    .A(_403_),
    .B(_404_),
    .S(_1536__bF$buf3),
    .Y(_1215_)
);

NAND2X1 _2604_ (
    .A(_1708_),
    .B(_1713_),
    .Y(_1714_)
);

DFFPOSX1 _3809_ (
    .D(_1301_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_rf_if.rreg0_latched [2])
);

DFFPOSX1 _3982_ (
    .D(_1388_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_rf_if.ready_pulse )
);

INVX1 _3562_ (
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_573_)
);

MUX2X1 _3142_ (
    .A(_787_),
    .B(_260_),
    .S(_659__bF$buf2),
    .Y(_1262_)
);

AND2X2 _2833_ (
    .A(_34_),
    .B(i_rst_n_bF$buf10),
    .Y(_1345_)
);

NAND2X1 _2413_ (
    .A(_1535_),
    .B(_1533_),
    .Y(_1536_)
);

NAND2X1 _3618_ (
    .A(_1066_),
    .B(_232_),
    .Y(_599_)
);

DFFPOSX1 _3791_ (
    .D(_1292_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_if.last_req_key [2])
);

AOI21X1 _3371_ (
    .A(_422_),
    .B(_1536__bF$buf1),
    .C(_423_),
    .Y(_1196_)
);

MUX2X1 _2642_ (
    .A(_1745_),
    .B(_847_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_1746_)
);

INVX1 _2222_ (
    .A(\u_cpu.state.init_done ),
    .Y(_726_)
);

DFFPOSX1 _3847_ (
    .D(_1140_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

NOR2X1 _3427_ (
    .A(_776_),
    .B(_469_),
    .Y(_470_)
);

NAND2X1 _3007_ (
    .A(_164_),
    .B(_1692__bF$buf4),
    .Y(_165_)
);

AOI21X1 _3180_ (
    .A(_278_),
    .B(_1024_),
    .C(mem_dbus_ack_bF$buf6),
    .Y(_288_)
);

OAI21X1 _1913_ (
    .A(_1008_),
    .B(_1004_),
    .C(_998_),
    .Y(_997_)
);

FILL FILL_0__2279_ (
);

NAND2X1 _2871_ (
    .A(\u_rf_if.read_buf0 [13]),
    .B(_22__bF$buf5),
    .Y(_63_)
);

OAI21X1 _2451_ (
    .A(_1559_),
    .B(_1560_),
    .C(_1573_),
    .Y(_1574_)
);

INVX1 _2031_ (
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_896_)
);

INVX1 _3656_ (
    .A(ibus_pending_rdt[0]),
    .Y(_604_)
);

MUX2X1 _3236_ (
    .A(_330_),
    .B(_833_),
    .S(ibus_pending_ack_bF$buf4),
    .Y(_331_)
);

AOI21X1 _2927_ (
    .A(_105_),
    .B(_104_),
    .C(_1070__bF$buf2),
    .Y(_1322_)
);

NAND2X1 _2507_ (
    .A(_1629_),
    .B(_1628_),
    .Y(_1630_)
);

OAI21X1 _2680_ (
    .A(\u_rf_if.stream_cnt [0]),
    .B(\u_rf_if.stream_active_bF$buf6 ),
    .C(i_rst_n_bF$buf6),
    .Y(_1773_)
);

NAND2X1 _2260_ (
    .A(_1066_),
    .B(_704_),
    .Y(_688_)
);

FILL FILL127050x14550 (
);

DFFPOSX1 _3885_ (
    .D(_1337_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf0 [11])
);

OAI21X1 _3465_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [20]),
    .C(_500_),
    .Y(_501_)
);

NAND2X1 _3045_ (
    .A(\u_rf_if.last_req_key [3]),
    .B(_1488_),
    .Y(_193_)
);

FILL FILL_0__2300_ (
);

INVX1 _1951_ (
    .A(\u_mem_serial.shift_reg [7]),
    .Y(_966_)
);

NAND2X1 _2736_ (
    .A(\u_rf_if.read_buf1 [10]),
    .B(_1783__bF$buf2),
    .Y(_1815_)
);

NOR2X1 _2316_ (
    .A(_612_),
    .B(_608_),
    .Y(_607_)
);

OAI21X1 _3694_ (
    .A(ibus_pending_ack_bF$buf4),
    .B(_627_),
    .C(_628_),
    .Y(_629_)
);

MUX2X1 _3274_ (
    .A(_360_),
    .B(_959_),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_361_)
);

DFFPOSX1 _4059_ (
    .D(_1431_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [24])
);

AOI21X1 _2965_ (
    .A(\u_rf_if.issue_sel ),
    .B(_130_),
    .C(_131_),
    .Y(_132_)
);

NAND2X1 _2545_ (
    .A(\u_rf_if.last_req_key [10]),
    .B(_1488_),
    .Y(_1665_)
);

OAI21X1 _2125_ (
    .A(_819_),
    .B(_973__bF$buf4),
    .C(_814_),
    .Y(_813_)
);

OAI21X1 _3083_ (
    .A(_1002__bF$buf4),
    .B(_217_),
    .C(_785_),
    .Y(_218_)
);

AND2X2 _2774_ (
    .A(_1843_),
    .B(i_rst_n_bF$buf6),
    .Y(_1359_)
);

NAND2X1 _2354_ (
    .A(ren),
    .B(raddr[7]),
    .Y(_1482_)
);

DFFPOSX1 _3979_ (
    .D(_1386_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_rf_if.stream_active )
);

OAI22X1 _3559_ (
    .A(_571_),
    .B(_212__bF$buf4),
    .C(_568_),
    .D(_570__bF$buf0),
    .Y(_1156_)
);

INVX1 _3139_ (
    .A(ibus_pending_rdt[5]),
    .Y(_258_)
);

DFFPOSX1 _4097_ (
    .D(_1450_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [5])
);

FILL FILL_0__3352_ (
);

AOI21X1 _2583_ (
    .A(_659__bF$buf1),
    .B(_1696_),
    .C(_1687_),
    .Y(_1403_)
);

INVX1 _2163_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_780_)
);

DFFPOSX1 _3788_ (
    .D(_1123_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.alu.cmp_r )
);

INVX1 _3368_ (
    .A(\u_cpu.bufreg.data [3]),
    .Y(_422_)
);

FILL FILL_0__2203_ (
);

FILL FILL_0__3408_ (
);

FILL FILL_0__3581_ (
);

AOI21X1 _2639_ (
    .A(_1739_),
    .B(_1742_),
    .C(_1743_),
    .Y(_1394_)
);

INVX1 _2219_ (
    .A(_730_),
    .Y(_729_)
);

INVX1 _2392_ (
    .A(_1514_),
    .Y(_1515_)
);

OAI22X1 _3597_ (
    .A(_590_),
    .B(_212__bF$buf3),
    .C(_589_),
    .D(_570__bF$buf2),
    .Y(_1137_)
);

OAI21X1 _3177_ (
    .A(_705_),
    .B(_1692__bF$buf1),
    .C(_286_),
    .Y(_1253_)
);

FILL FILL_0__2432_ (
);

OAI21X1 _2868_ (
    .A(_22__bF$buf5),
    .B(_59_),
    .C(_60_),
    .Y(_61_)
);

NAND2X1 _2448_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_1570_),
    .Y(_1571_)
);

OAI21X1 _2028_ (
    .A(_901_),
    .B(_899_),
    .C(_973__bF$buf0),
    .Y(_898_)
);

INVX1 _1892_ (
    .A(_1019_),
    .Y(_1018_)
);

NAND3X1 _2677_ (
    .A(_1769_),
    .B(_1770_),
    .C(_1767_),
    .Y(_1771_)
);

AOI21X1 _2257_ (
    .A(_693_),
    .B(_692_),
    .C(\u_cpu.branch_op ),
    .Y(_691_)
);

OAI21X1 _1948_ (
    .A(_971_),
    .B(_969_),
    .C(_973__bF$buf3),
    .Y(_968_)
);

FILL FILL_0__3255_ (
);

NOR2X1 _2486_ (
    .A(_1608_),
    .B(_1607_),
    .Y(_1609_)
);

MUX2X1 _2066_ (
    .A(\u_cpu.bufreg.data [21]),
    .B(\u_cpu.ctrl.o_ibus_adr [21]),
    .S(_1006__bF$buf0),
    .Y(_865_)
);

FILL FILL_0__2106_ (
);

FILL FILL_0__3484_ (
);

DFFPOSX1 _3903_ (
    .D(_1346_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf0 [2])
);

NAND2X1 _2295_ (
    .A(\u_rf_if.last_req_key [8]),
    .B(_654_),
    .Y(_653_)
);

FILL FILL_0__2335_ (
);

DFFPOSX1 _4021_ (
    .D(_1410_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.req_seen )
);

MUX2X1 _1986_ (
    .A(\u_cpu.bufreg.data [11]),
    .B(\u_cpu.ctrl.o_ibus_adr [11]),
    .S(_1006__bF$buf2),
    .Y(_935_)
);

MUX2X1 _3712_ (
    .A(_369_),
    .B(_798_),
    .S(_602__bF$buf3),
    .Y(_1071_)
);

DFFPOSX1 _3941_ (
    .D(_1365_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(\u_rf_if.read_buf1 [13])
);

OAI21X1 _3521_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [6]),
    .C(_542_),
    .Y(_543_)
);

AND2X2 _3101_ (
    .A(i_rst_n_bF$buf5),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_1270_)
);

FILL FILL_0__3158_ (
);

OR2X2 _2389_ (
    .A(_1511_),
    .B(_1508_),
    .Y(_1512_)
);

DFFPOSX1 _3750_ (
    .D(_1268_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.state.init_done )
);

INVX1 _3330_ (
    .A(\u_cpu.bufreg.data [22]),
    .Y(_403_)
);

FILL FILL_0__2009_ (
);

FILL FILL_0__2182_ (
);

NOR2X1 _2601_ (
    .A(\u_rf_if.issue_sel ),
    .B(\u_rf_if.issue_idx [5]),
    .Y(_1711_)
);

FILL FILL_0__3387_ (
);

DFFSR _3806_ (
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1075_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(rf_write_drain_busy)
);

OAI21X1 _2198_ (
    .A(_1014_),
    .B(_750_),
    .C(_1023__bF$buf2),
    .Y(_749_)
);

FILL FILL_0__2238_ (
);

INVX1 _1889_ (
    .A(\u_mem_serial.bit_count [4]),
    .Y(_1021_)
);

MUX2X1 _2830_ (
    .A(\u_rf_if.read_buf0 [4]),
    .B(\u_rf_if.read_buf0 [5]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_32_)
);

NAND3X1 _2410_ (
    .A(\u_cpu.state.init_done ),
    .B(_727_),
    .C(_1532_),
    .Y(_1533_)
);

AOI21X1 _3615_ (
    .A(_1551_),
    .B(_1530_),
    .C(_688_),
    .Y(_1126_)
);

DFFPOSX1 _3844_ (
    .D(_1317_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_rf_if.o_waddr [1])
);

NAND2X1 _3424_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(_826_),
    .Y(_467_)
);

OAI21X1 _3004_ (
    .A(_673__bF$buf3),
    .B(_674__bF$buf3),
    .C(\u_rf_if.rreg0_latched [2]),
    .Y(_162_)
);

NAND2X1 _1910_ (
    .A(i_mem_miso),
    .B(_1001_),
    .Y(_1000_)
);

MUX2X1 _3653_ (
    .A(_269_),
    .B(_552_),
    .S(_602__bF$buf4),
    .Y(_1093_)
);

NOR2X1 _3233_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_315_),
    .Y(_329_)
);

DFFPOSX1 _4018_ (
    .D(_1408_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(_1855_)
);

FILL FILL_0__2085_ (
);

OAI21X1 _2924_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_101_),
    .C(_102_),
    .Y(_103_)
);

NAND3X1 _2504_ (
    .A(_1624_),
    .B(_1626_),
    .C(_671_),
    .Y(_1627_)
);

NAND2X1 _3709_ (
    .A(_638_),
    .B(_602__bF$buf1),
    .Y(_1073_)
);

DFFSR _3882_ (
    .R(i_rst_n_bF$buf7),
    .S(vdd),
    .D(_1093_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(ibus_pending_rdt[2])
);

MUX2X1 _3462_ (
    .A(_496_),
    .B(_498_),
    .S(_450__bF$buf1),
    .Y(_1180_)
);

AOI21X1 _3042_ (
    .A(_189_),
    .B(_190_),
    .C(_1070__bF$buf6),
    .Y(_1292_)
);

OAI21X1 _2733_ (
    .A(_1783__bF$buf6),
    .B(_1811_),
    .C(_1812_),
    .Y(_1813_)
);

NAND2X1 _2313_ (
    .A(_647_),
    .B(_671_),
    .Y(_610_)
);

DFFPOSX1 _3938_ (
    .D(_1168_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_cpu.bufreg2.dlo [8])
);

INVX1 _3518_ (
    .A(\u_cpu.bufreg2.dlo [5]),
    .Y(_540_)
);

AOI22X1 _3691_ (
    .A(_253_),
    .B(_256_),
    .C(_625_),
    .D(_285_),
    .Y(_626_)
);

OAI21X1 _3271_ (
    .A(_659__bF$buf1),
    .B(_357_),
    .C(_358_),
    .Y(_359_)
);

DFFPOSX1 _4056_ (
    .D(_1221_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg.data [27])
);

FILL FILL126750x50550 (
);

FILL FILL_0__3311_ (
);

NAND2X1 _2962_ (
    .A(i_rst_n_bF$buf4),
    .B(raddr[5]),
    .Y(_129_)
);

INVX1 _2542_ (
    .A(\u_rf_if.req_seen ),
    .Y(_1663_)
);

MUX2X1 _2122_ (
    .A(\u_cpu.bufreg.data [28]),
    .B(\u_cpu.ctrl.o_ibus_adr [28]),
    .S(_1006__bF$buf3),
    .Y(_816_)
);

DFFPOSX1 _3747_ (
    .D(_1266_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.active_ibus )
);

MUX2X1 _3327_ (
    .A(_400_),
    .B(_401_),
    .S(_1536__bF$buf4),
    .Y(_1218_)
);

OAI21X1 _3080_ (
    .A(_1002__bF$buf4),
    .B(_743_),
    .C(_747_),
    .Y(_216_)
);

MUX2X1 _2771_ (
    .A(\u_rf_if.read_buf1 [20]),
    .B(\u_rf_if.read_buf1 [21]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_1841_)
);

INVX1 _2351_ (
    .A(_640_),
    .Y(_1479_)
);

DFFPOSX1 _3976_ (
    .D(_1383_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_rf_if.rcnt [2])
);

INVX8 _3556_ (
    .A(_214_),
    .Y(_570_)
);

MUX2X1 _3136_ (
    .A(_255_),
    .B(_931_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_256_)
);

DFFPOSX1 _4094_ (
    .D(_1240_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

NAND2X1 _2827_ (
    .A(\u_rf_if.read_buf0 [2]),
    .B(_22__bF$buf4),
    .Y(_30_)
);

OR2X2 _2407_ (
    .A(_1529_),
    .B(_1519_),
    .Y(_1530_)
);

NAND2X1 _2580_ (
    .A(_1694_),
    .B(_1692__bF$buf4),
    .Y(_1695_)
);

NAND3X1 _2160_ (
    .A(_788_),
    .B(_783_),
    .C(_973__bF$buf1),
    .Y(_782_)
);

DFFPOSX1 _3785_ (
    .D(_1289_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.last_req_key [5])
);

MUX2X1 _3365_ (
    .A(_419_),
    .B(_420_),
    .S(_1536__bF$buf4),
    .Y(_1199_)
);

AOI21X1 _2636_ (
    .A(_1739_),
    .B(_1738_),
    .C(_1741_),
    .Y(_1395_)
);

OAI21X1 _2216_ (
    .A(_734_),
    .B(_733_),
    .C(_735_),
    .Y(_732_)
);

INVX1 _3594_ (
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_589_)
);

NAND2X1 _3174_ (
    .A(ibus_pending_ack_bF$buf4),
    .B(_283_),
    .Y(_284_)
);

OAI21X1 _1907_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_1019_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_1003_)
);

FILL FILL_0__3214_ (
);

AND2X2 _2865_ (
    .A(_58_),
    .B(i_rst_n_bF$buf1),
    .Y(_1337_)
);

OAI21X1 _2445_ (
    .A(_1559_),
    .B(_1560_),
    .C(_1567_),
    .Y(_1568_)
);

NOR2X1 _2025_ (
    .A(_1002__bF$buf1),
    .B(_902_),
    .Y(_901_)
);

INVX1 _2674_ (
    .A(_1768_),
    .Y(_1384_)
);

INVX1 _2254_ (
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_694_)
);

DFFPOSX1 _3879_ (
    .D(_1334_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_rf_if.read_buf0 [14])
);

INVX1 _3459_ (
    .A(\u_cpu.bufreg2.dlo [20]),
    .Y(_496_)
);

AOI21X1 _3039_ (
    .A(_187_),
    .B(_188_),
    .C(_1070__bF$buf6),
    .Y(_1293_)
);

NOR2X1 _1945_ (
    .A(_1002__bF$buf0),
    .B(_972_),
    .Y(_971_)
);

INVX1 _2483_ (
    .A(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1606_)
);

INVX1 _2063_ (
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_868_)
);

INVX1 _3688_ (
    .A(_260_),
    .Y(_623_)
);

INVX1 _3268_ (
    .A(ibus_pending_rdt[9]),
    .Y(_356_)
);

FILL FILL_0__3061_ (
);

MUX2X1 _2959_ (
    .A(\u_rf_if.rreg1_latched [0]),
    .B(\u_rf_if.rreg0_latched [0]),
    .S(\u_rf_if.issue_sel ),
    .Y(_127_)
);

OAI21X1 _2539_ (
    .A(\u_rf_if.shift_rx [0]),
    .B(_1659_),
    .C(i_rst_n_bF$buf10),
    .Y(_1661_)
);

INVX1 _2119_ (
    .A(\u_mem_serial.shift_reg [28]),
    .Y(_819_)
);

FILL FILL127350x43350 (
);

DFFPOSX1 _3900_ (
    .D(_1153_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

OAI21X1 _2292_ (
    .A(_730_),
    .B(_657_),
    .C(_667_),
    .Y(_656_)
);

MUX2X1 _3497_ (
    .A(_522_),
    .B(_524_),
    .S(_450__bF$buf0),
    .Y(_1171_)
);

NOR2X1 _3077_ (
    .A(_1070__bF$buf1),
    .B(_688_),
    .Y(_214_)
);

FILL FILL_0__3117_ (
);

INVX1 _1983_ (
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_938_)
);

FILL FILL_0__3290_ (
);

NAND2X1 _2768_ (
    .A(\u_rf_if.read_buf1 [18]),
    .B(_1783__bF$buf5),
    .Y(_1839_)
);

NOR2X1 _2348_ (
    .A(_1089_),
    .B(_1475_),
    .Y(_1476_)
);

FILL FILL_0__2141_ (
);

NAND2X1 _2997_ (
    .A(_156_),
    .B(_1692__bF$buf2),
    .Y(_157_)
);

INVX8 _2577_ (
    .A(_659__bF$buf5),
    .Y(_1692_)
);

OAI21X1 _2157_ (
    .A(\u_mem_serial.state [1]),
    .B(_1024_),
    .C(_786_),
    .Y(_785_)
);

NOR2X1 _2386_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_1509_)
);

DFFPOSX1 _3803_ (
    .D(_1298_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_rf_if.issue_chunk [0])
);

AOI21X1 _2195_ (
    .A(_753_),
    .B(_752_),
    .C(_1070__bF$buf1),
    .Y(_1419_)
);

INVX2 _1886_ (
    .A(\u_mem_serial.state [0]),
    .Y(_1024_)
);

FILL FILL_0__3193_ (
);

FILL FILL_0__1926_ (
);

INVX1 _3612_ (
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_597_)
);

FILL FILL_0__2044_ (
);

OR2X2 _3841_ (
    .A(_1064_),
    .B(_1061_),
    .Y(_1060_)
);

AOI21X1 _3421_ (
    .A(_666_),
    .B(_464_),
    .C(_456_),
    .Y(_465_)
);

MUX2X1 _3001_ (
    .A(_159_),
    .B(_903_),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_160_)
);

NAND3X1 _2289_ (
    .A(_728_),
    .B(_660_),
    .C(_661_),
    .Y(_659_)
);

MUX2X1 _3650_ (
    .A(_258_),
    .B(_541_),
    .S(_602__bF$buf2),
    .Y(_1096_)
);

INVX1 _3230_ (
    .A(ibus_pending_rdt[27]),
    .Y(_326_)
);

DFFPOSX1 _4015_ (
    .D(_1407_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_rf_if.rcnt [1])
);

AND2X2 _2921_ (
    .A(_100_),
    .B(i_rst_n_bF$buf0),
    .Y(_1323_)
);

NOR2X1 _2501_ (
    .A(_740_),
    .B(_1623_),
    .Y(_1624_)
);

OAI21X1 _3706_ (
    .A(_675_),
    .B(_689_),
    .C(_637_),
    .Y(_1075_)
);

MUX2X1 _2098_ (
    .A(\u_cpu.bufreg.data [25]),
    .B(\u_cpu.ctrl.o_ibus_adr [25]),
    .S(_1006__bF$buf1),
    .Y(_837_)
);

FILL FILL_0__2978_ (
);

AND2X2 _2730_ (
    .A(_1810_),
    .B(i_rst_n_bF$buf3),
    .Y(_1370_)
);

NAND3X1 _2310_ (
    .A(\u_rf_if.last_req_key [6]),
    .B(_641_),
    .C(_634_),
    .Y(_633_)
);

FILL FILL_0__3096_ (
);

DFFPOSX1 _3935_ (
    .D(_1362_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_rf_if.read_buf1 [16])
);

NAND2X1 _3515_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(_974_),
    .Y(_538_)
);

DFFPOSX1 _4053_ (
    .D(_1125_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

DFFSR _3744_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1105_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(ibus_pending_rdt[14])
);

INVX1 _3324_ (
    .A(\u_cpu.bufreg.data [25]),
    .Y(_400_)
);

DFFPOSX1 _3973_ (
    .D(_1381_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_rf_if.stream_cnt [1])
);

AOI22X1 _3553_ (
    .A(_565_),
    .B(_452_),
    .C(_567_),
    .D(_566_),
    .Y(_1158_)
);

OR2X2 _3133_ (
    .A(_659__bF$buf2),
    .B(_253_),
    .Y(_254_)
);

DFFPOSX1 _4091_ (
    .D(_1447_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [8])
);

OAI21X1 _2824_ (
    .A(_22__bF$buf3),
    .B(_26_),
    .C(_27_),
    .Y(_28_)
);

AOI21X1 _2404_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_1526_),
    .Y(_1527_)
);

OAI22X1 _3609_ (
    .A(_569_),
    .B(_212__bF$buf4),
    .C(_595_),
    .D(_570__bF$buf0),
    .Y(_1130_)
);

DFFSR _3782_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1120_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(ibus_pending_rdt[29])
);

INVX1 _3362_ (
    .A(\u_cpu.bufreg.data [6]),
    .Y(_419_)
);

NAND2X1 _2633_ (
    .A(\u_rf_if.shift_rx [1]),
    .B(_1720_),
    .Y(_1739_)
);

INVX2 _2213_ (
    .A(ren),
    .Y(_735_)
);

DFFPOSX1 _3838_ (
    .D(_1314_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(raddr[1])
);

NOR2X1 _3418_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_714_),
    .Y(_462_)
);

OAI22X1 _3591_ (
    .A(_587_),
    .B(_212__bF$buf0),
    .C(_586_),
    .D(_570__bF$buf1),
    .Y(_1140_)
);

OAI21X1 _3171_ (
    .A(\u_mem_serial.shift_reg [6]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_281_),
    .Y(_282_)
);

OAI21X1 _1904_ (
    .A(_1061_),
    .B(_1064_),
    .C(_1007_),
    .Y(_1006_)
);

MUX2X1 _2862_ (
    .A(\u_rf_if.read_buf0 [12]),
    .B(\u_rf_if.read_buf0 [13]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_56_)
);

AND2X2 _2442_ (
    .A(_1564_),
    .B(_1563_),
    .Y(_1565_)
);

AND2X2 _2022_ (
    .A(_904_),
    .B(i_rst_n_bF$buf2),
    .Y(_1440_)
);

MUX2X1 _3647_ (
    .A(_360_),
    .B(_959_),
    .S(_602__bF$buf0),
    .Y(_1099_)
);

MUX2X1 _3227_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_323_),
    .S(_659__bF$buf2),
    .Y(_324_)
);

FILL FILL_0__2902_ (
);

FILL FILL127050x21750 (
);

FILL FILL_0__3020_ (
);

MUX2X1 _2918_ (
    .A(\u_rf_if.read_buf0 [26]),
    .B(\u_rf_if.read_buf0 [27]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_98_)
);

NOR2X1 _2671_ (
    .A(_1070__bF$buf3),
    .B(_1619_),
    .Y(_1385_)
);

INVX2 _2251_ (
    .A(mem_dbus_ack_bF$buf2),
    .Y(_697_)
);

DFFPOSX1 _3876_ (
    .D(_1147_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

NAND2X1 _3456_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_868_),
    .Y(_494_)
);

INVX1 _3036_ (
    .A(_1086_),
    .Y(_186_)
);

INVX1 _1942_ (
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_974_)
);

MUX2X1 _2727_ (
    .A(\u_rf_if.read_buf1 [9]),
    .B(\u_rf_if.read_buf1 [10]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1808_)
);

INVX1 _2307_ (
    .A(_642_),
    .Y(_641_)
);

NOR2X1 _2480_ (
    .A(_1602_),
    .B(_1592_),
    .Y(_1603_)
);

OAI21X1 _2060_ (
    .A(_873_),
    .B(_871_),
    .C(_973__bF$buf3),
    .Y(_870_)
);

NAND2X1 _3685_ (
    .A(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .B(_620_),
    .Y(_621_)
);

NAND3X1 _3265_ (
    .A(_687_),
    .B(_350_),
    .C(_659__bF$buf5),
    .Y(_354_)
);

AOI21X1 _2956_ (
    .A(_125_),
    .B(_124_),
    .C(_1070__bF$buf3),
    .Y(_1313_)
);

INVX1 _2536_ (
    .A(i_rf_miso),
    .Y(_1658_)
);

OAI21X1 _2116_ (
    .A(_824_),
    .B(_822_),
    .C(_973__bF$buf5),
    .Y(_821_)
);

INVX1 _3494_ (
    .A(\u_cpu.bufreg2.dlo [11]),
    .Y(_522_)
);

INVX1 _3074_ (
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_211_)
);

FILL FILL127350x64950 (
);

OAI21X1 _1980_ (
    .A(_943_),
    .B(_941_),
    .C(_973__bF$buf6),
    .Y(_940_)
);

OAI21X1 _2765_ (
    .A(_1783__bF$buf5),
    .B(_1835_),
    .C(_1836_),
    .Y(_1837_)
);

NAND2X1 _2345_ (
    .A(\u_rf_if.last_req_key [10]),
    .B(_1471_),
    .Y(_1473_)
);

FILL FILL_0__2805_ (
);

DFFPOSX1 _4088_ (
    .D(_1237_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

OAI21X1 _2994_ (
    .A(_673__bF$buf1),
    .B(_674__bF$buf1),
    .C(\u_rf_if.rreg0_latched [0]),
    .Y(_154_)
);

NAND2X1 _2574_ (
    .A(i_rst_n_bF$buf4),
    .B(_1680_),
    .Y(_1690_)
);

OAI21X1 _2154_ (
    .A(_798_),
    .B(_790_),
    .C(_789_),
    .Y(_788_)
);

DFFPOSX1 _3779_ (
    .D(_1286_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_if.last_req_key [8])
);

MUX2X1 _3359_ (
    .A(_416_),
    .B(_417_),
    .S(_1536__bF$buf4),
    .Y(_1202_)
);

NAND3X1 _2383_ (
    .A(_1502_),
    .B(_1505_),
    .C(_1503_),
    .Y(_1506_)
);

INVX1 _3588_ (
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_586_)
);

AOI21X1 _3168_ (
    .A(_279_),
    .B(_276_),
    .C(_277_),
    .Y(_1255_)
);

NAND2X1 _2859_ (
    .A(\u_rf_if.read_buf0 [10]),
    .B(_22__bF$buf0),
    .Y(_54_)
);

AOI21X1 _2439_ (
    .A(\u_rf_if.read_buf1 [0]),
    .B(\u_rf_if.stream_active_bF$buf0 ),
    .C(_787_),
    .Y(_1562_)
);

NOR2X1 _2019_ (
    .A(_1023__bF$buf4),
    .B(_907_),
    .Y(_906_)
);

DFFPOSX1 _3800_ (
    .D(_1129_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

OAI21X1 _2192_ (
    .A(_1002__bF$buf4),
    .B(_755_),
    .C(_1004_),
    .Y(_754_)
);

NAND2X1 _3397_ (
    .A(\u_cpu.bufreg.data [31]),
    .B(_424_),
    .Y(_444_)
);

AOI21X1 _1883_ (
    .A(\u_mem_serial.bit_count [5]),
    .B(_1030_),
    .C(_1027_),
    .Y(_1456_)
);

NOR2X1 _2668_ (
    .A(_1751_),
    .B(_1758_),
    .Y(_1765_)
);

OAI22X1 _2248_ (
    .A(_705_),
    .B(_1064_),
    .C(_701_),
    .D(_704_),
    .Y(_700_)
);

FILL FILL_0__2708_ (
);

FILL FILL_0__2881_ (
);

OAI21X1 _1939_ (
    .A(_1023__bF$buf0),
    .B(_978_),
    .C(_977_),
    .Y(_976_)
);

AND2X2 _2897_ (
    .A(_82_),
    .B(i_rst_n_bF$buf1),
    .Y(_1329_)
);

OAI22X1 _2477_ (
    .A(_1597_),
    .B(_1599_),
    .C(_1596_),
    .D(_1598_),
    .Y(_1600_)
);

NOR2X1 _2057_ (
    .A(_1002__bF$buf1),
    .B(_874_),
    .Y(_873_)
);

FILL FILL_0__2937_ (
);

FILL FILL_0__3055_ (
);

AOI21X1 _2286_ (
    .A(_663_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_699_),
    .Y(_662_)
);

FILL FILL_0__1961_ (
);

DFFPOSX1 _4012_ (
    .D(_1405_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_rf_if.prefetch_active )
);

NOR2X1 _1977_ (
    .A(_1002__bF$buf2),
    .B(_944_),
    .Y(_943_)
);

AND2X2 _3703_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_635_)
);

INVX1 _2095_ (
    .A(\u_mem_serial.shift_reg [25]),
    .Y(_840_)
);

DFFPOSX1 _3932_ (
    .D(_1165_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.bufreg2.dlo [5])
);

OAI21X1 _3512_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.dlo [8]),
    .C(_535_),
    .Y(_536_)
);

DFFPOSX1 _4050_ (
    .D(_1427_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [28])
);

DFFPOSX1 _3741_ (
    .D(_1262_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

MUX2X1 _3321_ (
    .A(_396_),
    .B(_398_),
    .S(_1536__bF$buf2),
    .Y(_1221_)
);

OAI21X1 _2189_ (
    .A(\u_mem_serial.shift_reg [35]),
    .B(_973__bF$buf1),
    .C(i_rst_n_bF$buf5),
    .Y(_756_)
);

FILL FILL_0__1864_ (
);

DFFPOSX1 _3970_ (
    .D(_1184_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

INVX1 _3550_ (
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_565_)
);

INVX1 _3130_ (
    .A(ibus_pending_rdt[13]),
    .Y(_251_)
);

AND2X2 _2821_ (
    .A(_25_),
    .B(i_rst_n_bF$buf3),
    .Y(_1348_)
);

NOR2X1 _2401_ (
    .A(_1063_),
    .B(_1062_),
    .Y(_1524_)
);

OAI22X1 _3606_ (
    .A(_995_),
    .B(_212__bF$buf1),
    .C(_594_),
    .D(_570__bF$buf3),
    .Y(_1132_)
);

OAI21X1 _2630_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(_1736_),
    .C(_1699_),
    .Y(_1737_)
);

NOR2X1 _2210_ (
    .A(\u_rf_if.tx_state [2]),
    .B(_739_),
    .Y(_738_)
);

DFFPOSX1 _3835_ (
    .D(_1137_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

AOI21X1 _3415_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_reg [29]),
    .C(_452_),
    .Y(_460_)
);

FILL FILL126750x3750 (
);

NAND2X1 _1901_ (
    .A(_1010_),
    .B(_1043_),
    .Y(_1009_)
);

MUX2X1 _3644_ (
    .A(_392_),
    .B(_938_),
    .S(_602__bF$buf2),
    .Y(_1102_)
);

AOI21X1 _3224_ (
    .A(_315_),
    .B(_320_),
    .C(_321_),
    .Y(_1241_)
);

DFFPOSX1 _4009_ (
    .D(_1403_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(\u_rf_if.pending_read )
);

NAND2X1 _2915_ (
    .A(\u_rf_if.read_buf0 [24]),
    .B(_22__bF$buf5),
    .Y(_96_)
);

DFFPOSX1 _3873_ (
    .D(_1331_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_rf_if.read_buf0 [17])
);

OAI21X1 _3453_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [23]),
    .C(_491_),
    .Y(_492_)
);

NAND3X1 _3033_ (
    .A(_736_),
    .B(_1470_),
    .C(_1666_),
    .Y(_184_)
);

NAND2X1 _2724_ (
    .A(\u_rf_if.read_buf1 [7]),
    .B(_1783__bF$buf2),
    .Y(_1806_)
);

OAI21X1 _2304_ (
    .A(_648_),
    .B(_645_),
    .C(_650_),
    .Y(_644_)
);

DFFPOSX1 _3929_ (
    .D(_1359_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.read_buf1 [19])
);

MUX2X1 _3509_ (
    .A(_531_),
    .B(_533_),
    .S(_450__bF$buf3),
    .Y(_1168_)
);

INVX1 _3682_ (
    .A(\gen_int_sys_clk.clk_div [3]),
    .Y(_618_)
);

NOR2X1 _3262_ (
    .A(_350_),
    .B(_1692__bF$buf0),
    .Y(_351_)
);

DFFPOSX1 _4047_ (
    .D(_1217_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_cpu.bufreg.data [23])
);

AOI21X1 _2953_ (
    .A(_122_),
    .B(_1680_),
    .C(_123_),
    .Y(_1314_)
);

OAI21X1 _2533_ (
    .A(_1649_),
    .B(_1650_),
    .C(_1655_),
    .Y(_1656_)
);

NOR2X1 _2113_ (
    .A(_1002__bF$buf3),
    .B(_825_),
    .Y(_824_)
);

DFFPOSX1 _3738_ (
    .D(_1259_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(\u_cpu.decode.opcode [0])
);

INVX1 _3318_ (
    .A(\u_cpu.bufreg.data [29]),
    .Y(_397_)
);

NAND2X1 _3491_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(_931_),
    .Y(_520_)
);

NOR3X1 _3071_ (
    .A(_1070__bF$buf6),
    .B(_1631_),
    .C(_207_),
    .Y(_1282_)
);

AND2X2 _2762_ (
    .A(_1834_),
    .B(i_rst_n_bF$buf6),
    .Y(_1362_)
);

INVX1 _2342_ (
    .A(_1256_),
    .Y(_1470_)
);

DFFPOSX1 _3967_ (
    .D(_1378_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(\u_rf_if.read_buf1 [0])
);

NAND2X1 _3547_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_854_),
    .Y(_563_)
);

NAND3X1 _3127_ (
    .A(_1058_),
    .B(_1055_),
    .C(_1059_),
    .Y(_249_)
);

DFFPOSX1 _4085_ (
    .D(_1444_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [11])
);

MUX2X1 _2818_ (
    .A(\u_rf_if.read_buf0 [1]),
    .B(\u_rf_if.read_buf0 [2]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_23_)
);

MUX2X1 _2991_ (
    .A(_151_),
    .B(_854_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_152_)
);

NOR2X1 _2571_ (
    .A(_1687_),
    .B(_1683_),
    .Y(_1406_)
);

INVX1 _2151_ (
    .A(\u_mem_serial.shift_reg [32]),
    .Y(_791_)
);

DFFSR _3776_ (
    .R(i_rst_n_bF$buf9),
    .S(vdd),
    .D(_1117_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(ibus_pending_rdt[26])
);

INVX1 _3356_ (
    .A(\u_cpu.bufreg.data [9]),
    .Y(_416_)
);

FILL FILL_0__2611_ (
);

NOR2X1 _2627_ (
    .A(_1732_),
    .B(_1733_),
    .Y(_1734_)
);

INVX1 _2207_ (
    .A(\u_rf_if.tx_state [3]),
    .Y(_741_)
);

FILL FILL127050x97350 (
);

AND2X2 _2380_ (
    .A(_692_),
    .B(_1063_),
    .Y(_1503_)
);

OAI22X1 _3585_ (
    .A(_584_),
    .B(_212__bF$buf0),
    .C(_583_),
    .D(_570__bF$buf1),
    .Y(_1143_)
);

OAI21X1 _3165_ (
    .A(\u_mem_serial.state [0]),
    .B(_746_),
    .C(i_rst_n_bF$buf11),
    .Y(_277_)
);

FILL FILL_0__2840_ (
);

OAI21X1 _2856_ (
    .A(_22__bF$buf0),
    .B(_50_),
    .C(_51_),
    .Y(_52_)
);

INVX1 _2436_ (
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_1559_)
);

MUX2X1 _2016_ (
    .A(\u_mem_serial.shift_reg [14]),
    .B(\u_cpu.bufreg2.dlo [9]),
    .S(_994__bF$buf2),
    .Y(_909_)
);

AOI21X1 _3394_ (
    .A(_438_),
    .B(_435_),
    .C(_424_),
    .Y(_1191_)
);

NAND2X1 _1880_ (
    .A(\u_mem_serial.bit_count [4]),
    .B(_1032_),
    .Y(_1028_)
);

NOR2X1 _2665_ (
    .A(_1491_),
    .B(_1653_),
    .Y(_1763_)
);

INVX1 _2245_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_703_)
);

NOR2X1 _1936_ (
    .A(_1070__bF$buf2),
    .B(_979_),
    .Y(_1451_)
);

MUX2X1 _2894_ (
    .A(\u_rf_if.read_buf0 [20]),
    .B(\u_rf_if.read_buf0 [21]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_80_)
);

INVX1 _2474_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1597_)
);

AND2X2 _2054_ (
    .A(_876_),
    .B(i_rst_n_bF$buf8),
    .Y(_1436_)
);

NOR2X1 _3679_ (
    .A(\gen_int_sys_clk.clk_div [1]),
    .B(\gen_int_sys_clk.clk_div [0]),
    .Y(_617_)
);

INVX1 _3259_ (
    .A(_678_),
    .Y(_348_)
);

FILL FILL127350x50550 (
);

INVX1 _2283_ (
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_665_)
);

OAI21X1 _3488_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [14]),
    .C(_517_),
    .Y(_518_)
);

NOR2X1 _3068_ (
    .A(_208_),
    .B(_207_),
    .Y(_1284_)
);

FILL FILL_0__2743_ (
);

AND2X2 _1974_ (
    .A(_946_),
    .B(i_rst_n_bF$buf8),
    .Y(_1446_)
);

MUX2X1 _2759_ (
    .A(\u_rf_if.read_buf1 [17]),
    .B(\u_rf_if.read_buf1 [18]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_1832_)
);

NOR2X1 _2339_ (
    .A(\u_rf_if.last_req_key [2]),
    .B(_1465_),
    .Y(_1467_)
);

INVX1 _3700_ (
    .A(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Y(_1056_)
);

OAI21X1 _2092_ (
    .A(_845_),
    .B(_843_),
    .C(_973__bF$buf3),
    .Y(_842_)
);

INVX1 _3297_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_379_)
);

AOI21X1 _2988_ (
    .A(_149_),
    .B(_146_),
    .C(_1070__bF$buf4),
    .Y(_1305_)
);

INVX1 _2568_ (
    .A(_1684_),
    .Y(_1685_)
);

OAI21X1 _2148_ (
    .A(_796_),
    .B(_794_),
    .C(_973__bF$buf4),
    .Y(_793_)
);

OAI21X1 _2797_ (
    .A(_1783__bF$buf0),
    .B(_5_),
    .C(_6_),
    .Y(_7_)
);

INVX2 _2377_ (
    .A(\u_cpu.bne_or_bge ),
    .Y(_1500_)
);

INVX1 _2186_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_759_)
);

FILL FILL_0__2646_ (
);

AOI21X1 _1877_ (
    .A(_1032_),
    .B(_1031_),
    .C(_1049_),
    .Y(_1458_)
);

OAI22X1 _3603_ (
    .A(_593_),
    .B(_212__bF$buf4),
    .C(_592_),
    .D(_570__bF$buf0),
    .Y(_1134_)
);

FILL FILL_0__2875_ (
);

DFFPOSX1 _3832_ (
    .D(_1311_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(raddr[4])
);

NAND3X1 _3412_ (
    .A(_1552_),
    .B(_727_),
    .C(_223_),
    .Y(_457_)
);

MUX2X1 _3641_ (
    .A(_283_),
    .B(_917_),
    .S(_602__bF$buf4),
    .Y(_1105_)
);

OAI21X1 _3221_ (
    .A(_673__bF$buf0),
    .B(_674__bF$buf2),
    .C(_318_),
    .Y(_319_)
);

DFFPOSX1 _4006_ (
    .D(_1199_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.bufreg.data [5])
);

OAI21X1 _2912_ (
    .A(_22__bF$buf0),
    .B(_92_),
    .C(_93_),
    .Y(_94_)
);

FILL FILL_0__3698_ (
);

NOR2X1 _2089_ (
    .A(_1002__bF$buf0),
    .B(_846_),
    .Y(_845_)
);

NOR2X1 _3870_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_1068_)
);

OAI21X1 _3450_ (
    .A(_452_),
    .B(_489_),
    .C(_486_),
    .Y(_1183_)
);

NOR2X1 _3030_ (
    .A(_182_),
    .B(_181_),
    .Y(_1296_)
);

FILL FILL_0__2549_ (
);

OAI21X1 _2721_ (
    .A(_1783__bF$buf1),
    .B(_1802_),
    .C(_1803_),
    .Y(_1804_)
);

NOR2X1 _2301_ (
    .A(ren),
    .B(_686_),
    .Y(_647_)
);

DFFPOSX1 _3926_ (
    .D(_1162_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_cpu.bufreg2.dlo [2])
);

INVX1 _3506_ (
    .A(\u_cpu.bufreg2.dlo [8]),
    .Y(_531_)
);

FILL FILL_0__2778_ (
);

DFFPOSX1 _4044_ (
    .D(_1424_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [31])
);

AOI21X1 _2950_ (
    .A(_121_),
    .B(_120_),
    .C(_1070__bF$buf3),
    .Y(_1315_)
);

INVX1 _2530_ (
    .A(_1623_),
    .Y(_1653_)
);

AND2X2 _2110_ (
    .A(_827_),
    .B(i_rst_n_bF$buf7),
    .Y(_1429_)
);

DFFPOSX1 _3735_ (
    .D(_1255_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(mem_ibus_ack)
);

NAND2X1 _3315_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_351_),
    .Y(_395_)
);

DFFPOSX1 _3964_ (
    .D(_1181_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [21])
);

OAI21X1 _3544_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(_560_),
    .Y(_561_)
);

OAI21X1 _3124_ (
    .A(_246_),
    .B(_1060_),
    .C(i_rst_n_bF$buf11),
    .Y(_247_)
);

DFFPOSX1 _4082_ (
    .D(_1234_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(rreg1[1])
);

OAI21X1 _2815_ (
    .A(_1783__bF$buf6),
    .B(_19_),
    .C(_20_),
    .Y(_21_)
);

CLKBUF1 CLKBUF1_insert130 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf28 )
);

CLKBUF1 CLKBUF1_insert131 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf27 )
);

CLKBUF1 CLKBUF1_insert132 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf26 )
);

CLKBUF1 CLKBUF1_insert133 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf25 )
);

CLKBUF1 CLKBUF1_insert134 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf24 )
);

CLKBUF1 CLKBUF1_insert135 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf23 )
);

CLKBUF1 CLKBUF1_insert136 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf22 )
);

CLKBUF1 CLKBUF1_insert137 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf21 )
);

CLKBUF1 CLKBUF1_insert138 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf20 )
);

CLKBUF1 CLKBUF1_insert139 (
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf19 )
);

DFFPOSX1 _3773_ (
    .D(_1283_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.tx_state [1])
);

MUX2X1 _3353_ (
    .A(_413_),
    .B(_414_),
    .S(_1536__bF$buf0),
    .Y(_1205_)
);

INVX1 _2624_ (
    .A(\u_rf_if.o_waddr [2]),
    .Y(_1731_)
);

INVX1 _2204_ (
    .A(_745_),
    .Y(_743_)
);

DFFPOSX1 _3829_ (
    .D(_1310_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(raddr[5])
);

OAI21X1 _3409_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .C(_454_),
    .Y(_455_)
);

INVX1 _3582_ (
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_583_)
);

NOR2X1 _3162_ (
    .A(i_clk_fast_bF$buf4),
    .B(_275_),
    .Y(_1854_)
);

FILL FILL_0__3622_ (
);

AND2X2 _2853_ (
    .A(_49_),
    .B(i_rst_n_bF$buf0),
    .Y(_1340_)
);

NAND2X1 _2433_ (
    .A(_1531_),
    .B(_1530_),
    .Y(_1556_)
);

OAI21X1 _2013_ (
    .A(_917_),
    .B(_973__bF$buf3),
    .C(_912_),
    .Y(_911_)
);

FILL FILL_0_BUFX2_insert2 (
);

FILL FILL_0_BUFX2_insert9 (
);

MUX2X1 _3638_ (
    .A(_163_),
    .B(_896_),
    .S(_602__bF$buf1),
    .Y(_1108_)
);

INVX1 _3218_ (
    .A(ibus_pending_rdt[29]),
    .Y(_316_)
);

AND2X2 _3391_ (
    .A(_438_),
    .B(_439_),
    .Y(_440_)
);

AND2X2 _2909_ (
    .A(_91_),
    .B(i_rst_n_bF$buf1),
    .Y(_1326_)
);

AND2X2 _2662_ (
    .A(_1617_),
    .B(i_rst_n_bF$buf4),
    .Y(_1389_)
);

NAND3X1 _2242_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_707_),
    .C(_709_),
    .Y(_706_)
);

DFFPOSX1 _3867_ (
    .D(_1328_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_rf_if.read_buf0 [20])
);

NAND2X1 _3447_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(_708_),
    .Y(_487_)
);

INVX1 _3027_ (
    .A(_180_),
    .Y(_1297_)
);

NAND3X1 _1933_ (
    .A(\u_mem_serial.shift_reg [3]),
    .B(_1023__bF$buf0),
    .C(_994__bF$buf0),
    .Y(_981_)
);

AND2X2 _2718_ (
    .A(_1801_),
    .B(i_rst_n_bF$buf8),
    .Y(_1373_)
);

NAND2X1 _2891_ (
    .A(\u_rf_if.read_buf0 [18]),
    .B(_22__bF$buf6),
    .Y(_78_)
);

NAND3X1 _2471_ (
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(\u_cpu.bufreg.data [0]),
    .C(_780_),
    .Y(_1594_)
);

NOR2X1 _2051_ (
    .A(_1023__bF$buf1),
    .B(_879_),
    .Y(_878_)
);

INVX1 _3676_ (
    .A(_614_),
    .Y(_615_)
);

AOI22X1 _3256_ (
    .A(_345_),
    .B(_342_),
    .C(_145_),
    .D(_346_),
    .Y(_1234_)
);

FILL FILL_0_BUFX2_insert85 (
);

AOI21X1 _2947_ (
    .A(_1731_),
    .B(_1735_),
    .C(_119_),
    .Y(_1316_)
);

NAND2X1 _2527_ (
    .A(\u_rf_if.tx_state [2]),
    .B(_1471_),
    .Y(_1650_)
);

NOR2X1 _2107_ (
    .A(_1023__bF$buf3),
    .B(_830_),
    .Y(_829_)
);

NAND3X1 _2280_ (
    .A(\u_rf_if.last_req_key [5]),
    .B(_729_),
    .C(_669_),
    .Y(_668_)
);

MUX2X1 _3485_ (
    .A(_513_),
    .B(_515_),
    .S(_450__bF$buf1),
    .Y(_1174_)
);

AOI21X1 _3065_ (
    .A(_205_),
    .B(_206_),
    .C(_1070__bF$buf6),
    .Y(_1285_)
);

FILL FILL_0__3525_ (
);

NOR2X1 _1971_ (
    .A(_1023__bF$buf4),
    .B(_949_),
    .Y(_948_)
);

NAND2X1 _2756_ (
    .A(\u_rf_if.read_buf1 [15]),
    .B(_1783__bF$buf4),
    .Y(_1830_)
);

OR2X2 _2336_ (
    .A(_735_),
    .B(raddr[2]),
    .Y(_1464_)
);

NOR2X1 _3294_ (
    .A(_1066_),
    .B(_1692__bF$buf1),
    .Y(_377_)
);

DFFPOSX1 _4079_ (
    .D(_1441_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [14])
);

INVX1 _2985_ (
    .A(ibus_pending_rdt[22]),
    .Y(_147_)
);

INVX1 _2565_ (
    .A(_1681_),
    .Y(_1682_)
);

NOR2X1 _2145_ (
    .A(_1002__bF$buf3),
    .B(_797_),
    .Y(_796_)
);

FILL FILL_0__2605_ (
);

BUFX2 BUFX2_insert90 (
    .A(_674_),
    .Y(_674__bF$buf2)
);

BUFX2 BUFX2_insert91 (
    .A(_674_),
    .Y(_674__bF$buf1)
);

BUFX2 BUFX2_insert92 (
    .A(_674_),
    .Y(_674__bF$buf0)
);

BUFX2 BUFX2_insert93 (
    .A(_994_),
    .Y(_994__bF$buf5)
);

BUFX2 BUFX2_insert94 (
    .A(_994_),
    .Y(_994__bF$buf4)
);

BUFX2 BUFX2_insert95 (
    .A(_994_),
    .Y(_994__bF$buf3)
);

BUFX2 BUFX2_insert96 (
    .A(_994_),
    .Y(_994__bF$buf2)
);

BUFX2 BUFX2_insert97 (
    .A(_994_),
    .Y(_994__bF$buf1)
);

BUFX2 BUFX2_insert98 (
    .A(_994_),
    .Y(_994__bF$buf0)
);

BUFX2 BUFX2_insert99 (
    .A(_1692_),
    .Y(_1692__bF$buf4)
);

AND2X2 _2794_ (
    .A(_4_),
    .B(i_rst_n_bF$buf6),
    .Y(_1354_)
);

MUX2X1 _2374_ (
    .A(\u_rf_if.wen0_r ),
    .B(_676_),
    .S(_671_),
    .Y(_1498_)
);

DFFPOSX1 _3999_ (
    .D(_1398_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(ren)
);

OAI22X1 _3579_ (
    .A(_581_),
    .B(_212__bF$buf3),
    .C(_580_),
    .D(_570__bF$buf2),
    .Y(_1146_)
);

AOI21X1 _3159_ (
    .A(_273_),
    .B(_1026_),
    .C(_1051_),
    .Y(_274_)
);

DFFPOSX1 _4100_ (
    .D(_1243_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

AND2X2 _2183_ (
    .A(_762_),
    .B(i_rst_n_bF$buf5),
    .Y(_1421_)
);

NAND2X1 _3388_ (
    .A(_435_),
    .B(_436_),
    .Y(_437_)
);

FILL FILL_0__3428_ (
);

NOR2X1 _1874_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(_1037_),
    .Y(_1033_)
);

AOI21X1 _2659_ (
    .A(_1759_),
    .B(_1750_),
    .C(_1760_),
    .Y(_1391_)
);

NAND3X1 _2239_ (
    .A(_727_),
    .B(_717_),
    .C(_710_),
    .Y(_709_)
);

INVX1 _3600_ (
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_592_)
);

INVX1 _3197_ (
    .A(rreg0[1]),
    .Y(_301_)
);

FILL FILL_0__2452_ (
);

FILL FILL_0__3657_ (
);

OAI21X1 _2888_ (
    .A(_22__bF$buf6),
    .B(_74_),
    .C(_75_),
    .Y(_76_)
);

NOR2X1 _2468_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_1552_),
    .Y(_1591_)
);

MUX2X1 _2048_ (
    .A(\u_mem_serial.shift_reg [18]),
    .B(\u_cpu.bufreg2.dlo [13]),
    .S(_994__bF$buf4),
    .Y(_881_)
);

FILL FILL_0__2508_ (
);

FILL FILL_0__2681_ (
);

OAI21X1 _2697_ (
    .A(_1783__bF$buf1),
    .B(_1784_),
    .C(_1785_),
    .Y(_1786_)
);

OAI21X1 _2277_ (
    .A(_673__bF$buf1),
    .B(_674__bF$buf1),
    .C(_672_),
    .Y(_671_)
);

DFFPOSX1 _4003_ (
    .D(_1400_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(raddr[8])
);

MUX2X1 _1968_ (
    .A(\u_mem_serial.shift_reg [8]),
    .B(\u_cpu.bufreg2.dlo [3]),
    .S(_994__bF$buf2),
    .Y(_951_)
);

AND2X2 _2086_ (
    .A(_848_),
    .B(i_rst_n_bF$buf2),
    .Y(_1432_)
);

FILL FILL_0_BUFX2_insert175 (
);

DFFPOSX1 _3923_ (
    .D(_1356_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [22])
);

NAND2X1 _3503_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(_952_),
    .Y(_529_)
);

FILL FILL_0__2355_ (
);

DFFPOSX1 _4041_ (
    .D(_1214_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg.data [20])
);

DFFPOSX1 _3732_ (
    .D(_1253_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

INVX1 _3312_ (
    .A(ibus_pending_rdt[11]),
    .Y(_392_)
);

FILL FILL_0__2584_ (
);

DFFPOSX1 _3961_ (
    .D(_1375_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [3])
);

MUX2X1 _3541_ (
    .A(_555_),
    .B(_558_),
    .S(_450__bF$buf2),
    .Y(_1161_)
);

OAI21X1 _3121_ (
    .A(_1069_),
    .B(_243_),
    .C(_244_),
    .Y(_1267_)
);

AOI21X1 _2812_ (
    .A(_16_),
    .B(_18_),
    .C(_1070__bF$buf2),
    .Y(_1350_)
);

DFFSR _3770_ (
    .R(i_rst_n_bF$buf11),
    .S(vdd),
    .D(_1114_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(ibus_pending_rdt[23])
);

INVX1 _3350_ (
    .A(\u_cpu.bufreg.data [12]),
    .Y(_413_)
);

AOI22X1 _2621_ (
    .A(\u_rf_if.read_buf0 [31]),
    .B(\u_rf_if.stream_active_bF$buf1 ),
    .C(_1726_),
    .D(_1728_),
    .Y(_1729_)
);

NAND2X1 _2201_ (
    .A(_747_),
    .B(_749_),
    .Y(_746_)
);

FILL FILL127350x7350 (
);

DFFPOSX1 _3826_ (
    .D(_1309_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(raddr[6])
);

INVX2 _3406_ (
    .A(_451_),
    .Y(_452_)
);

FILL FILL_0__2258_ (
);

MUX2X1 _2850_ (
    .A(\u_rf_if.read_buf0 [9]),
    .B(\u_rf_if.read_buf0 [10]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_47_)
);

INVX1 _2430_ (
    .A(_1552_),
    .Y(_1553_)
);

MUX2X1 _2010_ (
    .A(\u_cpu.bufreg.data [14]),
    .B(\u_cpu.ctrl.o_ibus_adr [14]),
    .S(_1006__bF$buf2),
    .Y(_914_)
);

MUX2X1 _3635_ (
    .A(_139_),
    .B(_875_),
    .S(_602__bF$buf3),
    .Y(_1111_)
);

NAND2X1 _3215_ (
    .A(_1062_),
    .B(_1526_),
    .Y(_313_)
);

BUFX2 BUFX2_insert159 (
    .A(_1783_),
    .Y(_1783__bF$buf6)
);

FILL FILL_0__2487_ (
);

MUX2X1 _2906_ (
    .A(\u_rf_if.read_buf0 [23]),
    .B(\u_rf_if.read_buf0 [24]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_89_)
);

DFFPOSX1 _3864_ (
    .D(_1144_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

OAI21X1 _3444_ (
    .A(_697_),
    .B(\u_mem_serial.shift_reg [25]),
    .C(_451_),
    .Y(_485_)
);

NOR2X1 _3024_ (
    .A(_1676_),
    .B(_170_),
    .Y(_178_)
);

MUX2X1 _1930_ (
    .A(\u_mem_serial.shift_reg [3]),
    .B(_984_),
    .S(_1009_),
    .Y(_983_)
);

FILL FILL126450x118950 (
);

MUX2X1 _2715_ (
    .A(\u_rf_if.read_buf1 [6]),
    .B(\u_rf_if.read_buf1 [7]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1799_)
);

NAND2X1 _3673_ (
    .A(\u_mem_serial.req_pending ),
    .B(_1055_),
    .Y(_1054_)
);

AOI22X1 _3253_ (
    .A(_343_),
    .B(_342_),
    .C(_149_),
    .D(_344_),
    .Y(_1235_)
);

DFFPOSX1 _4038_ (
    .D(_1421_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [34])
);

FILL FILL_0_BUFX2_insert57 (
);

OAI21X1 _2944_ (
    .A(\u_rf_if.o_waddr [1]),
    .B(_1734_),
    .C(_117_),
    .Y(_118_)
);

NOR2X1 _2524_ (
    .A(_1636_),
    .B(_1646_),
    .Y(_1647_)
);

MUX2X1 _2104_ (
    .A(\u_mem_serial.shift_reg [25]),
    .B(\u_cpu.bufreg2.dlo [20]),
    .S(_994__bF$buf3),
    .Y(_832_)
);

DFFPOSX1 _3729_ (
    .D(_1460_),
    .CLK(i_clk_fast_bF$buf8),
    .Q(\u_mem_serial.bit_count [1])
);

MUX2X1 _3309_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_1746_),
    .S(_659__bF$buf5),
    .Y(_390_)
);

INVX1 _3482_ (
    .A(\u_cpu.bufreg2.dlo [14]),
    .Y(_513_)
);

AOI21X1 _3062_ (
    .A(_204_),
    .B(_203_),
    .C(_1070__bF$buf5),
    .Y(_1286_)
);

OAI21X1 _2753_ (
    .A(_1783__bF$buf4),
    .B(_1826_),
    .C(_1827_),
    .Y(_1828_)
);

AOI21X1 _2333_ (
    .A(\u_rf_if.last_req_key [9]),
    .B(_735_),
    .C(_1412_),
    .Y(_1414_)
);

DFFPOSX1 _3958_ (
    .D(_1178_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_cpu.bufreg2.dlo [18])
);

INVX1 _3538_ (
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_556_)
);

AOI21X1 _3118_ (
    .A(_695_),
    .B(_242_),
    .C(_1070__bF$buf1),
    .Y(_1268_)
);

OAI21X1 _3291_ (
    .A(\u_cpu.branch_op ),
    .B(rreg1[0]),
    .C(_374_),
    .Y(_375_)
);

DFFPOSX1 _4076_ (
    .D(_1231_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2])
);

FILL FILL_0__3331_ (
);

NAND2X1 _2809_ (
    .A(\u_rf_if.read_buf1 [28]),
    .B(_1783__bF$buf6),
    .Y(_16_)
);

NAND2X1 _2982_ (
    .A(_144_),
    .B(_1692__bF$buf2),
    .Y(_145_)
);

INVX2 _2562_ (
    .A(\u_rf_if.prefetch_active ),
    .Y(_1679_)
);

AND2X2 _2142_ (
    .A(_799_),
    .B(i_rst_n_bF$buf7),
    .Y(_1425_)
);

DFFPOSX1 _3767_ (
    .D(_1280_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

MUX2X1 _3347_ (
    .A(_410_),
    .B(_411_),
    .S(_1536__bF$buf3),
    .Y(_1208_)
);

FILL FILL_0__3560_ (
);

NAND2X1 _2618_ (
    .A(\u_rf_if.issue_sel ),
    .B(_1713_),
    .Y(_1726_)
);

BUFX2 BUFX2_insert60 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf2)
);

BUFX2 BUFX2_insert61 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf1)
);

BUFX2 BUFX2_insert62 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf0)
);

BUFX2 BUFX2_insert63 (
    .A(_1006_),
    .Y(_1006__bF$buf4)
);

BUFX2 BUFX2_insert64 (
    .A(_1006_),
    .Y(_1006__bF$buf3)
);

BUFX2 BUFX2_insert65 (
    .A(_1006_),
    .Y(_1006__bF$buf2)
);

BUFX2 BUFX2_insert66 (
    .A(_1006_),
    .Y(_1006__bF$buf1)
);

BUFX2 BUFX2_insert67 (
    .A(_1006_),
    .Y(_1006__bF$buf0)
);

BUFX2 BUFX2_insert68 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf7 )
);

BUFX2 BUFX2_insert69 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf6 )
);

MUX2X1 _2791_ (
    .A(\u_rf_if.read_buf1 [25]),
    .B(\u_rf_if.read_buf1 [26]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_2_)
);

AOI21X1 _2371_ (
    .A(_738_),
    .B(_741_),
    .C(_1496_),
    .Y(_1415_)
);

FILL FILL126750x86550 (
);

DFFPOSX1 _3996_ (
    .D(_1396_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_rf_if.o_waddr [3])
);

INVX1 _3576_ (
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_580_)
);

OAI21X1 _3156_ (
    .A(_659__bF$buf4),
    .B(_271_),
    .C(_268_),
    .Y(_1259_)
);

FILL FILL_0__2411_ (
);

NAND2X1 _2847_ (
    .A(\u_rf_if.read_buf0 [7]),
    .B(_22__bF$buf2),
    .Y(_45_)
);

NAND2X1 _2427_ (
    .A(_1549_),
    .B(_1537_),
    .Y(_1550_)
);

INVX1 _2007_ (
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_917_)
);

AOI21X1 _2180_ (
    .A(_778_),
    .B(_765_),
    .C(_1009_),
    .Y(_764_)
);

AOI21X1 _3385_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [1]),
    .C(_433_),
    .Y(_434_)
);

AOI21X1 _1871_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(_1037_),
    .C(_1036_),
    .Y(_1035_)
);

INVX1 _2656_ (
    .A(_1757_),
    .Y(_1758_)
);

INVX1 _2236_ (
    .A(_714_),
    .Y(_712_)
);

INVX1 _3194_ (
    .A(rreg0[2]),
    .Y(_299_)
);

MUX2X1 _1927_ (
    .A(\u_cpu.bufreg.data [3]),
    .B(\u_cpu.ctrl.o_ibus_adr [3]),
    .S(_1006__bF$buf1),
    .Y(_986_)
);

AND2X2 _2885_ (
    .A(_73_),
    .B(i_rst_n_bF$buf0),
    .Y(_1332_)
);

AOI22X1 _2465_ (
    .A(_1585_),
    .B(_1587_),
    .C(_1536__bF$buf1),
    .D(\u_cpu.bufreg.data [0]),
    .Y(_1588_)
);

OAI21X1 _2045_ (
    .A(_889_),
    .B(_973__bF$buf2),
    .C(_884_),
    .Y(_883_)
);

FILL FILL_0__3463_ (
);

NOR2X1 _2694_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_1742_),
    .Y(_1783_)
);

OAI21X1 _2274_ (
    .A(_675_),
    .B(_689_),
    .C(_728_),
    .Y(_674_)
);

DFFPOSX1 _3899_ (
    .D(_1344_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf0 [4])
);

NAND2X1 _3479_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_910_),
    .Y(_511_)
);

AOI21X1 _3059_ (
    .A(_202_),
    .B(_201_),
    .C(_1070__bF$buf5),
    .Y(_1287_)
);

FILL FILL_0__2314_ (
);

DFFPOSX1 _4000_ (
    .D(_1196_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(\u_cpu.bufreg.data [2])
);

OAI21X1 _1965_ (
    .A(_959_),
    .B(_973__bF$buf2),
    .C(_954_),
    .Y(_953_)
);

NOR2X1 _2083_ (
    .A(_1023__bF$buf5),
    .B(_851_),
    .Y(_850_)
);

INVX1 _3288_ (
    .A(rreg0[4]),
    .Y(_372_)
);

OAI21X1 _2979_ (
    .A(_673__bF$buf3),
    .B(_674__bF$buf3),
    .C(\u_rf_if.rreg1_latched [1]),
    .Y(_142_)
);

NAND2X1 _2559_ (
    .A(\u_rf_if.issue_chunk [1]),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_1676_)
);

NOR2X1 _2139_ (
    .A(_1023__bF$buf2),
    .B(_802_),
    .Y(_801_)
);

DFFPOSX1 _3920_ (
    .D(_1159_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [23])
);

OAI21X1 _3500_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [11]),
    .C(_526_),
    .Y(_527_)
);

OAI21X1 _3097_ (
    .A(_222_),
    .B(_1547_),
    .C(i_rst_n_bF$buf5),
    .Y(_226_)
);

NAND2X1 _2788_ (
    .A(\u_rf_if.read_buf1 [23]),
    .B(_1783__bF$buf3),
    .Y(_1859_)
);

OR2X2 _2368_ (
    .A(_1494_),
    .B(_1257_),
    .Y(_1495_)
);

FILL FILL127350x79350 (
);

FILL FILL_0__3366_ (
);

AOI21X1 _2597_ (
    .A(_1680_),
    .B(_1706_),
    .C(_1707_),
    .Y(_1400_)
);

OAI21X1 _2177_ (
    .A(_768_),
    .B(_994__bF$buf5),
    .C(_1023__bF$buf2),
    .Y(_767_)
);

FILL FILL_0__2217_ (
);

FILL FILL_0__2390_ (
);

INVX1 _1868_ (
    .A(\u_mem_serial.bit_count [1]),
    .Y(_1038_)
);

endmodule
