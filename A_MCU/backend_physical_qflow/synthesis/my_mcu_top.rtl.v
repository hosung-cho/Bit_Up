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

wire o_mem_sck ;
wire _1677_ ;
wire _1257_ ;
wire _588_ ;
wire _168_ ;
wire _661__bF$buf0 ;
wire _661__bF$buf1 ;
wire _661__bF$buf2 ;
wire _661__bF$buf3 ;
wire _661__bF$buf4 ;
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
wire _738_ ;
wire _318_ ;
wire _1580_ ;
wire _1160_ ;
wire _491_ ;
wire _1636_ ;
wire _1216_ ;
wire _967_ ;
wire _547_ ;
wire _127_ ;
wire _1865_ ;
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
wire _1862_ ;
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
wire _1897_ ;
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
wire [10:0] \u_rf_serial.last_req_key  ;
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
wire _1894_ ;
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
wire _1853_ ;
wire _1433_ ;
wire _1013_ ;
wire i_mem_miso ;
wire _764_ ;
wire _344_ ;
wire _1909_ ;
wire _1662_ ;
wire _1242_ ;
wire _993_ ;
wire _573_ ;
wire _153_ ;
wire _1718_ ;
wire _629_ ;
wire _209_ ;
wire _1891_ ;
wire _1471_ ;
wire _1051_ ;
wire _382_ ;
wire _1527_ ;
wire _1107_ ;
wire _1040__bF$buf0 ;
wire _1040__bF$buf1 ;
wire _1040__bF$buf2 ;
wire _1040__bF$buf3 ;
wire _1040__bF$buf4 ;
wire _858_ ;
wire _438_ ;
wire _1280_ ;
wire _191_ ;
wire _12__bF$buf0 ;
wire _12__bF$buf1 ;
wire _12__bF$buf2 ;
wire _1756_ ;
wire _12__bF$buf3 ;
wire _1336_ ;
wire _12__bF$buf4 ;
wire _12__bF$buf5 ;
wire _12__bF$buf6 ;
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
wire _1888_ ;
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
wire _1906_ ;
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
wire _1885_ ;
wire _1465_ ;
wire _1045_ ;
wire _796_ ;
wire _376_ ;
wire \u_mem_serial.active_we_bF$buf4  ;
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
wire _1903_ ;
wire _814_ ;
wire _74_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf7  ;
wire _1712_ ;
wire _623_ ;
wire _203_ ;
wire _1693__bF$buf0 ;
wire _1693__bF$buf1 ;
wire _1693__bF$buf2 ;
wire _1693__bF$buf3 ;
wire _1693__bF$buf4 ;
wire _1693__bF$buf5 ;
wire _1521_ ;
wire _1101_ ;
wire _852_ ;
wire _432_ ;
wire _908_ ;
wire _1750_ ;
wire _1330_ ;
wire _661_ ;
wire _241_ ;
wire \u_mem_serial.active_we  ;
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
wire _1882_ ;
wire _1462_ ;
wire _1042_ ;
wire _793_ ;
wire _373_ ;
wire _1518_ ;
wire _849_ ;
wire _429_ ;
wire \u_mem_serial.active_we_bF$buf1  ;
wire _1691_ ;
wire _1271_ ;
wire _182_ ;
wire [0:0] \u_rf_if.wdata0_r  ;
wire _1747_ ;
wire _1327_ ;
wire _658_ ;
wire _238_ ;
wire _1080_ ;
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
wire _1879_ ;
wire _1459_ ;
wire _1039_ ;
wire _1688_ ;
wire _1268_ ;
wire _599_ ;
wire _179_ ;
wire _1900_ ;
wire _811_ ;
wire _71_ ;
wire _1497_ ;
wire _1077_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf4  ;
wire _1704__bF$buf0 ;
wire _1704__bF$buf1 ;
wire _1704__bF$buf2 ;
wire _1704__bF$buf3 ;
wire _620_ ;
wire _200_ ;
wire \gen_int_sys_clk.clk_sys_r_hier0_bF$buf5  ;
wire _905_ ;
wire _1803_ ;
wire [31:0] \u_mem_serial.shift_reg  ;
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
wire ibus_pending_ack_bF$buf6 ;
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
wire _556__bF$buf0 ;
wire _556__bF$buf1 ;
wire _556__bF$buf2 ;
wire _556__bF$buf3 ;
wire _556__bF$buf4 ;
wire _30_ ;
wire _1876_ ;
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
wire _1873_ ;
wire [1:0] \u_mem_serial.state  ;
wire _1453_ ;
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
wire [4:0] \u_rf_serial.tx_state  ;
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
wire _1870_ ;
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
wire _1867_ ;
wire _1447_ ;
wire _1027_ ;
wire _778_ ;
wire _358_ ;
wire _1676_ ;
wire _1256_ ;
wire _587_ ;
wire _167_ ;
wire _1485_ ;
wire _1065_ ;
wire _396_ ;
wire _1294_ ;
wire _1126__bF$buf0 ;
wire _1126__bF$buf1 ;
wire _1126__bF$buf2 ;
wire _1126__bF$buf3 ;
wire _1126__bF$buf4 ;
wire _1126__bF$buf5 ;
wire _1126__bF$buf6 ;
wire _1126__bF$buf7 ;
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
wire \u_rf_serial.req_seen  ;
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
wire _1864_ ;
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
wire _1899_ ;
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
wire _1861_ ;
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
wire _50_ ;
wire _1896_ ;
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
wire _1893_ ;
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
wire _1911_ ;
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
wire _1908_ ;
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
wire _1890_ ;
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
wire _1887_ ;
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
wire _1905_ ;
wire _816_ ;
wire _76_ ;
wire \gen_int_sys_clk.clk_sys_r_bF$buf9  ;
wire _440__bF$buf0 ;
wire _440__bF$buf1 ;
wire _440__bF$buf2 ;
wire _440__bF$buf3 ;
wire _440__bF$buf4 ;
wire _440__bF$buf5 ;
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
wire _1884_ ;
wire _1464_ ;
wire _1044_ ;
wire _795_ ;
wire _375_ ;
wire \u_mem_serial.active_we_bF$buf3  ;
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
wire _1902_ ;
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
wire _1881_ ;
wire _1461_ ;
wire _1041_ ;
wire _792_ ;
wire _372_ ;
wire _1517_ ;
wire _848_ ;
wire _428_ ;
wire \u_mem_serial.active_we_bF$buf0  ;
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
wire _1878_ ;
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
wire [3:0] \u_cpu.state.cnt_r  ;
wire _904_ ;
wire _1802_ ;
wire _713_ ;
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
wire _1875_ ;
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
wire _1872_ ;
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
wire _1869_ ;
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
wire _1866_ ;
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
wire \u_rf_serial.launch_pending  ;
wire _1634_ ;
wire _1214_ ;
wire _965_ ;
wire _545_ ;
wire _125_ ;
wire _1863_ ;
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
wire \gen_int_sys_clk.clk_sys_r_bF$buf44  ;
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
wire _1898_ ;
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
wire _924_ ;
wire _504_ ;
wire _190__bF$buf0 ;
wire _190__bF$buf1 ;
wire _190__bF$buf2 ;
wire _190__bF$buf3 ;
wire _190__bF$buf4 ;
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
wire _1860_ ;
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
wire _1895_ ;
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
wire [5:0] \u_rf_if.write_wait  ;
wire _1722_ ;
wire _1302_ ;
wire _633_ ;
wire _213_ ;
wire _1531_ ;
wire _1111_ ;
wire _862_ ;
wire _442_ ;
wire _615__bF$buf0 ;
wire _615__bF$buf1 ;
wire _615__bF$buf2 ;
wire _615__bF$buf3 ;
wire _615__bF$buf4 ;
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
wire _1892_ ;
wire _1472_ ;
wire _1052_ ;
wire _383_ ;
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
wire _1889_ ;
wire _1469_ ;
wire _1049_ ;
wire _1052__bF$buf0 ;
wire _1052__bF$buf1 ;
wire i_rf_miso ;
wire _1052__bF$buf2 ;
wire _1052__bF$buf3 ;
wire _1052__bF$buf4 ;
wire _1698_ ;
wire _1278_ ;
wire _189_ ;
wire _1910_ ;
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
wire _1067__bF$buf0 ;
wire _1067__bF$buf1 ;
wire _1067__bF$buf2 ;
wire _1067__bF$buf3 ;
wire _1067__bF$buf4 ;
wire _1851_ ;
wire _1431_ ;
wire _1011_ ;
wire _762_ ;
wire _342_ ;
wire _1907_ ;
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
wire _1886_ ;
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
wire _1904_ ;
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
wire ren_bF$buf0 ;
wire ren_bF$buf1 ;
wire ren_bF$buf2 ;
wire ren_bF$buf3 ;
wire _1883_ ;
wire _1463_ ;
wire _1043_ ;
wire _794_ ;
wire _374_ ;
wire _1519_ ;
wire \u_mem_serial.active_we_bF$buf2  ;
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
wire _1058__bF$buf0 ;
wire _1058__bF$buf1 ;
wire _1058__bF$buf2 ;
wire _1058__bF$buf3 ;
wire _1058__bF$buf4 ;
wire _1058__bF$buf5 ;
wire _1058__bF$buf6 ;
wire _1689_ ;
wire _1269_ ;
wire _1062__bF$buf0 ;
wire _1062__bF$buf1 ;
wire _1062__bF$buf2 ;
wire _1062__bF$buf3 ;
wire _1062__bF$buf4 ;
wire _1901_ ;
wire _812_ ;
wire _72_ ;
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
wire _1880_ ;
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
wire [1:0] \u_rf_serial.shift_rx  ;
wire _31_ ;
wire _1877_ ;
wire _1457_ ;
wire _1037_ ;
wire _788_ ;
wire _368_ ;
wire [4:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7  ;
wire _1686_ ;
wire _1266_ ;
wire _597_ ;
wire _177_ ;
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
wire _733__bF$buf0 ;
wire _733__bF$buf1 ;
wire _733__bF$buf2 ;
wire _733__bF$buf3 ;
wire _733__bF$buf4 ;
wire _733__bF$buf5 ;
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
wire _1874_ ;
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
wire _1871_ ;
wire _1451_ ;
wire _1031_ ;
wire _782_ ;
wire _362_ ;
wire _1824__bF$buf0 ;
wire _1824__bF$buf1 ;
wire _1824__bF$buf2 ;
wire _1824__bF$buf3 ;
wire _1824__bF$buf4 ;
wire _1824__bF$buf5 ;
wire _1824__bF$buf6 ;
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
wire _494_ ;
wire _1639_ ;
wire _1219_ ;
wire _1392_ ;
wire _22_ ;
wire _1868_ ;
wire _1448_ ;
wire _1028_ ;
wire _779_ ;
wire _359_ ;

FILL FILL132750x46950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2026_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4132_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1495_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [14])
);

DFFPOSX1 _3823_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1335_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

INVX1 _3403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [24]),
    .Y(_391_)
);

FILL FILL_1__3145_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2255_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert131 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert133 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert135 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert137 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert138 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_557_),
    .B(_190__bF$buf0),
    .C(_554_),
    .D(_556__bF$buf3),
    .Y(_1214_)
);

OAI21X1 _3212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733__bF$buf2),
    .B(_241_),
    .C(_238_),
    .Y(_1318_)
);

FILL FILL_1__3374_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert120 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1052_),
    .Y(_1052__bF$buf1)
);

BUFX2 BUFX2_insert121 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1052_),
    .Y(_1052__bF$buf0)
);

BUFX2 BUFX2_insert122 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1040_),
    .Y(_1040__bF$buf4)
);

BUFX2 BUFX2_insert123 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1040_),
    .Y(_1040__bF$buf3)
);

BUFX2 BUFX2_insert124 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1040_),
    .Y(_1040__bF$buf2)
);

BUFX2 BUFX2_insert125 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1040_),
    .Y(_1040__bF$buf1)
);

BUFX2 BUFX2_insert126 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1040_),
    .Y(_1040__bF$buf0)
);

FILL FILL_0__2484_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2064_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4170_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1305_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(rreg0[1])
);

OAI21X1 _2903_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf5),
    .B(_9_),
    .C(_10_),
    .Y(_11_)
);

FILL FILL_0__3689_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2225_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3861_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1354_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_rf_if.write_wait [2])
);

INVX1 _3441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [5]),
    .Y(_410_)
);

AOI21X1 _3021_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_100_),
    .B(_99_),
    .C(_1126__bF$buf6),
    .Y(_1368_)
);

FILL FILL_0__3901_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1916_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert162 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2293_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert166 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2712_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1702_),
    .B(_1697_),
    .Y(_1769_)
);

NOR2X1 _3917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .Y(_1122_)
);

FILL FILL_1__2454_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1984_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_576_),
    .B(_190__bF$buf1),
    .C(_575_),
    .D(_556__bF$buf3),
    .Y(_1195_)
);

OAI21X1 _3250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[4]),
    .B(_268_),
    .C(_733__bF$buf4),
    .Y(_269_)
);

FILL FILL_0__2769_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4035_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1444_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(\u_rf_if.write_wait [5])
);

FILL FILL_0__3710_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert65 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert69 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert21 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert23 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert25 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert27 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert28 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2941_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_39_),
    .B(i_rst_n_bF$buf5),
    .Y(_1387_)
);

NAND2X1 _2521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_722_),
    .B(_732_),
    .Y(_1613_)
);

OAI21X1 _2101_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_933_),
    .B(_935_),
    .C(_1058__bF$buf3),
    .Y(_932_)
);

OAI21X1 _3726_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_614_),
    .C(mem_ibus_ack),
    .Y(_615_)
);

INVX1 _3306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[25]),
    .Y(_313_)
);

FILL FILL_1__2683_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3048_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2998_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2750_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1803_),
    .Y(_1804_)
);

AOI22X1 _2330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[6]),
    .B(ren_bF$buf1),
    .C(_732_),
    .D(_722_),
    .Y(_721_)
);

DFFSR _3955_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1153_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(ibus_pending_rdt[6])
);

AOI21X1 _3535_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf1),
    .B(_484_),
    .C(_485_),
    .Y(_1239_)
);

NOR2X1 _3115_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1701_),
    .B(_166_),
    .Y(_168_)
);

FILL FILL_1__3277_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4073_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1259_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_cpu.bufreg.data [7])
);

MUX2X1 _2806_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [7]),
    .B(\u_rf_if.read_buf1 [8]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1843_)
);

FILL FILL_1__2128_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _3764_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1102_),
    .B(_1100_),
    .Y(_1098_)
);

NAND3X1 _3344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_746_),
    .B(_331_),
    .C(_733__bF$buf1),
    .Y(_345_)
);

DFFPOSX1 _4129_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1285_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(rreg0[4])
);

FILL FILL_0__2196_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1685_),
    .B(_1686_),
    .Y(_1687_)
);

FILL FILL_1__2357_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert30 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert31 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

BUFX2 BUFX2_insert32 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1062_),
    .Y(_1062__bF$buf4)
);

BUFX2 BUFX2_insert33 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1062_),
    .Y(_1062__bF$buf3)
);

BUFX2 BUFX2_insert34 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1062_),
    .Y(_1062__bF$buf2)
);

BUFX2 BUFX2_insert35 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1062_),
    .Y(_1062__bF$buf1)
);

BUFX2 BUFX2_insert36 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1062_),
    .Y(_1062__bF$buf0)
);

BUFX2 BUFX2_insert37 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .Y(_12__bF$buf6)
);

BUFX2 BUFX2_insert38 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .Y(_12__bF$buf5)
);

BUFX2 BUFX2_insert39 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .Y(_12__bF$buf4)
);

DFFPOSX1 _3993_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1419_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.read_buf1 [6])
);

OAI21X1 _3573_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [12]),
    .C(_513_),
    .Y(_514_)
);

INVX1 _3153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_196_)
);

OAI21X1 _2844_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf1),
    .B(_1870_),
    .C(_1871_),
    .Y(_1872_)
);

OAI21X1 _2424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_672_),
    .C(_1143_),
    .Y(_1518_)
);

OAI21X1 _2004_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf3),
    .B(_1019_),
    .C(_1020_),
    .Y(_1018_)
);

INVX8 _3629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_193_),
    .Y(_556_)
);

INVX1 _3209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[2]),
    .Y(_239_)
);

FILL FILL_1__2586_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_376_),
    .B(_733__bF$buf2),
    .Y(_377_)
);

DFFPOSX1 _4167_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1512_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [3])
);

FILL FILL_0__3422_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3002_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2653_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf0),
    .B(_1720_),
    .C(_1719_),
    .Y(_1721_)
);

NOR2X1 _2233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_816_),
    .B(_1040__bF$buf1),
    .Y(_815_)
);

DFFPOSX1 _3858_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1186_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

MUX2X1 _3438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_408_),
    .B(_407_),
    .S(_661__bF$buf1),
    .Y(_1259_)
);

OAI21X1 _3018_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_96_),
    .C(_97_),
    .Y(_98_)
);

FILL FILL_1_BUFX2_insert91 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert96 (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _3191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733__bF$buf2),
    .B(_225_),
    .Y(_226_)
);

AOI21X1 _1924_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_1092_),
    .C(_1091_),
    .Y(_1090_)
);

FILL FILL_0__3651_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3231_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2709_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf0),
    .B(_619_),
    .Y(_1766_)
);

MUX2X1 _2882_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [26]),
    .B(\u_rf_if.read_buf1 [27]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1900_)
);

AOI21X1 _2462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1528_),
    .B(_705_),
    .C(_1555_),
    .Y(_1556_)
);

NOR2X1 _2042_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_985_),
    .Y(_1501_)
);

INVX1 _3667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_575_)
);

NOR2X1 _3247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_266_)
);

FILL FILL_0__2922_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2502_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2099_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3460_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2938_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [9]),
    .B(\u_rf_if.read_buf0 [10]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_37_)
);

NAND3X1 _2518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [8]),
    .B(_1608_),
    .C(_1609_),
    .Y(_1610_)
);

INVX1 _2691_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_1751_)
);

INVX1 _2271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_780_)
);

FILL FILL131850x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3896_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1372_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf0 [23])
);

NOR2X1 _3476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .Y(_435_)
);

OAI21X1 _3056_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [5]),
    .B(_1688_),
    .C(_123_),
    .Y(_124_)
);

FILL FILL_0__2731_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2311_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1962_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_1057_),
    .Y(_1056_)
);

AOI21X1 _2747_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1801_),
    .B(_1799_),
    .C(_1766_),
    .Y(_1437_)
);

NOR2X1 _2327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [1]),
    .B(_725_),
    .Y(_724_)
);

FILL FILL_1__2489_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2080_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_952_),
    .B(_1040__bF$buf2),
    .Y(_951_)
);

INVX1 _3285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[28]),
    .Y(_295_)
);

FILL FILL_0__2960_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2540_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert111 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert113 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert115 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert116 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert118 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3325_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2976_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf2),
    .B(_64_),
    .C(_65_),
    .Y(_66_)
);

OAI21X1 _2556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf3),
    .B(_712_),
    .C(\u_rf_serial.req_seen ),
    .Y(_1647_)
);

NOR2X1 _2136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_902_),
    .B(_1062__bF$buf0),
    .Y(_901_)
);

MUX2X1 _3094_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_151_),
    .B(_912_),
    .S(ibus_pending_ack_bF$buf3),
    .Y(_152_)
);

FILL FILL_0__3554_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3134_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2785_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1827_),
    .B(i_rst_n_bF$buf7),
    .Y(_1425_)
);

NOR2X1 _2365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_686_)
);

FILL FILL_0__2825_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2405_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3783_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3363_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1586_),
    .B(_1596_),
    .Y(_1673_)
);

MUX2X1 _2174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [23]),
    .B(\u_cpu.ctrl.o_ibus_adr [23]),
    .S(_1052__bF$buf1),
    .Y(_867_)
);

NAND3X1 _3799_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_255_),
    .B(_644_),
    .C(_641_),
    .Y(_645_)
);

NAND2X1 _3379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_744_),
    .Y(_374_)
);

FILL FILL_0__2634_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2214_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3592_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[13]),
    .Y(_223_)
);

FILL FILL_0__2863_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2443_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3228_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2879_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [24]),
    .B(_1824__bF$buf0),
    .Y(_1898_)
);

NAND2X1 _2459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1552_),
    .B(_1551_),
    .Y(_1553_)
);

MUX2X1 _2039_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [8]),
    .B(\u_cpu.ctrl.o_ibus_adr [8]),
    .S(_1052__bF$buf4),
    .Y(_987_)
);

DFFPOSX1 _3820_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1333_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_cpu.state.cnt_r [1])
);

MUX2X1 _3400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_389_),
    .B(_388_),
    .S(_661__bF$buf4),
    .Y(_1278_)
);

FILL FILL_0__2672_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3457_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3037_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2688_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_756_),
    .B(_1749_),
    .C(_1126__bF$buf0),
    .Y(_1444_)
);

NOR2X1 _2268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .B(_784_),
    .Y(_783_)
);

FILL FILL_0__1943_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2308_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x79350 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1959_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .Y(_1059_)
);

AOI21X1 _2900_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1903_),
    .B(_1824__bF$buf3),
    .C(_8_),
    .Y(_1397_)
);

FILL FILL_0__3686_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3266_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3427_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1590_),
    .B(_1573_),
    .Y(_1591_)
);

MUX2X1 _2077_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_954_),
    .B(\u_mem_serial.shift_reg [12]),
    .S(_1067__bF$buf1),
    .Y(_953_)
);

FILL FILL_0__2537_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2117_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3180_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert131 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert135 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3495_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3914_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1381_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_rf_if.read_buf0 [14])
);

FILL FILL_1__2031_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3656_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2766_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2346_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4032_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1442_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_rf_if.stream_active )
);

NOR2X1 _1997_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_1025_),
    .Y(_1506_)
);

AOI21X1 _3723_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_611_),
    .B(_612_),
    .C(_1126__bF$buf5),
    .Y(_1178_)
);

OAI21X1 _3303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_1693__bF$buf1),
    .C(_310_),
    .Y(_311_)
);

FILL FILL_1__2260_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2995_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2575_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3952_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1399_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_rf_if.read_buf1 [26])
);

NAND2X1 _3532_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_880_),
    .Y(_483_)
);

INVX1 _3112_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_165_),
    .Y(_166_)
);

DFFPOSX1 _4070_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1462_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.last_req_key [2])
);

NAND2X1 _2803_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [5]),
    .B(_1824__bF$buf5),
    .Y(_1841_)
);

FILL FILL_0__3169_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3761_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1096_),
    .B(_1099_),
    .C(_1104_),
    .Y(_1515_)
);

NAND2X1 _3341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_341_),
    .Y(_342_)
);

DFFPOSX1 _4126_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1492_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [17])
);

FILL FILL_1__3083_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3801_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [4]),
    .Y(_1684_)
);

FILL FILL_0__3398_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3817_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1330_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_cpu.state.o_cnt [2])
);

FILL FILL_1__3559_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3990_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1221_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_cpu.bufreg2.dlo [3])
);

NOR2X1 _3570_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [12]),
    .B(_440__bF$buf5),
    .Y(_512_)
);

AND2X2 _3150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf10),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_1333_)
);

FILL FILL_0__2669_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2249_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3610_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2841_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1869_),
    .B(i_rst_n_bF$buf9),
    .Y(_1411_)
);

OAI21X1 _2421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1145_),
    .B(_1180_),
    .C(_1139_),
    .Y(_1477_)
);

NOR2X1 _2001_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1022_),
    .B(_1062__bF$buf1),
    .Y(_1021_)
);

AOI22X1 _3626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_551_),
    .B(_441_),
    .C(_553_),
    .D(_552_),
    .Y(_1216_)
);

MUX2X1 _3206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_691_),
    .B(_236_),
    .S(_733__bF$buf0),
    .Y(_1319_)
);

FILL FILL_1__2163_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3788_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2898_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2478_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4164_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1302_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

FILL FILL131550x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1717_),
    .B(_1062__bF$buf3),
    .Y(_1718_)
);

MUX2X1 _2230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_818_),
    .B(\u_mem_serial.shift_reg [29]),
    .S(_1067__bF$buf4),
    .Y(_817_)
);

DFFPOSX1 _3855_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1351_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_rf_if.o_waddr [0])
);

INVX1 _3435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_407_)
);

AOI21X1 _3015_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_95_),
    .B(_94_),
    .C(_1126__bF$buf6),
    .Y(_1369_)
);

FILL FILL_1__2392_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert61 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1921_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1093_),
    .B(_1095_),
    .C(_1126__bF$buf5),
    .Y(_1514_)
);

INVX1 _2706_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1763_),
    .Y(_1764_)
);

FILL FILL_0__1978_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_573_),
    .B(_190__bF$buf0),
    .C(_572_),
    .D(_556__bF$buf2),
    .Y(_1198_)
);

NAND2X1 _3244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_263_),
    .B(_1693__bF$buf0),
    .Y(_264_)
);

DFFPOSX1 _4029_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1238_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg2.dlo [20])
);

FILL FILL_0__3704_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2935_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [7]),
    .B(_12__bF$buf1),
    .Y(_35_)
);

NOR2X1 _2515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1602_),
    .B(_1606_),
    .Y(_1607_)
);

DFFPOSX1 _3893_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1138_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\gen_int_sys_clk.clk_div [2])
);

AOI21X1 _3473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_753_),
    .B(_432_),
    .C(_429_),
    .Y(_433_)
);

AOI21X1 _3053_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704__bF$buf0),
    .B(_121_),
    .C(_122_),
    .Y(_1358_)
);

FILL FILL_0__3513_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2744_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(_1798_),
    .Y(_1799_)
);

INVX1 _2324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_728_),
    .Y(_727_)
);

DFFPOSX1 _3949_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1208_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

OAI21X1 _3529_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [23]),
    .C(_480_),
    .Y(_481_)
);

NOR2X1 _3109_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_163_),
    .B(_1691_),
    .Y(_1343_)
);

FILL FILL_1__2066_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .B(_1693__bF$buf2),
    .C(_292_),
    .Y(_293_)
);

DFFPOSX1 _4067_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1256_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [4])
);

FILL FILL_0__3742_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2973_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_63_),
    .B(i_rst_n_bF$buf4),
    .Y(_1379_)
);

INVX1 _2553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1595_),
    .Y(_1645_)
);

INVX1 _2133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_904_)
);

MUX2X1 _3758_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_617_),
    .B(_1041_),
    .S(_615__bF$buf4),
    .Y(_1148_)
);

INVX1 _3338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_339_),
    .Y(_1290_)
);

FILL FILL_1__2295_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3091_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_149_),
    .B(_146_),
    .C(_1126__bF$buf1),
    .Y(_1347_)
);

AOI21X1 _2609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1680_),
    .B(_1681_),
    .C(_1126__bF$buf7),
    .Y(_1455_)
);

MUX2X1 _2782_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [1]),
    .B(\u_rf_if.read_buf1 [2]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1825_)
);

INVX1 _2362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_690_),
    .Y(_689_)
);

DFFPOSX1 _3987_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1416_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_rf_if.read_buf1 [9])
);

AOI21X1 _3567_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf3),
    .B(_508_),
    .C(_509_),
    .Y(_1231_)
);

OAI21X1 _3147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jump ),
    .B(_192_),
    .C(_193_),
    .Y(_194_)
);

FILL FILL_0__3607_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2838_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [15]),
    .B(\u_rf_if.read_buf1 [16]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1867_)
);

INVX1 _2418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1146_),
    .Y(_1180_)
);

FILL FILL_1__3101_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [2]),
    .Y(_1671_)
);

NAND2X1 _2171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [23]),
    .Y(_870_)
);

NAND2X1 _3796_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [1]),
    .B(\u_mem_serial.shift_reg [0]),
    .Y(_642_)
);

OAI21X1 _3376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_370_),
    .Y(_371_)
);

FILL FILL_0__2211_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3416_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2647_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [30]),
    .Y(_1715_)
);

OAI21X1 _2227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_821_),
    .B(_823_),
    .C(_1058__bF$buf6),
    .Y(_820_)
);

FILL FILL132150x90150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3330_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _3185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693__bF$buf0),
    .B(_203_),
    .Y(_221_)
);

FILL FILL_0__2440_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2020_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1918_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_1098_),
    .C(\u_mem_serial.bit_count [1]),
    .Y(_1095_)
);

FILL FILL_0__3645_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2876_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf0),
    .B(_1894_),
    .C(_1895_),
    .Y(_1896_)
);

NOR2X1 _2456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1549_),
    .B(_1543_),
    .Y(_1550_)
);

NAND2X1 _2036_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [8]),
    .Y(_990_)
);

FILL FILL132450x111750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2198_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2916_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4199_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1327_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_cpu.state.cnt_r [3])
);

FILL FILL_1__2410_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2685_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .B(_738_),
    .S(_732_),
    .Y(_1748_)
);

AOI21X1 _2265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_787_),
    .B(\u_cpu.decode.opcode [2]),
    .C(\u_cpu.state.init_done ),
    .Y(_786_)
);

FILL FILL_0__1940_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2725_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1956_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1065_),
    .B(_1063_),
    .C(_1072_),
    .Y(_1062_)
);

FILL FILL_1__3004_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_723_),
    .B(_1582_),
    .C(_1587_),
    .Y(_1588_)
);

OAI21X1 _2074_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_957_),
    .B(_959_),
    .C(_1058__bF$buf3),
    .Y(_956_)
);

NOR2X1 _3699_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_590_),
    .B(_1069_),
    .Y(_591_)
);

NAND2X1 _3279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_289_),
    .Y(_290_)
);

FILL FILL_0__2954_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3739_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3319_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3072_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3911_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1199_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

FILL FILL_1__3233_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3088_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[16]),
    .Y(_147_)
);

FILL FILL_0__3548_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1994_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [3]),
    .B(\u_cpu.ctrl.o_ibus_adr [3]),
    .S(_1052__bF$buf2),
    .Y(_1027_)
);

NAND2X1 _2779_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf2),
    .B(_1822_),
    .Y(_1823_)
);

INVX1 _2359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_692_)
);

NAND2X1 _3720_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1540_),
    .B(_1539_),
    .Y(_1179_)
);

NAND2X1 _3300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf3),
    .B(_307_),
    .Y(_308_)
);

FILL FILL_0__2819_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3462_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2572_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2152_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3777_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2313_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [1]),
    .Y(_1669_)
);

NOR2X1 _2168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_873_),
    .Y(_1487_)
);

FILL FILL131850x122550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2628_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3691_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2381_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2800_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf5),
    .B(_1837_),
    .C(_1838_),
    .Y(_1839_)
);

FILL FILL_1__2542_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_754_),
    .B(_665_),
    .Y(_649_)
);

FILL FILL_0__2857_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4123_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1282_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(rreg1[4])
);

NOR2X1 _3814_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_634_),
    .B(_653_),
    .Y(_1128_)
);

FILL FILL_1__2771_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3136_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_551_)
);

OAI21X1 _3203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [4]),
    .B(ibus_pending_ack_bF$buf4),
    .C(_234_),
    .Y(_235_)
);

FILL FILL_1__3365_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2055_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4161_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1509_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [0])
);

FILL FILL_1__2216_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3852_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1128_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\gen_int_sys_clk.clk_div [3])
);

MUX2X1 _3432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_405_),
    .B(_404_),
    .S(_661__bF$buf1),
    .Y(_1262_)
);

OAI21X1 _3012_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_91_),
    .C(_92_),
    .Y(_93_)
);

FILL FILL_1_BUFX2_insert30 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert34 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert39 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3594_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2284_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2703_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_1761_)
);

DFFPOSX1 _3908_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1378_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .Q(\u_rf_if.read_buf0 [17])
);

FILL FILL_1__2445_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_572_)
);

INVX1 _3241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_261_)
);

DFFPOSX1 _4026_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1438_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_rf_if.read_buf1 [30])
);

FILL FILL_0__2093_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2932_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf1),
    .B(_31_),
    .C(_32_),
    .Y(_33_)
);

NAND2X1 _2512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1577_),
    .B(_732_),
    .Y(_1604_)
);

NAND2X1 _3717_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_607_),
    .B(_593_),
    .Y(_609_)
);

FILL FILL_1__2674_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3039_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3890_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1369_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.read_buf0 [26])
);

NAND2X1 _3470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_423_),
    .Y(_431_)
);

AOI21X1 _3050_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .B(_1704__bF$buf0),
    .C(_120_),
    .Y(_1359_)
);

FILL FILL_0__2989_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3510_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2741_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [31]),
    .B(\u_rf_if.stream_active_bF$buf5 ),
    .C(_1772_),
    .D(_1796_),
    .Y(_1797_)
);

AOI22X1 _2321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[7]),
    .B(ren_bF$buf0),
    .C(_732_),
    .D(_731_),
    .Y(_730_)
);

DFFPOSX1 _3946_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1396_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_rf_if.read_buf1 [29])
);

MUX2X1 _3526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_478_),
    .B(\u_mem_serial.shift_reg [24]),
    .S(_761_),
    .Y(_479_)
);

