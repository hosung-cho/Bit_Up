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
wire _661__bF$buf0 ;
wire _168_ ;
wire _661__bF$buf1 ;
wire _661__bF$buf2 ;
wire _661__bF$buf3 ;
wire _661__bF$buf4 ;
wire _800_ ;
wire _60_ ;
wire _1486_ ;
wire _1066_ ;
wire _397_ ;
wire [0:0] \u_cpu.ctrl.pc_plus_4_cy_r_w  ;
wire _1295_ ;
wire _703_ ;
wire [4:0] \u_cpu.decode.opcode  ;
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
wire [4:2] \u_cpu.state.o_cnt  ;
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
wire _12__bF$buf3 ;
wire _1756_ ;
wire _12__bF$buf4 ;
wire _1336_ ;
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
wire [0:0] \u_cpu.alu.add_cy_r  ;
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
wire [1:0] \u_rf_if.wdata0_r  ;
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
wire [0:0] \u_cpu.bufreg.c_r  ;
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
wire [8:0] \u_rf_if.o_waddr  ;
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
wire [5:0] \u_rf_if.issue_idx  ;
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
wire [7:0] \u_cpu.bufreg2.dhi  ;
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
wire [0:0] \u_cpu.csr_imm  ;
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
wire [1:0] \u_rf_if.wdata0_next  ;
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
wire [31:0] \u_cpu.ctrl.o_ibus_adr  ;
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
wire [0:0] \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
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
wire [4:0] rreg0 ;
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
wire [4:0] \u_rf_if.rcnt  ;
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
wire [7:0] \u_cpu.bufreg2.cnt_next  ;
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
wire [0:0] \u_cpu.ctrl.pc  ;
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
wire [8:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20  ;
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

CLKBUF1 CLKBUF1_insert191 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 )
);

CLKBUF1 CLKBUF1_insert190 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 )
);

CLKBUF1 CLKBUF1_insert189 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 )
);

CLKBUF1 CLKBUF1_insert188 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 )
);

CLKBUF1 CLKBUF1_insert187 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 )
);

CLKBUF1 CLKBUF1_insert186 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r ),
    .Y(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 )
);

BUFX2 BUFX2_insert185 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_556_),
    .Y(_556__bF$buf0)
);

BUFX2 BUFX2_insert184 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_556_),
    .Y(_556__bF$buf1)
);

BUFX2 BUFX2_insert183 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_556_),
    .Y(_556__bF$buf2)
);

BUFX2 BUFX2_insert182 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_556_),
    .Y(_556__bF$buf3)
);

BUFX2 BUFX2_insert181 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_556_),
    .Y(_556__bF$buf4)
);

BUFX2 BUFX2_insert180 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_615_),
    .Y(_615__bF$buf0)
);

BUFX2 BUFX2_insert179 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_615_),
    .Y(_615__bF$buf1)
);

BUFX2 BUFX2_insert178 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_615_),
    .Y(_615__bF$buf2)
);

BUFX2 BUFX2_insert177 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_615_),
    .Y(_615__bF$buf3)
);

BUFX2 BUFX2_insert176 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_615_),
    .Y(_615__bF$buf4)
);

BUFX2 BUFX2_insert175 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704_),
    .Y(_1704__bF$buf0)
);

BUFX2 BUFX2_insert174 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704_),
    .Y(_1704__bF$buf1)
);

BUFX2 BUFX2_insert173 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704_),
    .Y(_1704__bF$buf2)
);

BUFX2 BUFX2_insert172 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704_),
    .Y(_1704__bF$buf3)
);

CLKBUF1 CLKBUF1_insert171 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf0 )
);

CLKBUF1 CLKBUF1_insert170 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf1 )
);

CLKBUF1 CLKBUF1_insert169 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf2 )
);

CLKBUF1 CLKBUF1_insert168 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf3 )
);

CLKBUF1 CLKBUF1_insert167 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf4 )
);

CLKBUF1 CLKBUF1_insert166 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf5 )
);

CLKBUF1 CLKBUF1_insert165 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf6 )
);

CLKBUF1 CLKBUF1_insert164 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf7 )
);

CLKBUF1 CLKBUF1_insert163 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf8 )
);

CLKBUF1 CLKBUF1_insert162 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf9 )
);

CLKBUF1 CLKBUF1_insert161 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf10 )
);

CLKBUF1 CLKBUF1_insert160 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf11 )
);

CLKBUF1 CLKBUF1_insert159 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf12 )
);

CLKBUF1 CLKBUF1_insert158 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf13 )
);

CLKBUF1 CLKBUF1_insert157 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf14 )
);

CLKBUF1 CLKBUF1_insert156 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf15 )
);

CLKBUF1 CLKBUF1_insert155 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf16 )
);

CLKBUF1 CLKBUF1_insert154 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf17 )
);

CLKBUF1 CLKBUF1_insert153 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf18 )
);

CLKBUF1 CLKBUF1_insert152 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf19 )
);

CLKBUF1 CLKBUF1_insert151 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf20 )
);

CLKBUF1 CLKBUF1_insert150 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf21 )
);

CLKBUF1 CLKBUF1_insert149 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf22 )
);

CLKBUF1 CLKBUF1_insert148 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf23 )
);

CLKBUF1 CLKBUF1_insert147 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf24 )
);

CLKBUF1 CLKBUF1_insert146 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf25 )
);

CLKBUF1 CLKBUF1_insert145 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf26 )
);

CLKBUF1 CLKBUF1_insert144 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf27 )
);

CLKBUF1 CLKBUF1_insert143 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf28 )
);

CLKBUF1 CLKBUF1_insert142 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf29 )
);

CLKBUF1 CLKBUF1_insert141 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf30 )
);

CLKBUF1 CLKBUF1_insert140 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf31 )
);

CLKBUF1 CLKBUF1_insert139 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf32 )
);

CLKBUF1 CLKBUF1_insert138 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf33 )
);

CLKBUF1 CLKBUF1_insert137 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf34 )
);

CLKBUF1 CLKBUF1_insert136 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf35 )
);

CLKBUF1 CLKBUF1_insert135 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf36 )
);

CLKBUF1 CLKBUF1_insert134 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf37 )
);

CLKBUF1 CLKBUF1_insert133 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf38 )
);

CLKBUF1 CLKBUF1_insert132 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf2 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf39 )
);

CLKBUF1 CLKBUF1_insert131 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf1 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf40 )
);

CLKBUF1 CLKBUF1_insert130 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf0 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf41 )
);

CLKBUF1 CLKBUF1_insert129 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf5 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf42 )
);

CLKBUF1 CLKBUF1_insert128 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf4 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf43 )
);

CLKBUF1 CLKBUF1_insert127 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_hier0_bF$buf3 ),
    .Y(\gen_int_sys_clk.clk_sys_r_bF$buf44 )
);

BUFX2 BUFX2_insert126 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1040_),
    .Y(_1040__bF$buf0)
);

BUFX2 BUFX2_insert125 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1040_),
    .Y(_1040__bF$buf1)
);

BUFX2 BUFX2_insert124 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1040_),
    .Y(_1040__bF$buf2)
);

BUFX2 BUFX2_insert123 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1040_),
    .Y(_1040__bF$buf3)
);

BUFX2 BUFX2_insert122 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1040_),
    .Y(_1040__bF$buf4)
);

BUFX2 BUFX2_insert121 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1052_),
    .Y(_1052__bF$buf0)
);

BUFX2 BUFX2_insert120 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1052_),
    .Y(_1052__bF$buf1)
);

BUFX2 BUFX2_insert119 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1052_),
    .Y(_1052__bF$buf2)
);

BUFX2 BUFX2_insert118 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1052_),
    .Y(_1052__bF$buf3)
);

BUFX2 BUFX2_insert117 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1052_),
    .Y(_1052__bF$buf4)
);

BUFX2 BUFX2_insert116 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733_),
    .Y(_733__bF$buf0)
);

BUFX2 BUFX2_insert115 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733_),
    .Y(_733__bF$buf1)
);

BUFX2 BUFX2_insert114 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733_),
    .Y(_733__bF$buf2)
);

BUFX2 BUFX2_insert113 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733_),
    .Y(_733__bF$buf3)
);

BUFX2 BUFX2_insert112 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733_),
    .Y(_733__bF$buf4)
);

BUFX2 BUFX2_insert111 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733_),
    .Y(_733__bF$buf5)
);

BUFX2 BUFX2_insert110 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058_),
    .Y(_1058__bF$buf0)
);

BUFX2 BUFX2_insert109 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058_),
    .Y(_1058__bF$buf1)
);

BUFX2 BUFX2_insert108 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058_),
    .Y(_1058__bF$buf2)
);

BUFX2 BUFX2_insert107 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058_),
    .Y(_1058__bF$buf3)
);

BUFX2 BUFX2_insert106 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058_),
    .Y(_1058__bF$buf4)
);

BUFX2 BUFX2_insert105 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058_),
    .Y(_1058__bF$buf5)
);

BUFX2 BUFX2_insert104 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058_),
    .Y(_1058__bF$buf6)
);

BUFX2 BUFX2_insert103 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1067_),
    .Y(_1067__bF$buf0)
);

BUFX2 BUFX2_insert102 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1067_),
    .Y(_1067__bF$buf1)
);

BUFX2 BUFX2_insert101 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1067_),
    .Y(_1067__bF$buf2)
);

BUFX2 BUFX2_insert100 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1067_),
    .Y(_1067__bF$buf3)
);

BUFX2 BUFX2_insert99 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1067_),
    .Y(_1067__bF$buf4)
);

BUFX2 BUFX2_insert98 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .Y(_1126__bF$buf0)
);

BUFX2 BUFX2_insert97 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .Y(_1126__bF$buf1)
);

BUFX2 BUFX2_insert96 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .Y(_1126__bF$buf2)
);

BUFX2 BUFX2_insert95 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .Y(_1126__bF$buf3)
);

BUFX2 BUFX2_insert94 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .Y(_1126__bF$buf4)
);

BUFX2 BUFX2_insert93 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .Y(_1126__bF$buf5)
);

BUFX2 BUFX2_insert92 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .Y(_1126__bF$buf6)
);

BUFX2 BUFX2_insert91 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126_),
    .Y(_1126__bF$buf7)
);

BUFX2 BUFX2_insert90 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf0 )
);

BUFX2 BUFX2_insert89 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf1 )
);

BUFX2 BUFX2_insert88 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf2 )
);

BUFX2 BUFX2_insert87 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf3 )
);

BUFX2 BUFX2_insert86 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf4 )
);

BUFX2 BUFX2_insert85 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf5 )
);

BUFX2 BUFX2_insert84 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf6 )
);

BUFX2 BUFX2_insert83 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf7 )
);

BUFX2 BUFX2_insert82 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693_),
    .Y(_1693__bF$buf0)
);

BUFX2 BUFX2_insert81 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693_),
    .Y(_1693__bF$buf1)
);

BUFX2 BUFX2_insert80 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693_),
    .Y(_1693__bF$buf2)
);

BUFX2 BUFX2_insert79 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693_),
    .Y(_1693__bF$buf3)
);

BUFX2 BUFX2_insert78 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693_),
    .Y(_1693__bF$buf4)
);

BUFX2 BUFX2_insert77 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693_),
    .Y(_1693__bF$buf5)
);

BUFX2 BUFX2_insert76 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf0)
);

BUFX2 BUFX2_insert75 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf1)
);

BUFX2 BUFX2_insert74 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf2)
);

BUFX2 BUFX2_insert73 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf3)
);

BUFX2 BUFX2_insert72 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf4)
);

BUFX2 BUFX2_insert71 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf5)
);

BUFX2 BUFX2_insert70 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf6)
);

CLKBUF1 CLKBUF1_insert69 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

CLKBUF1 CLKBUF1_insert68 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

CLKBUF1 CLKBUF1_insert67 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert66 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert65 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert64 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert63 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert62 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

BUFX2 BUFX2_insert61 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_190_),
    .Y(_190__bF$buf0)
);

BUFX2 BUFX2_insert60 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_190_),
    .Y(_190__bF$buf1)
);

BUFX2 BUFX2_insert59 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_190_),
    .Y(_190__bF$buf2)
);

BUFX2 BUFX2_insert58 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_190_),
    .Y(_190__bF$buf3)
);

BUFX2 BUFX2_insert57 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_190_),
    .Y(_190__bF$buf4)
);

BUFX2 BUFX2_insert56 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf0)
);

BUFX2 BUFX2_insert55 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf1)
);

BUFX2 BUFX2_insert54 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf2)
);

BUFX2 BUFX2_insert53 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf3)
);

BUFX2 BUFX2_insert52 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf4)
);

BUFX2 BUFX2_insert51 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf5)
);

BUFX2 BUFX2_insert50 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf6)
);

BUFX2 BUFX2_insert49 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .Y(_440__bF$buf0)
);

BUFX2 BUFX2_insert48 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .Y(_440__bF$buf1)
);

BUFX2 BUFX2_insert47 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .Y(_440__bF$buf2)
);

BUFX2 BUFX2_insert46 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .Y(_440__bF$buf3)
);

BUFX2 BUFX2_insert45 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .Y(_440__bF$buf4)
);

BUFX2 BUFX2_insert44 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .Y(_440__bF$buf5)
);

BUFX2 BUFX2_insert43 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12_),
    .Y(_12__bF$buf0)
);

BUFX2 BUFX2_insert42 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12_),
    .Y(_12__bF$buf1)
);

BUFX2 BUFX2_insert41 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12_),
    .Y(_12__bF$buf2)
);

BUFX2 BUFX2_insert40 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12_),
    .Y(_12__bF$buf3)
);

BUFX2 BUFX2_insert39 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12_),
    .Y(_12__bF$buf4)
);

BUFX2 BUFX2_insert38 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12_),
    .Y(_12__bF$buf5)
);

BUFX2 BUFX2_insert37 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12_),
    .Y(_12__bF$buf6)
);

BUFX2 BUFX2_insert36 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1062_),
    .Y(_1062__bF$buf0)
);

BUFX2 BUFX2_insert35 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1062_),
    .Y(_1062__bF$buf1)
);

BUFX2 BUFX2_insert34 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1062_),
    .Y(_1062__bF$buf2)
);

BUFX2 BUFX2_insert33 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1062_),
    .Y(_1062__bF$buf3)
);

BUFX2 BUFX2_insert32 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1062_),
    .Y(_1062__bF$buf4)
);

BUFX2 BUFX2_insert31 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

BUFX2 BUFX2_insert30 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert29 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert28 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert27 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf4)
);

BUFX2 BUFX2_insert26 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf5)
);

BUFX2 BUFX2_insert25 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf6)
);

BUFX2 BUFX2_insert24 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf7)
);

BUFX2 BUFX2_insert23 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf8)
);

BUFX2 BUFX2_insert22 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf9)
);

BUFX2 BUFX2_insert21 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf10)
);

BUFX2 BUFX2_insert20 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf0)
);

BUFX2 BUFX2_insert19 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf1)
);

BUFX2 BUFX2_insert18 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf2)
);

BUFX2 BUFX2_insert17 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf3)
);

BUFX2 BUFX2_insert16 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf0 )
);

BUFX2 BUFX2_insert15 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf1 )
);

BUFX2 BUFX2_insert14 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf2 )
);

BUFX2 BUFX2_insert13 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf3 )
);

BUFX2 BUFX2_insert12 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .Y(\u_mem_serial.active_we_bF$buf4 )
);

BUFX2 BUFX2_insert11 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .Y(_661__bF$buf0)
);

BUFX2 BUFX2_insert10 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .Y(_661__bF$buf1)
);

BUFX2 BUFX2_insert9 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .Y(_661__bF$buf2)
);

BUFX2 BUFX2_insert8 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .Y(_661__bF$buf3)
);

BUFX2 BUFX2_insert7 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .Y(_661__bF$buf4)
);

BUFX2 BUFX2_insert6 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824_),
    .Y(_1824__bF$buf0)
);

BUFX2 BUFX2_insert5 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824_),
    .Y(_1824__bF$buf1)
);

BUFX2 BUFX2_insert4 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824_),
    .Y(_1824__bF$buf2)
);

BUFX2 BUFX2_insert3 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824_),
    .Y(_1824__bF$buf3)
);

BUFX2 BUFX2_insert2 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824_),
    .Y(_1824__bF$buf4)
);

BUFX2 BUFX2_insert1 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824_),
    .Y(_1824__bF$buf5)
);

BUFX2 BUFX2_insert0 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824_),
    .Y(_1824__bF$buf6)
);

BUFX2 _1912_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1910_),
    .Y(o_rf_sync)
);

BUFX2 _1913_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1909_),
    .Y(o_rf_sck)
);

BUFX2 _1914_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1908_),
    .Y(o_rf_mosi)
);

BUFX2 _1915_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1907_),
    .Y(o_mem_sync)
);

BUFX2 _1916_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1906_),
    .Y(o_mem_sck)
);

BUFX2 _1917_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_0_),
    .Y(o_mem_mosi)
);

OAI21X1 _1918_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_1098_),
    .C(\u_mem_serial.bit_count [1]),
    .Y(_1095_)
);

INVX2 _1919_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .Y(_1094_)
);

AOI21X1 _1920_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1097_),
    .B(_1094_),
    .C(_1106_),
    .Y(_1093_)
);

AOI21X1 _1921_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1093_),
    .B(_1095_),
    .C(_1126__bF$buf7),
    .Y(_1514_)
);

NAND2X1 _1922_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1094_),
    .B(_1097_),
    .Y(_1092_)
);

OAI21X1 _1923_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_1092_),
    .C(_1107_),
    .Y(_1091_)
);

AOI21X1 _1924_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_1092_),
    .C(_1091_),
    .Y(_1090_)
);

NOR2X1 _1925_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf6),
    .B(_1090_),
    .Y(_1513_)
);

NOR2X1 _1926_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_1092_),
    .Y(_1089_)
);

OAI21X1 _1927_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .B(_1089_),
    .C(_1105_),
    .Y(_1088_)
);

AOI21X1 _1928_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .B(_1089_),
    .C(_1088_),
    .Y(_1512_)
);

INVX1 _1929_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [4]),
    .Y(_1087_)
);

INVX1 _1930_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .Y(_1086_)
);

INVX1 _1931_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .Y(_1085_)
);

NOR2X1 _1932_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(\u_mem_serial.bit_count [0]),
    .Y(_1084_)
);

NAND3X1 _1933_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1086_),
    .B(_1085_),
    .C(_1084_),
    .Y(_1083_)
);

NOR2X1 _1934_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1083_),
    .B(_1098_),
    .Y(_1082_)
);

NAND2X1 _1935_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1087_),
    .B(_1082_),
    .Y(_1081_)
);

OAI21X1 _1936_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1083_),
    .B(_1098_),
    .C(\u_mem_serial.bit_count [4]),
    .Y(_1080_)
);

AOI21X1 _1937_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1081_),
    .B(_1080_),
    .C(_1104_),
    .Y(_1511_)
);

INVX1 _1938_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .Y(_1079_)
);

INVX1 _1939_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1081_),
    .Y(_1078_)
);

NOR2X1 _1940_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .B(\u_mem_serial.bit_count [4]),
    .Y(_1077_)
);

NAND2X1 _1941_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1077_),
    .B(_1082_),
    .Y(_1076_)
);

OAI21X1 _1942_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1079_),
    .B(_1078_),
    .C(_1076_),
    .Y(_1075_)
);

AND2X2 _1943_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1075_),
    .B(_1105_),
    .Y(_1510_)
);

NOR2X1 _1944_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [6]),
    .B(\u_mem_serial.bit_count [5]),
    .Y(_1074_)
);

NAND3X1 _1945_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1087_),
    .B(_1086_),
    .C(_1085_),
    .Y(_1073_)
);

INVX1 _1946_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1073_),
    .Y(_1072_)
);

NAND3X1 _1947_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1094_),
    .B(_1074_),
    .C(_1072_),
    .Y(_1071_)
);

OR2X2 _1948_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1083_),
    .B(\u_mem_serial.bit_count [4]),
    .Y(_1070_)
);

OAI21X1 _1949_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .B(_1070_),
    .C(\u_mem_serial.bit_count [6]),
    .Y(_1069_)
);

NAND2X1 _1950_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1071_),
    .B(_1069_),
    .Y(_1068_)
);

OAI21X1 _1951_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1068_),
    .B(_1098_),
    .C(_1107_),
    .Y(_1067_)
);

INVX1 _1952_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [0]),
    .Y(_1066_)
);

NOR2X1 _1953_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_1079_),
    .Y(_1065_)
);

INVX1 _1954_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(_1064_)
);

NOR2X1 _1955_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_1064_),
    .Y(_1063_)
);

NAND3X1 _1956_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1065_),
    .B(_1063_),
    .C(_1072_),
    .Y(_1062_)
);

OAI21X1 _1957_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1066_),
    .B(_1062__bF$buf4),
    .C(\u_mem_serial.active_we_bF$buf4 ),
    .Y(_1061_)
);

AOI21X1 _1958_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1072_),
    .B(_1094_),
    .C(_1079_),
    .Y(_1060_)
);

INVX1 _1959_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .Y(_1059_)
);

NOR2X1 _1960_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_1059_),
    .Y(_1058_)
);

INVX1 _1961_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf6),
    .Y(_1057_)
);

NOR2X1 _1962_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_1057_),
    .Y(_1056_)
);

OAI21X1 _1963_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(i_mem_miso),
    .C(_1056_),
    .Y(_1055_)
);

NOR2X1 _1964_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1060_),
    .B(_1055_),
    .Y(_1054_)
);

NAND2X1 _1965_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1061_),
    .B(_1054_),
    .Y(_1053_)
);

OAI21X1 _1966_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1117_),
    .B(_1120_),
    .C(_1124_),
    .Y(_1052_)
);

OAI21X1 _1967_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_1059_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_1051_)
);

OAI21X1 _1968_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1051_),
    .B(_1052__bF$buf4),
    .C(_1053_),
    .Y(_1050_)
);

MUX2X1 _1969_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1050_),
    .B(\u_mem_serial.shift_reg [0]),
    .S(_1067__bF$buf4),
    .Y(_1049_)
);

NOR2X1 _1970_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf5),
    .B(_1049_),
    .Y(_1509_)
);

INVX1 _1971_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .Y(_1048_)
);

INVX1 _1972_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [1]),
    .Y(_1047_)
);

NOR2X1 _1973_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1048_),
    .B(_1047_),
    .Y(_1046_)
);

MUX2X1 _1974_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [0]),
    .B(_1046_),
    .S(_1062__bF$buf3),
    .Y(_1045_)
);

OAI21X1 _1975_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_1059_),
    .C(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_1044_)
);

OAI22X1 _1976_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1052__bF$buf3),
    .B(_1044_),
    .C(_1057_),
    .D(_1045_),
    .Y(_1043_)
);

MUX2X1 _1977_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1043_),
    .B(\u_mem_serial.shift_reg [1]),
    .S(_1067__bF$buf3),
    .Y(_1042_)
);

NOR2X1 _1978_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf4),
    .B(_1042_),
    .Y(_1508_)
);

INVX1 _1979_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_1041_)
);

INVX8 _1980_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1062__bF$buf2),
    .Y(_1040_)
);

NOR2X1 _1981_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1041_),
    .B(_1040__bF$buf4),
    .Y(_1039_)
);

NAND2X1 _1982_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [2]),
    .Y(_1038_)
);

NOR2X1 _1983_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1038_),
    .B(_1062__bF$buf1),
    .Y(_1037_)
);

OAI21X1 _1984_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1037_),
    .B(_1039_),
    .C(_1058__bF$buf5),
    .Y(_1036_)
);

MUX2X1 _1985_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [2]),
    .B(\u_cpu.ctrl.o_ibus_adr [2]),
    .S(_1052__bF$buf2),
    .Y(_1035_)
);

OAI21X1 _1986_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf4),
    .B(_1035_),
    .C(_1036_),
    .Y(_1034_)
);

MUX2X1 _1987_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1034_),
    .B(\u_mem_serial.shift_reg [2]),
    .S(_1067__bF$buf2),
    .Y(_1033_)
);

NOR2X1 _1988_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf3),
    .B(_1033_),
    .Y(_1507_)
);

INVX1 _1989_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_1032_)
);

NOR2X1 _1990_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1032_),
    .B(_1040__bF$buf3),
    .Y(_1031_)
);

NAND2X1 _1991_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [3]),
    .Y(_1030_)
);

NOR2X1 _1992_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1030_),
    .B(_1062__bF$buf0),
    .Y(_1029_)
);

OAI21X1 _1993_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1029_),
    .B(_1031_),
    .C(_1058__bF$buf3),
    .Y(_1028_)
);

MUX2X1 _1994_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [3]),
    .B(\u_cpu.ctrl.o_ibus_adr [3]),
    .S(_1052__bF$buf1),
    .Y(_1027_)
);

OAI21X1 _1995_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf2),
    .B(_1027_),
    .C(_1028_),
    .Y(_1026_)
);

MUX2X1 _1996_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1026_),
    .B(\u_mem_serial.shift_reg [3]),
    .S(_1067__bF$buf1),
    .Y(_1025_)
);

NOR2X1 _1997_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf2),
    .B(_1025_),
    .Y(_1506_)
);

INVX1 _1998_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_1024_)
);

NOR2X1 _1999_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1024_),
    .B(_1040__bF$buf2),
    .Y(_1023_)
);

NAND2X1 _2000_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg2.dlo [4]),
    .Y(_1022_)
);

NOR2X1 _2001_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1022_),
    .B(_1062__bF$buf4),
    .Y(_1021_)
);

OAI21X1 _2002_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1021_),
    .B(_1023_),
    .C(_1058__bF$buf1),
    .Y(_1020_)
);

MUX2X1 _2003_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [4]),
    .B(\u_cpu.ctrl.o_ibus_adr [4]),
    .S(_1052__bF$buf0),
    .Y(_1019_)
);

OAI21X1 _2004_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf0),
    .B(_1019_),
    .C(_1020_),
    .Y(_1018_)
);

MUX2X1 _2005_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1018_),
    .B(\u_mem_serial.shift_reg [4]),
    .S(_1067__bF$buf0),
    .Y(_1017_)
);

NOR2X1 _2006_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf1),
    .B(_1017_),
    .Y(_1505_)
);

INVX1 _2007_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_1016_)
);

NOR2X1 _2008_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1016_),
    .B(_1040__bF$buf1),
    .Y(_1015_)
);

NAND2X1 _2009_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [5]),
    .Y(_1014_)
);

NOR2X1 _2010_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1014_),
    .B(_1062__bF$buf3),
    .Y(_1013_)
);

OAI21X1 _2011_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1013_),
    .B(_1015_),
    .C(_1058__bF$buf6),
    .Y(_1012_)
);

MUX2X1 _2012_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [5]),
    .B(\u_cpu.ctrl.o_ibus_adr [5]),
    .S(_1052__bF$buf4),
    .Y(_1011_)
);

OAI21X1 _2013_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf5),
    .B(_1011_),
    .C(_1012_),
    .Y(_1010_)
);

MUX2X1 _2014_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1010_),
    .B(\u_mem_serial.shift_reg [5]),
    .S(_1067__bF$buf4),
    .Y(_1009_)
);

NOR2X1 _2015_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf0),
    .B(_1009_),
    .Y(_1504_)
);

INVX1 _2016_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_1008_)
);

NOR2X1 _2017_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1008_),
    .B(_1040__bF$buf0),
    .Y(_1007_)
);

NAND2X1 _2018_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.dlo [6]),
    .Y(_1006_)
);

NOR2X1 _2019_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1006_),
    .B(_1062__bF$buf2),
    .Y(_1005_)
);

OAI21X1 _2020_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1005_),
    .B(_1007_),
    .C(_1058__bF$buf4),
    .Y(_1004_)
);

MUX2X1 _2021_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [6]),
    .B(\u_cpu.ctrl.o_ibus_adr [6]),
    .S(_1052__bF$buf3),
    .Y(_1003_)
);

OAI21X1 _2022_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf3),
    .B(_1003_),
    .C(_1004_),
    .Y(_1002_)
);

MUX2X1 _2023_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1002_),
    .B(\u_mem_serial.shift_reg [6]),
    .S(_1067__bF$buf3),
    .Y(_1001_)
);

NOR2X1 _2024_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf7),
    .B(_1001_),
    .Y(_1503_)
);

INVX1 _2025_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_1000_)
);

NOR2X1 _2026_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1000_),
    .B(_1040__bF$buf4),
    .Y(_999_)
);

NAND2X1 _2027_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [7]),
    .Y(_998_)
);

NOR2X1 _2028_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_998_),
    .B(_1062__bF$buf1),
    .Y(_997_)
);

OAI21X1 _2029_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_997_),
    .B(_999_),
    .C(_1058__bF$buf2),
    .Y(_996_)
);

MUX2X1 _2030_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [7]),
    .B(\u_cpu.ctrl.o_ibus_adr [7]),
    .S(_1052__bF$buf2),
    .Y(_995_)
);

OAI21X1 _2031_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf1),
    .B(_995_),
    .C(_996_),
    .Y(_994_)
);

MUX2X1 _2032_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_994_),
    .B(\u_mem_serial.shift_reg [7]),
    .S(_1067__bF$buf2),
    .Y(_993_)
);

NOR2X1 _2033_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf6),
    .B(_993_),
    .Y(_1502_)
);

INVX1 _2034_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [7]),
    .Y(_992_)
);

NOR2X1 _2035_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_992_),
    .B(_1040__bF$buf3),
    .Y(_991_)
);

NAND2X1 _2036_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [8]),
    .Y(_990_)
);

NOR2X1 _2037_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_990_),
    .B(_1062__bF$buf0),
    .Y(_989_)
);

OAI21X1 _2038_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_989_),
    .B(_991_),
    .C(_1058__bF$buf0),
    .Y(_988_)
);

MUX2X1 _2039_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [8]),
    .B(\u_cpu.ctrl.o_ibus_adr [8]),
    .S(_1052__bF$buf1),
    .Y(_987_)
);

OAI21X1 _2040_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf6),
    .B(_987_),
    .C(_988_),
    .Y(_986_)
);

MUX2X1 _2041_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_986_),
    .B(\u_mem_serial.shift_reg [8]),
    .S(_1067__bF$buf1),
    .Y(_985_)
);

NOR2X1 _2042_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf5),
    .B(_985_),
    .Y(_1501_)
);

INVX1 _2043_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_984_)
);

NOR2X1 _2044_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_984_),
    .B(_1040__bF$buf2),
    .Y(_983_)
);

NAND2X1 _2045_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg2.dlo [9]),
    .Y(_982_)
);

NOR2X1 _2046_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_982_),
    .B(_1062__bF$buf4),
    .Y(_981_)
);

OAI21X1 _2047_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_981_),
    .B(_983_),
    .C(_1058__bF$buf5),
    .Y(_980_)
);

MUX2X1 _2048_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [9]),
    .B(\u_cpu.ctrl.o_ibus_adr [9]),
    .S(_1052__bF$buf0),
    .Y(_979_)
);

OAI21X1 _2049_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf4),
    .B(_979_),
    .C(_980_),
    .Y(_978_)
);

MUX2X1 _2050_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_978_),
    .B(\u_mem_serial.shift_reg [9]),
    .S(_1067__bF$buf0),
    .Y(_977_)
);

NOR2X1 _2051_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf4),
    .B(_977_),
    .Y(_1500_)
);

INVX1 _2052_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_976_)
);

NOR2X1 _2053_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_976_),
    .B(_1040__bF$buf1),
    .Y(_975_)
);

NAND2X1 _2054_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [10]),
    .Y(_974_)
);

NOR2X1 _2055_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_974_),
    .B(_1062__bF$buf3),
    .Y(_973_)
);

OAI21X1 _2056_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_973_),
    .B(_975_),
    .C(_1058__bF$buf3),
    .Y(_972_)
);