NOR2X1 _3106_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1699_),
    .B(_158_),
    .Y(_161_)
);

FILL FILL_1__3268_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4064_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1459_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.last_req_key [5])
);

FILL FILL_1__2119_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2970_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(\u_rf_if.read_buf0 [18]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_61_)
);

NOR2X1 _2550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1634_),
    .B(_1641_),
    .Y(_1642_)
);

OAI21X1 _2130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf1),
    .B(_907_),
    .C(_908_),
    .Y(_906_)
);

MUX2X1 _3755_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_616_),
    .B(_1024_),
    .S(_615__bF$buf0),
    .Y(_1150_)
);

NAND2X1 _3335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_336_),
    .B(_1693__bF$buf3),
    .Y(_337_)
);

FILL FILL_1__3497_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2187_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_717_),
    .B(_1596_),
    .C(_1679_),
    .Y(_1456_)
);

FILL FILL_1__2348_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3984_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1218_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(\u_cpu.bufreg2.dlo [0])
);

NAND2X1 _3564_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_944_),
    .Y(_507_)
);

AND2X2 _3144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_621_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_191_)
);

NAND2X1 _2835_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [13]),
    .B(_1824__bF$buf4),
    .Y(_1865_)
);

NAND3X1 _2415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_742_),
    .B(_673_),
    .C(_675_),
    .Y(_1144_)
);

FILL FILL_1__2577_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3793_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_225_),
    .B(_263_),
    .C(_638_),
    .Y(_639_)
);

AOI22X1 _3373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_367_),
    .B(_286_),
    .C(_368_),
    .D(_363_),
    .Y(_1284_)
);

DFFPOSX1 _4158_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1299_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

FILL FILL_0__3413_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2644_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1112_),
    .B(_1111_),
    .C(_1712_),
    .Y(_1713_)
);

NOR2X1 _2224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_824_),
    .B(_1040__bF$buf1),
    .Y(_823_)
);

DFFPOSX1 _3849_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1348_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_rf_if.rreg0_latched [0])
);

INVX1 _3429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [11]),
    .Y(_404_)
);

AND2X2 _3009_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_90_),
    .B(i_rst_n_bF$buf0),
    .Y(_1370_)
);

OAI21X1 _3182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_204_),
    .B(_203_),
    .C(_219_),
    .Y(_1326_)
);

BUFX2 _1915_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1907_),
    .Y(o_mem_sync)
);

FILL FILL_1_BUFX2_insert3 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert8 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3642_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3222_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2873_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1893_),
    .B(i_rst_n_bF$buf9),
    .Y(_1403_)
);

NOR2X1 _2453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1547_)
);

NOR2X1 _2033_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_993_),
    .Y(_1502_)
);

OAI22X1 _3658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_570_),
    .B(_190__bF$buf3),
    .C(_569_),
    .D(_556__bF$buf0),
    .Y(_1201_)
);

OAI21X1 _3238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_688_),
    .B(_1693__bF$buf5),
    .C(_176_),
    .Y(_1310_)
);

FILL FILL_0__2913_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL131850x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4196_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1325_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.state.init_done )
);

FILL FILL_0__3451_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2929_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_30_),
    .B(i_rst_n_bF$buf8),
    .Y(_1390_)
);

AOI21X1 _2509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_711_),
    .B(_795_),
    .C(\u_rf_serial.launch_pending ),
    .Y(_1601_)
);

FILL FILL_1__3612_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2682_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_701_),
    .B(_1745_),
    .C(_1742_),
    .Y(_1746_)
);

INVX2 _2262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_789_)
);

DFFPOSX1 _3887_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1193_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

AOI21X1 _3467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_423_),
    .B(_427_),
    .C(_428_),
    .Y(_429_)
);

AOI21X1 _3047_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_116_),
    .B(\u_rf_if.issue_sel ),
    .C(_117_),
    .Y(_118_)
);

FILL FILL_0__2722_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2302_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1953_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_1079_),
    .Y(_1065_)
);

FILL FILL_0__3680_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2738_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_1774_),
    .C(_1793_),
    .Y(_1794_)
);

NAND3X1 _2318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_755_),
    .B(_734_),
    .C(_737_),
    .Y(_733_)
);

OAI21X1 _2491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[3]),
    .B(_795_),
    .C(_1584_),
    .Y(_1585_)
);

NOR2X1 _2071_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_960_),
    .B(_1040__bF$buf3),
    .Y(_959_)
);

NAND2X1 _3696_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1086_),
    .B(_1077_),
    .Y(_588_)
);

AND2X2 _3276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_686_),
    .B(_1118_),
    .Y(_287_)
);

FILL FILL_0__2951_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2531_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2967_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(_12__bF$buf3),
    .Y(_59_)
);

NAND2X1 _2547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_731_),
    .B(_732_),
    .Y(_1639_)
);

NOR2X1 _2127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_910_),
    .B(_1062__bF$buf0),
    .Y(_909_)
);

FILL FILL132750x111750 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3085_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_144_),
    .B(_1693__bF$buf1),
    .Y(_145_)
);

FILL FILL_0__2760_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3545_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3125_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1991_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg2.dlo [3]),
    .Y(_1030_)
);

OAI21X1 _2776_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1753_),
    .C(i_rst_n_bF$buf2),
    .Y(_1821_)
);

NAND2X1 _2356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_696_),
    .B(_702_),
    .Y(_695_)
);

DFFPOSX1 _4099_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1479_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [30])
);

FILL FILL_0__3774_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3354_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3515_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [0]),
    .Y(_1667_)
);

MUX2X1 _2165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [22]),
    .B(\u_cpu.ctrl.o_ibus_adr [22]),
    .S(_1052__bF$buf3),
    .Y(_875_)
);

FILL FILL_0__2625_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2205_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3583_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3744_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_658_),
    .Y(_657_)
);

AOI21X1 _3599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf0),
    .B(_532_),
    .C(_533_),
    .Y(_1223_)
);

NAND2X1 _3179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf6),
    .B(\u_cpu.branch_op ),
    .Y(_217_)
);

FILL FILL_0__2854_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2434_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4120_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1489_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [20])
);

INVX1 _3811_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1116_),
    .Y(_1115_)
);

FILL FILL_0__2663_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3028_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2679_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_1742_),
    .Y(_1743_)
);

NAND2X1 _2259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_792_)
);

FILL FILL_0__1934_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .C(_548_),
    .Y(_549_)
);

MUX2X1 _3200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_742_),
    .B(_232_),
    .S(_733__bF$buf5),
    .Y(_1321_)
);

FILL FILL_0__2892_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3257_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3418_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[2]),
    .B(_795_),
    .C(_1581_),
    .Y(_1582_)
);

MUX2X1 _2068_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_962_),
    .B(\u_mem_serial.shift_reg [11]),
    .S(_1067__bF$buf0),
    .Y(_961_)
);

FILL FILL_0__2528_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2108_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3171_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2700_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf7),
    .B(\u_rf_if.issue_idx [5]),
    .C(\u_rf_if.prefetch_active ),
    .Y(_1759_)
);

FILL FILL_0__3486_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3066_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _3905_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .Y(_1118_)
);

FILL FILL_1__2022_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3647_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _2297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .Y(_754_)
);

FILL FILL_0__1972_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2757_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2337_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4023_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1235_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg2.dlo [17])
);

FILL FILL_0__2090_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1988_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_1033_),
    .Y(_1507_)
);

FILL FILL_0__3295_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3714_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [31]),
    .B(_591_),
    .C(_605_),
    .Y(_606_)
);

FILL FILL_1__2251_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2986_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2566_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2727_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _3943_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1150_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(ibus_pending_rdt[3])
);

NAND2X1 _3523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_441_),
    .Y(_476_)
);

OAI21X1 _3103_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .C(_1702_),
    .Y(_159_)
);

FILL FILL_1__2480_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2795_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4061_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1253_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.bufreg.data [0])
);

FILL FILL_1__2956_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3752_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_230_),
    .B(_1008_),
    .S(_615__bF$buf4),
    .Y(_1152_)
);

INVX1 _3332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[10]),
    .Y(_334_)
);

FILL FILL132450x18150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4117_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1279_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.bufreg.data [27])
);

FILL FILL_1__3074_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [7]),
    .B(_1596_),
    .C(i_rst_n_bF$buf10),
    .Y(_1678_)
);

FILL FILL_0__3389_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3808_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .C(_650_),
    .Y(_651_)
);

DFFPOSX1 _3981_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1413_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [12])
);

OAI21X1 _3561_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [15]),
    .C(_504_),
    .Y(_505_)
);

AOI21X1 _3141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_188_),
    .B(_185_),
    .C(_1126__bF$buf1),
    .Y(_1336_)
);

FILL FILL_0__3601_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2832_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf4),
    .B(_1861_),
    .C(_1862_),
    .Y(_1863_)
);

NAND2X1 _2412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1119_),
    .B(_704_),
    .Y(_1141_)
);

FILL FILL_0__3198_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3617_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(_546_),
    .Y(_547_)
);

FILL FILL_1__2154_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3779_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3790_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_236_),
    .B(_1693__bF$buf3),
    .Y(_636_)
);

AOI22X1 _3370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_362_),
    .B(_270_),
    .C(_365_),
    .D(_366_),
    .Y(_1285_)
);

FILL FILL_0__2889_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2469_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2049_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4155_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1506_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [3])
);

INVX1 _2641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1709_),
    .Y(_1710_)
);

MUX2X1 _2221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_826_),
    .B(\u_mem_serial.shift_reg [28]),
    .S(_1067__bF$buf4),
    .Y(_825_)
);

DFFPOSX1 _3846_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1178_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [6])
);

MUX2X1 _3426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_402_),
    .B(_401_),
    .S(_661__bF$buf3),
    .Y(_1265_)
);

MUX2X1 _3006_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [26]),
    .B(\u_rf_if.read_buf0 [27]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_88_)
);

FILL FILL_1__2383_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _1912_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1910_),
    .Y(o_rf_sync)
);

FILL FILL_0__2698_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2859_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2870_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [23]),
    .B(\u_rf_if.read_buf1 [24]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1891_)
);

INVX1 _2450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .Y(_1544_)
);

MUX2X1 _2030_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [7]),
    .B(\u_cpu.ctrl.o_ibus_adr [7]),
    .S(_1052__bF$buf4),
    .Y(_995_)
);

FILL FILL_0__1969_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_569_)
);

OAI21X1 _3235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [14]),
    .B(ibus_pending_ack_bF$buf4),
    .C(_257_),
    .Y(_258_)
);

DFFPOSX1 _4193_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1323_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(\u_cpu.decode.co_mem_word )
);

MUX2X1 _2926_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(\u_rf_if.read_buf0 [7]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_28_)
);

OAI21X1 _2506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_711_),
    .B(_1597_),
    .C(_1598_),
    .Y(_1599_)
);

DFFPOSX1 _3884_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1366_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_rf_if.read_buf0 [29])
);

OAI21X1 _3464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_420_),
    .B(_1517_),
    .C(_425_),
    .Y(_426_)
);

AOI21X1 _3044_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704__bF$buf2),
    .B(_114_),
    .C(_115_),
    .Y(_1360_)
);

FILL FILL_0__3504_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1950_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1071_),
    .B(_1069_),
    .Y(_1068_)
);

NOR2X1 _2735_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_1659_),
    .Y(_1791_)
);

INVX1 _2315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(_736_)
);

FILL FILL_1__2057_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3693_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .B(_208_),
    .C(_586_),
    .Y(_1182_)
);

AOI22X1 _3273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_283_),
    .B(_270_),
    .C(_176_),
    .D(_284_),
    .Y(_1300_)
);

DFFPOSX1 _4058_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1456_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.last_req_key [8])
);

FILL FILL_0__3733_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2964_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf3),
    .B(_55_),
    .C(_56_),
    .Y(_57_)
);

NAND2X1 _2544_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1574_),
    .B(_732_),
    .Y(_1636_)
);

INVX1 _2124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_912_)
);

MUX2X1 _3749_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_348_),
    .B(_984_),
    .S(_615__bF$buf1),
    .Y(_1155_)
);

INVX1 _3329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_330_),
    .Y(_331_)
);

FILL FILL_1__2286_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3082_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(_733__bF$buf1),
    .Y(_142_)
);

AOI21X1 _2773_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1816_),
    .B(_1817_),
    .C(_1818_),
    .Y(_1428_)
);

NAND2X1 _2353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_700_),
    .B(_699_),
    .Y(_698_)
);

DFFPOSX1 _3978_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1215_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

NOR2X1 _3558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_440__bF$buf2),
    .Y(_503_)
);

INVX1 _3138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[23]),
    .Y(_186_)
);

FILL FILL_0__2813_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4096_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1269_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_cpu.bufreg.data [17])
);

AND2X2 _2829_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1860_),
    .B(i_rst_n_bF$buf4),
    .Y(_1414_)
);

OR2X2 _2409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1130_),
    .B(\u_cpu.alu.add_cy_r ),
    .Y(_1133_)
);

NOR2X1 _2582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf7),
    .B(_1665_),
    .Y(_1466_)
);

NAND2X1 _2162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [22]),
    .Y(_878_)
);

NOR2X1 _3787_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_632_),
    .B(_628_),
    .Y(_634_)
);

OAI21X1 _3367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_1693__bF$buf3),
    .C(_363_),
    .Y(_364_)
);

FILL FILL_0__3407_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3160_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1697_),
    .B(_1707_),
    .C(_1691_),
    .Y(_1452_)
);

OAI21X1 _2218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_829_),
    .B(_831_),
    .C(_1058__bF$buf6),
    .Y(_828_)
);

FILL FILL_1__3321_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_666_),
    .B(_661__bF$buf0),
    .C(_693_),
    .Y(_660_)
);

NAND2X1 _3596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_1008_),
    .Y(_531_)
);

NOR2X1 _3176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_207_),
    .B(_213_),
    .Y(_214_)
);

FILL FILL_0__2011_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3636_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2867_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [21]),
    .B(_1824__bF$buf0),
    .Y(_1889_)
);

OAI21X1 _2447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_1540_),
    .C(_1539_),
    .Y(_1541_)
);

NAND2X1 _2027_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [7]),
    .Y(_998_)
);

FILL FILL_1__2189_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2907_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3550_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2240_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2401_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1740_),
    .B(_756_),
    .C(_1126__bF$buf0),
    .Y(_1447_)
);

INVX2 _2256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf2),
    .Y(_795_)
);

FILL FILL_0__2716_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1947_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1094_),
    .B(_1074_),
    .C(_1072_),
    .Y(_1071_)
);

FILL FILL_1__2630_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_719_),
    .B(_1578_),
    .Y(_1579_)
);

OAI21X1 _2065_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_965_),
    .B(_967_),
    .C(_1058__bF$buf2),
    .Y(_964_)
);

FILL FILL_0__2945_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3063_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3902_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1375_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .Q(\u_rf_if.read_buf0 [20])
);

FILL FILL_1__3224_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_758_),
    .B(_765_),
    .C(_761_),
    .Y(_757_)
);

NAND2X1 _3499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_832_),
    .Y(_455_)
);

INVX1 _3079_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_140_),
    .Y(_1350_)
);

DFFPOSX1 _4020_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1435_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_rf_if.rtrig1 )
);

FILL FILL_0__3539_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1985_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [2]),
    .B(\u_cpu.ctrl.o_ibus_adr [2]),
    .S(_1052__bF$buf2),
    .Y(_1035_)
);

FILL FILL_0__3292_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3711_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_601_),
    .B(_598_),
    .C(_602_),
    .Y(_603_)
);

FILL FILL_1__3453_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2143_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3768_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2304_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2999_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [23]),
    .B(_12__bF$buf6),
    .Y(_83_)
);

OAI21X1 _2579_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_720_),
    .C(i_rst_n_bF$buf10),
    .Y(_1664_)
);

NOR2X1 _2159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_881_),
    .Y(_1488_)
);

DFFPOSX1 _3940_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1393_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.read_buf0 [2])
);

AOI21X1 _3520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_781_),
    .B(_472_),
    .C(_473_),
    .Y(_474_)
);

NAND2X1 _3100_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(_1693__bF$buf1),
    .Y(_157_)
);

FILL FILL_0__2619_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3682_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2372_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2533_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .B(_794_),
    .Y(_663_)
);

FILL FILL_0__2848_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4114_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1278_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_cpu.bufreg.data [26])
);

FILL FILL_0__2181_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x72150 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1575_),
    .B(_1596_),
    .C(_1676_),
    .Y(_1459_)
);

NOR2X1 _3805_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_1114_),
    .Y(_1113_)
);

FILL FILL_1__2762_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3127_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_848_),
    .B(_1040__bF$buf1),
    .Y(_847_)
);

FILL FILL_0__3195_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1928_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_544_),
    .B(_1047_),
    .S(_440__bF$buf5),
    .Y(_1219_)
);

FILL FILL_1__2991_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3356_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2046_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4152_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1505_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [4])
);

FILL FILL_1__2207_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3843_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1345_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_rf_if.rreg0_latched [3])
);

INVX1 _3423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [14]),
    .Y(_401_)
);

NAND2X1 _3003_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [24]),
    .B(_12__bF$buf6),
    .Y(_86_)
);

FILL FILL_1__3585_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2275_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2436_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3652_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_567_),
    .B(_190__bF$buf3),
    .C(_566_),
    .D(_556__bF$buf0),
    .Y(_1204_)
);

MUX2X1 _3232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1119_),
    .B(_255_),
    .S(_733__bF$buf2),
    .Y(_1312_)
);

DFFPOSX1 _4017_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1433_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_rf_if.prefetch_active )
);

FILL FILL_0__2084_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4190_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1320_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.decode.opcode [2])
);

NAND2X1 _2923_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [4]),
    .B(_12__bF$buf4),
    .Y(_26_)
);

NOR2X1 _2503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1595_),
    .B(_1594_),
    .Y(_1596_)
);

NAND2X1 _3708_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_789_),
    .B(_599_),
    .Y(_600_)
);

FILL FILL_1__2665_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3881_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1135_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\gen_int_sys_clk.clk_sys_r )
);

AOI21X1 _3461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_675_),
    .B(_673_),
    .C(_422_),
    .Y(_423_)
);

AOI21X1 _3041_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704__bF$buf2),
    .B(_112_),
    .C(_113_),
    .Y(_1361_)
);

FILL FILL_0__3501_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2732_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1783_),
    .B(_1788_),
    .Y(_1789_)
);

OAI21X1 _2312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_749_),
    .B(_745_),
    .C(_740_),
    .Y(_739_)
);

FILL FILL_0__3098_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3937_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1205_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

NOR2X1 _3517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_468_),
    .Y(_471_)
);

FILL FILL_1__2894_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3259_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3690_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1546_),
    .Y(_585_)
);

AOI22X1 _3270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_281_),
    .B(_270_),
    .C(_229_),
    .D(_282_),
    .Y(_1301_)
);

DFFPOSX1 _4055_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1249_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.bufreg.c_r )
);

FILL FILL_0__3730_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3310_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2961_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_54_),
    .B(i_rst_n_bF$buf5),
    .Y(_1382_)
);

NOR2X1 _2541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1621_),
    .B(_1632_),
    .Y(_1633_)
);

OAI21X1 _2121_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf2),
    .B(_915_),
    .C(_916_),
    .Y(_914_)
);

MUX2X1 _3746_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_382_),
    .B(_960_),
    .S(_615__bF$buf3),
    .Y(_1158_)
);

AOI22X1 _3326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_678_),
    .B(_323_),
    .C(_176_),
    .D(_328_),
    .Y(_1291_)
);

FILL FILL_1__3488_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2178_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1974_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2339_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3700_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2770_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .B(_1761_),
    .Y(_1816_)
);

INVX1 _2350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .Y(_701_)
);

DFFPOSX1 _3975_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1410_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [15])
);

AOI21X1 _3555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf1),
    .B(_499_),
    .C(_500_),
    .Y(_1234_)
);

OAI21X1 _3135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_116_),
    .B(_1693__bF$buf4),
    .C(_183_),
    .Y(_184_)
);

FILL FILL_0__2810_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4093_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1474_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_serial.launch_pending )
);

MUX2X1 _2826_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [12]),
    .B(\u_rf_if.read_buf1 [13]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1858_)
);

INVX2 _2406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_619_)
);

FILL FILL_1__2568_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3784_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_div [0]),
    .Y(_1136_)
);

OAI21X1 _3364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733__bF$buf5),
    .B(_361_),
    .C(_358_),
    .Y(_1286_)
);

DFFPOSX1 _4149_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1295_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

NAND2X1 _2635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1704__bF$buf1),
    .Y(_1705_)
);

NOR2X1 _2215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_832_),
    .B(_1040__bF$buf1),
    .Y(_831_)
);

FILL FILL_1__2797_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [7]),
    .C(_528_),
    .Y(_529_)
);

OR2X2 _3173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_208_),
    .B(_210_),
    .Y(_211_)
);

FILL FILL_0__3213_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2864_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf1),
    .B(_1885_),
    .C(_1886_),
    .Y(_1887_)
);

OAI21X1 _2444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1535_),
    .B(_1537_),
    .C(_1536_),
    .Y(_1538_)
);

NOR2X1 _2024_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_1001_),
    .Y(_1503_)
);

INVX1 _3649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_566_)
);

INVX1 _3229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[6]),
    .Y(_253_)
);

DFFPOSX1 _4187_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1316_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.active_we )
);

FILL FILL_0__3442_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3022_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3603_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1737_),
    .Y(_1738_)
);

OAI21X1 _2253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [1]),
    .B(\u_rf_serial.tx_state [0]),
    .C(\u_rf_serial.tx_state [2]),
    .Y(_798_)
);

DFFPOSX1 _3878_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1363_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(raddr[2])
);

INVX1 _3458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_419_),
    .Y(_420_)
);

AOI21X1 _3038_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1705_),
    .B(_111_),
    .C(_1126__bF$buf6),
    .Y(_1362_)
);

FILL FILL_0__2713_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1944_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [6]),
    .B(\u_mem_serial.bit_count [5]),
    .Y(_1074_)
);

FILL FILL_0__3671_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2729_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[5]),
    .B(raddr[4]),
    .Y(_1786_)
);

INVX1 _2309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_742_)
);

OR2X2 _2482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1575_),
    .B(_804_),
    .Y(_1576_)
);

NOR2X1 _2062_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_968_),
    .B(_1040__bF$buf2),
    .Y(_967_)
);

OAI22X1 _3687_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_584_),
    .B(_190__bF$buf4),
    .C(_583_),
    .D(_556__bF$buf2),
    .Y(_1186_)
);

AOI22X1 _3267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_279_),
    .B(_270_),
    .C(_226_),
    .D(_280_),
    .Y(_1302_)
);

FILL FILL_0__2942_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2522_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2958_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [14]),
    .B(\u_rf_if.read_buf0 [15]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_52_)
);

OAI22X1 _2538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [1]),
    .B(_1566_),
    .C(_1619_),
    .D(_1586_),
    .Y(_1630_)
);

NOR2X1 _2118_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_918_),
    .B(_1062__bF$buf0),
    .Y(_917_)
);

NOR2X1 _2291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_789_),
    .Y(_760_)
);

MUX2X1 _3496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_452_),
    .B(_777_),
    .S(_781_),
    .Y(_453_)
);

AOI21X1 _3076_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1568_),
    .B(_1729_),
    .C(_138_),
    .Y(_1351_)
);

FILL FILL_0__2751_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3116_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1982_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg2.dlo [2]),
    .Y(_1038_)
);

INVX1 _2767_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1814_),
    .Y(_1430_)
);

AOI21X1 _2347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.bufreg.i_sh_signed ),
    .C(_788_),
    .Y(_704_)
);

FILL FILL_1__3030_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2980_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3345_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3926_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3506_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2996_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf6),
    .B(_79_),
    .C(_80_),
    .Y(_81_)
);

NOR2X1 _2576_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_1126__bF$buf7),
    .Y(_1662_)
);

MUX2X1 _2156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [21]),
    .B(\u_cpu.ctrl.o_ibus_adr [21]),
    .S(_1052__bF$buf3),
    .Y(_883_)
);

FILL FILL_0__2616_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3574_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3154_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2110_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3735_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .Y(_666_)
);

FILL FILL_0__2845_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2425_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4111_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1485_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [24])
);

FILL FILL_0__3383_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3802_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_707_),
    .B(_1693__bF$buf3),
    .C(_647_),
    .D(_636_),
    .Y(_1134_)
);

MUX2X1 _2194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_850_),
    .B(\u_mem_serial.shift_reg [25]),
    .S(_1067__bF$buf4),
    .Y(_849_)
);

FILL FILL132450x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [26]),
    .Y(_389_)
);

FILL FILL_0__2654_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3019_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2815_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1925_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf2),
    .B(_541_),
    .C(_542_),
    .Y(_1220_)
);

FILL FILL_0__2883_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3248_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3409_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2899_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_7_),
    .B(_1824__bF$buf5),
    .C(i_rst_n_bF$buf0),
    .Y(_8_)
);

OAI21X1 _2479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1564_),
    .B(_1560_),
    .C(_1572_),
    .Y(_1573_)
);

MUX2X1 _2059_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_970_),
    .B(\u_mem_serial.shift_reg [10]),
    .S(_1067__bF$buf1),
    .Y(_969_)
);

DFFSR _3840_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1176_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(ibus_pending_rdt[29])
);

MUX2X1 _3420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_399_),
    .B(_398_),
    .S(_661__bF$buf3),
    .Y(_1268_)
);

OAI21X1 _3000_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf6),
    .B(_82_),
    .C(_83_),
    .Y(_84_)
);

FILL FILL_1__3162_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3897_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3477_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3057_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2013_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3638_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_794_),
    .B(_764_),
    .Y(_763_)
);

FILL FILL_0__1963_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2328_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4014_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1430_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(\u_rf_if.rcnt [2])
);

FILL FILL_1__3391_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2081_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1979_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_1041_)
);

OAI21X1 _2920_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf4),
    .B(_22_),
    .C(_23_),
    .Y(_24_)
);

INVX1 _2500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_801_),
    .Y(_1593_)
);

FILL FILL_0__3286_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3705_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_1094_),
    .Y(_597_)
);

FILL FILL_1__2242_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2097_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_936_)
);

FILL FILL_0__2557_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2137_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2718_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3934_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1390_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(\u_rf_if.read_buf0 [5])
);

INVX1 _3514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_468_)
);

FILL FILL_1__2471_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2786_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2366_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4052_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1453_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_rf_if.rreg1_latched [4])
);

FILL FILL132450x25350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2947_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3743_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_256_),
    .B(_936_),
    .S(_615__bF$buf4),
    .Y(_1161_)
);

OAI21X1 _3323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[2]),
    .B(_321_),
    .C(_733__bF$buf3),
    .Y(_327_)
);

DFFPOSX1 _4108_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1275_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_cpu.bufreg.data [23])
);

DFFSR _3972_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1157_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(ibus_pending_rdt[10])
);

NAND2X1 _3552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_920_),
    .Y(_498_)
);

INVX1 _3132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[22]),
    .Y(_181_)
);

DFFPOSX1 _4090_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1267_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_cpu.bufreg.data [15])
);

FILL FILL132750x7350 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2823_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [10]),
    .B(_1824__bF$buf6),
    .Y(_1856_)
);

OAI21X1 _2403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_668_),
    .B(_623_),
    .C(_680_),
    .Y(_622_)
);

FILL FILL_0__3189_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1032_),
    .Y(_540_)
);

FILL FILL_1__2145_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3781_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_630_),
    .B(_629_),
    .Y(_1138_)
);

INVX1 _3361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[31]),
    .Y(_359_)
);

DFFPOSX1 _4146_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1502_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [7])
);

FILL FILL132750x68550 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .Y(_1702_)
);

MUX2X1 _2212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_834_),
    .B(\u_mem_serial.shift_reg [27]),
    .S(_1067__bF$buf4),
    .Y(_833_)
);

DFFPOSX1 _3837_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1342_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.issue_chunk [1])
);

INVX1 _3417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [17]),
    .Y(_398_)
);

FILL FILL_1__2374_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_440__bF$buf3),
    .Y(_527_)
);

AND2X2 _3170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1476_),
    .B(_1132_),
    .Y(_208_)
);

FILL FILL_0__2689_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2269_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2861_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1884_),
    .B(i_rst_n_bF$buf0),
    .Y(_1406_)
);

INVX1 _2441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1535_)
);

MUX2X1 _2021_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [6]),
    .B(\u_cpu.ctrl.o_ibus_adr [6]),
    .S(_1052__bF$buf4),
    .Y(_1003_)
);

OAI22X1 _3646_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_564_),
    .B(_190__bF$buf2),
    .C(_563_),
    .D(_556__bF$buf4),
    .Y(_1207_)
);

NAND2X1 _3226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .B(_250_),
    .Y(_251_)
);

FILL FILL_0__2901_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2498_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4184_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1162_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(ibus_pending_rdt[15])
);

AND2X2 _2917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_21_),
    .B(i_rst_n_bF$buf8),
    .Y(_1393_)
);

INVX1 _2670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .Y(_1735_)
);

NAND2X1 _2250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_802_),
    .Y(_801_)
);

DFFPOSX1 _3875_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1190_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

MUX2X1 _3455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_416_),
    .B(_417_),
    .S(_661__bF$buf0),
    .Y(_1251_)
);

NAND2X1 _3035_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1704__bF$buf1),
    .Y(_110_)
);

NAND2X1 _1941_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1077_),
    .B(_1082_),
    .Y(_1076_)
);

AOI22X1 _2726_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1778_),
    .B(_1775_),
    .C(_1779_),
    .D(_1782_),
    .Y(_1783_)
);

NAND3X1 _2306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_748_),
    .B(_747_),
    .C(_746_),
    .Y(_745_)
);

FILL FILL_0__1998_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3684_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_583_)
);

AOI22X1 _3264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_277_),
    .B(_270_),
    .C(_259_),
    .D(_278_),
    .Y(_1303_)
);

DFFPOSX1 _4049_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1246_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_cpu.bufreg2.dhi [5])
);

FILL FILL_0__3724_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2955_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [12]),
    .B(_12__bF$buf0),
    .Y(_50_)
);

AOI21X1 _2535_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1625_),
    .B(ren_bF$buf3),
    .C(_1626_),
    .Y(_1627_)
);

INVX1 _2115_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_920_)
);

FILL FILL_1__2277_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_773_),
    .Y(_450_)
);

MUX2X1 _3073_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_136_),
    .B(\u_rf_if.write_wait [5]),
    .S(_1688_),
    .Y(_137_)
);

OAI21X1 _2764_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1735_),
    .B(_1736_),
    .C(_701_),
    .Y(_1812_)
);

INVX1 _2344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(current_wdata0_next_hint),
    .Y(_707_)
);

DFFPOSX1 _3969_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1407_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf1 [18])
);

OAI21X1 _3549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [18]),
    .C(_495_),
    .Y(_496_)
);

MUX2X1 _3129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_178_),
    .B(_880_),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_179_)
);

FILL FILL_0__2804_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4087_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1470_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(_1910_)
);

CLKBUF1 CLKBUF1_insert186 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 )
);

CLKBUF1 CLKBUF1_insert187 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 )
);

CLKBUF1 CLKBUF1_insert188 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 )
);

CLKBUF1 CLKBUF1_insert189 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 )
);

AND2X2 _2993_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_78_),
    .B(i_rst_n_bF$buf4),
    .Y(_1374_)
);

OAI21X1 _2573_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1651_),
    .B(_727_),
    .C(_1659_),
    .Y(_1660_)
);

NAND2X1 _2153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [21]),
    .Y(_886_)
);

NAND2X1 _3778_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_div [2]),
    .B(_627_),
    .Y(_628_)
);

OAI21X1 _3358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_330_),
    .C(_733__bF$buf0),
    .Y(_357_)
);

FILL FILL_0__3151_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [0]),
    .Y(_1699_)
);

OAI21X1 _2209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_837_),
    .B(_839_),
    .C(_1058__bF$buf0),
    .Y(_836_)
);

FILL FILL_1__3312_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_670_),
    .C(_785_),
    .Y(_669_)
);

AOI21X1 _3587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf5),
    .B(_523_),
    .C(_524_),
    .Y(_1226_)
);

NOR2X1 _3167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_205_)
);

FILL FILL_0__2002_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3627_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3380_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2858_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [20]),
    .B(\u_rf_if.read_buf1 [21]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1882_)
);

NAND2X1 _2438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_1532_)
);

NAND2X1 _2018_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [6]),
    .Y(_1006_)
);

FILL FILL_1__3541_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_853_),
    .B(_855_),
    .C(_1058__bF$buf6),
    .Y(_852_)
);

MUX2X1 _3396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_386_),
    .B(_387_),
    .S(_661__bF$buf1),
    .Y(_1280_)
);

FILL FILL_0__2231_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1580_),
    .B(_1731_),
    .Y(_1733_)
);

INVX1 _2247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .Y(_804_)
);

FILL FILL_0__2707_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3770_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2460_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2040_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1938_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .Y(_1079_)
);

FILL FILL_1__2621_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2896_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [27]),
    .B(_1824__bF$buf3),
    .Y(_6_)
);

OAI21X1 _2476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[0]),
    .B(_795_),
    .C(_1569_),
    .Y(_1570_)
);

OAI21X1 _2056_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_973_),
    .B(_975_),
    .C(_1058__bF$buf4),
    .Y(_972_)
);

FILL FILL_0__2936_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4202_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1329_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.req_pending )
);

FILL FILL_0__3054_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2850_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3215_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .B(_781_),
    .C(_767_),
    .Y(_766_)
);

FILL FILL_0__1960_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4011_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1428_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(\u_rf_if.stream_cnt [1])
);

OAI22X1 _1976_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1052__bF$buf2),
    .B(_1044_),
    .C(_1057_),
    .D(_1045_),
    .Y(_1043_)
);

FILL FILL_0__3283_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3702_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1063_),
    .B(_593_),
    .Y(_594_)
);

FILL FILL_1__3444_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2094_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf1),
    .B(_939_),
    .C(_940_),
    .Y(_938_)
);

INVX1 _3299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[26]),
    .Y(_307_)
);

FILL FILL_0__2134_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1930_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3759_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3339_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3092_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3931_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1185_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

NOR2X1 _3511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .B(_465_),
    .Y(_466_)
);

FILL FILL_1__3673_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2363_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2524_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2799_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [4]),
    .B(_1824__bF$buf5),
    .Y(_1838_)
);

NAND2X1 _2379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_673_),
    .B(_675_),
    .Y(_672_)
);

MUX2X1 _3740_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_151_),
    .B(_912_),
    .S(_615__bF$buf3),
    .Y(_1164_)
);

OAI21X1 _3320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[3]),
    .B(_321_),
    .C(_733__bF$buf3),
    .Y(_325_)
);

FILL FILL132750x126150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2839_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4105_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1482_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [27])
);

FILL FILL_0__2592_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2172_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2753_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3118_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_856_),
    .B(_1040__bF$buf2),
    .Y(_855_)
);

OAI21X1 _2820_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf6),
    .B(_1852_),
    .C(_1853_),
    .Y(_1854_)
);

OAI21X1 _2400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_626_),
    .C(_662_),
    .Y(_625_)
);

FILL FILL_0__3186_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1919_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3605_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(_537_),
    .Y(_538_)
);

FILL FILL_1__2982_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert184 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3347_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2037_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4143_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1292_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(rreg1[1])
);

DFFSR _3834_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1173_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(ibus_pending_rdt[26])
);

MUX2X1 _3414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_396_),
    .B(_395_),
    .S(_661__bF$buf2),
    .Y(_1271_)
);

FILL FILL_1__3576_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2266_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2427_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3643_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_563_)
);

NOR2X1 _3223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1064_),
    .B(_1071_),
    .Y(_248_)
);

DFFPOSX1 _4008_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1230_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [12])
);

FILL FILL_0__2495_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2075_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4181_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1313_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(mem_ibus_ack)
);

MUX2X1 _2914_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [3]),
    .B(\u_rf_if.read_buf0 [4]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_19_)
);

FILL FILL_1__2656_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3872_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1360_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(raddr[5])
);

INVX1 _3452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [30]),
    .Y(_416_)
);

OAI21X1 _3032_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[1]),
    .B(_1704__bF$buf3),
    .C(i_rst_n_bF$buf7),
    .Y(_108_)
);

NOR2X1 _2723_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(\u_rf_if.rreg1_latched [0]),
    .Y(_1780_)
);

INVX1 _2303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .Y(_748_)
);

DFFPOSX1 _3928_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1203_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

NOR2X1 _3508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_776_),
    .B(_774_),
    .Y(_463_)
);

FILL FILL_1__2885_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3681_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1544_),
    .B(_190__bF$buf4),
    .C(_581_),
    .D(_556__bF$buf2),
    .Y(_1189_)
);

AOI22X1 _3261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_275_),
    .B(_270_),
    .C(_145_),
    .D(_276_),
    .Y(_1304_)
);

DFFPOSX1 _4046_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1450_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [31])
);

FILL FILL_0__3301_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2952_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf0),
    .B(_46_),
    .C(_47_),
    .Y(_48_)
);

AND2X2 _2532_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1623_),
    .B(_1622_),
    .Y(_1624_)
);

OAI21X1 _2112_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf2),
    .B(_923_),
    .C(_924_),
    .Y(_922_)
);

MUX2X1 _3737_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_174_),
    .B(_888_),
    .S(_615__bF$buf2),
    .Y(_1167_)
);

AND2X2 _3317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733__bF$buf3),
    .B(_321_),
    .Y(_323_)
);

FILL FILL_1__3479_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_761_),
    .B(\u_mem_serial.shift_reg [29]),
    .C(_444_),
    .Y(_448_)
);

AND2X2 _3070_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_),
    .B(_132_),
    .Y(_135_)
);

FILL FILL_0__2169_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3530_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3110_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1965_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2761_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1727_),
    .B(_1693__bF$buf0),
    .Y(_1810_)
);

NAND2X1 _2341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [2]),
    .B(_724_),
    .Y(_710_)
);

DFFPOSX1 _3966_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1212_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

NOR2X1 _3546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [18]),
    .B(_440__bF$buf4),
    .Y(_494_)
);

AOI21X1 _3126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_176_),
    .B(_173_),
    .C(_1126__bF$buf1),
    .Y(_1339_)
);

FILL FILL_0__2801_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2398_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4084_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1264_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_cpu.bufreg.data [12])
);

AND2X2 _2817_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1851_),
    .B(i_rst_n_bF$buf0),
    .Y(_1417_)
);

CLKBUF1 CLKBUF1_insert150 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf21 )
);

CLKBUF1 CLKBUF1_insert151 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf20 )
);

CLKBUF1 CLKBUF1_insert152 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf19 )
);

CLKBUF1 CLKBUF1_insert153 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf18 )
);

CLKBUF1 CLKBUF1_insert154 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf17 )
);

CLKBUF1 CLKBUF1_insert155 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf16 )
);

CLKBUF1 CLKBUF1_insert156 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf15 )
);

CLKBUF1 CLKBUF1_insert157 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf14 )
);

CLKBUF1 CLKBUF1_insert158 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf13 )
);

CLKBUF1 CLKBUF1_insert159 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf12 )
);

FILL FILL_1__2559_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2990_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [22]),
    .B(\u_rf_if.read_buf0 [23]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_76_)
);

NOR2X1 _2570_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1651_),
    .B(_727_),
    .Y(_1657_)
);

NOR2X1 _2150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_889_),
    .Y(_1489_)
);

NOR2X1 _3775_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1112_),
    .B(_1110_),
    .Y(_1109_)
);

INVX1 _3355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[7]),
    .Y(_354_)
);

FILL FILL_0__2610_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1696_),
    .B(_1692_),
    .C(_1126__bF$buf1),
    .Y(_1453_)
);

NOR2X1 _2206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_840_),
    .B(_1040__bF$buf1),
    .Y(_839_)
);

FILL FILL_1__2788_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_984_),
    .Y(_522_)
);

AOI21X1 _3164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .B(_784_),
    .C(_203_),
    .Y(_1328_)
);

FILL FILL_0__3204_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2855_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [18]),
    .B(_1824__bF$buf1),
    .Y(_1880_)
);

OAI21X1 _2435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .C(_789_),
    .Y(_1529_)
);

NOR2X1 _2015_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_1009_),
    .Y(_1504_)
);

OAI21X1 _3393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_332_),
    .B(_384_),
    .C(_385_),
    .Y(_1281_)
);

DFFPOSX1 _4178_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1311_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

FILL FILL_0__3433_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3013_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1568_),
    .B(_1729_),
    .Y(_1730_)
);

NOR2X1 _2244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast_bF$buf7),
    .B(_807_),
    .Y(_1909_)
);

INVX1 _3869_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.ibus_cyc ),
    .Y(_1125_)
);

OAI21X1 _3449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .C(_656_),
    .Y(_414_)
);

OAI21X1 _3029_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .C(raddr[0]),
    .Y(_106_)
);

FILL FILL_0__3909_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1935_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1087_),
    .B(_1082_),
    .Y(_1081_)
);

FILL FILL_0__3662_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3242_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2893_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [28]),
    .B(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_3_)
);

INVX1 _2473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1566_),
    .Y(_1567_)
);

NOR2X1 _2053_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_976_),
    .B(_1040__bF$buf0),
    .Y(_975_)
);

OAI22X1 _3678_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_580_),
    .B(_190__bF$buf1),
    .C(_579_),
    .D(_556__bF$buf1),
    .Y(_1191_)
);

AOI22X1 _3258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_273_),
    .B(_270_),
    .C(_149_),
    .D(_274_),
    .Y(_1305_)
);

FILL FILL_0__2933_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2513_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3471_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2949_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_45_),
    .B(i_rst_n_bF$buf5),
    .Y(_1385_)
);

NAND3X1 _2529_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1617_),
    .B(_1618_),
    .C(_1620_),
    .Y(_1621_)
);

NOR2X1 _2109_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_926_),
    .B(_1062__bF$buf2),
    .Y(_925_)
);

NAND3X1 _2282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_771_),
    .B(\u_cpu.bufreg2.dhi [5]),
    .C(_770_),
    .Y(_769_)
);

NAND3X1 _3487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_658_),
    .B(_794_),
    .C(_197_),
    .Y(_445_)
);

OAI21X1 _3067_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [2]),
    .B(_126_),
    .C(\u_rf_if.write_wait [3]),
    .Y(_132_)
);

FILL FILL_0__2742_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3107_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2903_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1973_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1048_),
    .B(_1047_),
    .Y(_1046_)
);

NAND2X1 _2758_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf3),
    .B(_1704__bF$buf1),
    .Y(_1809_)
);

INVX1 _2338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rtrig1 ),
    .Y(_713_)
);

NOR2X1 _2091_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_942_),
    .B(_1062__bF$buf0),
    .Y(_941_)
);

OAI21X1 _3296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_1693__bF$buf2),
    .C(_304_),
    .Y(_305_)
);

FILL FILL_0__2971_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3336_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2987_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [20]),
    .B(_12__bF$buf1),
    .Y(_74_)
);

OR2X2 _2567_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1651_),
    .B(\u_rf_serial.tx_state [1]),
    .Y(_1655_)
);

MUX2X1 _2147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [20]),
    .B(\u_cpu.ctrl.o_ibus_adr [20]),
    .S(_1052__bF$buf3),
    .Y(_891_)
);

FILL FILL_1__3250_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3565_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3145_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2101_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3726_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2796_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf2),
    .B(_1834_),
    .C(_1835_),
    .Y(_1836_)
);

NAND3X1 _2376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_779_),
    .B(_677_),
    .C(_676_),
    .Y(_675_)
);

FILL FILL_0__2416_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4102_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1272_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [20])
);

FILL FILL_0__3794_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3374_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2330_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_858_),
    .B(\u_mem_serial.shift_reg [24]),
    .S(_1067__bF$buf0),
    .Y(_857_)
);

FILL FILL_0__2645_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2225_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2806_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1916_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [4]),
    .B(_440__bF$buf1),
    .Y(_536_)
);

OAI21X1 _3199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [5]),
    .B(ibus_pending_ack_bF$buf6),
    .C(_231_),
    .Y(_232_)
);

FILL FILL_0__2874_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2454_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4140_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1499_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [10])
);

FILL FILL132150x79350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3239_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3831_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1339_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_rf_if.rreg1_latched [0])
);

INVX1 _3411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_395_)
);

FILL FILL_0__2683_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3468_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3048_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2004_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3629_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2699_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1755_),
    .B(_1757_),
    .C(_1758_),
    .Y(_1442_)
);

OAI21X1 _2279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_773_),
    .C(_777_),
    .Y(_772_)
);

FILL FILL_0__1954_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_561_),
    .B(_190__bF$buf2),
    .C(_560_),
    .D(_556__bF$buf4),
    .Y(_1210_)
);

INVX1 _3220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(_246_)
);

FILL FILL_0__2319_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4005_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1425_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_rf_if.read_buf1 [0])
);

NAND2X1 _2911_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [1]),
    .B(_12__bF$buf5),
    .Y(_17_)
);

FILL FILL_0__3697_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3277_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2233_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert0 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824_),
    .Y(_1824__bF$buf6)
);

BUFX2 BUFX2_insert1 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824_),
    .Y(_1824__bF$buf5)
);

BUFX2 BUFX2_insert2 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824_),
    .Y(_1824__bF$buf4)
);

BUFX2 BUFX2_insert3 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824_),
    .Y(_1824__bF$buf3)
);

BUFX2 BUFX2_insert4 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824_),
    .Y(_1824__bF$buf2)
);

BUFX2 BUFX2_insert5 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824_),
    .Y(_1824__bF$buf1)
);

BUFX2 BUFX2_insert6 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824_),
    .Y(_1824__bF$buf0)
);

BUFX2 BUFX2_insert7 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_661_),
    .Y(_661__bF$buf4)
);

BUFX2 BUFX2_insert8 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_661_),
    .Y(_661__bF$buf3)
);

BUFX2 BUFX2_insert9 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_661_),
    .Y(_661__bF$buf2)
);

INVX1 _2088_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_944_)
);

FILL FILL_0__2548_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2128_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2709_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2720_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(\u_rf_if.rreg0_latched [4]),
    .Y(_1777_)
);

INVX1 _2300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_751_)
);

FILL FILL_0__3086_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3925_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1386_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_rf_if.read_buf0 [9])
);

OAI21X1 _3505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_460_),
    .C(_455_),
    .Y(_461_)
);

FILL FILL_1__2462_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2777_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2357_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4043_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1243_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

FILL FILL_1__2938_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3734_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_186_),
    .B(_864_),
    .S(_615__bF$buf0),
    .Y(_1170_)
);

OAI21X1 _3314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1119_),
    .B(_1118_),
    .C(_741_),
    .Y(_320_)
);

FILL FILL_1__2691_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2586_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3963_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1404_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf1 [21])
);

AOI21X1 _3543_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf4),
    .B(_490_),
    .C(_491_),
    .Y(_1237_)
);

INVX1 _3123_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[20]),
    .Y(_174_)
);

DFFPOSX1 _4081_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1467_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_serial.tx_state [1])
);

MUX2X1 _2814_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [9]),
    .B(\u_rf_if.read_buf1 [10]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1849_)
);

CLKBUF1 CLKBUF1_insert127 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf44 )
);

CLKBUF1 CLKBUF1_insert128 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf43 )
);

CLKBUF1 CLKBUF1_insert129 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf42 )
);

FILL FILL132750x75750 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3772_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1107_),
    .Y(_1106_)
);

NAND3X1 _3352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_747_),
    .B(_331_),
    .C(_733__bF$buf0),
    .Y(_352_)
);

DFFPOSX1 _4137_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1289_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2])
);

FILL FILL_0__3812_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[24]),
    .Y(_1694_)
);

MUX2X1 _2203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_842_),
    .B(\u_mem_serial.shift_reg [26]),
    .S(_1067__bF$buf4),
    .Y(_841_)
);

DFFSR _3828_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1170_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(ibus_pending_rdt[23])
);

MUX2X1 _3408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_393_),
    .B(_392_),
    .S(_661__bF$buf4),
    .Y(_1274_)
);

OAI21X1 _3581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [10]),
    .C(_519_),
    .Y(_520_)
);

NOR2X1 _3161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf5),
    .B(_1108_),
    .Y(_202_)
);

FILL FILL_0_CLKBUF1_insert186 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert188 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2852_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf1),
    .B(_1876_),
    .C(_1877_),
    .Y(_1878_)
);

INVX1 _2432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525_),
    .Y(_1526_)
);

MUX2X1 _2012_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [5]),
    .B(\u_cpu.ctrl.o_ibus_adr [5]),
    .S(_1052__bF$buf3),
    .Y(_1011_)
);

INVX1 _3637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_560_)
);

AND2X2 _3217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_244_),
    .B(i_rst_n_bF$buf2),
    .Y(_1316_)
);

FILL FILL_1__2594_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_382_),
    .B(_960_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_383_)
);

BUFX2 BUFX2_insert172 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704_),
    .Y(_1704__bF$buf3)
);

BUFX2 BUFX2_insert173 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704_),
    .Y(_1704__bF$buf2)
);

BUFX2 BUFX2_insert174 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704_),
    .Y(_1704__bF$buf1)
);

BUFX2 BUFX2_insert175 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704_),
    .Y(_1704__bF$buf0)
);

BUFX2 BUFX2_insert176 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_615_),
    .Y(_615__bF$buf4)
);

BUFX2 BUFX2_insert177 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_615_),
    .Y(_615__bF$buf3)
);

BUFX2 BUFX2_insert178 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_615_),
    .Y(_615__bF$buf2)
);

BUFX2 BUFX2_insert179 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_615_),
    .Y(_615__bF$buf1)
);

FILL FILL_0__2489_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2069_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4175_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1159_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(ibus_pending_rdt[12])
);

FILL FILL_0__3010_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2908_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf4),
    .B(_13_),
    .C(_14_),
    .Y(_15_)
);

NAND2X1 _2661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf10),
    .B(_756_),
    .Y(_1727_)
);

OAI21X1 _2241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1064_),
    .B(_1071_),
    .C(_1058__bF$buf4),
    .Y(_808_)
);

DFFPOSX1 _3866_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1357_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_rf_if.wdata0_r [0])
);

MUX2X1 _3446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_412_),
    .B(_411_),
    .S(_661__bF$buf2),
    .Y(_1255_)
);

NAND2X1 _3026_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [29]),
    .B(_12__bF$buf5),
    .Y(_104_)
);

NOR2X1 _1932_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(\u_mem_serial.bit_count [0]),
    .Y(_1084_)
);

INVX2 _2717_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1772_),
    .Y(_1774_)
);

FILL FILL_1__3400_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2890_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [26]),
    .B(_1824__bF$buf3),
    .Y(_1_)
);

NAND3X1 _2470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1561_),
    .B(_1563_),
    .C(_732_),
    .Y(_1564_)
);

MUX2X1 _2050_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_978_),
    .B(\u_mem_serial.shift_reg [9]),
    .S(_1067__bF$buf2),
    .Y(_977_)
);

FILL FILL_0__1989_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_579_)
);

AOI22X1 _3255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_270_),
    .C(_153_),
    .D(_272_),
    .Y(_1306_)
);

FILL FILL_0__3715_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert71 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert72 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert74 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert76 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert78 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2946_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [11]),
    .B(\u_rf_if.read_buf0 [12]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_43_)
);

OR2X2 _2526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1582_),
    .B(\u_rf_serial.last_req_key [2]),
    .Y(_1618_)
);

INVX1 _2106_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [15]),
    .Y(_928_)
);

OAI21X1 _3484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .C(_442_),
    .Y(_443_)
);

NOR2X1 _3064_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [2]),
    .B(_126_),
    .Y(_130_)
);

NOR2X1 _1970_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf5),
    .B(_1049_),
    .Y(_1509_)
);

MUX2X1 _2755_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [4]),
    .B(\u_rf_if.rreg0_latched [4]),
    .S(\u_rf_if.issue_sel ),
    .Y(_1807_)
);

OAI22X1 _2335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_723_),
    .B(_721_),
    .C(_719_),
    .D(_717_),
    .Y(_716_)
);

NAND2X1 _3293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf6),
    .B(_301_),
    .Y(_302_)
);

DFFPOSX1 _4078_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1515_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [0])
);

OAI21X1 _2984_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf2),
    .B(_70_),
    .C(_71_),
    .Y(_72_)
);

OAI21X1 _2564_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.shift_rx [1]),
    .B(_1652_),
    .C(i_rst_n_bF$buf3),
    .Y(_1653_)
);

NAND2X1 _2144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [20]),
    .Y(_894_)
);

OAI21X1 _3769_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1124_),
    .B(_1115_),
    .C(_1113_),
    .Y(_1103_)
);

NAND2X1 _3349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf3),
    .B(_348_),
    .Y(_349_)
);

FILL FILL_0__3142_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert80 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .Y(_1693__bF$buf2)
);

BUFX2 BUFX2_insert81 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .Y(_1693__bF$buf1)
);

BUFX2 BUFX2_insert82 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .Y(_1693__bF$buf0)
);

BUFX2 BUFX2_insert83 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf7 )
);

BUFX2 BUFX2_insert84 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf6 )
);

BUFX2 BUFX2_insert85 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf5 )
);

FILL FILL_1__3303_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert86 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf4 )
);

BUFX2 BUFX2_insert87 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf3 )
);

BUFX2 BUFX2_insert88 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf2 )
);

BUFX2 BUFX2_insert89 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf1 )
);

AND2X2 _2793_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1833_),
    .B(i_rst_n_bF$buf0),
    .Y(_1423_)
);

INVX1 _2373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[0]),
    .Y(_678_)
);

DFFPOSX1 _3998_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1225_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_cpu.bufreg2.dlo [7])
);

NOR2X1 _3578_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [10]),
    .B(_440__bF$buf0),
    .Y(_518_)
);

OAI21X1 _3158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_196_),
    .B(_670_),
    .C(i_rst_n_bF$buf10),
    .Y(_200_)
);

FILL FILL_0__3618_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3371_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2849_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1875_),
    .B(i_rst_n_bF$buf9),
    .Y(_1409_)
);

NAND3X1 _2429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_1522_),
    .C(_1521_),
    .Y(_1523_)
);

NAND2X1 _2009_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [5]),
    .Y(_1014_)
);

FILL FILL_1__3532_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_861_),
    .B(_863_),
    .C(_1058__bF$buf5),
    .Y(_860_)
);

NAND2X1 _3387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[4]),
    .B(_323_),
    .Y(_381_)
);

FILL FILL_0__2222_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3427_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3180_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1724_),
    .B(_896_),
    .S(ibus_pending_ack_bF$buf3),
    .Y(_1725_)
);

OAI21X1 _2238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf0),
    .B(_811_),
    .C(_812_),
    .Y(_810_)
);

FILL FILL_1_BUFX2_insert122 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3761_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_790_),
    .B(_1693__bF$buf5),
    .C(_229_),
    .Y(_1322_)
);

FILL FILL_0__2451_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2031_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1929_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [4]),
    .Y(_1087_)
);

FILL FILL_0__3656_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2612_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2887_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [27]),
    .B(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1904_)
);

NOR2X1 _2467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_720_),
    .Y(_1561_)
);

OAI21X1 _2047_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_981_),
    .B(_983_),
    .C(_1058__bF$buf4),
    .Y(_980_)
);

FILL FILL_0__2927_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2680_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2260_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2841_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3206_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2696_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_1756_)
);

INVX1 _2276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_775_)
);

DFFPOSX1 _4002_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1227_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [9])
);

OAI21X1 _1967_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1059_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_1051_)
);

FILL FILL_1__3435_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2085_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf6),
    .B(_947_),
    .C(_948_),
    .Y(_946_)
);

FILL FILL_0__2125_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1921_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3083_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3922_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1385_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(\u_rf_if.read_buf0 [10])
);

NOR2X1 _3502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_775_),
    .B(_457_),
    .Y(_458_)
);

FILL FILL_1__3664_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3099_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_155_),
    .B(_904_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_156_)
);

FILL FILL_0__2354_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4040_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1447_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(\u_rf_if.rcnt [1])
);

FILL FILL_0__3559_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2515_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3731_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_307_),
    .B(_840_),
    .S(_615__bF$buf2),
    .Y(_1173_)
);

NOR2X1 _3311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_288_),
    .Y(_318_)
);

FILL FILL_0__2583_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2163_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3788_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2744_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [5]),
    .B(_1596_),
    .C(i_rst_n_bF$buf3),
    .Y(_1676_)
);

NOR2X1 _2179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_864_),
    .B(_1040__bF$buf3),
    .Y(_863_)
);

DFFPOSX1 _3960_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1403_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf1 [22])
);

NAND2X1 _3540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_896_),
    .Y(_489_)
);

OAI21X1 _3120_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_168_),
    .C(_1707_),
    .Y(_172_)
);

FILL FILL_0__2392_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2811_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [7]),
    .B(_1824__bF$buf6),
    .Y(_1847_)
);

FILL FILL_1__2973_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2028_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4134_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1496_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [13])
);

AOI21X1 _2620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733__bF$buf1),
    .B(_1682_),
    .C(_1691_),
    .Y(_1454_)
);

OAI21X1 _2200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_845_),
    .B(_847_),
    .C(_1058__bF$buf0),
    .Y(_844_)
);

DFFPOSX1 _3825_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1336_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_rf_if.rreg1_latched [3])
);

INVX1 _3405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [23]),
    .Y(_392_)
);

FILL FILL_1__3567_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2257_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert151 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert153 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2418_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert155 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert157 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert159 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3634_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_558_),
    .B(_190__bF$buf0),
    .C(_557_),
    .D(_556__bF$buf3),
    .Y(_1213_)
);

NOR2X1 _3214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast_bF$buf6),
    .B(_242_),
    .Y(_1906_)
);

FILL FILL_1__3796_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2486_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2066_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4172_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1306_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(rreg0[2])
);

NOR2X1 _2905_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_1800_),
    .Y(_12_)
);

FILL FILL131550x118950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2647_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3863_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1355_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_rf_if.write_wait [1])
);

INVX1 _3443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [4]),
    .Y(_411_)
);

OAI21X1 _3023_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_101_),
    .B(_12__bF$buf5),
    .C(i_rst_n_bF$buf7),
    .Y(_102_)
);

FILL FILL_0__2295_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert188 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2714_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1770_),
    .B(_1767_),
    .C(_1683_),
    .Y(_1771_)
);

DFFPOSX1 _3919_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1201_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

FILL FILL_1__2876_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_577_),
    .B(_190__bF$buf2),
    .C(_576_),
    .D(_556__bF$buf4),
    .Y(_1194_)
);

AOI22X1 _3252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_265_),
    .B(_270_),
    .C(_157_),
    .D(_269_),
    .Y(_1307_)
);

DFFPOSX1 _4037_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1445_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_rf_if.wen0_r )
);

FILL FILL_0_BUFX2_insert41 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert43 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert45 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert47 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert49 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2943_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [9]),
    .B(_12__bF$buf3),
    .Y(_41_)
);

OAI21X1 _2523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [4]),
    .B(_1578_),
    .C(_1614_),
    .Y(_1615_)
);

OAI21X1 _2103_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf2),
    .B(_931_),
    .C(_932_),
    .Y(_930_)
);

MUX2X1 _3728_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_289_),
    .B(_816_),
    .S(_615__bF$buf0),
    .Y(_1176_)
);

OAI21X1 _3308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(ibus_pending_ack_bF$buf5),
    .C(_314_),
    .Y(_315_)
);

OAI21X1 _3481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_437_),
    .B(_439_),
    .C(_761_),
    .Y(_440_)
);

AOI21X1 _3061_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_756_),
    .B(_127_),
    .C(_1126__bF$buf0),
    .Y(_1355_)
);

FILL FILL_0__3521_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3101_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x61350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1956_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x28950 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2752_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1802_),
    .B(_1805_),
    .C(_1126__bF$buf6),
    .Y(_1436_)
);

INVX1 _2332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_720_),
    .Y(_719_)
);

DFFPOSX1 _3957_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1210_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

OAI21X1 _3537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(_486_),
    .Y(_487_)
);

OAI21X1 _3117_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_158_),
    .B(_164_),
    .C(_1701_),
    .Y(_170_)
);

NOR2X1 _3290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_288_),
    .Y(_300_)
);

DFFPOSX1 _4075_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1260_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_cpu.bufreg.data [8])
);

FILL FILL_0__3750_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3330_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2808_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf5),
    .B(_1843_),
    .C(_1844_),
    .Y(_1845_)
);

AND2X2 _2981_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_69_),
    .B(i_rst_n_bF$buf4),
    .Y(_1377_)
);

INVX1 _2561_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [2]),
    .Y(_1650_)
);

NOR2X1 _2141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_897_),
    .Y(_1490_)
);

OAI21X1 _3766_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.req_pending ),
    .B(\u_mem_serial.state [0]),
    .C(_1101_),
    .Y(_1100_)
);

INVX1 _3346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .Y(_1289_)
);

FILL FILL_0__2601_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3088_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2198_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2617_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [5]),
    .B(_1688_),
    .Y(_1689_)
);

FILL FILL_1__2779_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert50 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf6)
);

BUFX2 BUFX2_insert51 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf5)
);

BUFX2 BUFX2_insert52 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf4)
);

BUFX2 BUFX2_insert53 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf3)
);

BUFX2 BUFX2_insert54 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf2)
);

BUFX2 BUFX2_insert55 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf1)
);

BUFX2 BUFX2_insert56 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf0)
);

BUFX2 BUFX2_insert57 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_190_),
    .Y(_190__bF$buf4)
);

BUFX2 BUFX2_insert58 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_190_),
    .Y(_190__bF$buf3)
);

BUFX2 BUFX2_insert59 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_190_),
    .Y(_190__bF$buf2)
);

MUX2X1 _2790_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [3]),
    .B(\u_rf_if.read_buf1 [4]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1831_)
);

NAND2X1 _2370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_692_),
    .B(_683_),
    .Y(_681_)
);

DFFPOSX1 _3995_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1420_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [5])
);

AOI21X1 _3575_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf0),
    .B(_514_),
    .C(_515_),
    .Y(_1229_)
);

INVX1 _3155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_197_),
    .Y(_198_)
);

FILL FILL_0__2830_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2410_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2846_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [17]),
    .B(\u_rf_if.read_buf1 [18]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1873_)
);

OAI21X1 _2426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1517_),
    .B(_1518_),
    .C(_790_),
    .Y(_1520_)
);

NOR2X1 _2006_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_1017_),
    .Y(_1505_)
);

NAND2X1 _3384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_378_),
    .B(_288_),
    .Y(_379_)
);

DFFPOSX1 _4169_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1513_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [2])
);

FILL FILL_0__3424_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3004_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_1722_),
    .Y(_1450_)
);

NOR2X1 _2235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_814_),
    .B(_1062__bF$buf3),
    .Y(_813_)
);

INVX1 _3193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[12]),
    .Y(_227_)
);

NOR2X1 _1926_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_1092_),
    .Y(_1089_)
);

FILL FILL_0__3653_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3233_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3814_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2884_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf3),
    .B(_1900_),
    .C(_1901_),
    .Y(_1902_)
);

INVX1 _2464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_1558_)
);

NOR2X1 _2044_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_984_),
    .B(_1040__bF$buf0),
    .Y(_983_)
);

INVX1 _3669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_576_)
);

NAND2X1 _3249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_267_),
    .B(_754_),
    .Y(_268_)
);

FILL FILL_0__2504_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3462_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3042_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2693_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1751_),
    .B(_1752_),
    .Y(_1753_)
);

OAI21X1 _2273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_780_),
    .B(_779_),
    .C(_786_),
    .Y(_778_)
);

DFFPOSX1 _3898_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1373_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .Q(\u_rf_if.read_buf0 [22])
);

OAI21X1 _3478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_435_),
    .B(_436_),
    .C(_754_),
    .Y(_437_)
);

OAI21X1 _3058_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(_1689_),
    .C(\u_rf_if.write_wait [1]),
    .Y(_125_)
);

FILL FILL_0__2733_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2313_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1964_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1060_),
    .B(_1055_),
    .Y(_1054_)
);

FILL FILL_0__3691_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3271_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2749_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(_619_),
    .Y(_1803_)
);

NOR2X1 _2329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf1),
    .B(_747_),
    .Y(_722_)
);

NOR2X1 _2082_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_950_),
    .B(_1062__bF$buf2),
    .Y(_949_)
);

OAI21X1 _3287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(ibus_pending_ack_bF$buf5),
    .C(_296_),
    .Y(_297_)
);

FILL FILL_0__2962_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2542_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3327_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2978_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(\u_rf_if.read_buf0 [20]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_67_)
);

NAND2X1 _2558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf3),
    .B(\u_rf_serial.tx_state [4]),
    .Y(_1648_)
);

MUX2X1 _2138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [19]),
    .B(\u_cpu.ctrl.o_ibus_adr [19]),
    .S(_1052__bF$buf3),
    .Y(_899_)
);

AOI21X1 _3096_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_153_),
    .B(_150_),
    .C(_1126__bF$buf1),
    .Y(_1346_)
);

FILL FILL_0__2771_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3556_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3136_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3717_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2787_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [1]),
    .B(_1824__bF$buf2),
    .Y(_1829_)
);

OAI21X1 _2367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_688_),
    .B(_687_),
    .C(_685_),
    .Y(_684_)
);

FILL FILL_0__2407_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3785_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3365_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2321_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1673_),
    .B(_1674_),
    .C(_1126__bF$buf7),
    .Y(_1461_)
);

MUX2X1 _2176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_866_),
    .B(\u_mem_serial.shift_reg [23]),
    .S(_1067__bF$buf2),
    .Y(_865_)
);