MUX2X1 _2057_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [10]),
    .B(\u_cpu.ctrl.o_ibus_adr [10]),
    .S(_1052__bF$buf4),
    .Y(_971_)
);

OAI21X1 _2058_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf2),
    .B(_971_),
    .C(_972_),
    .Y(_970_)
);

MUX2X1 _2059_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_970_),
    .B(\u_mem_serial.shift_reg [10]),
    .S(_1067__bF$buf4),
    .Y(_969_)
);

NOR2X1 _2060_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf3),
    .B(_969_),
    .Y(_1499_)
);

INVX1 _2061_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [10]),
    .Y(_968_)
);

NOR2X1 _2062_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_968_),
    .B(_1040__bF$buf0),
    .Y(_967_)
);

NAND2X1 _2063_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.dlo [11]),
    .Y(_966_)
);

NOR2X1 _2064_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_966_),
    .B(_1062__bF$buf2),
    .Y(_965_)
);

OAI21X1 _2065_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_965_),
    .B(_967_),
    .C(_1058__bF$buf1),
    .Y(_964_)
);

MUX2X1 _2066_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [11]),
    .B(\u_cpu.ctrl.o_ibus_adr [11]),
    .S(_1052__bF$buf3),
    .Y(_963_)
);

OAI21X1 _2067_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf0),
    .B(_963_),
    .C(_964_),
    .Y(_962_)
);

MUX2X1 _2068_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_962_),
    .B(\u_mem_serial.shift_reg [11]),
    .S(_1067__bF$buf3),
    .Y(_961_)
);

NOR2X1 _2069_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf2),
    .B(_961_),
    .Y(_1498_)
);

INVX1 _2070_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_960_)
);

NOR2X1 _2071_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_960_),
    .B(_1040__bF$buf4),
    .Y(_959_)
);

NAND2X1 _2072_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [12]),
    .Y(_958_)
);

NOR2X1 _2073_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_958_),
    .B(_1062__bF$buf1),
    .Y(_957_)
);

OAI21X1 _2074_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_957_),
    .B(_959_),
    .C(_1058__bF$buf6),
    .Y(_956_)
);

MUX2X1 _2075_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [12]),
    .B(\u_cpu.ctrl.o_ibus_adr [12]),
    .S(_1052__bF$buf2),
    .Y(_955_)
);

OAI21X1 _2076_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf5),
    .B(_955_),
    .C(_956_),
    .Y(_954_)
);

MUX2X1 _2077_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_954_),
    .B(\u_mem_serial.shift_reg [12]),
    .S(_1067__bF$buf2),
    .Y(_953_)
);

NOR2X1 _2078_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf1),
    .B(_953_),
    .Y(_1497_)
);

INVX1 _2079_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_952_)
);

NOR2X1 _2080_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_952_),
    .B(_1040__bF$buf3),
    .Y(_951_)
);

NAND2X1 _2081_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [13]),
    .Y(_950_)
);

NOR2X1 _2082_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_950_),
    .B(_1062__bF$buf0),
    .Y(_949_)
);

OAI21X1 _2083_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_949_),
    .B(_951_),
    .C(_1058__bF$buf4),
    .Y(_948_)
);

MUX2X1 _2084_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [13]),
    .B(\u_cpu.ctrl.o_ibus_adr [13]),
    .S(_1052__bF$buf1),
    .Y(_947_)
);

OAI21X1 _2085_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf3),
    .B(_947_),
    .C(_948_),
    .Y(_946_)
);

MUX2X1 _2086_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_946_),
    .B(\u_mem_serial.shift_reg [13]),
    .S(_1067__bF$buf1),
    .Y(_945_)
);

NOR2X1 _2087_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf0),
    .B(_945_),
    .Y(_1496_)
);

INVX1 _2088_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_944_)
);

NOR2X1 _2089_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_944_),
    .B(_1040__bF$buf2),
    .Y(_943_)
);

NAND2X1 _2090_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg2.dlo [14]),
    .Y(_942_)
);

NOR2X1 _2091_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_942_),
    .B(_1062__bF$buf4),
    .Y(_941_)
);

OAI21X1 _2092_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_941_),
    .B(_943_),
    .C(_1058__bF$buf2),
    .Y(_940_)
);

MUX2X1 _2093_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [14]),
    .B(\u_cpu.ctrl.o_ibus_adr [14]),
    .S(_1052__bF$buf0),
    .Y(_939_)
);

OAI21X1 _2094_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf1),
    .B(_939_),
    .C(_940_),
    .Y(_938_)
);

MUX2X1 _2095_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_938_),
    .B(\u_mem_serial.shift_reg [14]),
    .S(_1067__bF$buf0),
    .Y(_937_)
);

NOR2X1 _2096_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf7),
    .B(_937_),
    .Y(_1495_)
);

INVX1 _2097_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_936_)
);

NOR2X1 _2098_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_936_),
    .B(_1040__bF$buf1),
    .Y(_935_)
);

NAND2X1 _2099_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [15]),
    .Y(_934_)
);

NOR2X1 _2100_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_934_),
    .B(_1062__bF$buf3),
    .Y(_933_)
);

OAI21X1 _2101_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_933_),
    .B(_935_),
    .C(_1058__bF$buf0),
    .Y(_932_)
);

MUX2X1 _2102_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [15]),
    .B(\u_cpu.ctrl.o_ibus_adr [15]),
    .S(_1052__bF$buf4),
    .Y(_931_)
);

OAI21X1 _2103_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf6),
    .B(_931_),
    .C(_932_),
    .Y(_930_)
);

MUX2X1 _2104_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_930_),
    .B(\u_mem_serial.shift_reg [15]),
    .S(_1067__bF$buf4),
    .Y(_929_)
);

NOR2X1 _2105_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf6),
    .B(_929_),
    .Y(_1494_)
);

INVX1 _2106_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [15]),
    .Y(_928_)
);

NOR2X1 _2107_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_928_),
    .B(_1040__bF$buf0),
    .Y(_927_)
);

NAND2X1 _2108_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.dlo [16]),
    .Y(_926_)
);

NOR2X1 _2109_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_926_),
    .B(_1062__bF$buf2),
    .Y(_925_)
);

OAI21X1 _2110_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_925_),
    .B(_927_),
    .C(_1058__bF$buf5),
    .Y(_924_)
);

MUX2X1 _2111_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [16]),
    .B(\u_cpu.ctrl.o_ibus_adr [16]),
    .S(_1052__bF$buf3),
    .Y(_923_)
);

OAI21X1 _2112_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf4),
    .B(_923_),
    .C(_924_),
    .Y(_922_)
);

MUX2X1 _2113_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_922_),
    .B(\u_mem_serial.shift_reg [16]),
    .S(_1067__bF$buf3),
    .Y(_921_)
);

NOR2X1 _2114_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf5),
    .B(_921_),
    .Y(_1493_)
);

INVX1 _2115_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_920_)
);

NOR2X1 _2116_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_920_),
    .B(_1040__bF$buf4),
    .Y(_919_)
);

NAND2X1 _2117_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [17]),
    .Y(_918_)
);

NOR2X1 _2118_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_918_),
    .B(_1062__bF$buf1),
    .Y(_917_)
);

OAI21X1 _2119_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_917_),
    .B(_919_),
    .C(_1058__bF$buf3),
    .Y(_916_)
);

MUX2X1 _2120_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [17]),
    .B(\u_cpu.ctrl.o_ibus_adr [17]),
    .S(_1052__bF$buf2),
    .Y(_915_)
);

OAI21X1 _2121_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf2),
    .B(_915_),
    .C(_916_),
    .Y(_914_)
);

MUX2X1 _2122_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_914_),
    .B(\u_mem_serial.shift_reg [17]),
    .S(_1067__bF$buf2),
    .Y(_913_)
);

NOR2X1 _2123_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf4),
    .B(_913_),
    .Y(_1492_)
);

INVX1 _2124_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_912_)
);

NOR2X1 _2125_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_912_),
    .B(_1040__bF$buf3),
    .Y(_911_)
);

NAND2X1 _2126_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [18]),
    .Y(_910_)
);

NOR2X1 _2127_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_910_),
    .B(_1062__bF$buf0),
    .Y(_909_)
);

OAI21X1 _2128_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_909_),
    .B(_911_),
    .C(_1058__bF$buf1),
    .Y(_908_)
);

MUX2X1 _2129_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [18]),
    .B(\u_cpu.ctrl.o_ibus_adr [18]),
    .S(_1052__bF$buf1),
    .Y(_907_)
);

OAI21X1 _2130_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf0),
    .B(_907_),
    .C(_908_),
    .Y(_906_)
);

MUX2X1 _2131_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_906_),
    .B(\u_mem_serial.shift_reg [18]),
    .S(_1067__bF$buf1),
    .Y(_905_)
);

NOR2X1 _2132_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf3),
    .B(_905_),
    .Y(_1491_)
);

INVX1 _2133_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_904_)
);

NOR2X1 _2134_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_904_),
    .B(_1040__bF$buf2),
    .Y(_903_)
);

NAND2X1 _2135_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg2.dlo [19]),
    .Y(_902_)
);

NOR2X1 _2136_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_902_),
    .B(_1062__bF$buf4),
    .Y(_901_)
);

OAI21X1 _2137_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_901_),
    .B(_903_),
    .C(_1058__bF$buf6),
    .Y(_900_)
);

MUX2X1 _2138_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [19]),
    .B(\u_cpu.ctrl.o_ibus_adr [19]),
    .S(_1052__bF$buf0),
    .Y(_899_)
);

OAI21X1 _2139_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf5),
    .B(_899_),
    .C(_900_),
    .Y(_898_)
);

MUX2X1 _2140_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_898_),
    .B(\u_mem_serial.shift_reg [19]),
    .S(_1067__bF$buf0),
    .Y(_897_)
);

NOR2X1 _2141_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf2),
    .B(_897_),
    .Y(_1490_)
);

INVX1 _2142_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_896_)
);

NOR2X1 _2143_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_896_),
    .B(_1040__bF$buf1),
    .Y(_895_)
);

NAND2X1 _2144_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dlo [20]),
    .Y(_894_)
);

NOR2X1 _2145_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_894_),
    .B(_1062__bF$buf3),
    .Y(_893_)
);

OAI21X1 _2146_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_893_),
    .B(_895_),
    .C(_1058__bF$buf4),
    .Y(_892_)
);

MUX2X1 _2147_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [20]),
    .B(\u_cpu.ctrl.o_ibus_adr [20]),
    .S(_1052__bF$buf4),
    .Y(_891_)
);

OAI21X1 _2148_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf3),
    .B(_891_),
    .C(_892_),
    .Y(_890_)
);

MUX2X1 _2149_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_890_),
    .B(\u_mem_serial.shift_reg [20]),
    .S(_1067__bF$buf4),
    .Y(_889_)
);

NOR2X1 _2150_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf1),
    .B(_889_),
    .Y(_1489_)
);

INVX1 _2151_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_888_)
);

NOR2X1 _2152_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_888_),
    .B(_1040__bF$buf0),
    .Y(_887_)
);

NAND2X1 _2153_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.dlo [21]),
    .Y(_886_)
);

NOR2X1 _2154_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_886_),
    .B(_1062__bF$buf2),
    .Y(_885_)
);

OAI21X1 _2155_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_885_),
    .B(_887_),
    .C(_1058__bF$buf2),
    .Y(_884_)
);

MUX2X1 _2156_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [21]),
    .B(\u_cpu.ctrl.o_ibus_adr [21]),
    .S(_1052__bF$buf3),
    .Y(_883_)
);

OAI21X1 _2157_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf1),
    .B(_883_),
    .C(_884_),
    .Y(_882_)
);

MUX2X1 _2158_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_882_),
    .B(\u_mem_serial.shift_reg [21]),
    .S(_1067__bF$buf3),
    .Y(_881_)
);

NOR2X1 _2159_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf0),
    .B(_881_),
    .Y(_1488_)
);

INVX1 _2160_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_880_)
);

NOR2X1 _2161_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_880_),
    .B(_1040__bF$buf4),
    .Y(_879_)
);

NAND2X1 _2162_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dlo [22]),
    .Y(_878_)
);

NOR2X1 _2163_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_878_),
    .B(_1062__bF$buf1),
    .Y(_877_)
);

OAI21X1 _2164_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_877_),
    .B(_879_),
    .C(_1058__bF$buf0),
    .Y(_876_)
);

MUX2X1 _2165_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [22]),
    .B(\u_cpu.ctrl.o_ibus_adr [22]),
    .S(_1052__bF$buf2),
    .Y(_875_)
);

OAI21X1 _2166_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf6),
    .B(_875_),
    .C(_876_),
    .Y(_874_)
);

MUX2X1 _2167_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_874_),
    .B(\u_mem_serial.shift_reg [22]),
    .S(_1067__bF$buf2),
    .Y(_873_)
);

NOR2X1 _2168_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf7),
    .B(_873_),
    .Y(_1487_)
);

INVX1 _2169_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_872_)
);

NOR2X1 _2170_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_872_),
    .B(_1040__bF$buf3),
    .Y(_871_)
);

NAND2X1 _2171_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dlo [23]),
    .Y(_870_)
);

NOR2X1 _2172_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_870_),
    .B(_1062__bF$buf0),
    .Y(_869_)
);

OAI21X1 _2173_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_869_),
    .B(_871_),
    .C(_1058__bF$buf5),
    .Y(_868_)
);

MUX2X1 _2174_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [23]),
    .B(\u_cpu.ctrl.o_ibus_adr [23]),
    .S(_1052__bF$buf1),
    .Y(_867_)
);

OAI21X1 _2175_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf4),
    .B(_867_),
    .C(_868_),
    .Y(_866_)
);

MUX2X1 _2176_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_866_),
    .B(\u_mem_serial.shift_reg [23]),
    .S(_1067__bF$buf1),
    .Y(_865_)
);

NOR2X1 _2177_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf6),
    .B(_865_),
    .Y(_1486_)
);

INVX1 _2178_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_864_)
);

NOR2X1 _2179_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_864_),
    .B(_1040__bF$buf2),
    .Y(_863_)
);

NAND2X1 _2180_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_862_)
);

NOR2X1 _2181_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_862_),
    .B(_1062__bF$buf4),
    .Y(_861_)
);

OAI21X1 _2182_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_861_),
    .B(_863_),
    .C(_1058__bF$buf3),
    .Y(_860_)
);

MUX2X1 _2183_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [24]),
    .B(\u_cpu.ctrl.o_ibus_adr [24]),
    .S(_1052__bF$buf0),
    .Y(_859_)
);

OAI21X1 _2184_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf2),
    .B(_859_),
    .C(_860_),
    .Y(_858_)
);

MUX2X1 _2185_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_858_),
    .B(\u_mem_serial.shift_reg [24]),
    .S(_1067__bF$buf0),
    .Y(_857_)
);

NOR2X1 _2186_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf5),
    .B(_857_),
    .Y(_1485_)
);

INVX1 _2187_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_856_)
);

NOR2X1 _2188_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_856_),
    .B(_1040__bF$buf1),
    .Y(_855_)
);

NAND2X1 _2189_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_854_)
);

NOR2X1 _2190_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_854_),
    .B(_1062__bF$buf3),
    .Y(_853_)
);

OAI21X1 _2191_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_853_),
    .B(_855_),
    .C(_1058__bF$buf1),
    .Y(_852_)
);

MUX2X1 _2192_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [25]),
    .B(\u_cpu.ctrl.o_ibus_adr [25]),
    .S(_1052__bF$buf4),
    .Y(_851_)
);

OAI21X1 _2193_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf0),
    .B(_851_),
    .C(_852_),
    .Y(_850_)
);

MUX2X1 _2194_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_850_),
    .B(\u_mem_serial.shift_reg [25]),
    .S(_1067__bF$buf4),
    .Y(_849_)
);

NOR2X1 _2195_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf4),
    .B(_849_),
    .Y(_1484_)
);

INVX1 _2196_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [25]),
    .Y(_848_)
);

NOR2X1 _2197_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_848_),
    .B(_1040__bF$buf0),
    .Y(_847_)
);

NAND2X1 _2198_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg.i_shamt [2]),
    .Y(_846_)
);

NOR2X1 _2199_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_846_),
    .B(_1062__bF$buf2),
    .Y(_845_)
);

OAI21X1 _2200_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_845_),
    .B(_847_),
    .C(_1058__bF$buf6),
    .Y(_844_)
);

MUX2X1 _2201_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [26]),
    .B(\u_cpu.ctrl.o_ibus_adr [26]),
    .S(_1052__bF$buf3),
    .Y(_843_)
);

OAI21X1 _2202_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf5),
    .B(_843_),
    .C(_844_),
    .Y(_842_)
);

MUX2X1 _2203_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_842_),
    .B(\u_mem_serial.shift_reg [26]),
    .S(_1067__bF$buf3),
    .Y(_841_)
);

NOR2X1 _2204_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf3),
    .B(_841_),
    .Y(_1483_)
);

INVX1 _2205_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [26]),
    .Y(_840_)
);

NOR2X1 _2206_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_840_),
    .B(_1040__bF$buf4),
    .Y(_839_)
);

NAND2X1 _2207_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(\u_cpu.bufreg2.dhi [3]),
    .Y(_838_)
);

NOR2X1 _2208_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_838_),
    .B(_1062__bF$buf1),
    .Y(_837_)
);

OAI21X1 _2209_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_837_),
    .B(_839_),
    .C(_1058__bF$buf4),
    .Y(_836_)
);

MUX2X1 _2210_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [27]),
    .B(\u_cpu.ctrl.o_ibus_adr [27]),
    .S(_1052__bF$buf2),
    .Y(_835_)
);

OAI21X1 _2211_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf3),
    .B(_835_),
    .C(_836_),
    .Y(_834_)
);

MUX2X1 _2212_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_834_),
    .B(\u_mem_serial.shift_reg [27]),
    .S(_1067__bF$buf2),
    .Y(_833_)
);

NOR2X1 _2213_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf2),
    .B(_833_),
    .Y(_1482_)
);

INVX1 _2214_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [27]),
    .Y(_832_)
);

NOR2X1 _2215_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_832_),
    .B(_1040__bF$buf3),
    .Y(_831_)
);

NAND2X1 _2216_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf0 ),
    .B(\u_cpu.bufreg2.dhi [4]),
    .Y(_830_)
);

NOR2X1 _2217_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_830_),
    .B(_1062__bF$buf0),
    .Y(_829_)
);

OAI21X1 _2218_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_829_),
    .B(_831_),
    .C(_1058__bF$buf2),
    .Y(_828_)
);

MUX2X1 _2219_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [28]),
    .B(\u_cpu.ctrl.o_ibus_adr [28]),
    .S(_1052__bF$buf1),
    .Y(_827_)
);

OAI21X1 _2220_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf1),
    .B(_827_),
    .C(_828_),
    .Y(_826_)
);

MUX2X1 _2221_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_826_),
    .B(\u_mem_serial.shift_reg [28]),
    .S(_1067__bF$buf1),
    .Y(_825_)
);

NOR2X1 _2222_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf1),
    .B(_825_),
    .Y(_1481_)
);

INVX1 _2223_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [28]),
    .Y(_824_)
);

NOR2X1 _2224_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_824_),
    .B(_1040__bF$buf2),
    .Y(_823_)
);

NAND2X1 _2225_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf4 ),
    .B(\u_cpu.bufreg2.dhi [5]),
    .Y(_822_)
);

NOR2X1 _2226_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_822_),
    .B(_1062__bF$buf4),
    .Y(_821_)
);

OAI21X1 _2227_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_821_),
    .B(_823_),
    .C(_1058__bF$buf0),
    .Y(_820_)
);

MUX2X1 _2228_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [29]),
    .B(\u_cpu.ctrl.o_ibus_adr [29]),
    .S(_1052__bF$buf0),
    .Y(_819_)
);

OAI21X1 _2229_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf6),
    .B(_819_),
    .C(_820_),
    .Y(_818_)
);

MUX2X1 _2230_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_818_),
    .B(\u_mem_serial.shift_reg [29]),
    .S(_1067__bF$buf0),
    .Y(_817_)
);

NOR2X1 _2231_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf0),
    .B(_817_),
    .Y(_1480_)
);

INVX1 _2232_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [29]),
    .Y(_816_)
);

NOR2X1 _2233_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_816_),
    .B(_1040__bF$buf1),
    .Y(_815_)
);

NAND2X1 _2234_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf3 ),
    .B(\u_cpu.bufreg2.dhi [6]),
    .Y(_814_)
);

NOR2X1 _2235_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_814_),
    .B(_1062__bF$buf3),
    .Y(_813_)
);

OAI21X1 _2236_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_813_),
    .B(_815_),
    .C(_1058__bF$buf5),
    .Y(_812_)
);

MUX2X1 _2237_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [30]),
    .B(\u_cpu.ctrl.o_ibus_adr [30]),
    .S(_1052__bF$buf4),
    .Y(_811_)
);

OAI21X1 _2238_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf4),
    .B(_811_),
    .C(_812_),
    .Y(_810_)
);

MUX2X1 _2239_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_810_),
    .B(\u_mem_serial.shift_reg [30]),
    .S(_1067__bF$buf4),
    .Y(_809_)
);

NOR2X1 _2240_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf7),
    .B(_809_),
    .Y(_1479_)
);

OAI21X1 _2241_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1064_),
    .B(_1071_),
    .C(_1058__bF$buf3),
    .Y(_808_)
);

AOI21X1 _2242_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1107_),
    .B(_808_),
    .C(_1126__bF$buf6),
    .Y(_1478_)
);

INVX1 _2243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1910_),
    .Y(_807_)
);

NOR2X1 _2244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast_bF$buf7),
    .B(_807_),
    .Y(_1909_)
);

INVX1 _2245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [3]),
    .Y(_806_)
);

NOR2X1 _2246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [1]),
    .B(\u_rf_serial.tx_state [0]),
    .Y(_805_)
);

INVX1 _2247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .Y(_804_)
);

NOR2X1 _2248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [2]),
    .B(_804_),
    .Y(_803_)
);

NOR2X1 _2249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [3]),
    .B(\u_rf_serial.tx_state [2]),
    .Y(_802_)
);

NAND2X1 _2250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_802_),
    .Y(_801_)
);

OAI21X1 _2251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_806_),
    .B(_803_),
    .C(_801_),
    .Y(_800_)
);

INVX1 _2252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_803_),
    .Y(_799_)
);

OAI21X1 _2253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [1]),
    .B(\u_rf_serial.tx_state [0]),
    .C(\u_rf_serial.tx_state [2]),
    .Y(_798_)
);

NAND2X1 _2254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_798_),
    .B(_799_),
    .Y(_797_)
);

INVX1 _2255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_797_),
    .Y(_796_)
);

INVX2 _2256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .Y(_795_)
);

NOR2X1 _2257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_1118_),
    .Y(_794_)
);

INVX1 _2258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_794_),
    .Y(_793_)
);

NAND2X1 _2259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_792_)
);

NOR2X1 _2260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .Y(_791_)
);

INVX1 _2261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_790_)
);

INVX2 _2262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_789_)
);

NAND2X1 _2263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_790_),
    .B(_789_),
    .Y(_788_)
);

NAND3X1 _2264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_792_),
    .B(_791_),
    .C(_788_),
    .Y(_787_)
);

AOI21X1 _2265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_787_),
    .B(\u_cpu.decode.opcode [2]),
    .C(\u_cpu.state.init_done ),
    .Y(_786_)
);

INVX2 _2266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_785_)
);

NAND3X1 _2267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .C(\u_cpu.state.o_cnt [2]),
    .Y(_784_)
);

NOR2X1 _2268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_785_),
    .B(_784_),
    .Y(_783_)
);

NAND2X1 _2269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_783_),
    .Y(_782_)
);

AOI21X1 _2270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_786_),
    .B(_782_),
    .C(_793_),
    .Y(_781_)
);

INVX1 _2271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_780_)
);

INVX1 _2272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_783_),
    .Y(_779_)
);

OAI21X1 _2273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_780_),
    .B(_779_),
    .C(_786_),
    .Y(_778_)
);

INVX1 _2274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_777_)
);

INVX1 _2275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_776_)
);

INVX1 _2276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_775_)
);

NOR2X1 _2277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_774_)
);

NAND3X1 _2278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_776_),
    .B(_775_),
    .C(_774_),
    .Y(_773_)
);

OAI21X1 _2279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_773_),
    .C(_777_),
    .Y(_772_)
);

INVX1 _2280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_771_)
);

INVX1 _2281_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_773_),
    .Y(_770_)
);

NAND3X1 _2282_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_771_),
    .B(\u_cpu.bufreg2.dhi [5]),
    .C(_770_),
    .Y(_769_)
);

NAND2X1 _2283_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_772_),
    .B(_769_),
    .Y(_768_)
);

NAND3X1 _2284_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_794_),
    .B(_778_),
    .C(_768_),
    .Y(_767_)
);

OAI21X1 _2285_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .B(_781_),
    .C(_767_),
    .Y(_766_)
);

NAND2X1 _2286_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_783_),
    .B(_786_),
    .Y(_765_)
);

OAI21X1 _2287_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_780_),
    .B(_1120_),
    .C(_765_),
    .Y(_764_)
);

NAND2X1 _2288_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_794_),
    .B(_764_),
    .Y(_763_)
);

AOI21X1 _2289_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_766_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_763_),
    .Y(_762_)
);

INVX2 _2290_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .Y(_761_)
);

NOR2X1 _2291_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_789_),
    .Y(_760_)
);

NOR2X1 _2292_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_1118_),
    .Y(_759_)
);

AOI21X1 _2293_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_760_),
    .B(_759_),
    .C(\u_cpu.branch_op ),
    .Y(_758_)
);

OAI21X1 _2294_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_758_),
    .B(_765_),
    .C(_761_),
    .Y(_757_)
);

NOR2X1 _2295_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_757_),
    .B(_762_),
    .Y(_756_)
);

INVX1 _2296_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_write_drain_busy),
    .Y(_755_)
);

INVX2 _2297_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1121_),
    .Y(_754_)
);

INVX1 _2298_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_786_),
    .Y(_753_)
);

NAND2X1 _2299_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_754_),
    .B(_753_),
    .Y(_752_)
);

INVX1 _2300_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_751_)
);

INVX1 _2301_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_750_)
);

NAND2X1 _2302_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_751_),
    .B(_750_),
    .Y(_749_)
);

INVX1 _2303_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .Y(_748_)
);

INVX1 _2304_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .Y(_747_)
);

INVX1 _2305_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .Y(_746_)
);

NAND3X1 _2306_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_748_),
    .B(_747_),
    .C(_746_),
    .Y(_745_)
);

INVX2 _2307_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .Y(_744_)
);

NOR2X1 _2308_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_744_),
    .Y(_743_)
);

INVX1 _2309_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_742_)
);

NOR2X1 _2310_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_742_),
    .Y(_741_)
);

OAI21X1 _2311_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_743_),
    .B(_741_),
    .C(_1118_),
    .Y(_740_)
);

OAI21X1 _2312_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_749_),
    .B(_745_),
    .C(_740_),
    .Y(_739_)
);

NOR2X1 _2313_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_739_),
    .B(_752_),
    .Y(_738_)
);

OAI21X1 _2314_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_757_),
    .B(_762_),
    .C(_738_),
    .Y(_737_)
);

INVX1 _2315_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(_736_)
);

INVX1 _2316_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf6),
    .Y(_735_)
);

NAND2X1 _2317_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_736_),
    .B(_735_),
    .Y(_734_)
);

NAND3X1 _2318_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_755_),
    .B(_734_),
    .C(_737_),
    .Y(_733_)
);

NAND3X1 _2319_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .B(_756_),
    .C(_733__bF$buf5),
    .Y(_732_)
);

NOR2X1 _2320_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf2),
    .B(_746_),
    .Y(_731_)
);

AOI22X1 _2321_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .B(ren_bF$buf1),
    .C(_732_),
    .D(_731_),
    .Y(_730_)
);

INVX1 _2322_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [1]),
    .Y(_729_)
);

NOR2X1 _2323_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_729_),
    .Y(_728_)
);

INVX1 _2324_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_728_),
    .Y(_727_)
);

OAI22X1 _2325_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_795_),
    .B(_804_),
    .C(_727_),
    .D(_730_),
    .Y(_726_)
);

INVX1 _2326_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .Y(_725_)
);

NOR2X1 _2327_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [1]),
    .B(_725_),
    .Y(_724_)
);

INVX1 _2328_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_724_),
    .Y(_723_)
);

NOR2X1 _2329_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf0),
    .B(_747_),
    .Y(_722_)
);

AOI22X1 _2330_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[6]),
    .B(ren_bF$buf3),
    .C(_732_),
    .D(_722_),
    .Y(_721_)
);

NOR2X1 _2331_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_729_),
    .B(_725_),
    .Y(_720_)
);

INVX1 _2332_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_720_),
    .Y(_719_)
);

NOR2X1 _2333_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf2),
    .B(_751_),
    .Y(_718_)
);

AOI22X1 _2334_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[8]),
    .B(ren_bF$buf1),
    .C(_732_),
    .D(_718_),
    .Y(_717_)
);

OAI22X1 _2335_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_723_),
    .B(_721_),
    .C(_719_),
    .D(_717_),
    .Y(_716_)
);

OAI21X1 _2336_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_726_),
    .B(_716_),
    .C(_796_),
    .Y(_715_)
);

INVX1 _2337_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen0_r ),
    .Y(_714_)
);

INVX1 _2338_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rtrig1 ),
    .Y(_713_)
);

NOR2X1 _2339_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_714_),
    .B(_713_),
    .Y(_712_)
);

INVX2 _2340_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_712_),
    .Y(_711_)
);

NAND2X1 _2341_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [2]),
    .B(_724_),
    .Y(_710_)
);

OAI21X1 _2342_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_711_),
    .B(_710_),
    .C(_715_),
    .Y(_709_)
);

NAND2X1 _2343_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_800_),
    .B(_709_),
    .Y(_708_)
);

INVX1 _2344_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(current_wdata0_next_hint),
    .Y(_707_)
);

NOR2X1 _2345_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_788_),
    .Y(_706_)
);

AND2X2 _2346_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_791_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_705_)
);

AOI21X1 _2347_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.bufreg.i_sh_signed ),
    .C(_788_),
    .Y(_704_)
);

NAND3X1 _2348_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_705_),
    .B(_706_),
    .C(_704_),
    .Y(_703_)
);

NAND2X1 _2349_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_707_),
    .B(_703_),
    .Y(_702_)
);

INVX1 _2350_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .Y(_701_)
);

NOR2X1 _2351_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_700_)
);

NOR2X1 _2352_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_699_)
);

NAND2X1 _2353_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_700_),
    .B(_699_),
    .Y(_698_)
);

NAND2X1 _2354_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_698_),
    .Y(_697_)
);

OAI21X1 _2355_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_701_),
    .B(_698_),
    .C(_697_),
    .Y(_696_)
);

NAND2X1 _2356_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_696_),
    .B(_702_),
    .Y(_695_)
);

INVX1 _2357_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_695_),
    .Y(_694_)
);

NAND2X1 _2358_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_743_),
    .Y(_693_)
);

INVX1 _2359_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_692_)
);

INVX1 _2360_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [1]),
    .Y(_691_)
);

NAND3X1 _2361_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_744_),
    .B(_1118_),
    .C(_691_),
    .Y(_690_)
);

INVX1 _2362_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_690_),
    .Y(_689_)
);

INVX1 _2363_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_688_)
);

NAND2X1 _2364_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_687_)
);

NOR2X1 _2365_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_686_)
);

AOI21X1 _2366_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_686_),
    .Y(_685_)
);

OAI21X1 _2367_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_688_),
    .B(_687_),
    .C(_685_),
    .Y(_684_)
);

OAI21X1 _2368_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_689_),
    .B(_684_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_683_)
);

OR2X2 _2369_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_683_),
    .B(_692_),
    .Y(_682_)
);

NAND2X1 _2370_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_692_),
    .B(_683_),
    .Y(_681_)
);

NAND2X1 _2371_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_681_),
    .B(_682_),
    .Y(_680_)
);

INVX1 _2372_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_680_),
    .Y(_679_)
);

INVX1 _2373_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[0]),
    .Y(_678_)
);

OAI21X1 _2374_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_742_),
    .B(_690_),
    .C(_678_),
    .Y(_677_)
);

NAND3X1 _2375_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_750_),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .C(_689_),
    .Y(_676_)
);

NAND3X1 _2376_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_779_),
    .B(_677_),
    .C(_676_),
    .Y(_675_)
);

OR2X2 _2377_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_687_),
    .B(_780_),
    .Y(_674_)
);

NAND3X1 _2378_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_783_),
    .C(_674_),
    .Y(_673_)
);

NAND2X1 _2379_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_673_),
    .B(_675_),
    .Y(_672_)
);

INVX1 _2380_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_671_)
);

INVX1 _2381_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_670_)
);

OAI21X1 _2382_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_671_),
    .B(_670_),
    .C(_785_),
    .Y(_669_)
);

AOI21X1 _2383_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_672_),
    .B(_669_),
    .C(_693_),
    .Y(_668_)
);

INVX1 _2384_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_668_),
    .Y(_667_)
);

INVX1 _2385_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .Y(_666_)
);

OAI21X1 _2386_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1119_),
    .B(\u_cpu.decode.opcode [2]),
    .C(_753_),
    .Y(_665_)
);

NAND2X1 _2387_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_780_),
    .B(_766_),
    .Y(_664_)
);

NAND2X1 _2388_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .B(_794_),
    .Y(_663_)
);

INVX1 _2389_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_663_),
    .Y(_662_)
);

AOI22X1 _2390_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_754_),
    .B(_665_),
    .C(_664_),
    .D(_662_),
    .Y(_661_)
);

OAI21X1 _2391_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_666_),
    .B(_661__bF$buf4),
    .C(_693_),
    .Y(_660_)
);

NAND3X1 _2392_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_679_),
    .B(_667_),
    .C(_660_),
    .Y(_659_)
);

NOR2X1 _2393_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_658_)
);

INVX1 _2394_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_658_),
    .Y(_657_)
);

NOR2X1 _2395_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(_657_),
    .Y(_656_)
);

NAND2X1 _2396_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(_656_),
    .Y(_655_)
);

NAND2X1 _2397_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_754_),
    .B(_665_),
    .Y(_649_)
);

INVX1 _2398_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_648_)
);

MUX2X1 _2399_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_768_),
    .B(_648_),
    .S(_781_),
    .Y(_626_)
);

OAI21X1 _2400_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_626_),
    .C(_662_),
    .Y(_625_)
);

NAND2X1 _2401_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_649_),
    .B(_625_),
    .Y(_624_)
);

AOI22X1 _2402_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(_743_),
    .C(_624_),
    .D(\u_cpu.bufreg.data [0]),
    .Y(_623_)
);

OAI21X1 _2403_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_668_),
    .B(_623_),
    .C(_680_),
    .Y(_622_)
);

NAND3X1 _2404_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_659_),
    .B(_655_),
    .C(_622_),
    .Y(_621_)
);

INVX1 _2405_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_620_)
);

INVX2 _2406_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_619_)
);

NOR2X1 _2407_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_620_),
    .B(_619_),
    .Y(_1130_)
);

NAND2X1 _2408_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(_1130_),
    .Y(_1132_)
);

OR2X2 _2409_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(\u_cpu.alu.add_cy_r ),
    .Y(_1133_)
);

NAND2X1 _2410_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1132_),
    .B(_1133_),
    .Y(_1139_)
);

INVX1 _2411_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1139_),
    .Y(_1140_)
);

NAND2X1 _2412_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1119_),
    .B(_704_),
    .Y(_1141_)
);

INVX1 _2413_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [0]),
    .Y(_1142_)
);

OAI21X1 _2414_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1142_),
    .B(_619_),
    .C(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_1143_)
);

NAND3X1 _2415_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_742_),
    .B(_673_),
    .C(_675_),
    .Y(_1144_)
);

AOI21X1 _2416_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1144_),
    .B(_1143_),
    .C(_1141_),
    .Y(_1145_)
);

NAND3X1 _2417_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1141_),
    .B(_1143_),
    .C(_1144_),
    .Y(_1146_)
);

INVX1 _2418_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1146_),
    .Y(_1180_)
);

NOR2X1 _2419_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1145_),
    .B(_1180_),
    .Y(_1317_)
);

NAND2X1 _2420_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1140_),
    .B(_1317_),
    .Y(_1476_)
);

OAI21X1 _2421_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1145_),
    .B(_1180_),
    .C(_1139_),
    .Y(_1477_)
);

NAND3X1 _2422_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_706_),
    .B(_1477_),
    .C(_1476_),
    .Y(_1516_)
);

INVX1 _2423_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .Y(_1517_)
);

OAI21X1 _2424_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_672_),
    .C(_1143_),
    .Y(_1518_)
);

OR2X2 _2425_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1518_),
    .B(_1517_),
    .Y(_1519_)
);

OAI21X1 _2426_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1517_),
    .B(_1518_),
    .C(_790_),
    .Y(_1520_)
);

OAI21X1 _2427_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_789_),
    .B(_1519_),
    .C(_1520_),
    .Y(_1521_)
);

OAI21X1 _2428_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_620_),
    .B(_619_),
    .C(_1518_),
    .Y(_1522_)
);

NAND3X1 _2429_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_1522_),
    .C(_1521_),
    .Y(_1523_)
);

INVX1 _2430_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_655_),
    .Y(_1524_)
);

NAND2X1 _2431_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_760_),
    .Y(_1525_)
);

INVX1 _2432_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1525_),
    .Y(_1526_)
);

AOI22X1 _2433_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1524_),
    .B(_1526_),
    .C(_624_),
    .D(\u_cpu.bufreg.data [0]),
    .Y(_1527_)
);

NAND3X1 _2434_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1527_),
    .B(_1523_),
    .C(_1516_),
    .Y(_1528_)
);

OAI21X1 _2435_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .C(_789_),
    .Y(_1529_)
);

AOI21X1 _2436_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_785_),
    .B(\u_cpu.bne_or_bge ),
    .C(_1529_),
    .Y(_1530_)
);

INVX1 _2437_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530_),
    .Y(_1531_)
);

NAND2X1 _2438_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_1532_)
);

NAND3X1 _2439_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_666_),
    .Y(_1533_)
);

OAI21X1 _2440_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_1532_),
    .C(_1533_),
    .Y(_1534_)
);

INVX1 _2441_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1535_)
);

NAND3X1 _2442_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [0]),
    .B(_666_),
    .C(_1535_),
    .Y(_1536_)
);

NAND2X1 _2443_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_1537_)
);

OAI21X1 _2444_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1535_),
    .B(_1537_),
    .C(_1536_),
    .Y(_1538_)
);

OAI21X1 _2445_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1534_),
    .B(_1538_),
    .C(_1531_),
    .Y(_1539_)
);

NAND2X1 _2446_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.mem_if.signbit ),
    .B(_1530_),
    .Y(_1540_)
);

OAI21X1 _2447_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_1540_),
    .C(_1539_),
    .Y(_1541_)
);

NAND3X1 _2448_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_744_),
    .B(_1118_),
    .C(_1541_),
    .Y(_1542_)
);

NAND2X1 _2449_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [2]),
    .B(_656_),
    .Y(_1543_)
);

INVX1 _2450_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .Y(_1544_)
);

INVX1 _2451_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1545_)
);

NOR2X1 _2452_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1544_),
    .B(_1545_),
    .Y(_1546_)
);

NOR2X1 _2453_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1547_)
);

NOR2X1 _2454_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1547_),
    .B(_1546_),
    .Y(_1548_)
);

INVX1 _2455_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1548_),
    .Y(_1549_)
);

NOR2X1 _2456_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1549_),
    .B(_1543_),
    .Y(_1550_)
);

INVX1 _2457_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1550_),
    .Y(_1551_)
);

OAI21X1 _2458_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1546_),
    .B(_1547_),
    .C(_1543_),
    .Y(_1552_)
);

NAND2X1 _2459_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1552_),
    .B(_1551_),
    .Y(_1553_)
);

NAND2X1 _2460_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .Y(_1554_)
);

OAI21X1 _2461_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1554_),
    .B(_1553_),
    .C(_1542_),
    .Y(_1555_)
);

AOI21X1 _2462_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1528_),
    .B(_705_),
    .C(_1555_),
    .Y(_1556_)
);

OAI21X1 _2463_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_693_),
    .B(_621_),
    .C(_1556_),
    .Y(_1557_)
);

INVX1 _2464_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_1558_)
);

OAI21X1 _2465_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1558_),
    .B(_694_),
    .C(_725_),
    .Y(_1559_)
);

AOI21X1 _2466_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1557_),
    .B(_694_),
    .C(_1559_),
    .Y(_1560_)
);

NOR2X1 _2467_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_720_),
    .Y(_1561_)
);

AOI21X1 _2468_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_695_),
    .B(\u_rf_if.wdata0_r [0]),
    .C(_725_),
    .Y(_1562_)
);

OAI21X1 _2469_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1558_),
    .B(_695_),
    .C(_1562_),
    .Y(_1563_)
);

NAND3X1 _2470_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1561_),
    .B(_1563_),
    .C(_732_),
    .Y(_1564_)
);

OR2X2 _2471_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_795_),
    .B(raddr[1]),
    .Y(_1565_)
);

OAI21X1 _2472_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .B(ren_bF$buf0),
    .C(_1565_),
    .Y(_1566_)
);

INVX1 _2473_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1566_),
    .Y(_1567_)
);

INVX1 _2474_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_1568_)
);

NAND2X1 _2475_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1568_),
    .B(_795_),
    .Y(_1569_)
);

OAI21X1 _2476_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[0]),
    .B(_795_),
    .C(_1569_),
    .Y(_1570_)
);

OAI21X1 _2477_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_719_),
    .B(_1570_),
    .C(_796_),
    .Y(_1571_)
);

AOI21X1 _2478_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_1567_),
    .C(_1571_),
    .Y(_1572_)
);

OAI21X1 _2479_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1564_),
    .B(_1560_),
    .C(_1572_),
    .Y(_1573_)
);

NOR2X1 _2480_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(_748_),
    .Y(_1574_)
);

AOI22X1 _2481_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[5]),
    .B(ren_bF$buf2),
    .C(_732_),
    .D(_1574_),
    .Y(_1575_)
);

OR2X2 _2482_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1575_),
    .B(_804_),
    .Y(_1576_)
);

NOR2X1 _2483_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf1),
    .B(_750_),
    .Y(_1577_)
);

AOI22X1 _2484_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[4]),
    .B(ren_bF$buf0),
    .C(_732_),
    .D(_1577_),
    .Y(_1578_)
);

NOR2X1 _2485_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_719_),
    .B(_1578_),
    .Y(_1579_)
);

INVX1 _2486_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .Y(_1580_)
);

NAND2X1 _2487_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1580_),
    .B(_795_),
    .Y(_1581_)
);

OAI21X1 _2488_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[2]),
    .B(_795_),
    .C(_1581_),
    .Y(_1582_)
);

INVX1 _2489_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .Y(_1583_)
);

NAND2X1 _2490_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1583_),
    .B(_795_),
    .Y(_1584_)
);

OAI21X1 _2491_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[3]),
    .B(_795_),
    .C(_1584_),
    .Y(_1585_)
);

INVX1 _2492_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1585_),
    .Y(_1586_)
);

AOI21X1 _2493_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_728_),
    .B(_1586_),
    .C(_796_),
    .Y(_1587_)
);

OAI21X1 _2494_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_723_),
    .B(_1582_),
    .C(_1587_),
    .Y(_1588_)
);

NOR2X1 _2495_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1588_),
    .B(_1579_),
    .Y(_1589_)
);

AOI21X1 _2496_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1589_),
    .B(_1576_),
    .C(_800_),
    .Y(_1590_)
);

NAND2X1 _2497_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1590_),
    .B(_1573_),
    .Y(_1591_)
);

AOI21X1 _2498_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1591_),
    .B(_708_),
    .C(_807_),
    .Y(_1908_)
);

INVX1 _2499_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [4]),
    .Y(_1592_)
);

INVX1 _2500_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_801_),
    .Y(_1593_)
);

NAND2X1 _2501_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1592_),
    .B(_1593_),
    .Y(_1594_)
);

OAI21X1 _2502_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(_712_),
    .C(\u_rf_serial.launch_pending ),
    .Y(_1595_)
);

NOR2X1 _2503_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1595_),
    .B(_1594_),
    .Y(_1596_)
);

INVX2 _2504_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1596_),
    .Y(_1597_)
);

OAI21X1 _2505_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [10]),
    .Y(_1598_)
);

OAI21X1 _2506_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_711_),
    .B(_1597_),
    .C(_1598_),
    .Y(_1599_)
);

AND2X2 _2507_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1599_),
    .B(i_rst_n_bF$buf10),
    .Y(_1475_)
);

INVX1 _2508_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1594_),
    .Y(_1600_)
);

AOI21X1 _2509_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_711_),
    .B(_795_),
    .C(\u_rf_serial.launch_pending ),
    .Y(_1601_)
);

NOR2X1 _2510_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [6]),
    .B(_721_),
    .Y(_1602_)
);

NAND2X1 _2511_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[4]),
    .B(ren_bF$buf2),
    .Y(_1603_)
);

NAND2X1 _2512_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1577_),
    .B(_732_),
    .Y(_1604_)
);

NAND3X1 _2513_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [4]),
    .B(_1603_),
    .C(_1604_),
    .Y(_1605_)
);

OAI21X1 _2514_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [5]),
    .B(_1575_),
    .C(_1605_),
    .Y(_1606_)
);

NOR2X1 _2515_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1602_),
    .B(_1606_),
    .Y(_1607_)
);

NAND2X1 _2516_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[8]),
    .B(ren_bF$buf1),
    .Y(_1608_)
);

NAND2X1 _2517_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_718_),
    .B(_732_),
    .Y(_1609_)
);

NAND3X1 _2518_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [8]),
    .B(_1608_),
    .C(_1609_),
    .Y(_1610_)
);

OAI21X1 _2519_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [7]),
    .B(_730_),
    .C(_1610_),
    .Y(_1611_)
);

NAND2X1 _2520_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[6]),
    .B(ren_bF$buf0),
    .Y(_1612_)
);

NAND2X1 _2521_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_722_),
    .B(_732_),
    .Y(_1613_)
);

NAND3X1 _2522_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [6]),
    .B(_1612_),
    .C(_1613_),
    .Y(_1614_)
);

OAI21X1 _2523_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [4]),
    .B(_1578_),
    .C(_1614_),
    .Y(_1615_)
);

NOR2X1 _2524_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1611_),
    .B(_1615_),
    .Y(_1616_)
);

NAND2X1 _2525_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [2]),
    .B(_1582_),
    .Y(_1617_)
);

OR2X2 _2526_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1582_),
    .B(\u_rf_serial.last_req_key [2]),
    .Y(_1618_)
);

INVX1 _2527_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [3]),
    .Y(_1619_)
);

AOI22X1 _2528_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [0]),
    .B(_1570_),
    .C(_1586_),
    .D(_1619_),
    .Y(_1620_)
);

NAND3X1 _2529_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1617_),
    .B(_1618_),
    .C(_1620_),
    .Y(_1621_)
);

OAI21X1 _2530_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_714_),
    .B(_713_),
    .C(\u_rf_serial.last_req_key [10]),
    .Y(_1622_)
);

OR2X2 _2531_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_711_),
    .B(\u_rf_serial.last_req_key [10]),
    .Y(_1623_)
);

AND2X2 _2532_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1623_),
    .B(_1622_),
    .Y(_1624_)
);

INVX1 _2533_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [9]),
    .Y(_1625_)
);

OAI21X1 _2534_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(_1625_),
    .C(\u_rf_serial.req_seen ),
    .Y(_1626_)
);

AOI21X1 _2535_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1625_),
    .B(ren_bF$buf2),
    .C(_1626_),
    .Y(_1627_)
);

NAND2X1 _2536_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [1]),
    .B(_1566_),
    .Y(_1628_)
);

OAI21X1 _2537_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [0]),
    .B(_1570_),
    .C(_1628_),
    .Y(_1629_)
);

OAI22X1 _2538_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [1]),
    .B(_1566_),
    .C(_1619_),
    .D(_1586_),
    .Y(_1630_)
);

NOR2X1 _2539_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1630_),
    .B(_1629_),
    .Y(_1631_)
);

NAND3X1 _2540_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1624_),
    .B(_1627_),
    .C(_1631_),
    .Y(_1632_)
);

NOR2X1 _2541_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1621_),
    .B(_1632_),
    .Y(_1633_)
);

OAI21X1 _2542_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [8]),
    .B(_717_),
    .C(_1633_),
    .Y(_1634_)
);

NAND2X1 _2543_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[5]),
    .B(ren_bF$buf1),
    .Y(_1635_)
);

NAND2X1 _2544_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1574_),
    .B(_732_),
    .Y(_1636_)
);

NAND3X1 _2545_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [5]),
    .B(_1635_),
    .C(_1636_),
    .Y(_1637_)
);

NAND2X1 _2546_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .B(ren_bF$buf0),
    .Y(_1638_)
);

NAND2X1 _2547_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_731_),
    .B(_732_),
    .Y(_1639_)
);

NAND3X1 _2548_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [7]),
    .B(_1638_),
    .C(_1639_),
    .Y(_1640_)
);

NAND2X1 _2549_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1637_),
    .B(_1640_),
    .Y(_1641_)
);

NOR2X1 _2550_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1634_),
    .B(_1641_),
    .Y(_1642_)
);

NAND3X1 _2551_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1642_),
    .B(_1607_),
    .C(_1616_),
    .Y(_1643_)
);

NAND2X1 _2552_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1601_),
    .B(_1643_),
    .Y(_1644_)
);

INVX1 _2553_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1595_),
    .Y(_1645_)
);

OAI21X1 _2554_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1645_),
    .B(_1600_),
    .C(i_rst_n_bF$buf9),
    .Y(_1646_)
);

AOI21X1 _2555_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1644_),
    .B(_1600_),
    .C(_1646_),
    .Y(_1474_)
);

OAI21X1 _2556_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(_712_),
    .C(\u_rf_serial.req_seen ),
    .Y(_1647_)
);

AOI21X1 _2557_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1597_),
    .B(_1647_),
    .C(_1126__bF$buf5),
    .Y(_1473_)
);

NAND2X1 _2558_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf8),
    .B(\u_rf_serial.tx_state [4]),
    .Y(_1648_)
);

NOR2X1 _2559_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1648_),
    .B(_1593_),
    .Y(_1472_)
);

INVX1 _2560_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rf_miso),
    .Y(_1649_)
);

INVX1 _2561_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [2]),
    .Y(_1650_)
);

NAND3X1 _2562_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_806_),
    .B(_1650_),
    .C(_1592_),
    .Y(_1651_)
);

NOR2X1 _2563_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1651_),
    .B(_719_),
    .Y(_1652_)
);

OAI21X1 _2564_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.shift_rx [1]),
    .B(_1652_),
    .C(i_rst_n_bF$buf7),
    .Y(_1653_)
);

AOI21X1 _2565_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1649_),
    .B(_1652_),
    .C(_1653_),
    .Y(_1471_)
);

NOR2X1 _2566_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1594_),
    .B(_1645_),
    .Y(_1654_)
);

OR2X2 _2567_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1651_),
    .B(\u_rf_serial.tx_state [1]),
    .Y(_1655_)
);

OAI21X1 _2568_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1655_),
    .B(_1654_),
    .C(_1910_),
    .Y(_1656_)
);

AOI21X1 _2569_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1656_),
    .B(_1597_),
    .C(_1126__bF$buf4),
    .Y(_1470_)
);

NOR2X1 _2570_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1651_),
    .B(_727_),
    .Y(_1657_)
);

NAND2X1 _2571_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1649_),
    .B(_1657_),
    .Y(_1658_)
);

INVX1 _2572_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.shift_rx [0]),
    .Y(_1659_)
);

OAI21X1 _2573_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1651_),
    .B(_727_),
    .C(_1659_),
    .Y(_1660_)
);

NAND3X1 _2574_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf6),
    .B(_1660_),
    .C(_1658_),
    .Y(_1661_)
);

INVX1 _2575_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1661_),
    .Y(_1469_)
);

NOR2X1 _2576_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_1126__bF$buf3),
    .Y(_1662_)
);

OAI21X1 _2577_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1594_),
    .B(_1645_),
    .C(_1662_),
    .Y(_1663_)
);

INVX1 _2578_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1663_),
    .Y(_1468_)
);

OAI21X1 _2579_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_720_),
    .C(i_rst_n_bF$buf5),
    .Y(_1664_)
);

NOR2X1 _2580_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1664_),
    .B(_1600_),
    .Y(_1467_)
);

OAI21X1 _2581_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1594_),
    .B(_1645_),
    .C(_797_),
    .Y(_1665_)
);

NOR2X1 _2582_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf2),
    .B(_1665_),
    .Y(_1466_)
);

NAND2X1 _2583_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf4),
    .B(_800_),
    .Y(_1666_)
);

NOR2X1 _2584_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1654_),
    .B(_1666_),
    .Y(_1465_)
);

OAI21X1 _2585_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [0]),
    .Y(_1667_)
);

OAI21X1 _2586_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1570_),
    .B(_1597_),
    .C(_1667_),
    .Y(_1668_)
);

AND2X2 _2587_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1668_),
    .B(i_rst_n_bF$buf3),
    .Y(_1464_)
);

OAI21X1 _2588_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [1]),
    .Y(_1669_)
);

OAI21X1 _2589_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1566_),
    .B(_1597_),
    .C(_1669_),
    .Y(_1670_)
);

AND2X2 _2590_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1670_),
    .B(i_rst_n_bF$buf2),
    .Y(_1463_)
);

OAI21X1 _2591_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [2]),
    .Y(_1671_)
);

OAI21X1 _2592_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1582_),
    .B(_1597_),
    .C(_1671_),
    .Y(_1672_)
);

AND2X2 _2593_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1672_),
    .B(i_rst_n_bF$buf1),
    .Y(_1462_)
);

NAND2X1 _2594_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1586_),
    .B(_1596_),
    .Y(_1673_)
);

OAI21X1 _2595_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [3]),
    .Y(_1674_)
);

AOI21X1 _2596_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1673_),
    .B(_1674_),
    .C(_1126__bF$buf1),
    .Y(_1461_)
);

OAI21X1 _2597_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [4]),
    .B(_1596_),
    .C(i_rst_n_bF$buf0),
    .Y(_1675_)
);

AOI21X1 _2598_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1578_),
    .B(_1596_),
    .C(_1675_),
    .Y(_1460_)
);

OAI21X1 _2599_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [5]),
    .B(_1596_),
    .C(i_rst_n_bF$buf10),
    .Y(_1676_)
);

AOI21X1 _2600_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1575_),
    .B(_1596_),
    .C(_1676_),
    .Y(_1459_)
);

OAI21X1 _2601_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [6]),
    .B(_1596_),
    .C(i_rst_n_bF$buf9),
    .Y(_1677_)
);

AOI21X1 _2602_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_721_),
    .B(_1596_),
    .C(_1677_),
    .Y(_1458_)
);

OAI21X1 _2603_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [7]),
    .B(_1596_),
    .C(i_rst_n_bF$buf8),
    .Y(_1678_)
);

AOI21X1 _2604_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_730_),
    .B(_1596_),
    .C(_1678_),
    .Y(_1457_)
);

OAI21X1 _2605_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [8]),
    .B(_1596_),
    .C(i_rst_n_bF$buf7),
    .Y(_1679_)
);

AOI21X1 _2606_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_717_),
    .B(_1596_),
    .C(_1679_),
    .Y(_1456_)
);

NAND2X1 _2607_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf2),
    .B(_1596_),
    .Y(_1680_)
);

OAI21X1 _2608_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1595_),
    .B(_1594_),
    .C(\u_rf_serial.last_req_key [9]),
    .Y(_1681_)
);

AOI21X1 _2609_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1680_),
    .B(_1681_),
    .C(_1126__bF$buf0),
    .Y(_1455_)
);

INVX1 _2610_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.pending_read ),
    .Y(_1682_)
);

INVX2 _2611_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.prefetch_active ),
    .Y(_1683_)
);

INVX1 _2612_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [4]),
    .Y(_1684_)
);

NOR2X1 _2613_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [3]),
    .B(\u_rf_if.write_wait [2]),
    .Y(_1685_)
);

NOR2X1 _2614_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1686_)
);

AND2X2 _2615_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1685_),
    .B(_1686_),
    .Y(_1687_)
);

NAND2X1 _2616_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1684_),
    .B(_1687_),
    .Y(_1688_)
);

NOR2X1 _2617_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [5]),
    .B(_1688_),
    .Y(_1689_)
);

NAND3X1 _2618_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.pending_read ),
    .B(_1683_),
    .C(_1689_),
    .Y(_1690_)
);

NAND2X1 _2619_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf6),
    .B(_1690_),
    .Y(_1691_)
);

AOI21X1 _2620_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733__bF$buf4),
    .B(_1682_),
    .C(_1691_),
    .Y(_1454_)
);

NAND2X1 _2621_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [4]),
    .B(_733__bF$buf3),
    .Y(_1692_)
);

INVX8 _2622_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733__bF$buf2),
    .Y(_1693_)
);

INVX1 _2623_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[24]),
    .Y(_1694_)
);

MUX2X1 _2624_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1694_),
    .B(_856_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_1695_)
);

NAND2X1 _2625_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1695_),
    .B(_1693__bF$buf5),
    .Y(_1696_)
);

AOI21X1 _2626_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1696_),
    .B(_1692_),
    .C(_1126__bF$buf7),
    .Y(_1453_)
);

INVX1 _2627_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .Y(_1697_)
);

INVX1 _2628_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .Y(_1698_)
);

INVX1 _2629_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [0]),
    .Y(_1699_)
);

NOR2X1 _2630_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1698_),
    .B(_1699_),
    .Y(_1700_)
);

INVX1 _2631_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [2]),
    .Y(_1701_)
);

INVX1 _2632_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .Y(_1702_)
);

NOR2X1 _2633_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1701_),
    .B(_1702_),
    .Y(_1703_)
);

NOR2X1 _2634_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .Y(_1704_)
);

NAND2X1 _2635_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1704__bF$buf3),
    .Y(_1705_)
);

INVX1 _2636_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1705_),
    .Y(_1706_)
);

NAND3X1 _2637_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1700_),
    .B(_1703_),
    .C(_1706_),
    .Y(_1707_)
);

AOI21X1 _2638_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .B(_1707_),
    .C(_1691_),
    .Y(_1452_)
);

OAI21X1 _2639_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_1114_),
    .C(\u_mem_serial.state [1]),
    .Y(_1708_)
);

NOR2X1 _2640_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_1708_),
    .Y(_1709_)
);

INVX1 _2641_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1709_),
    .Y(_1710_)
);

NOR2X1 _2642_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1709_),
    .B(_1102_),
    .Y(_1711_)
);

INVX1 _2643_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_808_),
    .Y(_1712_)
);

AOI21X1 _2644_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1112_),
    .B(_1111_),
    .C(_1712_),
    .Y(_1713_)
);

NAND3X1 _2645_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf2),
    .B(_1713_),
    .C(_1711_),
    .Y(_1714_)
);

AOI21X1 _2646_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1714_),
    .B(_1710_),
    .C(_1126__bF$buf6),
    .Y(_1451_)
);

INVX1 _2647_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [30]),
    .Y(_1715_)
);

NOR2X1 _2648_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715_),
    .B(_1040__bF$buf0),
    .Y(_1716_)
);

NAND2X1 _2649_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf2 ),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_1717_)
);

NOR2X1 _2650_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717_),
    .B(_1062__bF$buf2),
    .Y(_1718_)
);

OAI21X1 _2651_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1718_),
    .B(_1716_),
    .C(_1058__bF$buf1),
    .Y(_1719_)
);

MUX2X1 _2652_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [31]),
    .B(\u_cpu.ctrl.o_ibus_adr [31]),
    .S(_1052__bF$buf3),
    .Y(_1720_)
);

OAI21X1 _2653_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058__bF$buf0),
    .B(_1720_),
    .C(_1719_),
    .Y(_1721_)
);

MUX2X1 _2654_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1721_),
    .B(\u_mem_serial.shift_reg [31]),
    .S(_1067__bF$buf3),
    .Y(_1722_)
);

NOR2X1 _2655_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf5),
    .B(_1722_),
    .Y(_1450_)
);

NAND2X1 _2656_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [4]),
    .B(_733__bF$buf1),
    .Y(_1723_)
);

INVX1 _2657_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[19]),
    .Y(_1724_)
);

MUX2X1 _2658_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1724_),
    .B(_896_),
    .S(ibus_pending_ack_bF$buf4),
    .Y(_1725_)
);

NAND2X1 _2659_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1725_),
    .B(_1693__bF$buf4),
    .Y(_1726_)
);

AOI21X1 _2660_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1726_),
    .B(_1723_),
    .C(_1126__bF$buf4),
    .Y(_1449_)
);

NAND2X1 _2661_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf5),
    .B(_756_),
    .Y(_1727_)
);

INVX1 _2662_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_732_),
    .Y(_1728_)
);

NAND2X1 _2663_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen0_r ),
    .B(_1728_),
    .Y(_1729_)
);

NOR2X1 _2664_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1568_),
    .B(_1729_),
    .Y(_1730_)
);

NAND2X1 _2665_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_1730_),
    .Y(_1731_)
);

OAI21X1 _2666_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1580_),
    .B(_1731_),
    .C(\u_rf_if.o_waddr [3]),
    .Y(_1732_)
);

NOR2X1 _2667_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1580_),
    .B(_1731_),
    .Y(_1733_)
);

NAND2X1 _2668_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1583_),
    .B(_1733_),
    .Y(_1734_)
);

AOI21X1 _2669_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1734_),
    .B(_1732_),
    .C(_1727_),
    .Y(_1448_)
);

INVX1 _2670_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .Y(_1735_)
);

INVX1 _2671_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [1]),
    .Y(_1736_)
);

NOR2X1 _2672_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1735_),
    .B(_1736_),
    .Y(_1737_)
);

INVX1 _2673_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1737_),
    .Y(_1738_)
);

NAND2X1 _2674_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1735_),
    .B(_1736_),
    .Y(_1739_)
);

NAND3X1 _2675_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1738_),
    .B(_1739_),
    .C(_733__bF$buf0),
    .Y(_1740_)
);

AOI21X1 _2676_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1740_),
    .B(_756_),
    .C(_1126__bF$buf3),
    .Y(_1447_)
);

OR2X2 _2677_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_711_),
    .B(_698_),
    .Y(_1741_)
);

NOR2X1 _2678_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1741_),
    .B(_1728_),
    .Y(_1742_)
);

NOR2X1 _2679_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_1742_),
    .Y(_1743_)
);

INVX1 _2680_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1727_),
    .Y(_1744_)
);

INVX1 _2681_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_702_),
    .Y(_1745_)
);

OAI21X1 _2682_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_701_),
    .B(_1745_),
    .C(_1742_),
    .Y(_1746_)
);

NAND2X1 _2683_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1744_),
    .B(_1746_),
    .Y(_1747_)
);

NOR2X1 _2684_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1743_),
    .B(_1747_),
    .Y(_1446_)
);

MUX2X1 _2685_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen0_r ),
    .B(_738_),
    .S(_732_),
    .Y(_1748_)
);