FILL FILL_0__2636_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2216_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3594_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3174_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2550_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2865_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2445_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4131_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1286_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

FILL FILL131850x68550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _3822_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1167_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(ibus_pending_rdt[20])
);

MUX2X1 _3402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_390_),
    .B(_389_),
    .S(_661__bF$buf4),
    .Y(_1277_)
);

FILL FILL_0__2674_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3459_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3039_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert127 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert129 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1945_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_557_)
);

OAI21X1 _3211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [2]),
    .B(ibus_pending_ack_bF$buf4),
    .C(_240_),
    .Y(_241_)
);

BUFX2 BUFX2_insert110 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058_),
    .Y(_1058__bF$buf0)
);

BUFX2 BUFX2_insert111 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733_),
    .Y(_733__bF$buf5)
);

BUFX2 BUFX2_insert112 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733_),
    .Y(_733__bF$buf4)
);

BUFX2 BUFX2_insert113 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733_),
    .Y(_733__bF$buf3)
);

BUFX2 BUFX2_insert114 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733_),
    .Y(_733__bF$buf2)
);

BUFX2 BUFX2_insert115 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733_),
    .Y(_733__bF$buf1)
);

BUFX2 BUFX2_insert116 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733_),
    .Y(_733__bF$buf0)
);

BUFX2 BUFX2_insert117 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1052_),
    .Y(_1052__bF$buf4)
);

BUFX2 BUFX2_insert118 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1052_),
    .Y(_1052__bF$buf3)
);

BUFX2 BUFX2_insert119 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1052_),
    .Y(_1052__bF$buf2)
);

NAND2X1 _2902_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [29]),
    .B(_1824__bF$buf5),
    .Y(_10_)
);

FILL FILL_0__3688_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3268_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [4]),
    .Y(_1592_)
);

INVX1 _2079_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_952_)
);

INVX8 _3860_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf8),
    .Y(_1126_)
);

MUX2X1 _3440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_409_),
    .B(_408_),
    .S(_661__bF$buf1),
    .Y(_1258_)
);

NAND2X1 _3020_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(_12__bF$buf5),
    .Y(_100_)
);

FILL FILL_0__2539_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2119_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert153 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert157 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2711_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1698_),
    .B(_1699_),
    .Y(_1768_)
);

FILL FILL_0__3497_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3077_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3916_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1382_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_rf_if.read_buf0 [13])
);

FILL FILL_0__2768_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2348_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4034_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1239_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg2.dlo [21])
);

FILL FILL_1__2929_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert10 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert12 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1999_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1024_),
    .B(_1040__bF$buf3),
    .Y(_1023_)
);

FILL FILL_0_BUFX2_insert14 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert15 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert17 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert19 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2940_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf1),
    .B(_37_),
    .C(_38_),
    .Y(_39_)
);

NAND2X1 _2520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[6]),
    .B(ren_bF$buf1),
    .Y(_1612_)
);

NOR2X1 _2100_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_934_),
    .B(_1062__bF$buf1),
    .Y(_933_)
);

INVX1 _3725_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_613_),
    .Y(_614_)
);

AOI21X1 _3305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_288_),
    .B(_311_),
    .C(_312_),
    .Y(_1296_)
);

FILL FILL_0__2997_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2577_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2157_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL131850x118950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3954_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1400_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf1 [25])
);

NOR2X1 _3534_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [21]),
    .B(_440__bF$buf1),
    .Y(_485_)
);

NOR2X1 _3114_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_167_),
    .B(_1691_),
    .Y(_1342_)
);

FILL FILL_1__2071_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x82950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2386_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4072_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1463_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_serial.last_req_key [1])
);

AND2X2 _2805_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1842_),
    .B(i_rst_n_bF$buf0),
    .Y(_1420_)
);

NOR2X1 _3763_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_1098_),
    .Y(_1097_)
);

NAND2X1 _3343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_343_),
    .B(_1693__bF$buf4),
    .Y(_344_)
);

DFFPOSX1 _4128_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1493_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [16])
);

FILL FILL_0__3803_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1686_)
);

FILL FILL_1__1991_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3819_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1332_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(\u_cpu.state.cnt_r [0])
);

BUFX2 BUFX2_insert20 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf0)
);

BUFX2 BUFX2_insert21 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf10)
);

BUFX2 BUFX2_insert22 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf9)
);

BUFX2 BUFX2_insert23 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf8)
);

BUFX2 BUFX2_insert24 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf7)
);

BUFX2 BUFX2_insert25 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf6)
);

BUFX2 BUFX2_insert26 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf5)
);

BUFX2 BUFX2_insert27 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf4)
);

BUFX2 BUFX2_insert28 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert29 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

DFFPOSX1 _3992_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1222_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_cpu.bufreg2.dlo [4])
);

NAND2X1 _3572_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_960_),
    .Y(_513_)
);

AOI21X1 _3152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_756_),
    .B(_195_),
    .C(_1126__bF$buf0),
    .Y(_1332_)
);

FILL FILL_0__3612_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2843_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [15]),
    .B(_1824__bF$buf4),
    .Y(_1871_)
);

INVX1 _2423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1130_),
    .Y(_1517_)
);

MUX2X1 _2003_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [4]),
    .B(\u_cpu.ctrl.o_ibus_adr [4]),
    .S(_1052__bF$buf3),
    .Y(_1019_)
);

INVX1 _3628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_555_)
);

INVX1 _3208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_237_),
    .Y(_238_)
);

OAI22X1 _3381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_367_),
    .B(_374_),
    .C(_375_),
    .D(_373_),
    .Y(_376_)
);

DFFPOSX1 _4166_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1303_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

MUX2X1 _2652_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [31]),
    .B(\u_cpu.ctrl.o_ibus_adr [31]),
    .S(_1052__bF$buf1),
    .Y(_1720_)
);

INVX1 _2232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [29]),
    .Y(_816_)
);

DFFPOSX1 _3857_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1352_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_rf_if.write_wait [4])
);

INVX1 _3437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [7]),
    .Y(_408_)
);

NAND2X1 _3017_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [28]),
    .B(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_97_)
);

FILL FILL_1_BUFX2_insert83 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert87 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert63 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert65 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert67 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert69 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [13]),
    .B(ibus_pending_ack_bF$buf0),
    .C(_224_),
    .Y(_225_)
);

OAI21X1 _1923_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_1092_),
    .C(_1107_),
    .Y(_1091_)
);

FILL FILL_0__2289_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3230_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2708_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1765_),
    .B(i_rst_n_bF$buf5),
    .Y(_1440_)
);

AND2X2 _2881_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1899_),
    .B(i_rst_n_bF$buf9),
    .Y(_1401_)
);

OAI21X1 _2461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1554_),
    .B(_1553_),
    .C(_1542_),
    .Y(_1555_)
);

MUX2X1 _2041_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_986_),
    .B(\u_mem_serial.shift_reg [8]),
    .S(_1067__bF$buf1),
    .Y(_985_)
);

OAI22X1 _3666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_574_),
    .B(_190__bF$buf4),
    .C(_573_),
    .D(_556__bF$buf2),
    .Y(_1197_)
);

INVX1 _3246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[3]),
    .Y(_265_)
);

FILL FILL_0__3706_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x14550 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2937_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_36_),
    .B(i_rst_n_bF$buf8),
    .Y(_1388_)
);

NAND2X1 _2517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_718_),
    .B(_732_),
    .Y(_1609_)
);

FILL FILL_1__3620_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2690_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_1750_)
);

AOI21X1 _2270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_786_),
    .B(_782_),
    .C(_793_),
    .Y(_781_)
);

DFFPOSX1 _3895_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1195_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

OAI21X1 _3475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_661__bF$buf0),
    .B(_433_),
    .C(_434_),
    .Y(_1248_)
);

INVX1 _3055_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .Y(_123_)
);

FILL FILL_0__2310_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3515_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1961_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf4),
    .Y(_1057_)
);

NAND2X1 _2746_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1789_),
    .B(_1800_),
    .Y(_1801_)
);

INVX1 _2326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .Y(_725_)
);

AOI21X1 _3284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_288_),
    .B(_293_),
    .C(_294_),
    .Y(_1299_)
);

FILL FILL_0_BUFX2_insert100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert102 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert103 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert105 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert107 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert109 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4069_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1257_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_cpu.bufreg.data [5])
);

FILL FILL_0__3744_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2700_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2975_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(_12__bF$buf2),
    .Y(_65_)
);

AOI21X1 _2555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1644_),
    .B(_1600_),
    .C(_1646_),
    .Y(_1474_)
);

NAND2X1 _2135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [19]),
    .Y(_902_)
);

INVX1 _3093_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[17]),
    .Y(_151_)
);

OAI21X1 _2784_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf2),
    .B(_1825_),
    .C(_1826_),
    .Y(_1827_)
);

NAND2X1 _2364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_687_)
);

DFFPOSX1 _3989_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1417_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [8])
);

OAI21X1 _3569_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(_510_),
    .Y(_511_)
);

AND2X2 _3149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf10),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_1334_)
);

FILL FILL_0__3609_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3523_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1672_),
    .B(i_rst_n_bF$buf3),
    .Y(_1462_)
);

OAI21X1 _2173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_869_),
    .B(_871_),
    .C(_1058__bF$buf3),
    .Y(_868_)
);

OAI21X1 _3798_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_642_),
    .C(_643_),
    .Y(_644_)
);

AOI21X1 _3378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_674_),
    .C(_372_),
    .Y(_373_)
);

FILL FILL_0__2213_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3418_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3171_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_1717_)
);

OAI21X1 _2229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf0),
    .B(_819_),
    .C(_820_),
    .Y(_818_)
);

FILL FILL_1__3752_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1125_),
    .B(_221_),
    .C(_222_),
    .Y(_1324_)
);

FILL FILL_0__2442_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2022_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x3750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3647_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2603_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2878_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [25]),
    .B(\u_rf_if.read_buf1 [26]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1897_)
);

OAI21X1 _2458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1546_),
    .B(_1547_),
    .C(_1543_),
    .Y(_1552_)
);

OAI21X1 _2038_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_989_),
    .B(_991_),
    .C(_1058__bF$buf5),
    .Y(_988_)
);

FILL FILL_0__2918_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2671_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2251_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2832_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2687_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [5]),
    .B(_1688_),
    .Y(_1749_)
);

NAND3X1 _2267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .C(\u_cpu.state.o_cnt [2]),
    .Y(_784_)
);

FILL FILL_0__2727_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2480_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2060_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1958_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1072_),
    .B(_1094_),
    .C(_1079_),
    .Y(_1060_)
);

AOI21X1 _2496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1589_),
    .B(_1576_),
    .C(_800_),
    .Y(_1590_)
);

OAI21X1 _2076_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf5),
    .B(_955_),
    .C(_956_),
    .Y(_954_)
);

FILL FILL_0__2956_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1912_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert127 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3074_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1123_),
    .B(_1122_),
    .Y(_1121_)
);

FILL FILL_0__1980_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4031_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1441_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_rf_if.ready_pulse )
);

FILL FILL_1__2506_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1996_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1026_),
    .B(\u_mem_serial.shift_reg [3]),
    .S(_1067__bF$buf1),
    .Y(_1025_)
);

AOI21X1 _3722_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1076_),
    .B(\u_mem_serial.bit_count [6]),
    .C(_1106_),
    .Y(_612_)
);

NAND2X1 _3302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_309_),
    .B(_1693__bF$buf1),
    .Y(_310_)
);

FILL FILL_1__3044_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2574_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2154_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3779_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3359_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2735_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _3951_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1152_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(ibus_pending_rdt[5])
);

AOI21X1 _3531_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf2),
    .B(_481_),
    .C(_482_),
    .Y(_1240_)
);

NOR2X1 _3111_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_158_),
    .B(_164_),
    .Y(_165_)
);

FILL FILL_1__3273_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2383_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2802_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [6]),
    .B(\u_rf_if.read_buf1 [7]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1840_)
);

FILL FILL_0__3588_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2964_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_768_),
    .B(_648_),
    .S(_781_),
    .Y(_626_)
);

MUX2X1 _3760_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_618_),
    .B(_545_),
    .S(_615__bF$buf4),
    .Y(_1147_)
);

INVX1 _3340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[9]),
    .Y(_341_)
);

FILL FILL_0__2859_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4125_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1283_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

FILL FILL_0__2192_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _2611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.prefetch_active ),
    .Y(_1683_)
);

MUX2X1 _3816_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_359_),
    .B(_654_),
    .S(_615__bF$buf1),
    .Y(_1127_)
);

OAI21X1 _2840_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf4),
    .B(_1867_),
    .C(_1868_),
    .Y(_1869_)
);

NAND2X1 _2420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1140_),
    .B(_1317_),
    .Y(_1476_)
);

NAND2X1 _2000_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [4]),
    .Y(_1022_)
);

AOI21X1 _3625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_reg [31]),
    .C(_441_),
    .Y(_553_)
);

MUX2X1 _3205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[3]),
    .B(\u_mem_serial.shift_reg [3]),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_236_)
);

FILL FILL_0__2057_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4163_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1510_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [5])
);

FILL FILL_1__2638_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3854_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1182_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(\u_cpu.alu.add_cy_r )
);

MUX2X1 _3434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_406_),
    .B(_405_),
    .S(_661__bF$buf1),
    .Y(_1261_)
);

NAND2X1 _3014_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [26]),
    .B(_12__bF$buf5),
    .Y(_95_)
);

FILL FILL_1_BUFX2_insert52 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert56 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3176_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1920_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1097_),
    .B(_1094_),
    .C(_1106_),
    .Y(_1093_)
);

FILL FILL_0__2286_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2705_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_619_),
    .B(_1755_),
    .C(_1762_),
    .Y(_1763_)
);

FILL FILL_1__2867_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_573_)
);

MUX2X1 _3243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_262_),
    .B(_1715_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_263_)
);

DFFPOSX1 _4028_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1439_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_rf_if.read_buf1 [31])
);

FILL FILL_0__2095_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2934_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [8]),
    .B(\u_rf_if.read_buf0 [9]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_34_)
);

OAI21X1 _2514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [5]),
    .B(_1575_),
    .C(_1605_),
    .Y(_1606_)
);

AOI21X1 _3719_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_606_),
    .B(_608_),
    .C(_610_),
    .Y(_0_)
);

DFFPOSX1 _3892_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1370_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf0 [25])
);

NOR2X1 _3472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_417_),
    .B(_261_),
    .Y(_432_)
);

OAI21X1 _3052_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[7]),
    .B(_1704__bF$buf0),
    .C(i_rst_n_bF$buf7),
    .Y(_122_)
);

FILL FILL_0__3512_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1947_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2743_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .B(_1771_),
    .Y(_1798_)
);

NOR2X1 _2323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_729_),
    .Y(_728_)
);

DFFPOSX1 _3948_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1397_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_rf_if.read_buf1 [28])
);

NAND2X1 _3528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_872_),
    .Y(_480_)
);

OR2X2 _3108_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_161_),
    .B(_162_),
    .Y(_163_)
);

NAND2X1 _3281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_291_),
    .B(_1693__bF$buf5),
    .Y(_292_)
);

DFFPOSX1 _4066_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1460_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.last_req_key [4])
);

FILL FILL_0__3741_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3321_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2972_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf3),
    .B(_61_),
    .C(_62_),
    .Y(_63_)
);

NAND2X1 _2552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1601_),
    .B(_1643_),
    .Y(_1644_)
);

NOR2X1 _2132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_905_),
    .Y(_1491_)
);

INVX1 _3757_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[1]),
    .Y(_617_)
);

NAND3X1 _3337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_337_),
    .B(_338_),
    .C(_333_),
    .Y(_339_)
);

FILL FILL_1__3079_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3090_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_148_),
    .B(_1693__bF$buf1),
    .Y(_149_)
);

FILL FILL_0__2189_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3550_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3130_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [9]),
    .Y(_1681_)
);

NOR2X1 _2781_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_1774_),
    .Y(_1824_)
);

NAND3X1 _2361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_1118_),
    .C(_691_),
    .Y(_690_)
);

DFFPOSX1 _3986_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1219_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(\u_cpu.bufreg2.dlo [1])
);

NOR2X1 _3566_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [13]),
    .B(_440__bF$buf0),
    .Y(_509_)
);

NOR2X1 _3146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf0),
    .B(_752_),
    .Y(_193_)
);

FILL FILL_0__2821_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2401_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2837_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1866_),
    .B(i_rst_n_bF$buf9),
    .Y(_1412_)
);

NAND3X1 _2417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1141_),
    .B(_1143_),
    .C(_1144_),
    .Y(_1146_)
);

FILL FILL_1__2159_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1670_),
    .B(i_rst_n_bF$buf3),
    .Y(_1463_)
);

NOR2X1 _2170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_872_),
    .B(_1040__bF$buf0),
    .Y(_871_)
);

INVX1 _3795_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_235_),
    .Y(_641_)
);

NAND2X1 _3375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_691_),
    .Y(_370_)
);

FILL FILL_0__2630_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3415_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2646_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1714_),
    .B(_1710_),
    .C(_1126__bF$buf5),
    .Y(_1451_)
);

NOR2X1 _2226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_822_),
    .B(_1062__bF$buf3),
    .Y(_821_)
);

FILL FILL_1__2388_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_765_),
    .B(_220_),
    .C(_1126__bF$buf0),
    .Y(_1325_)
);

BUFX2 _1917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .Y(o_mem_mosi)
);

FILL FILL_0__3644_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3224_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3805_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2875_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [23]),
    .B(_1824__bF$buf0),
    .Y(_1895_)
);

INVX1 _2455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1548_),
    .Y(_1549_)
);

NOR2X1 _2035_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_992_),
    .B(_1040__bF$buf2),
    .Y(_991_)
);

DFFPOSX1 _4198_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1326_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.ctrl.i_jump )
);

FILL FILL_0__3453_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3033_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2684_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1743_),
    .B(_1747_),
    .Y(_1446_)
);

NAND3X1 _2264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_792_),
    .B(_791_),
    .C(_788_),
    .Y(_787_)
);

DFFPOSX1 _3889_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1137_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\gen_int_sys_clk.clk_div [1])
);

OAI21X1 _3469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1535_),
    .B(_415_),
    .C(_430_),
    .Y(_1250_)
);

OAI21X1 _3049_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[6]),
    .B(_1704__bF$buf2),
    .C(i_rst_n_bF$buf7),
    .Y(_120_)
);

FILL FILL_0__2724_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2304_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1955_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_1064_),
    .Y(_1063_)
);

FILL FILL_0__3682_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3262_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_728_),
    .B(_1586_),
    .C(_796_),
    .Y(_1587_)
);

NOR2X1 _2073_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_958_),
    .B(_1062__bF$buf1),
    .Y(_957_)
);

OAI21X1 _3698_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1085_),
    .B(_1084_),
    .C(_589_),
    .Y(_590_)
);

INVX1 _3278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[29]),
    .Y(_289_)
);

FILL FILL_0__2953_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2533_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2113_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3491_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2969_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_60_),
    .B(i_rst_n_bF$buf4),
    .Y(_1380_)
);

NAND2X1 _2549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1637_),
    .B(_1640_),
    .Y(_1641_)
);

MUX2X1 _2129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [18]),
    .B(\u_cpu.ctrl.o_ibus_adr [18]),
    .S(_1052__bF$buf3),
    .Y(_907_)
);

DFFPOSX1 _3910_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1379_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_rf_if.read_buf0 [16])
);

NAND2X1 _3087_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [1]),
    .B(_733__bF$buf1),
    .Y(_146_)
);

FILL FILL_0__2762_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2342_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3547_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3127_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1993_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1029_),
    .B(_1031_),
    .C(_1058__bF$buf4),
    .Y(_1028_)
);

FILL FILL_1__3708_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2778_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_619_),
    .B(_1754_),
    .C(_1750_),
    .Y(_1822_)
);

NAND2X1 _2358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_743_),
    .Y(_693_)
);

FILL FILL_0__2991_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3776_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3356_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .B(i_rst_n_bF$buf3),
    .Y(_1464_)
);

MUX2X1 _2167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_874_),
    .B(\u_mem_serial.shift_reg [22]),
    .S(_1067__bF$buf0),
    .Y(_873_)
);

FILL FILL132150x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2627_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2207_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3585_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3165_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(_656_),
    .Y(_655_)
);

FILL FILL_0__2856_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2436_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2016_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4122_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1490_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [19])
);

FILL FILL_0__3394_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3813_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_div [3]),
    .B(_629_),
    .Y(_653_)
);

FILL FILL_0__2665_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2245_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1936_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf5),
    .B(_549_),
    .C(_550_),
    .Y(_1217_)
);

NAND2X1 _3202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf4),
    .B(_233_),
    .Y(_234_)
);

FILL FILL_0__2894_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2474_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4160_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1300_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

FILL FILL132150x100950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3259_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3851_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1349_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_rf_if.o_waddr [2])
);

INVX1 _3431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [10]),
    .Y(_405_)
);

NAND2X1 _3011_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_92_)
);

FILL FILL_1_BUFX2_insert21 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert25 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2702_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1756_),
    .B(\u_rf_if.stream_active_bF$buf1 ),
    .C(_1755_),
    .Y(_1760_)
);

FILL FILL_0__3488_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3068_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3907_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1198_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

NAND2X1 _2299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_754_),
    .B(_753_),
    .Y(_752_)
);

FILL FILL_0__1974_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_571_),
    .B(_190__bF$buf3),
    .C(_570_),
    .D(_556__bF$buf0),
    .Y(_1200_)
);

AOI21X1 _3240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_260_),
    .B(_761_),
    .C(_252_),
    .Y(_1309_)
);

FILL FILL_0__2759_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2339_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4025_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1236_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_cpu.bufreg2.dlo [18])
);

FILL FILL_0__3700_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2931_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(_12__bF$buf1),
    .Y(_32_)
);

NAND2X1 _2511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[4]),
    .B(ren_bF$buf2),
    .Y(_1603_)
);

FILL FILL_0__3297_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _3716_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_593_),
    .B(_607_),
    .C(_595_),
    .D(\u_mem_serial.active_ibus ),
    .Y(_608_)
);

FILL FILL_0__2988_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2568_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2148_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2740_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1795_),
    .Y(_1796_)
);

NOR2X1 _2320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf0),
    .B(_746_),
    .Y(_731_)
);

DFFPOSX1 _3945_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1207_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

OAI21X1 _3525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_468_),
    .B(_781_),
    .C(_477_),
    .Y(_478_)
);

NOR2X1 _3105_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_160_),
    .B(_1691_),
    .Y(_1344_)
);

FILL FILL_1__2062_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2797_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2377_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4063_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1254_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_cpu.bufreg.data [2])
);

INVX1 _3754_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[3]),
    .Y(_616_)
);

OAI21X1 _3334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [10]),
    .B(ibus_pending_ack_bF$buf6),
    .C(_335_),
    .Y(_336_)
);

FILL FILL_1__2291_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4119_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1280_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.bufreg.data [28])
);

FILL FILL132450x68550 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2605_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [8]),
    .B(_1596_),
    .C(i_rst_n_bF$buf3),
    .Y(_1679_)
);

FILL FILL_1__1982_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3983_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1414_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [11])
);

AOI21X1 _3563_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf4),
    .B(_505_),
    .C(_506_),
    .Y(_1232_)
);

OAI21X1 _3143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .B(_786_),
    .C(i_rst_n_bF$buf6),
    .Y(_190_)
);

FILL FILL_0__3603_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2834_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [14]),
    .B(\u_rf_if.read_buf1 [15]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1864_)
);

OAI21X1 _2414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1142_),
    .B(_619_),
    .C(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_1143_)
);

NAND2X1 _3619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_864_),
    .Y(_548_)
);

INVX1 _3792_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_232_),
    .Y(_638_)
);

AOI21X1 _3372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693__bF$buf3),
    .B(_355_),
    .C(_286_),
    .Y(_368_)
);

DFFPOSX1 _4157_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1507_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [2])
);

INVX1 _2643_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_808_),
    .Y(_1712_)
);

INVX1 _2223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [28]),
    .Y(_824_)
);

DFFPOSX1 _3848_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1179_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(\u_cpu.mem_if.signbit )
);

MUX2X1 _3428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_403_),
    .B(_402_),
    .S(_661__bF$buf3),
    .Y(_1264_)
);

OAI21X1 _3008_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf6),
    .B(_88_),
    .C(_89_),
    .Y(_90_)
);

OAI21X1 _3181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_216_),
    .B(_215_),
    .C(_218_),
    .Y(_219_)
);

BUFX2 _1914_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1908_),
    .Y(o_rf_mosi)
);

FILL FILL132750x21750 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2872_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf0),
    .B(_1891_),
    .C(_1892_),
    .Y(_1893_)
);

NOR2X1 _2452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1544_),
    .B(_1545_),
    .Y(_1546_)
);

MUX2X1 _2032_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_994_),
    .B(\u_mem_serial.shift_reg [7]),
    .S(_1067__bF$buf0),
    .Y(_993_)
);

INVX1 _3657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_570_)
);

OAI21X1 _3237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_780_),
    .B(_1693__bF$buf0),
    .C(_259_),
    .Y(_1311_)
);

FILL FILL_1__2194_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4195_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1164_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(ibus_pending_rdt[17])
);

FILL FILL_0__3030_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2928_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf4),
    .B(_28_),
    .C(_29_),
    .Y(_30_)
);

INVX1 _2508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1594_),
    .Y(_1600_)
);

INVX1 _2681_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_702_),
    .Y(_1745_)
);

INVX1 _2261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_790_)
);

DFFPOSX1 _3886_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1367_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_rf_if.read_buf0 [28])
);

OAI21X1 _3466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_427_),
    .B(_423_),
    .C(_786_),
    .Y(_428_)
);

NOR2X1 _3046_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .B(\u_rf_if.rreg0_latched [2]),
    .Y(_117_)
);

FILL FILL_0__2301_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3926_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3506_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1952_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [0]),
    .Y(_1066_)
);

AND2X2 _2737_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1783_),
    .B(_1792_),
    .Y(_1793_)
);

NAND2X1 _2317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_736_),
    .B(_735_),
    .Y(_734_)
);

FILL FILL_1__3000_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1583_),
    .B(_795_),
    .Y(_1584_)
);

INVX1 _2070_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_960_)
);

OAI21X1 _3695_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .B(_214_),
    .C(_587_),
    .Y(_1181_)
);

INVX1 _3275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_285_),
    .Y(_286_)
);

FILL FILL_0__2530_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2110_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3735_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3315_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2966_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [16]),
    .B(\u_rf_if.read_buf0 [17]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_58_)
);

NAND2X1 _2546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[7]),
    .B(ren_bF$buf0),
    .Y(_1638_)
);

NAND2X1 _2126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [18]),
    .Y(_910_)
);

MUX2X1 _3084_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_143_),
    .B(_928_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_144_)
);

FILL FILL_1__2920_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1990_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1032_),
    .B(_1040__bF$buf0),
    .Y(_1031_)
);

NAND2X1 _2775_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_1754_),
    .Y(_1820_)
);

OAI21X1 _2355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_701_),
    .B(_698_),
    .C(_697_),
    .Y(_696_)
);

FILL FILL_1__2097_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2815_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4098_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1270_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_cpu.bufreg.data [18])
);

NOR2X1 _2584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1654_),
    .B(_1666_),
    .Y(_1465_)
);

OAI21X1 _2164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_877_),
    .B(_879_),
    .C(_1058__bF$buf5),
    .Y(_876_)
);

AND2X2 _3789_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_635_),
    .B(_633_),
    .Y(_1135_)
);

AOI21X1 _3369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693__bF$buf4),
    .B(_1725_),
    .C(_270_),
    .Y(_366_)
);

FILL FILL_0__3409_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3162_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_658_)
);

NOR2X1 _3598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [5]),
    .B(_440__bF$buf0),
    .Y(_533_)
);

OAI21X1 _3178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(_214_),
    .C(_744_),
    .Y(_216_)
);

FILL FILL_0__2013_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3638_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3218_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3391_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2869_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1890_),
    .B(i_rst_n_bF$buf9),
    .Y(_1404_)
);

NAND2X1 _2449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [2]),
    .B(_656_),
    .Y(_1543_)
);

OAI21X1 _2029_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_997_),
    .B(_999_),
    .C(_1058__bF$buf5),
    .Y(_996_)
);

NAND2X1 _3810_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_652_),
    .B(_737_),
    .Y(_1131_)
);

FILL FILL_0__2909_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3132_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2242_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3447_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2823_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2678_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1741_),
    .B(_1728_),
    .Y(_1742_)
);

INVX1 _2258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_794_),
    .Y(_793_)
);

FILL FILL_0__2718_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3361_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2891_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2471_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2051_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1949_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .B(_1070_),
    .C(\u_mem_serial.bit_count [6]),
    .Y(_1069_)
);

FILL FILL_0__3676_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1580_),
    .B(_795_),
    .Y(_1581_)
);

OAI21X1 _2067_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf6),
    .B(_963_),
    .C(_964_),
    .Y(_962_)
);

FILL FILL_0__2947_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3590_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2280_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3904_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1376_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .Q(\u_rf_if.read_buf0 [19])
);

INVX1 _2296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_write_drain_busy),
    .Y(_755_)
);

FILL FILL_0__1971_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4022_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1436_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_rf_if.read_buf0 [30])
);

MUX2X1 _1987_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1034_),
    .B(\u_mem_serial.shift_reg [2]),
    .S(_1067__bF$buf2),
    .Y(_1033_)
);

AOI21X1 _3713_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_591_),
    .B(_604_),
    .C(_595_),
    .Y(_605_)
);

FILL FILL_1__3035_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2145_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL131850x61350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x100950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL131850x28950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3942_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1394_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.read_buf0 [1])
);

OAI22X1 _3522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_468_),
    .B(_444_),
    .C(_474_),
    .D(_475_),
    .Y(_1242_)
);

NAND2X1 _3102_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .B(_1704__bF$buf3),
    .Y(_158_)
);

FILL FILL_1__3264_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2374_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4060_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1457_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_serial.last_req_key [7])
);

FILL FILL_0__3579_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2115_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3751_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_253_),
    .B(_1000_),
    .S(_615__bF$buf0),
    .Y(_1153_)
);

NAND2X1 _3331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_746_),
    .B(_332_),
    .Y(_333_)
);

DFFPOSX1 _4116_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1487_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [22])
);

FILL FILL_1__3493_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2183_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_721_),
    .B(_1596_),
    .C(_1677_),
    .Y(_1458_)
);

NOR2X1 _3807_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1568_),
    .B(_1583_),
    .Y(_650_)
);

FILL FILL_1__2344_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_846_),
    .B(_1062__bF$buf3),
    .Y(_845_)
);

DFFPOSX1 _3980_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1216_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

NAND2X1 _3560_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_936_),
    .Y(_504_)
);

NAND2X1 _3140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_187_),
    .B(_1693__bF$buf1),
    .Y(_188_)
);

FILL FILL_0__2659_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3600_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2831_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [12]),
    .B(_1824__bF$buf4),
    .Y(_1862_)
);

INVX1 _2411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1139_),
    .Y(_1140_)
);

NAND2X1 _3616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_545_),
    .Y(_546_)
);

DFFPOSX1 _4154_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1183_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

NOR2X1 _2640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_1708_),
    .Y(_1709_)
);

OAI21X1 _2220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf6),
    .B(_827_),
    .C(_828_),
    .Y(_826_)
);

DFFPOSX1 _3845_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1346_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(\u_rf_if.rreg0_latched [2])
);

INVX1 _3425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [13]),
    .Y(_402_)
);

AND2X2 _3005_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_87_),
    .B(i_rst_n_bF$buf8),
    .Y(_1371_)
);

FILL FILL_1__3167_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2277_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2018_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3654_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_568_),
    .B(_190__bF$buf3),
    .C(_567_),
    .D(_556__bF$buf0),
    .Y(_1203_)
);

NAND2X1 _3234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf4),
    .B(_256_),
    .Y(_257_)
);

DFFPOSX1 _4019_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1434_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(raddr[8])
);

FILL FILL_1__3396_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2086_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4192_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1322_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.bne_or_bge )
);

AND2X2 _2925_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_),
    .B(i_rst_n_bF$buf8),
    .Y(_1391_)
);

OAI21X1 _2505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [10]),
    .Y(_1598_)
);

FILL FILL_1__2247_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3883_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1192_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

INVX1 _3463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.c_r ),
    .Y(_425_)
);

OAI21X1 _3043_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[5]),
    .B(_1704__bF$buf2),
    .C(i_rst_n_bF$buf7),
    .Y(_115_)
);

FILL FILL_0__3503_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1938_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2734_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1790_),
    .B(_1773_),
    .C(_1766_),
    .Y(_1439_)
);

OAI21X1 _2314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_757_),
    .B(_762_),
    .C(_738_),
    .Y(_737_)
);

DFFSR _3939_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1149_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(ibus_pending_rdt[2])
);