NOR2X1 _2686_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf2),
    .B(_1748_),
    .Y(_1445_)
);

NAND2X1 _2687_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [5]),
    .B(_1688_),
    .Y(_1749_)
);

AOI21X1 _2688_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_756_),
    .B(_1749_),
    .C(_1126__bF$buf1),
    .Y(_1444_)
);

AND2X2 _2689_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1557_),
    .B(i_rst_n_bF$buf4),
    .Y(_1443_)
);

INVX1 _2690_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_1750_)
);

INVX1 _2691_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_1751_)
);

INVX1 _2692_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_1752_)
);

NOR2X1 _2693_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1751_),
    .B(_1752_),
    .Y(_1753_)
);

NAND2X1 _2694_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1753_),
    .Y(_1754_)
);

NOR2X1 _2695_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1750_),
    .B(_1754_),
    .Y(_1755_)
);

INVX1 _2696_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_1756_)
);

NOR2X1 _2697_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1756_),
    .B(_619_),
    .Y(_1757_)
);

OAI21X1 _2698_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.ready_pulse ),
    .C(i_rst_n_bF$buf3),
    .Y(_1758_)
);

AOI21X1 _2699_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1755_),
    .B(_1757_),
    .C(_1758_),
    .Y(_1442_)
);

NAND3X1 _2700_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf2),
    .B(\u_rf_if.issue_idx [5]),
    .C(\u_rf_if.prefetch_active ),
    .Y(_1759_)
);

INVX1 _2701_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1759_),
    .Y(_1441_)
);

NAND3X1 _2702_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1756_),
    .B(\u_rf_if.stream_active_bF$buf5 ),
    .C(_1755_),
    .Y(_1760_)
);

NOR2X1 _2703_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_1761_)
);

INVX1 _2704_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1761_),
    .Y(_1762_)
);

OAI21X1 _2705_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_619_),
    .B(_1755_),
    .C(_1762_),
    .Y(_1763_)
);

INVX1 _2706_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1763_),
    .Y(_1764_)
);

OAI21X1 _2707_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1756_),
    .B(_1764_),
    .C(_1760_),
    .Y(_1765_)
);

AND2X2 _2708_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1765_),
    .B(i_rst_n_bF$buf1),
    .Y(_1440_)
);

NAND2X1 _2709_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf0),
    .B(_619_),
    .Y(_1766_)
);

NOR2X1 _2710_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(\u_rf_if.issue_chunk [2]),
    .Y(_1767_)
);

NAND2X1 _2711_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1698_),
    .B(_1699_),
    .Y(_1768_)
);

NAND2X1 _2712_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1702_),
    .B(_1697_),
    .Y(_1769_)
);

NOR2X1 _2713_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1768_),
    .B(_1769_),
    .Y(_1770_)
);

AOI21X1 _2714_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1770_),
    .B(_1767_),
    .C(_1683_),
    .Y(_1771_)
);

NAND2X1 _2715_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1702_),
    .B(_1771_),
    .Y(_1772_)
);

NAND2X1 _2716_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [31]),
    .B(_1772_),
    .Y(_1773_)
);

INVX2 _2717_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1772_),
    .Y(_1774_)
);

NOR2X1 _2718_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_1702_),
    .Y(_1775_)
);

NOR2X1 _2719_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_1776_)
);

NOR2X1 _2720_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(\u_rf_if.rreg0_latched [4]),
    .Y(_1777_)
);

AND2X2 _2721_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1776_),
    .B(_1777_),
    .Y(_1778_)
);

NOR2X1 _2722_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(\u_rf_if.rreg1_latched [2]),
    .Y(_1779_)
);

NOR2X1 _2723_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(\u_rf_if.rreg1_latched [0]),
    .Y(_1780_)
);

NOR2X1 _2724_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .B(\u_rf_if.rreg1_latched [4]),
    .Y(_1781_)
);

AND2X2 _2725_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1780_),
    .B(_1781_),
    .Y(_1782_)
);

AOI22X1 _2726_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1778_),
    .B(_1775_),
    .C(_1779_),
    .D(_1782_),
    .Y(_1783_)
);

INVX1 _2727_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[8]),
    .Y(_1784_)
);

NOR2X1 _2728_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .B(raddr[6]),
    .Y(_1785_)
);

NOR2X1 _2729_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[5]),
    .B(raddr[4]),
    .Y(_1786_)
);

NAND3X1 _2730_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1784_),
    .B(_1785_),
    .C(_1786_),
    .Y(_1787_)
);

AND2X2 _2731_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1787_),
    .B(\u_rf_serial.shift_rx [1]),
    .Y(_1788_)
);

AND2X2 _2732_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1783_),
    .B(_1788_),
    .Y(_1789_)
);

NAND2X1 _2733_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1789_),
    .B(_1774_),
    .Y(_1790_)
);

AOI21X1 _2734_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1790_),
    .B(_1773_),
    .C(_1766_),
    .Y(_1439_)
);

NOR2X1 _2735_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_1659_),
    .Y(_1791_)
);

AND2X2 _2736_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1787_),
    .B(_1791_),
    .Y(_1792_)
);

AND2X2 _2737_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1783_),
    .B(_1792_),
    .Y(_1793_)
);

OAI21X1 _2738_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1774_),
    .C(_1793_),
    .Y(_1794_)
);

NAND2X1 _2739_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [30]),
    .B(_619_),
    .Y(_1795_)
);

INVX1 _2740_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1795_),
    .Y(_1796_)
);

AOI22X1 _2741_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [31]),
    .B(\u_rf_if.stream_active_bF$buf1 ),
    .C(_1772_),
    .D(_1796_),
    .Y(_1797_)
);

AOI21X1 _2742_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1794_),
    .B(_1797_),
    .C(_1126__bF$buf0),
    .Y(_1438_)
);

NAND2X1 _2743_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .B(_1771_),
    .Y(_1798_)
);

NAND2X1 _2744_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(_1798_),
    .Y(_1799_)
);

INVX2 _2745_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1798_),
    .Y(_1800_)
);

NAND2X1 _2746_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1789_),
    .B(_1800_),
    .Y(_1801_)
);

AOI21X1 _2747_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1801_),
    .B(_1799_),
    .C(_1766_),
    .Y(_1437_)
);

OAI21X1 _2748_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_1800_),
    .C(_1793_),
    .Y(_1802_)
);

NAND2X1 _2749_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(_619_),
    .Y(_1803_)
);

INVX1 _2750_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1803_),
    .Y(_1804_)
);

AOI22X1 _2751_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(\u_rf_if.stream_active_bF$buf7 ),
    .C(_1798_),
    .D(_1804_),
    .Y(_1805_)
);

AOI21X1 _2752_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1802_),
    .B(_1805_),
    .C(_1126__bF$buf7),
    .Y(_1436_)
);

NAND3X1 _2753_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .B(_733__bF$buf5),
    .C(_1744_),
    .Y(_1806_)
);

INVX1 _2754_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1806_),
    .Y(_1435_)
);

MUX2X1 _2755_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [4]),
    .B(\u_rf_if.rreg0_latched [4]),
    .S(\u_rf_if.issue_sel ),
    .Y(_1807_)
);

OAI21X1 _2756_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[8]),
    .B(_1704__bF$buf2),
    .C(i_rst_n_bF$buf10),
    .Y(_1808_)
);

AOI21X1 _2757_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704__bF$buf1),
    .B(_1807_),
    .C(_1808_),
    .Y(_1434_)
);

NAND2X1 _2758_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf9),
    .B(_1704__bF$buf0),
    .Y(_1809_)
);

OAI21X1 _2759_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf6),
    .B(_1690_),
    .C(_1809_),
    .Y(_1433_)
);

INVX1 _2760_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1809_),
    .Y(_1432_)
);

NOR2X1 _2761_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1727_),
    .B(_1693__bF$buf3),
    .Y(_1810_)
);

NAND2X1 _2762_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1735_),
    .B(_1810_),
    .Y(_1811_)
);

INVX1 _2763_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1811_),
    .Y(_1431_)
);

OAI21X1 _2764_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1735_),
    .B(_1736_),
    .C(_701_),
    .Y(_1812_)
);

NAND2X1 _2765_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .B(_1737_),
    .Y(_1813_)
);

NAND3X1 _2766_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1812_),
    .B(_1813_),
    .C(_1810_),
    .Y(_1814_)
);

INVX1 _2767_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1814_),
    .Y(_1430_)
);

OAI21X1 _2768_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .B(\u_rf_if.stream_active_bF$buf6 ),
    .C(i_rst_n_bF$buf8),
    .Y(_1815_)
);

AOI21X1 _2769_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1762_),
    .B(\u_rf_if.stream_cnt [0]),
    .C(_1815_),
    .Y(_1429_)
);

NAND2X1 _2770_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .B(_1761_),
    .Y(_1816_)
);

OAI21X1 _2771_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1751_),
    .B(_1752_),
    .C(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1817_)
);

OAI21X1 _2772_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .B(\u_rf_if.stream_cnt [0]),
    .C(i_rst_n_bF$buf7),
    .Y(_1818_)
);

AOI21X1 _2773_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1816_),
    .B(_1817_),
    .C(_1818_),
    .Y(_1428_)
);

NAND2X1 _2774_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1761_),
    .Y(_1819_)
);

NAND2X1 _2775_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_1754_),
    .Y(_1820_)
);

OAI21X1 _2776_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_1753_),
    .C(i_rst_n_bF$buf6),
    .Y(_1821_)
);

AOI21X1 _2777_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1820_),
    .B(_1819_),
    .C(_1821_),
    .Y(_1427_)
);

OAI21X1 _2778_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_619_),
    .B(_1754_),
    .C(_1750_),
    .Y(_1822_)
);

NAND2X1 _2779_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf5),
    .B(_1822_),
    .Y(_1823_)
);

NOR2X1 _2780_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1823_),
    .B(_1764_),
    .Y(_1426_)
);

NOR2X1 _2781_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_1774_),
    .Y(_1824_)
);

MUX2X1 _2782_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [1]),
    .B(\u_rf_if.read_buf1 [2]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1825_)
);

NAND2X1 _2783_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [0]),
    .B(_1824__bF$buf6),
    .Y(_1826_)
);

OAI21X1 _2784_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf5),
    .B(_1825_),
    .C(_1826_),
    .Y(_1827_)
);

AND2X2 _2785_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1827_),
    .B(i_rst_n_bF$buf4),
    .Y(_1425_)
);

MUX2X1 _2786_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [2]),
    .B(\u_rf_if.read_buf1 [3]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_1828_)
);

NAND2X1 _2787_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [1]),
    .B(_1824__bF$buf4),
    .Y(_1829_)
);

OAI21X1 _2788_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf3),
    .B(_1828_),
    .C(_1829_),
    .Y(_1830_)
);

AND2X2 _2789_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1830_),
    .B(i_rst_n_bF$buf3),
    .Y(_1424_)
);

MUX2X1 _2790_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [3]),
    .B(\u_rf_if.read_buf1 [4]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1831_)
);

NAND2X1 _2791_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [2]),
    .B(_1824__bF$buf2),
    .Y(_1832_)
);

OAI21X1 _2792_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf1),
    .B(_1831_),
    .C(_1832_),
    .Y(_1833_)
);

AND2X2 _2793_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1833_),
    .B(i_rst_n_bF$buf2),
    .Y(_1423_)
);

MUX2X1 _2794_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [4]),
    .B(\u_rf_if.read_buf1 [5]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1834_)
);

NAND2X1 _2795_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [3]),
    .B(_1824__bF$buf0),
    .Y(_1835_)
);

OAI21X1 _2796_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf6),
    .B(_1834_),
    .C(_1835_),
    .Y(_1836_)
);

AND2X2 _2797_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1836_),
    .B(i_rst_n_bF$buf1),
    .Y(_1422_)
);

MUX2X1 _2798_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [5]),
    .B(\u_rf_if.read_buf1 [6]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1837_)
);

NAND2X1 _2799_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [4]),
    .B(_1824__bF$buf5),
    .Y(_1838_)
);

OAI21X1 _2800_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf4),
    .B(_1837_),
    .C(_1838_),
    .Y(_1839_)
);

AND2X2 _2801_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1839_),
    .B(i_rst_n_bF$buf0),
    .Y(_1421_)
);

MUX2X1 _2802_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [6]),
    .B(\u_rf_if.read_buf1 [7]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1840_)
);

NAND2X1 _2803_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [5]),
    .B(_1824__bF$buf3),
    .Y(_1841_)
);

OAI21X1 _2804_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf2),
    .B(_1840_),
    .C(_1841_),
    .Y(_1842_)
);

AND2X2 _2805_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1842_),
    .B(i_rst_n_bF$buf10),
    .Y(_1420_)
);

MUX2X1 _2806_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [7]),
    .B(\u_rf_if.read_buf1 [8]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_1843_)
);

NAND2X1 _2807_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [6]),
    .B(_1824__bF$buf1),
    .Y(_1844_)
);

OAI21X1 _2808_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf0),
    .B(_1843_),
    .C(_1844_),
    .Y(_1845_)
);

AND2X2 _2809_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1845_),
    .B(i_rst_n_bF$buf9),
    .Y(_1419_)
);

MUX2X1 _2810_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [8]),
    .B(\u_rf_if.read_buf1 [9]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_1846_)
);

NAND2X1 _2811_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [7]),
    .B(_1824__bF$buf6),
    .Y(_1847_)
);

OAI21X1 _2812_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf5),
    .B(_1846_),
    .C(_1847_),
    .Y(_1848_)
);

AND2X2 _2813_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1848_),
    .B(i_rst_n_bF$buf8),
    .Y(_1418_)
);

MUX2X1 _2814_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [9]),
    .B(\u_rf_if.read_buf1 [10]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1849_)
);

NAND2X1 _2815_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [8]),
    .B(_1824__bF$buf4),
    .Y(_1850_)
);

OAI21X1 _2816_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf3),
    .B(_1849_),
    .C(_1850_),
    .Y(_1851_)
);

AND2X2 _2817_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1851_),
    .B(i_rst_n_bF$buf7),
    .Y(_1417_)
);

MUX2X1 _2818_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [10]),
    .B(\u_rf_if.read_buf1 [11]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_1852_)
);

NAND2X1 _2819_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [9]),
    .B(_1824__bF$buf2),
    .Y(_1853_)
);

OAI21X1 _2820_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf1),
    .B(_1852_),
    .C(_1853_),
    .Y(_1854_)
);

AND2X2 _2821_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1854_),
    .B(i_rst_n_bF$buf6),
    .Y(_1416_)
);

MUX2X1 _2822_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [11]),
    .B(\u_rf_if.read_buf1 [12]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1855_)
);

NAND2X1 _2823_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [10]),
    .B(_1824__bF$buf0),
    .Y(_1856_)
);

OAI21X1 _2824_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf6),
    .B(_1855_),
    .C(_1856_),
    .Y(_1857_)
);

AND2X2 _2825_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1857_),
    .B(i_rst_n_bF$buf5),
    .Y(_1415_)
);

MUX2X1 _2826_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [12]),
    .B(\u_rf_if.read_buf1 [13]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1858_)
);

NAND2X1 _2827_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [11]),
    .B(_1824__bF$buf5),
    .Y(_1859_)
);

OAI21X1 _2828_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf4),
    .B(_1858_),
    .C(_1859_),
    .Y(_1860_)
);

AND2X2 _2829_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1860_),
    .B(i_rst_n_bF$buf4),
    .Y(_1414_)
);

MUX2X1 _2830_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [13]),
    .B(\u_rf_if.read_buf1 [14]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1861_)
);

NAND2X1 _2831_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [12]),
    .B(_1824__bF$buf3),
    .Y(_1862_)
);

OAI21X1 _2832_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf2),
    .B(_1861_),
    .C(_1862_),
    .Y(_1863_)
);

AND2X2 _2833_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1863_),
    .B(i_rst_n_bF$buf3),
    .Y(_1413_)
);

MUX2X1 _2834_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [14]),
    .B(\u_rf_if.read_buf1 [15]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1864_)
);

NAND2X1 _2835_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [13]),
    .B(_1824__bF$buf1),
    .Y(_1865_)
);

OAI21X1 _2836_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf0),
    .B(_1864_),
    .C(_1865_),
    .Y(_1866_)
);

AND2X2 _2837_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1866_),
    .B(i_rst_n_bF$buf2),
    .Y(_1412_)
);

MUX2X1 _2838_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [15]),
    .B(\u_rf_if.read_buf1 [16]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_1867_)
);

NAND2X1 _2839_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [14]),
    .B(_1824__bF$buf6),
    .Y(_1868_)
);

OAI21X1 _2840_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf5),
    .B(_1867_),
    .C(_1868_),
    .Y(_1869_)
);

AND2X2 _2841_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1869_),
    .B(i_rst_n_bF$buf1),
    .Y(_1411_)
);

MUX2X1 _2842_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [16]),
    .B(\u_rf_if.read_buf1 [17]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_1870_)
);

NAND2X1 _2843_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [15]),
    .B(_1824__bF$buf4),
    .Y(_1871_)
);

OAI21X1 _2844_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf3),
    .B(_1870_),
    .C(_1871_),
    .Y(_1872_)
);

AND2X2 _2845_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1872_),
    .B(i_rst_n_bF$buf0),
    .Y(_1410_)
);

MUX2X1 _2846_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [17]),
    .B(\u_rf_if.read_buf1 [18]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1873_)
);

NAND2X1 _2847_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [16]),
    .B(_1824__bF$buf2),
    .Y(_1874_)
);

OAI21X1 _2848_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf1),
    .B(_1873_),
    .C(_1874_),
    .Y(_1875_)
);

AND2X2 _2849_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1875_),
    .B(i_rst_n_bF$buf10),
    .Y(_1409_)
);

MUX2X1 _2850_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [18]),
    .B(\u_rf_if.read_buf1 [19]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_1876_)
);

NAND2X1 _2851_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [17]),
    .B(_1824__bF$buf0),
    .Y(_1877_)
);

OAI21X1 _2852_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf6),
    .B(_1876_),
    .C(_1877_),
    .Y(_1878_)
);

AND2X2 _2853_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1878_),
    .B(i_rst_n_bF$buf9),
    .Y(_1408_)
);

MUX2X1 _2854_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [19]),
    .B(\u_rf_if.read_buf1 [20]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1879_)
);

NAND2X1 _2855_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [18]),
    .B(_1824__bF$buf5),
    .Y(_1880_)
);

OAI21X1 _2856_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf4),
    .B(_1879_),
    .C(_1880_),
    .Y(_1881_)
);

AND2X2 _2857_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1881_),
    .B(i_rst_n_bF$buf8),
    .Y(_1407_)
);

MUX2X1 _2858_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [20]),
    .B(\u_rf_if.read_buf1 [21]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_1882_)
);

NAND2X1 _2859_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [19]),
    .B(_1824__bF$buf3),
    .Y(_1883_)
);

OAI21X1 _2860_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf2),
    .B(_1882_),
    .C(_1883_),
    .Y(_1884_)
);

AND2X2 _2861_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1884_),
    .B(i_rst_n_bF$buf7),
    .Y(_1406_)
);

MUX2X1 _2862_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [21]),
    .B(\u_rf_if.read_buf1 [22]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_1885_)
);

NAND2X1 _2863_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [20]),
    .B(_1824__bF$buf1),
    .Y(_1886_)
);

OAI21X1 _2864_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf0),
    .B(_1885_),
    .C(_1886_),
    .Y(_1887_)
);

AND2X2 _2865_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1887_),
    .B(i_rst_n_bF$buf6),
    .Y(_1405_)
);

MUX2X1 _2866_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [22]),
    .B(\u_rf_if.read_buf1 [23]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_1888_)
);

NAND2X1 _2867_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [21]),
    .B(_1824__bF$buf6),
    .Y(_1889_)
);

OAI21X1 _2868_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf5),
    .B(_1888_),
    .C(_1889_),
    .Y(_1890_)
);

AND2X2 _2869_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1890_),
    .B(i_rst_n_bF$buf5),
    .Y(_1404_)
);

MUX2X1 _2870_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [23]),
    .B(\u_rf_if.read_buf1 [24]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_1891_)
);

NAND2X1 _2871_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [22]),
    .B(_1824__bF$buf4),
    .Y(_1892_)
);

OAI21X1 _2872_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf3),
    .B(_1891_),
    .C(_1892_),
    .Y(_1893_)
);

AND2X2 _2873_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1893_),
    .B(i_rst_n_bF$buf4),
    .Y(_1403_)
);

MUX2X1 _2874_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [24]),
    .B(\u_rf_if.read_buf1 [25]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_1894_)
);

NAND2X1 _2875_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [23]),
    .B(_1824__bF$buf2),
    .Y(_1895_)
);

OAI21X1 _2876_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf1),
    .B(_1894_),
    .C(_1895_),
    .Y(_1896_)
);

AND2X2 _2877_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1896_),
    .B(i_rst_n_bF$buf3),
    .Y(_1402_)
);

MUX2X1 _2878_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [25]),
    .B(\u_rf_if.read_buf1 [26]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_1897_)
);

NAND2X1 _2879_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [24]),
    .B(_1824__bF$buf0),
    .Y(_1898_)
);

OAI21X1 _2880_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf6),
    .B(_1897_),
    .C(_1898_),
    .Y(_1899_)
);

AND2X2 _2881_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1899_),
    .B(i_rst_n_bF$buf2),
    .Y(_1401_)
);

MUX2X1 _2882_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [26]),
    .B(\u_rf_if.read_buf1 [27]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_1900_)
);

NAND2X1 _2883_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [25]),
    .B(_1824__bF$buf5),
    .Y(_1901_)
);

OAI21X1 _2884_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf4),
    .B(_1900_),
    .C(_1901_),
    .Y(_1902_)
);

AND2X2 _2885_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1902_),
    .B(i_rst_n_bF$buf1),
    .Y(_1400_)
);

INVX1 _2886_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [28]),
    .Y(_1903_)
);

NAND2X1 _2887_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [27]),
    .B(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_1904_)
);

OAI21X1 _2888_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf7 ),
    .B(_1903_),
    .C(_1904_),
    .Y(_1905_)
);

OAI21X1 _2889_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_1774_),
    .C(_1905_),
    .Y(_1911_)
);

NAND2X1 _2890_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [26]),
    .B(_1824__bF$buf3),
    .Y(_1_)
);

AOI21X1 _2891_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1_),
    .B(_1911_),
    .C(_1126__bF$buf5),
    .Y(_1399_)
);

INVX1 _2892_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [29]),
    .Y(_2_)
);

NAND2X1 _2893_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [28]),
    .B(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_3_)
);

OAI21X1 _2894_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_2_),
    .C(_3_),
    .Y(_4_)
);

OAI21X1 _2895_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_1774_),
    .C(_4_),
    .Y(_5_)
);

NAND2X1 _2896_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [27]),
    .B(_1824__bF$buf2),
    .Y(_6_)
);

AOI21X1 _2897_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_6_),
    .B(_5_),
    .C(_1126__bF$buf4),
    .Y(_1398_)
);

OAI21X1 _2898_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2_),
    .B(_619_),
    .C(_1795_),
    .Y(_7_)
);

OAI21X1 _2899_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_7_),
    .B(_1824__bF$buf1),
    .C(i_rst_n_bF$buf0),
    .Y(_8_)
);

AOI21X1 _2900_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1903_),
    .B(_1824__bF$buf0),
    .C(_8_),
    .Y(_1397_)
);

MUX2X1 _2901_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [30]),
    .B(\u_rf_if.read_buf1 [31]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_9_)
);

NAND2X1 _2902_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [29]),
    .B(_1824__bF$buf6),
    .Y(_10_)
);

OAI21X1 _2903_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1824__bF$buf5),
    .B(_9_),
    .C(_10_),
    .Y(_11_)
);

AND2X2 _2904_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_11_),
    .B(i_rst_n_bF$buf10),
    .Y(_1396_)
);

NOR2X1 _2905_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_1800_),
    .Y(_12_)
);

MUX2X1 _2906_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [1]),
    .B(\u_rf_if.read_buf0 [2]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_13_)
);

NAND2X1 _2907_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [0]),
    .B(_12__bF$buf6),
    .Y(_14_)
);

OAI21X1 _2908_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf5),
    .B(_13_),
    .C(_14_),
    .Y(_15_)
);

AND2X2 _2909_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_15_),
    .B(i_rst_n_bF$buf9),
    .Y(_1395_)
);

MUX2X1 _2910_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [2]),
    .B(\u_rf_if.read_buf0 [3]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_16_)
);

NAND2X1 _2911_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [1]),
    .B(_12__bF$buf4),
    .Y(_17_)
);

OAI21X1 _2912_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf3),
    .B(_16_),
    .C(_17_),
    .Y(_18_)
);

AND2X2 _2913_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18_),
    .B(i_rst_n_bF$buf8),
    .Y(_1394_)
);

MUX2X1 _2914_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [3]),
    .B(\u_rf_if.read_buf0 [4]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_19_)
);

NAND2X1 _2915_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [2]),
    .B(_12__bF$buf2),
    .Y(_20_)
);

OAI21X1 _2916_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf1),
    .B(_19_),
    .C(_20_),
    .Y(_21_)
);

AND2X2 _2917_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_21_),
    .B(i_rst_n_bF$buf7),
    .Y(_1393_)
);

MUX2X1 _2918_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [4]),
    .B(\u_rf_if.read_buf0 [5]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_22_)
);

NAND2X1 _2919_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [3]),
    .B(_12__bF$buf0),
    .Y(_23_)
);

OAI21X1 _2920_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf6),
    .B(_22_),
    .C(_23_),
    .Y(_24_)
);

AND2X2 _2921_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_24_),
    .B(i_rst_n_bF$buf6),
    .Y(_1392_)
);

MUX2X1 _2922_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [5]),
    .B(\u_rf_if.read_buf0 [6]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_25_)
);

NAND2X1 _2923_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [4]),
    .B(_12__bF$buf5),
    .Y(_26_)
);

OAI21X1 _2924_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf4),
    .B(_25_),
    .C(_26_),
    .Y(_27_)
);

AND2X2 _2925_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_27_),
    .B(i_rst_n_bF$buf5),
    .Y(_1391_)
);

MUX2X1 _2926_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(\u_rf_if.read_buf0 [7]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_28_)
);

NAND2X1 _2927_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [5]),
    .B(_12__bF$buf3),
    .Y(_29_)
);

OAI21X1 _2928_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf2),
    .B(_28_),
    .C(_29_),
    .Y(_30_)
);

AND2X2 _2929_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_30_),
    .B(i_rst_n_bF$buf4),
    .Y(_1390_)
);

MUX2X1 _2930_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [7]),
    .B(\u_rf_if.read_buf0 [8]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_31_)
);

NAND2X1 _2931_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(_12__bF$buf1),
    .Y(_32_)
);

OAI21X1 _2932_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf0),
    .B(_31_),
    .C(_32_),
    .Y(_33_)
);

AND2X2 _2933_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_33_),
    .B(i_rst_n_bF$buf3),
    .Y(_1389_)
);

MUX2X1 _2934_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [8]),
    .B(\u_rf_if.read_buf0 [9]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_34_)
);

NAND2X1 _2935_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [7]),
    .B(_12__bF$buf6),
    .Y(_35_)
);

OAI21X1 _2936_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf5),
    .B(_34_),
    .C(_35_),
    .Y(_36_)
);

AND2X2 _2937_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_36_),
    .B(i_rst_n_bF$buf2),
    .Y(_1388_)
);

MUX2X1 _2938_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [9]),
    .B(\u_rf_if.read_buf0 [10]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_37_)
);

NAND2X1 _2939_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [8]),
    .B(_12__bF$buf4),
    .Y(_38_)
);

OAI21X1 _2940_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf3),
    .B(_37_),
    .C(_38_),
    .Y(_39_)
);

AND2X2 _2941_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_39_),
    .B(i_rst_n_bF$buf1),
    .Y(_1387_)
);

MUX2X1 _2942_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [10]),
    .B(\u_rf_if.read_buf0 [11]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_40_)
);

NAND2X1 _2943_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [9]),
    .B(_12__bF$buf2),
    .Y(_41_)
);

OAI21X1 _2944_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf1),
    .B(_40_),
    .C(_41_),
    .Y(_42_)
);

AND2X2 _2945_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_42_),
    .B(i_rst_n_bF$buf0),
    .Y(_1386_)
);

MUX2X1 _2946_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [11]),
    .B(\u_rf_if.read_buf0 [12]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_43_)
);

NAND2X1 _2947_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [10]),
    .B(_12__bF$buf0),
    .Y(_44_)
);

OAI21X1 _2948_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf6),
    .B(_43_),
    .C(_44_),
    .Y(_45_)
);

AND2X2 _2949_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_45_),
    .B(i_rst_n_bF$buf10),
    .Y(_1385_)
);

MUX2X1 _2950_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [12]),
    .B(\u_rf_if.read_buf0 [13]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_46_)
);

NAND2X1 _2951_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [11]),
    .B(_12__bF$buf5),
    .Y(_47_)
);

OAI21X1 _2952_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf4),
    .B(_46_),
    .C(_47_),
    .Y(_48_)
);

AND2X2 _2953_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_48_),
    .B(i_rst_n_bF$buf9),
    .Y(_1384_)
);

MUX2X1 _2954_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(\u_rf_if.read_buf0 [14]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_49_)
);

NAND2X1 _2955_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [12]),
    .B(_12__bF$buf3),
    .Y(_50_)
);

OAI21X1 _2956_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf2),
    .B(_49_),
    .C(_50_),
    .Y(_51_)
);

AND2X2 _2957_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_51_),
    .B(i_rst_n_bF$buf8),
    .Y(_1383_)
);

MUX2X1 _2958_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [14]),
    .B(\u_rf_if.read_buf0 [15]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_52_)
);

NAND2X1 _2959_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(_12__bF$buf1),
    .Y(_53_)
);

OAI21X1 _2960_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf0),
    .B(_52_),
    .C(_53_),
    .Y(_54_)
);

AND2X2 _2961_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_54_),
    .B(i_rst_n_bF$buf7),
    .Y(_1382_)
);

MUX2X1 _2962_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(\u_rf_if.read_buf0 [16]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_55_)
);

NAND2X1 _2963_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [14]),
    .B(_12__bF$buf6),
    .Y(_56_)
);

OAI21X1 _2964_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf5),
    .B(_55_),
    .C(_56_),
    .Y(_57_)
);

AND2X2 _2965_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_57_),
    .B(i_rst_n_bF$buf6),
    .Y(_1381_)
);

MUX2X1 _2966_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [16]),
    .B(\u_rf_if.read_buf0 [17]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_58_)
);

NAND2X1 _2967_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(_12__bF$buf4),
    .Y(_59_)
);

OAI21X1 _2968_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf3),
    .B(_58_),
    .C(_59_),
    .Y(_60_)
);

AND2X2 _2969_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_60_),
    .B(i_rst_n_bF$buf5),
    .Y(_1380_)
);

MUX2X1 _2970_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(\u_rf_if.read_buf0 [18]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_61_)
);

NAND2X1 _2971_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [16]),
    .B(_12__bF$buf2),
    .Y(_62_)
);

OAI21X1 _2972_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf1),
    .B(_61_),
    .C(_62_),
    .Y(_63_)
);

AND2X2 _2973_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_63_),
    .B(i_rst_n_bF$buf4),
    .Y(_1379_)
);

MUX2X1 _2974_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [18]),
    .B(\u_rf_if.read_buf0 [19]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_64_)
);

NAND2X1 _2975_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(_12__bF$buf0),
    .Y(_65_)
);

OAI21X1 _2976_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf6),
    .B(_64_),
    .C(_65_),
    .Y(_66_)
);

AND2X2 _2977_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_66_),
    .B(i_rst_n_bF$buf3),
    .Y(_1378_)
);

MUX2X1 _2978_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(\u_rf_if.read_buf0 [20]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_67_)
);