OAI21X1 _3519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_776_),
    .B(_781_),
    .C(_761_),
    .Y(_473_)
);

FILL FILL_1__2476_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3692_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .B(_1141_),
    .Y(_586_)
);

OAI21X1 _3272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .B(_268_),
    .C(_733__bF$buf5),
    .Y(_284_)
);

DFFPOSX1 _4057_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1251_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.bufreg.data [30])
);

FILL FILL_0__3732_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3312_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2963_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [14]),
    .B(_12__bF$buf3),
    .Y(_56_)
);

NAND2X1 _2543_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[5]),
    .B(ren_bF$buf1),
    .Y(_1635_)
);

NOR2X1 _2123_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_913_),
    .Y(_1492_)
);

MUX2X1 _3748_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_341_),
    .B(_976_),
    .S(_615__bF$buf4),
    .Y(_1156_)
);

NAND2X1 _3328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_754_),
    .B(_329_),
    .Y(_330_)
);

AOI21X1 _3081_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1580_),
    .B(_1731_),
    .C(_141_),
    .Y(_1349_)
);

FILL FILL_0__3541_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3121_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2772_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .B(\u_rf_if.stream_cnt [0]),
    .C(i_rst_n_bF$buf5),
    .Y(_1818_)
);

NOR2X1 _2352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_699_)
);

DFFPOSX1 _3977_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1411_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf1 [14])
);

OAI21X1 _3557_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(_501_),
    .Y(_502_)
);

NAND2X1 _3137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_733__bF$buf3),
    .Y(_185_)
);

FILL FILL_0__2812_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3299_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4095_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1475_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_serial.last_req_key [10])
);

FILL FILL_0__3770_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3350_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2828_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf4),
    .B(_1858_),
    .C(_1859_),
    .Y(_1860_)
);

NAND2X1 _2408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(_1130_),
    .Y(_1132_)
);

OAI21X1 _2581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1594_),
    .B(_1645_),
    .C(_797_),
    .Y(_1665_)
);

NOR2X1 _2161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_880_),
    .B(_1040__bF$buf3),
    .Y(_879_)
);

FILL FILL132750x97350 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3786_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_632_),
    .B(_628_),
    .C(_1114_),
    .Y(_633_)
);

NAND3X1 _3366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_674_),
    .C(_733__bF$buf2),
    .Y(_363_)
);

FILL FILL_0__2621_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2201_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1700_),
    .B(_1703_),
    .C(_1706_),
    .Y(_1707_)
);

NOR2X1 _2217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_830_),
    .B(_1062__bF$buf3),
    .Y(_829_)
);

FILL FILL_1__2379_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_754_),
    .B(_665_),
    .C(_664_),
    .D(_662_),
    .Y(_661_)
);

AOI21X1 _3595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf3),
    .B(_529_),
    .C(_530_),
    .Y(_1224_)
);

AOI21X1 _3175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_211_),
    .B(_212_),
    .C(_205_),
    .Y(_213_)
);

FILL FILL_0__2850_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2430_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3215_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2866_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [22]),
    .B(\u_rf_if.read_buf1 [23]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1888_)
);

NAND2X1 _2446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.mem_if.signbit ),
    .B(_1530_),
    .Y(_1540_)
);

NOR2X1 _2026_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1000_),
    .B(_1040__bF$buf2),
    .Y(_999_)
);

DFFPOSX1 _4189_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1319_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_cpu.decode.opcode [1])
);

FILL FILL_0__3444_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3024_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1738_),
    .B(_1739_),
    .C(_733__bF$buf0),
    .Y(_1740_)
);

INVX1 _2255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_797_),
    .Y(_796_)
);

FILL FILL_0__1930_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2715_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1946_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1073_),
    .Y(_1072_)
);

FILL FILL_0__3673_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3253_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[4]),
    .B(ren_bF$buf2),
    .C(_732_),
    .D(_1577_),
    .Y(_1578_)
);

NOR2X1 _2064_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_966_),
    .B(_1062__bF$buf2),
    .Y(_965_)
);

AOI21X1 _3689_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_659_),
    .B(_682_),
    .C(_752_),
    .Y(_1184_)
);

OAI21X1 _3269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .B(_268_),
    .C(_733__bF$buf5),
    .Y(_282_)
);

FILL FILL_0__2944_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2524_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2104_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3482_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3901_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf10),
    .B(_1119_),
    .C(_1118_),
    .Y(_1117_)
);

AOI21X1 _2293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_760_),
    .B(_759_),
    .C(\u_cpu.branch_op ),
    .Y(_758_)
);

MUX2X1 _3498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_771_),
    .B(_454_),
    .S(_441_),
    .Y(_1245_)
);

OAI21X1 _3078_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_1730_),
    .C(_139_),
    .Y(_140_)
);

FILL FILL_0__2753_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2333_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3118_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1984_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1037_),
    .B(_1039_),
    .C(_1058__bF$buf4),
    .Y(_1036_)
);

AOI21X1 _2769_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1762_),
    .B(\u_rf_if.stream_cnt [0]),
    .C(_1815_),
    .Y(_1429_)
);

NAND2X1 _2349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_707_),
    .B(_703_),
    .Y(_702_)
);

AOI21X1 _3710_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(\u_cpu.decode.co_mem_word ),
    .C(_1048_),
    .Y(_602_)
);

FILL FILL_0__2982_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2562_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3347_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2998_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [24]),
    .B(\u_rf_if.read_buf0 [25]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_82_)
);

INVX1 _2578_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1663_),
    .Y(_1468_)
);

MUX2X1 _2158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_882_),
    .B(\u_mem_serial.shift_reg [21]),
    .S(_1067__bF$buf3),
    .Y(_881_)
);

FILL FILL_0__2618_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL131850x82950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2791_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3576_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3156_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3317_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_780_),
    .B(_766_),
    .Y(_664_)
);

FILL FILL_0__2847_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2427_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2007_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4113_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1486_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [23])
);

FILL FILL_1__3070_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3385_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3804_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.req_pending ),
    .Y(_1112_)
);

INVX1 _2196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [25]),
    .Y(_848_)
);

FILL FILL_0__2656_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2236_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1927_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [2]),
    .C(_543_),
    .Y(_544_)
);

FILL FILL_1__2150_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x100950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2885_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2465_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4151_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1296_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

DFFSR _3842_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1177_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(ibus_pending_rdt[30])
);

MUX2X1 _3422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_400_),
    .B(_399_),
    .S(_661__bF$buf3),
    .Y(_1267_)
);

MUX2X1 _3002_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [25]),
    .B(\u_rf_if.read_buf0 [26]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_85_)
);

FILL FILL_0__2694_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3479_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3059_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1965_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_567_)
);

OAI21X1 _3231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [6]),
    .B(ibus_pending_ack_bF$buf0),
    .C(_254_),
    .Y(_255_)
);

DFFPOSX1 _4016_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1432_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(ren)
);

MUX2X1 _2922_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [5]),
    .B(\u_rf_if.read_buf0 [6]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_25_)
);

OAI21X1 _2502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf3),
    .B(_712_),
    .C(\u_rf_serial.launch_pending ),
    .Y(_1595_)
);

FILL FILL_0__3288_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3707_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.bufreg.data [0]),
    .C(_598_),
    .Y(_599_)
);

FILL FILL_1__3869_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3449_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2099_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg2.dlo [15]),
    .Y(_934_)
);

DFFPOSX1 _3880_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1364_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(raddr[1])
);

OAI21X1 _3460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_421_),
    .B(_655_),
    .C(_1118_),
    .Y(_422_)
);

OAI21X1 _3040_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[4]),
    .B(_1704__bF$buf2),
    .C(i_rst_n_bF$buf7),
    .Y(_113_)
);

FILL FILL_0__2559_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2139_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2731_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1787_),
    .B(\u_rf_serial.shift_rx [1]),
    .Y(_1788_)
);

OAI21X1 _2311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_743_),
    .B(_741_),
    .C(_1118_),
    .Y(_740_)
);

DFFPOSX1 _3936_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1391_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(\u_rf_if.read_buf0 [4])
);

NOR2X1 _3516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(_469_),
    .Y(_470_)
);

FILL FILL_1__2053_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3678_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2788_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2368_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4054_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1454_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.pending_read )
);

FILL FILL132450x75750 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2960_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf0),
    .B(_52_),
    .C(_53_),
    .Y(_54_)
);

NAND3X1 _2540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1624_),
    .B(_1627_),
    .C(_1631_),
    .Y(_1632_)
);

MUX2X1 _2120_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [17]),
    .B(\u_cpu.ctrl.o_ibus_adr [17]),
    .S(_1052__bF$buf0),
    .Y(_915_)
);

MUX2X1 _3745_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_227_),
    .B(_952_),
    .S(_615__bF$buf2),
    .Y(_1159_)
);

OAI21X1 _3325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[1]),
    .B(_321_),
    .C(_733__bF$buf1),
    .Y(_328_)
);

FILL FILL_1__2282_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2597_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3974_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1214_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

NOR2X1 _3554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(_440__bF$buf1),
    .Y(_500_)
);

NAND2X1 _3134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_182_),
    .B(_1693__bF$buf4),
    .Y(_183_)
);

DFFPOSX1 _4092_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1473_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_serial.req_seen )
);

AND2X2 _2825_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1857_),
    .B(i_rst_n_bF$buf4),
    .Y(_1415_)
);

INVX1 _2405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_620_)
);

NOR2X1 _3783_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_631_),
    .B(_627_),
    .Y(_1137_)
);

OAI21X1 _3363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [31]),
    .B(ibus_pending_ack_bF$buf6),
    .C(_360_),
    .Y(_361_)
);

DFFPOSX1 _4148_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1503_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [6])
);

FILL FILL132450x108150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3403_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2634_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .Y(_1704_)
);

INVX1 _2214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [27]),
    .Y(_832_)
);

DFFPOSX1 _3839_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1343_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.issue_chunk [0])
);

INVX1 _3419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_399_)
);

NAND2X1 _3592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1000_),
    .Y(_528_)
);

NAND3X1 _3172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1522_),
    .B(_209_),
    .C(_1519_),
    .Y(_210_)
);

FILL FILL_0__3632_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2863_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [20]),
    .B(_1824__bF$buf3),
    .Y(_1886_)
);

NAND2X1 _2443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_1537_)
);

MUX2X1 _2023_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1002_),
    .B(\u_mem_serial.shift_reg [6]),
    .S(_1067__bF$buf0),
    .Y(_1001_)
);

OAI22X1 _3648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_565_),
    .B(_190__bF$buf2),
    .C(_564_),
    .D(_556__bF$buf4),
    .Y(_1206_)
);

AOI21X1 _3228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_251_),
    .B(_736_),
    .C(_252_),
    .Y(_1313_)
);

FILL FILL_1__2185_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2903_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4186_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1163_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(ibus_pending_rdt[16])
);

NAND2X1 _2919_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [3]),
    .B(_12__bF$buf6),
    .Y(_23_)
);

NOR2X1 _2672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1735_),
    .B(_1736_),
    .Y(_1737_)
);

INVX1 _2252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_803_),
    .Y(_799_)
);

DFFSR _3877_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf10),
    .S(vdd),
    .D(_1134_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(current_wdata0_next_hint)
);

OAI21X1 _3457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [1]),
    .B(_744_),
    .C(\u_cpu.branch_op ),
    .Y(_419_)
);

OAI21X1 _3037_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .C(raddr[3]),
    .Y(_111_)
);

FILL FILL_0__3917_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _1943_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1075_),
    .B(_1105_),
    .Y(_1510_)
);

FILL FILL_0__3250_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2728_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[7]),
    .B(raddr[6]),
    .Y(_1785_)
);

NOR2X1 _2308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_744_),
    .Y(_743_)
);

AOI22X1 _2481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[5]),
    .B(ren_bF$buf2),
    .C(_732_),
    .D(_1574_),
    .Y(_1575_)
);

INVX1 _2061_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [10]),
    .Y(_968_)
);

INVX1 _3686_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_584_)
);

OAI21X1 _3266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .B(_268_),
    .C(_733__bF$buf5),
    .Y(_280_)
);

FILL FILL_0__2101_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3726_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3306_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2957_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_51_),
    .B(i_rst_n_bF$buf5),
    .Y(_1383_)
);

OAI21X1 _2537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [0]),
    .B(_1570_),
    .C(_1628_),
    .Y(_1629_)
);

NAND2X1 _2117_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [17]),
    .Y(_918_)
);

FILL FILL_1__3220_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _2290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .Y(_761_)
);

NOR2X1 _3495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_450_),
    .B(_451_),
    .Y(_452_)
);

OAI21X1 _3075_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1568_),
    .B(_1729_),
    .C(_1744_),
    .Y(_138_)
);

FILL FILL_0__2330_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3535_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2911_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1981_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1041_),
    .B(_1040__bF$buf0),
    .Y(_1039_)
);

NAND3X1 _2766_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1812_),
    .B(_1813_),
    .C(_1810_),
    .Y(_1814_)
);

AND2X2 _2346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_791_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_705_)
);

FILL FILL_1__2088_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2806_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4089_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1471_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.shift_rx [1])
);

FILL FILL_0__3764_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2995_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [22]),
    .B(_12__bF$buf6),
    .Y(_80_)
);

INVX1 _2575_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1661_),
    .Y(_1469_)
);

OAI21X1 _2155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_885_),
    .B(_887_),
    .C(_1058__bF$buf1),
    .Y(_884_)
);

INVX1 _2384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_668_),
    .Y(_667_)
);

OAI21X1 _3589_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [8]),
    .C(_525_),
    .Y(_526_)
);

AOI21X1 _3169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1476_),
    .B(_1477_),
    .C(_206_),
    .Y(_207_)
);

FILL FILL_0__2004_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4110_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1276_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_cpu.bufreg.data [24])
);

FILL FILL_0__3629_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3209_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3801_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_637_),
    .B(_640_),
    .C(_646_),
    .Y(_647_)
);

FILL FILL_1__3123_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf6),
    .B(_851_),
    .C(_852_),
    .Y(_850_)
);

MUX2X1 _3398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_388_),
    .B(_386_),
    .S(_661__bF$buf4),
    .Y(_1279_)
);

FILL FILL_0__2233_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3438_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3191_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1734_),
    .B(_1732_),
    .C(_1727_),
    .Y(_1448_)
);

NOR2X1 _2249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [3]),
    .B(\u_rf_serial.tx_state [2]),
    .Y(_802_)
);

NOR2X1 _3610_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [2]),
    .B(_440__bF$buf2),
    .Y(_542_)
);

FILL FILL_0__2709_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3352_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2462_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2042_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3667_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2203_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2898_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2_),
    .B(_619_),
    .C(_1795_),
    .Y(_7_)
);

AOI21X1 _2478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_1567_),
    .C(_1571_),
    .Y(_1572_)
);

OAI21X1 _2058_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf5),
    .B(_971_),
    .C(_972_),
    .Y(_970_)
);

FILL FILL_0__2938_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2518_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3581_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2691_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2271_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2432_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_780_),
    .B(_1120_),
    .C(_765_),
    .Y(_764_)
);

FILL FILL_0__1962_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2747_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4013_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1429_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(\u_rf_if.stream_cnt [0])
);

NOR2X1 _1978_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf5),
    .B(_1042_),
    .Y(_1508_)
);

NAND2X1 _3704_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_1535_),
    .Y(_596_)
);

FILL FILL_1__2661_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3026_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2096_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_937_),
    .Y(_1495_)
);

FILL FILL_0__2976_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3094_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3933_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1204_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

OAI22X1 _3513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_776_),
    .B(_444_),
    .C(_466_),
    .D(_467_),
    .Y(_1243_)
);

FILL FILL_1__3255_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4051_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1247_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.bufreg2.dhi [6])
);

FILL FILL_1__2106_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3742_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_143_),
    .B(_928_),
    .S(_615__bF$buf3),
    .Y(_1162_)
);

INVX1 _3322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[1]),
    .Y(_326_)
);

DFFPOSX1 _4107_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1483_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [26])
);

FILL FILL_1__3484_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2594_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2174_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3799_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2335_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3971_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1408_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [17])
);

AOI21X1 _3551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf3),
    .B(_496_),
    .C(_497_),
    .Y(_1235_)
);

AOI21X1 _3131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_180_),
    .B(_177_),
    .C(_1126__bF$buf1),
    .Y(_1338_)
);

MUX2X1 _2822_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [11]),
    .B(\u_rf_if.read_buf1 [12]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1855_)
);

AOI22X1 _2402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_743_),
    .C(_624_),
    .D(\u_cpu.bufreg.data [0]),
    .Y(_623_)
);

AOI21X1 _3607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf4),
    .B(_538_),
    .C(_539_),
    .Y(_1221_)
);

FILL FILL_1__2564_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3780_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_div [2]),
    .B(_627_),
    .Y(_630_)
);

NAND2X1 _3360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_733__bF$buf5),
    .Y(_358_)
);

FILL FILL_0__2879_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4145_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1293_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(rreg1[2])
);

FILL FILL_0__3400_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [2]),
    .Y(_1701_)
);

OAI21X1 _2211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf0),
    .B(_835_),
    .C(_836_),
    .Y(_834_)
);

DFFSR _3836_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1174_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(ibus_pending_rdt[27])
);

MUX2X1 _3416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_397_),
    .B(_396_),
    .S(_661__bF$buf2),
    .Y(_1270_)
);

FILL FILL_1__2793_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x129750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3158_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2009_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2860_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf3),
    .B(_1882_),
    .C(_1883_),
    .Y(_1884_)
);

OAI21X1 _2440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_1532_),
    .C(_1533_),
    .Y(_1534_)
);

OAI21X1 _2020_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1005_),
    .B(_1007_),
    .C(_1058__bF$buf3),
    .Y(_1004_)
);

INVX1 _3645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_564_)
);

OAI21X1 _3225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_247_),
    .C(_249_),
    .Y(_250_)
);

FILL FILL_0__2900_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3387_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2077_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4183_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1314_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.active_ibus )
);

OAI21X1 _2916_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf4),
    .B(_19_),
    .C(_20_),
    .Y(_21_)
);

FILL FILL_1__2238_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3874_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1361_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(raddr[4])
);

INVX1 _3454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [31]),
    .Y(_417_)
);

OAI21X1 _3034_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .C(raddr[2]),
    .Y(_109_)
);

FILL FILL132450x61350 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1940_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .B(\u_mem_serial.bit_count [4]),
    .Y(_1077_)
);

FILL FILL132450x28950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x108150 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2725_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1780_),
    .B(_1781_),
    .Y(_1782_)
);

INVX1 _2305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .Y(_746_)
);

FILL FILL_1__2467_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3683_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_555_),
    .B(_190__bF$buf0),
    .C(_582_),
    .D(_556__bF$buf3),
    .Y(_1188_)
);

OAI21X1 _3263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm ),
    .B(_268_),
    .C(_733__bF$buf5),
    .Y(_278_)
);

DFFPOSX1 _4048_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1451_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.state [1])
);

FILL FILL_0__3303_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2954_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(\u_rf_if.read_buf0 [14]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_49_)
);

OAI21X1 _2534_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf3),
    .B(_1625_),
    .C(\u_rf_serial.req_seen ),
    .Y(_1626_)
);

NOR2X1 _2114_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_921_),
    .Y(_1493_)
);

MUX2X1 _3739_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_155_),
    .B(_904_),
    .S(_615__bF$buf1),
    .Y(_1165_)
);

INVX1 _3319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[2]),
    .Y(_324_)
);

FILL FILL_1__2696_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_824_),
    .Y(_449_)
);

NOR2X1 _3072_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1684_),
    .B(_1687_),
    .Y(_136_)
);

FILL FILL_0__3532_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3112_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2763_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1811_),
    .Y(_1431_)
);

NAND2X1 _2343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_800_),
    .B(_709_),
    .Y(_708_)
);

DFFSR _3968_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1156_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(ibus_pending_rdt[9])
);

NAND2X1 _3548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_912_),
    .Y(_495_)
);

INVX1 _3128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[21]),
    .Y(_178_)
);

FILL FILL_0__2803_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4086_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1265_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_cpu.bufreg.data [13])
);

FILL FILL_0__3761_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3341_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2819_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [9]),
    .B(_1824__bF$buf6),
    .Y(_1853_)
);

CLKBUF1 CLKBUF1_insert170 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf1 )
);

CLKBUF1 CLKBUF1_insert171 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf0 )
);

OAI21X1 _2992_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf2),
    .B(_76_),
    .C(_77_),
    .Y(_78_)
);

INVX1 _2572_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.shift_rx [0]),
    .Y(_1659_)
);

NOR2X1 _2152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_888_),
    .B(_1040__bF$buf4),
    .Y(_887_)
);

AND2X2 _3777_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_div [1]),
    .B(\gen_int_sys_clk.clk_div [0]),
    .Y(_627_)
);

NAND2X1 _3357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_355_),
    .B(_1693__bF$buf3),
    .Y(_356_)
);

FILL FILL_0__2612_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3570_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [1]),
    .Y(_1698_)
);

NOR2X1 _2208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_838_),
    .B(_1062__bF$buf3),
    .Y(_837_)
);

INVX1 _2381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_670_)
);

NOR2X1 _3586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(_440__bF$buf5),
    .Y(_524_)
);

INVX1 _3166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_204_)
);

FILL FILL_0__2841_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2421_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3206_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2857_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1881_),
    .B(i_rst_n_bF$buf9),
    .Y(_1407_)
);

INVX1 _2437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1530_),
    .Y(_1531_)
);

NOR2X1 _2017_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1008_),
    .B(_1040__bF$buf0),
    .Y(_1007_)
);

FILL FILL_1__2599_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_854_),
    .B(_1062__bF$buf3),
    .Y(_853_)
);

INVX1 _3395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [29]),
    .Y(_387_)
);

FILL FILL_0__2650_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3435_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3015_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1580_),
    .B(_1731_),
    .C(\u_rf_if.o_waddr [3]),
    .Y(_1732_)
);

NOR2X1 _2246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [1]),
    .B(\u_rf_serial.tx_state [0]),
    .Y(_805_)
);

FILL FILL_0__1921_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1937_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1081_),
    .B(_1080_),
    .C(_1104_),
    .Y(_1511_)
);

FILL FILL_0__3664_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3244_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3405_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2895_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1774_),
    .C(_4_),
    .Y(_5_)
);

NAND2X1 _2475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1568_),
    .B(_795_),
    .Y(_1569_)
);

NOR2X1 _2055_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_974_),
    .B(_1062__bF$buf4),
    .Y(_973_)
);

FILL FILL_0__2935_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2515_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4201_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1166_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(ibus_pending_rdt[19])
);

FILL FILL132750x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3473_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3634_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_794_),
    .B(_778_),
    .C(_768_),
    .Y(_767_)
);

AND2X2 _3489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_446_),
    .B(_761_),
    .Y(_447_)
);

NAND2X1 _3069_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_133_),
    .B(_130_),
    .Y(_134_)
);

FILL FILL_0__2744_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2324_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4010_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1231_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg2.dlo [13])
);

OAI21X1 _1975_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1059_),
    .C(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_1044_)
);

NOR2X1 _3701_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_592_),
    .B(_588_),
    .Y(_593_)
);

MUX2X1 _2093_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [14]),
    .B(\u_cpu.ctrl.o_ibus_adr [14]),
    .S(_1052__bF$buf0),
    .Y(_939_)
);

AOI21X1 _3298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_288_),
    .B(_305_),
    .C(_306_),
    .Y(_1297_)
);

FILL FILL_0__2973_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2553_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2989_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_75_),
    .B(i_rst_n_bF$buf4),
    .Y(_1375_)
);

AOI21X1 _2569_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1656_),
    .B(_1597_),
    .C(_1126__bF$buf7),
    .Y(_1470_)
);

MUX2X1 _2149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_890_),
    .B(\u_mem_serial.shift_reg [20]),
    .S(_1067__bF$buf3),
    .Y(_889_)
);

DFFSR _3930_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(vdd),
    .S(i_rst_n_bF$buf2),
    .D(_1147_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(ibus_pending_rdt[0])
);

NAND2X1 _3510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_761_),
    .B(_464_),
    .Y(_465_)
);

FILL FILL_0__2782_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3567_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3147_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3308_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2798_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [5]),
    .B(\u_rf_if.read_buf1 [6]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1837_)
);

NAND3X1 _2378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_783_),
    .C(_674_),
    .Y(_673_)
);

FILL FILL_0__2418_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4104_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1273_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [21])
);

FILL FILL_1__3061_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3796_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3376_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3537_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_856_)
);

FILL FILL_0__2647_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2227_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3290_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1918_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1024_),
    .Y(_537_)
);

FILL FILL_1__2141_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert175 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert179 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3766_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2876_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2456_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4142_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1500_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [9])
);

DFFPOSX1 _3833_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1340_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(\u_rf_if.issue_chunk [3])
);

INVX1 _3413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [19]),
    .Y(_396_)
);

FILL FILL_1__2370_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2685_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1956_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_562_),
    .B(_190__bF$buf2),
    .C(_561_),
    .D(_556__bF$buf4),
    .Y(_1209_)
);

INVX1 _3222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1708_),
    .Y(_247_)
);

DFFPOSX1 _4007_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1426_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(\u_rf_if.stream_cnt [3])
);

DFFSR _4180_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1160_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(ibus_pending_rdt[13])
);

AND2X2 _2913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_18_),
    .B(i_rst_n_bF$buf8),
    .Y(_1394_)
);

FILL FILL_0__3279_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3871_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1189_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Q(\u_cpu.ctrl.pc )
);

MUX2X1 _3451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1535_),
    .B(_666_),
    .S(_415_),
    .Y(_1253_)
);

AOI21X1 _3031_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_107_),
    .B(_106_),
    .C(_1126__bF$buf6),
    .Y(_1365_)
);

FILL FILL_1__3193_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2722_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(\u_rf_if.rreg1_latched [2]),
    .Y(_1779_)
);

NAND2X1 _2302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_751_),
    .B(_750_),
    .Y(_749_)
);

FILL FILL_0__3088_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3927_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1387_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(\u_rf_if.read_buf0 [8])
);

NOR2X1 _3507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_775_),
    .B(_781_),
    .Y(_462_)
);

FILL FILL_1__2044_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3669_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x82950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1994_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3680_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_581_),
    .B(_190__bF$buf1),
    .C(_580_),
    .D(_556__bF$buf1),
    .Y(_1190_)
);

OAI21X1 _3260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[1]),
    .B(_268_),
    .C(_733__bF$buf4),
    .Y(_276_)
);

FILL FILL132750x129750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2779_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2359_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4045_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1244_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_cpu.bufreg2.dhi [3])
);

FILL FILL_0__3720_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2951_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [11]),
    .B(_12__bF$buf0),
    .Y(_47_)
);

OR2X2 _2531_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_711_),
    .B(\u_rf_serial.last_req_key [10]),
    .Y(_1623_)
);

MUX2X1 _2111_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [16]),
    .B(\u_cpu.ctrl.o_ibus_adr [16]),
    .S(_1052__bF$buf0),
    .Y(_923_)
);

MUX2X1 _3736_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_178_),
    .B(_880_),
    .S(_615__bF$buf1),
    .Y(_1168_)
);

OAI21X1 _3316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[4]),
    .B(_321_),
    .C(_733__bF$buf4),
    .Y(_322_)
);

FILL FILL_1__2273_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2588_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2749_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2760_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1809_),
    .Y(_1432_)
);

INVX2 _2340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_712_),
    .Y(_711_)
);

DFFPOSX1 _3965_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1405_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_rf_if.read_buf1 [20])
);

OAI21X1 _3545_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.dlo [19]),
    .C(_492_),
    .Y(_493_)
);

NAND2X1 _3125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_175_),
    .B(_1693__bF$buf5),
    .Y(_176_)
);

DFFPOSX1 _4083_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1468_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_rf_serial.tx_state [0])
);

OAI21X1 _2816_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf6),
    .B(_1849_),
    .C(_1850_),
    .Y(_1851_)
);

CLKBUF1 CLKBUF1_insert140 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf31 )
);

CLKBUF1 CLKBUF1_insert141 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf30 )
);

CLKBUF1 CLKBUF1_insert142 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf29 )
);

CLKBUF1 CLKBUF1_insert143 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf28 )
);

CLKBUF1 CLKBUF1_insert144 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf27 )
);

CLKBUF1 CLKBUF1_insert145 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf26 )
);

CLKBUF1 CLKBUF1_insert146 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf25 )
);

CLKBUF1 CLKBUF1_insert147 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf24 )
);

CLKBUF1 CLKBUF1_insert148 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf23 )
);

CLKBUF1 CLKBUF1_insert149 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf22 )
);

FILL FILL_1__2978_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3774_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1109_),
    .B(_1113_),
    .Y(_1108_)
);

INVX1 _3354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_353_),
    .Y(_1288_)
);

DFFPOSX1 _4139_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1290_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3])
);

FILL FILL_1__3096_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3814_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1695_),
    .B(_1693__bF$buf4),
    .Y(_1696_)
);

INVX1 _2205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [26]),
    .Y(_840_)
);

AOI21X1 _3583_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf2),
    .B(_520_),
    .C(_521_),
    .Y(_1227_)
);

OAI21X1 _3163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .B(_784_),
    .C(i_rst_n_bF$buf6),
    .Y(_203_)
);

FILL FILL_0__3623_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2854_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [19]),
    .B(\u_rf_if.read_buf1 [20]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1879_)
);

NAND3X1 _2434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1527_),
    .B(_1523_),
    .C(_1516_),
    .Y(_1528_)
);

MUX2X1 _2014_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1010_),
    .B(\u_mem_serial.shift_reg [5]),
    .S(_1067__bF$buf2),
    .Y(_1009_)
);

INVX1 _3639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_561_)
);

AOI21X1 _3219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1107_),
    .B(_245_),
    .C(_1126__bF$buf5),
    .Y(_1315_)
);

FILL FILL_1__2176_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_332_),
    .Y(_385_)
);

DFFPOSX1 _4177_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1310_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_cpu.decode.co_ebreak )
);

NAND2X1 _2663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .B(_1728_),
    .Y(_1729_)
);

INVX1 _2243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1910_),
    .Y(_807_)
);

DFFPOSX1 _3868_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1358_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(raddr[7])
);

MUX2X1 _3448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_413_),
    .B(_412_),
    .S(_661__bF$buf4),
    .Y(_1254_)
);

AND2X2 _3028_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(i_rst_n_bF$buf7),
    .Y(_1366_)
);

FILL FILL_0__2703_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1934_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1083_),
    .B(_1098_),
    .Y(_1082_)
);

NOR2X1 _2719_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_1776_)
);

INVX1 _2892_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [29]),
    .Y(_2_)
);

OAI21X1 _2472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .B(ren_bF$buf3),
    .C(_1565_),
    .Y(_1566_)
);

INVX1 _2052_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_976_)
);

INVX1 _3677_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_580_)
);

OAI21X1 _3257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[2]),
    .B(_268_),
    .C(_733__bF$buf4),
    .Y(_274_)
);

FILL FILL_0__3717_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert91 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3050_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert93 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert94 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert96 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert98 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2948_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf0),
    .B(_43_),
    .C(_44_),
    .Y(_45_)
);

AOI22X1 _2528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [0]),
    .B(_1570_),
    .C(_1586_),
    .D(_1619_),
    .Y(_1620_)
);

NAND2X1 _2108_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [16]),
    .Y(_926_)
);

FILL FILL_1__3211_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_773_),
    .Y(_770_)
);

FILL FILL132750x90150 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _3486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441_),
    .Y(_444_)
);

AOI21X1 _3066_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_756_),
    .B(_131_),
    .C(_1126__bF$buf7),
    .Y(_1354_)
);

FILL FILL_0__2321_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x57750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3526_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1972_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [1]),
    .Y(_1047_)
);

AOI21X1 _2757_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704__bF$buf3),
    .B(_1807_),
    .C(_1808_),
    .Y(_1434_)
);

INVX1 _2337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .Y(_714_)
);

FILL FILL_1__2079_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3440_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2090_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [14]),
    .Y(_942_)
);

NAND2X1 _3295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_303_),
    .B(_1693__bF$buf2),
    .Y(_304_)
);

FILL FILL_0__2550_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2130_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3755_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2986_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [21]),
    .B(\u_rf_if.read_buf0 [22]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_73_)
);

NOR2X1 _2566_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1594_),
    .B(_1645_),
    .Y(_1654_)
);

OAI21X1 _2146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_893_),
    .B(_895_),
    .C(_1058__bF$buf1),
    .Y(_892_)
);

FILL FILL_0__2606_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2520_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2795_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [3]),
    .B(_1824__bF$buf2),
    .Y(_1835_)
);

NAND3X1 _2375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_750_),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .C(_689_),
    .Y(_676_)
);

FILL FILL_0__2835_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4101_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1480_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [29])
);

FILL FILL_1__3114_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf6),
    .B(_859_),
    .C(_860_),
    .Y(_858_)
);

INVX1 _3389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[11]),
    .Y(_382_)
);