NAND2X1 _2979_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [18]),
    .B(_12__bF$buf5),
    .Y(_68_)
);

OAI21X1 _2980_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf4),
    .B(_67_),
    .C(_68_),
    .Y(_69_)
);

AND2X2 _2981_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_69_),
    .B(i_rst_n_bF$buf2),
    .Y(_1377_)
);

MUX2X1 _2982_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [20]),
    .B(\u_rf_if.read_buf0 [21]),
    .S(\u_rf_if.stream_active_bF$buf5 ),
    .Y(_70_)
);

NAND2X1 _2983_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(_12__bF$buf3),
    .Y(_71_)
);

OAI21X1 _2984_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf2),
    .B(_70_),
    .C(_71_),
    .Y(_72_)
);

AND2X2 _2985_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_72_),
    .B(i_rst_n_bF$buf1),
    .Y(_1376_)
);

MUX2X1 _2986_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [21]),
    .B(\u_rf_if.read_buf0 [22]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_73_)
);

NAND2X1 _2987_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [20]),
    .B(_12__bF$buf1),
    .Y(_74_)
);

OAI21X1 _2988_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf0),
    .B(_73_),
    .C(_74_),
    .Y(_75_)
);

AND2X2 _2989_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_75_),
    .B(i_rst_n_bF$buf0),
    .Y(_1375_)
);

MUX2X1 _2990_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [22]),
    .B(\u_rf_if.read_buf0 [23]),
    .S(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_76_)
);

NAND2X1 _2991_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [21]),
    .B(_12__bF$buf6),
    .Y(_77_)
);

OAI21X1 _2992_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf5),
    .B(_76_),
    .C(_77_),
    .Y(_78_)
);

AND2X2 _2993_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_78_),
    .B(i_rst_n_bF$buf10),
    .Y(_1374_)
);

MUX2X1 _2994_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [23]),
    .B(\u_rf_if.read_buf0 [24]),
    .S(\u_rf_if.stream_active_bF$buf2 ),
    .Y(_79_)
);

NAND2X1 _2995_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [22]),
    .B(_12__bF$buf4),
    .Y(_80_)
);

OAI21X1 _2996_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf3),
    .B(_79_),
    .C(_80_),
    .Y(_81_)
);

AND2X2 _2997_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_81_),
    .B(i_rst_n_bF$buf9),
    .Y(_1373_)
);

MUX2X1 _2998_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [24]),
    .B(\u_rf_if.read_buf0 [25]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_82_)
);

NAND2X1 _2999_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [23]),
    .B(_12__bF$buf2),
    .Y(_83_)
);

OAI21X1 _3000_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf1),
    .B(_82_),
    .C(_83_),
    .Y(_84_)
);

AND2X2 _3001_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_84_),
    .B(i_rst_n_bF$buf8),
    .Y(_1372_)
);

MUX2X1 _3002_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [25]),
    .B(\u_rf_if.read_buf0 [26]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_85_)
);

NAND2X1 _3003_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [24]),
    .B(_12__bF$buf0),
    .Y(_86_)
);

OAI21X1 _3004_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf6),
    .B(_85_),
    .C(_86_),
    .Y(_87_)
);

AND2X2 _3005_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_87_),
    .B(i_rst_n_bF$buf7),
    .Y(_1371_)
);

MUX2X1 _3006_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [26]),
    .B(\u_rf_if.read_buf0 [27]),
    .S(\u_rf_if.stream_active_bF$buf7 ),
    .Y(_88_)
);

NAND2X1 _3007_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [25]),
    .B(_12__bF$buf5),
    .Y(_89_)
);

OAI21X1 _3008_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf4),
    .B(_88_),
    .C(_89_),
    .Y(_90_)
);

AND2X2 _3009_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_90_),
    .B(i_rst_n_bF$buf6),
    .Y(_1370_)
);

INVX1 _3010_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_91_)
);

NAND2X1 _3011_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_92_)
);

OAI21X1 _3012_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_91_),
    .C(_92_),
    .Y(_93_)
);

OAI21X1 _3013_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_1800_),
    .C(_93_),
    .Y(_94_)
);

NAND2X1 _3014_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [26]),
    .B(_12__bF$buf3),
    .Y(_95_)
);

AOI21X1 _3015_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_95_),
    .B(_94_),
    .C(_1126__bF$buf3),
    .Y(_1369_)
);

INVX1 _3016_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [29]),
    .Y(_96_)
);

NAND2X1 _3017_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [28]),
    .B(\u_rf_if.stream_active_bF$buf3 ),
    .Y(_97_)
);

OAI21X1 _3018_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_96_),
    .C(_97_),
    .Y(_98_)
);

OAI21X1 _3019_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_1800_),
    .C(_98_),
    .Y(_99_)
);

NAND2X1 _3020_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(_12__bF$buf2),
    .Y(_100_)
);

AOI21X1 _3021_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_100_),
    .B(_99_),
    .C(_1126__bF$buf2),
    .Y(_1368_)
);

OAI21X1 _3022_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_96_),
    .B(_619_),
    .C(_1803_),
    .Y(_101_)
);

OAI21X1 _3023_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_101_),
    .B(_12__bF$buf1),
    .C(i_rst_n_bF$buf5),
    .Y(_102_)
);

AOI21X1 _3024_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_91_),
    .B(_12__bF$buf0),
    .C(_102_),
    .Y(_1367_)
);

MUX2X1 _3025_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(\u_rf_if.read_buf0 [31]),
    .S(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_103_)
);

NAND2X1 _3026_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [29]),
    .B(_12__bF$buf6),
    .Y(_104_)
);

OAI21X1 _3027_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12__bF$buf5),
    .B(_103_),
    .C(_104_),
    .Y(_105_)
);

AND2X2 _3028_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_105_),
    .B(i_rst_n_bF$buf4),
    .Y(_1366_)
);

OAI21X1 _3029_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .C(raddr[0]),
    .Y(_106_)
);

NAND2X1 _3030_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [0]),
    .B(_1704__bF$buf3),
    .Y(_107_)
);

AOI21X1 _3031_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_107_),
    .B(_106_),
    .C(_1126__bF$buf1),
    .Y(_1365_)
);

OAI21X1 _3032_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[1]),
    .B(_1704__bF$buf2),
    .C(i_rst_n_bF$buf3),
    .Y(_108_)
);

AOI21X1 _3033_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1698_),
    .B(_1704__bF$buf1),
    .C(_108_),
    .Y(_1364_)
);

OAI21X1 _3034_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .C(raddr[2]),
    .Y(_109_)
);

NAND2X1 _3035_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1704__bF$buf0),
    .Y(_110_)
);

AOI21X1 _3036_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_110_),
    .B(_109_),
    .C(_1126__bF$buf0),
    .Y(_1363_)
);

OAI21X1 _3037_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .C(raddr[3]),
    .Y(_111_)
);

AOI21X1 _3038_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1705_),
    .B(_111_),
    .C(_1126__bF$buf7),
    .Y(_1362_)
);

MUX2X1 _3039_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(\u_rf_if.rreg0_latched [0]),
    .S(\u_rf_if.issue_sel ),
    .Y(_112_)
);

OAI21X1 _3040_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[4]),
    .B(_1704__bF$buf3),
    .C(i_rst_n_bF$buf2),
    .Y(_113_)
);

AOI21X1 _3041_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704__bF$buf2),
    .B(_112_),
    .C(_113_),
    .Y(_1361_)
);

MUX2X1 _3042_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(\u_rf_if.rreg0_latched [1]),
    .S(\u_rf_if.issue_sel ),
    .Y(_114_)
);

OAI21X1 _3043_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[5]),
    .B(_1704__bF$buf1),
    .C(i_rst_n_bF$buf1),
    .Y(_115_)
);

AOI21X1 _3044_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704__bF$buf0),
    .B(_114_),
    .C(_115_),
    .Y(_1360_)
);

INVX1 _3045_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [2]),
    .Y(_116_)
);

NOR2X1 _3046_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .B(\u_rf_if.rreg0_latched [2]),
    .Y(_117_)
);

AOI21X1 _3047_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_116_),
    .B(\u_rf_if.issue_sel ),
    .C(_117_),
    .Y(_118_)
);

NAND2X1 _3048_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_118_),
    .B(_1690_),
    .Y(_119_)
);

OAI21X1 _3049_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[6]),
    .B(_1704__bF$buf3),
    .C(i_rst_n_bF$buf0),
    .Y(_120_)
);

AOI21X1 _3050_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_119_),
    .B(_1704__bF$buf2),
    .C(_120_),
    .Y(_1359_)
);

MUX2X1 _3051_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(\u_rf_if.rreg0_latched [3]),
    .S(\u_rf_if.issue_sel ),
    .Y(_121_)
);

OAI21X1 _3052_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .B(_1704__bF$buf1),
    .C(i_rst_n_bF$buf10),
    .Y(_122_)
);

AOI21X1 _3053_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704__bF$buf0),
    .B(_121_),
    .C(_122_),
    .Y(_1358_)
);

NOR2X1 _3054_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf6),
    .B(_1558_),
    .Y(_1357_)
);

INVX1 _3055_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .Y(_123_)
);

OAI21X1 _3056_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [5]),
    .B(_1688_),
    .C(_123_),
    .Y(_124_)
);

AOI21X1 _3057_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_756_),
    .B(_124_),
    .C(_1126__bF$buf5),
    .Y(_1356_)
);

OAI21X1 _3058_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .B(_1689_),
    .C(\u_rf_if.write_wait [1]),
    .Y(_125_)
);

OR2X2 _3059_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_124_),
    .B(\u_rf_if.write_wait [1]),
    .Y(_126_)
);

AND2X2 _3060_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_126_),
    .B(_125_),
    .Y(_127_)
);

AOI21X1 _3061_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_756_),
    .B(_127_),
    .C(_1126__bF$buf4),
    .Y(_1355_)
);

OAI21X1 _3062_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [1]),
    .B(_124_),
    .C(\u_rf_if.write_wait [2]),
    .Y(_128_)
);

INVX1 _3063_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_128_),
    .Y(_129_)
);

NOR2X1 _3064_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [2]),
    .B(_126_),
    .Y(_130_)
);

NOR2X1 _3065_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_129_),
    .B(_130_),
    .Y(_131_)
);

AOI21X1 _3066_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_756_),
    .B(_131_),
    .C(_1126__bF$buf3),
    .Y(_1354_)
);

OAI21X1 _3067_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [2]),
    .B(_126_),
    .C(\u_rf_if.write_wait [3]),
    .Y(_132_)
);

INVX1 _3068_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [3]),
    .Y(_133_)
);

NAND2X1 _3069_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_133_),
    .B(_130_),
    .Y(_134_)
);

AND2X2 _3070_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_134_),
    .B(_132_),
    .Y(_135_)
);

AOI21X1 _3071_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_135_),
    .B(_756_),
    .C(_1126__bF$buf2),
    .Y(_1353_)
);

NOR2X1 _3072_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1684_),
    .B(_1687_),
    .Y(_136_)
);

MUX2X1 _3073_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_136_),
    .B(\u_rf_if.write_wait [5]),
    .S(_1688_),
    .Y(_137_)
);

AOI21X1 _3074_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_756_),
    .B(_137_),
    .C(_1126__bF$buf1),
    .Y(_1352_)
);

OAI21X1 _3075_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1568_),
    .B(_1729_),
    .C(_1744_),
    .Y(_138_)
);

AOI21X1 _3076_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1568_),
    .B(_1729_),
    .C(_138_),
    .Y(_1351_)
);

AOI21X1 _3077_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1730_),
    .B(\u_rf_if.o_waddr [1]),
    .C(_1727_),
    .Y(_139_)
);

OAI21X1 _3078_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_1730_),
    .C(_139_),
    .Y(_140_)
);

INVX1 _3079_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_140_),
    .Y(_1350_)
);

OAI21X1 _3080_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1580_),
    .B(_1731_),
    .C(_1744_),
    .Y(_141_)
);

AOI21X1 _3081_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1580_),
    .B(_1731_),
    .C(_141_),
    .Y(_1349_)
);

NAND2X1 _3082_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(_733__bF$buf4),
    .Y(_142_)
);

INVX1 _3083_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[15]),
    .Y(_143_)
);

MUX2X1 _3084_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_143_),
    .B(_928_),
    .S(ibus_pending_ack_bF$buf3),
    .Y(_144_)
);

NAND2X1 _3085_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_144_),
    .B(_1693__bF$buf2),
    .Y(_145_)
);

AOI21X1 _3086_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_145_),
    .B(_142_),
    .C(_1126__bF$buf0),
    .Y(_1348_)
);

NAND2X1 _3087_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [1]),
    .B(_733__bF$buf3),
    .Y(_146_)
);

INVX1 _3088_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[16]),
    .Y(_147_)
);

MUX2X1 _3089_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_147_),
    .B(_920_),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_148_)
);

NAND2X1 _3090_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_148_),
    .B(_1693__bF$buf1),
    .Y(_149_)
);

AOI21X1 _3091_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_149_),
    .B(_146_),
    .C(_1126__bF$buf7),
    .Y(_1347_)
);

NAND2X1 _3092_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(_733__bF$buf2),
    .Y(_150_)
);

INVX1 _3093_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[17]),
    .Y(_151_)
);

MUX2X1 _3094_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_151_),
    .B(_912_),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_152_)
);

NAND2X1 _3095_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_152_),
    .B(_1693__bF$buf0),
    .Y(_153_)
);

AOI21X1 _3096_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_153_),
    .B(_150_),
    .C(_1126__bF$buf6),
    .Y(_1346_)
);

NAND2X1 _3097_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(_733__bF$buf1),
    .Y(_154_)
);

INVX1 _3098_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[18]),
    .Y(_155_)
);

MUX2X1 _3099_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_155_),
    .B(_904_),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_156_)
);

NAND2X1 _3100_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_156_),
    .B(_1693__bF$buf5),
    .Y(_157_)
);

AOI21X1 _3101_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_157_),
    .B(_154_),
    .C(_1126__bF$buf5),
    .Y(_1345_)
);

NAND2X1 _3102_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .B(_1704__bF$buf3),
    .Y(_158_)
);

OAI21X1 _3103_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1683_),
    .C(_1702_),
    .Y(_159_)
);

NAND2X1 _3104_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_159_),
    .B(_158_),
    .Y(_160_)
);

NOR2X1 _3105_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_160_),
    .B(_1691_),
    .Y(_1344_)
);

NOR2X1 _3106_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1699_),
    .B(_158_),
    .Y(_161_)
);

AOI21X1 _3107_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1704__bF$buf2),
    .B(\u_rf_if.issue_sel ),
    .C(\u_rf_if.issue_chunk [0]),
    .Y(_162_)
);

OR2X2 _3108_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_161_),
    .B(_162_),
    .Y(_163_)
);

NOR2X1 _3109_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_163_),
    .B(_1691_),
    .Y(_1343_)
);

INVX1 _3110_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1700_),
    .Y(_164_)
);

NOR2X1 _3111_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_158_),
    .B(_164_),
    .Y(_165_)
);

INVX1 _3112_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_165_),
    .Y(_166_)
);

OAI21X1 _3113_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_161_),
    .C(_166_),
    .Y(_167_)
);

NOR2X1 _3114_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_167_),
    .B(_1691_),
    .Y(_1342_)
);

NOR2X1 _3115_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1701_),
    .B(_166_),
    .Y(_168_)
);

INVX1 _3116_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_168_),
    .Y(_169_)
);

OAI21X1 _3117_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_158_),
    .B(_164_),
    .C(_1701_),
    .Y(_170_)
);

NAND2X1 _3118_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_170_),
    .B(_169_),
    .Y(_171_)
);

NOR2X1 _3119_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1691_),
    .B(_171_),
    .Y(_1341_)
);

OAI21X1 _3120_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_168_),
    .C(_1707_),
    .Y(_172_)
);

NOR2X1 _3121_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1691_),
    .B(_172_),
    .Y(_1340_)
);

NAND2X1 _3122_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(_733__bF$buf0),
    .Y(_173_)
);

INVX1 _3123_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[20]),
    .Y(_174_)
);

MUX2X1 _3124_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_174_),
    .B(_888_),
    .S(ibus_pending_ack_bF$buf6),
    .Y(_175_)
);

NAND2X1 _3125_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_175_),
    .B(_1693__bF$buf4),
    .Y(_176_)
);

AOI21X1 _3126_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_176_),
    .B(_173_),
    .C(_1126__bF$buf4),
    .Y(_1339_)
);

NAND2X1 _3127_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [1]),
    .B(_733__bF$buf5),
    .Y(_177_)
);

INVX1 _3128_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[21]),
    .Y(_178_)
);

MUX2X1 _3129_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_178_),
    .B(_880_),
    .S(ibus_pending_ack_bF$buf5),
    .Y(_179_)
);

NAND2X1 _3130_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_179_),
    .B(_1693__bF$buf3),
    .Y(_180_)
);

AOI21X1 _3131_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_180_),
    .B(_177_),
    .C(_1126__bF$buf3),
    .Y(_1338_)
);

INVX1 _3132_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[22]),
    .Y(_181_)
);

MUX2X1 _3133_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_181_),
    .B(_872_),
    .S(ibus_pending_ack_bF$buf4),
    .Y(_182_)
);

NAND2X1 _3134_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_182_),
    .B(_1693__bF$buf2),
    .Y(_183_)
);

OAI21X1 _3135_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_116_),
    .B(_1693__bF$buf1),
    .C(_183_),
    .Y(_184_)
);

AND2X2 _3136_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_184_),
    .B(i_rst_n_bF$buf9),
    .Y(_1337_)
);

NAND2X1 _3137_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(_733__bF$buf4),
    .Y(_185_)
);

INVX1 _3138_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[23]),
    .Y(_186_)
);

MUX2X1 _3139_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_186_),
    .B(_864_),
    .S(ibus_pending_ack_bF$buf3),
    .Y(_187_)
);

NAND2X1 _3140_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_187_),
    .B(_1693__bF$buf0),
    .Y(_188_)
);

AOI21X1 _3141_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_188_),
    .B(_185_),
    .C(_1126__bF$buf2),
    .Y(_1336_)
);

INVX1 _3142_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_189_)
);

OAI21X1 _3143_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1121_),
    .B(_786_),
    .C(i_rst_n_bF$buf8),
    .Y(_190_)
);

AND2X2 _3144_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_621_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_191_)
);

INVX1 _3145_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1553_),
    .Y(_192_)
);

NOR2X1 _3146_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf1),
    .B(_752_),
    .Y(_193_)
);

OAI21X1 _3147_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jump ),
    .B(_192_),
    .C(_193_),
    .Y(_194_)
);

OAI22X1 _3148_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_189_),
    .B(_190__bF$buf4),
    .C(_194_),
    .D(_191_),
    .Y(_1335_)
);

AND2X2 _3149_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf7),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_1334_)
);

AND2X2 _3150_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf6),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_1333_)
);

AOI21X1 _3151_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_779_),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_rf_if.ready_pulse ),
    .Y(_195_)
);

AOI21X1 _3152_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_756_),
    .B(_195_),
    .C(_1126__bF$buf0),
    .Y(_1332_)
);

INVX1 _3153_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_196_)
);

NOR2X1 _3154_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_196_),
    .B(_670_),
    .Y(_197_)
);

INVX1 _3155_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_197_),
    .Y(_198_)
);

OAI21X1 _3156_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_671_),
    .B(_198_),
    .C(i_rst_n_bF$buf5),
    .Y(_199_)
);

AOI21X1 _3157_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_671_),
    .B(_198_),
    .C(_199_),
    .Y(_1331_)
);

OAI21X1 _3158_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_196_),
    .B(_670_),
    .C(i_rst_n_bF$buf4),
    .Y(_200_)
);

AOI21X1 _3159_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_196_),
    .B(_670_),
    .C(_200_),
    .Y(_1330_)
);

OAI21X1 _3160_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1110_),
    .B(_1103_),
    .C(_1112_),
    .Y(_201_)
);

NOR2X1 _3161_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf7),
    .B(_1108_),
    .Y(_202_)
);

AND2X2 _3162_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_201_),
    .B(_202_),
    .Y(_1329_)
);

OAI21X1 _3163_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_785_),
    .B(_784_),
    .C(i_rst_n_bF$buf3),
    .Y(_203_)
);

AOI21X1 _3164_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_785_),
    .B(_784_),
    .C(_203_),
    .Y(_1328_)
);

AND2X2 _3165_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf2),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_1327_)
);

INVX1 _3166_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_204_)
);

NOR2X1 _3167_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_205_)
);

OAI21X1 _3168_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_1524_),
    .C(_205_),
    .Y(_206_)
);

AOI21X1 _3169_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1476_),
    .B(_1477_),
    .C(_206_),
    .Y(_207_)
);

AND2X2 _3170_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1476_),
    .B(_1132_),
    .Y(_208_)
);

OAI21X1 _3171_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(_209_)
);

NAND3X1 _3172_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1522_),
    .B(_209_),
    .C(_1519_),
    .Y(_210_)
);

OR2X2 _3173_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_208_),
    .B(_210_),
    .Y(_211_)
);

NAND2X1 _3174_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_210_),
    .B(_208_),
    .Y(_212_)
);

AOI21X1 _3175_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_211_),
    .B(_212_),
    .C(_205_),
    .Y(_213_)
);

NOR2X1 _3176_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_207_),
    .B(_213_),
    .Y(_214_)
);

AND2X2 _3177_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_214_),
    .B(\u_cpu.bne_or_bge ),
    .Y(_215_)
);

OAI21X1 _3178_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(_214_),
    .C(_744_),
    .Y(_216_)
);

NAND2X1 _3179_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf1),
    .B(\u_cpu.branch_op ),
    .Y(_217_)
);

NOR2X1 _3180_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_217_),
    .B(_765_),
    .Y(_218_)
);

OAI21X1 _3181_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_216_),
    .B(_215_),
    .C(_218_),
    .Y(_219_)
);

OAI21X1 _3182_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_204_),
    .B(_203_),
    .C(_219_),
    .Y(_1326_)
);

OAI21X1 _3183_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_785_),
    .B(_784_),
    .C(\u_cpu.state.init_done ),
    .Y(_220_)
);

AOI21X1 _3184_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_765_),
    .B(_220_),
    .C(_1126__bF$buf6),
    .Y(_1325_)
);

OR2X2 _3185_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693__bF$buf5),
    .B(_203_),
    .Y(_221_)
);

OAI21X1 _3186_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_203_),
    .B(_1693__bF$buf4),
    .C(_190__bF$buf3),
    .Y(_222_)
);

OAI21X1 _3187_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1125_),
    .B(_221_),
    .C(_222_),
    .Y(_1324_)
);

INVX1 _3188_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[13]),
    .Y(_223_)
);

NAND2X1 _3189_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_223_),
    .Y(_224_)
);

OAI21X1 _3190_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [13]),
    .B(ibus_pending_ack_bF$buf1),
    .C(_224_),
    .Y(_225_)
);

OR2X2 _3191_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733__bF$buf3),
    .B(_225_),
    .Y(_226_)
);

OAI21X1 _3192_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_789_),
    .B(_1693__bF$buf3),
    .C(_226_),
    .Y(_1323_)
);

INVX1 _3193_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[12]),
    .Y(_227_)
);

MUX2X1 _3194_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_227_),
    .B(_952_),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_228_)
);

NAND2X1 _3195_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_228_),
    .B(_1693__bF$buf2),
    .Y(_229_)
);

OAI21X1 _3196_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_790_),
    .B(_1693__bF$buf1),
    .C(_229_),
    .Y(_1322_)
);

INVX1 _3197_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[5]),
    .Y(_230_)
);

NAND2X1 _3198_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf6),
    .B(_230_),
    .Y(_231_)
);

OAI21X1 _3199_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [5]),
    .B(ibus_pending_ack_bF$buf5),
    .C(_231_),
    .Y(_232_)
);

MUX2X1 _3200_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_742_),
    .B(_232_),
    .S(_733__bF$buf2),
    .Y(_1321_)
);

INVX1 _3201_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[4]),
    .Y(_233_)
);

NAND2X1 _3202_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf4),
    .B(_233_),
    .Y(_234_)
);

OAI21X1 _3203_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [4]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_234_),
    .Y(_235_)
);

MUX2X1 _3204_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1118_),
    .B(_235_),
    .S(_733__bF$buf1),
    .Y(_1320_)
);

MUX2X1 _3205_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[3]),
    .B(\u_mem_serial.shift_reg [3]),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_236_)
);

MUX2X1 _3206_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_691_),
    .B(_236_),
    .S(_733__bF$buf0),
    .Y(_1319_)
);

NOR2X1 _3207_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_744_),
    .B(_1693__bF$buf0),
    .Y(_237_)
);

INVX1 _3208_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_237_),
    .Y(_238_)
);

INVX1 _3209_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[2]),
    .Y(_239_)
);

NAND2X1 _3210_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf1),
    .B(_239_),
    .Y(_240_)
);

OAI21X1 _3211_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [2]),
    .B(ibus_pending_ack_bF$buf0),
    .C(_240_),
    .Y(_241_)
);

OAI21X1 _3212_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733__bF$buf5),
    .B(_241_),
    .C(_238_),
    .Y(_1318_)
);

INVX1 _3213_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1907_),
    .Y(_242_)
);

NOR2X1 _3214_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast_bF$buf6),
    .B(_242_),
    .Y(_1906_)
);

NAND3X1 _3215_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_1115_),
    .C(_1106_),
    .Y(_243_)
);

OAI21X1 _3216_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1048_),
    .B(_1106_),
    .C(_243_),
    .Y(_244_)
);

AND2X2 _3217_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_244_),
    .B(i_rst_n_bF$buf0),
    .Y(_1316_)
);

OAI21X1 _3218_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_1712_),
    .C(_1907_),
    .Y(_245_)
);

AOI21X1 _3219_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1107_),
    .B(_245_),
    .C(_1126__bF$buf5),
    .Y(_1315_)
);

INVX1 _3220_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(_246_)
);

AOI22X1 _3221_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_246_),
    .B(_1107_),
    .C(_1104_),
    .D(_1052__bF$buf2),
    .Y(_1314_)
);

INVX1 _3222_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1708_),
    .Y(_247_)
);

NOR2X1 _3223_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1064_),
    .B(_1071_),
    .Y(_248_)
);

NAND2X1 _3224_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1101_),
    .B(_248_),
    .Y(_249_)
);

OAI21X1 _3225_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_247_),
    .C(_249_),
    .Y(_250_)
);

NAND2X1 _3226_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .B(_250_),
    .Y(_251_)
);

OAI21X1 _3227_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .B(_247_),
    .C(i_rst_n_bF$buf10),
    .Y(_252_)
);

AOI21X1 _3228_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_251_),
    .B(_736_),
    .C(_252_),
    .Y(_1313_)
);

INVX1 _3229_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[6]),
    .Y(_253_)
);

NAND2X1 _3230_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf6),
    .B(_253_),
    .Y(_254_)
);

OAI21X1 _3231_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [6]),
    .B(ibus_pending_ack_bF$buf5),
    .C(_254_),
    .Y(_255_)
);

MUX2X1 _3232_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1119_),
    .B(_255_),
    .S(_733__bF$buf4),
    .Y(_1312_)
);

INVX1 _3233_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[14]),
    .Y(_256_)
);

NAND2X1 _3234_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf4),
    .B(_256_),
    .Y(_257_)
);

OAI21X1 _3235_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [14]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_257_),
    .Y(_258_)
);

OR2X2 _3236_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733__bF$buf3),
    .B(_258_),
    .Y(_259_)
);

OAI21X1 _3237_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_780_),
    .B(_1693__bF$buf5),
    .C(_259_),
    .Y(_1311_)
);

OAI21X1 _3238_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_688_),
    .B(_1693__bF$buf4),
    .C(_176_),
    .Y(_1310_)
);

NAND2X1 _3239_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_246_),
    .B(_250_),
    .Y(_260_)
);

AOI21X1 _3240_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_260_),
    .B(_761_),
    .C(_252_),
    .Y(_1309_)
);

INVX1 _3241_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_261_)
);

INVX1 _3242_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[30]),
    .Y(_262_)
);

MUX2X1 _3243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_262_),
    .B(_1715_),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_263_)
);

NAND2X1 _3244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_263_),
    .B(_1693__bF$buf3),
    .Y(_264_)
);

OAI21X1 _3245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_261_),
    .B(_1693__bF$buf2),
    .C(_264_),
    .Y(_1308_)
);

INVX1 _3246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[3]),
    .Y(_265_)
);

NOR2X1 _3247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .Y(_266_)
);

OAI21X1 _3248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_759_),
    .B(_266_),
    .C(_674_),
    .Y(_267_)
);

NAND2X1 _3249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_267_),
    .B(_754_),
    .Y(_268_)
);

OAI21X1 _3250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[4]),
    .B(_268_),
    .C(_733__bF$buf2),
    .Y(_269_)
);

AND2X2 _3251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733__bF$buf1),
    .B(_268_),
    .Y(_270_)
);

AOI22X1 _3252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_265_),
    .B(_270_),
    .C(_157_),
    .D(_269_),
    .Y(_1307_)
);

INVX1 _3253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[2]),
    .Y(_271_)
);

OAI21X1 _3254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[3]),
    .B(_268_),
    .C(_733__bF$buf0),
    .Y(_272_)
);

AOI22X1 _3255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_271_),
    .B(_270_),
    .C(_153_),
    .D(_272_),
    .Y(_1306_)
);

INVX1 _3256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[1]),
    .Y(_273_)
);

OAI21X1 _3257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[2]),
    .B(_268_),
    .C(_733__bF$buf5),
    .Y(_274_)
);

AOI22X1 _3258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_273_),
    .B(_270_),
    .C(_149_),
    .D(_274_),
    .Y(_1305_)
);

INVX1 _3259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm ),
    .Y(_275_)
);

OAI21X1 _3260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[1]),
    .B(_268_),
    .C(_733__bF$buf4),
    .Y(_276_)
);

AOI22X1 _3261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_275_),
    .B(_270_),
    .C(_145_),
    .D(_276_),
    .Y(_1304_)
);

INVX1 _3262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_277_)
);

OAI21X1 _3263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm ),
    .B(_268_),
    .C(_733__bF$buf3),
    .Y(_278_)
);

AOI22X1 _3264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_277_),
    .B(_270_),
    .C(_259_),
    .D(_278_),
    .Y(_1303_)
);

INVX1 _3265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_279_)
);

OAI21X1 _3266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .B(_268_),
    .C(_733__bF$buf2),
    .Y(_280_)
);

AOI22X1 _3267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_279_),
    .B(_270_),
    .C(_226_),
    .D(_280_),
    .Y(_1302_)
);

INVX1 _3268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_281_)
);

OAI21X1 _3269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .B(_268_),
    .C(_733__bF$buf1),
    .Y(_282_)
);

AOI22X1 _3270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_281_),
    .B(_270_),
    .C(_229_),
    .D(_282_),
    .Y(_1301_)
);

INVX1 _3271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_283_)
);

OAI21X1 _3272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .B(_268_),
    .C(_733__bF$buf0),
    .Y(_284_)
);

AOI22X1 _3273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_283_),
    .B(_270_),
    .C(_176_),
    .D(_284_),
    .Y(_1300_)
);

NAND2X1 _3274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1121_),
    .B(_733__bF$buf5),
    .Y(_285_)
);

INVX1 _3275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_285_),
    .Y(_286_)
);

AND2X2 _3276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_686_),
    .B(_1118_),
    .Y(_287_)
);

AOI21X1 _3277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_237_),
    .B(_287_),
    .C(_286_),
    .Y(_288_)
);

INVX1 _3278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[29]),
    .Y(_289_)
);

NAND2X1 _3279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf1),
    .B(_289_),
    .Y(_290_)
);