FILL FILL_0__3429_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3182_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3601_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.dlo [5]),
    .C(_534_),
    .Y(_535_)
);

FILL FILL_1__3343_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_230_),
    .Y(_231_)
);

FILL FILL_0__2033_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3658_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2889_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_1774_),
    .C(_1905_),
    .Y(_1911_)
);

OAI21X1 _2469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1558_),
    .B(_695_),
    .C(_1562_),
    .Y(_1563_)
);

OAI21X1 _2049_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf4),
    .B(_979_),
    .C(_980_),
    .Y(_978_)
);

DFFSR _3830_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1171_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(ibus_pending_rdt[24])
);

MUX2X1 _3410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_394_),
    .B(_393_),
    .S(_661__bF$buf2),
    .Y(_1273_)
);

FILL FILL_0__2929_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2509_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3572_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2262_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2423_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2698_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.ready_pulse ),
    .C(i_rst_n_bF$buf2),
    .Y(_1758_)
);

NAND3X1 _2278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_776_),
    .B(_775_),
    .C(_774_),
    .Y(_773_)
);

FILL FILL_0__2738_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4004_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1228_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_cpu.bufreg2.dlo [10])
);

FILL FILL_0__2491_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2071_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1969_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1050_),
    .B(\u_mem_serial.shift_reg [0]),
    .S(_1067__bF$buf2),
    .Y(_1049_)
);

MUX2X1 _2910_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [2]),
    .B(\u_rf_if.read_buf0 [3]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_16_)
);

FILL FILL_1__2652_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3017_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2087_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_945_),
    .Y(_1496_)
);

FILL FILL_0__2967_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert181 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert182 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert184 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3085_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3924_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1250_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

MUX2X1 _3504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_459_),
    .B(_771_),
    .S(_781_),
    .Y(_460_)
);

FILL FILL_1__2881_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3246_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1991_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4042_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1448_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_rf_if.o_waddr [3])
);

MUX2X1 _3733_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1694_),
    .B(_856_),
    .S(_615__bF$buf3),
    .Y(_1171_)
);

INVX1 _3313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[3]),
    .Y(_319_)
);

FILL FILL_1__3475_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2165_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2326_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3962_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1184_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

NOR2X1 _3542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_440__bF$buf4),
    .Y(_491_)
);

NAND2X1 _3122_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_733__bF$buf1),
    .Y(_173_)
);

FILL FILL_0__2394_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4080_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1262_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_cpu.bufreg.data [10])
);

AND2X2 _2813_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1848_),
    .B(i_rst_n_bF$buf0),
    .Y(_1418_)
);

FILL FILL_1__2555_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3771_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf5),
    .B(_1106_),
    .Y(_1105_)
);

NAND2X1 _3351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_350_),
    .B(_1693__bF$buf5),
    .Y(_351_)
);

DFFPOSX1 _4136_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1497_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [12])
);

INVX8 _2622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733__bF$buf4),
    .Y(_1693_)
);

OAI21X1 _2202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf0),
    .B(_843_),
    .C(_844_),
    .Y(_842_)
);

DFFPOSX1 _3827_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1337_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_rf_if.rreg1_latched [2])
);

INVX1 _3407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [22]),
    .Y(_393_)
);

FILL FILL_1__2784_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3149_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_976_),
    .Y(_519_)
);

OAI21X1 _3160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1110_),
    .B(_1103_),
    .C(_1112_),
    .Y(_201_)
);

FILL FILL_0__3620_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3200_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert171 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2851_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [17]),
    .B(_1824__bF$buf1),
    .Y(_1877_)
);

NAND2X1 _2431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_760_),
    .Y(_1525_)
);

OAI21X1 _2011_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1013_),
    .B(_1015_),
    .C(_1058__bF$buf3),
    .Y(_1012_)
);

OAI22X1 _3636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_559_),
    .B(_190__bF$buf1),
    .C(_558_),
    .D(_556__bF$buf1),
    .Y(_1212_)
);

OAI21X1 _3216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1048_),
    .B(_1106_),
    .C(_243_),
    .Y(_244_)
);

FILL FILL_1__3378_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2068_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4174_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1308_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

NAND2X1 _2907_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [0]),
    .B(_12__bF$buf5),
    .Y(_14_)
);

FILL FILL132150x122550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2229_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1726_),
    .B(_1723_),
    .C(_1126__bF$buf1),
    .Y(_1449_)
);

NOR2X1 _2240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_809_),
    .Y(_1479_)
);

DFFPOSX1 _3865_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1356_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_rf_if.write_wait [0])
);

INVX1 _3445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [3]),
    .Y(_412_)
);

MUX2X1 _3025_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(\u_rf_if.read_buf0 [31]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_103_)
);

FILL FILL_0__2700_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1931_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .Y(_1085_)
);

FILL FILL_0__2297_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2716_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [31]),
    .B(_1772_),
    .Y(_1773_)
);

FILL FILL_1__2458_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_578_),
    .B(_190__bF$buf1),
    .C(_577_),
    .D(_556__bF$buf1),
    .Y(_1193_)
);

OAI21X1 _3254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[3]),
    .B(_268_),
    .C(_733__bF$buf4),
    .Y(_272_)
);

DFFPOSX1 _4039_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1446_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_rf_if.wdata0_next_phase )
);

FILL FILL_0_BUFX2_insert61 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2945_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_42_),
    .B(i_rst_n_bF$buf5),
    .Y(_1386_)
);

NAND2X1 _2525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [2]),
    .B(_1582_),
    .Y(_1617_)
);

NOR2X1 _2105_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_929_),
    .Y(_1494_)
);

FILL FILL_1__2687_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_1715_),
    .Y(_442_)
);

INVX1 _3063_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_128_),
    .Y(_129_)
);

FILL FILL_0__3523_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3103_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2754_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1806_),
    .Y(_1435_)
);

AOI22X1 _2334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[8]),
    .B(ren_bF$buf2),
    .C(_732_),
    .D(_718_),
    .Y(_717_)
);

DFFSR _3959_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf8),
    .S(vdd),
    .D(_1154_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(ibus_pending_rdt[7])
);

AOI21X1 _3539_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf1),
    .B(_487_),
    .C(_488_),
    .Y(_1238_)
);

NOR2X1 _3119_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1691_),
    .B(_171_),
    .Y(_1341_)
);

INVX1 _3292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[27]),
    .Y(_301_)
);

DFFPOSX1 _4077_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1261_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_cpu.bufreg.data [9])
);

FILL FILL_0__3752_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3332_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2983_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(_12__bF$buf2),
    .Y(_71_)
);

NOR2X1 _2563_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1651_),
    .B(_719_),
    .Y(_1652_)
);

NOR2X1 _2143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_896_),
    .B(_1040__bF$buf4),
    .Y(_895_)
);

AND2X2 _3768_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1103_),
    .B(_1111_),
    .Y(_1102_)
);

INVX1 _3348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[8]),
    .Y(_348_)
);

FILL FILL_0__2603_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3808_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3561_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf7),
    .B(_1690_),
    .Y(_1691_)
);

FILL FILL_1__1996_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert70 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf6)
);

BUFX2 BUFX2_insert71 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf5)
);

BUFX2 BUFX2_insert72 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf4)
);

BUFX2 BUFX2_insert73 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf3)
);

FILL FILL_1__3722_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert74 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf2)
);

BUFX2 BUFX2_insert75 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf1)
);

BUFX2 BUFX2_insert76 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf0)
);

BUFX2 BUFX2_insert77 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .Y(_1693__bF$buf5)
);

BUFX2 BUFX2_insert78 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .Y(_1693__bF$buf4)
);

BUFX2 BUFX2_insert79 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .Y(_1693__bF$buf3)
);

OAI21X1 _2792_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf2),
    .B(_1831_),
    .C(_1832_),
    .Y(_1833_)
);

INVX1 _2372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_680_),
    .Y(_679_)
);

DFFPOSX1 _3997_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1421_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [4])
);

OAI21X1 _3577_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [11]),
    .C(_516_),
    .Y(_517_)
);

AOI21X1 _3157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_198_),
    .C(_199_),
    .Y(_1331_)
);

FILL FILL_0__2832_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2412_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3790_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2848_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf1),
    .B(_1873_),
    .C(_1874_),
    .Y(_1875_)
);

OAI21X1 _2428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_620_),
    .B(_619_),
    .C(_1518_),
    .Y(_1522_)
);

NOR2X1 _2008_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1016_),
    .B(_1040__bF$buf3),
    .Y(_1015_)
);

NOR2X1 _2181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_862_),
    .B(_1062__bF$buf2),
    .Y(_861_)
);

MUX2X1 _3386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_1695_),
    .S(_733__bF$buf4),
    .Y(_380_)
);

FILL FILL_0__2641_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3006_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[19]),
    .Y(_1724_)
);

MUX2X1 _2237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [30]),
    .B(\u_cpu.ctrl.o_ibus_adr [30]),
    .S(_1052__bF$buf1),
    .Y(_811_)
);

FILL FILL_0__1912_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert113 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert118 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_228_),
    .B(_1693__bF$buf5),
    .Y(_229_)
);

FILL FILL_0__2870_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _1928_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .B(_1089_),
    .C(_1088_),
    .Y(_1512_)
);

FILL FILL_0__3235_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2886_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [28]),
    .Y(_1903_)
);

AOI21X1 _2466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1557_),
    .B(_694_),
    .C(_1559_),
    .Y(_1560_)
);

NOR2X1 _2046_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_982_),
    .B(_1062__bF$buf4),
    .Y(_981_)
);

FILL FILL132750x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2506_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3464_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3044_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2000_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3625_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2695_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1750_),
    .B(_1754_),
    .Y(_1755_)
);

INVX1 _2275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_776_)
);

FILL FILL_0__1950_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2735_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2315_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4001_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1423_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.read_buf1 [2])
);

OAI21X1 _1966_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1117_),
    .B(_1120_),
    .C(_1124_),
    .Y(_1052_)
);

FILL FILL_0__3693_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3273_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2084_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [13]),
    .B(\u_cpu.ctrl.o_ibus_adr [13]),
    .S(_1052__bF$buf0),
    .Y(_947_)
);

OAI21X1 _3289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_1693__bF$buf2),
    .C(_298_),
    .Y(_299_)
);

FILL FILL_0__2964_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2544_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2705_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3921_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_1123_)
);

INVX1 _3501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .Y(_457_)
);

INVX1 _3098_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[18]),
    .Y(_155_)
);

FILL FILL_0__2773_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3138_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2789_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1830_),
    .B(i_rst_n_bF$buf8),
    .Y(_1424_)
);

OR2X2 _2369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_683_),
    .B(_692_),
    .Y(_682_)
);

MUX2X1 _3730_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_301_),
    .B(_832_),
    .S(_615__bF$buf2),
    .Y(_1174_)
);

OAI21X1 _3310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_1693__bF$buf1),
    .C(_316_),
    .Y(_317_)
);

FILL FILL_1__3052_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3367_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3528_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1578_),
    .B(_1596_),
    .C(_1675_),
    .Y(_1460_)
);

INVX1 _2178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_864_)
);

FILL FILL_0__2638_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2218_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3281_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2810_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [8]),
    .B(\u_rf_if.read_buf1 [9]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1846_)
);

FILL FILL_0__3596_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3176_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2132_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3757_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2867_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2447_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4133_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1287_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0])
);

FILL FILL_1__2608_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _3824_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1168_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(ibus_pending_rdt[21])
);

MUX2X1 _3404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_391_),
    .B(_390_),
    .S(_661__bF$buf4),
    .Y(_1276_)
);

FILL FILL_1__2361_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2676_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert140 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2837_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert142 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert144 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert146 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert147 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert149 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1947_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_558_)
);

INVX1 _3213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1907_),
    .Y(_242_)
);

FILL FILL_1__2590_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4171_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1514_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [1])
);

AND2X2 _2904_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_11_),
    .B(i_rst_n_bF$buf0),
    .Y(_1396_)
);

DFFPOSX1 _3862_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1187_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

MUX2X1 _3442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_410_),
    .B(_409_),
    .S(_661__bF$buf2),
    .Y(_1257_)
);

OAI21X1 _3022_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_96_),
    .B(_619_),
    .C(_1803_),
    .Y(_101_)
);

FILL FILL_1__3184_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert171 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2713_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1768_),
    .B(_1769_),
    .Y(_1770_)
);

FILL FILL_0__3499_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3079_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3918_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1383_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(\u_rf_if.read_buf0 [12])
);

FILL FILL_1__2035_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1985_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_577_)
);

AND2X2 _3251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733__bF$buf5),
    .B(_268_),
    .Y(_270_)
);

DFFPOSX1 _4036_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1240_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [22])
);

FILL FILL_0__3711_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert30 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert32 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert34 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert36 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert37 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert39 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2942_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [10]),
    .B(\u_rf_if.read_buf0 [11]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_40_)
);

NAND3X1 _2522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [6]),
    .B(_1612_),
    .C(_1613_),
    .Y(_1614_)
);

MUX2X1 _2102_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [15]),
    .B(\u_cpu.ctrl.o_ibus_adr [15]),
    .S(_1052__bF$buf0),
    .Y(_931_)
);

MUX2X1 _3727_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_262_),
    .B(_1715_),
    .S(_615__bF$buf2),
    .Y(_1177_)
);

NAND2X1 _3307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf5),
    .B(_313_),
    .Y(_314_)
);

FILL FILL_1__2264_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_438_),
    .Y(_439_)
);

AND2X2 _3060_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_126_),
    .B(_125_),
    .Y(_127_)
);

FILL FILL132150x68550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2579_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2159_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2751_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(\u_rf_if.stream_active_bF$buf5 ),
    .C(_1798_),
    .D(_1804_),
    .Y(_1805_)
);

NOR2X1 _2331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_729_),
    .B(_725_),
    .Y(_720_)
);

DFFPOSX1 _3956_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1401_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf1 [24])
);

NAND2X1 _3536_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_888_),
    .Y(_486_)
);

INVX1 _3116_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_168_),
    .Y(_169_)
);

FILL FILL_1__2493_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x122550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2388_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4074_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1464_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.last_req_key [0])
);

NAND2X1 _2807_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [6]),
    .B(_1824__bF$buf5),
    .Y(_1844_)
);

FILL FILL_1__2969_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2980_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf2),
    .B(_67_),
    .C(_68_),
    .Y(_69_)
);

INVX1 _2560_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rf_miso),
    .Y(_1649_)
);

MUX2X1 _2140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_898_),
    .B(\u_mem_serial.shift_reg [19]),
    .S(_1067__bF$buf3),
    .Y(_897_)
);

OAI21X1 _3765_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1100_),
    .B(_1102_),
    .C(\u_mem_serial.bit_count [0]),
    .Y(_1099_)
);

NAND3X1 _3345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_344_),
    .B(_345_),
    .C(_340_),
    .Y(_346_)
);

FILL FILL_0__3805_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1684_),
    .B(_1687_),
    .Y(_1688_)
);

BUFX2 BUFX2_insert40 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .Y(_12__bF$buf3)
);

BUFX2 BUFX2_insert41 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .Y(_12__bF$buf2)
);

BUFX2 BUFX2_insert42 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .Y(_12__bF$buf1)
);

BUFX2 BUFX2_insert43 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .Y(_12__bF$buf0)
);

BUFX2 BUFX2_insert44 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .Y(_440__bF$buf5)
);

BUFX2 BUFX2_insert45 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .Y(_440__bF$buf4)
);

BUFX2 BUFX2_insert46 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .Y(_440__bF$buf3)
);

BUFX2 BUFX2_insert47 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .Y(_440__bF$buf2)
);

BUFX2 BUFX2_insert48 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .Y(_440__bF$buf1)
);

BUFX2 BUFX2_insert49 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440_),
    .Y(_440__bF$buf0)
);

DFFPOSX1 _3994_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1223_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg2.dlo [5])
);

NOR2X1 _3574_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_440__bF$buf0),
    .Y(_515_)
);

NOR2X1 _3154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_196_),
    .B(_670_),
    .Y(_197_)
);

FILL FILL_0__3614_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x21750 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2845_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1872_),
    .B(i_rst_n_bF$buf9),
    .Y(_1410_)
);

OR2X2 _2425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1518_),
    .B(_1517_),
    .Y(_1519_)
);

MUX2X1 _2005_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1018_),
    .B(\u_mem_serial.shift_reg [4]),
    .S(_1067__bF$buf1),
    .Y(_1017_)
);

FILL FILL_1__2167_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_377_),
    .B(_264_),
    .Y(_378_)
);

DFFPOSX1 _4168_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1304_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_cpu.csr_imm )
);

MUX2X1 _2654_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1721_),
    .B(\u_mem_serial.shift_reg [31]),
    .S(_1067__bF$buf4),
    .Y(_1722_)
);

NAND2X1 _2234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.dhi [6]),
    .Y(_814_)
);

DFFPOSX1 _3859_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1353_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_rf_if.write_wait [3])
);

INVX1 _3439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [6]),
    .Y(_409_)
);

OAI21X1 _3019_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_1800_),
    .C(_98_),
    .Y(_99_)
);

FILL FILL_1__2396_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_789_),
    .B(_1693__bF$buf0),
    .C(_226_),
    .Y(_1323_)
);

NOR2X1 _1925_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf5),
    .B(_1090_),
    .Y(_1513_)
);

FILL FILL132750x3750 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2883_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [25]),
    .B(_1824__bF$buf3),
    .Y(_1901_)
);

OAI21X1 _2463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_693_),
    .B(_621_),
    .C(_1556_),
    .Y(_1557_)
);

INVX1 _2043_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_984_)
);

OAI22X1 _3668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_575_),
    .B(_190__bF$buf0),
    .C(_574_),
    .D(_556__bF$buf3),
    .Y(_1196_)
);

OAI21X1 _3248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_759_),
    .B(_266_),
    .C(_674_),
    .Y(_267_)
);

FILL FILL_0__2923_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3708_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3041_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2939_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [8]),
    .B(_12__bF$buf1),
    .Y(_38_)
);

OAI21X1 _2519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [7]),
    .B(_730_),
    .C(_1610_),
    .Y(_1611_)
);

FILL FILL_1__3202_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2692_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_1752_)
);

INVX1 _2272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_783_),
    .Y(_779_)
);

OR2X2 _3897_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1120_),
    .B(_1117_),
    .Y(_1116_)
);

AOI22X1 _3477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .C(\u_cpu.bufreg2.i_bytecnt [1]),
    .D(\u_cpu.state.i_ctrl_misalign ),
    .Y(_436_)
);

AOI21X1 _3057_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_756_),
    .B(_124_),
    .C(_1126__bF$buf0),
    .Y(_1356_)
);

FILL FILL_0__3517_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1963_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(i_mem_miso),
    .C(_1056_),
    .Y(_1055_)
);

FILL FILL_0__3270_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2748_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_1800_),
    .C(_1793_),
    .Y(_1802_)
);

INVX1 _2328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_724_),
    .Y(_723_)
);

FILL FILL_1__3431_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2081_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [13]),
    .Y(_950_)
);

NAND2X1 _3286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_295_),
    .Y(_296_)
);

FILL FILL_0__2121_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert120 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert122 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert124 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert125 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3746_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2977_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_66_),
    .B(i_rst_n_bF$buf4),
    .Y(_1378_)
);

AOI21X1 _2557_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1597_),
    .B(_1647_),
    .C(_1126__bF$buf7),
    .Y(_1473_)
);

OAI21X1 _2137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_901_),
    .B(_903_),
    .C(_1058__bF$buf1),
    .Y(_900_)
);

FILL FILL_1__2299_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3660_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3095_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_152_),
    .B(_1693__bF$buf2),
    .Y(_153_)
);

FILL FILL_0__2350_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2511_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2786_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [2]),
    .B(\u_rf_if.read_buf1 [3]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1828_)
);

AOI21X1 _2366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_686_),
    .Y(_685_)
);

FILL FILL_0__2826_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2740_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3105_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [3]),
    .Y(_1674_)
);

OAI21X1 _2175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf3),
    .B(_867_),
    .C(_868_),
    .Y(_866_)
);

FILL FILL_0__3173_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3334_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_223_),
    .Y(_224_)
);

FILL FILL_0__2024_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4130_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1494_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [15])
);

FILL FILL_0__3649_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3821_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1334_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .Q(\u_cpu.state.cnt_r [2])
);

INVX1 _3401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [25]),
    .Y(_390_)
);

FILL FILL_1__3563_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2253_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2414_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2689_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1557_),
    .B(i_rst_n_bF$buf10),
    .Y(_1443_)
);

NAND2X1 _2269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_783_),
    .Y(_782_)
);

OAI22X1 _3630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_554_),
    .B(_190__bF$buf0),
    .C(_555_),
    .D(_556__bF$buf3),
    .Y(_1215_)
);

NAND2X1 _3210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf4),
    .B(_239_),
    .Y(_240_)
);

FILL FILL_0__2729_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3792_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert100 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1067_),
    .Y(_1067__bF$buf3)
);

BUFX2 BUFX2_insert101 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1067_),
    .Y(_1067__bF$buf2)
);

BUFX2 BUFX2_insert102 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1067_),
    .Y(_1067__bF$buf1)
);

BUFX2 BUFX2_insert103 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1067_),
    .Y(_1067__bF$buf0)
);

BUFX2 BUFX2_insert104 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058_),
    .Y(_1058__bF$buf6)
);

BUFX2 BUFX2_insert105 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058_),
    .Y(_1058__bF$buf5)
);

BUFX2 BUFX2_insert106 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058_),
    .Y(_1058__bF$buf4)
);

BUFX2 BUFX2_insert107 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058_),
    .Y(_1058__bF$buf3)
);

BUFX2 BUFX2_insert108 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058_),
    .Y(_1058__bF$buf2)
);

BUFX2 BUFX2_insert109 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058_),
    .Y(_1058__bF$buf1)
);

FILL FILL_0__2482_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2062_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2901_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [30]),
    .B(\u_rf_if.read_buf1 [31]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_9_)
);

FILL FILL_1__2643_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3008_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1591_),
    .B(_708_),
    .C(_807_),
    .Y(_1908_)
);

NOR2X1 _2078_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_953_),
    .Y(_1497_)
);

FILL FILL_0__2958_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert140 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2291_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert144 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert149 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2710_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(\u_rf_if.issue_chunk [2]),
    .Y(_1767_)
);

FILL FILL_0__3076_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL131550x28950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3915_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1200_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

FILL FILL_1__2872_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3237_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1982_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4033_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1443_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .Q(\u_rf_if.wdata0_next [0])
);

INVX1 _1998_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_1024_)
);

AND2X2 _3724_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_737_),
    .B(_755_),
    .Y(_613_)
);

NOR2X1 _3304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_288_),
    .Y(_312_)
);

FILL FILL_1__3466_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2156_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1952_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2317_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3953_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1209_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

OAI21X1 _3533_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [22]),
    .C(_483_),
    .Y(_484_)
);

OAI21X1 _3113_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_161_),
    .C(_166_),
    .Y(_167_)
);

FILL FILL_1__3695_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2385_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4071_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1258_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.bufreg.data [6])
);

OAI21X1 _2804_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf5),
    .B(_1840_),
    .C(_1841_),
    .Y(_1842_)
);

FILL FILL_1__2546_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3762_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1097_),
    .Y(_1096_)
);

OAI21X1 _3342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [9]),
    .B(ibus_pending_ack_bF$buf6),
    .C(_342_),
    .Y(_343_)
);

DFFPOSX1 _4127_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1284_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

FILL FILL_0__2194_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [3]),
    .B(\u_rf_if.write_wait [2]),
    .Y(_1685_)
);

DFFPOSX1 _3818_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1331_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

FILL FILL_1__2775_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert10 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_661_),
    .Y(_661__bF$buf1)
);

BUFX2 BUFX2_insert11 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_661_),
    .Y(_661__bF$buf0)
);

BUFX2 BUFX2_insert12 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf4 )
);

BUFX2 BUFX2_insert13 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf3 )
);

BUFX2 BUFX2_insert14 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf2 )
);

BUFX2 BUFX2_insert15 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf1 )
);

BUFX2 BUFX2_insert16 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf0 )
);

BUFX2 BUFX2_insert17 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf3)
);

BUFX2 BUFX2_insert18 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf2)
);

BUFX2 BUFX2_insert19 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf1)
);

DFFPOSX1 _3991_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1418_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf1 [7])
);

AOI21X1 _3571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf5),
    .B(_511_),
    .C(_512_),
    .Y(_1230_)
);

AOI21X1 _3151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_779_),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_rf_if.ready_pulse ),
    .Y(_195_)
);

MUX2X1 _2842_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [16]),
    .B(\u_rf_if.read_buf1 [17]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1870_)
);

NAND3X1 _2422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_706_),
    .B(_1477_),
    .C(_1476_),
    .Y(_1516_)
);

OAI21X1 _2002_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1021_),
    .B(_1023_),
    .C(_1058__bF$buf3),
    .Y(_1020_)
);

INVX1 _3627_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_554_)
);

NOR2X1 _3207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_1693__bF$buf5),
    .Y(_237_)
);

FILL FILL_1__3369_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_371_),
    .C(_374_),
    .Y(_375_)
);

FILL FILL132750x122550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2059_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4165_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1511_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.bit_count [4])
);

FILL FILL_0__3420_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3000_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1718_),
    .B(_1716_),
    .C(_1058__bF$buf0),
    .Y(_1719_)
);

NOR2X1 _2231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_817_),
    .Y(_1480_)
);

DFFSR _3856_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1129_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(ibus_pending_ack)
);

MUX2X1 _3436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_407_),
    .B(_406_),
    .S(_661__bF$buf1),
    .Y(_1260_)
);

INVX1 _3016_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [29]),
    .Y(_96_)
);

FILL FILL_1_BUFX2_insert74 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert78 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3598_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1922_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1094_),
    .B(_1097_),
    .Y(_1092_)
);

FILL FILL_0__2288_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2707_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1756_),
    .B(_1764_),
    .C(_1760_),
    .Y(_1765_)
);

FILL FILL_1__2449_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3810_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2880_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf0),
    .B(_1897_),
    .C(_1898_),
    .Y(_1899_)
);

NAND2X1 _2460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .Y(_1554_)
);

OAI21X1 _2040_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf5),
    .B(_987_),
    .C(_988_),
    .Y(_986_)
);

FILL FILL132150x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_574_)
);

OAI21X1 _3245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_261_),
    .B(_1693__bF$buf0),
    .C(_264_),
    .Y(_1308_)
);

FILL FILL_0__2920_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2500_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2097_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2936_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf1),
    .B(_34_),
    .C(_35_),
    .Y(_36_)
);

NAND2X1 _2516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[8]),
    .B(ren_bF$buf2),
    .Y(_1608_)
);

FILL FILL_1__2678_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL131850x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3894_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1371_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .Q(\u_rf_if.read_buf0 [24])
);

NAND2X1 _3474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [31]),
    .B(_661__bF$buf0),
    .Y(_434_)
);

NOR2X1 _3054_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf7),
    .B(_1558_),
    .Y(_1357_)
);

NOR2X1 _1960_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1059_),
    .Y(_1058_)
);

INVX2 _2745_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1798_),
    .Y(_1800_)
);

OAI22X1 _2325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_795_),
    .B(_804_),
    .C(_727_),
    .D(_730_),
    .Y(_726_)
);

NOR2X1 _3283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_288_),
    .Y(_294_)
);

DFFPOSX1 _4068_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1461_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.last_req_key [3])
);

FILL FILL_0__3323_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2974_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [18]),
    .B(\u_rf_if.read_buf0 [19]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_64_)
);

OAI21X1 _2554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1645_),
    .B(_1600_),
    .C(i_rst_n_bF$buf10),
    .Y(_1646_)
);

NOR2X1 _2134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_904_),
    .B(_1040__bF$buf4),
    .Y(_903_)
);

FILL FILL132450x97350 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3759_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[0]),
    .Y(_618_)
);

NAND2X1 _3339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_747_),
    .B(_332_),
    .Y(_340_)
);

NAND2X1 _3092_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_733__bF$buf3),
    .Y(_150_)
);

FILL FILL_0__3552_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3132_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1987_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3713_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2783_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [0]),
    .B(_1824__bF$buf2),
    .Y(_1826_)
);

INVX1 _2363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_688_)
);

DFFPOSX1 _3988_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1220_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [2])
);

NAND2X1 _3568_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_952_),
    .Y(_510_)
);

OAI22X1 _3148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_189_),
    .B(_190__bF$buf4),
    .C(_194_),
    .D(_191_),
    .Y(_1335_)
);

FILL FILL_0__2823_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2403_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3781_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3361_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2839_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [14]),
    .B(_1824__bF$buf4),
    .Y(_1868_)
);

NOR2X1 _2419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1145_),
    .B(_1180_),
    .Y(_1317_)
);

OAI21X1 _2592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1582_),
    .B(_1597_),
    .C(_1671_),
    .Y(_1672_)
);

NOR2X1 _2172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_870_),
    .B(_1062__bF$buf4),
    .Y(_869_)
);

NAND3X1 _3797_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(ibus_pending_rdt[1]),
    .C(ibus_pending_rdt[0]),
    .Y(_643_)
);

INVX1 _3377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_371_),
    .Y(_372_)
);

FILL FILL_0__2632_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3590_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1715_),
    .B(_1040__bF$buf1),
    .Y(_1716_)
);

MUX2X1 _2228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [29]),
    .B(\u_cpu.ctrl.o_ibus_adr [29]),
    .S(_1052__bF$buf4),
    .Y(_819_)
);

OAI21X1 _3186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_203_),
    .B(_1693__bF$buf0),
    .C(_190__bF$buf4),
    .Y(_222_)
);

FILL FILL_0__2861_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _1919_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .Y(_1094_)
);

FILL FILL_0__3226_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2877_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1896_),
    .B(i_rst_n_bF$buf9),
    .Y(_1402_)
);

INVX1 _2457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1550_),
    .Y(_1551_)
);

NOR2X1 _2037_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_990_),
    .B(_1062__bF$buf2),
    .Y(_989_)
);

FILL FILL_1__3140_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3455_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3035_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3616_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2686_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf7),
    .B(_1748_),
    .Y(_1445_)
);

INVX2 _2266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_785_)
);

FILL FILL_0__1941_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2306_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1957_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1066_),
    .B(_1062__bF$buf4),
    .C(\u_mem_serial.active_we_bF$buf4 ),
    .Y(_1061_)
);

FILL FILL_0__3684_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3264_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2220_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1588_),
    .B(_1579_),
    .Y(_1589_)
);

MUX2X1 _2075_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [12]),
    .B(\u_cpu.ctrl.o_ibus_adr [12]),
    .S(_1052__bF$buf0),
    .Y(_955_)
);

FILL FILL_0__2535_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2115_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3493_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3912_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1380_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_rf_if.read_buf0 [15])
);

MUX2X1 _3089_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_147_),
    .B(_920_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_148_)
);

FILL FILL_0__2764_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2344_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4030_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1440_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .Q(\u_rf_if.stream_cnt [4])
);

FILL FILL_0__3129_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2925_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1995_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf5),
    .B(_1027_),
    .C(_1028_),
    .Y(_1026_)
);

NAND2X1 _3721_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1074_),
    .B(_1078_),
    .Y(_611_)
);

OAI21X1 _3301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_308_),
    .Y(_309_)
);

FILL FILL_0__2993_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3358_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3519_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2589_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1566_),
    .B(_1597_),
    .C(_1669_),
    .Y(_1670_)
);

INVX1 _2169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_872_)
);

DFFPOSX1 _3950_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1398_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_rf_if.read_buf1 [27])
);

NOR2X1 _3530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [22]),
    .B(_440__bF$buf2),
    .Y(_482_)
);

INVX1 _3110_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1700_),
    .Y(_164_)
);

FILL FILL_0__2209_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2801_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1839_),
    .B(i_rst_n_bF$buf0),
    .Y(_1421_)
);

FILL FILL_0__3587_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3167_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2123_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3748_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_648_)
);

FILL FILL_0__2438_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2018_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4124_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1491_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [18])
);

FILL FILL_0__2191_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2610_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.pending_read ),
    .Y(_1682_)
);

FILL FILL_0__3396_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3815_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_654_)
);

FILL FILL_1__2352_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2667_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2247_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2828_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1938_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _3624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1518_),
    .B(mem_dbus_ack_bF$buf3),
    .Y(_552_)
);

MUX2X1 _3204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1118_),
    .B(_235_),
    .S(_733__bF$buf2),
    .Y(_1320_)
);

FILL FILL_1__2581_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2896_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2476_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4162_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1301_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

DFFPOSX1 _3853_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1350_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_rf_if.o_waddr [1])
);

INVX1 _3433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [9]),
    .Y(_406_)
);

OAI21X1 _3013_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_1800_),
    .C(_93_),
    .Y(_94_)
);

FILL FILL_1_BUFX2_insert43 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert47 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2704_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1761_),
    .Y(_1762_)
);

INVX1 _3909_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .Y(_1119_)
);

FILL FILL_1__2026_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1976_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_572_),
    .B(_190__bF$buf3),
    .C(_571_),
    .D(_556__bF$buf0),
    .Y(_1199_)
);

INVX1 _3242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[30]),
    .Y(_262_)
);

DFFPOSX1 _4027_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1237_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_cpu.bufreg2.dlo [19])
);

FILL FILL_0__3702_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x75750 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2933_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_33_),
    .B(i_rst_n_bF$buf8),
    .Y(_1389_)
);

NAND3X1 _2513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [4]),
    .B(_1603_),
    .C(_1604_),
    .Y(_1605_)
);

FILL FILL_0__3299_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3718_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(_609_),
    .C(_1907_),
    .Y(_610_)
);

FILL FILL_1__2255_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3891_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1194_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

AOI21X1 _3471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_424_),
    .B(_431_),
    .C(_661__bF$buf0),
    .Y(_1249_)
);

MUX2X1 _3051_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(\u_rf_if.rreg0_latched [3]),
    .S(\u_rf_if.issue_sel ),
    .Y(_121_)
);

AOI21X1 _2742_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1794_),
    .B(_1797_),
    .C(_1126__bF$buf6),
    .Y(_1438_)
);

INVX1 _2322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [1]),
    .Y(_729_)
);

DFFSR _3947_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(vdd),
    .S(i_rst_n_bF$buf2),
    .D(_1151_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(ibus_pending_rdt[4])
);

OAI21X1 _3527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441_),
    .B(_479_),
    .C(_476_),
    .Y(_1241_)
);

AOI21X1 _3107_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1704__bF$buf3),
    .B(\u_rf_if.issue_sel ),
    .C(\u_rf_if.issue_chunk [0]),
    .Y(_162_)
);

FILL FILL_1__2484_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(ibus_pending_ack_bF$buf0),
    .C(_290_),
    .Y(_291_)
);

FILL FILL_0__2799_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2379_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4065_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1255_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [3])
);

NAND2X1 _2971_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [16]),
    .B(_12__bF$buf3),
    .Y(_62_)
);

NAND3X1 _2551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1642_),
    .B(_1607_),
    .C(_1616_),
    .Y(_1643_)
);

MUX2X1 _2131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_906_),
    .B(\u_mem_serial.shift_reg [18]),
    .S(_1067__bF$buf1),
    .Y(_905_)
);

MUX2X1 _3756_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_239_),
    .B(_1032_),
    .S(_615__bF$buf4),
    .Y(_1149_)
);

NAND3X1 _3336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_751_),
    .B(_331_),
    .C(_733__bF$buf0),
    .Y(_338_)
);

NAND2X1 _2607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf3),
    .B(_1596_),
    .Y(_1680_)
);

NOR2X1 _2780_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1823_),
    .B(_1764_),
    .Y(_1426_)
);

INVX1 _2360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [1]),
    .Y(_691_)
);

DFFPOSX1 _3985_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1415_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [10])
);

OAI21X1 _3565_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [14]),
    .C(_507_),
    .Y(_508_)
);

INVX1 _3145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1553_),
    .Y(_192_)
);

FILL FILL_0__3605_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2836_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf4),
    .B(_1864_),
    .C(_1865_),
    .Y(_1866_)
);

AOI21X1 _2416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1144_),
    .B(_1143_),
    .C(_1141_),
    .Y(_1145_)
);

AOI22X1 _3794_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_225_),
    .B(_228_),
    .C(_639_),
    .D(_258_),
    .Y(_640_)
);

INVX1 _3374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_369_)
);

DFFPOSX1 _4159_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1508_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_reg [1])
);

NAND3X1 _2645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf4),
    .B(_1713_),
    .C(_1711_),
    .Y(_1714_)
);

NAND2X1 _2225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.dhi [5]),
    .Y(_822_)
);

OAI21X1 _3183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .B(_784_),
    .C(\u_cpu.state.init_done ),
    .Y(_220_)
);

BUFX2 _1916_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1906_),
    .Y(o_mem_sck)
);

MUX2X1 _2874_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [24]),
    .B(\u_rf_if.read_buf1 [25]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1894_)
);

NOR2X1 _2454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1547_),
    .B(_1546_),
    .Y(_1548_)
);

INVX1 _2034_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [7]),
    .Y(_992_)
);

INVX1 _3659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_571_)
);

NAND2X1 _3239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_246_),
    .B(_250_),
    .Y(_260_)
);

FILL FILL_0__2914_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4197_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1165_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(ibus_pending_rdt[18])
);

FILL FILL_0__3032_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2683_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1744_),
    .B(_1746_),
    .Y(_1747_)
);

NAND2X1 _2263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_790_),
    .B(_789_),
    .Y(_788_)
);

DFFPOSX1 _3888_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1368_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .Q(\u_rf_if.read_buf0 [27])
);

OAI21X1 _3468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_418_),
    .B(_429_),
    .C(_415_),
    .Y(_430_)
);

NAND2X1 _3048_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_118_),
    .B(_1690_),
    .Y(_119_)
);

FILL FILL_0__3508_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1954_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(_1064_)
);

FILL FILL_0__3261_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2739_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [30]),
    .B(_619_),
    .Y(_1795_)
);

NAND3X1 _2319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(_756_),
    .C(_733__bF$buf0),
    .Y(_732_)
);

FILL FILL_1__3422_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1585_),
    .Y(_1586_)
);

NAND2X1 _2072_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [12]),
    .Y(_958_)
);

INVX1 _3697_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_588_),
    .Y(_589_)
);

AOI21X1 _3277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_237_),
    .B(_287_),
    .C(_286_),
    .Y(_288_)
);

FILL FILL_0__2112_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3737_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3317_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3490_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3070_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2968_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf3),
    .B(_58_),
    .C(_59_),
    .Y(_60_)
);

NAND3X1 _2548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [7]),
    .B(_1638_),
    .C(_1639_),
    .Y(_1640_)
);

OAI21X1 _2128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_909_),
    .B(_911_),
    .C(_1058__bF$buf2),
    .Y(_908_)
);

FILL FILL_1__3651_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3086_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_145_),
    .B(_142_),
    .C(_1126__bF$buf1),
    .Y(_1348_)
);

FILL FILL_0__2341_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2502_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1992_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1030_),
    .B(_1062__bF$buf4),
    .Y(_1029_)
);

AOI21X1 _2777_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1820_),
    .B(_1819_),
    .C(_1821_),
    .Y(_1427_)
);

INVX1 _2357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_695_),
    .Y(_694_)
);

FILL FILL_0__2817_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2570_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2150_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2731_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1570_),
    .B(_1597_),
    .C(_1667_),
    .Y(_1668_)
);

OAI21X1 _2166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf6),
    .B(_875_),
    .C(_876_),
    .Y(_874_)
);

FILL FILL_0__3164_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2960_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3325_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(_657_),
    .Y(_656_)
);

FILL FILL_0__2015_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4121_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.clk_sys_prev )
);

FILL FILL_0__3393_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3812_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_735_),
    .B(_613_),
    .C(_615__bF$buf1),
    .Y(_1129_)
);

FILL FILL_1__3554_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2244_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3869_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3449_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2405_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_440__bF$buf5),
    .Y(_550_)
);

INVX1 _3201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[4]),
    .Y(_233_)
);

FILL FILL_1__3783_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2473_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2053_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3678_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2634_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [3]),
    .Y(_1583_)
);

NOR2X1 _2069_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_961_),
    .Y(_1498_)
);

DFFPOSX1 _3850_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1181_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.alu.cmp_r )
);

MUX2X1 _3430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_404_),
    .B(_403_),
    .S(_661__bF$buf3),
    .Y(_1263_)
);

INVX1 _3010_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_91_)
);

FILL FILL_1_BUFX2_insert12 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert17 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2949_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2282_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2701_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1759_),
    .Y(_1441_)
);

DFFPOSX1 _3906_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1377_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .Q(\u_rf_if.read_buf0 [18])
);

FILL FILL_1__2863_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3228_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_786_),
    .Y(_753_)
);

DFFPOSX1 _4024_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1437_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_rf_if.read_buf0 [31])
);

FILL FILL_0__2091_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1989_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_1032_)
);

MUX2X1 _2930_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [7]),
    .B(\u_rf_if.read_buf0 [8]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_31_)
);

NOR2X1 _2510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [6]),
    .B(_721_),
    .Y(_1602_)
);

NOR2X1 _3715_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_1094_),
    .Y(_607_)
);

FILL FILL_1__3457_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2147_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1943_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2308_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3944_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1395_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(\u_rf_if.read_buf0 [0])
);

NAND2X1 _3524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_469_),
    .B(_781_),
    .Y(_477_)
);

NAND2X1 _3104_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_159_),
    .B(_158_),
    .Y(_160_)
);

FILL FILL_1__3686_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2376_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4062_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1458_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.last_req_key [6])
);

FILL FILL_1__2537_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3753_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_233_),
    .B(_1016_),
    .S(_615__bF$buf4),
    .Y(_1151_)
);

NAND2X1 _3333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf5),
    .B(_334_),
    .Y(_335_)
);

DFFPOSX1 _4118_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1488_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [21])
);

FILL FILL_0__2185_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_730_),
    .B(_1596_),
    .C(_1678_),
    .Y(_1457_)
);

OAI21X1 _3809_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_711_),
    .B(_651_),
    .C(rf_write_drain_busy),
    .Y(_652_)
);

FILL FILL_1__2766_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3982_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1217_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [23])
);

NOR2X1 _3562_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [14]),
    .B(_440__bF$buf4),
    .Y(_506_)
);

INVX1 _3142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_189_)
);

AND2X2 _2833_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1863_),
    .B(i_rst_n_bF$buf4),
    .Y(_1413_)
);

INVX1 _2413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [0]),
    .Y(_1142_)
);

MUX2X1 _3618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_547_),
    .B(_1066_),
    .S(_440__bF$buf5),
    .Y(_1218_)
);

FILL FILL_1__2995_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3791_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_241_),
    .Y(_637_)
);

INVX1 _3371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_367_)
);

DFFPOSX1 _4156_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1298_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

FILL FILL_0__3411_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1709_),
    .B(_1102_),
    .Y(_1711_)
);

NOR2X1 _2222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_825_),
    .Y(_1481_)
);

DFFPOSX1 _3847_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1347_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .Q(\u_rf_if.rreg0_latched [1])
);

INVX1 _3427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_403_)
);

NAND2X1 _3007_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [25]),
    .B(_12__bF$buf6),
    .Y(_89_)
);

NOR2X1 _3180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_217_),
    .B(_765_),
    .Y(_218_)
);

FILL FILL132150x61350 (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 _1913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1909_),
    .Y(o_rf_sck)
);

FILL FILL_0__2279_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3640_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3220_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x28950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3801_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2871_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [22]),
    .B(_1824__bF$buf0),
    .Y(_1892_)
);

INVX1 _2451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1545_)
);

OAI21X1 _2031_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf2),
    .B(_995_),
    .C(_996_),
    .Y(_994_)
);

OAI22X1 _3656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_569_),
    .B(_190__bF$buf3),
    .C(_568_),
    .D(_556__bF$buf0),
    .Y(_1202_)
);

OR2X2 _3236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_733__bF$buf2),
    .B(_258_),
    .Y(_259_)
);

FILL FILL_0__2911_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2088_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4194_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1324_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.state.ibus_cyc )
);

NAND2X1 _2927_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [5]),
    .B(_12__bF$buf4),
    .Y(_29_)
);

AND2X2 _2507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1599_),
    .B(i_rst_n_bF$buf10),
    .Y(_1475_)
);

FILL FILL_1__2669_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2680_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1727_),
    .Y(_1744_)
);

NOR2X1 _2260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .Y(_791_)
);

DFFPOSX1 _3885_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1136_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\gen_int_sys_clk.clk_div [0])
);

AND2X2 _3465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_426_),
    .B(_424_),
    .Y(_427_)
);

INVX1 _3045_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [2]),
    .Y(_116_)
);

FILL FILL_0__2720_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1951_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1068_),
    .B(_1098_),
    .C(_1107_),
    .Y(_1067_)
);

AND2X2 _2736_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1787_),
    .B(_1791_),
    .Y(_1792_)
);

INVX1 _2316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf1),
    .Y(_735_)
);

FILL FILL_1__2898_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3694_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_1121_),
    .Y(_587_)
);

NAND2X1 _3274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1121_),
    .B(_733__bF$buf2),
    .Y(_285_)
);

DFFPOSX1 _4059_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1252_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.bufreg.data [29])
);

FILL FILL_0__3314_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2965_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_57_),
    .B(i_rst_n_bF$buf4),
    .Y(_1381_)
);

NAND3X1 _2545_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [5]),
    .B(_1635_),
    .C(_1636_),
    .Y(_1637_)
);

NOR2X1 _2125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_912_),
    .B(_1040__bF$buf4),
    .Y(_911_)
);

INVX1 _3083_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[15]),
    .Y(_143_)
);

FILL FILL_0__3543_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3123_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1978_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3704_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2774_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1761_),
    .Y(_1819_)
);

NAND2X1 _2354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_698_),
    .Y(_697_)
);

DFFPOSX1 _3979_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1412_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [13])
);

AOI21X1 _3559_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf2),
    .B(_502_),
    .C(_503_),
    .Y(_1233_)
);

MUX2X1 _3139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_186_),
    .B(_864_),
    .S(ibus_pending_ack_bF$buf4),
    .Y(_187_)
);

DFFPOSX1 _4097_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1478_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.state [0])
);

FILL FILL_0__3772_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3352_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2583_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf3),
    .B(_800_),
    .Y(_1666_)
);

NOR2X1 _2163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_878_),
    .B(_1062__bF$buf1),
    .Y(_877_)
);

NAND2X1 _3788_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .B(_634_),
    .Y(_635_)
);

OAI21X1 _3368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(rreg1[0]),
    .C(_364_),
    .Y(_365_)
);

FILL FILL_0__2623_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2203_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3581_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_1114_),
    .C(\u_mem_serial.state [1]),
    .Y(_1708_)
);

MUX2X1 _2219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [28]),
    .B(\u_cpu.ctrl.o_ibus_adr [28]),
    .S(_1052__bF$buf1),
    .Y(_827_)
);

NAND3X1 _2392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_679_),
    .B(_667_),
    .C(_660_),
    .Y(_659_)
);

OAI21X1 _3597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [6]),
    .C(_531_),
    .Y(_532_)
);

AND2X2 _3177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_214_),
    .B(\u_cpu.bne_or_bge ),
    .Y(_215_)
);

FILL FILL_0__2852_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2432_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3217_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2868_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf0),
    .B(_1888_),
    .C(_1889_),
    .Y(_1890_)
);

NAND3X1 _2448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_1118_),
    .C(_1541_),
    .Y(_1542_)
);

NOR2X1 _2028_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_998_),
    .B(_1062__bF$buf2),
    .Y(_997_)
);

FILL FILL_0__2661_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3446_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3026_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3607_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2677_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_711_),
    .B(_698_),
    .Y(_1741_)
);

NOR2X1 _2257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_1118_),
    .Y(_794_)
);

FILL FILL_0__1932_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _1948_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1083_),
    .B(\u_mem_serial.bit_count [4]),
    .Y(_1070_)
);

FILL FILL_0__3675_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3255_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2211_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .Y(_1580_)
);

MUX2X1 _2066_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [11]),
    .B(\u_cpu.ctrl.o_ibus_adr [11]),
    .S(_1052__bF$buf4),
    .Y(_963_)
);

FILL FILL_0__2526_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2106_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3484_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3064_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3903_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1197_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

FILL FILL_1__2440_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_757_),
    .B(_762_),
    .Y(_756_)
);

FILL FILL_0__2755_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2335_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4021_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1234_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg2.dlo [16])
);

FILL FILL132750x79350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2916_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1986_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf4),
    .B(_1035_),
    .C(_1036_),
    .Y(_1034_)
);

FILL FILL_0__3293_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3712_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_600_),
    .B(_1064_),
    .C(_603_),
    .Y(_604_)
);

FILL FILL_0__2984_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2564_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3349_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3941_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1206_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

OAI21X1 _3521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_761_),
    .B(\u_mem_serial.shift_reg [25]),
    .C(_444_),
    .Y(_475_)
);

AOI21X1 _3101_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_157_),
    .B(_154_),
    .C(_1126__bF$buf1),
    .Y(_1345_)
);

FILL FILL_0__2793_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3578_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3158_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3739_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_663_),
    .Y(_662_)
);

MUX2X1 _3750_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_354_),
    .B(_992_),
    .S(_615__bF$buf3),
    .Y(_1154_)
);

NOR2X1 _3330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_331_),
    .B(_1693__bF$buf3),
    .Y(_332_)
);

FILL FILL_0__2429_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2009_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4115_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1281_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

OAI21X1 _2601_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [6]),
    .B(_1596_),
    .C(i_rst_n_bF$buf3),
    .Y(_1677_)
);

FILL FILL_0__3387_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3806_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .Y(_1114_)
);

NAND2X1 _2198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg.i_shamt [2]),
    .Y(_846_)
);

FILL FILL_0__2658_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2238_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2819_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2830_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [13]),
    .B(\u_rf_if.read_buf1 [14]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1861_)
);

NAND2X1 _2410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1132_),
    .B(_1133_),
    .Y(_1139_)
);

FILL FILL_0__3196_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [0]),
    .Y(_545_)
);

FILL FILL_1__2572_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2887_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2467_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2047_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4153_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1297_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

DFFSR _3844_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1127_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(ibus_pending_rdt[31])
);

MUX2X1 _3424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_401_),
    .B(_400_),
    .S(_661__bF$buf3),
    .Y(_1266_)
);

OAI21X1 _3004_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf6),
    .B(_85_),
    .C(_86_),
    .Y(_87_)
);

FILL FILL_0__2696_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132150x82950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1967_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3653_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_568_)
);

INVX1 _3233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[14]),
    .Y(_256_)
);

DFFPOSX1 _4018_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1233_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_cpu.bufreg2.dlo [15])
);

DFFPOSX1 _4191_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1321_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

OAI21X1 _2924_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf4),
    .B(_25_),
    .C(_26_),
    .Y(_27_)
);

INVX2 _2504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1596_),
    .Y(_1597_)
);

NAND2X1 _3709_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_666_),
    .Y(_601_)
);

FILL FILL131850x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3882_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1365_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(raddr[0])
);

NAND3X1 _3462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.c_r ),
    .B(_419_),
    .C(_1130_),
    .Y(_424_)
);

MUX2X1 _3042_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(\u_rf_if.rreg0_latched [1]),
    .S(\u_rf_if.issue_sel ),
    .Y(_114_)
);

NAND2X1 _2733_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1789_),
    .B(_1774_),
    .Y(_1790_)
);

NOR2X1 _2313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_739_),
    .B(_752_),
    .Y(_738_)
);

FILL FILL_0__3099_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3938_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1392_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.read_buf0 [3])
);

NOR2X1 _3518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_471_),
    .Y(_472_)
);

AOI21X1 _3691_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1551_),
    .B(_585_),
    .C(_752_),
    .Y(_1183_)
);

INVX1 _3271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_283_)
);

DFFPOSX1 _4056_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1455_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_serial.last_req_key [9])
);

MUX2X1 _2962_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(\u_rf_if.read_buf0 [16]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_55_)
);

OAI21X1 _2542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [8]),
    .B(_717_),
    .C(_1633_),
    .Y(_1634_)
);

MUX2X1 _2122_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_914_),
    .B(\u_mem_serial.shift_reg [17]),
    .S(_1067__bF$buf3),
    .Y(_913_)
);

MUX2X1 _3747_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_334_),
    .B(_968_),
    .S(_615__bF$buf2),
    .Y(_1157_)
);

INVX1 _3327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_740_),
    .Y(_329_)
);

OAI21X1 _3080_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1580_),
    .B(_1731_),
    .C(_1744_),
    .Y(_141_)
);

FILL FILL_0__2599_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2179_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3120_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2771_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1751_),
    .B(_1752_),
    .C(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_1817_)
);

NOR2X1 _2351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_700_)
);

DFFSR _3976_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf8),
    .S(vdd),
    .D(_1158_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(ibus_pending_rdt[11])
);

NAND2X1 _3556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_928_),
    .Y(_501_)
);

AND2X2 _3136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_184_),
    .B(i_rst_n_bF$buf7),
    .Y(_1337_)
);

FILL FILL_1__2093_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4094_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1268_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_cpu.bufreg.data [16])
);

NAND2X1 _2827_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [11]),
    .B(_1824__bF$buf6),
    .Y(_1859_)
);

NOR2X1 _2407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_620_),
    .B(_619_),
    .Y(_1130_)
);

FILL FILL_1__3510_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1664_),
    .B(_1600_),
    .Y(_1467_)
);

INVX1 _2160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_880_)
);

INVX1 _3785_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_div [3]),
    .Y(_632_)
);

INVX1 _3365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[4]),
    .Y(_362_)
);

FILL FILL_0__2200_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3405_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1705_),
    .Y(_1706_)
);

NAND2X1 _2216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.dhi [4]),
    .Y(_830_)
);

NOR2X1 _3594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [6]),
    .B(_440__bF$buf3),
    .Y(_530_)
);

NAND2X1 _3174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_210_),
    .B(_208_),
    .Y(_212_)
);

FILL FILL_0__3634_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2865_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1887_),
    .B(i_rst_n_bF$buf9),
    .Y(_1405_)
);

OAI21X1 _2445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1534_),
    .B(_1538_),
    .C(_1531_),
    .Y(_1539_)
);

INVX1 _2025_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_1000_)
);

FILL FILL_0__2905_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4188_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1318_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.decode.opcode [0])
);

NAND2X1 _2674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1735_),
    .B(_1736_),
    .Y(_1739_)
);

NAND2X1 _2254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_798_),
    .B(_799_),
    .Y(_797_)
);

FILL FILL132450x90150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3879_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1191_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

OAI21X1 _3459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_691_),
    .C(_420_),
    .Y(_421_)
);

MUX2X1 _3039_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(\u_rf_if.rreg0_latched [0]),
    .S(\u_rf_if.issue_sel ),
    .Y(_112_)
);

FILL FILL132450x57750 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1945_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1087_),
    .B(_1086_),
    .C(_1085_),
    .Y(_1073_)
);

FILL FILL_0__3252_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3413_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf0),
    .B(_750_),
    .Y(_1577_)
);

NAND2X1 _2063_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [11]),
    .Y(_966_)
);

OAI22X1 _3688_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_582_),
    .B(_190__bF$buf4),
    .C(_584_),
    .D(_556__bF$buf2),
    .Y(_1185_)
);

INVX1 _3268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_281_)
);

FILL FILL_0__2103_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3728_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3308_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3481_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3061_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2959_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(_12__bF$buf3),
    .Y(_53_)
);

NOR2X1 _2539_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1630_),
    .B(_1629_),
    .Y(_1631_)
);

OAI21X1 _2119_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_917_),
    .B(_919_),
    .C(_1058__bF$buf1),
    .Y(_916_)
);

DFFPOSX1 _3900_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1374_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .Q(\u_rf_if.read_buf0 [21])
);

FILL FILL_1__3642_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_1118_),
    .Y(_759_)
);

OAI21X1 _3497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_453_),
    .C(_449_),
    .Y(_454_)
);

AOI21X1 _3077_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1730_),
    .B(\u_rf_if.o_waddr [1]),
    .C(_1727_),
    .Y(_139_)
);

FILL FILL_0__2332_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3537_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _1983_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1038_),
    .B(_1062__bF$buf4),
    .Y(_1037_)
);

FILL FILL_0__3290_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2768_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .B(\u_rf_if.stream_active_bF$buf1 ),
    .C(i_rst_n_bF$buf5),
    .Y(_1815_)
);

NAND3X1 _2348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_705_),
    .B(_706_),
    .C(_704_),
    .Y(_703_)
);

FILL FILL_0__2808_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2561_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2141_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3766_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2722_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2997_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_81_),
    .B(i_rst_n_bF$buf4),
    .Y(_1373_)
);

OAI21X1 _2577_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1594_),
    .B(_1645_),
    .C(_1662_),
    .Y(_1663_)
);

OAI21X1 _2157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf2),
    .B(_883_),
    .C(_884_),
    .Y(_882_)
);

FILL FILL_0__2790_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2370_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2951_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1119_),
    .B(\u_cpu.decode.opcode [2]),
    .C(_753_),
    .Y(_665_)
);

FILL FILL_0__2006_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4112_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1277_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_cpu.bufreg.data [25])
);

NOR2X1 _3803_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .Y(_1111_)
);

FILL FILL_1__3545_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_849_),
    .Y(_1484_)
);

FILL FILL_0__2235_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3193_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1041_),
    .Y(_543_)
);

FILL FILL_1__3774_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2464_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2044_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4150_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1504_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [5])
);

FILL FILL_0__3669_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2625_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3841_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1344_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.issue_sel )
);

INVX1 _3421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [15]),
    .Y(_400_)
);

AND2X2 _3001_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_84_),
    .B(i_rst_n_bF$buf0),
    .Y(_1372_)
);

FILL FILL_0__2693_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2273_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2854_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_766_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_763_),
    .Y(_762_)
);

OAI22X1 _3650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_566_),
    .B(_190__bF$buf3),
    .C(_565_),
    .D(_556__bF$buf4),
    .Y(_1205_)
);

NAND2X1 _3230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf5),
    .B(_253_),
    .Y(_254_)
);

FILL FILL_0__2749_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4015_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1431_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(\u_rf_if.rcnt [0])
);

FILL FILL_0__2082_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2921_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_24_),
    .B(i_rst_n_bF$buf8),
    .Y(_1392_)
);

NAND2X1 _2501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1592_),
    .B(_1593_),
    .Y(_1594_)
);

NAND2X1 _3706_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_596_),
    .B(_597_),
    .Y(_598_)
);

NOR2X1 _2098_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_936_),
    .B(_1040__bF$buf3),
    .Y(_935_)
);

FILL FILL_0__2978_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1934_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2730_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1784_),
    .B(_1785_),
    .C(_1786_),
    .Y(_1787_)
);

NOR2X1 _2310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_742_),
    .Y(_741_)
);

FILL FILL_0__3096_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _3935_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(vdd),
    .S(i_rst_n_bF$buf2),
    .D(_1148_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .Q(ibus_pending_rdt[1])
);

INVX1 _3515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_469_)
);

DFFPOSX1 _4053_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1248_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.bufreg.data [31])
);

FILL FILL_1__2528_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3744_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_223_),
    .B(_944_),
    .S(_615__bF$buf0),
    .Y(_1160_)
);

AOI22X1 _3324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_326_),
    .B(_323_),
    .C(_180_),
    .D(_327_),
    .Y(_1292_)
);

DFFPOSX1 _4109_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1484_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [25])
);

FILL FILL_1__3066_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2596_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2176_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2757_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3973_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1409_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .Q(\u_rf_if.read_buf1 [16])
);

OAI21X1 _3553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.dlo [17]),
    .C(_498_),
    .Y(_499_)
);

MUX2X1 _3133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_181_),
    .B(_872_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_182_)
);

FILL FILL_1__3295_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4091_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1472_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_serial.tx_state [4])
);

OAI21X1 _2824_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf6),
    .B(_1855_),
    .C(_1856_),
    .Y(_1857_)
);

NAND3X1 _2404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_659_),
    .B(_655_),
    .C(_622_),
    .Y(_621_)
);

OAI21X1 _3609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [3]),
    .C(_540_),
    .Y(_541_)
);

FILL FILL_1__2986_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3782_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_div [1]),
    .B(\gen_int_sys_clk.clk_div [0]),
    .Y(_631_)
);

NAND2X1 _3362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_359_),
    .Y(_360_)
);

DFFPOSX1 _4147_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1294_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .Q(rreg1[3])
);

FILL FILL_0__3402_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1701_),
    .B(_1702_),
    .Y(_1703_)
);

NOR2X1 _2213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_833_),
    .Y(_1482_)
);

DFFSR _3838_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1175_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(ibus_pending_rdt[28])
);

MUX2X1 _3418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_398_),
    .B(_397_),
    .S(_661__bF$buf3),
    .Y(_1269_)
);

AOI21X1 _3591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf3),
    .B(_526_),
    .C(_527_),
    .Y(_1225_)
);

OAI21X1 _3171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(_209_)
);

FILL FILL_0__3631_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3211_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL131850x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2862_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [21]),
    .B(\u_rf_if.read_buf1 [22]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1885_)
);

NAND3X1 _2442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [0]),
    .B(_666_),
    .C(_1535_),
    .Y(_1536_)
);

OAI21X1 _2022_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf2),
    .B(_1003_),
    .C(_1004_),
    .Y(_1002_)
);

INVX1 _3647_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_565_)
);

OAI21X1 _3227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .B(_247_),
    .C(i_rst_n_bF$buf2),
    .Y(_252_)
);

FILL FILL_0__2079_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4185_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1315_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(_1907_)
);

FILL FILL_0__3440_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3020_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2918_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [4]),
    .B(\u_rf_if.read_buf0 [5]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_22_)
);

INVX1 _2671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [1]),
    .Y(_1736_)
);

OAI21X1 _2251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_806_),
    .B(_803_),
    .C(_801_),
    .Y(_800_)
);

DFFPOSX1 _3876_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1362_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .Q(raddr[3])
);

NOR2X1 _3456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_413_),
    .B(_786_),
    .Y(_418_)
);

AOI21X1 _3036_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_110_),
    .B(_109_),
    .C(_1126__bF$buf6),
    .Y(_1363_)
);

FILL FILL_0__2711_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3198_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1942_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1079_),
    .B(_1078_),
    .C(_1076_),
    .Y(_1075_)
);

INVX1 _2727_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[8]),
    .Y(_1784_)
);

INVX2 _2307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .Y(_744_)
);

FILL FILL_1__2889_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2049_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf1),
    .B(_748_),
    .Y(_1574_)
);

NOR2X1 _2060_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_969_),
    .Y(_1499_)
);

OAI22X1 _3685_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_583_),
    .B(_190__bF$buf4),
    .C(_189_),
    .D(_556__bF$buf2),
    .Y(_1187_)
);

INVX1 _3265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_279_)
);

FILL FILL_0__2940_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2520_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3305_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2956_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf0),
    .B(_49_),
    .C(_50_),
    .Y(_51_)
);

NAND2X1 _2536_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [1]),
    .B(_1566_),
    .Y(_1628_)
);

NOR2X1 _2116_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_920_),
    .B(_1040__bF$buf4),
    .Y(_919_)
);

NOR2X1 _3494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_771_),
    .B(_770_),
    .Y(_451_)
);

AOI21X1 _3074_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_756_),
    .B(_137_),
    .C(_1126__bF$buf0),
    .Y(_1352_)
);

FILL FILL_0__3534_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3114_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1969_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX8 _1980_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1062__bF$buf2),
    .Y(_1040_)
);

NAND2X1 _2765_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .B(_1737_),
    .Y(_1813_)
);

NOR2X1 _2345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_788_),
    .Y(_706_)
);

DFFPOSX1 _4088_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1266_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_cpu.bufreg.data [14])
);

FILL FILL_0__3763_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3343_ (
    .gnd(gnd),
    .vdd(vdd)
);

CLKBUF1 CLKBUF1_insert190 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 )
);

CLKBUF1 CLKBUF1_insert191 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 )
);

FILL FILL131850x100950 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2994_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [23]),
    .B(\u_rf_if.read_buf0 [24]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_79_)
);

NAND3X1 _2574_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf3),
    .B(_1660_),
    .C(_1658_),
    .Y(_1661_)
);

NOR2X1 _2154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_886_),
    .B(_1062__bF$buf0),
    .Y(_885_)
);

INVX1 _3779_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_628_),
    .Y(_629_)
);

AOI22X1 _3359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_356_),
    .B(_357_),
    .C(_332_),
    .D(_750_),
    .Y(_1287_)
);

FILL FILL_0__2614_ (
    .gnd(gnd),
    .vdd(vdd)
);

CLKBUF1 CLKBUF1_insert62 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

CLKBUF1 CLKBUF1_insert63 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert64 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert65 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert66 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert67 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert68 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

CLKBUF1 CLKBUF1_insert69 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

FILL FILL_0__3572_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3152_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_672_),
    .B(_669_),
    .C(_693_),
    .Y(_668_)
);

NAND2X1 _3588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_992_),
    .Y(_525_)
);

OAI21X1 _3168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_1524_),
    .C(_205_),
    .Y(_206_)
);

FILL FILL_0__2843_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2423_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3208_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3381_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2859_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [19]),
    .B(_1824__bF$buf3),
    .Y(_1883_)
);

NAND3X1 _2439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_666_),
    .Y(_1533_)
);

NOR2X1 _2019_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1006_),
    .B(_1062__bF$buf1),
    .Y(_1005_)
);

INVX1 _3800_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_645_),
    .Y(_646_)
);

FILL FILL132450x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [25]),
    .B(\u_cpu.ctrl.o_ibus_adr [25]),
    .S(_1052__bF$buf1),
    .Y(_851_)
);