OAI21X1 _3280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [29]),
    .B(ibus_pending_ack_bF$buf0),
    .C(_290_),
    .Y(_291_)
);

NAND2X1 _3281_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_291_),
    .B(_1693__bF$buf1),
    .Y(_292_)
);

OAI21X1 _3282_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .B(_1693__bF$buf0),
    .C(_292_),
    .Y(_293_)
);

NOR2X1 _3283_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_288_),
    .Y(_294_)
);

AOI21X1 _3284_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_288_),
    .B(_293_),
    .C(_294_),
    .Y(_1299_)
);

INVX1 _3285_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[28]),
    .Y(_295_)
);

NAND2X1 _3286_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf6),
    .B(_295_),
    .Y(_296_)
);

OAI21X1 _3287_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [28]),
    .B(ibus_pending_ack_bF$buf5),
    .C(_296_),
    .Y(_297_)
);

NAND2X1 _3288_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_297_),
    .B(_1693__bF$buf5),
    .Y(_298_)
);

OAI21X1 _3289_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_1693__bF$buf4),
    .C(_298_),
    .Y(_299_)
);

NOR2X1 _3290_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_288_),
    .Y(_300_)
);

AOI21X1 _3291_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_288_),
    .B(_299_),
    .C(_300_),
    .Y(_1298_)
);

INVX1 _3292_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[27]),
    .Y(_301_)
);

NAND2X1 _3293_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf4),
    .B(_301_),
    .Y(_302_)
);

OAI21X1 _3294_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [27]),
    .B(ibus_pending_ack_bF$buf3),
    .C(_302_),
    .Y(_303_)
);

NAND2X1 _3295_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_303_),
    .B(_1693__bF$buf3),
    .Y(_304_)
);

OAI21X1 _3296_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_1693__bF$buf2),
    .C(_304_),
    .Y(_305_)
);

NOR2X1 _3297_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_288_),
    .Y(_306_)
);

AOI21X1 _3298_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_288_),
    .B(_305_),
    .C(_306_),
    .Y(_1297_)
);

INVX1 _3299_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[26]),
    .Y(_307_)
);

NAND2X1 _3300_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_307_),
    .Y(_308_)
);

OAI21X1 _3301_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [26]),
    .B(ibus_pending_ack_bF$buf1),
    .C(_308_),
    .Y(_309_)
);

NAND2X1 _3302_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_309_),
    .B(_1693__bF$buf1),
    .Y(_310_)
);

OAI21X1 _3303_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_1693__bF$buf0),
    .C(_310_),
    .Y(_311_)
);

NOR2X1 _3304_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_288_),
    .Y(_312_)
);

AOI21X1 _3305_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_288_),
    .B(_311_),
    .C(_312_),
    .Y(_1296_)
);

INVX1 _3306_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[25]),
    .Y(_313_)
);

NAND2X1 _3307_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_313_),
    .Y(_314_)
);

OAI21X1 _3308_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [25]),
    .B(ibus_pending_ack_bF$buf6),
    .C(_314_),
    .Y(_315_)
);

NAND2X1 _3309_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_315_),
    .B(_1693__bF$buf5),
    .Y(_316_)
);

OAI21X1 _3310_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_1693__bF$buf4),
    .C(_316_),
    .Y(_317_)
);

NOR2X1 _3311_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_288_),
    .Y(_318_)
);

AOI21X1 _3312_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_288_),
    .B(_317_),
    .C(_318_),
    .Y(_1295_)
);

INVX1 _3313_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[3]),
    .Y(_319_)
);

OAI21X1 _3314_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1119_),
    .B(_1118_),
    .C(_741_),
    .Y(_320_)
);

NAND2X1 _3315_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_320_),
    .B(_754_),
    .Y(_321_)
);

OAI21X1 _3316_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[4]),
    .B(_321_),
    .C(_733__bF$buf4),
    .Y(_322_)
);

AND2X2 _3317_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733__bF$buf3),
    .B(_321_),
    .Y(_323_)
);

AOI22X1 _3318_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_319_),
    .B(_323_),
    .C(_188_),
    .D(_322_),
    .Y(_1294_)
);

INVX1 _3319_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[2]),
    .Y(_324_)
);

OAI21X1 _3320_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[3]),
    .B(_321_),
    .C(_733__bF$buf2),
    .Y(_325_)
);

AOI22X1 _3321_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_324_),
    .B(_323_),
    .C(_183_),
    .D(_325_),
    .Y(_1293_)
);

INVX1 _3322_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[1]),
    .Y(_326_)
);

OAI21X1 _3323_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[2]),
    .B(_321_),
    .C(_733__bF$buf1),
    .Y(_327_)
);

AOI22X1 _3324_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_326_),
    .B(_323_),
    .C(_180_),
    .D(_327_),
    .Y(_1292_)
);

OAI21X1 _3325_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[1]),
    .B(_321_),
    .C(_733__bF$buf0),
    .Y(_328_)
);

AOI22X1 _3326_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_678_),
    .B(_323_),
    .C(_176_),
    .D(_328_),
    .Y(_1291_)
);

INVX1 _3327_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_740_),
    .Y(_329_)
);

NAND2X1 _3328_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_754_),
    .B(_329_),
    .Y(_330_)
);

INVX1 _3329_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_330_),
    .Y(_331_)
);

NOR2X1 _3330_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_331_),
    .B(_1693__bF$buf3),
    .Y(_332_)
);

NAND2X1 _3331_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_746_),
    .B(_332_),
    .Y(_333_)
);

INVX1 _3332_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[10]),
    .Y(_334_)
);

NAND2X1 _3333_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf5),
    .B(_334_),
    .Y(_335_)
);

OAI21X1 _3334_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [10]),
    .B(ibus_pending_ack_bF$buf4),
    .C(_335_),
    .Y(_336_)
);

NAND2X1 _3335_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_336_),
    .B(_1693__bF$buf2),
    .Y(_337_)
);

NAND3X1 _3336_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_751_),
    .B(_331_),
    .C(_733__bF$buf5),
    .Y(_338_)
);

NAND3X1 _3337_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_337_),
    .B(_338_),
    .C(_333_),
    .Y(_339_)
);

INVX1 _3338_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_339_),
    .Y(_1290_)
);

NAND2X1 _3339_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_747_),
    .B(_332_),
    .Y(_340_)
);

INVX1 _3340_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[9]),
    .Y(_341_)
);

NAND2X1 _3341_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf3),
    .B(_341_),
    .Y(_342_)
);

OAI21X1 _3342_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [9]),
    .B(ibus_pending_ack_bF$buf2),
    .C(_342_),
    .Y(_343_)
);

NAND2X1 _3343_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_343_),
    .B(_1693__bF$buf1),
    .Y(_344_)
);

NAND3X1 _3344_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_746_),
    .B(_331_),
    .C(_733__bF$buf4),
    .Y(_345_)
);

NAND3X1 _3345_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_344_),
    .B(_345_),
    .C(_340_),
    .Y(_346_)
);

INVX1 _3346_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_346_),
    .Y(_1289_)
);

NAND2X1 _3347_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_748_),
    .B(_332_),
    .Y(_347_)
);

INVX1 _3348_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[8]),
    .Y(_348_)
);

NAND2X1 _3349_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf1),
    .B(_348_),
    .Y(_349_)
);

OAI21X1 _3350_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [8]),
    .B(ibus_pending_ack_bF$buf0),
    .C(_349_),
    .Y(_350_)
);

NAND2X1 _3351_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_350_),
    .B(_1693__bF$buf0),
    .Y(_351_)
);

NAND3X1 _3352_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_747_),
    .B(_331_),
    .C(_733__bF$buf3),
    .Y(_352_)
);

NAND3X1 _3353_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_351_),
    .B(_352_),
    .C(_347_),
    .Y(_353_)
);

INVX1 _3354_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_353_),
    .Y(_1288_)
);

INVX1 _3355_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[7]),
    .Y(_354_)
);

MUX2X1 _3356_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_354_),
    .B(_992_),
    .S(ibus_pending_ack_bF$buf6),
    .Y(_355_)
);

NAND2X1 _3357_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_355_),
    .B(_1693__bF$buf5),
    .Y(_356_)
);

OAI21X1 _3358_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_330_),
    .C(_733__bF$buf2),
    .Y(_357_)
);

AOI22X1 _3359_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_356_),
    .B(_357_),
    .C(_332_),
    .D(_750_),
    .Y(_1287_)
);

NAND2X1 _3360_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_733__bF$buf1),
    .Y(_358_)
);

INVX1 _3361_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[31]),
    .Y(_359_)
);

NAND2X1 _3362_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf5),
    .B(_359_),
    .Y(_360_)
);

OAI21X1 _3363_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [31]),
    .B(ibus_pending_ack_bF$buf4),
    .C(_360_),
    .Y(_361_)
);

OAI21X1 _3364_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_733__bF$buf0),
    .B(_361_),
    .C(_358_),
    .Y(_1286_)
);

INVX1 _3365_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[4]),
    .Y(_362_)
);

NAND3X1 _3366_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_674_),
    .C(_733__bF$buf5),
    .Y(_363_)
);

OAI21X1 _3367_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_1693__bF$buf4),
    .C(_363_),
    .Y(_364_)
);

OAI21X1 _3368_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(rreg1[0]),
    .C(_364_),
    .Y(_365_)
);

AOI21X1 _3369_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693__bF$buf3),
    .B(_1725_),
    .C(_270_),
    .Y(_366_)
);

AOI22X1 _3370_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_362_),
    .B(_270_),
    .C(_365_),
    .D(_366_),
    .Y(_1285_)
);

INVX1 _3371_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_367_)
);

AOI21X1 _3372_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693__bF$buf2),
    .B(_355_),
    .C(_286_),
    .Y(_368_)
);

AOI22X1 _3373_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_367_),
    .B(_286_),
    .C(_368_),
    .D(_363_),
    .Y(_1284_)
);

INVX1 _3374_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_369_)
);

NAND2X1 _3375_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_744_),
    .B(_691_),
    .Y(_370_)
);

OAI21X1 _3376_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_370_),
    .Y(_371_)
);

INVX1 _3377_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_371_),
    .Y(_372_)
);

AOI21X1 _3378_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(_674_),
    .C(_372_),
    .Y(_373_)
);

NAND2X1 _3379_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_744_),
    .Y(_374_)
);

OAI21X1 _3380_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_371_),
    .C(_374_),
    .Y(_375_)
);

OAI22X1 _3381_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_367_),
    .B(_374_),
    .C(_375_),
    .D(_373_),
    .Y(_376_)
);

NAND2X1 _3382_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_376_),
    .B(_733__bF$buf4),
    .Y(_377_)
);

NAND2X1 _3383_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_377_),
    .B(_264_),
    .Y(_378_)
);

NAND2X1 _3384_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_378_),
    .B(_288_),
    .Y(_379_)
);

OAI21X1 _3385_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_369_),
    .B(_288_),
    .C(_379_),
    .Y(_1283_)
);

MUX2X1 _3386_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_1695_),
    .S(_733__bF$buf3),
    .Y(_380_)
);

NAND2X1 _3387_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[4]),
    .B(_323_),
    .Y(_381_)
);

OAI21X1 _3388_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_323_),
    .B(_380_),
    .C(_381_),
    .Y(_1282_)
);

INVX1 _3389_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[11]),
    .Y(_382_)
);

MUX2X1 _3390_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_382_),
    .B(_960_),
    .S(ibus_pending_ack_bF$buf3),
    .Y(_383_)
);

MUX2X1 _3391_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_383_),
    .S(_733__bF$buf2),
    .Y(_384_)
);

NAND2X1 _3392_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_332_),
    .Y(_385_)
);

OAI21X1 _3393_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_332_),
    .B(_384_),
    .C(_385_),
    .Y(_1281_)
);

INVX1 _3394_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [28]),
    .Y(_386_)
);

INVX1 _3395_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [29]),
    .Y(_387_)
);

MUX2X1 _3396_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_386_),
    .B(_387_),
    .S(_661__bF$buf3),
    .Y(_1280_)
);

INVX1 _3397_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [27]),
    .Y(_388_)
);

MUX2X1 _3398_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_388_),
    .B(_386_),
    .S(_661__bF$buf2),
    .Y(_1279_)
);

INVX1 _3399_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [26]),
    .Y(_389_)
);

MUX2X1 _3400_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_389_),
    .B(_388_),
    .S(_661__bF$buf1),
    .Y(_1278_)
);

INVX1 _3401_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [25]),
    .Y(_390_)
);

MUX2X1 _3402_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_390_),
    .B(_389_),
    .S(_661__bF$buf0),
    .Y(_1277_)
);

INVX1 _3403_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [24]),
    .Y(_391_)
);

MUX2X1 _3404_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_391_),
    .B(_390_),
    .S(_661__bF$buf4),
    .Y(_1276_)
);

INVX1 _3405_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [23]),
    .Y(_392_)
);

MUX2X1 _3406_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_392_),
    .B(_391_),
    .S(_661__bF$buf3),
    .Y(_1275_)
);

INVX1 _3407_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [22]),
    .Y(_393_)
);

MUX2X1 _3408_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_393_),
    .B(_392_),
    .S(_661__bF$buf2),
    .Y(_1274_)
);

INVX1 _3409_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [21]),
    .Y(_394_)
);

MUX2X1 _3410_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_394_),
    .B(_393_),
    .S(_661__bF$buf1),
    .Y(_1273_)
);

INVX1 _3411_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_395_)
);

MUX2X1 _3412_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_395_),
    .B(_394_),
    .S(_661__bF$buf0),
    .Y(_1272_)
);

INVX1 _3413_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [19]),
    .Y(_396_)
);

MUX2X1 _3414_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_396_),
    .B(_395_),
    .S(_661__bF$buf4),
    .Y(_1271_)
);

INVX1 _3415_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [18]),
    .Y(_397_)
);

MUX2X1 _3416_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_397_),
    .B(_396_),
    .S(_661__bF$buf3),
    .Y(_1270_)
);

INVX1 _3417_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [17]),
    .Y(_398_)
);

MUX2X1 _3418_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_398_),
    .B(_397_),
    .S(_661__bF$buf2),
    .Y(_1269_)
);

INVX1 _3419_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_399_)
);

MUX2X1 _3420_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_399_),
    .B(_398_),
    .S(_661__bF$buf1),
    .Y(_1268_)
);

INVX1 _3421_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [15]),
    .Y(_400_)
);

MUX2X1 _3422_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_400_),
    .B(_399_),
    .S(_661__bF$buf0),
    .Y(_1267_)
);

INVX1 _3423_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [14]),
    .Y(_401_)
);

MUX2X1 _3424_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_401_),
    .B(_400_),
    .S(_661__bF$buf4),
    .Y(_1266_)
);

INVX1 _3425_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [13]),
    .Y(_402_)
);

MUX2X1 _3426_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_402_),
    .B(_401_),
    .S(_661__bF$buf3),
    .Y(_1265_)
);

INVX1 _3427_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_403_)
);

MUX2X1 _3428_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_403_),
    .B(_402_),
    .S(_661__bF$buf2),
    .Y(_1264_)
);

INVX1 _3429_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [11]),
    .Y(_404_)
);

MUX2X1 _3430_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_404_),
    .B(_403_),
    .S(_661__bF$buf1),
    .Y(_1263_)
);

INVX1 _3431_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [10]),
    .Y(_405_)
);

MUX2X1 _3432_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_405_),
    .B(_404_),
    .S(_661__bF$buf0),
    .Y(_1262_)
);

INVX1 _3433_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [9]),
    .Y(_406_)
);

MUX2X1 _3434_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_406_),
    .B(_405_),
    .S(_661__bF$buf4),
    .Y(_1261_)
);

INVX1 _3435_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_407_)
);

MUX2X1 _3436_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_407_),
    .B(_406_),
    .S(_661__bF$buf3),
    .Y(_1260_)
);

INVX1 _3437_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [7]),
    .Y(_408_)
);

MUX2X1 _3438_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_408_),
    .B(_407_),
    .S(_661__bF$buf2),
    .Y(_1259_)
);

INVX1 _3439_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [6]),
    .Y(_409_)
);

MUX2X1 _3440_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_409_),
    .B(_408_),
    .S(_661__bF$buf1),
    .Y(_1258_)
);

INVX1 _3441_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [5]),
    .Y(_410_)
);

MUX2X1 _3442_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_410_),
    .B(_409_),
    .S(_661__bF$buf0),
    .Y(_1257_)
);

INVX1 _3443_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [4]),
    .Y(_411_)
);

MUX2X1 _3444_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_411_),
    .B(_410_),
    .S(_661__bF$buf4),
    .Y(_1256_)
);

INVX1 _3445_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [3]),
    .Y(_412_)
);

MUX2X1 _3446_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_412_),
    .B(_411_),
    .S(_661__bF$buf3),
    .Y(_1255_)
);

INVX1 _3447_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [2]),
    .Y(_413_)
);

MUX2X1 _3448_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_413_),
    .B(_412_),
    .S(_661__bF$buf2),
    .Y(_1254_)
);

OAI21X1 _3449_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .C(_656_),
    .Y(_414_)
);

MUX2X1 _3450_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661__bF$buf1),
    .B(_414_),
    .S(_753_),
    .Y(_415_)
);

MUX2X1 _3451_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1535_),
    .B(_666_),
    .S(_415_),
    .Y(_1253_)
);

INVX1 _3452_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [30]),
    .Y(_416_)
);

MUX2X1 _3453_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_387_),
    .B(_416_),
    .S(_661__bF$buf0),
    .Y(_1252_)
);

INVX1 _3454_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [31]),
    .Y(_417_)
);

MUX2X1 _3455_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_416_),
    .B(_417_),
    .S(_661__bF$buf4),
    .Y(_1251_)
);

NOR2X1 _3456_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_413_),
    .B(_786_),
    .Y(_418_)
);

OAI21X1 _3457_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [1]),
    .B(_744_),
    .C(\u_cpu.branch_op ),
    .Y(_419_)
);

INVX1 _3458_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_419_),
    .Y(_420_)
);

OAI21X1 _3459_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_691_),
    .C(_420_),
    .Y(_421_)
);

OAI21X1 _3460_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_421_),
    .B(_655_),
    .C(_1118_),
    .Y(_422_)
);

AOI21X1 _3461_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_675_),
    .B(_673_),
    .C(_422_),
    .Y(_423_)
);

NAND3X1 _3462_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.c_r ),
    .B(_419_),
    .C(_1130_),
    .Y(_424_)
);

INVX1 _3463_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.c_r ),
    .Y(_425_)
);

OAI21X1 _3464_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_420_),
    .B(_1517_),
    .C(_425_),
    .Y(_426_)
);

AND2X2 _3465_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_426_),
    .B(_424_),
    .Y(_427_)
);

OAI21X1 _3466_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_427_),
    .B(_423_),
    .C(_786_),
    .Y(_428_)
);

AOI21X1 _3467_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_423_),
    .B(_427_),
    .C(_428_),
    .Y(_429_)
);

OAI21X1 _3468_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_418_),
    .B(_429_),
    .C(_415_),
    .Y(_430_)
);

OAI21X1 _3469_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1535_),
    .B(_415_),
    .C(_430_),
    .Y(_1250_)
);

NAND2X1 _3470_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_427_),
    .B(_423_),
    .Y(_431_)
);

AOI21X1 _3471_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_424_),
    .B(_431_),
    .C(_661__bF$buf3),
    .Y(_1249_)
);

NOR2X1 _3472_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_417_),
    .B(_261_),
    .Y(_432_)
);

AOI21X1 _3473_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_753_),
    .B(_432_),
    .C(_429_),
    .Y(_433_)
);

NAND2X1 _3474_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [31]),
    .B(_661__bF$buf2),
    .Y(_434_)
);

OAI21X1 _3475_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661__bF$buf1),
    .B(_433_),
    .C(_434_),
    .Y(_1248_)
);

NOR2X1 _3476_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .Y(_435_)
);

AOI22X1 _3477_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .C(\u_cpu.bufreg2.i_bytecnt [1]),
    .D(\u_cpu.state.i_ctrl_misalign ),
    .Y(_436_)
);

OAI21X1 _3478_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_435_),
    .B(_436_),
    .C(_754_),
    .Y(_437_)
);

OAI21X1 _3479_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_657_),
    .B(_753_),
    .C(_794_),
    .Y(_438_)
);

INVX1 _3480_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_438_),
    .Y(_439_)
);

OAI21X1 _3481_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_437_),
    .B(_439_),
    .C(_761_),
    .Y(_440_)
);

NOR2X1 _3482_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_781_),
    .B(_440__bF$buf5),
    .Y(_441_)
);

NAND2X1 _3483_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1715_),
    .Y(_442_)
);

OAI21X1 _3484_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.cnt_next [6]),
    .C(_442_),
    .Y(_443_)
);

MUX2X1 _3485_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_648_),
    .B(_443_),
    .S(_441_),
    .Y(_1247_)
);

INVX2 _3486_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_441_),
    .Y(_444_)
);

NAND3X1 _3487_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_658_),
    .B(_794_),
    .C(_197_),
    .Y(_445_)
);

OAI21X1 _3488_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_778_),
    .B(_445_),
    .C(_626_),
    .Y(_446_)
);

AND2X2 _3489_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_446_),
    .B(_761_),
    .Y(_447_)
);

OAI21X1 _3490_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_761_),
    .B(\u_mem_serial.shift_reg [29]),
    .C(_444_),
    .Y(_448_)
);

OAI22X1 _3491_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_777_),
    .B(_444_),
    .C(_447_),
    .D(_448_),
    .Y(_1246_)
);

NAND2X1 _3492_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_824_),
    .Y(_449_)
);

NOR2X1 _3493_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_773_),
    .Y(_450_)
);

NOR2X1 _3494_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_771_),
    .B(_770_),
    .Y(_451_)
);

NOR2X1 _3495_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_450_),
    .B(_451_),
    .Y(_452_)
);

MUX2X1 _3496_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_452_),
    .B(_777_),
    .S(_781_),
    .Y(_453_)
);

OAI21X1 _3497_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_453_),
    .C(_449_),
    .Y(_454_)
);

MUX2X1 _3498_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_771_),
    .B(_454_),
    .S(_441_),
    .Y(_1245_)
);

NAND2X1 _3499_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_832_),
    .Y(_455_)
);

NAND2X1 _3500_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_776_),
    .B(_774_),
    .Y(_456_)
);

INVX1 _3501_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_456_),
    .Y(_457_)
);

NOR2X1 _3502_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_775_),
    .B(_457_),
    .Y(_458_)
);

NOR2X1 _3503_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_770_),
    .B(_458_),
    .Y(_459_)
);

MUX2X1 _3504_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .B(_771_),
    .S(_781_),
    .Y(_460_)
);

OAI21X1 _3505_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_460_),
    .C(_455_),
    .Y(_461_)
);

MUX2X1 _3506_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_775_),
    .B(_461_),
    .S(_441_),
    .Y(_1244_)
);

NOR2X1 _3507_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_775_),
    .B(_781_),
    .Y(_462_)
);

NOR2X1 _3508_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_776_),
    .B(_774_),
    .Y(_463_)
);

OAI21X1 _3509_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_457_),
    .B(_463_),
    .C(_781_),
    .Y(_464_)
);

NAND2X1 _3510_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_761_),
    .B(_464_),
    .Y(_465_)
);

NOR2X1 _3511_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_462_),
    .B(_465_),
    .Y(_466_)
);

OAI21X1 _3512_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_761_),
    .B(\u_mem_serial.shift_reg [26]),
    .C(_444_),
    .Y(_467_)
);

OAI22X1 _3513_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_776_),
    .B(_444_),
    .C(_466_),
    .D(_467_),
    .Y(_1243_)
);

INVX1 _3514_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_468_)
);

INVX1 _3515_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_469_)
);

NOR2X1 _3516_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(_469_),
    .Y(_470_)
);

NOR2X1 _3517_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_468_),
    .Y(_471_)
);

NOR2X1 _3518_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_470_),
    .B(_471_),
    .Y(_472_)
);

OAI21X1 _3519_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_776_),
    .B(_781_),
    .C(_761_),
    .Y(_473_)
);

AOI21X1 _3520_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_781_),
    .B(_472_),
    .C(_473_),
    .Y(_474_)
);

OAI21X1 _3521_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_761_),
    .B(\u_mem_serial.shift_reg [25]),
    .C(_444_),
    .Y(_475_)
);

OAI22X1 _3522_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_468_),
    .B(_444_),
    .C(_474_),
    .D(_475_),
    .Y(_1242_)
);

NAND2X1 _3523_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_441_),
    .Y(_476_)
);

NAND2X1 _3524_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_469_),
    .B(_781_),
    .Y(_477_)
);

OAI21X1 _3525_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_468_),
    .B(_781_),
    .C(_477_),
    .Y(_478_)
);

MUX2X1 _3526_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_478_),
    .B(\u_mem_serial.shift_reg [24]),
    .S(_761_),
    .Y(_479_)
);

OAI21X1 _3527_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_441_),
    .B(_479_),
    .C(_476_),
    .Y(_1241_)
);

NAND2X1 _3528_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_872_),
    .Y(_480_)
);

OAI21X1 _3529_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [23]),
    .C(_480_),
    .Y(_481_)
);

NOR2X1 _3530_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [22]),
    .B(_440__bF$buf4),
    .Y(_482_)
);

AOI21X1 _3531_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf3),
    .B(_481_),
    .C(_482_),
    .Y(_1240_)
);

NAND2X1 _3532_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_880_),
    .Y(_483_)
);

OAI21X1 _3533_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.dlo [22]),
    .C(_483_),
    .Y(_484_)
);

NOR2X1 _3534_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [21]),
    .B(_440__bF$buf2),
    .Y(_485_)
);

AOI21X1 _3535_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf1),
    .B(_484_),
    .C(_485_),
    .Y(_1239_)
);

NAND2X1 _3536_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_888_),
    .Y(_486_)
);

OAI21X1 _3537_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(_486_),
    .Y(_487_)
);

NOR2X1 _3538_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [20]),
    .B(_440__bF$buf0),
    .Y(_488_)
);

AOI21X1 _3539_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf5),
    .B(_487_),
    .C(_488_),
    .Y(_1238_)
);

NAND2X1 _3540_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_896_),
    .Y(_489_)
);

OAI21X1 _3541_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [20]),
    .C(_489_),
    .Y(_490_)
);

NOR2X1 _3542_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_440__bF$buf4),
    .Y(_491_)
);

AOI21X1 _3543_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf3),
    .B(_490_),
    .C(_491_),
    .Y(_1237_)
);

NAND2X1 _3544_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_904_),
    .Y(_492_)
);

OAI21X1 _3545_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [19]),
    .C(_492_),
    .Y(_493_)
);

NOR2X1 _3546_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [18]),
    .B(_440__bF$buf2),
    .Y(_494_)
);

AOI21X1 _3547_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf1),
    .B(_493_),
    .C(_494_),
    .Y(_1236_)
);

NAND2X1 _3548_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_912_),
    .Y(_495_)
);

OAI21X1 _3549_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.dlo [18]),
    .C(_495_),
    .Y(_496_)
);

NOR2X1 _3550_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [17]),
    .B(_440__bF$buf0),
    .Y(_497_)
);

AOI21X1 _3551_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf5),
    .B(_496_),
    .C(_497_),
    .Y(_1235_)
);

NAND2X1 _3552_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_920_),
    .Y(_498_)
);

OAI21X1 _3553_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [17]),
    .C(_498_),
    .Y(_499_)
);

NOR2X1 _3554_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .B(_440__bF$buf4),
    .Y(_500_)
);

AOI21X1 _3555_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf3),
    .B(_499_),
    .C(_500_),
    .Y(_1234_)
);

NAND2X1 _3556_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_928_),
    .Y(_501_)
);

OAI21X1 _3557_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(_501_),
    .Y(_502_)
);

NOR2X1 _3558_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_440__bF$buf2),
    .Y(_503_)
);

AOI21X1 _3559_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf1),
    .B(_502_),
    .C(_503_),
    .Y(_1233_)
);

NAND2X1 _3560_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_936_),
    .Y(_504_)
);

OAI21X1 _3561_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.dlo [15]),
    .C(_504_),
    .Y(_505_)
);

NOR2X1 _3562_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [14]),
    .B(_440__bF$buf0),
    .Y(_506_)
);

AOI21X1 _3563_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf5),
    .B(_505_),
    .C(_506_),
    .Y(_1232_)
);

NAND2X1 _3564_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_944_),
    .Y(_507_)
);

OAI21X1 _3565_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [14]),
    .C(_507_),
    .Y(_508_)
);

NOR2X1 _3566_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [13]),
    .B(_440__bF$buf4),
    .Y(_509_)
);

AOI21X1 _3567_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf3),
    .B(_508_),
    .C(_509_),
    .Y(_1231_)
);

NAND2X1 _3568_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_952_),
    .Y(_510_)
);

OAI21X1 _3569_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(_510_),
    .Y(_511_)
);

NOR2X1 _3570_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [12]),
    .B(_440__bF$buf2),
    .Y(_512_)
);

AOI21X1 _3571_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf1),
    .B(_511_),
    .C(_512_),
    .Y(_1230_)
);

NAND2X1 _3572_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_960_),
    .Y(_513_)
);

OAI21X1 _3573_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [12]),
    .C(_513_),
    .Y(_514_)
);

NOR2X1 _3574_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_440__bF$buf0),
    .Y(_515_)
);

AOI21X1 _3575_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf5),
    .B(_514_),
    .C(_515_),
    .Y(_1229_)
);

NAND2X1 _3576_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_968_),
    .Y(_516_)
);

OAI21X1 _3577_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.dlo [11]),
    .C(_516_),
    .Y(_517_)
);

NOR2X1 _3578_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [10]),
    .B(_440__bF$buf4),
    .Y(_518_)
);

AOI21X1 _3579_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf3),
    .B(_517_),
    .C(_518_),
    .Y(_1228_)
);

NAND2X1 _3580_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_976_),
    .Y(_519_)
);

OAI21X1 _3581_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [10]),
    .C(_519_),
    .Y(_520_)
);

NOR2X1 _3582_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [9]),
    .B(_440__bF$buf2),
    .Y(_521_)
);

AOI21X1 _3583_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf1),
    .B(_520_),
    .C(_521_),
    .Y(_1227_)
);

NAND2X1 _3584_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_984_),
    .Y(_522_)
);

OAI21X1 _3585_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [9]),
    .C(_522_),
    .Y(_523_)
);

NOR2X1 _3586_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(_440__bF$buf0),
    .Y(_524_)
);

AOI21X1 _3587_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf5),
    .B(_523_),
    .C(_524_),
    .Y(_1226_)
);

NAND2X1 _3588_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_992_),
    .Y(_525_)
);

OAI21X1 _3589_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.dlo [8]),
    .C(_525_),
    .Y(_526_)
);

NOR2X1 _3590_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_440__bF$buf4),
    .Y(_527_)
);

AOI21X1 _3591_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf3),
    .B(_526_),
    .C(_527_),
    .Y(_1225_)
);

NAND2X1 _3592_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1000_),
    .Y(_528_)
);

OAI21X1 _3593_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg2.dlo [7]),
    .C(_528_),
    .Y(_529_)
);

NOR2X1 _3594_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [6]),
    .B(_440__bF$buf2),
    .Y(_530_)
);

AOI21X1 _3595_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf1),
    .B(_529_),
    .C(_530_),
    .Y(_1224_)
);

NAND2X1 _3596_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1008_),
    .Y(_531_)
);

OAI21X1 _3597_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_cpu.bufreg2.dlo [6]),
    .C(_531_),
    .Y(_532_)
);

NOR2X1 _3598_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [5]),
    .B(_440__bF$buf0),
    .Y(_533_)
);

AOI21X1 _3599_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf5),
    .B(_532_),
    .C(_533_),
    .Y(_1223_)
);

NAND2X1 _3600_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1016_),
    .Y(_534_)
);

OAI21X1 _3601_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_cpu.bufreg2.dlo [5]),
    .C(_534_),
    .Y(_535_)
);

NOR2X1 _3602_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [4]),
    .B(_440__bF$buf4),
    .Y(_536_)
);

AOI21X1 _3603_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf3),
    .B(_535_),
    .C(_536_),
    .Y(_1222_)
);

NAND2X1 _3604_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_1024_),
    .Y(_537_)
);

OAI21X1 _3605_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(_537_),
    .Y(_538_)
);

NOR2X1 _3606_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_440__bF$buf2),
    .Y(_539_)
);

AOI21X1 _3607_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf1),
    .B(_538_),
    .C(_539_),
    .Y(_1221_)
);

NAND2X1 _3608_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_1032_),
    .Y(_540_)
);

OAI21X1 _3609_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_cpu.bufreg2.dlo [3]),
    .C(_540_),
    .Y(_541_)
);

NOR2X1 _3610_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [2]),
    .B(_440__bF$buf0),
    .Y(_542_)
);

AOI21X1 _3611_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf5),
    .B(_541_),
    .C(_542_),
    .Y(_1220_)
);

NAND2X1 _3612_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1041_),
    .Y(_543_)
);

OAI21X1 _3613_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_cpu.bufreg2.dlo [2]),
    .C(_543_),
    .Y(_544_)
);

MUX2X1 _3614_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_544_),
    .B(_1047_),
    .S(_440__bF$buf4),
    .Y(_1219_)
);

INVX1 _3615_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [0]),
    .Y(_545_)
);

NAND2X1 _3616_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_545_),
    .Y(_546_)
);

OAI21X1 _3617_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(_546_),
    .Y(_547_)
);

MUX2X1 _3618_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_547_),
    .B(_1066_),
    .S(_440__bF$buf3),
    .Y(_1218_)
);

NAND2X1 _3619_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_864_),
    .Y(_548_)
);

OAI21X1 _3620_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .C(_548_),
    .Y(_549_)
);

NOR2X1 _3621_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_440__bF$buf2),
    .Y(_550_)
);

AOI21X1 _3622_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440__bF$buf1),
    .B(_549_),
    .C(_550_),
    .Y(_1217_)
);

INVX1 _3623_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_551_)
);

OR2X2 _3624_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1518_),
    .B(mem_dbus_ack_bF$buf0),
    .Y(_552_)
);

AOI21X1 _3625_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_reg [31]),
    .C(_441_),
    .Y(_553_)
);

AOI22X1 _3626_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_551_),
    .B(_441_),
    .C(_553_),
    .D(_552_),
    .Y(_1216_)
);

INVX1 _3627_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_554_)
);

INVX1 _3628_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_555_)
);

INVX8 _3629_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_193_),
    .Y(_556_)
);

OAI22X1 _3630_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_554_),
    .B(_190__bF$buf2),
    .C(_555_),
    .D(_556__bF$buf4),
    .Y(_1215_)
);

INVX1 _3631_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_557_)
);

OAI22X1 _3632_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_557_),
    .B(_190__bF$buf1),
    .C(_554_),
    .D(_556__bF$buf3),
    .Y(_1214_)
);

INVX1 _3633_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_558_)
);

OAI22X1 _3634_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_558_),
    .B(_190__bF$buf0),
    .C(_557_),
    .D(_556__bF$buf2),
    .Y(_1213_)
);

INVX1 _3635_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_559_)
);

OAI22X1 _3636_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_559_),
    .B(_190__bF$buf4),
    .C(_558_),
    .D(_556__bF$buf1),
    .Y(_1212_)
);

INVX1 _3637_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_560_)
);

OAI22X1 _3638_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_560_),
    .B(_190__bF$buf3),
    .C(_559_),
    .D(_556__bF$buf0),
    .Y(_1211_)
);

INVX1 _3639_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_561_)
);

OAI22X1 _3640_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_561_),
    .B(_190__bF$buf2),
    .C(_560_),
    .D(_556__bF$buf4),
    .Y(_1210_)
);

INVX1 _3641_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_562_)
);

OAI22X1 _3642_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_562_),
    .B(_190__bF$buf1),
    .C(_561_),
    .D(_556__bF$buf3),
    .Y(_1209_)
);

INVX1 _3643_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_563_)
);

OAI22X1 _3644_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_563_),
    .B(_190__bF$buf0),
    .C(_562_),
    .D(_556__bF$buf2),
    .Y(_1208_)
);

INVX1 _3645_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_564_)
);

OAI22X1 _3646_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_564_),
    .B(_190__bF$buf4),
    .C(_563_),
    .D(_556__bF$buf1),
    .Y(_1207_)
);

INVX1 _3647_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_565_)
);

OAI22X1 _3648_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_565_),
    .B(_190__bF$buf3),
    .C(_564_),
    .D(_556__bF$buf0),
    .Y(_1206_)
);

INVX1 _3649_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_566_)
);

OAI22X1 _3650_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_566_),
    .B(_190__bF$buf2),
    .C(_565_),
    .D(_556__bF$buf4),
    .Y(_1205_)
);

INVX1 _3651_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_567_)
);

OAI22X1 _3652_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_567_),
    .B(_190__bF$buf1),
    .C(_566_),
    .D(_556__bF$buf3),
    .Y(_1204_)
);

INVX1 _3653_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_568_)
);

OAI22X1 _3654_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_568_),
    .B(_190__bF$buf0),
    .C(_567_),
    .D(_556__bF$buf2),
    .Y(_1203_)
);

INVX1 _3655_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_569_)
);

OAI22X1 _3656_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_569_),
    .B(_190__bF$buf4),
    .C(_568_),
    .D(_556__bF$buf1),
    .Y(_1202_)
);

INVX1 _3657_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_570_)
);

OAI22X1 _3658_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_570_),
    .B(_190__bF$buf3),
    .C(_569_),
    .D(_556__bF$buf0),
    .Y(_1201_)
);

INVX1 _3659_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_571_)
);

OAI22X1 _3660_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_571_),
    .B(_190__bF$buf2),
    .C(_570_),
    .D(_556__bF$buf4),
    .Y(_1200_)
);

INVX1 _3661_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_572_)
);

OAI22X1 _3662_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_572_),
    .B(_190__bF$buf1),
    .C(_571_),
    .D(_556__bF$buf3),
    .Y(_1199_)
);

INVX1 _3663_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_573_)
);

OAI22X1 _3664_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_573_),
    .B(_190__bF$buf0),
    .C(_572_),
    .D(_556__bF$buf2),
    .Y(_1198_)
);

INVX1 _3665_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_574_)
);

OAI22X1 _3666_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_574_),
    .B(_190__bF$buf4),
    .C(_573_),
    .D(_556__bF$buf1),
    .Y(_1197_)
);

INVX1 _3667_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_575_)
);

OAI22X1 _3668_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_575_),
    .B(_190__bF$buf3),
    .C(_574_),
    .D(_556__bF$buf0),
    .Y(_1196_)
);

INVX1 _3669_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_576_)
);

OAI22X1 _3670_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_576_),
    .B(_190__bF$buf2),
    .C(_575_),
    .D(_556__bF$buf4),
    .Y(_1195_)
);

INVX1 _3671_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_577_)
);

OAI22X1 _3672_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_577_),
    .B(_190__bF$buf1),
    .C(_576_),
    .D(_556__bF$buf3),
    .Y(_1194_)
);

INVX1 _3673_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_578_)
);

OAI22X1 _3674_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_578_),
    .B(_190__bF$buf0),
    .C(_577_),
    .D(_556__bF$buf2),
    .Y(_1193_)
);

INVX1 _3675_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_579_)
);

OAI22X1 _3676_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_579_),
    .B(_190__bF$buf4),
    .C(_578_),
    .D(_556__bF$buf1),
    .Y(_1192_)
);

INVX1 _3677_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_580_)
);

OAI22X1 _3678_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_580_),
    .B(_190__bF$buf3),
    .C(_579_),
    .D(_556__bF$buf0),
    .Y(_1191_)
);

INVX1 _3679_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_581_)
);

OAI22X1 _3680_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_581_),
    .B(_190__bF$buf2),
    .C(_580_),
    .D(_556__bF$buf4),
    .Y(_1190_)
);

OAI22X1 _3681_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1544_),
    .B(_190__bF$buf1),
    .C(_581_),
    .D(_556__bF$buf3),
    .Y(_1189_)
);

INVX1 _3682_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_582_)
);

OAI22X1 _3683_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_555_),
    .B(_190__bF$buf0),
    .C(_582_),
    .D(_556__bF$buf2),
    .Y(_1188_)
);

INVX1 _3684_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_583_)
);

OAI22X1 _3685_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_583_),
    .B(_190__bF$buf4),
    .C(_189_),
    .D(_556__bF$buf1),
    .Y(_1187_)
);

INVX1 _3686_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_584_)
);

OAI22X1 _3687_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_584_),
    .B(_190__bF$buf3),
    .C(_583_),
    .D(_556__bF$buf0),
    .Y(_1186_)
);

OAI22X1 _3688_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_582_),
    .B(_190__bF$buf2),
    .C(_584_),
    .D(_556__bF$buf4),
    .Y(_1185_)
);

AOI21X1 _3689_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_659_),
    .B(_682_),
    .C(_752_),
    .Y(_1184_)
);

INVX1 _3690_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1546_),
    .Y(_585_)
);

AOI21X1 _3691_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1551_),
    .B(_585_),
    .C(_752_),
    .Y(_1183_)
);

NAND2X1 _3692_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1121_),
    .B(_1141_),
    .Y(_586_)
);

OAI21X1 _3693_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1121_),
    .B(_208_),
    .C(_586_),
    .Y(_1182_)
);

NAND2X1 _3694_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_1121_),
    .Y(_587_)
);

OAI21X1 _3695_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1121_),
    .B(_214_),
    .C(_587_),
    .Y(_1181_)
);

NAND2X1 _3696_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1086_),
    .B(_1077_),
    .Y(_588_)
);

INVX1 _3697_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_588_),
    .Y(_589_)
);

OAI21X1 _3698_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1085_),
    .B(_1084_),
    .C(_589_),
    .Y(_590_)
);

NOR2X1 _3699_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_590_),
    .B(_1069_),
    .Y(_591_)
);

NAND2X1 _3700_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [6]),
    .B(\u_mem_serial.bit_count [2]),
    .Y(_592_)
);

NOR2X1 _3701_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_592_),
    .B(_588_),
    .Y(_593_)
);

NAND2X1 _3702_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1063_),
    .B(_593_),
    .Y(_594_)
);

INVX1 _3703_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_594_),
    .Y(_595_)
);

NAND2X1 _3704_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_1535_),
    .Y(_596_)
);

NAND2X1 _3705_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_1094_),
    .Y(_597_)
);

NAND2X1 _3706_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_596_),
    .B(_597_),
    .Y(_598_)
);

OAI21X1 _3707_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.bufreg.data [0]),
    .C(_598_),
    .Y(_599_)
);

NAND2X1 _3708_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_789_),
    .B(_599_),
    .Y(_600_)
);

NAND2X1 _3709_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_666_),
    .Y(_601_)
);

AOI21X1 _3710_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(\u_cpu.decode.co_mem_word ),
    .C(_1048_),
    .Y(_602_)
);

OAI21X1 _3711_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_601_),
    .B(_598_),
    .C(_602_),
    .Y(_603_)
);

AOI21X1 _3712_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_600_),
    .B(_1064_),
    .C(_603_),
    .Y(_604_)
);

AOI21X1 _3713_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_591_),
    .B(_604_),
    .C(_595_),
    .Y(_605_)
);

OAI21X1 _3714_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [31]),
    .B(_591_),
    .C(_605_),
    .Y(_606_)
);

NOR2X1 _3715_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_1094_),
    .Y(_607_)
);

AOI22X1 _3716_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_593_),
    .B(_607_),
    .C(_595_),
    .D(\u_mem_serial.active_ibus ),
    .Y(_608_)
);

NAND2X1 _3717_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_607_),
    .B(_593_),
    .Y(_609_)
);

OAI21X1 _3718_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we_bF$buf1 ),
    .B(_609_),
    .C(_1907_),
    .Y(_610_)
);

AOI21X1 _3719_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_606_),
    .B(_608_),
    .C(_610_),
    .Y(_0_)
);

NAND2X1 _3720_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1540_),
    .B(_1539_),
    .Y(_1179_)
);

NAND2X1 _3721_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1074_),
    .B(_1078_),
    .Y(_611_)
);

AOI21X1 _3722_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1076_),
    .B(\u_mem_serial.bit_count [6]),
    .C(_1106_),
    .Y(_612_)
);

AOI21X1 _3723_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_611_),
    .B(_612_),
    .C(_1126__bF$buf4),
    .Y(_1178_)
);

AND2X2 _3724_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_737_),
    .B(_755_),
    .Y(_613_)
);

INVX1 _3725_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_613_),
    .Y(_614_)
);

OAI21X1 _3726_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_614_),
    .C(mem_ibus_ack),
    .Y(_615_)
);

MUX2X1 _3727_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_262_),
    .B(_1715_),
    .S(_615__bF$buf4),
    .Y(_1177_)
);

MUX2X1 _3728_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_289_),
    .B(_816_),
    .S(_615__bF$buf3),
    .Y(_1176_)
);

MUX2X1 _3729_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_295_),
    .B(_824_),
    .S(_615__bF$buf2),
    .Y(_1175_)
);

MUX2X1 _3730_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_301_),
    .B(_832_),
    .S(_615__bF$buf1),
    .Y(_1174_)
);

MUX2X1 _3731_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_307_),
    .B(_840_),
    .S(_615__bF$buf0),
    .Y(_1173_)
);

MUX2X1 _3732_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_313_),
    .B(_848_),
    .S(_615__bF$buf4),
    .Y(_1172_)
);

MUX2X1 _3733_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1694_),
    .B(_856_),
    .S(_615__bF$buf3),
    .Y(_1171_)
);

MUX2X1 _3734_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_186_),
    .B(_864_),
    .S(_615__bF$buf2),
    .Y(_1170_)
);

MUX2X1 _3735_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_181_),
    .B(_872_),
    .S(_615__bF$buf1),
    .Y(_1169_)
);

MUX2X1 _3736_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_178_),
    .B(_880_),
    .S(_615__bF$buf0),
    .Y(_1168_)
);

MUX2X1 _3737_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_174_),
    .B(_888_),
    .S(_615__bF$buf4),
    .Y(_1167_)
);

MUX2X1 _3738_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1724_),
    .B(_896_),
    .S(_615__bF$buf3),
    .Y(_1166_)
);

MUX2X1 _3739_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_155_),
    .B(_904_),
    .S(_615__bF$buf2),
    .Y(_1165_)
);

MUX2X1 _3740_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_151_),
    .B(_912_),
    .S(_615__bF$buf1),
    .Y(_1164_)
);

MUX2X1 _3741_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_147_),
    .B(_920_),
    .S(_615__bF$buf0),
    .Y(_1163_)
);

MUX2X1 _3742_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_143_),
    .B(_928_),
    .S(_615__bF$buf4),
    .Y(_1162_)
);

MUX2X1 _3743_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_256_),
    .B(_936_),
    .S(_615__bF$buf3),
    .Y(_1161_)
);

MUX2X1 _3744_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_223_),
    .B(_944_),
    .S(_615__bF$buf2),
    .Y(_1160_)
);

MUX2X1 _3745_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_227_),
    .B(_952_),
    .S(_615__bF$buf1),
    .Y(_1159_)
);

MUX2X1 _3746_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_382_),
    .B(_960_),
    .S(_615__bF$buf0),
    .Y(_1158_)
);

MUX2X1 _3747_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_334_),
    .B(_968_),
    .S(_615__bF$buf4),
    .Y(_1157_)
);

MUX2X1 _3748_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_341_),
    .B(_976_),
    .S(_615__bF$buf3),
    .Y(_1156_)
);

MUX2X1 _3749_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_348_),
    .B(_984_),
    .S(_615__bF$buf2),
    .Y(_1155_)
);

MUX2X1 _3750_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_354_),
    .B(_992_),
    .S(_615__bF$buf1),
    .Y(_1154_)
);

MUX2X1 _3751_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_253_),
    .B(_1000_),
    .S(_615__bF$buf0),
    .Y(_1153_)
);

MUX2X1 _3752_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_230_),
    .B(_1008_),
    .S(_615__bF$buf4),
    .Y(_1152_)
);

MUX2X1 _3753_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_233_),
    .B(_1016_),
    .S(_615__bF$buf3),
    .Y(_1151_)
);

INVX1 _3754_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[3]),
    .Y(_616_)
);

MUX2X1 _3755_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_616_),
    .B(_1024_),
    .S(_615__bF$buf2),
    .Y(_1150_)
);

MUX2X1 _3756_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_239_),
    .B(_1032_),
    .S(_615__bF$buf1),
    .Y(_1149_)
);

INVX1 _3757_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[1]),
    .Y(_617_)
);

MUX2X1 _3758_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_617_),
    .B(_1041_),
    .S(_615__bF$buf0),
    .Y(_1148_)
);

INVX1 _3759_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[0]),
    .Y(_618_)
);

MUX2X1 _3760_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_618_),
    .B(_545_),
    .S(_615__bF$buf4),
    .Y(_1147_)
);

AOI21X1 _3761_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1096_),
    .B(_1099_),
    .C(_1104_),
    .Y(_1515_)
);

INVX1 _3762_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1097_),
    .Y(_1096_)
);

NOR2X1 _3763_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .B(_1098_),
    .Y(_1097_)
);

OR2X2 _3764_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1102_),
    .B(_1100_),
    .Y(_1098_)
);

OAI21X1 _3765_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1100_),
    .B(_1102_),
    .C(\u_mem_serial.bit_count [0]),
    .Y(_1099_)
);

OAI21X1 _3766_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .B(\u_mem_serial.state [0]),
    .C(_1101_),
    .Y(_1100_)
);

INVX1 _3767_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .Y(_1101_)
);

AND2X2 _3768_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1103_),
    .B(_1111_),
    .Y(_1102_)
);

OAI21X1 _3769_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1124_),
    .B(_1115_),
    .C(_1113_),
    .Y(_1103_)
);

INVX1 _3770_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1105_),
    .Y(_1104_)
);

NOR2X1 _3771_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf3),
    .B(_1106_),
    .Y(_1105_)
);

INVX1 _3772_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1107_),
    .Y(_1106_)
);

OAI21X1 _3773_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1124_),
    .B(_1115_),
    .C(_1108_),
    .Y(_1107_)
);

AND2X2 _3774_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1109_),
    .B(_1113_),
    .Y(_1108_)
);

NOR2X1 _3775_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1112_),
    .B(_1110_),
    .Y(_1109_)
);

INVX1 _3776_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1111_),
    .Y(_1110_)
);

AND2X2 _3777_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_div [1]),
    .B(\gen_int_sys_clk.clk_div [0]),
    .Y(_627_)
);

NAND2X1 _3778_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_div [2]),
    .B(_627_),
    .Y(_628_)
);

INVX1 _3779_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_628_),
    .Y(_629_)
);

NOR2X1 _3780_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_div [2]),
    .B(_627_),
    .Y(_630_)
);

NOR2X1 _3781_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_630_),
    .B(_629_),
    .Y(_1138_)
);

NOR2X1 _3782_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_div [1]),
    .B(\gen_int_sys_clk.clk_div [0]),
    .Y(_631_)
);

NOR2X1 _3783_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_631_),
    .B(_627_),
    .Y(_1137_)
);

INVX1 _3784_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_div [0]),
    .Y(_1136_)
);

INVX1 _3785_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_div [3]),
    .Y(_632_)
);

OAI21X1 _3786_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_632_),
    .B(_628_),
    .C(_1114_),
    .Y(_633_)
);

NOR2X1 _3787_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_632_),
    .B(_628_),
    .Y(_634_)
);

NAND2X1 _3788_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .B(_634_),
    .Y(_635_)
);

AND2X2 _3789_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_635_),
    .B(_633_),
    .Y(_1135_)
);

NAND2X1 _3790_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_236_),
    .B(_1693__bF$buf1),
    .Y(_636_)
);

INVX1 _3791_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_241_),
    .Y(_637_)
);

INVX1 _3792_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_232_),
    .Y(_638_)
);

NAND3X1 _3793_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_225_),
    .B(_263_),
    .C(_638_),
    .Y(_639_)
);

AOI22X1 _3794_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_225_),
    .B(_228_),
    .C(_639_),
    .D(_258_),
    .Y(_640_)
);

INVX1 _3795_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_235_),
    .Y(_641_)
);

NAND2X1 _3796_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [1]),
    .B(\u_mem_serial.shift_reg [0]),
    .Y(_642_)
);

NAND3X1 _3797_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf1),
    .B(ibus_pending_rdt[1]),
    .C(ibus_pending_rdt[0]),
    .Y(_643_)
);

OAI21X1 _3798_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_642_),
    .C(_643_),
    .Y(_644_)
);

NAND3X1 _3799_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_255_),
    .B(_644_),
    .C(_641_),
    .Y(_645_)
);

INVX1 _3800_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_645_),
    .Y(_646_)
);

OAI21X1 _3801_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_637_),
    .B(_640_),
    .C(_646_),
    .Y(_647_)
);

OAI22X1 _3802_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_707_),
    .B(_1693__bF$buf0),
    .C(_647_),
    .D(_636_),
    .Y(_1134_)
);

NOR2X1 _3803_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .Y(_1111_)
);

INVX1 _3804_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .Y(_1112_)
);

NOR2X1 _3805_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_1114_),
    .Y(_1113_)
);

INVX1 _3806_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .Y(_1114_)
);

NOR2X1 _3807_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1568_),
    .B(_1583_),
    .Y(_650_)
);

NAND3X1 _3808_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [1]),
    .C(_650_),
    .Y(_651_)
);

OAI21X1 _3809_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_711_),
    .B(_651_),
    .C(rf_write_drain_busy),
    .Y(_652_)
);

NAND2X1 _3810_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_652_),
    .B(_737_),
    .Y(_1131_)
);

INVX1 _3811_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1116_),
    .Y(_1115_)
);

OAI21X1 _3812_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_735_),
    .B(_613_),
    .C(_615__bF$buf3),
    .Y(_1129_)
);

NOR2X1 _3813_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\gen_int_sys_clk.clk_div [3]),
    .B(_629_),
    .Y(_653_)
);

NOR2X1 _3814_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_634_),
    .B(_653_),
    .Y(_1128_)
);

INVX1 _3815_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_654_)
);

MUX2X1 _3816_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_359_),
    .B(_654_),
    .S(_615__bF$buf2),
    .Y(_1127_)
);

DFFPOSX1 _3817_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .D(_1330_),
    .Q(\u_cpu.state.o_cnt [2])
);

DFFPOSX1 _3818_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .D(_1331_),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

DFFPOSX1 _3819_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .D(_1332_),
    .Q(\u_cpu.state.cnt_r [0])
);

DFFPOSX1 _3820_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .D(_1333_),
    .Q(\u_cpu.state.cnt_r [1])
);

DFFPOSX1 _3821_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .D(_1334_),
    .Q(\u_cpu.state.cnt_r [2])
);

DFFSR _3822_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .D(_1167_),
    .Q(ibus_pending_rdt[20]),
    .R(i_rst_n_bF$buf9),
    .S(vdd)
);

DFFPOSX1 _3823_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .D(_1335_),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

DFFSR _3824_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .D(_1168_),
    .Q(ibus_pending_rdt[21]),
    .R(i_rst_n_bF$buf8),
    .S(vdd)
);

DFFPOSX1 _3825_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .D(_1336_),
    .Q(\u_rf_if.rreg1_latched [3])
);

DFFSR _3826_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .D(_1169_),
    .Q(ibus_pending_rdt[22]),
    .R(i_rst_n_bF$buf7),
    .S(vdd)
);

DFFPOSX1 _3827_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .D(_1337_),
    .Q(\u_rf_if.rreg1_latched [2])
);

DFFSR _3828_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .D(_1170_),
    .Q(ibus_pending_rdt[23]),
    .R(i_rst_n_bF$buf6),
    .S(vdd)
);

DFFPOSX1 _3829_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .D(_1338_),
    .Q(\u_rf_if.rreg1_latched [1])
);

DFFSR _3830_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .D(_1171_),
    .Q(ibus_pending_rdt[24]),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFPOSX1 _3831_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .D(_1339_),
    .Q(\u_rf_if.rreg1_latched [0])
);

DFFSR _3832_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .D(_1172_),
    .Q(ibus_pending_rdt[25]),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFPOSX1 _3833_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .D(_1340_),
    .Q(\u_rf_if.issue_chunk [3])
);

DFFSR _3834_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .D(_1173_),
    .Q(ibus_pending_rdt[26]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFPOSX1 _3835_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .D(_1341_),
    .Q(\u_rf_if.issue_chunk [2])
);

DFFSR _3836_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .D(_1174_),
    .Q(ibus_pending_rdt[27]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFPOSX1 _3837_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .D(_1342_),
    .Q(\u_rf_if.issue_chunk [1])
);

DFFSR _3838_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .D(_1175_),
    .Q(ibus_pending_rdt[28]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFPOSX1 _3839_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .D(_1343_),
    .Q(\u_rf_if.issue_chunk [0])
);

DFFSR _3840_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .D(_1176_),
    .Q(ibus_pending_rdt[29]),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFPOSX1 _3841_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .D(_1344_),
    .Q(\u_rf_if.issue_sel )
);

DFFSR _3842_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .D(_1177_),
    .Q(ibus_pending_rdt[30]),
    .R(i_rst_n_bF$buf10),
    .S(vdd)
);

DFFPOSX1 _3843_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .D(_1345_),
    .Q(\u_rf_if.rreg0_latched [3])
);

DFFSR _3844_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .D(_1127_),
    .Q(ibus_pending_rdt[31]),
    .R(i_rst_n_bF$buf9),
    .S(vdd)
);

DFFPOSX1 _3845_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .D(_1346_),
    .Q(\u_rf_if.rreg0_latched [2])
);

DFFPOSX1 _3846_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1178_),
    .Q(\u_mem_serial.bit_count [6])
);

DFFPOSX1 _3847_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .D(_1347_),
    .Q(\u_rf_if.rreg0_latched [1])
);

DFFPOSX1 _3848_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .D(_1179_),
    .Q(\u_cpu.mem_if.signbit )
);

DFFPOSX1 _3849_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .D(_1348_),
    .Q(\u_rf_if.rreg0_latched [0])
);

DFFPOSX1 _3850_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .D(_1181_),
    .Q(\u_cpu.alu.cmp_r )
);

DFFPOSX1 _3851_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .D(_1349_),
    .Q(\u_rf_if.o_waddr [2])
);

DFFPOSX1 _3852_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1128_),
    .Q(\gen_int_sys_clk.clk_div [3])
);

DFFPOSX1 _3853_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .D(_1350_),
    .Q(\u_rf_if.o_waddr [1])
);

DFFPOSX1 _3854_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .D(_1182_),
    .Q(\u_cpu.alu.add_cy_r )
);

DFFPOSX1 _3855_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .D(_1351_),
    .Q(\u_rf_if.o_waddr [0])
);

DFFSR _3856_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .D(_1129_),
    .Q(ibus_pending_ack),
    .R(i_rst_n_bF$buf8),
    .S(vdd)
);

DFFPOSX1 _3857_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .D(_1352_),
    .Q(\u_rf_if.write_wait [4])
);

DFFPOSX1 _3858_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .D(_1186_),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

DFFPOSX1 _3859_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .D(_1353_),
    .Q(\u_rf_if.write_wait [3])
);

INVX8 _3860_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf7),
    .Y(_1126_)
);

DFFPOSX1 _3861_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .D(_1354_),
    .Q(\u_rf_if.write_wait [2])
);

DFFPOSX1 _3862_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .D(_1187_),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

DFFPOSX1 _3863_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .D(_1355_),
    .Q(\u_rf_if.write_wait [1])
);

DFFSR _3864_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .D(_1131_),
    .Q(rf_write_drain_busy),
    .R(i_rst_n_bF$buf6),
    .S(vdd)
);

DFFPOSX1 _3865_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .D(_1356_),
    .Q(\u_rf_if.write_wait [0])
);

DFFPOSX1 _3866_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .D(_1357_),
    .Q(\u_rf_if.wdata0_r [0])
);

DFFPOSX1 _3867_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .D(_1188_),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

DFFPOSX1 _3868_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .D(_1358_),
    .Q(raddr[7])
);

INVX1 _3869_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.ibus_cyc ),
    .Y(_1125_)
);

DFFPOSX1 _3870_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .D(_1359_),
    .Q(raddr[6])
);

DFFPOSX1 _3871_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .D(_1189_),
    .Q(\u_cpu.ctrl.pc )
);

DFFPOSX1 _3872_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .D(_1360_),
    .Q(raddr[5])
);

NAND2X1 _3873_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .B(_1121_),
    .Y(_1120_)
);

DFFPOSX1 _3874_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .D(_1361_),
    .Q(raddr[4])
);

DFFPOSX1 _3875_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .D(_1190_),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

DFFPOSX1 _3876_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .D(_1362_),
    .Q(raddr[3])
);

DFFSR _3877_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .D(_1134_),
    .Q(current_wdata0_next_hint),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFPOSX1 _3878_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .D(_1363_),
    .Q(raddr[2])
);

DFFPOSX1 _3879_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .D(_1191_),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

DFFPOSX1 _3880_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .D(_1364_),
    .Q(raddr[1])
);

DFFPOSX1 _3881_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_1135_),
    .Q(\gen_int_sys_clk.clk_sys_r )
);

DFFPOSX1 _3882_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .D(_1365_),
    .Q(raddr[0])
);

DFFPOSX1 _3883_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .D(_1192_),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

DFFPOSX1 _3884_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .D(_1366_),
    .Q(\u_rf_if.read_buf0 [29])
);

DFFPOSX1 _3885_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1136_),
    .Q(\gen_int_sys_clk.clk_div [0])
);

DFFPOSX1 _3886_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .D(_1367_),
    .Q(\u_rf_if.read_buf0 [28])
);

DFFPOSX1 _3887_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .D(_1193_),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

DFFPOSX1 _3888_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .D(_1368_),
    .Q(\u_rf_if.read_buf0 [27])
);

DFFPOSX1 _3889_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1137_),
    .Q(\gen_int_sys_clk.clk_div [1])
);

DFFPOSX1 _3890_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .D(_1369_),
    .Q(\u_rf_if.read_buf0 [26])
);

DFFPOSX1 _3891_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .D(_1194_),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

DFFPOSX1 _3892_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .D(_1370_),
    .Q(\u_rf_if.read_buf0 [25])
);

DFFPOSX1 _3893_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1138_),
    .Q(\gen_int_sys_clk.clk_div [2])
);

DFFPOSX1 _3894_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .D(_1371_),
    .Q(\u_rf_if.read_buf0 [24])
);

DFFPOSX1 _3895_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .D(_1195_),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

DFFPOSX1 _3896_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .D(_1372_),
    .Q(\u_rf_if.read_buf0 [23])
);

OR2X2 _3897_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1120_),
    .B(_1117_),
    .Y(_1116_)
);

DFFPOSX1 _3898_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .D(_1373_),
    .Q(\u_rf_if.read_buf0 [22])
);

DFFPOSX1 _3899_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .D(_1196_),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

DFFPOSX1 _3900_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .D(_1374_),
    .Q(\u_rf_if.read_buf0 [21])
);

NAND3X1 _3901_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf4),
    .B(_1119_),
    .C(_1118_),
    .Y(_1117_)
);

DFFPOSX1 _3902_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .D(_1375_),
    .Q(\u_rf_if.read_buf0 [20])
);

DFFPOSX1 _3903_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .D(_1197_),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

DFFPOSX1 _3904_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .D(_1376_),
    .Q(\u_rf_if.read_buf0 [19])
);