INVX1 _3397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [27]),
    .Y(_388_)
);

FILL FILL_0__2652_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3437_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3017_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1583_),
    .B(_1733_),
    .Y(_1734_)
);

NOR2X1 _2248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [2]),
    .B(_804_),
    .Y(_803_)
);

FILL FILL_0__1923_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2881_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1939_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1081_),
    .Y(_1078_)
);

FILL FILL_0__3666_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3246_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2897_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_6_),
    .B(_5_),
    .C(_1126__bF$buf6),
    .Y(_1398_)
);

OAI21X1 _2477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_719_),
    .B(_1570_),
    .C(_796_),
    .Y(_1571_)
);

MUX2X1 _2057_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [10]),
    .B(\u_cpu.ctrl.o_ibus_adr [10]),
    .S(_1052__bF$buf4),
    .Y(_971_)
);

FILL FILL_0__2517_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3475_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3055_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_783_),
    .B(_786_),
    .Y(_765_)
);

FILL FILL_0__2746_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2326_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4012_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1232_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .Q(\u_cpu.bufreg2.dlo [14])
);

FILL FILL_1__2907_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1977_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1043_),
    .B(\u_mem_serial.shift_reg [1]),
    .S(_1067__bF$buf2),
    .Y(_1042_)
);

FILL FILL_0__3284_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3703_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_594_),
    .Y(_595_)
);

MUX2X1 _2095_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_938_),
    .B(\u_mem_serial.shift_reg [14]),
    .S(_1067__bF$buf3),
    .Y(_937_)
);

FILL FILL_0__2975_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2555_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2135_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3932_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1389_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(\u_rf_if.read_buf0 [6])
);

OAI21X1 _3512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_761_),
    .B(\u_mem_serial.shift_reg [26]),
    .C(_444_),
    .Y(_467_)
);

FILL FILL_0__2784_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2364_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4050_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1452_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .Q(\u_rf_if.issue_idx [5])
);

FILL FILL_0__3569_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3149_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3741_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_147_),
    .B(_920_),
    .S(_615__bF$buf3),
    .Y(_1163_)
);

AOI22X1 _3321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_324_),
    .B(_323_),
    .C(_183_),
    .D(_325_),
    .Y(_1293_)
);

DFFPOSX1 _4106_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1274_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .Q(\u_cpu.bufreg.data [22])
);

FILL FILL_0__3798_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3378_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_854_)
);

DFFPOSX1 _3970_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1213_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

NOR2X1 _3550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [17]),
    .B(_440__bF$buf3),
    .Y(_497_)
);

NAND2X1 _3130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_1693__bF$buf4),
    .Y(_180_)
);

FILL FILL_0__2649_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2229_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2821_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1854_),
    .B(i_rst_n_bF$buf9),
    .Y(_1416_)
);

NAND2X1 _2401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_649_),
    .B(_625_),
    .Y(_624_)
);

FILL FILL_0__3187_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_440__bF$buf4),
    .Y(_539_)
);

FILL FILL132750x18150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2878_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2458_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2038_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4144_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1501_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_reg [8])
);

NOR2X1 _2630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1698_),
    .B(_1699_),
    .Y(_1700_)
);

MUX2X1 _2210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [27]),
    .B(\u_cpu.ctrl.o_ibus_adr [27]),
    .S(_1052__bF$buf2),
    .Y(_835_)
);

DFFPOSX1 _3835_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1341_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.issue_chunk [2])
);

INVX1 _3415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [18]),
    .Y(_397_)
);

FILL FILL_0__2687_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2267_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__1958_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3644_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_563_),
    .B(_190__bF$buf2),
    .C(_562_),
    .D(_556__bF$buf4),
    .Y(_1208_)
);

NAND2X1 _3224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1101_),
    .B(_248_),
    .Y(_249_)
);

FILL FILL_1__2181_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4009_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1427_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(\u_rf_if.stream_cnt [2])
);

FILL FILL_0__2496_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4182_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1161_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .Q(ibus_pending_rdt[14])
);

NAND2X1 _2915_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [2]),
    .B(_12__bF$buf4),
    .Y(_20_)
);

NAND2X1 _3873_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .B(_1121_),
    .Y(_1120_)
);

MUX2X1 _3453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_387_),
    .B(_416_),
    .S(_661__bF$buf1),
    .Y(_1252_)
);

AOI21X1 _3033_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1698_),
    .B(_1704__bF$buf0),
    .C(_108_),
    .Y(_1364_)
);

NOR2X1 _2724_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .B(\u_rf_if.rreg1_latched [4]),
    .Y(_1781_)
);

INVX1 _2304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .Y(_747_)
);

DFFPOSX1 _3929_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1388_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .Q(\u_rf_if.read_buf0 [7])
);

OAI21X1 _3509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_457_),
    .B(_463_),
    .C(_781_),
    .Y(_464_)
);

FILL FILL_0__1996_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3682_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_582_)
);

INVX1 _3262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_277_)
);

DFFPOSX1 _4047_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1245_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_cpu.bufreg2.dhi [4])
);

FILL FILL_0__3722_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2953_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_48_),
    .B(i_rst_n_bF$buf5),
    .Y(_1384_)
);

INVX1 _2533_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [9]),
    .Y(_1625_)
);

MUX2X1 _2113_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_922_),
    .B(\u_mem_serial.shift_reg [16]),
    .S(_1067__bF$buf3),
    .Y(_921_)
);

MUX2X1 _3738_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1724_),
    .B(_896_),
    .S(_615__bF$buf3),
    .Y(_1166_)
);

AOI22X1 _3318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_319_),
    .B(_323_),
    .C(_188_),
    .D(_322_),
    .Y(_1294_)
);

OAI22X1 _3491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_777_),
    .B(_444_),
    .C(_447_),
    .D(_448_),
    .Y(_1246_)
);

AOI21X1 _3071_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_135_),
    .B(_756_),
    .C(_1126__bF$buf7),
    .Y(_1353_)
);

NAND2X1 _2762_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1735_),
    .B(_1810_),
    .Y(_1811_)
);

OAI21X1 _2342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_711_),
    .B(_710_),
    .C(_715_),
    .Y(_709_)
);

DFFPOSX1 _3967_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1406_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .Q(\u_rf_if.read_buf1 [19])
);

AOI21X1 _3547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf4),
    .B(_493_),
    .C(_494_),
    .Y(_1236_)
);

NAND2X1 _3127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_733__bF$buf1),
    .Y(_177_)
);

FILL FILL_1__2084_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2399_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4085_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1469_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.shift_rx [0])
);

FILL FILL132150x21750 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2818_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [10]),
    .B(\u_rf_if.read_buf1 [11]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1852_)
);

CLKBUF1 CLKBUF1_insert160 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf11 )
);

CLKBUF1 CLKBUF1_insert161 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf10 )
);

CLKBUF1 CLKBUF1_insert162 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf9 )
);

CLKBUF1 CLKBUF1_insert163 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf8 )
);

CLKBUF1 CLKBUF1_insert164 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf7 )
);

CLKBUF1 CLKBUF1_insert165 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf6 )
);

CLKBUF1 CLKBUF1_insert166 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf5 )
);

CLKBUF1 CLKBUF1_insert167 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf4 )
);

CLKBUF1 CLKBUF1_insert168 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf3 )
);

CLKBUF1 CLKBUF1_insert169 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf2 )
);

FILL FILL_1__3501_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2991_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [21]),
    .B(_12__bF$buf2),
    .Y(_77_)
);

NAND2X1 _2571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1649_),
    .B(_1657_),
    .Y(_1658_)
);

INVX1 _2151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_888_)
);

INVX1 _3776_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1111_),
    .Y(_1110_)
);

MUX2X1 _3356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_354_),
    .B(_992_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_355_)
);

FILL FILL_0__3816_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2627_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .Y(_1697_)
);

NAND2X1 _2207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.dhi [3]),
    .Y(_838_)
);

FILL FILL_1__3730_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_671_)
);

OAI21X1 _3585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [9]),
    .C(_522_),
    .Y(_523_)
);

AND2X2 _3165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf10),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_1327_)
);

FILL FILL_0__2420_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2000_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3625_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2856_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf1),
    .B(_1879_),
    .C(_1880_),
    .Y(_1881_)
);

AOI21X1 _2436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_785_),
    .B(\u_cpu.bne_or_bge ),
    .C(_1529_),
    .Y(_1530_)
);

INVX1 _2016_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_1008_)
);

INVX1 _3394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [28]),
    .Y(_386_)
);

DFFPOSX1 _4179_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1312_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .Q(\u_cpu.branch_op )
);

FILL FILL132150x118950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132450x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2810_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_1730_),
    .Y(_1731_)
);

INVX1 _2245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [3]),
    .Y(_806_)
);

FILL FILL_0__2705_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _1936_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1083_),
    .B(_1098_),
    .C(\u_mem_serial.bit_count [4]),
    .Y(_1080_)
);

OAI21X1 _2894_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_2_),
    .C(_3_),
    .Y(_4_)
);

INVX1 _2474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_1568_)
);

NAND2X1 _2054_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [10]),
    .Y(_974_)
);

INVX1 _3679_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_581_)
);

INVX1 _3259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm ),
    .Y(_275_)
);

DFFPOSX1 _4200_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1328_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

FILL FILL_0__3719_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3052_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_772_),
    .B(_769_),
    .Y(_768_)
);

OAI21X1 _3488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_778_),
    .B(_445_),
    .C(_626_),
    .Y(_446_)
);

INVX1 _3068_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [3]),
    .Y(_133_)
);

FILL FILL_0__2323_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3528_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3108_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _1974_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [0]),
    .B(_1046_),
    .S(_1062__bF$buf4),
    .Y(_1045_)
);

FILL FILL_0__3281_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2759_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf6),
    .B(_1690_),
    .C(_1809_),
    .Y(_1433_)
);

NOR2X1 _2339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_714_),
    .B(_713_),
    .Y(_712_)
);

NAND2X1 _3700_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [6]),
    .B(\u_mem_serial.bit_count [2]),
    .Y(_592_)
);

FILL FILL_1__3022_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x150 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2092_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_941_),
    .B(_943_),
    .C(_1058__bF$buf1),
    .Y(_940_)
);

NOR2X1 _3297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_288_),
    .Y(_306_)
);

FILL FILL_0__2552_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2132_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3757_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3337_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2713_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3090_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2988_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf1),
    .B(_73_),
    .C(_74_),
    .Y(_75_)
);

OAI21X1 _2568_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1655_),
    .B(_1654_),
    .C(_1910_),
    .Y(_1656_)
);

OAI21X1 _2148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf1),
    .B(_891_),
    .C(_892_),
    .Y(_890_)
);

FILL FILL_0__2608_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2781_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2361_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2942_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2797_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1836_),
    .B(i_rst_n_bF$buf7),
    .Y(_1422_)
);

OR2X2 _2377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_687_),
    .B(_780_),
    .Y(_674_)
);

FILL FILL_0__2837_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4103_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1481_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [28])
);

FILL FILL_0__2590_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2170_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf2),
    .B(_857_),
    .Y(_1485_)
);

FILL FILL_0__3184_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf1),
    .B(_535_),
    .C(_536_),
    .Y(_1222_)
);

FILL FILL_0__2035_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4141_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1291_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .Q(rreg1[0])
);

FILL FILL132750x72150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2616_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x39750 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _3832_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf6),
    .S(vdd),
    .D(_1172_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .Q(ibus_pending_rdt[25])
);

MUX2X1 _3412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_395_),
    .B(_394_),
    .S(_661__bF$buf2),
    .Y(_1272_)
);

FILL FILL_1__3154_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2264_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3469_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2845_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_562_)
);

AOI22X1 _3221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_246_),
    .B(_1107_),
    .C(_1104_),
    .D(_1052__bF$buf2),
    .Y(_1314_)
);

DFFPOSX1 _4006_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1229_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [11])
);

FILL FILL_1__3383_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2493_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2073_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2912_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf5),
    .B(_16_),
    .C(_17_),
    .Y(_18_)
);

FILL FILL_0__3698_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2089_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_944_),
    .B(_1040__bF$buf4),
    .Y(_943_)
);

DFFPOSX1 _3870_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1359_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(raddr[6])
);

MUX2X1 _3450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_661__bF$buf0),
    .B(_414_),
    .S(_753_),
    .Y(_415_)
);

NAND2X1 _3030_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [0]),
    .B(_1704__bF$buf1),
    .Y(_107_)
);

FILL FILL_0__2969_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1925_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2721_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1776_),
    .B(_1777_),
    .Y(_1778_)
);

INVX1 _2301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_750_)
);

NOR2X1 _3926_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf0),
    .B(_1125_),
    .Y(_1124_)
);

MUX2X1 _3506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_775_),
    .B(_461_),
    .S(_441_),
    .Y(_1244_)
);

FILL FILL_0__1993_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4044_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1449_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_rf_if.rreg0_latched [4])
);

MUX2X1 _2950_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [12]),
    .B(\u_rf_if.read_buf0 [13]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_46_)
);

OAI21X1 _2530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_714_),
    .B(_713_),
    .C(\u_rf_serial.last_req_key [10]),
    .Y(_1622_)
);

OAI21X1 _2110_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_925_),
    .B(_927_),
    .C(_1058__bF$buf2),
    .Y(_924_)
);

MUX2X1 _3735_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_181_),
    .B(_872_),
    .S(_615__bF$buf1),
    .Y(_1169_)
);

NAND2X1 _3315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_320_),
    .B(_754_),
    .Y(_321_)
);

FILL FILL_1__3057_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2167_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _3964_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1155_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .Q(ibus_pending_rdt[8])
);

NAND2X1 _3544_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_904_),
    .Y(_492_)
);

MUX2X1 _3124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_174_),
    .B(_888_),
    .S(ibus_pending_ack_bF$buf6),
    .Y(_175_)
);

FILL FILL_1__3286_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2396_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4082_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1263_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .Q(\u_cpu.bufreg.data [11])
);

NAND2X1 _2815_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [8]),
    .B(_1824__bF$buf6),
    .Y(_1850_)
);

CLKBUF1 CLKBUF1_insert130 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf41 )
);

CLKBUF1 CLKBUF1_insert131 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf40 )
);

CLKBUF1 CLKBUF1_insert132 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf39 )
);

CLKBUF1 CLKBUF1_insert133 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf38 )
);

CLKBUF1 CLKBUF1_insert134 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf37 )
);

CLKBUF1 CLKBUF1_insert135 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf36 )
);

CLKBUF1 CLKBUF1_insert136 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf35 )
);

CLKBUF1 CLKBUF1_insert137 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf34 )
);

CLKBUF1 CLKBUF1_insert138 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf33 )
);

CLKBUF1 CLKBUF1_insert139 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf32 )
);

FILL FILL_1__2137_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3773_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1124_),
    .B(_1115_),
    .C(_1108_),
    .Y(_1107_)
);

NAND3X1 _3353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_351_),
    .B(_352_),
    .C(_347_),
    .Y(_353_)
);

DFFPOSX1 _4138_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1498_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_reg [11])
);

MUX2X1 _2624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1694_),
    .B(_856_),
    .S(ibus_pending_ack_bF$buf3),
    .Y(_1695_)
);

NOR2X1 _2204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf4),
    .B(_841_),
    .Y(_1483_)
);

DFFPOSX1 _3829_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1338_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .Q(\u_rf_if.rreg1_latched [1])
);

INVX1 _3409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [21]),
    .Y(_394_)
);

FILL FILL_1__2366_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [9]),
    .B(_440__bF$buf2),
    .Y(_521_)
);

AND2X2 _3162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_201_),
    .B(_202_),
    .Y(_1329_)
);

FILL FILL_0__3622_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3202_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert190 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert191 (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2853_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1878_),
    .B(i_rst_n_bF$buf9),
    .Y(_1408_)
);

AOI22X1 _2433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1524_),
    .B(_1526_),
    .C(_624_),
    .D(\u_cpu.bufreg.data [0]),
    .Y(_1527_)
);

OAI21X1 _2013_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf3),
    .B(_1011_),
    .C(_1012_),
    .Y(_1010_)
);

FILL FILL_0_BUFX2_insert1 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert3 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert5 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert6 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert8 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_560_),
    .B(_190__bF$buf2),
    .C(_559_),
    .D(_556__bF$buf1),
    .Y(_1211_)
);

OAI21X1 _3218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1712_),
    .C(_1907_),
    .Y(_245_)
);

MUX2X1 _3391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_383_),
    .S(_733__bF$buf4),
    .Y(_384_)
);

BUFX2 BUFX2_insert180 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_615_),
    .Y(_615__bF$buf0)
);

BUFX2 BUFX2_insert181 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_556_),
    .Y(_556__bF$buf4)
);

BUFX2 BUFX2_insert182 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_556_),
    .Y(_556__bF$buf3)
);

BUFX2 BUFX2_insert183 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_556_),
    .Y(_556__bF$buf2)
);

BUFX2 BUFX2_insert184 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_556_),
    .Y(_556__bF$buf1)
);

BUFX2 BUFX2_insert185 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_556_),
    .Y(_556__bF$buf0)
);

DFFPOSX1 _4176_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1309_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(mem_dbus_ack)
);

FILL FILL_0__3431_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3011_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2909_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_15_),
    .B(i_rst_n_bF$buf8),
    .Y(_1395_)
);

FILL FILL131550x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_732_),
    .Y(_1728_)
);

AOI21X1 _2242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1107_),
    .B(_808_),
    .C(_1126__bF$buf5),
    .Y(_1478_)
);

DFFPOSX1 _3867_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1188_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

INVX1 _3447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [2]),
    .Y(_413_)
);

OAI21X1 _3027_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf5),
    .B(_103_),
    .C(_104_),
    .Y(_105_)
);

FILL FILL_0__2702_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3189_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _1933_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1086_),
    .B(_1085_),
    .C(_1084_),
    .Y(_1083_)
);

FILL FILL_0__2299_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3660_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3240_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2718_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_1702_),
    .Y(_1775_)
);

AOI21X1 _2891_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1_),
    .B(_1911_),
    .C(_1126__bF$buf6),
    .Y(_1399_)
);

OR2X2 _2471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_795_),
    .B(raddr[1]),
    .Y(_1565_)
);

NOR2X1 _2051_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_977_),
    .Y(_1500_)
);

OAI22X1 _3676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_579_),
    .B(_190__bF$buf1),
    .C(_578_),
    .D(_556__bF$buf1),
    .Y(_1192_)
);

INVX1 _3256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[1]),
    .Y(_273_)
);

FILL FILL_0__2931_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2511_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert80 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert81 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert83 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert85 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert87 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert89 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2947_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [10]),
    .B(_12__bF$buf0),
    .Y(_44_)
);

INVX1 _2527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [3]),
    .Y(_1619_)
);

NOR2X1 _2107_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_928_),
    .B(_1040__bF$buf2),
    .Y(_927_)
);

FILL FILL_1__2269_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_771_)
);

MUX2X1 _3485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_648_),
    .B(_443_),
    .S(_441_),
    .Y(_1247_)
);

NOR2X1 _3065_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_129_),
    .B(_130_),
    .Y(_131_)
);

FILL FILL_0__2740_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3525_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3105_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _1971_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .Y(_1048_)
);

OAI21X1 _2756_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[8]),
    .B(_1704__bF$buf3),
    .C(i_rst_n_bF$buf7),
    .Y(_1808_)
);

OAI21X1 _2336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_726_),
    .B(_716_),
    .C(_796_),
    .Y(_715_)
);

FILL FILL132450x118950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2498_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(ibus_pending_ack_bF$buf5),
    .C(_302_),
    .Y(_303_)
);

DFFPOSX1 _4079_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1466_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_serial.tx_state [2])
);

FILL FILL_0__3754_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3334_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2985_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_72_),
    .B(i_rst_n_bF$buf4),
    .Y(_1376_)
);

AOI21X1 _2565_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1649_),
    .B(_1652_),
    .C(_1653_),
    .Y(_1471_)
);

NOR2X1 _2145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_894_),
    .B(_1062__bF$buf0),
    .Y(_893_)
);

FILL FILL_0__2605_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3563_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3143_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert90 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf0 )
);

BUFX2 BUFX2_insert91 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .Y(_1126__bF$buf7)
);

BUFX2 BUFX2_insert92 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .Y(_1126__bF$buf6)
);

BUFX2 BUFX2_insert93 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .Y(_1126__bF$buf5)
);

BUFX2 BUFX2_insert94 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .Y(_1126__bF$buf4)
);

BUFX2 BUFX2_insert95 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .Y(_1126__bF$buf3)
);

BUFX2 BUFX2_insert96 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .Y(_1126__bF$buf2)
);

BUFX2 BUFX2_insert97 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .Y(_1126__bF$buf1)
);

BUFX2 BUFX2_insert98 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .Y(_1126__bF$buf0)
);

BUFX2 BUFX2_insert99 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1067_),
    .Y(_1067__bF$buf4)
);

MUX2X1 _2794_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [4]),
    .B(\u_rf_if.read_buf1 [5]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1834_)
);

OAI21X1 _2374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_742_),
    .B(_690_),
    .C(_678_),
    .Y(_677_)
);

DFFPOSX1 _3999_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1422_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .Q(\u_rf_if.read_buf1 [3])
);

AOI21X1 _3579_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_440__bF$buf0),
    .B(_517_),
    .C(_518_),
    .Y(_1228_)
);

AOI21X1 _3159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_196_),
    .B(_670_),
    .C(_200_),
    .Y(_1330_)
);

FILL FILL_0__2834_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2414_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4100_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1271_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .Q(\u_cpu.bufreg.data [19])
);

FILL FILL132450x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3792_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3372_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [24]),
    .B(\u_cpu.ctrl.o_ibus_adr [24]),
    .S(_1052__bF$buf1),
    .Y(_859_)
);

OAI21X1 _3388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_323_),
    .B(_380_),
    .C(_381_),
    .Y(_1282_)
);

FILL FILL_0__2643_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2223_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3008_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1725_),
    .B(_1693__bF$buf4),
    .Y(_1726_)
);

MUX2X1 _2239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_810_),
    .B(\u_mem_serial.shift_reg [30]),
    .S(_1067__bF$buf4),
    .Y(_809_)
);

FILL FILL_0__1914_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1016_),
    .Y(_534_)
);

INVX1 _3197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[5]),
    .Y(_230_)
);

FILL FILL_0__2872_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2452_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3237_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2888_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1903_),
    .C(_1904_),
    .Y(_1905_)
);

AOI21X1 _2468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_695_),
    .B(\u_rf_if.wdata0_r [0]),
    .C(_725_),
    .Y(_1562_)
);

MUX2X1 _2048_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [9]),
    .B(\u_cpu.ctrl.o_ibus_adr [9]),
    .S(_1052__bF$buf4),
    .Y(_979_)
);

FILL FILL_0__2508_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL132750x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2681_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3466_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3046_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2697_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1756_),
    .B(_619_),
    .Y(_1757_)
);

NOR2X1 _2277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_774_)
);

FILL FILL_0__1952_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2737_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2317_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4003_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1424_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .Q(\u_rf_if.read_buf1 [1])
);

OAI21X1 _1968_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1051_),
    .B(_1052__bF$buf2),
    .C(_1053_),
    .Y(_1050_)
);

FILL FILL_0__3695_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3275_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2086_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_946_),
    .B(\u_mem_serial.shift_reg [13]),
    .S(_1067__bF$buf0),
    .Y(_945_)
);

FILL FILL_0__2966_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2546_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2126_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert173 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert175 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert177 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert179 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3923_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1202_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

NOR2X1 _3503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_770_),
    .B(_458_),
    .Y(_459_)
);

FILL FILL_1__2040_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2775_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2355_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4041_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1242_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

MUX2X1 _3732_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_313_),
    .B(_848_),
    .S(_615__bF$buf0),
    .Y(_1172_)
);

AOI21X1 _3312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_288_),
    .B(_317_),
    .C(_318_),
    .Y(_1295_)
);

FILL FILL_0__2584_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__1960_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3369_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3961_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1211_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

OAI21X1 _3541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.dlo [20]),
    .C(_489_),
    .Y(_490_)
);

NOR2X1 _3121_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1691_),
    .B(_172_),
    .Y(_1340_)
);

FILL FILL132750x25350 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2812_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf6),
    .B(_1846_),
    .C(_1847_),
    .Y(_1848_)
);

FILL FILL_0__3598_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3178_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3339_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3770_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1105_),
    .Y(_1104_)
);

OAI21X1 _3350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [8]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_349_),
    .Y(_350_)
);

FILL FILL_0__2869_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2449_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2029_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4135_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1288_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1])
);

FILL FILL_1__3092_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3810_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [4]),
    .B(_733__bF$buf3),
    .Y(_1692_)
);

MUX2X1 _2201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [26]),
    .B(\u_cpu.ctrl.o_ibus_adr [26]),
    .S(_1052__bF$buf2),
    .Y(_843_)
);

DFFSR _3826_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1169_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .Q(ibus_pending_rdt[22])
);

MUX2X1 _3406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_392_),
    .B(_391_),
    .S(_661__bF$buf4),
    .Y(_1275_)
);

FILL FILL_0__2678_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2258_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert160 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert162 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert164 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert166 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert168 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert169 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2850_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [18]),
    .B(\u_rf_if.read_buf1 [19]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1876_)
);

INVX1 _2430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_655_),
    .Y(_1524_)
);

NOR2X1 _2010_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1014_),
    .B(_1062__bF$buf1),
    .Y(_1013_)
);

FILL FILL_0__1949_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_559_)
);

NAND3X1 _3215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_1115_),
    .C(_1106_),
    .Y(_243_)
);

FILL FILL_1__2172_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2487_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4173_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1307_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .Q(rreg0[3])
);

MUX2X1 _2906_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [1]),
    .B(\u_rf_if.read_buf0 [2]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_13_)
);

DFFSR _3864_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf10),
    .S(vdd),
    .D(_1131_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .Q(rf_write_drain_busy)
);

MUX2X1 _3444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_411_),
    .B(_410_),
    .S(_661__bF$buf2),
    .Y(_1256_)
);

AOI21X1 _3024_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(_12__bF$buf5),
    .C(_102_),
    .Y(_1367_)
);

INVX1 _1930_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .Y(_1086_)
);

NAND2X1 _2715_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1702_),
    .B(_1771_),
    .Y(_1772_)
);

FILL FILL_0__1987_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_578_)
);

INVX1 _3253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[2]),
    .Y(_271_)
);

DFFPOSX1 _4038_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1241_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

FILL FILL_0__3713_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert50 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert52 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert54 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert56 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert58 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert59 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2944_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12__bF$buf0),
    .B(_40_),
    .C(_41_),
    .Y(_42_)
);

NOR2X1 _2524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1611_),
    .B(_1615_),
    .Y(_1616_)
);

MUX2X1 _2104_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_930_),
    .B(\u_mem_serial.shift_reg [15]),
    .S(_1067__bF$buf3),
    .Y(_929_)
);

MUX2X1 _3729_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_295_),
    .B(_824_),
    .S(_615__bF$buf2),
    .Y(_1175_)
);

NAND2X1 _3309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_315_),
    .B(_1693__bF$buf2),
    .Y(_316_)
);

NOR2X1 _3482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_781_),
    .B(_440__bF$buf3),
    .Y(_441_)
);

OAI21X1 _3062_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [1]),
    .B(_124_),
    .C(\u_rf_if.write_wait [2]),
    .Y(_128_)
);

NAND3X1 _2753_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(_733__bF$buf0),
    .C(_1744_),
    .Y(_1806_)
);

NOR2X1 _2333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf0),
    .B(_751_),
    .Y(_718_)
);

DFFPOSX1 _3958_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1402_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .Q(\u_rf_if.read_buf1 [23])
);

NOR2X1 _3538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [20]),
    .B(_440__bF$buf1),
    .Y(_488_)
);

NAND2X1 _3118_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_169_),
    .Y(_171_)
);

FILL FILL_1__2075_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_288_),
    .B(_299_),
    .C(_300_),
    .Y(_1298_)
);

DFFPOSX1 _4076_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1465_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_rf_serial.tx_state [3])
);

AND2X2 _2809_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1845_),
    .B(i_rst_n_bF$buf0),
    .Y(_1419_)
);

MUX2X1 _2982_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [20]),
    .B(\u_rf_if.read_buf0 [21]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_70_)
);

NAND3X1 _2562_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_806_),
    .B(_1650_),
    .C(_1592_),
    .Y(_1651_)
);

INVX1 _2142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_896_)
);

INVX1 _3767_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .Y(_1101_)
);

NAND2X1 _3347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_748_),
    .B(_332_),
    .Y(_347_)
);

FILL FILL_0__3807_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3140_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.pending_read ),
    .B(_1683_),
    .C(_1689_),
    .Y(_1690_)
);

BUFX2 BUFX2_insert60 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_190_),
    .Y(_190__bF$buf1)
);

BUFX2 BUFX2_insert61 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_190_),
    .Y(_190__bF$buf0)
);

NAND2X1 _2791_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [2]),
    .B(_1824__bF$buf2),
    .Y(_1832_)
);

NAND2X1 _2371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_681_),
    .B(_682_),
    .Y(_680_)
);

DFFPOSX1 _3996_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1224_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .Q(\u_cpu.bufreg2.dlo [6])
);

NAND2X1 _3576_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_968_),
    .Y(_516_)
);

OAI21X1 _3156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_671_),
    .B(_198_),
    .C(i_rst_n_bF$buf6),
    .Y(_199_)
);

FILL FILL_0__3616_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2847_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [16]),
    .B(_1824__bF$buf1),
    .Y(_1874_)
);

OAI21X1 _2427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_789_),
    .B(_1519_),
    .C(_1520_),
    .Y(_1521_)
);

INVX1 _2007_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_1016_)
);

FILL FILL_1__3110_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_862_)
);

FILL FILL132750x118950 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_369_),
    .B(_288_),
    .C(_379_),
    .Y(_1283_)
);

FILL FILL_0__2640_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2220_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3425_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2801_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [4]),
    .B(_733__bF$buf3),
    .Y(_1723_)
);

OAI21X1 _2236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_813_),
    .B(_815_),
    .C(_1058__bF$buf0),
    .Y(_812_)
);

FILL FILL_1_BUFX2_insert100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert105 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert109 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_227_),
    .B(_952_),
    .S(ibus_pending_ack_bF$buf6),
    .Y(_228_)
);

OAI21X1 _1927_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .B(_1089_),
    .C(_1105_),
    .Y(_1088_)
);

FILL FILL_0__3654_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2885_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1902_),
    .B(i_rst_n_bF$buf9),
    .Y(_1400_)
);

OAI21X1 _2465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1558_),
    .B(_694_),
    .C(_725_),
    .Y(_1559_)
);

NAND2X1 _2045_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [9]),
    .Y(_982_)
);

FILL FILL_0__2925_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2694_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1753_),
    .Y(_1754_)
);

INVX1 _2274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_777_)
);

DFFPOSX1 _3899_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1196_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

OAI21X1 _3479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_657_),
    .B(_753_),
    .C(_794_),
    .Y(_438_)
);

OR2X2 _3059_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_124_),
    .B(\u_rf_if.write_wait [1]),
    .Y(_126_)
);

DFFPOSX1 _4000_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1226_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .Q(\u_cpu.bufreg2.dlo [8])
);

FILL FILL_0__3519_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _1965_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1061_),
    .B(_1054_),
    .Y(_1053_)
);

FILL FILL_1__3013_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2083_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_949_),
    .B(_951_),
    .C(_1058__bF$buf5),
    .Y(_948_)
);

NAND2X1 _3288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_297_),
    .B(_1693__bF$buf2),
    .Y(_298_)
);

FILL FILL_0__2123_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3748_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3328_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3081_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3909_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2979_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [18]),
    .B(_12__bF$buf2),
    .Y(_68_)
);

NOR2X1 _2559_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1648_),
    .B(_1593_),
    .Y(_1472_)
);

OAI21X1 _2139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058__bF$buf1),
    .B(_899_),
    .C(_900_),
    .Y(_898_)
);

DFFPOSX1 _3920_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1384_),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .Q(\u_rf_if.read_buf0 [11])
);

NAND2X1 _3500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_776_),
    .B(_774_),
    .Y(_456_)
);

FILL FILL_1__3242_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3097_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_733__bF$buf3),
    .Y(_154_)
);

FILL FILL_0__2352_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3557_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2933_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2788_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1824__bF$buf2),
    .B(_1828_),
    .C(_1829_),
    .Y(_1830_)
);

OAI21X1 _2368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_689_),
    .B(_684_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_683_)
);

FILL FILL_0__2828_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2408_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3471_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2581_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2161_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3786_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [4]),
    .B(_1596_),
    .C(i_rst_n_bF$buf3),
    .Y(_1675_)
);

NOR2X1 _2177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126__bF$buf3),
    .B(_865_),
    .Y(_1486_)
);

FILL FILL_0__2390_ (
    .gnd(gnd),
    .vdd(vdd)
);

endmodule