INVX2 _3905_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .Y(_1118_)
);

DFFPOSX1 _3906_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .D(_1377_),
    .Q(\u_rf_if.read_buf0 [18])
);

DFFPOSX1 _3907_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .D(_1198_),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

DFFPOSX1 _3908_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .D(_1378_),
    .Q(\u_rf_if.read_buf0 [17])
);

INVX1 _3909_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .Y(_1119_)
);

DFFPOSX1 _3910_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .D(_1379_),
    .Q(\u_rf_if.read_buf0 [16])
);

DFFPOSX1 _3911_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .D(_1199_),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

DFFPOSX1 _3912_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .D(_1380_),
    .Q(\u_rf_if.read_buf0 [15])
);

AND2X2 _3913_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1123_),
    .B(_1122_),
    .Y(_1121_)
);

DFFPOSX1 _3914_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .D(_1381_),
    .Q(\u_rf_if.read_buf0 [14])
);

DFFPOSX1 _3915_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .D(_1200_),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

DFFPOSX1 _3916_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .D(_1382_),
    .Q(\u_rf_if.read_buf0 [13])
);

NOR2X1 _3917_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .Y(_1122_)
);

DFFPOSX1 _3918_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .D(_1383_),
    .Q(\u_rf_if.read_buf0 [12])
);

DFFPOSX1 _3919_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .D(_1201_),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

DFFPOSX1 _3920_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .D(_1384_),
    .Q(\u_rf_if.read_buf0 [11])
);

NOR2X1 _3921_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_1123_)
);

DFFPOSX1 _3922_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .D(_1385_),
    .Q(\u_rf_if.read_buf0 [10])
);

DFFPOSX1 _3923_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .D(_1202_),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

DFFPOSX1 _3924_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .D(_1250_),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

DFFPOSX1 _3925_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .D(_1386_),
    .Q(\u_rf_if.read_buf0 [9])
);

NOR2X1 _3926_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1126__bF$buf2),
    .B(_1125_),
    .Y(_1124_)
);

DFFPOSX1 _3927_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .D(_1387_),
    .Q(\u_rf_if.read_buf0 [8])
);

DFFPOSX1 _3928_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .D(_1203_),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

DFFPOSX1 _3929_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .D(_1388_),
    .Q(\u_rf_if.read_buf0 [7])
);

DFFSR _3930_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .D(_1147_),
    .Q(ibus_pending_rdt[0]),
    .R(vdd),
    .S(i_rst_n_bF$buf3)
);

DFFPOSX1 _3931_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .D(_1185_),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

DFFPOSX1 _3932_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .D(_1389_),
    .Q(\u_rf_if.read_buf0 [6])
);

DFFPOSX1 _3933_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .D(_1204_),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

DFFPOSX1 _3934_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .D(_1390_),
    .Q(\u_rf_if.read_buf0 [5])
);

DFFSR _3935_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .D(_1148_),
    .Q(ibus_pending_rdt[1]),
    .R(vdd),
    .S(i_rst_n_bF$buf2)
);

DFFPOSX1 _3936_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .D(_1391_),
    .Q(\u_rf_if.read_buf0 [4])
);

DFFPOSX1 _3937_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .D(_1205_),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

DFFPOSX1 _3938_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .D(_1392_),
    .Q(\u_rf_if.read_buf0 [3])
);

DFFSR _3939_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .D(_1149_),
    .Q(ibus_pending_rdt[2]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFPOSX1 _3940_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .D(_1393_),
    .Q(\u_rf_if.read_buf0 [2])
);

DFFPOSX1 _3941_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .D(_1206_),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

DFFPOSX1 _3942_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .D(_1394_),
    .Q(\u_rf_if.read_buf0 [1])
);

DFFSR _3943_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .D(_1150_),
    .Q(ibus_pending_rdt[3]),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFPOSX1 _3944_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .D(_1395_),
    .Q(\u_rf_if.read_buf0 [0])
);

DFFPOSX1 _3945_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .D(_1207_),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

DFFPOSX1 _3946_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .D(_1396_),
    .Q(\u_rf_if.read_buf1 [29])
);

DFFSR _3947_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .D(_1151_),
    .Q(ibus_pending_rdt[4]),
    .R(vdd),
    .S(i_rst_n_bF$buf10)
);

DFFPOSX1 _3948_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .D(_1397_),
    .Q(\u_rf_if.read_buf1 [28])
);

DFFPOSX1 _3949_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .D(_1208_),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

DFFPOSX1 _3950_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .D(_1398_),
    .Q(\u_rf_if.read_buf1 [27])
);

DFFSR _3951_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .D(_1152_),
    .Q(ibus_pending_rdt[5]),
    .R(i_rst_n_bF$buf9),
    .S(vdd)
);

DFFPOSX1 _3952_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .D(_1399_),
    .Q(\u_rf_if.read_buf1 [26])
);

DFFPOSX1 _3953_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .D(_1209_),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

DFFPOSX1 _3954_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .D(_1400_),
    .Q(\u_rf_if.read_buf1 [25])
);

DFFSR _3955_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .D(_1153_),
    .Q(ibus_pending_rdt[6]),
    .R(i_rst_n_bF$buf8),
    .S(vdd)
);

DFFPOSX1 _3956_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .D(_1401_),
    .Q(\u_rf_if.read_buf1 [24])
);

DFFPOSX1 _3957_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .D(_1210_),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

DFFPOSX1 _3958_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .D(_1402_),
    .Q(\u_rf_if.read_buf1 [23])
);

DFFSR _3959_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .D(_1154_),
    .Q(ibus_pending_rdt[7]),
    .R(i_rst_n_bF$buf7),
    .S(vdd)
);

DFFPOSX1 _3960_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .D(_1403_),
    .Q(\u_rf_if.read_buf1 [22])
);

DFFPOSX1 _3961_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .D(_1211_),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

DFFPOSX1 _3962_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .D(_1184_),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

DFFPOSX1 _3963_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .D(_1404_),
    .Q(\u_rf_if.read_buf1 [21])
);

DFFSR _3964_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .D(_1155_),
    .Q(ibus_pending_rdt[8]),
    .R(i_rst_n_bF$buf6),
    .S(vdd)
);

DFFPOSX1 _3965_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .D(_1405_),
    .Q(\u_rf_if.read_buf1 [20])
);

DFFPOSX1 _3966_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .D(_1212_),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

DFFPOSX1 _3967_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .D(_1406_),
    .Q(\u_rf_if.read_buf1 [19])
);

DFFSR _3968_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .D(_1156_),
    .Q(ibus_pending_rdt[9]),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFPOSX1 _3969_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .D(_1407_),
    .Q(\u_rf_if.read_buf1 [18])
);

DFFPOSX1 _3970_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .D(_1213_),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

DFFPOSX1 _3971_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .D(_1408_),
    .Q(\u_rf_if.read_buf1 [17])
);

DFFSR _3972_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .D(_1157_),
    .Q(ibus_pending_rdt[10]),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFPOSX1 _3973_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .D(_1409_),
    .Q(\u_rf_if.read_buf1 [16])
);

DFFPOSX1 _3974_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .D(_1214_),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

DFFPOSX1 _3975_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .D(_1410_),
    .Q(\u_rf_if.read_buf1 [15])
);

DFFSR _3976_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .D(_1158_),
    .Q(ibus_pending_rdt[11]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFPOSX1 _3977_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .D(_1411_),
    .Q(\u_rf_if.read_buf1 [14])
);

DFFPOSX1 _3978_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .D(_1215_),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

DFFPOSX1 _3979_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .D(_1412_),
    .Q(\u_rf_if.read_buf1 [13])
);

DFFPOSX1 _3980_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .D(_1216_),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

DFFPOSX1 _3981_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .D(_1413_),
    .Q(\u_rf_if.read_buf1 [12])
);

DFFPOSX1 _3982_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .D(_1217_),
    .Q(\u_cpu.bufreg2.dlo [23])
);

DFFPOSX1 _3983_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .D(_1414_),
    .Q(\u_rf_if.read_buf1 [11])
);

DFFPOSX1 _3984_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .D(_1218_),
    .Q(\u_cpu.bufreg2.dlo [0])
);

DFFPOSX1 _3985_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .D(_1415_),
    .Q(\u_rf_if.read_buf1 [10])
);

DFFPOSX1 _3986_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .D(_1219_),
    .Q(\u_cpu.bufreg2.dlo [1])
);

DFFPOSX1 _3987_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .D(_1416_),
    .Q(\u_rf_if.read_buf1 [9])
);

DFFPOSX1 _3988_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .D(_1220_),
    .Q(\u_cpu.bufreg2.dlo [2])
);

DFFPOSX1 _3989_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .D(_1417_),
    .Q(\u_rf_if.read_buf1 [8])
);

DFFPOSX1 _3990_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .D(_1221_),
    .Q(\u_cpu.bufreg2.dlo [3])
);

DFFPOSX1 _3991_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .D(_1418_),
    .Q(\u_rf_if.read_buf1 [7])
);

DFFPOSX1 _3992_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .D(_1222_),
    .Q(\u_cpu.bufreg2.dlo [4])
);

DFFPOSX1 _3993_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .D(_1419_),
    .Q(\u_rf_if.read_buf1 [6])
);

DFFPOSX1 _3994_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .D(_1223_),
    .Q(\u_cpu.bufreg2.dlo [5])
);

DFFPOSX1 _3995_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .D(_1420_),
    .Q(\u_rf_if.read_buf1 [5])
);

DFFPOSX1 _3996_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .D(_1224_),
    .Q(\u_cpu.bufreg2.dlo [6])
);

DFFPOSX1 _3997_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .D(_1421_),
    .Q(\u_rf_if.read_buf1 [4])
);

DFFPOSX1 _3998_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .D(_1225_),
    .Q(\u_cpu.bufreg2.dlo [7])
);

DFFPOSX1 _3999_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .D(_1422_),
    .Q(\u_rf_if.read_buf1 [3])
);

DFFPOSX1 _4000_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .D(_1226_),
    .Q(\u_cpu.bufreg2.dlo [8])
);

DFFPOSX1 _4001_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .D(_1423_),
    .Q(\u_rf_if.read_buf1 [2])
);

DFFPOSX1 _4002_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .D(_1227_),
    .Q(\u_cpu.bufreg2.dlo [9])
);

DFFPOSX1 _4003_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .D(_1424_),
    .Q(\u_rf_if.read_buf1 [1])
);

DFFPOSX1 _4004_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .D(_1228_),
    .Q(\u_cpu.bufreg2.dlo [10])
);

DFFPOSX1 _4005_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .D(_1425_),
    .Q(\u_rf_if.read_buf1 [0])
);

DFFPOSX1 _4006_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .D(_1229_),
    .Q(\u_cpu.bufreg2.dlo [11])
);

DFFPOSX1 _4007_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .D(_1426_),
    .Q(\u_rf_if.stream_cnt [3])
);

DFFPOSX1 _4008_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .D(_1230_),
    .Q(\u_cpu.bufreg2.dlo [12])
);

DFFPOSX1 _4009_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .D(_1427_),
    .Q(\u_rf_if.stream_cnt [2])
);

DFFPOSX1 _4010_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .D(_1231_),
    .Q(\u_cpu.bufreg2.dlo [13])
);

DFFPOSX1 _4011_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .D(_1428_),
    .Q(\u_rf_if.stream_cnt [1])
);

DFFPOSX1 _4012_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .D(_1232_),
    .Q(\u_cpu.bufreg2.dlo [14])
);

DFFPOSX1 _4013_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .D(_1429_),
    .Q(\u_rf_if.stream_cnt [0])
);

DFFPOSX1 _4014_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .D(_1430_),
    .Q(\u_rf_if.rcnt [2])
);

DFFPOSX1 _4015_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .D(_1431_),
    .Q(\u_rf_if.rcnt [0])
);

DFFPOSX1 _4016_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .D(_1432_),
    .Q(ren)
);

DFFPOSX1 _4017_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .D(_1433_),
    .Q(\u_rf_if.prefetch_active )
);

DFFPOSX1 _4018_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .D(_1233_),
    .Q(\u_cpu.bufreg2.dlo [15])
);

DFFPOSX1 _4019_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .D(_1434_),
    .Q(raddr[8])
);

DFFPOSX1 _4020_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .D(_1435_),
    .Q(\u_rf_if.rtrig1 )
);

DFFPOSX1 _4021_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .D(_1234_),
    .Q(\u_cpu.bufreg2.dlo [16])
);

DFFPOSX1 _4022_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .D(_1436_),
    .Q(\u_rf_if.read_buf0 [30])
);

DFFPOSX1 _4023_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .D(_1235_),
    .Q(\u_cpu.bufreg2.dlo [17])
);

DFFPOSX1 _4024_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .D(_1437_),
    .Q(\u_rf_if.read_buf0 [31])
);

DFFPOSX1 _4025_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .D(_1236_),
    .Q(\u_cpu.bufreg2.dlo [18])
);

DFFPOSX1 _4026_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .D(_1438_),
    .Q(\u_rf_if.read_buf1 [30])
);

DFFPOSX1 _4027_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .D(_1237_),
    .Q(\u_cpu.bufreg2.dlo [19])
);

DFFPOSX1 _4028_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .D(_1439_),
    .Q(\u_rf_if.read_buf1 [31])
);

DFFPOSX1 _4029_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .D(_1238_),
    .Q(\u_cpu.bufreg2.dlo [20])
);

DFFPOSX1 _4030_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .D(_1440_),
    .Q(\u_rf_if.stream_cnt [4])
);

DFFPOSX1 _4031_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .D(_1441_),
    .Q(\u_rf_if.ready_pulse )
);

DFFPOSX1 _4032_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .D(_1442_),
    .Q(\u_rf_if.stream_active )
);

DFFPOSX1 _4033_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .D(_1443_),
    .Q(\u_rf_if.wdata0_next [0])
);

DFFPOSX1 _4034_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .D(_1239_),
    .Q(\u_cpu.bufreg2.dlo [21])
);

DFFPOSX1 _4035_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .D(_1444_),
    .Q(\u_rf_if.write_wait [5])
);

DFFPOSX1 _4036_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .D(_1240_),
    .Q(\u_cpu.bufreg2.dlo [22])
);

DFFPOSX1 _4037_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .D(_1445_),
    .Q(\u_rf_if.wen0_r )
);

DFFPOSX1 _4038_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .D(_1241_),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

DFFPOSX1 _4039_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .D(_1446_),
    .Q(\u_rf_if.wdata0_next_phase )
);

DFFPOSX1 _4040_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .D(_1447_),
    .Q(\u_rf_if.rcnt [1])
);

DFFPOSX1 _4041_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .D(_1242_),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

DFFPOSX1 _4042_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .D(_1448_),
    .Q(\u_rf_if.o_waddr [3])
);

DFFPOSX1 _4043_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .D(_1243_),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

DFFPOSX1 _4044_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .D(_1449_),
    .Q(\u_rf_if.rreg0_latched [4])
);

DFFPOSX1 _4045_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .D(_1244_),
    .Q(\u_cpu.bufreg2.dhi [3])
);

DFFPOSX1 _4046_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1450_),
    .Q(\u_mem_serial.shift_reg [31])
);

DFFPOSX1 _4047_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .D(_1245_),
    .Q(\u_cpu.bufreg2.dhi [4])
);

DFFPOSX1 _4048_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1451_),
    .Q(\u_mem_serial.state [1])
);

DFFPOSX1 _4049_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .D(_1246_),
    .Q(\u_cpu.bufreg2.dhi [5])
);

DFFPOSX1 _4050_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .D(_1452_),
    .Q(\u_rf_if.issue_idx [5])
);

DFFPOSX1 _4051_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .D(_1247_),
    .Q(\u_cpu.bufreg2.dhi [6])
);

DFFPOSX1 _4052_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .D(_1453_),
    .Q(\u_rf_if.rreg1_latched [4])
);

DFFPOSX1 _4053_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .D(_1248_),
    .Q(\u_cpu.bufreg.data [31])
);

DFFPOSX1 _4054_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .D(_1454_),
    .Q(\u_rf_if.pending_read )
);

DFFPOSX1 _4055_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .D(_1249_),
    .Q(\u_cpu.bufreg.c_r )
);

DFFPOSX1 _4056_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1455_),
    .Q(\u_rf_serial.last_req_key [9])
);

DFFPOSX1 _4057_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .D(_1251_),
    .Q(\u_cpu.bufreg.data [30])
);

DFFPOSX1 _4058_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1456_),
    .Q(\u_rf_serial.last_req_key [8])
);

DFFPOSX1 _4059_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .D(_1252_),
    .Q(\u_cpu.bufreg.data [29])
);

DFFPOSX1 _4060_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_1457_),
    .Q(\u_rf_serial.last_req_key [7])
);

DFFPOSX1 _4061_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .D(_1253_),
    .Q(\u_cpu.bufreg.data [0])
);

DFFPOSX1 _4062_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1458_),
    .Q(\u_rf_serial.last_req_key [6])
);

DFFPOSX1 _4063_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .D(_1254_),
    .Q(\u_cpu.bufreg.data [2])
);

DFFPOSX1 _4064_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1459_),
    .Q(\u_rf_serial.last_req_key [5])
);

DFFPOSX1 _4065_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .D(_1255_),
    .Q(\u_cpu.bufreg.data [3])
);

DFFPOSX1 _4066_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1460_),
    .Q(\u_rf_serial.last_req_key [4])
);

DFFPOSX1 _4067_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .D(_1256_),
    .Q(\u_cpu.bufreg.data [4])
);

DFFPOSX1 _4068_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1461_),
    .Q(\u_rf_serial.last_req_key [3])
);

DFFPOSX1 _4069_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .D(_1257_),
    .Q(\u_cpu.bufreg.data [5])
);

DFFPOSX1 _4070_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1462_),
    .Q(\u_rf_serial.last_req_key [2])
);

DFFPOSX1 _4071_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .D(_1258_),
    .Q(\u_cpu.bufreg.data [6])
);

DFFPOSX1 _4072_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1463_),
    .Q(\u_rf_serial.last_req_key [1])
);

DFFPOSX1 _4073_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .D(_1259_),
    .Q(\u_cpu.bufreg.data [7])
);

DFFPOSX1 _4074_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1464_),
    .Q(\u_rf_serial.last_req_key [0])
);

DFFPOSX1 _4075_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .D(_1260_),
    .Q(\u_cpu.bufreg.data [8])
);

DFFPOSX1 _4076_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_1465_),
    .Q(\u_rf_serial.tx_state [3])
);

DFFPOSX1 _4077_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .D(_1261_),
    .Q(\u_cpu.bufreg.data [9])
);

DFFPOSX1 _4078_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1515_),
    .Q(\u_mem_serial.bit_count [0])
);

DFFPOSX1 _4079_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1466_),
    .Q(\u_rf_serial.tx_state [2])
);

DFFPOSX1 _4080_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .D(_1262_),
    .Q(\u_cpu.bufreg.data [10])
);

DFFPOSX1 _4081_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1467_),
    .Q(\u_rf_serial.tx_state [1])
);

DFFPOSX1 _4082_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .D(_1263_),
    .Q(\u_cpu.bufreg.data [11])
);

DFFPOSX1 _4083_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1468_),
    .Q(\u_rf_serial.tx_state [0])
);

DFFPOSX1 _4084_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .D(_1264_),
    .Q(\u_cpu.bufreg.data [12])
);

DFFPOSX1 _4085_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1469_),
    .Q(\u_rf_serial.shift_rx [0])
);

DFFPOSX1 _4086_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .D(_1265_),
    .Q(\u_cpu.bufreg.data [13])
);

DFFPOSX1 _4087_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1470_),
    .Q(_1910_)
);

DFFPOSX1 _4088_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .D(_1266_),
    .Q(\u_cpu.bufreg.data [14])
);

DFFPOSX1 _4089_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1471_),
    .Q(\u_rf_serial.shift_rx [1])
);

DFFPOSX1 _4090_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .D(_1267_),
    .Q(\u_cpu.bufreg.data [15])
);

DFFPOSX1 _4091_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_1472_),
    .Q(\u_rf_serial.tx_state [4])
);

DFFPOSX1 _4092_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1473_),
    .Q(\u_rf_serial.req_seen )
);

DFFPOSX1 _4093_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1474_),
    .Q(\u_rf_serial.launch_pending )
);

DFFPOSX1 _4094_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .D(_1268_),
    .Q(\u_cpu.bufreg.data [16])
);

DFFPOSX1 _4095_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1475_),
    .Q(\u_rf_serial.last_req_key [10])
);

DFFPOSX1 _4096_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .D(_1269_),
    .Q(\u_cpu.bufreg.data [17])
);

DFFPOSX1 _4097_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1478_),
    .Q(\u_mem_serial.state [0])
);

DFFPOSX1 _4098_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .D(_1270_),
    .Q(\u_cpu.bufreg.data [18])
);

DFFPOSX1 _4099_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1479_),
    .Q(\u_mem_serial.shift_reg [30])
);

DFFPOSX1 _4100_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .D(_1271_),
    .Q(\u_cpu.bufreg.data [19])
);

DFFPOSX1 _4101_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1480_),
    .Q(\u_mem_serial.shift_reg [29])
);

DFFPOSX1 _4102_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .D(_1272_),
    .Q(\u_cpu.bufreg.data [20])
);

DFFPOSX1 _4103_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1481_),
    .Q(\u_mem_serial.shift_reg [28])
);

DFFPOSX1 _4104_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .D(_1273_),
    .Q(\u_cpu.bufreg.data [21])
);

DFFPOSX1 _4105_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_1482_),
    .Q(\u_mem_serial.shift_reg [27])
);

DFFPOSX1 _4106_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .D(_1274_),
    .Q(\u_cpu.bufreg.data [22])
);

DFFPOSX1 _4107_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1483_),
    .Q(\u_mem_serial.shift_reg [26])
);

DFFPOSX1 _4108_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .D(_1275_),
    .Q(\u_cpu.bufreg.data [23])
);

DFFPOSX1 _4109_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1484_),
    .Q(\u_mem_serial.shift_reg [25])
);

DFFPOSX1 _4110_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .D(_1276_),
    .Q(\u_cpu.bufreg.data [24])
);

DFFPOSX1 _4111_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1485_),
    .Q(\u_mem_serial.shift_reg [24])
);

DFFPOSX1 _4112_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .D(_1277_),
    .Q(\u_cpu.bufreg.data [25])
);

DFFPOSX1 _4113_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1486_),
    .Q(\u_mem_serial.shift_reg [23])
);

DFFPOSX1 _4114_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .D(_1278_),
    .Q(\u_cpu.bufreg.data [26])
);

DFFPOSX1 _4115_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .D(_1281_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

DFFPOSX1 _4116_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1487_),
    .Q(\u_mem_serial.shift_reg [22])
);

DFFPOSX1 _4117_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .D(_1279_),
    .Q(\u_cpu.bufreg.data [27])
);

DFFPOSX1 _4118_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1488_),
    .Q(\u_mem_serial.shift_reg [21])
);

DFFPOSX1 _4119_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .D(_1280_),
    .Q(\u_cpu.bufreg.data [28])
);

DFFPOSX1 _4120_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1489_),
    .Q(\u_mem_serial.shift_reg [20])
);

DFFPOSX1 _4121_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .Q(\u_mem_serial.clk_sys_prev )
);

DFFPOSX1 _4122_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1490_),
    .Q(\u_mem_serial.shift_reg [19])
);

DFFPOSX1 _4123_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .D(_1282_),
    .Q(rreg1[4])
);

DFFPOSX1 _4124_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1491_),
    .Q(\u_mem_serial.shift_reg [18])
);

DFFPOSX1 _4125_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .D(_1283_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

DFFPOSX1 _4126_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1492_),
    .Q(\u_mem_serial.shift_reg [17])
);

DFFPOSX1 _4127_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .D(_1284_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

DFFPOSX1 _4128_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1493_),
    .Q(\u_mem_serial.shift_reg [16])
);

DFFPOSX1 _4129_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .D(_1285_),
    .Q(rreg0[4])
);

DFFPOSX1 _4130_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1494_),
    .Q(\u_mem_serial.shift_reg [15])
);

DFFPOSX1 _4131_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .D(_1286_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

DFFPOSX1 _4132_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1495_),
    .Q(\u_mem_serial.shift_reg [14])
);

DFFPOSX1 _4133_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf10 ),
    .D(_1287_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0])
);

DFFPOSX1 _4134_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1496_),
    .Q(\u_mem_serial.shift_reg [13])
);

DFFPOSX1 _4135_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf9 ),
    .D(_1288_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1])
);

DFFPOSX1 _4136_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_1497_),
    .Q(\u_mem_serial.shift_reg [12])
);

DFFPOSX1 _4137_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf8 ),
    .D(_1289_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2])
);

DFFPOSX1 _4138_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1498_),
    .Q(\u_mem_serial.shift_reg [11])
);

DFFPOSX1 _4139_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf7 ),
    .D(_1290_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3])
);

DFFPOSX1 _4140_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1499_),
    .Q(\u_mem_serial.shift_reg [10])
);

DFFPOSX1 _4141_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf6 ),
    .D(_1291_),
    .Q(rreg1[0])
);

DFFPOSX1 _4142_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1500_),
    .Q(\u_mem_serial.shift_reg [9])
);

DFFPOSX1 _4143_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf5 ),
    .D(_1292_),
    .Q(rreg1[1])
);

DFFPOSX1 _4144_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1501_),
    .Q(\u_mem_serial.shift_reg [8])
);

DFFPOSX1 _4145_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf4 ),
    .D(_1293_),
    .Q(rreg1[2])
);

DFFPOSX1 _4146_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1502_),
    .Q(\u_mem_serial.shift_reg [7])
);

DFFPOSX1 _4147_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf3 ),
    .D(_1294_),
    .Q(rreg1[3])
);

DFFPOSX1 _4148_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1503_),
    .Q(\u_mem_serial.shift_reg [6])
);

DFFPOSX1 _4149_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf2 ),
    .D(_1295_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

DFFPOSX1 _4150_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1504_),
    .Q(\u_mem_serial.shift_reg [5])
);

DFFPOSX1 _4151_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf1 ),
    .D(_1296_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

DFFPOSX1 _4152_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_1505_),
    .Q(\u_mem_serial.shift_reg [4])
);

DFFPOSX1 _4153_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf0 ),
    .D(_1297_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

DFFPOSX1 _4154_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf44 ),
    .D(_1183_),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

DFFPOSX1 _4155_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1506_),
    .Q(\u_mem_serial.shift_reg [3])
);

DFFPOSX1 _4156_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf43 ),
    .D(_1298_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

DFFPOSX1 _4157_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1507_),
    .Q(\u_mem_serial.shift_reg [2])
);

DFFPOSX1 _4158_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf42 ),
    .D(_1299_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

DFFPOSX1 _4159_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1508_),
    .Q(\u_mem_serial.shift_reg [1])
);

DFFPOSX1 _4160_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf41 ),
    .D(_1300_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

DFFPOSX1 _4161_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1509_),
    .Q(\u_mem_serial.shift_reg [0])
);

DFFPOSX1 _4162_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf40 ),
    .D(_1301_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

DFFPOSX1 _4163_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1510_),
    .Q(\u_mem_serial.bit_count [5])
);

DFFPOSX1 _4164_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf39 ),
    .D(_1302_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

DFFPOSX1 _4165_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1511_),
    .Q(\u_mem_serial.bit_count [4])
);

DFFPOSX1 _4166_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf38 ),
    .D(_1303_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

DFFPOSX1 _4167_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1512_),
    .Q(\u_mem_serial.bit_count [3])
);

DFFPOSX1 _4168_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf37 ),
    .D(_1304_),
    .Q(\u_cpu.csr_imm )
);

DFFPOSX1 _4169_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_1513_),
    .Q(\u_mem_serial.bit_count [2])
);

DFFPOSX1 _4170_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf36 ),
    .D(_1305_),
    .Q(rreg0[1])
);

DFFPOSX1 _4171_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1514_),
    .Q(\u_mem_serial.bit_count [1])
);

DFFPOSX1 _4172_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf35 ),
    .D(_1306_),
    .Q(rreg0[2])
);

DFFPOSX1 _4173_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf34 ),
    .D(_1307_),
    .Q(rreg0[3])
);

DFFPOSX1 _4174_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf33 ),
    .D(_1308_),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

DFFSR _4175_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf32 ),
    .D(_1159_),
    .Q(ibus_pending_rdt[12]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFPOSX1 _4176_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1309_),
    .Q(mem_dbus_ack)
);

DFFPOSX1 _4177_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf31 ),
    .D(_1310_),
    .Q(\u_cpu.decode.co_ebreak )
);

DFFPOSX1 _4178_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf30 ),
    .D(_1311_),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

DFFPOSX1 _4179_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf29 ),
    .D(_1312_),
    .Q(\u_cpu.branch_op )
);

DFFSR _4180_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf28 ),
    .D(_1160_),
    .Q(ibus_pending_rdt[13]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFPOSX1 _4181_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1313_),
    .Q(mem_ibus_ack)
);

DFFSR _4182_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf27 ),
    .D(_1161_),
    .Q(ibus_pending_rdt[14]),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFPOSX1 _4183_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_1314_),
    .Q(\u_mem_serial.active_ibus )
);

DFFSR _4184_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf26 ),
    .D(_1162_),
    .Q(ibus_pending_rdt[15]),
    .R(i_rst_n_bF$buf10),
    .S(vdd)
);

DFFPOSX1 _4185_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_1315_),
    .Q(_1907_)
);

DFFSR _4186_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf25 ),
    .D(_1163_),
    .Q(ibus_pending_rdt[16]),
    .R(i_rst_n_bF$buf9),
    .S(vdd)
);

DFFPOSX1 _4187_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1316_),
    .Q(\u_mem_serial.active_we )
);

DFFPOSX1 _4188_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf24 ),
    .D(_1318_),
    .Q(\u_cpu.decode.opcode [0])
);

DFFPOSX1 _4189_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf23 ),
    .D(_1319_),
    .Q(\u_cpu.decode.opcode [1])
);

DFFPOSX1 _4190_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf22 ),
    .D(_1320_),
    .Q(\u_cpu.decode.opcode [2])
);

DFFPOSX1 _4191_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf21 ),
    .D(_1321_),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

DFFPOSX1 _4192_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf20 ),
    .D(_1322_),
    .Q(\u_cpu.bne_or_bge )
);

DFFPOSX1 _4193_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf19 ),
    .D(_1323_),
    .Q(\u_cpu.decode.co_mem_word )
);

DFFPOSX1 _4194_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf18 ),
    .D(_1324_),
    .Q(\u_cpu.state.ibus_cyc )
);

DFFSR _4195_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf17 ),
    .D(_1164_),
    .Q(ibus_pending_rdt[17]),
    .R(i_rst_n_bF$buf8),
    .S(vdd)
);

DFFPOSX1 _4196_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf16 ),
    .D(_1325_),
    .Q(\u_cpu.state.init_done )
);

DFFSR _4197_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf15 ),
    .D(_1165_),
    .Q(ibus_pending_rdt[18]),
    .R(i_rst_n_bF$buf7),
    .S(vdd)
);

DFFPOSX1 _4198_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf14 ),
    .D(_1326_),
    .Q(\u_cpu.ctrl.i_jump )
);

DFFPOSX1 _4199_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf13 ),
    .D(_1327_),
    .Q(\u_cpu.state.cnt_r [3])
);

DFFPOSX1 _4200_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf12 ),
    .D(_1328_),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

DFFSR _4201_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(\gen_int_sys_clk.clk_sys_r_bF$buf11 ),
    .D(_1166_),
    .Q(ibus_pending_rdt[19]),
    .R(i_rst_n_bF$buf6),
    .S(vdd)
);

DFFPOSX1 _4202_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1329_),
    .Q(\u_mem_serial.req_pending )
);

endmodule
