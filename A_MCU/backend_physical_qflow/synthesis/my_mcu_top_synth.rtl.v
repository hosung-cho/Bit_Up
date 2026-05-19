/* Verilog module written by vlog2Verilog (qflow) */
/* With explicit power connections */

module my_mcu_top(
    inout vdd,
    inout gnd,
    input i_clk_fast,
    input i_rst_n,
    output o_rf_sync,
    output o_rf_sck,
    output o_rf_mosi,
    input i_rf_miso,
    output o_mem_sync,
    output o_mem_sck,
    output o_mem_mosi,
    input i_mem_miso,
    output o_uart_tx,
    input i_uart_rx,
    input [7:0] i_gpio,
    output [7:0] o_gpio,
    output [7:0] o_gpio_oe
);

wire [4:0] rf_read_reg0_to_if ;
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
wire [0:0] \u_cpu.ctrl.pc_plus_4_cy_r_w  ;
wire _1295_ ;
wire i_uart_rx ;
wire _2101_ ;
wire _1315__bF$buf0 ;
wire _1315__bF$buf1 ;
wire _1315__bF$buf2 ;
wire _1315__bF$buf3 ;
wire _703_ ;
wire [4:0] \u_cpu.decode.opcode  ;
wire _1389_ ;
wire _19_ ;
wire _1601_ ;
wire _932_ ;
wire _512_ ;
wire _1198_ ;
wire \u_cpu.csr_imm_en  ;
wire _1830_ ;
wire _1410_ ;
wire _741_ ;
wire _321_ ;
wire _57_ ;
wire _970_ ;
wire _550_ ;
wire _130_ ;
wire _2004_ ;
wire [4:2] \u_cpu.state.o_cnt  ;
wire _606_ ;
wire _1924_ ;
wire _1504_ ;
wire _835_ ;
wire _415_ ;
wire _95_ ;
wire _2042_ ;
wire _1733_ ;
wire _1313_ ;
wire _644_ ;
wire _224_ ;
wire _1962_ ;
wire _1542_ ;
wire _1122_ ;
wire _873_ ;
wire _453_ ;
wire _2080_ ;
wire _929_ ;
wire _509_ ;
wire _1771_ ;
wire _1351_ ;
wire _682_ ;
wire _262_ ;
wire _2136_ ;
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
wire _2039_ ;
wire _215__bF$buf0 ;
wire _215__bF$buf1 ;
wire _215__bF$buf2 ;
wire _215__bF$buf3 ;
wire _1303__bF$buf0 ;
wire _1303__bF$buf1 ;
wire _1303__bF$buf2 ;
wire _1303__bF$buf3 ;
wire _1483_ ;
wire _1063_ ;
wire _394_ ;
wire _1959_ ;
wire _1539_ ;
wire _1119_ ;
wire _1292_ ;
wire _2077_ ;
wire \u_mem_serial.active_ibus_bF$buf4  ;
wire _1768_ ;
wire _1348_ ;
wire _679_ ;
wire _259_ ;
wire _1997_ ;
wire _1577_ ;
wire _1157_ ;
wire _488_ ;
wire _700_ ;
wire _1386_ ;
wire _297_ ;
wire _16_ ;
wire _1195_ ;
wire _54_ ;
wire _2001_ ;
wire _1984__bF$buf0 ;
wire _1984__bF$buf1 ;
wire _1984__bF$buf2 ;
wire _1984__bF$buf3 ;
wire _1984__bF$buf4 ;
wire _603_ ;
wire _1289_ ;
wire _1921_ ;
wire _1501_ ;
wire _832_ ;
wire _412_ ;
wire _92_ ;
wire _1098_ ;
wire _1730_ ;
wire _1310_ ;
wire _641_ ;
wire _221_ ;
wire \u_cpu.bufreg.i_init  ;
wire _870_ ;
wire _450_ ;
wire _926_ ;
wire _506_ ;
wire _2133_ ;
wire _1824_ ;
wire _1404_ ;
wire _735_ ;
wire _315_ ;
wire [3:0] \u_cpu.decode.co_immdec_en  ;
wire _1633_ ;
wire _1213_ ;
wire _964_ ;
wire _544_ ;
wire _124_ ;
wire [3:0] clk_div ;
wire _1862_ ;
wire _1442_ ;
wire _1022_ ;
wire _773_ ;
wire _353_ ;
wire _1918_ ;
wire _829_ ;
wire _409_ ;
wire _89_ ;
wire _1671_ ;
wire _1251_ ;
wire _582_ ;
wire _162_ ;
wire _2036_ ;
wire _1727_ ;
wire _1307_ ;
wire _638_ ;
wire _218_ ;
wire _1480_ ;
wire _1060_ ;
wire _391_ ;
wire _1956_ ;
wire _1536_ ;
wire _1116_ ;
wire _867_ ;
wire _447_ ;
wire _2074_ ;
wire \u_mem_serial.active_ibus_bF$buf1  ;
wire _1765_ ;
wire _1345_ ;
wire _676_ ;
wire _256_ ;
wire [7:0] i_gpio ;
wire _1994_ ;
wire _1574_ ;
wire _1154_ ;
wire _485_ ;
wire \u_mem_serial.req_pending  ;
wire _1164__bF$buf0 ;
wire _1164__bF$buf1 ;
wire _1164__bF$buf2 ;
wire _1164__bF$buf3 ;
wire _1164__bF$buf4 ;
wire _1383_ ;
wire _294_ ;
wire _13_ ;
wire _1859_ ;
wire _1439_ ;
wire _1019_ ;
wire _1192_ ;
wire [0:0] \u_cpu.ctrl.o_rd  ;
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
wire has_fetched_first_insn ;
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
wire _2130_ ;
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
wire [1:0] \u_rf_if.wdata1_phase  ;
wire _770_ ;
wire _350_ ;
wire [10:0] \u_rf_serial.last_req_key  ;
wire _1915_ ;
wire \u_cpu.bufreg.i_en_bF$buf3  ;
wire _826_ ;
wire _406_ ;
wire _86_ ;
wire _2033_ ;
wire _1724_ ;
wire _1304_ ;
wire \u_cpu.decode.co_rd_op  ;
wire _635_ ;
wire _215_ ;
wire o_rf_sync ;
wire _1953_ ;
wire _1533_ ;
wire _1113_ ;
wire [7:0] o_gpio ;
wire _864_ ;
wire _444_ ;
wire _2071_ ;
wire _1762_ ;
wire _1342_ ;
wire _673_ ;
wire _253_ ;
wire _2127_ ;
wire _1818_ ;
wire _729_ ;
wire _309_ ;
wire _1991_ ;
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
wire \u_rf_if.issue_sel_bF$buf3  ;
wire _1665_ ;
wire _1245_ ;
wire _996_ ;
wire _576_ ;
wire _156_ ;
wire \u_cpu.ctrl.i_jal_or_jalr  ;
wire _1894_ ;
wire _1474_ ;
wire _1054_ ;
wire _385_ ;
wire [0:0] \u_cpu.bufreg2.o_q  ;
wire _1283_ ;
wire _194_ ;
wire _2068_ ;
wire [31:0] \u_mem_serial.shift_rx  ;
wire _1759_ ;
wire _1339_ ;
wire _1092_ ;
wire _1988_ ;
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
wire _1912_ ;
wire \u_cpu.bufreg.i_en_bF$buf0  ;
wire _823_ ;
wire _403_ ;
wire \u_cpu.o_wen0  ;
wire _83_ ;
wire _1089_ ;
wire _2030_ ;
wire _1721_ ;
wire _1301_ ;
wire _632_ ;
wire _212_ ;
wire _1950_ ;
wire _1530_ ;
wire _1110_ ;
wire _861_ ;
wire _441_ ;
wire _917_ ;
wire _670_ ;
wire _250_ ;
wire _2124_ ;
wire _1815_ ;
wire _726_ ;
wire _306_ ;
wire _1624_ ;
wire _1204_ ;
wire _955_ ;
wire _535_ ;
wire _115_ ;
wire _2162_ ;
wire _1853_ ;
wire _1433_ ;
wire _1013_ ;
wire i_mem_miso ;
wire _764_ ;
wire _344_ ;
wire \u_rf_if.issue_sel_bF$buf0  ;
wire _1909_ ;
wire _1662_ ;
wire _1242_ ;
wire _993_ ;
wire _573_ ;
wire _153_ ;
wire _2027_ ;
wire _1718_ ;
wire _629_ ;
wire _209_ ;
wire _1891_ ;
wire _1471_ ;
wire _1051_ ;
wire _382_ ;
wire _1947_ ;
wire _1527_ ;
wire _1107_ ;
wire _858_ ;
wire _438_ ;
wire _1280_ ;
wire _191_ ;
wire _2065_ ;
wire _1756_ ;
wire _1336_ ;
wire _667_ ;
wire _247_ ;
wire _1985_ ;
wire _1565_ ;
wire _1145_ ;
wire _896_ ;
wire _476_ ;
wire _1316__bF$buf0 ;
wire _1316__bF$buf1 ;
wire _1316__bF$buf2 ;
wire _1316__bF$buf3 ;
wire _1316__bF$buf4 ;
wire \u_rf_if.stream_cnt_0_bF$buf5  ;
wire _1794_ ;
wire _1374_ ;
wire _285_ ;
wire _2159_ ;
wire _1_ ;
wire [31:0] \u_rf_if.read_buf1  ;
wire _1183_ ;
wire _1659_ ;
wire _1239_ ;
wire \u_cpu.bne_or_bge  ;
wire rst_bF$buf0 ;
wire rst_bF$buf1 ;
wire rst_bF$buf2 ;
wire rst_bF$buf3 ;
wire rst_bF$buf4 ;
wire rst_bF$buf5 ;
wire rst_bF$buf6 ;
wire rst_bF$buf7 ;
wire rst_bF$buf8 ;
wire rst_bF$buf9 ;
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
wire clk_sys_hier0_bF$buf0 ;
wire clk_sys_hier0_bF$buf1 ;
wire clk_sys_hier0_bF$buf2 ;
wire clk_sys_hier0_bF$buf3 ;
wire clk_sys_hier0_bF$buf4 ;
wire clk_sys_hier0_bF$buf5 ;
wire _914_ ;
wire _2121_ ;
wire _1812_ ;
wire _723_ ;
wire _303_ ;
wire _39_ ;
wire _1621_ ;
wire _1201_ ;
wire _952_ ;
wire _532_ ;
wire _112_ ;
wire \u_cpu.bufreg.i_clr_lsb  ;
wire _1850_ ;
wire _1430_ ;
wire _1010_ ;
wire _2062__bF$buf0 ;
wire _2062__bF$buf1 ;
wire _2062__bF$buf2 ;
wire _2062__bF$buf3 ;
wire _761_ ;
wire _341_ ;
wire _1906_ ;
wire _817_ ;
wire _77_ ;
wire _990_ ;
wire _570_ ;
wire _150_ ;
wire _2024_ ;
wire \u_cpu.decode.co_rd_mem_en  ;
wire _1715_ ;
wire _626_ ;
wire _206_ ;
wire _1944_ ;
wire _1524_ ;
wire _1104_ ;
wire _855_ ;
wire _435_ ;
wire _2062_ ;
wire _1753_ ;
wire _1333_ ;
wire _664_ ;
wire _244_ ;
wire _2118_ ;
wire _1809_ ;
wire _665__bF$buf0 ;
wire _665__bF$buf1 ;
wire _665__bF$buf2 ;
wire _665__bF$buf3 ;
wire _1982_ ;
wire _1562_ ;
wire _1142_ ;
wire _893_ ;
wire _473_ ;
wire \u_rf_if.stream_cnt_0_bF$buf2  ;
wire _1618_ ;
wire _949_ ;
wire _529_ ;
wire _109_ ;
wire _1791_ ;
wire _1371_ ;
wire _282_ ;
wire _2156_ ;
wire [2:0] \u_rf_if.wdata1_r  ;
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
wire _1694_ ;
wire _1274_ ;
wire _185_ ;
wire _2059_ ;
wire _1083_ ;
wire _1979_ ;
wire _1559_ ;
wire _1139_ ;
wire _2097_ ;
wire _1788_ ;
wire _1368_ ;
wire _699_ ;
wire _279_ ;
wire _911_ ;
wire _1597_ ;
wire _1177_ ;
wire _720_ ;
wire _300_ ;
wire _36_ ;
wire _1903_ ;
wire _814_ ;
wire _74_ ;
wire _2021_ ;
wire _1712_ ;
wire _623_ ;
wire _203_ ;
wire _1941_ ;
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
wire _2115_ ;
wire _1806_ ;
wire _717_ ;
wire \u_mem_serial.bit_count_0_bF$buf3  ;
wire _890_ ;
wire _470_ ;
wire _1615_ ;
wire _946_ ;
wire _526_ ;
wire _106_ ;
wire _2153_ ;
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
wire _2018_ ;
wire _1709_ ;
wire _1882_ ;
wire _1462_ ;
wire _1042_ ;
wire _793_ ;
wire _373_ ;
wire _1938_ ;
wire _1518_ ;
wire _849_ ;
wire _429_ ;
wire _1691_ ;
wire _1271_ ;
wire _182_ ;
wire _2056_ ;
wire _18__bF$buf0 ;
wire _18__bF$buf1 ;
wire _18__bF$buf2 ;
wire _18__bF$buf3 ;
wire _18__bF$buf4 ;
wire [1:0] \u_rf_if.wdata0_r  ;
wire _1747_ ;
wire _1327_ ;
wire _658_ ;
wire _238_ ;
wire _1080_ ;
wire _1976_ ;
wire _1556_ ;
wire _1136_ ;
wire _887_ ;
wire _467_ ;
wire _2094_ ;
wire \u_mem_serial.active_ibus  ;
wire _1785_ ;
wire _1365_ ;
wire _696_ ;
wire _276_ ;
wire _1594_ ;
wire _1174_ ;
wire _33_ ;
wire _1879_ ;
wire _1459_ ;
wire _1039_ ;
wire \u_cpu.state.i_alu_rd_sel1  ;
wire rf_wdata0_next_to_if ;
wire _1688_ ;
wire _1268_ ;
wire _599_ ;
wire _179_ ;
wire _1900_ ;
wire _811_ ;
wire _71_ ;
wire _1497_ ;
wire _1077_ ;
wire _620_ ;
wire _200_ ;
wire _905_ ;
wire clk_sys ;
wire _2112_ ;
wire _1803_ ;
wire _714_ ;
wire \u_mem_serial.bit_count_0_bF$buf0  ;
wire _1612_ ;
wire _943_ ;
wire _523_ ;
wire _103_ ;
wire _2150_ ;
wire _1841_ ;
wire _1421_ ;
wire _1001_ ;
wire _752_ ;
wire _332_ ;
wire \u_cpu.decode.co_mem_signed  ;
wire _808_ ;
wire _68_ ;
wire _1650_ ;
wire _1230_ ;
wire _981_ ;
wire _561_ ;
wire _141_ ;
wire _2015_ ;
wire [0:0] \u_cpu.bufreg.c_r  ;
wire _1706_ ;
wire _617_ ;
wire _790_ ;
wire _370_ ;
wire _1935_ ;
wire _1515_ ;
wire _846_ ;
wire _426_ ;
wire _2053_ ;
wire _1744_ ;
wire _1324_ ;
wire ibus_pending_ack_bF$buf0 ;
wire ibus_pending_ack_bF$buf1 ;
wire ibus_pending_ack_bF$buf2 ;
wire ibus_pending_ack_bF$buf3 ;
wire _655_ ;
wire _235_ ;
wire _2109_ ;
wire _1973_ ;
wire _1553_ ;
wire _1133_ ;
wire [8:0] \u_rf_if.o_waddr  ;
wire _884_ ;
wire _464_ ;
wire _2091_ ;
wire _1609_ ;
wire _1782_ ;
wire _1362_ ;
wire _693_ ;
wire _273_ ;
wire _2147_ ;
wire _1838_ ;
wire _1418_ ;
wire _749_ ;
wire _329_ ;
wire _1591_ ;
wire _1171_ ;
wire _1647_ ;
wire _1227_ ;
wire _978_ ;
wire _558_ ;
wire _138_ ;
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
wire \u_rf_if.wen1_r  ;
wire _2088_ ;
wire _1779_ ;
wire _1359_ ;
wire \u_cpu.bufreg.i_sh_signed  ;
wire _902_ ;
wire _1588_ ;
wire _1168_ ;
wire _499_ ;
wire _2154__bF$buf0 ;
wire _2154__bF$buf1 ;
wire _2154__bF$buf2 ;
wire _2154__bF$buf3 ;
wire _2154__bF$buf4 ;
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
wire _2012_ ;
wire _1703_ ;
wire _614_ ;
wire _1932_ ;
wire _1512_ ;
wire _843_ ;
wire _423_ ;
wire \u_rf_if.stream_cnt_1_bF$buf3  ;
wire _2050_ ;
wire _1741_ ;
wire _1321_ ;
wire _652_ ;
wire _232_ ;
wire \u_rf_if.prefetch_active  ;
wire _2106_ ;
wire _708_ ;
wire _1970_ ;
wire _1550_ ;
wire _1130_ ;
wire _881_ ;
wire _461_ ;
wire _1606_ ;
wire _937_ ;
wire _517_ ;
wire _690_ ;
wire _270_ ;
wire _2144_ ;
wire _1835_ ;
wire _1415_ ;
wire _746_ ;
wire _326_ ;
wire _1644_ ;
wire _1224_ ;
wire _975_ ;
wire _555_ ;
wire _135_ ;
wire _2009_ ;
wire _1873_ ;
wire [1:0] \u_mem_serial.state  ;
wire _1453_ ;
wire _1033_ ;
wire _784_ ;
wire _364_ ;
wire _1929_ ;
wire _1509_ ;
wire _1682_ ;
wire _1262_ ;
wire _593_ ;
wire _173_ ;
wire _2047_ ;
wire _1738_ ;
wire _1318_ ;
wire _649_ ;
wire _229_ ;
wire _1491_ ;
wire _1071_ ;
wire _1967_ ;
wire _1547_ ;
wire _1127_ ;
wire _878_ ;
wire _458_ ;
wire _32__bF$buf0 ;
wire _32__bF$buf1 ;
wire _32__bF$buf2 ;
wire _32__bF$buf3 ;
wire _32__bF$buf4 ;
wire _2085_ ;
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
wire _484__bF$buf0 ;
wire _484__bF$buf1 ;
wire _484__bF$buf2 ;
wire _484__bF$buf3 ;
wire _840_ ;
wire _420_ ;
wire [31:2] \u_cpu.decode.i_wb_rdt  ;
wire \u_rf_if.stream_cnt_1_bF$buf0  ;
wire _2103_ ;
wire \u_rf_if.rtrig1  ;
wire _705_ ;
wire _1603_ ;
wire _934_ ;
wire _514_ ;
wire _2141_ ;
wire _1832_ ;
wire _1412_ ;
wire _743_ ;
wire _323_ ;
wire clk_sys_bF$buf20 ;
wire clk_sys_bF$buf21 ;
wire clk_sys_bF$buf22 ;
wire clk_sys_bF$buf23 ;
wire clk_sys_bF$buf24 ;
wire clk_sys_bF$buf25 ;
wire clk_sys_bF$buf26 ;
wire clk_sys_bF$buf27 ;
wire clk_sys_bF$buf28 ;
wire clk_sys_bF$buf29 ;
wire _59_ ;
wire _1641_ ;
wire _1221_ ;
wire _972_ ;
wire _552_ ;
wire _132_ ;
wire _2006_ ;
wire _608_ ;
wire _1870_ ;
wire _1450_ ;
wire _1030_ ;
wire _781_ ;
wire _361_ ;
wire _1926_ ;
wire _1506_ ;
wire _837_ ;
wire _417_ ;
wire _97_ ;
wire _590_ ;
wire _170_ ;
wire _2044_ ;
wire _1735_ ;
wire _1315_ ;
wire _646_ ;
wire _226_ ;
wire _1964_ ;
wire _1544_ ;
wire _1124_ ;
wire _875_ ;
wire _455_ ;
wire _2082_ ;
wire _1773_ ;
wire _1353_ ;
wire _684_ ;
wire _264_ ;
wire _2138_ ;
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
wire _2079_ ;
wire \u_cpu.decode.co_two_stage_op  ;
wire \u_mem_serial.active_ibus_bF$buf6  ;
wire _1999_ ;
wire _1579_ ;
wire _1159_ ;
wire _2100_ ;
wire _702_ ;
wire _1388_ ;
wire _299_ ;
wire _1717__bF$buf0 ;
wire _1717__bF$buf1 ;
wire _1717__bF$buf2 ;
wire _1717__bF$buf3 ;
wire _1717__bF$buf4 ;
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
wire _2003_ ;
wire i_rst_n ;
wire _605_ ;
wire _1923_ ;
wire _1503_ ;
wire _834_ ;
wire _414_ ;
wire _94_ ;
wire _2041_ ;
wire _1732_ ;
wire _1312_ ;
wire _643_ ;
wire _223_ ;
wire _1961_ ;
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
wire _2135_ ;
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
wire _2038_ ;
wire _1729_ ;
wire _1309_ ;
wire _1482_ ;
wire _1062_ ;
wire _393_ ;
wire _1958_ ;
wire _1538_ ;
wire _1118_ ;
wire _869_ ;
wire _449_ ;
wire _1291_ ;
wire _2076_ ;
wire \u_mem_serial.active_ibus_bF$buf3  ;
wire _1767_ ;
wire _1347_ ;
wire _678_ ;
wire _258_ ;
wire _1996_ ;
wire _1576_ ;
wire _1156_ ;
wire _487_ ;
wire [2:0] \u_cpu.alu.i_rd_sel  ;
wire \u_cpu.cond_branch  ;
wire _1385_ ;
wire _296_ ;
wire _15_ ;
wire _1194_ ;
wire _53_ ;
wire _1899_ ;
wire _1479_ ;
wire _1059_ ;
wire _2000_ ;
wire _602_ ;
wire \u_cpu.alu.i_cnt0  ;
wire _1288_ ;
wire _199_ ;
wire [2:0] \u_cpu.bufreg.i_shamt  ;
wire _1920_ ;
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
wire _2132_ ;
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
wire _1917_ ;
wire _828_ ;
wire _408_ ;
wire _88_ ;
wire _1670_ ;
wire _1250_ ;
wire _581_ ;
wire _161_ ;
wire _2035_ ;
wire _1726_ ;
wire _1306_ ;
wire _637_ ;
wire _217_ ;
wire _390_ ;
wire \u_cpu.ctrl.i_pc_en  ;
wire _1955_ ;
wire _1535_ ;
wire _1115_ ;
wire _866_ ;
wire _446_ ;
wire _2073_ ;
wire \u_mem_serial.active_ibus_bF$buf0  ;
wire _1764_ ;
wire _1344_ ;
wire _675_ ;
wire _255_ ;
wire _2129_ ;
wire _1530__bF$buf0 ;
wire _1530__bF$buf1 ;
wire _1530__bF$buf2 ;
wire _1530__bF$buf3 ;
wire _1530__bF$buf4 ;
wire _1993_ ;
wire _1573_ ;
wire _1153_ ;
wire _484_ ;
wire _1877__bF$buf0 ;
wire _1877__bF$buf1 ;
wire _1877__bF$buf2 ;
wire _1877__bF$buf3 ;
wire _1877__bF$buf4 ;
wire _1877__bF$buf5 ;
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
wire [1:0] rdata ;
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
wire \u_cpu.bufreg.i_shift_op  ;
wire _1914_ ;
wire \u_cpu.bufreg.i_en_bF$buf2  ;
wire _825_ ;
wire _405_ ;
wire _85_ ;
wire _2032_ ;
wire _1723_ ;
wire _1303_ ;
wire _634_ ;
wire _214_ ;
wire _1952_ ;
wire _1532_ ;
wire _1112_ ;
wire _863_ ;
wire _443_ ;
wire _2070_ ;
wire _919_ ;
wire _1761_ ;
wire _1341_ ;
wire _672_ ;
wire _252_ ;
wire _2126_ ;
wire _1817_ ;
wire _728_ ;
wire _308_ ;
wire _1990_ ;
wire _1570_ ;
wire _1150_ ;
wire _481_ ;
wire _1626_ ;
wire _1206_ ;
wire _957_ ;
wire _537_ ;
wire _117_ ;
wire rst ;
wire _290_ ;
wire _1855_ ;
wire _1435_ ;
wire _1015_ ;
wire _766_ ;
wire _346_ ;
wire \u_rf_if.issue_sel_bF$buf2  ;
wire _1664_ ;
wire _1244_ ;
wire _995_ ;
wire _575_ ;
wire _155_ ;
wire _2029_ ;
wire _1893_ ;
wire _1473_ ;
wire _1053_ ;
wire _384_ ;
wire _1949_ ;
wire _1529_ ;
wire _1109_ ;
wire _1282_ ;
wire _193_ ;
wire _2067_ ;
wire \u_cpu.bufreg2.i_op_b_sel  ;
wire _1758_ ;
wire _1338_ ;
wire _669_ ;
wire _249_ ;
wire _1091_ ;
wire _1987_ ;
wire _1567_ ;
wire _1147_ ;
wire _898_ ;
wire _478_ ;
wire _1796_ ;
wire _1376_ ;
wire _287_ ;
wire _3_ ;
wire _1185_ ;
wire [0:0] \u_cpu.mem_if.o_rd  ;
wire _44_ ;
wire [4:0] rf_read_reg1_to_if ;
wire \u_cpu.rd_en  ;
wire _1699_ ;
wire _1279_ ;
wire _1911_ ;
wire _822_ ;
wire _402_ ;
wire _82_ ;
wire _1088_ ;
wire rf_wreq ;
wire _1720_ ;
wire _1300_ ;
wire _631_ ;
wire _211_ ;
wire _860_ ;
wire _440_ ;
wire _916_ ;
wire \u_cpu.immdec.gen_immdec_w_eq_1.imm31  ;
wire _2123_ ;
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
wire _1304__bF$buf0 ;
wire _1304__bF$buf1 ;
wire _1304__bF$buf2 ;
wire _1304__bF$buf3 ;
wire _1304__bF$buf4 ;
wire _2161_ ;
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
wire _2026_ ;
wire _1717_ ;
wire _628_ ;
wire _208_ ;
wire _1890_ ;
wire _1470_ ;
wire _1050_ ;
wire _381_ ;
wire _1946_ ;
wire _1526_ ;
wire _1106_ ;
wire _857_ ;
wire _437_ ;
wire _190_ ;
wire _2064_ ;
wire _1755_ ;
wire _1335_ ;
wire _666_ ;
wire _246_ ;
wire _1984_ ;
wire _1564_ ;
wire _1144_ ;
wire _895_ ;
wire _475_ ;
wire \u_rf_if.stream_cnt_0_bF$buf4  ;
wire _1793_ ;
wire _1373_ ;
wire _284_ ;
wire _2158_ ;
wire _0_ ;
wire _1849_ ;
wire _1429_ ;
wire _1009_ ;
wire [31:0] \u_rf_if.read_buf0  ;
wire i_clk_fast ;
wire _1182_ ;
wire [31:0] \u_cpu.i_ibus_rdt  ;
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
wire _2099_ ;
wire _913_ ;
wire _1599_ ;
wire _1179_ ;
wire _2120_ ;
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
wire _2023_ ;
wire _1714_ ;
wire _625_ ;
wire _205_ ;
wire [0:0] \u_cpu.csr_imm  ;
wire mem_dbus_ack ;
wire _1943_ ;
wire _1523_ ;
wire _1103_ ;
wire _854_ ;
wire _434_ ;
wire _2061_ ;
wire _1752_ ;
wire _1332_ ;
wire _663_ ;
wire _243_ ;
wire _2117_ ;
wire _1808_ ;
wire _719_ ;
wire _1981_ ;
wire _1561_ ;
wire _1141_ ;
wire _892_ ;
wire _472_ ;
wire \u_rf_if.stream_cnt_0_bF$buf1  ;
wire _1617_ ;
wire _948_ ;
wire _528_ ;
wire _108_ ;
wire _1790_ ;
wire _1370_ ;
wire _281_ ;
wire _2155_ ;
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
wire _1693_ ;
wire _1273_ ;
wire _184_ ;
wire _2058_ ;
wire _1749_ ;
wire _1329_ ;
wire _1082_ ;
wire _1978_ ;
wire _1558_ ;
wire _1138_ ;
wire _889_ ;
wire _469_ ;
wire _2096_ ;
wire _1787_ ;
wire _1367_ ;
wire _698_ ;
wire _278_ ;
wire _910_ ;
wire _1596_ ;
wire _1176_ ;
wire _35_ ;
wire [0:0] \u_cpu.alu.i_op_b  ;
wire [0:0] \u_cpu.alu.o_rd  ;
wire _1902_ ;
wire _813_ ;
wire _73_ ;
wire _1499_ ;
wire _1079_ ;
wire _2020_ ;
wire \u_cpu.bufreg.i_cnt_done  ;
wire _1711_ ;
wire _622_ ;
wire _202_ ;
wire _1940_ ;
wire _1520_ ;
wire _1100_ ;
wire _851_ ;
wire _431_ ;
wire _907_ ;
wire _660_ ;
wire _240_ ;
wire _2114_ ;
wire _1805_ ;
wire _716_ ;
wire \u_mem_serial.bit_count_0_bF$buf2  ;
wire _10__bF$buf0 ;
wire _10__bF$buf1 ;
wire _10__bF$buf2 ;
wire _10__bF$buf3 ;
wire _1614_ ;
wire _945_ ;
wire _525_ ;
wire _105_ ;
wire _2152_ ;
wire _1843_ ;
wire _1423_ ;
wire _1003_ ;
wire _754_ ;
wire _334_ ;
wire _892__bF$buf0 ;
wire _892__bF$buf1 ;
wire _892__bF$buf2 ;
wire _892__bF$buf3 ;
wire _892__bF$buf4 ;
wire _1172__bF$buf0 ;
wire _1172__bF$buf1 ;
wire _1172__bF$buf2 ;
wire _1172__bF$buf3 ;
wire _1652_ ;
wire _1232_ ;
wire _983_ ;
wire _563_ ;
wire _143_ ;
wire _2017_ ;
wire _1708_ ;
wire _619_ ;
wire _1881_ ;
wire _1461_ ;
wire _1041_ ;
wire _792_ ;
wire _372_ ;
wire _1937_ ;
wire _1517_ ;
wire _848_ ;
wire _428_ ;
wire _1690_ ;
wire _1270_ ;
wire _181_ ;
wire _2055_ ;
wire _1746_ ;
wire _1326_ ;
wire \u_cpu.o_ibus_cyc  ;
wire _657_ ;
wire _237_ ;
wire _1975_ ;
wire _1555_ ;
wire _1135_ ;
wire _886_ ;
wire _466_ ;
wire _2093_ ;
wire _1784_ ;
wire _1364_ ;
wire _695_ ;
wire _275_ ;
wire _2149_ ;
wire o_rf_sck ;
wire _1593_ ;
wire _1173_ ;
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
wire i_clk_fast_bF$buf0 ;
wire i_clk_fast_bF$buf1 ;
wire i_clk_fast_bF$buf2 ;
wire i_clk_fast_bF$buf3 ;
wire i_clk_fast_bF$buf4 ;
wire i_clk_fast_bF$buf5 ;
wire i_clk_fast_bF$buf6 ;
wire i_clk_fast_bF$buf7 ;
wire \u_cpu.cnt2  ;
wire [3:0] \u_cpu.state.cnt_r  ;
wire _904_ ;
wire _2111_ ;
wire \u_rf_if.o_wen  ;
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
wire _446__bF$buf0 ;
wire _446__bF$buf1 ;
wire _446__bF$buf2 ;
wire _446__bF$buf3 ;
wire _980_ ;
wire _560_ ;
wire _140_ ;
wire _2014_ ;
wire [31:0] \u_cpu.ctrl.o_ibus_adr  ;
wire _1705_ ;
wire _616_ ;
wire _1934_ ;
wire _1514_ ;
wire _845_ ;
wire _425_ ;
wire _2052_ ;
wire _1743_ ;
wire _1323_ ;
wire _654_ ;
wire _234_ ;
wire _2108_ ;
wire _1983__bF$buf0 ;
wire _1983__bF$buf1 ;
wire _1983__bF$buf2 ;
wire _1983__bF$buf3 ;
wire _1983__bF$buf4 ;
wire _1972_ ;
wire _1552_ ;
wire _1132_ ;
wire _883_ ;
wire _463_ ;
wire _2090_ ;
wire _1608_ ;
wire _939_ ;
wire _519_ ;
wire \u_cpu.alu.o_cmp  ;
wire _1781_ ;
wire _1361_ ;
wire _692_ ;
wire _272_ ;
wire _2146_ ;
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
wire _2049_ ;
wire _1493_ ;
wire _1073_ ;
wire _1969_ ;
wire _1549_ ;
wire _1129_ ;
wire _2087_ ;
wire _1778_ ;
wire _1358_ ;
wire _689_ ;
wire _269_ ;
wire _901_ ;
wire _1587_ ;
wire _1167_ ;
wire _498_ ;
wire \u_cpu.o_dbus_cyc  ;
wire _710_ ;
wire _1396_ ;
wire _26_ ;
wire _804_ ;
wire _64_ ;
wire _2011_ ;
wire _1702_ ;
wire _613_ ;
wire _1299_ ;
wire _1931_ ;
wire _1511_ ;
wire _842_ ;
wire _422_ ;
wire \u_rf_if.stream_cnt_1_bF$buf2  ;
wire _1740_ ;
wire _1320_ ;
wire _651_ ;
wire _231_ ;
wire _2105_ ;
wire \u_cpu.mem_if.signbit  ;
wire _707_ ;
wire _880_ ;
wire _460_ ;
wire \u_rf_if.stream_active  ;
wire _1605_ ;
wire _936_ ;
wire _516_ ;
wire _2143_ ;
wire [0:0] \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
wire _1834_ ;
wire _1414_ ;
wire _745_ ;
wire _325_ ;
wire clk_sys_bF$buf40 ;
wire clk_sys_bF$buf41 ;
wire clk_sys_bF$buf42 ;
wire clk_sys_bF$buf43 ;
wire clk_sys_bF$buf44 ;
wire clk_sys_bF$buf45 ;
wire _1643_ ;
wire _1223_ ;
wire \u_cpu.cnt12to31  ;
wire _974_ ;
wire _554_ ;
wire _134_ ;
wire _2008_ ;
wire [3:0] \u_cpu.mem_if.o_wb_sel  ;
wire _1872_ ;
wire _1452_ ;
wire _1032_ ;
wire _783_ ;
wire _363_ ;
wire mem_ibus_ack_bF$buf0 ;
wire mem_ibus_ack_bF$buf1 ;
wire mem_ibus_ack_bF$buf2 ;
wire mem_ibus_ack_bF$buf3 ;
wire mem_ibus_ack_bF$buf4 ;
wire _1928_ ;
wire _1508_ ;
wire _839_ ;
wire _419_ ;
wire _99_ ;
wire _1681_ ;
wire _1261_ ;
wire _592_ ;
wire _172_ ;
wire _2046_ ;
wire _1737_ ;
wire _1317_ ;
wire _648_ ;
wire _228_ ;
wire _1490_ ;
wire _1070_ ;
wire _1966_ ;
wire _1546_ ;
wire _1126_ ;
wire _877_ ;
wire _457_ ;
wire _2084_ ;
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
wire \u_rf_if.i_rreq  ;
wire _610_ ;
wire _1296_ ;
wire [7:0] o_gpio_oe ;
wire \u_rf_if.ready_pulse  ;
wire _2102_ ;
wire [4:0] rreg0 ;
wire [4:0] rreg1 ;
wire _704_ ;
wire _1602_ ;
wire _933_ ;
wire _513_ ;
wire \u_rf_if.issue_sel  ;
wire _1199_ ;
wire _2140_ ;
wire _1831_ ;
wire _1411_ ;
wire _742_ ;
wire _322_ ;
wire clk_sys_bF$buf10 ;
wire clk_sys_bF$buf11 ;
wire clk_sys_bF$buf12 ;
wire clk_sys_bF$buf13 ;
wire clk_sys_bF$buf14 ;
wire clk_sys_bF$buf15 ;
wire clk_sys_bF$buf16 ;
wire clk_sys_bF$buf17 ;
wire clk_sys_bF$buf18 ;
wire clk_sys_bF$buf19 ;
wire rf_rreq ;
wire _58_ ;
wire \u_cpu.alu.i_cmp_sig  ;
wire _1640_ ;
wire _1220_ ;
wire _971_ ;
wire _551_ ;
wire _131_ ;
wire _2005_ ;
wire _607_ ;
wire _780_ ;
wire _360_ ;
wire [0:0] \u_cpu.bufreg.i_imm  ;
wire \u_cpu.bufreg.i_cnt1  ;
wire _1925_ ;
wire _1505_ ;
wire _836_ ;
wire _416_ ;
wire _96_ ;
wire _2043_ ;
wire _1734_ ;
wire _1314_ ;
wire _645_ ;
wire _225_ ;
wire _1963_ ;
wire _1543_ ;
wire _1123_ ;
wire _874_ ;
wire _454_ ;
wire _2081_ ;
wire _1772_ ;
wire _1352_ ;
wire _683_ ;
wire _263_ ;
wire _2137_ ;
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
wire _2152__bF$buf0 ;
wire _2152__bF$buf1 ;
wire _2152__bF$buf2 ;
wire _2152__bF$buf3 ;
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
wire _2078_ ;
wire \u_mem_serial.active_ibus_bF$buf5  ;
wire _1769_ ;
wire _1349_ ;
wire _1998_ ;
wire _1578_ ;
wire _1158_ ;
wire _489_ ;
wire \u_cpu.bufreg.i_en  ;
wire \u_cpu.alu.i_sub  ;
wire _701_ ;
wire _1387_ ;
wire _298_ ;
wire _17_ ;
wire _930_ ;
wire _510_ ;
wire _1196_ ;
wire _55_ ;
wire _2002_ ;
wire _604_ ;
wire _1922_ ;
wire _1502_ ;
wire _833_ ;
wire _413_ ;
wire _93_ ;
wire _1099_ ;
wire _2040_ ;
wire _1731_ ;
wire _1311_ ;
wire _642_ ;
wire _222_ ;
wire [3:0] \u_cpu.decode.co_immdec_ctrl  ;
wire _1960_ ;
wire _1540_ ;
wire _1120_ ;
wire _871_ ;
wire _451_ ;
wire _927_ ;
wire _507_ ;
wire _680_ ;
wire _260_ ;
wire _2134_ ;
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
wire _1919_ ;
wire _1672_ ;
wire _1252_ ;
wire _583_ ;
wire _163_ ;
wire _2037_ ;
wire _1728_ ;
wire _1308_ ;
wire _639_ ;
wire _219_ ;
wire _1481_ ;
wire _1061_ ;
wire _392_ ;
wire _1957_ ;
wire _1537_ ;
wire _1117_ ;
wire _868_ ;
wire _448_ ;
wire _1290_ ;
wire _2075_ ;
wire \u_mem_serial.active_ibus_bF$buf2  ;
wire _1766_ ;
wire _1346_ ;
wire _677_ ;
wire _257_ ;
wire _1995_ ;
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
wire _2131_ ;
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
wire _1916_ ;
wire \u_cpu.bufreg.i_en_bF$buf4  ;
wire _827_ ;
wire _407_ ;
wire _87_ ;
wire _580_ ;
wire _160_ ;
wire _2034_ ;
wire _1725_ ;
wire _1305_ ;
wire _636_ ;
wire _216_ ;
wire _1954_ ;
wire _1534_ ;
wire _1114_ ;
wire _865_ ;
wire _445_ ;
wire _2072_ ;
wire _1763_ ;
wire _1343_ ;
wire _674_ ;
wire _254_ ;
wire _2128_ ;
wire _1819_ ;
wire [4:0] rf_read_reg0 ;
wire [4:0] rf_read_reg1 ;
wire _1992_ ;
wire _1572_ ;
wire _1152_ ;
wire _483_ ;
wire _1628_ ;
wire _1208_ ;
wire _959_ ;
wire _539_ ;
wire _119_ ;
wire [0:0] rdata0 ;
wire _1381_ ;
wire [0:0] rdata1 ;
wire _292_ ;
wire [23:0] \u_cpu.bufreg2.dlo  ;
wire _11_ ;
wire _1857_ ;
wire _1437_ ;
wire _1017_ ;
wire _768_ ;
wire _348_ ;
wire _1190_ ;
wire _1715__bF$buf0 ;
wire _1715__bF$buf1 ;
wire _1715__bF$buf2 ;
wire _1715__bF$buf3 ;
wire _1715__bF$buf4 ;
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
wire _2069_ ;
wire _1093_ ;
wire _1989_ ;
wire _1569_ ;
wire _1149_ ;
wire \u_cpu.ctrl.i_pc_rel  ;
wire _1798_ ;
wire _1378_ ;
wire \u_cpu.bufreg.i_imm_en  ;
wire _289_ ;
wire _5_ ;
wire _921_ ;
wire _501_ ;
wire _1187_ ;
wire [31:0] \u_cpu.bufreg.data  ;
wire _730_ ;
wire _310_ ;
wire _46_ ;
wire _1913_ ;
wire \u_cpu.bufreg.i_en_bF$buf1  ;
wire _824_ ;
wire _404_ ;
wire _84_ ;
wire _2031_ ;
wire [5:0] \u_rf_if.write_wait  ;
wire \u_cpu.alu.i_en  ;
wire _1722_ ;
wire _1302_ ;
wire _633_ ;
wire _213_ ;
wire _1951_ ;
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
wire _2125_ ;
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
wire \u_rf_if.issue_sel_bF$buf1  ;
wire _1663_ ;
wire _1243_ ;
wire _994_ ;
wire _574_ ;
wire _154_ ;
wire _2028_ ;
wire _1719_ ;
wire _1892_ ;
wire _1472_ ;
wire _1052_ ;
wire _383_ ;
wire _1948_ ;
wire _1528_ ;
wire _1108_ ;
wire _859_ ;
wire _439_ ;
wire _1281_ ;
wire _192_ ;
wire _2066_ ;
wire _1757_ ;
wire _1337_ ;
wire _668_ ;
wire _248_ ;
wire _1090_ ;
wire rf_rreq_bF$buf0 ;
wire rf_rreq_bF$buf1 ;
wire rf_rreq_bF$buf2 ;
wire rf_rreq_bF$buf3 ;
wire rf_rreq_bF$buf4 ;
wire rf_rreq_bF$buf5 ;
wire rf_rreq_bF$buf6 ;
wire _1986_ ;
wire rf_rreq_bF$buf7 ;
wire _1566_ ;
wire _1146_ ;
wire _897_ ;
wire _477_ ;
wire current_wdata0_next_hint ;
wire _1795_ ;
wire _1375_ ;
wire \u_cpu.ctrl.i_utype  ;
wire _286_ ;
wire _2_ ;
wire _1184_ ;
wire i_rst_n_bF$buf0 ;
wire i_rst_n_bF$buf1 ;
wire i_rst_n_bF$buf2 ;
wire i_rst_n_bF$buf3 ;
wire i_rst_n_bF$buf4 ;
wire i_rst_n_bF$buf5 ;
wire _43_ ;
wire _1889_ ;
wire _1469_ ;
wire _1049_ ;
wire i_rf_miso ;
wire _1698_ ;
wire _1278_ ;
wire _189_ ;
wire \u_cpu.bufreg2.o_sh_done  ;
wire _1910_ ;
wire _821_ ;
wire _401_ ;
wire _81_ ;
wire _1087_ ;
wire _630_ ;
wire _210_ ;
wire _915_ ;
wire _2122_ ;
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
wire _2160_ ;
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
wire _2025_ ;
wire _1716_ ;
wire _627_ ;
wire _207_ ;
wire _380_ ;
wire _1945_ ;
wire _1525_ ;
wire _1105_ ;
wire _856_ ;
wire _436_ ;
wire _2063_ ;
wire _1754_ ;
wire _1334_ ;
wire _665_ ;
wire _245_ ;
wire _2119_ ;
wire _1983_ ;
wire _1563_ ;
wire _1143_ ;
wire _894_ ;
wire _474_ ;
wire [1:0] \u_cpu.bufreg2.i_bytecnt  ;
wire \u_cpu.bufreg.i_rs1_en  ;
wire \u_rf_if.stream_cnt_0_bF$buf3  ;
wire _1619_ ;
wire _1792_ ;
wire _1372_ ;
wire _283_ ;
wire _2157_ ;
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
wire _2098_ ;
wire _1789_ ;
wire _1369_ ;
wire _912_ ;
wire _1598_ ;
wire _1178_ ;
wire _1810_ ;
wire _721_ ;
wire _301_ ;
wire o_uart_tx ;
wire \u_cpu.state.i_ctrl_misalign  ;
wire \u_cpu.decode.co_rd_alu_en  ;
wire _37_ ;
wire _950_ ;
wire _530_ ;
wire _110_ ;
wire _1904_ ;
wire _815_ ;
wire _75_ ;
wire _2022_ ;
wire _1713_ ;
wire _624_ ;
wire _204_ ;
wire _1942_ ;
wire _1522_ ;
wire _1102_ ;
wire _853_ ;
wire _433_ ;
wire _2060_ ;
wire _909_ ;
wire _1751_ ;
wire _1331_ ;
wire _662_ ;
wire _242_ ;
wire _2116_ ;
wire _1807_ ;
wire _718_ ;
wire _1980_ ;
wire _1560_ ;
wire _1140_ ;
wire _891_ ;
wire _471_ ;
wire \u_rf_if.stream_cnt_0_bF$buf0  ;
wire _1616_ ;
wire _947_ ;
wire _527_ ;
wire _107_ ;
wire _280_ ;
wire _2154_ ;
wire _1845_ ;
wire _1425_ ;
wire _1005_ ;
wire _756_ ;
wire _336_ ;
wire rf_wdata0_next ;
wire _1654_ ;
wire _1234_ ;
wire _985_ ;
wire _565_ ;
wire _145_ ;
wire _2019_ ;
wire ren_bF$buf0 ;
wire ren_bF$buf1 ;
wire ren_bF$buf2 ;
wire ren_bF$buf3 ;
wire ren_bF$buf4 ;
wire _1883_ ;
wire _1463_ ;
wire _1043_ ;
wire _794_ ;
wire _374_ ;
wire _1939_ ;
wire _1519_ ;
wire _1692_ ;
wire _1272_ ;
wire _183_ ;
wire _2057_ ;
wire [7:0] \u_cpu.bufreg2.cnt_next  ;
wire _1748_ ;
wire _1328_ ;
wire _659_ ;
wire _239_ ;
wire _1081_ ;
wire _1977_ ;
wire _1557_ ;
wire _1137_ ;
wire _888_ ;
wire _468_ ;
wire _2095_ ;
wire _1786_ ;
wire _1366_ ;
wire _697_ ;
wire _277_ ;
wire _1595_ ;
wire _1175_ ;
wire [1:0] \u_rf_if.o_wdata  ;
wire [0:0] \u_cpu.ctrl.pc  ;
wire _34_ ;
wire _1689_ ;
wire _1269_ ;
wire _1901_ ;
wire _812_ ;
wire _72_ ;
wire _1498_ ;
wire _1078_ ;
wire _1710_ ;
wire _621_ ;
wire _201_ ;
wire \u_cpu.state.init_done  ;
wire \u_cpu.dbus_en  ;
wire _850_ ;
wire _430_ ;
wire _906_ ;
wire _2113_ ;
wire _1804_ ;
wire _715_ ;
wire \u_mem_serial.bit_count_0_bF$buf1  ;
wire _1613_ ;
wire _944_ ;
wire _524_ ;
wire _104_ ;
wire _2151_ ;
wire _1842_ ;
wire _1422_ ;
wire _1002_ ;
wire _753_ ;
wire _333_ ;
wire _809_ ;
wire _69_ ;
wire _1651_ ;
wire _1231_ ;
wire \u_cpu.cnt0to3  ;
wire _982_ ;
wire _562_ ;
wire _142_ ;
wire _2016_ ;
wire _1707_ ;
wire _618_ ;
wire _1880_ ;
wire _1460_ ;
wire _1040_ ;
wire _791_ ;
wire _371_ ;
wire _1936_ ;
wire _1516_ ;
wire _847_ ;
wire _427_ ;
wire _180_ ;
wire _2054_ ;
wire _1745_ ;
wire _1325_ ;
wire _656_ ;
wire _236_ ;
wire _1974_ ;
wire _1554_ ;
wire _1134_ ;
wire _885_ ;
wire _465_ ;
wire _2092_ ;
wire _1783_ ;
wire _1363_ ;
wire _694_ ;
wire _274_ ;
wire _2148_ ;
wire _1839_ ;
wire _1419_ ;
wire _1592_ ;
wire _1172_ ;
wire _1648_ ;
wire _1228_ ;
wire _979_ ;
wire _559_ ;
wire _139_ ;
wire [1:0] \u_rf_serial.shift_rx  ;
wire rst_bF$buf10 ;
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
wire [4:0] \u_rf_if.rreg1_latched  ;
wire _2089_ ;
wire _903_ ;
wire _1589_ ;
wire _1169_ ;
wire _2110_ ;
wire _1801_ ;
wire _712_ ;
wire _1398_ ;
wire _28_ ;
wire _1610_ ;
wire _941_ ;
wire _521_ ;
wire _101_ ;
wire \u_cpu.alu.i_cmp_eq  ;
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
wire [0:0] \u_cpu.o_wdata0  ;
wire _2013_ ;
wire _1297__bF$buf0 ;
wire _1297__bF$buf1 ;
wire _1297__bF$buf2 ;
wire _1297__bF$buf3 ;
wire _1297__bF$buf4 ;
wire \u_cpu.bufreg2.i_cnt7  ;
wire _1704_ ;
wire _615_ ;
wire \u_cpu.bufreg.i_right_shift_op  ;
wire _1933_ ;
wire _1513_ ;
wire _844_ ;
wire _424_ ;
wire _2051_ ;
wire \u_cpu.immdec.gen_immdec_w_eq_1.imm7  ;
wire _1742_ ;
wire _1322_ ;
wire _653_ ;
wire _233_ ;
wire _2107_ ;
wire _709_ ;
wire _1971_ ;
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
wire _2145_ ;
wire _1836_ ;
wire _1416_ ;
wire _747_ ;
wire _327_ ;
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
wire _2048_ ;
wire [8:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20  ;
wire _1739_ ;
wire _1319_ ;
wire _1492_ ;
wire _1072_ ;
wire _1968_ ;
wire _1548_ ;
wire _1128_ ;
wire _879_ ;
wire _459_ ;
wire _2086_ ;
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
wire _2010_ ;
wire _1701_ ;
wire _612_ ;
wire _1298_ ;
wire _1930_ ;
wire _1510_ ;
wire _841_ ;
wire _421_ ;
wire \u_rf_if.stream_cnt_1_bF$buf1  ;
wire clk_sys_bF$buf0 ;
wire clk_sys_bF$buf1 ;
wire clk_sys_bF$buf2 ;
wire clk_sys_bF$buf3 ;
wire clk_sys_bF$buf4 ;
wire clk_sys_bF$buf5 ;
wire clk_sys_bF$buf6 ;
wire clk_sys_bF$buf7 ;
wire clk_sys_bF$buf8 ;
wire clk_sys_bF$buf9 ;
wire _650_ ;
wire _230_ ;
wire _2104_ ;
wire _706_ ;
wire _1604_ ;
wire _935_ ;
wire _515_ ;
wire _2142_ ;
wire _1833_ ;
wire _1413_ ;
wire _744_ ;
wire _324_ ;
wire clk_sys_bF$buf30 ;
wire clk_sys_bF$buf31 ;
wire clk_sys_bF$buf32 ;
wire clk_sys_bF$buf33 ;
wire clk_sys_bF$buf34 ;
wire clk_sys_bF$buf35 ;
wire clk_sys_bF$buf36 ;
wire clk_sys_bF$buf37 ;
wire clk_sys_bF$buf38 ;
wire clk_sys_bF$buf39 ;
wire [31:0] ibus_pending_rdt ;
wire _1895__bF$buf0 ;
wire _1895__bF$buf1 ;
wire _1895__bF$buf2 ;
wire _1895__bF$buf3 ;
wire _1642_ ;
wire _1222_ ;
wire _973_ ;
wire _553_ ;
wire _133_ ;
wire _2007_ ;
wire _609_ ;
wire _1871_ ;
wire _1451_ ;
wire _1031_ ;
wire _782_ ;
wire _362_ ;
wire _1927_ ;
wire _1507_ ;
wire _838_ ;
wire _418_ ;
wire _98_ ;
wire _1680_ ;
wire _1260_ ;
wire _591_ ;
wire _171_ ;
wire _2045_ ;
wire _1736_ ;
wire _1316_ ;
wire _647_ ;
wire _227_ ;
wire \u_mem_serial.clk_sys_prev  ;
wire _1965_ ;
wire _1545_ ;
wire _1125_ ;
wire _876_ ;
wire _456_ ;
wire _2083_ ;
wire mem_ibus_ack ;
wire _1774_ ;
wire _1354_ ;
wire [0:0] \u_cpu.alu.i_buf  ;
wire _685_ ;
wire _265_ ;
wire _2139_ ;
wire _1583_ ;
wire _1163_ ;
wire _494_ ;
wire _1639_ ;
wire _1219_ ;
wire rf_ready ;
wire _1392_ ;
wire _22_ ;
wire _1868_ ;
wire _1448_ ;
wire _1028_ ;
wire _779_ ;
wire _359_ ;

CLKBUF1 CLKBUF1_insert250 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf0)
);

CLKBUF1 CLKBUF1_insert249 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf1)
);

CLKBUF1 CLKBUF1_insert248 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf2)
);

CLKBUF1 CLKBUF1_insert247 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf3)
);

CLKBUF1 CLKBUF1_insert246 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf4)
);

CLKBUF1 CLKBUF1_insert245 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf5)
);

BUFX2 BUFX2_insert244 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf0)
);

BUFX2 BUFX2_insert243 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf1)
);

BUFX2 BUFX2_insert242 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf2)
);

BUFX2 BUFX2_insert241 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf3)
);

BUFX2 BUFX2_insert240 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf4)
);

BUFX2 BUFX2_insert239 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316_),
    .Y(_1316__bF$buf0)
);

BUFX2 BUFX2_insert238 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316_),
    .Y(_1316__bF$buf1)
);

BUFX2 BUFX2_insert237 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316_),
    .Y(_1316__bF$buf2)
);

BUFX2 BUFX2_insert236 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316_),
    .Y(_1316__bF$buf3)
);

BUFX2 BUFX2_insert235 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316_),
    .Y(_1316__bF$buf4)
);

BUFX2 BUFX2_insert234 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877_),
    .Y(_1877__bF$buf0)
);

BUFX2 BUFX2_insert233 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877_),
    .Y(_1877__bF$buf1)
);

BUFX2 BUFX2_insert232 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877_),
    .Y(_1877__bF$buf2)
);

BUFX2 BUFX2_insert231 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877_),
    .Y(_1877__bF$buf3)
);

BUFX2 BUFX2_insert230 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877_),
    .Y(_1877__bF$buf4)
);

BUFX2 BUFX2_insert229 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877_),
    .Y(_1877__bF$buf5)
);

BUFX2 BUFX2_insert228 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1172_),
    .Y(_1172__bF$buf0)
);

BUFX2 BUFX2_insert227 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1172_),
    .Y(_1172__bF$buf1)
);

BUFX2 BUFX2_insert226 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1172_),
    .Y(_1172__bF$buf2)
);

BUFX2 BUFX2_insert225 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1172_),
    .Y(_1172__bF$buf3)
);

BUFX2 BUFX2_insert224 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154_),
    .Y(_2154__bF$buf0)
);

BUFX2 BUFX2_insert223 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154_),
    .Y(_2154__bF$buf1)
);

BUFX2 BUFX2_insert222 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154_),
    .Y(_2154__bF$buf2)
);

BUFX2 BUFX2_insert221 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154_),
    .Y(_2154__bF$buf3)
);

BUFX2 BUFX2_insert220 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154_),
    .Y(_2154__bF$buf4)
);

BUFX2 BUFX2_insert219 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1983_),
    .Y(_1983__bF$buf0)
);

BUFX2 BUFX2_insert218 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1983_),
    .Y(_1983__bF$buf1)
);

BUFX2 BUFX2_insert217 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1983_),
    .Y(_1983__bF$buf2)
);

BUFX2 BUFX2_insert216 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1983_),
    .Y(_1983__bF$buf3)
);

BUFX2 BUFX2_insert215 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1983_),
    .Y(_1983__bF$buf4)
);

BUFX2 BUFX2_insert214 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665_),
    .Y(_665__bF$buf0)
);

BUFX2 BUFX2_insert213 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665_),
    .Y(_665__bF$buf1)
);

BUFX2 BUFX2_insert212 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665_),
    .Y(_665__bF$buf2)
);

BUFX2 BUFX2_insert211 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665_),
    .Y(_665__bF$buf3)
);

BUFX2 BUFX2_insert210 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf0 )
);

BUFX2 BUFX2_insert209 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf1 )
);

BUFX2 BUFX2_insert208 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf2 )
);

BUFX2 BUFX2_insert207 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf3 )
);

BUFX2 BUFX2_insert206 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1895_),
    .Y(_1895__bF$buf0)
);

BUFX2 BUFX2_insert205 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1895_),
    .Y(_1895__bF$buf1)
);

BUFX2 BUFX2_insert204 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1895_),
    .Y(_1895__bF$buf2)
);

BUFX2 BUFX2_insert203 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1895_),
    .Y(_1895__bF$buf3)
);

BUFX2 BUFX2_insert202 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf0 )
);

BUFX2 BUFX2_insert201 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf1 )
);

BUFX2 BUFX2_insert200 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf2 )
);

BUFX2 BUFX2_insert199 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf3 )
);

BUFX2 BUFX2_insert198 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf4 )
);

BUFX2 BUFX2_insert197 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf0)
);

BUFX2 BUFX2_insert196 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf1)
);

BUFX2 BUFX2_insert195 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf2)
);

BUFX2 BUFX2_insert194 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf3)
);

BUFX2 BUFX2_insert193 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf4)
);

BUFX2 BUFX2_insert192 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf5)
);

BUFX2 BUFX2_insert191 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf6)
);

BUFX2 BUFX2_insert190 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf7)
);

BUFX2 BUFX2_insert189 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf0 )
);

BUFX2 BUFX2_insert188 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf1 )
);

BUFX2 BUFX2_insert187 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf2 )
);

BUFX2 BUFX2_insert186 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf3 )
);

BUFX2 BUFX2_insert185 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1164_),
    .Y(_1164__bF$buf0)
);

BUFX2 BUFX2_insert184 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1164_),
    .Y(_1164__bF$buf1)
);

BUFX2 BUFX2_insert183 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1164_),
    .Y(_1164__bF$buf2)
);

BUFX2 BUFX2_insert182 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1164_),
    .Y(_1164__bF$buf3)
);

BUFX2 BUFX2_insert181 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1164_),
    .Y(_1164__bF$buf4)
);

BUFX2 BUFX2_insert180 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_32_),
    .Y(_32__bF$buf0)
);

BUFX2 BUFX2_insert179 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_32_),
    .Y(_32__bF$buf1)
);

BUFX2 BUFX2_insert178 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_32_),
    .Y(_32__bF$buf2)
);

BUFX2 BUFX2_insert177 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_32_),
    .Y(_32__bF$buf3)
);

BUFX2 BUFX2_insert176 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_32_),
    .Y(_32__bF$buf4)
);

BUFX2 BUFX2_insert175 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152_),
    .Y(_2152__bF$buf0)
);

BUFX2 BUFX2_insert174 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152_),
    .Y(_2152__bF$buf1)
);

BUFX2 BUFX2_insert173 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152_),
    .Y(_2152__bF$buf2)
);

BUFX2 BUFX2_insert172 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152_),
    .Y(_2152__bF$buf3)
);

BUFX2 BUFX2_insert171 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892_),
    .Y(_892__bF$buf0)
);

BUFX2 BUFX2_insert170 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892_),
    .Y(_892__bF$buf1)
);

BUFX2 BUFX2_insert169 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892_),
    .Y(_892__bF$buf2)
);

BUFX2 BUFX2_insert168 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892_),
    .Y(_892__bF$buf3)
);

BUFX2 BUFX2_insert167 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892_),
    .Y(_892__bF$buf4)
);

BUFX2 BUFX2_insert166 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf0)
);

BUFX2 BUFX2_insert165 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf1)
);

BUFX2 BUFX2_insert164 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf2)
);

BUFX2 BUFX2_insert163 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf3)
);

BUFX2 BUFX2_insert162 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf4)
);

BUFX2 BUFX2_insert161 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf5)
);

BUFX2 BUFX2_insert160 (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf6)
);

CLKBUF1 CLKBUF1_insert159 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

CLKBUF1 CLKBUF1_insert158 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

CLKBUF1 CLKBUF1_insert157 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert156 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert155 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert154 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert153 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert152 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

BUFX2 BUFX2_insert151 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1984_),
    .Y(_1984__bF$buf0)
);

BUFX2 BUFX2_insert150 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1984_),
    .Y(_1984__bF$buf1)
);

BUFX2 BUFX2_insert149 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1984_),
    .Y(_1984__bF$buf2)
);

BUFX2 BUFX2_insert148 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1984_),
    .Y(_1984__bF$buf3)
);

BUFX2 BUFX2_insert147 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1984_),
    .Y(_1984__bF$buf4)
);

BUFX2 BUFX2_insert146 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717_),
    .Y(_1717__bF$buf0)
);

BUFX2 BUFX2_insert145 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717_),
    .Y(_1717__bF$buf1)
);

BUFX2 BUFX2_insert144 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717_),
    .Y(_1717__bF$buf2)
);

BUFX2 BUFX2_insert143 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717_),
    .Y(_1717__bF$buf3)
);

BUFX2 BUFX2_insert142 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717_),
    .Y(_1717__bF$buf4)
);

BUFX2 BUFX2_insert141 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf0)
);

BUFX2 BUFX2_insert140 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf1)
);

BUFX2 BUFX2_insert139 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf2)
);

BUFX2 BUFX2_insert138 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf3)
);

BUFX2 BUFX2_insert137 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf0)
);

BUFX2 BUFX2_insert136 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf1)
);

BUFX2 BUFX2_insert135 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf2)
);

BUFX2 BUFX2_insert134 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf3)
);

BUFX2 BUFX2_insert133 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf4)
);

BUFX2 BUFX2_insert132 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf5)
);

BUFX2 BUFX2_insert131 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf6)
);

BUFX2 BUFX2_insert130 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf7)
);

BUFX2 BUFX2_insert129 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf8)
);

BUFX2 BUFX2_insert128 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf9)
);

BUFX2 BUFX2_insert127 (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst),
    .Y(rst_bF$buf10)
);

BUFX2 BUFX2_insert126 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1303_),
    .Y(_1303__bF$buf0)
);

BUFX2 BUFX2_insert125 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1303_),
    .Y(_1303__bF$buf1)
);

BUFX2 BUFX2_insert124 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1303_),
    .Y(_1303__bF$buf2)
);

BUFX2 BUFX2_insert123 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1303_),
    .Y(_1303__bF$buf3)
);

BUFX2 BUFX2_insert122 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_484_),
    .Y(_484__bF$buf0)
);

BUFX2 BUFX2_insert121 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_484_),
    .Y(_484__bF$buf1)
);

BUFX2 BUFX2_insert120 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_484_),
    .Y(_484__bF$buf2)
);

BUFX2 BUFX2_insert119 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_484_),
    .Y(_484__bF$buf3)
);

BUFX2 BUFX2_insert118 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_446_),
    .Y(_446__bF$buf0)
);

BUFX2 BUFX2_insert117 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_446_),
    .Y(_446__bF$buf1)
);

BUFX2 BUFX2_insert116 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_446_),
    .Y(_446__bF$buf2)
);

BUFX2 BUFX2_insert115 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_446_),
    .Y(_446__bF$buf3)
);

BUFX2 BUFX2_insert114 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

BUFX2 BUFX2_insert113 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert112 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert111 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert110 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf4)
);

BUFX2 BUFX2_insert109 (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf5)
);

BUFX2 BUFX2_insert108 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18_),
    .Y(_18__bF$buf0)
);

BUFX2 BUFX2_insert107 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18_),
    .Y(_18__bF$buf1)
);

BUFX2 BUFX2_insert106 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18_),
    .Y(_18__bF$buf2)
);

BUFX2 BUFX2_insert105 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18_),
    .Y(_18__bF$buf3)
);

BUFX2 BUFX2_insert104 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18_),
    .Y(_18__bF$buf4)
);

BUFX2 BUFX2_insert103 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf0 )
);

BUFX2 BUFX2_insert102 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf1 )
);

BUFX2 BUFX2_insert101 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf2 )
);

BUFX2 BUFX2_insert100 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf3 )
);

BUFX2 BUFX2_insert99 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315_),
    .Y(_1315__bF$buf0)
);

BUFX2 BUFX2_insert98 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315_),
    .Y(_1315__bF$buf1)
);

BUFX2 BUFX2_insert97 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315_),
    .Y(_1315__bF$buf2)
);

BUFX2 BUFX2_insert96 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315_),
    .Y(_1315__bF$buf3)
);

BUFX2 BUFX2_insert95 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297_),
    .Y(_1297__bF$buf0)
);

BUFX2 BUFX2_insert94 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297_),
    .Y(_1297__bF$buf1)
);

BUFX2 BUFX2_insert93 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297_),
    .Y(_1297__bF$buf2)
);

BUFX2 BUFX2_insert92 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297_),
    .Y(_1297__bF$buf3)
);

BUFX2 BUFX2_insert91 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297_),
    .Y(_1297__bF$buf4)
);

BUFX2 BUFX2_insert90 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf0)
);

BUFX2 BUFX2_insert89 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf1)
);

BUFX2 BUFX2_insert88 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf2)
);

BUFX2 BUFX2_insert87 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf3)
);

BUFX2 BUFX2_insert86 (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren),
    .Y(ren_bF$buf4)
);

CLKBUF1 CLKBUF1_insert85 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf0)
);

CLKBUF1 CLKBUF1_insert84 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf1)
);

CLKBUF1 CLKBUF1_insert83 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf2)
);

CLKBUF1 CLKBUF1_insert82 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf3)
);

CLKBUF1 CLKBUF1_insert81 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf4)
);

CLKBUF1 CLKBUF1_insert80 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf5)
);

CLKBUF1 CLKBUF1_insert79 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf6)
);

CLKBUF1 CLKBUF1_insert78 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf7)
);

CLKBUF1 CLKBUF1_insert77 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf8)
);

CLKBUF1 CLKBUF1_insert76 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf9)
);

CLKBUF1 CLKBUF1_insert75 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf10)
);

CLKBUF1 CLKBUF1_insert74 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf11)
);

CLKBUF1 CLKBUF1_insert73 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf12)
);

CLKBUF1 CLKBUF1_insert72 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf13)
);

CLKBUF1 CLKBUF1_insert71 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf14)
);

CLKBUF1 CLKBUF1_insert70 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf15)
);

CLKBUF1 CLKBUF1_insert69 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf16)
);

CLKBUF1 CLKBUF1_insert68 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf17)
);

CLKBUF1 CLKBUF1_insert67 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf18)
);

CLKBUF1 CLKBUF1_insert66 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf19)
);

CLKBUF1 CLKBUF1_insert65 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf20)
);

CLKBUF1 CLKBUF1_insert64 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf21)
);

CLKBUF1 CLKBUF1_insert63 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf22)
);

CLKBUF1 CLKBUF1_insert62 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf23)
);

CLKBUF1 CLKBUF1_insert61 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf24)
);

CLKBUF1 CLKBUF1_insert60 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf25)
);

CLKBUF1 CLKBUF1_insert59 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf26)
);

CLKBUF1 CLKBUF1_insert58 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf27)
);

CLKBUF1 CLKBUF1_insert57 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf28)
);

CLKBUF1 CLKBUF1_insert56 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf29)
);

CLKBUF1 CLKBUF1_insert55 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf30)
);

CLKBUF1 CLKBUF1_insert54 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf31)
);

CLKBUF1 CLKBUF1_insert53 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf32)
);

CLKBUF1 CLKBUF1_insert52 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf33)
);

CLKBUF1 CLKBUF1_insert51 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf34)
);

CLKBUF1 CLKBUF1_insert50 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf35)
);

CLKBUF1 CLKBUF1_insert49 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf36)
);

CLKBUF1 CLKBUF1_insert48 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf37)
);

CLKBUF1 CLKBUF1_insert47 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf38)
);

CLKBUF1 CLKBUF1_insert46 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf39)
);

CLKBUF1 CLKBUF1_insert45 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf40)
);

CLKBUF1 CLKBUF1_insert44 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf41)
);

CLKBUF1 CLKBUF1_insert43 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf42)
);

CLKBUF1 CLKBUF1_insert42 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf43)
);

CLKBUF1 CLKBUF1_insert41 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf44)
);

CLKBUF1 CLKBUF1_insert40 (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf45)
);

BUFX2 BUFX2_insert39 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf0 )
);

BUFX2 BUFX2_insert38 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf1 )
);

BUFX2 BUFX2_insert37 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf2 )
);

BUFX2 BUFX2_insert36 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf3 )
);

BUFX2 BUFX2_insert35 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf4 )
);

BUFX2 BUFX2_insert34 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf5 )
);

BUFX2 BUFX2_insert33 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf6 )
);

BUFX2 BUFX2_insert32 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062_),
    .Y(_2062__bF$buf0)
);

BUFX2 BUFX2_insert31 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062_),
    .Y(_2062__bF$buf1)
);

BUFX2 BUFX2_insert30 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062_),
    .Y(_2062__bF$buf2)
);

BUFX2 BUFX2_insert29 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062_),
    .Y(_2062__bF$buf3)
);

BUFX2 BUFX2_insert28 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715_),
    .Y(_1715__bF$buf0)
);

BUFX2 BUFX2_insert27 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715_),
    .Y(_1715__bF$buf1)
);

BUFX2 BUFX2_insert26 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715_),
    .Y(_1715__bF$buf2)
);

BUFX2 BUFX2_insert25 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715_),
    .Y(_1715__bF$buf3)
);

BUFX2 BUFX2_insert24 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715_),
    .Y(_1715__bF$buf4)
);

BUFX2 BUFX2_insert23 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf0 )
);

BUFX2 BUFX2_insert22 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf1 )
);

BUFX2 BUFX2_insert21 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf2 )
);

BUFX2 BUFX2_insert20 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf3 )
);

BUFX2 BUFX2_insert19 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf4 )
);

BUFX2 BUFX2_insert18 (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf5 )
);

BUFX2 BUFX2_insert17 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530_),
    .Y(_1530__bF$buf0)
);

BUFX2 BUFX2_insert16 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530_),
    .Y(_1530__bF$buf1)
);

BUFX2 BUFX2_insert15 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530_),
    .Y(_1530__bF$buf2)
);

BUFX2 BUFX2_insert14 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530_),
    .Y(_1530__bF$buf3)
);

BUFX2 BUFX2_insert13 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530_),
    .Y(_1530__bF$buf4)
);

BUFX2 BUFX2_insert12 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10_),
    .Y(_10__bF$buf0)
);

BUFX2 BUFX2_insert11 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10_),
    .Y(_10__bF$buf1)
);

BUFX2 BUFX2_insert10 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10_),
    .Y(_10__bF$buf2)
);

BUFX2 BUFX2_insert9 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10_),
    .Y(_10__bF$buf3)
);

BUFX2 BUFX2_insert8 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_215_),
    .Y(_215__bF$buf0)
);

BUFX2 BUFX2_insert7 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_215_),
    .Y(_215__bF$buf1)
);

BUFX2 BUFX2_insert6 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_215_),
    .Y(_215__bF$buf2)
);

BUFX2 BUFX2_insert5 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_215_),
    .Y(_215__bF$buf3)
);

BUFX2 BUFX2_insert4 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1304_),
    .Y(_1304__bF$buf0)
);

BUFX2 BUFX2_insert3 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1304_),
    .Y(_1304__bF$buf1)
);

BUFX2 BUFX2_insert2 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1304_),
    .Y(_1304__bF$buf2)
);

BUFX2 BUFX2_insert1 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1304_),
    .Y(_1304__bF$buf3)
);

BUFX2 BUFX2_insert0 (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1304_),
    .Y(_1304__bF$buf4)
);

BUFX2 _2163_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2161_),
    .Y(o_rf_sync)
);

BUFX2 _2164_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2160_),
    .Y(o_rf_sck)
);

BUFX2 _2165_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2159_),
    .Y(o_rf_mosi)
);

BUFX2 _2166_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2158_),
    .Y(o_mem_sync)
);

BUFX2 _2167_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2157_),
    .Y(o_mem_sck)
);

BUFX2 _2168_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2156_),
    .Y(o_mem_mosi)
);

BUFX2 _2169_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(vdd),
    .Y(o_uart_tx)
);

BUFX2 _2170_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio[7])
);

BUFX2 _2171_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio[6])
);

BUFX2 _2172_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio[5])
);

BUFX2 _2173_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio[4])
);

BUFX2 _2174_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio[3])
);

BUFX2 _2175_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio[2])
);

BUFX2 _2176_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio[1])
);

BUFX2 _2177_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio[0])
);

BUFX2 _2178_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio_oe[7])
);

BUFX2 _2179_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio_oe[6])
);

BUFX2 _2180_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio_oe[5])
);

BUFX2 _2181_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio_oe[4])
);

BUFX2 _2182_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio_oe[3])
);

BUFX2 _2183_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio_oe[2])
);

BUFX2 _2184_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio_oe[1])
);

BUFX2 _2185_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(o_gpio_oe[0])
);

DFFPOSX1 _2186_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_782_),
    .Q(\u_mem_serial.shift_rx [23])
);

DFFPOSX1 _2187_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_770_),
    .Q(\u_mem_serial.bit_count [3])
);

DFFPOSX1 _2188_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_793_),
    .Q(\u_mem_serial.shift_rx [15])
);

DFFPOSX1 _2189_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_771_),
    .Q(\u_mem_serial.bit_count [2])
);

DFFPOSX1 _2190_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_748_),
    .Q(\u_mem_serial.shift_rx [13])
);

DFFPOSX1 _2191_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_783_),
    .Q(\u_mem_serial.shift_rx [22])
);

DFFPOSX1 _2192_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_749_),
    .Q(\u_mem_serial.shift_rx [12])
);

DFFPOSX1 _2193_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_772_),
    .Q(\u_mem_serial.bit_count [1])
);

DFFPOSX1 _2194_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_750_),
    .Q(\u_mem_serial.shift_rx [11])
);

DFFPOSX1 _2195_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_789_),
    .Q(\u_mem_serial.shift_rx [18])
);

DFFPOSX1 _2196_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_751_),
    .Q(\u_mem_serial.shift_rx [10])
);

DFFPOSX1 _2197_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_773_),
    .Q(\u_mem_serial.bit_count [0])
);

AOI21X1 _2198_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1464_),
    .B(_1465_),
    .C(rst_bF$buf10),
    .Y(_793_)
);

NAND2X1 _2199_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [14]),
    .B(_1425_),
    .Y(_1465_)
);

OAI21X1 _2200_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [15]),
    .Y(_1464_)
);

AOI21X1 _2201_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1463_),
    .B(_1418_),
    .C(rst_bF$buf9),
    .Y(_792_)
);

OAI21X1 _2202_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1414_),
    .B(_1435_),
    .C(_1462_),
    .Y(_1463_)
);

NOR2X1 _2203_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_794_),
    .B(_1307_),
    .Y(_1462_)
);

AOI21X1 _2204_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1460_),
    .B(_1461_),
    .C(rst_bF$buf8),
    .Y(_791_)
);

NAND2X1 _2205_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [15]),
    .B(_1425_),
    .Y(_1461_)
);

OAI21X1 _2206_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [16]),
    .Y(_1460_)
);

AOI21X1 _2207_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1458_),
    .B(_1459_),
    .C(rst_bF$buf7),
    .Y(_790_)
);

NAND2X1 _2208_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [16]),
    .B(_1425_),
    .Y(_1459_)
);

OAI21X1 _2209_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [17]),
    .Y(_1458_)
);

AOI21X1 _2210_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1456_),
    .B(_1457_),
    .C(rst_bF$buf6),
    .Y(_789_)
);

NAND2X1 _2211_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [17]),
    .B(_1425_),
    .Y(_1457_)
);

OAI21X1 _2212_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [18]),
    .Y(_1456_)
);

AOI21X1 _2213_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1454_),
    .B(_1455_),
    .C(rst_bF$buf5),
    .Y(_788_)
);

NAND2X1 _2214_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [18]),
    .B(_1425_),
    .Y(_1455_)
);

OAI21X1 _2215_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [19]),
    .Y(_1454_)
);

AND2X2 _2216_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1453_),
    .B(_1310_),
    .Y(_787_)
);

OAI21X1 _2217_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1414_),
    .B(_1450_),
    .C(_1452_),
    .Y(_1453_)
);

OAI21X1 _2218_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1451_),
    .B(_1450_),
    .C(mem_ibus_ack_bF$buf4),
    .Y(_1452_)
);

INVX1 _2219_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1379_),
    .Y(_1451_)
);

NAND3X1 _2220_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1441_),
    .B(_1444_),
    .C(_1378_),
    .Y(_1450_)
);

AOI21X1 _2221_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1448_),
    .B(_1449_),
    .C(rst_bF$buf4),
    .Y(_786_)
);

NAND2X1 _2222_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [19]),
    .B(_1425_),
    .Y(_1449_)
);

OAI21X1 _2223_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [20]),
    .Y(_1448_)
);

AOI21X1 _2224_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1446_),
    .B(_1447_),
    .C(rst_bF$buf3),
    .Y(_785_)
);

NAND2X1 _2225_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [20]),
    .B(_1425_),
    .Y(_1447_)
);

OAI21X1 _2226_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [21]),
    .Y(_1446_)
);

AOI21X1 _2227_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1443_),
    .B(_1445_),
    .C(rst_bF$buf2),
    .Y(_784_)
);

OR2X2 _2228_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1377_),
    .B(_1444_),
    .Y(_1445_)
);

NAND2X1 _2229_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_810_),
    .B(_1297__bF$buf4),
    .Y(_1444_)
);

OAI21X1 _2230_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1442_),
    .B(_1385_),
    .C(mem_dbus_ack_bF$buf6),
    .Y(_1443_)
);

OAI21X1 _2231_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_810_),
    .B(_1414_),
    .C(_1441_),
    .Y(_1442_)
);

NAND2X1 _2232_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_1296_),
    .Y(_1441_)
);

AOI21X1 _2233_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1439_),
    .B(_1440_),
    .C(rst_bF$buf1),
    .Y(_783_)
);

NAND2X1 _2234_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [21]),
    .B(_1425_),
    .Y(_1440_)
);

OAI21X1 _2235_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [22]),
    .Y(_1439_)
);

AOI21X1 _2236_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1437_),
    .B(_1438_),
    .C(rst_bF$buf0),
    .Y(_782_)
);

NAND2X1 _2237_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [22]),
    .B(_1425_),
    .Y(_1438_)
);

OAI21X1 _2238_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [23]),
    .Y(_1437_)
);

AND2X2 _2239_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1436_),
    .B(_1310_),
    .Y(_781_)
);

OAI21X1 _2240_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1414_),
    .B(_1435_),
    .C(_1381_),
    .Y(_1436_)
);

NAND2X1 _2241_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1312_),
    .B(_1378_),
    .Y(_1435_)
);

AOI21X1 _2242_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1433_),
    .B(_1434_),
    .C(rst_bF$buf10),
    .Y(_780_)
);

NAND2X1 _2243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [23]),
    .B(_1425_),
    .Y(_1434_)
);

OAI21X1 _2244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [24]),
    .Y(_1433_)
);

AOI21X1 _2245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1406_),
    .B(_1408_),
    .C(_1432_),
    .Y(_779_)
);

OAI21X1 _2246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1309_),
    .B(_1431_),
    .C(_1310_),
    .Y(_1432_)
);

NAND2X1 _2247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .B(_1307_),
    .Y(_1431_)
);

AOI21X1 _2248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1429_),
    .B(_1430_),
    .C(rst_bF$buf9),
    .Y(_778_)
);

NAND2X1 _2249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [30]),
    .B(_1425_),
    .Y(_1430_)
);

OAI21X1 _2250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [31]),
    .Y(_1429_)
);

AOI21X1 _2251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1427_),
    .B(_1428_),
    .C(rst_bF$buf8),
    .Y(_777_)
);

NAND2X1 _2252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [24]),
    .B(_1425_),
    .Y(_1428_)
);

OAI21X1 _2253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [25]),
    .Y(_1427_)
);

AOI21X1 _2254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1424_),
    .B(_1426_),
    .C(rst_bF$buf7),
    .Y(_776_)
);

NAND2X1 _2255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [25]),
    .B(_1425_),
    .Y(_1426_)
);

NOR2X1 _2256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1414_),
    .B(_1302_),
    .Y(_1425_)
);

OAI21X1 _2257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [26]),
    .Y(_1424_)
);

AOI21X1 _2258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1086_),
    .B(_1297__bF$buf3),
    .C(_1423_),
    .Y(_775_)
);

OAI21X1 _2259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_1315__bF$buf3),
    .C(_1310_),
    .Y(_1423_)
);

AND2X2 _2260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1422_),
    .B(_1310_),
    .Y(_774_)
);

OAI21X1 _2261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1421_),
    .B(_1418_),
    .C(_1419_),
    .Y(_1422_)
);

NAND3X1 _2262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.o_ibus_cyc ),
    .B(_1420_),
    .C(_1310_),
    .Y(_1421_)
);

INVX1 _2263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.o_dbus_cyc ),
    .Y(_1420_)
);

OAI21X1 _2264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1406_),
    .B(_1408_),
    .C(\u_mem_serial.active_ibus_bF$buf6 ),
    .Y(_1419_)
);

INVX1 _2265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1410_),
    .Y(_1418_)
);

AOI21X1 _2266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf2),
    .B(\u_mem_serial.bit_count_0_bF$buf3 ),
    .C(_1417_),
    .Y(_773_)
);

OAI21X1 _2267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(_1297__bF$buf2),
    .C(_1310_),
    .Y(_1417_)
);

AOI21X1 _2268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_808_),
    .B(_1297__bF$buf1),
    .C(_1416_),
    .Y(_772_)
);

OAI21X1 _2269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_1315__bF$buf1),
    .C(_1310_),
    .Y(_1416_)
);

AOI21X1 _2270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf1),
    .B(_800_),
    .C(_1415_),
    .Y(_771_)
);

OAI21X1 _2271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_1414_),
    .C(_1310_),
    .Y(_1415_)
);

INVX2 _2272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297__bF$buf0),
    .Y(_1414_)
);

NOR2X1 _2273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf6),
    .B(_1413_),
    .Y(_770_)
);

AOI22X1 _2274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_853_),
    .B(_1297__bF$buf4),
    .C(_1316__bF$buf0),
    .D(\u_mem_serial.bit_count [3]),
    .Y(_1413_)
);

NOR2X1 _2275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf5),
    .B(_1412_),
    .Y(_769_)
);

AOI22X1 _2276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1007_),
    .B(_1297__bF$buf3),
    .C(_1316__bF$buf4),
    .D(\u_mem_serial.bit_count [4]),
    .Y(_1412_)
);

AOI21X1 _2277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1411_),
    .B(_1409_),
    .C(rst_bF$buf4),
    .Y(_768_)
);

NAND3X1 _2278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.o_dbus_cyc ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .C(_1410_),
    .Y(_1411_)
);

NOR2X1 _2279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1406_),
    .B(_1408_),
    .Y(_1410_)
);

OAI21X1 _2280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1406_),
    .B(_1408_),
    .C(\u_mem_serial.active_we ),
    .Y(_1409_)
);

NAND2X1 _2281_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1307_),
    .B(_1407_),
    .Y(_1408_)
);

NOR2X1 _2282_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1311_),
    .B(_1309_),
    .Y(_1407_)
);

INVX1 _2283_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .Y(_1406_)
);

AOI21X1 _2284_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1405_),
    .B(_1404_),
    .C(rst_bF$buf3),
    .Y(_767_)
);

NAND2X1 _2285_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297__bF$buf2),
    .B(_1046_),
    .Y(_1405_)
);

OAI21X1 _2286_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1314_),
    .B(_1313_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_1404_)
);

AOI21X1 _2287_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1400_),
    .B(_1403_),
    .C(rst_bF$buf2),
    .Y(_766_)
);

NAND3X1 _2288_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf0),
    .B(_1402_),
    .C(_1303__bF$buf3),
    .Y(_1403_)
);

INVX1 _2289_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1401_),
    .Y(_1402_)
);

NAND2X1 _2290_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [26]),
    .B(_1297__bF$buf1),
    .Y(_1401_)
);

OAI21X1 _2291_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [27]),
    .Y(_1400_)
);

AOI21X1 _2292_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1396_),
    .B(_1399_),
    .C(rst_bF$buf1),
    .Y(_765_)
);

NAND3X1 _2293_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf3),
    .B(_1398_),
    .C(_1303__bF$buf2),
    .Y(_1399_)
);

INVX1 _2294_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1397_),
    .Y(_1398_)
);

NAND2X1 _2295_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [27]),
    .B(_1297__bF$buf0),
    .Y(_1397_)
);

OAI21X1 _2296_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [28]),
    .Y(_1396_)
);

AOI21X1 _2297_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1392_),
    .B(_1395_),
    .C(rst_bF$buf0),
    .Y(_764_)
);

NAND3X1 _2298_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf2),
    .B(_1394_),
    .C(_1303__bF$buf1),
    .Y(_1395_)
);

INVX1 _2299_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1393_),
    .Y(_1394_)
);

NAND2X1 _2300_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [28]),
    .B(_1297__bF$buf4),
    .Y(_1393_)
);

OAI21X1 _2301_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [29]),
    .Y(_1392_)
);

AOI21X1 _2302_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1388_),
    .B(_1391_),
    .C(rst_bF$buf10),
    .Y(_763_)
);

NAND3X1 _2303_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf1),
    .B(_1390_),
    .C(_1303__bF$buf0),
    .Y(_1391_)
);

INVX1 _2304_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1389_),
    .Y(_1390_)
);

NAND2X1 _2305_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [29]),
    .B(_1297__bF$buf3),
    .Y(_1389_)
);

OAI21X1 _2306_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [30]),
    .Y(_1388_)
);

AND2X2 _2307_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1387_),
    .B(_1310_),
    .Y(_762_)
);

OAI21X1 _2308_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_1384_),
    .C(_1386_),
    .Y(_1387_)
);

INVX1 _2309_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1385_),
    .Y(_1386_)
);

AOI21X1 _2310_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1378_),
    .B(_1383_),
    .C(_1296_),
    .Y(_1385_)
);

NAND2X1 _2311_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1383_),
    .B(_1378_),
    .Y(_1384_)
);

NOR2X1 _2312_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1313_),
    .B(_1382_),
    .Y(_1383_)
);

OAI21X1 _2313_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .B(_1306_),
    .C(_1381_),
    .Y(_1382_)
);

INVX1 _2314_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1380_),
    .Y(_1381_)
);

NOR2X1 _2315_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1296_),
    .B(_1379_),
    .Y(_1380_)
);

OAI21X1 _2316_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_1308_),
    .C(\u_mem_serial.state [1]),
    .Y(_1379_)
);

NAND2X1 _2317_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297__bF$buf2),
    .B(_1377_),
    .Y(_1378_)
);

NAND3X1 _2318_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1083_),
    .B(\u_mem_serial.bit_count_0_bF$buf1 ),
    .C(_1299_),
    .Y(_1377_)
);

AOI21X1 _2319_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1373_),
    .B(_1376_),
    .C(rst_bF$buf9),
    .Y(_761_)
);

NAND3X1 _2320_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf0),
    .B(_1375_),
    .C(_1303__bF$buf3),
    .Y(_1376_)
);

INVX1 _2321_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1374_),
    .Y(_1375_)
);

NAND2X1 _2322_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_mem_miso),
    .B(_1297__bF$buf1),
    .Y(_1374_)
);

OAI21X1 _2323_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [0]),
    .Y(_1373_)
);

AOI21X1 _2324_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1369_),
    .B(_1372_),
    .C(rst_bF$buf8),
    .Y(_760_)
);

NAND3X1 _2325_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf3),
    .B(_1371_),
    .C(_1303__bF$buf2),
    .Y(_1372_)
);

INVX1 _2326_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1370_),
    .Y(_1371_)
);

NAND2X1 _2327_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [0]),
    .B(_1297__bF$buf0),
    .Y(_1370_)
);

OAI21X1 _2328_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [1]),
    .Y(_1369_)
);

AOI21X1 _2329_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1365_),
    .B(_1368_),
    .C(rst_bF$buf7),
    .Y(_759_)
);

NAND3X1 _2330_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf2),
    .B(_1367_),
    .C(_1303__bF$buf1),
    .Y(_1368_)
);

INVX1 _2331_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1366_),
    .Y(_1367_)
);

NAND2X1 _2332_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [1]),
    .B(_1297__bF$buf4),
    .Y(_1366_)
);

OAI21X1 _2333_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [2]),
    .Y(_1365_)
);

AOI21X1 _2334_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1361_),
    .B(_1364_),
    .C(rst_bF$buf6),
    .Y(_758_)
);

NAND3X1 _2335_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf1),
    .B(_1363_),
    .C(_1303__bF$buf0),
    .Y(_1364_)
);

INVX1 _2336_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1362_),
    .Y(_1363_)
);

NAND2X1 _2337_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [2]),
    .B(_1297__bF$buf3),
    .Y(_1362_)
);

OAI21X1 _2338_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [3]),
    .Y(_1361_)
);

AOI21X1 _2339_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1357_),
    .B(_1360_),
    .C(rst_bF$buf5),
    .Y(_757_)
);

NAND3X1 _2340_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf0),
    .B(_1359_),
    .C(_1303__bF$buf3),
    .Y(_1360_)
);

INVX1 _2341_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1358_),
    .Y(_1359_)
);

NAND2X1 _2342_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [3]),
    .B(_1297__bF$buf2),
    .Y(_1358_)
);

OAI21X1 _2343_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [4]),
    .Y(_1357_)
);

AOI21X1 _2344_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1353_),
    .B(_1356_),
    .C(rst_bF$buf4),
    .Y(_756_)
);

NAND3X1 _2345_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf3),
    .B(_1355_),
    .C(_1303__bF$buf2),
    .Y(_1356_)
);

INVX1 _2346_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1354_),
    .Y(_1355_)
);

NAND2X1 _2347_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [4]),
    .B(_1297__bF$buf1),
    .Y(_1354_)
);

OAI21X1 _2348_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [5]),
    .Y(_1353_)
);

AOI21X1 _2349_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1349_),
    .B(_1352_),
    .C(rst_bF$buf3),
    .Y(_755_)
);

NAND3X1 _2350_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf2),
    .B(_1351_),
    .C(_1303__bF$buf1),
    .Y(_1352_)
);

INVX1 _2351_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1350_),
    .Y(_1351_)
);

NAND2X1 _2352_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [5]),
    .B(_1297__bF$buf0),
    .Y(_1350_)
);

OAI21X1 _2353_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [6]),
    .Y(_1349_)
);

AOI21X1 _2354_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1345_),
    .B(_1348_),
    .C(rst_bF$buf2),
    .Y(_754_)
);

NAND3X1 _2355_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf1),
    .B(_1347_),
    .C(_1303__bF$buf0),
    .Y(_1348_)
);

INVX1 _2356_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1346_),
    .Y(_1347_)
);

NAND2X1 _2357_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [6]),
    .B(_1297__bF$buf4),
    .Y(_1346_)
);

OAI21X1 _2358_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [7]),
    .Y(_1345_)
);

AOI21X1 _2359_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1341_),
    .B(_1344_),
    .C(rst_bF$buf1),
    .Y(_753_)
);

NAND3X1 _2360_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf0),
    .B(_1343_),
    .C(_1303__bF$buf3),
    .Y(_1344_)
);

INVX1 _2361_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1342_),
    .Y(_1343_)
);

NAND2X1 _2362_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [7]),
    .B(_1297__bF$buf3),
    .Y(_1342_)
);

OAI21X1 _2363_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [8]),
    .Y(_1341_)
);

AOI21X1 _2364_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1337_),
    .B(_1340_),
    .C(rst_bF$buf0),
    .Y(_752_)
);

NAND3X1 _2365_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf3),
    .B(_1339_),
    .C(_1303__bF$buf2),
    .Y(_1340_)
);

INVX1 _2366_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1338_),
    .Y(_1339_)
);

NAND2X1 _2367_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [8]),
    .B(_1297__bF$buf2),
    .Y(_1338_)
);

OAI21X1 _2368_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [9]),
    .Y(_1337_)
);

AOI21X1 _2369_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1333_),
    .B(_1336_),
    .C(rst_bF$buf10),
    .Y(_751_)
);

NAND3X1 _2370_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf2),
    .B(_1335_),
    .C(_1303__bF$buf1),
    .Y(_1336_)
);

INVX1 _2371_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1334_),
    .Y(_1335_)
);

NAND2X1 _2372_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [9]),
    .B(_1297__bF$buf1),
    .Y(_1334_)
);

OAI21X1 _2373_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [10]),
    .Y(_1333_)
);

AOI21X1 _2374_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1329_),
    .B(_1332_),
    .C(rst_bF$buf9),
    .Y(_750_)
);

NAND3X1 _2375_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf1),
    .B(_1331_),
    .C(_1303__bF$buf0),
    .Y(_1332_)
);

INVX1 _2376_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1330_),
    .Y(_1331_)
);

NAND2X1 _2377_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [10]),
    .B(_1297__bF$buf0),
    .Y(_1330_)
);

OAI21X1 _2378_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [11]),
    .Y(_1329_)
);

AOI21X1 _2379_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1325_),
    .B(_1328_),
    .C(rst_bF$buf8),
    .Y(_749_)
);

NAND3X1 _2380_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf0),
    .B(_1327_),
    .C(_1303__bF$buf3),
    .Y(_1328_)
);

INVX1 _2381_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1326_),
    .Y(_1327_)
);

NAND2X1 _2382_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [11]),
    .B(_1297__bF$buf4),
    .Y(_1326_)
);

OAI21X1 _2383_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [12]),
    .Y(_1325_)
);

AOI21X1 _2384_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1321_),
    .B(_1324_),
    .C(rst_bF$buf7),
    .Y(_748_)
);

NAND3X1 _2385_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf3),
    .B(_1323_),
    .C(_1303__bF$buf2),
    .Y(_1324_)
);

INVX1 _2386_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1322_),
    .Y(_1323_)
);

NAND2X1 _2387_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [12]),
    .B(_1297__bF$buf3),
    .Y(_1322_)
);

OAI21X1 _2388_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [13]),
    .Y(_1321_)
);

AOI21X1 _2389_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1317_),
    .B(_1320_),
    .C(rst_bF$buf6),
    .Y(_747_)
);

NAND3X1 _2390_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf2),
    .B(_1319_),
    .C(_1303__bF$buf1),
    .Y(_1320_)
);

INVX1 _2391_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1318_),
    .Y(_1319_)
);

NAND2X1 _2392_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [13]),
    .B(_1297__bF$buf2),
    .Y(_1318_)
);

OAI21X1 _2393_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [14]),
    .Y(_1317_)
);

INVX8 _2394_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1315__bF$buf1),
    .Y(_1316_)
);

NOR2X1 _2395_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1314_),
    .B(_1313_),
    .Y(_1315_)
);

OAI21X1 _2396_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.req_pending ),
    .B(\u_mem_serial.state [0]),
    .C(_1305_),
    .Y(_1314_)
);

INVX1 _2397_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1312_),
    .Y(_1313_)
);

OAI21X1 _2398_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1311_),
    .B(_1309_),
    .C(_1307_),
    .Y(_1312_)
);

OAI21X1 _2399_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.o_dbus_cyc ),
    .B(\u_cpu.o_ibus_cyc ),
    .C(_1310_),
    .Y(_1311_)
);

INVX2 _2400_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf5),
    .Y(_1310_)
);

OR2X2 _2401_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1308_),
    .B(\u_mem_serial.clk_sys_prev ),
    .Y(_1309_)
);

INVX1 _2402_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_bF$buf45),
    .Y(_1308_)
);

INVX1 _2403_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1306_),
    .Y(_1307_)
);

NAND2X1 _2404_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1305_),
    .B(_1296_),
    .Y(_1306_)
);

INVX1 _2405_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .Y(_1305_)
);

INVX8 _2406_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1303__bF$buf0),
    .Y(_1304_)
);

NAND2X1 _2407_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1297__bF$buf1),
    .B(_1302_),
    .Y(_1303_)
);

OAI21X1 _2408_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1044_),
    .B(_1298_),
    .C(_1301_),
    .Y(_1302_)
);

NOR2X1 _2409_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1300_),
    .B(_1299_),
    .Y(_1301_)
);

NAND2X1 _2410_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1083_),
    .B(_1079_),
    .Y(_1300_)
);

AND2X2 _2411_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1298_),
    .B(_1044_),
    .Y(_1299_)
);

NOR2X1 _2412_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [4]),
    .B(_852_),
    .Y(_1298_)
);

NOR2X1 _2413_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [1]),
    .B(_1296_),
    .Y(_1297_)
);

INVX1 _2414_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.state [0]),
    .Y(_1296_)
);

NOR2X1 _2415_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast_bF$buf3),
    .B(_794_),
    .Y(_2157_)
);

AOI21X1 _2416_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1087_),
    .B(_1295_),
    .C(_794_),
    .Y(_2156_)
);

OR2X2 _2417_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1294_),
    .B(_1046_),
    .Y(_1295_)
);

NAND3X1 _2418_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1089_),
    .B(_1090_),
    .C(_1293_),
    .Y(_1294_)
);

NOR2X1 _2419_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1292_),
    .B(_1007_),
    .Y(_1293_)
);

AOI21X1 _2420_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1093_),
    .B(_1096_),
    .C(_1097_),
    .Y(_1292_)
);

NAND2X1 _2421_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .B(_966_),
    .Y(_1097_)
);

AOI22X1 _2422_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1094_),
    .B(_795_),
    .C(_1048_),
    .D(_1095_),
    .Y(_1096_)
);

INVX1 _2423_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.mem_if.o_wb_sel [2]),
    .Y(_1095_)
);

INVX1 _2424_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.mem_if.o_wb_sel [3]),
    .Y(_1094_)
);

AOI22X1 _2425_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_840_),
    .B(_1092_),
    .C(_1091_),
    .D(_845_),
    .Y(_1093_)
);

INVX1 _2426_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.mem_if.o_wb_sel [0]),
    .Y(_1092_)
);

INVX1 _2427_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.mem_if.o_wb_sel [1]),
    .Y(_1091_)
);

NOR2X1 _2428_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1083_),
    .B(_853_),
    .Y(_1090_)
);

NAND2X1 _2429_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_1088_),
    .Y(_1089_)
);

AOI22X1 _2430_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_840_),
    .B(\u_mem_serial.active_ibus_bF$buf5 ),
    .C(\u_mem_serial.active_we ),
    .D(_845_),
    .Y(_1088_)
);

NAND2X1 _2431_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1086_),
    .B(_1082_),
    .Y(_1087_)
);

NAND2X1 _2432_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1084_),
    .B(_1085_),
    .Y(_1086_)
);

OR2X2 _2433_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1045_),
    .B(_1083_),
    .Y(_1085_)
);

NAND2X1 _2434_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1083_),
    .B(_1045_),
    .Y(_1084_)
);

INVX1 _2435_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [6]),
    .Y(_1083_)
);

OAI21X1 _2436_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1047_),
    .B(_978_),
    .C(_1081_),
    .Y(_1082_)
);

NAND3X1 _2437_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1080_),
    .B(_1063_),
    .C(_1078_),
    .Y(_1081_)
);

NOR2X1 _2438_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1079_),
    .B(_1046_),
    .Y(_1080_)
);

INVX1 _2439_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_we ),
    .Y(_1079_)
);

OAI21X1 _2440_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1070_),
    .B(_1077_),
    .C(_834_),
    .Y(_1078_)
);

AOI21X1 _2441_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1073_),
    .B(_1076_),
    .C(_803_),
    .Y(_1077_)
);

NAND3X1 _2442_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_1075_),
    .C(_1074_),
    .Y(_1076_)
);

AOI22X1 _2443_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_795_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [12]),
    .Y(_1075_)
);

AOI22X1 _2444_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(\u_cpu.bufreg2.dlo [14]),
    .D(_1048_),
    .Y(_1074_)
);

NAND3X1 _2445_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_966_),
    .B(_1071_),
    .C(_1072_),
    .Y(_1073_)
);

AOI22X1 _2446_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_840_),
    .B(\u_cpu.bufreg2.dlo [8]),
    .C(\u_cpu.bufreg2.dlo [9]),
    .D(_845_),
    .Y(_1072_)
);

AOI22X1 _2447_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_795_),
    .C(_1048_),
    .D(\u_cpu.bufreg2.dlo [10]),
    .Y(_1071_)
);

AOI21X1 _2448_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1066_),
    .B(_1069_),
    .C(_853_),
    .Y(_1070_)
);

NAND3X1 _2449_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_1068_),
    .C(_1067_),
    .Y(_1069_)
);

AOI22X1 _2450_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_795_),
    .C(_845_),
    .D(\u_cpu.bufreg2.dlo [5]),
    .Y(_1068_)
);

AOI22X1 _2451_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_840_),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(\u_cpu.bufreg2.dlo [6]),
    .D(_1048_),
    .Y(_1067_)
);

NAND3X1 _2452_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_966_),
    .B(_1064_),
    .C(_1065_),
    .Y(_1066_)
);

AOI22X1 _2453_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(\u_cpu.bufreg2.dlo [2]),
    .D(_1048_),
    .Y(_1065_)
);

AOI22X1 _2454_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_795_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [0]),
    .Y(_1064_)
);

OAI21X1 _2455_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1055_),
    .B(_1062_),
    .C(_1007_),
    .Y(_1063_)
);

AOI21X1 _2456_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1058_),
    .B(_1061_),
    .C(_803_),
    .Y(_1062_)
);

NAND3X1 _2457_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_1059_),
    .C(_1060_),
    .Y(_1061_)
);

AOI22X1 _2458_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dhi [5]),
    .C(\u_cpu.bufreg2.dhi [6]),
    .D(_1048_),
    .Y(_1060_)
);

AOI22X1 _2459_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_795_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dhi [4]),
    .Y(_1059_)
);

NAND3X1 _2460_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_966_),
    .B(_1056_),
    .C(_1057_),
    .Y(_1058_)
);

AOI22X1 _2461_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_840_),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .C(\u_cpu.bufreg.i_shamt [2]),
    .D(_1048_),
    .Y(_1057_)
);

AOI22X1 _2462_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_795_),
    .C(_845_),
    .D(\u_cpu.bufreg.i_shamt [1]),
    .Y(_1056_)
);

AOI21X1 _2463_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1051_),
    .B(_1054_),
    .C(_853_),
    .Y(_1055_)
);

NAND3X1 _2464_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_1052_),
    .C(_1053_),
    .Y(_1054_)
);

AOI22X1 _2465_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(\u_cpu.bufreg2.dlo [22]),
    .D(_1048_),
    .Y(_1053_)
);

AOI22X1 _2466_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_795_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [20]),
    .Y(_1052_)
);

NAND3X1 _2467_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_966_),
    .B(_1050_),
    .C(_1049_),
    .Y(_1051_)
);

AOI22X1 _2468_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_795_),
    .C(_845_),
    .D(\u_cpu.bufreg2.dlo [17]),
    .Y(_1050_)
);

AOI22X1 _2469_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_840_),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(\u_cpu.bufreg2.dlo [18]),
    .D(_1048_),
    .Y(_1049_)
);

NOR2X1 _2470_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_798_),
    .B(_799_),
    .Y(_1048_)
);

OAI21X1 _2471_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1006_),
    .B(_1042_),
    .C(_1046_),
    .Y(_1047_)
);

NAND2X1 _2472_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1043_),
    .B(_1045_),
    .Y(_1046_)
);

NAND3X1 _2473_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_830_),
    .B(_1044_),
    .C(_832_),
    .Y(_1045_)
);

INVX1 _2474_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [5]),
    .Y(_1044_)
);

OAI21X1 _2475_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [4]),
    .B(_797_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_1043_)
);

OAI21X1 _2476_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1022_),
    .B(_1041_),
    .C(_1007_),
    .Y(_1042_)
);

OAI21X1 _2477_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1031_),
    .B(_1040_),
    .C(_803_),
    .Y(_1041_)
);

NAND3X1 _2478_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_1035_),
    .C(_1039_),
    .Y(_1040_)
);

NAND2X1 _2479_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1038_),
    .B(_840_),
    .Y(_1039_)
);

OAI21X1 _2480_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(_1036_),
    .C(_1037_),
    .Y(_1038_)
);

NAND2X1 _2481_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1037_)
);

INVX1 _2482_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_1036_)
);

NAND2X1 _2483_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1034_),
    .B(_845_),
    .Y(_1035_)
);

OAI21X1 _2484_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(_1032_),
    .C(_1033_),
    .Y(_1034_)
);

NAND2X1 _2485_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1033_)
);

INVX1 _2486_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [21]),
    .Y(_1032_)
);

AOI21X1 _2487_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1026_),
    .B(_1030_),
    .C(_808_),
    .Y(_1031_)
);

NAND3X1 _2488_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_798_),
    .B(_1027_),
    .C(_1029_),
    .Y(_1030_)
);

NAND2X1 _2489_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(_1028_),
    .Y(_1029_)
);

INVX1 _2490_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1028_)
);

OR2X2 _2491_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [23]),
    .Y(_1027_)
);

NAND3X1 _2492_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf0 ),
    .B(_1025_),
    .C(_1024_),
    .Y(_1026_)
);

OR2X2 _2493_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.bufreg.data [22]),
    .Y(_1025_)
);

NAND2X1 _2494_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(_1023_),
    .Y(_1024_)
);

INVX1 _2495_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1023_)
);

AOI21X1 _2496_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_809_),
    .B(_1012_),
    .C(_1021_),
    .Y(_1022_)
);

NAND3X1 _2497_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_966_),
    .B(_1016_),
    .C(_1020_),
    .Y(_1021_)
);

NAND2X1 _2498_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1019_),
    .B(_845_),
    .Y(_1020_)
);

OAI21X1 _2499_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(_1017_),
    .C(_1018_),
    .Y(_1019_)
);

NAND2X1 _2500_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_1018_)
);

INVX1 _2501_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [17]),
    .Y(_1017_)
);

NAND2X1 _2502_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1015_),
    .B(_840_),
    .Y(_1016_)
);

OAI21X1 _2503_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(_1013_),
    .C(_1014_),
    .Y(_1015_)
);

NAND2X1 _2504_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_1014_)
);

INVX1 _2505_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_1013_)
);

OAI22X1 _2506_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1010_),
    .B(_1011_),
    .C(_1008_),
    .D(_1009_),
    .Y(_1012_)
);

OAI21X1 _2507_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .B(_810_),
    .C(_798_),
    .Y(_1011_)
);

NOR2X1 _2508_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [19]),
    .Y(_1010_)
);

OAI21X1 _2509_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.bufreg.data [18]),
    .C(\u_mem_serial.bit_count_0_bF$buf3 ),
    .Y(_1009_)
);

NOR2X1 _2510_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .B(_810_),
    .Y(_1008_)
);

AND2X2 _2511_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_833_),
    .B(_831_),
    .Y(_1007_)
);

AOI22X1 _2512_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_797_),
    .B(_802_),
    .C(_991_),
    .D(_1005_),
    .Y(_1006_)
);

OAI21X1 _2513_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1004_),
    .B(_1001_),
    .C(_966_),
    .Y(_1005_)
);

OAI22X1 _2514_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_806_),
    .B(_1003_),
    .C(_807_),
    .D(_1002_),
    .Y(_1004_)
);

MUX2X1 _2515_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .B(\u_cpu.bufreg.data [24]),
    .S(\u_mem_serial.active_ibus_bF$buf4 ),
    .Y(_1003_)
);

MUX2X1 _2516_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .B(\u_cpu.bufreg.data [25]),
    .S(\u_mem_serial.active_ibus_bF$buf3 ),
    .Y(_1002_)
);

AOI21X1 _2517_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_995_),
    .B(_1000_),
    .C(_808_),
    .Y(_1001_)
);

NAND3X1 _2518_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_798_),
    .B(_996_),
    .C(_999_),
    .Y(_1000_)
);

NAND2X1 _2519_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(_997_),
    .Y(_999_)
);

INVX1 _2520_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_997_)
);

OR2X2 _2521_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(\u_cpu.bufreg.data [27]),
    .Y(_996_)
);

NAND3X1 _2522_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(_994_),
    .C(_993_),
    .Y(_995_)
);

OR2X2 _2523_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(\u_cpu.bufreg.data [26]),
    .Y(_994_)
);

NAND2X1 _2524_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(_992_),
    .Y(_993_)
);

INVX1 _2525_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_992_)
);

OAI21X1 _2526_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_990_),
    .B(_987_),
    .C(_805_),
    .Y(_991_)
);

OAI22X1 _2527_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_806_),
    .B(_989_),
    .C(_807_),
    .D(_988_),
    .Y(_990_)
);

MUX2X1 _2528_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .B(\u_cpu.bufreg.data [28]),
    .S(\u_mem_serial.active_ibus_bF$buf5 ),
    .Y(_989_)
);

MUX2X1 _2529_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .B(\u_cpu.bufreg.data [29]),
    .S(\u_mem_serial.active_ibus_bF$buf4 ),
    .Y(_988_)
);

AOI21X1 _2530_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_982_),
    .B(_986_),
    .C(_808_),
    .Y(_987_)
);

NAND3X1 _2531_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_798_),
    .B(_983_),
    .C(_985_),
    .Y(_986_)
);

NAND2X1 _2532_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(_984_),
    .Y(_985_)
);

INVX1 _2533_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_984_)
);

OR2X2 _2534_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_983_)
);

NAND3X1 _2535_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf1 ),
    .B(_981_),
    .C(_980_),
    .Y(_982_)
);

OR2X2 _2536_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(\u_cpu.bufreg.data [30]),
    .Y(_981_)
);

NAND2X1 _2537_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(_979_),
    .Y(_980_)
);

INVX1 _2538_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_979_)
);

AOI21X1 _2539_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_803_),
    .B(_829_),
    .C(_977_),
    .Y(_978_)
);

OAI21X1 _2540_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_851_),
    .B(_976_),
    .C(_834_),
    .Y(_977_)
);

OAI21X1 _2541_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_963_),
    .B(_975_),
    .C(_853_),
    .Y(_976_)
);

NAND3X1 _2542_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_966_),
    .B(_970_),
    .C(_974_),
    .Y(_975_)
);

NAND2X1 _2543_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_973_),
    .B(_840_),
    .Y(_974_)
);

OAI21X1 _2544_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(_971_),
    .C(_972_),
    .Y(_973_)
);

NAND2X1 _2545_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_972_)
);

INVX1 _2546_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_971_)
);

NAND2X1 _2547_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_969_),
    .B(_845_),
    .Y(_970_)
);

OAI21X1 _2548_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(_967_),
    .C(_968_),
    .Y(_969_)
);

NAND2X1 _2549_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_968_)
);

INVX1 _2550_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [9]),
    .Y(_967_)
);

NAND2X1 _2551_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_965_),
    .B(_964_),
    .Y(_966_)
);

OAI21X1 _2552_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf0 ),
    .B(\u_mem_serial.bit_count [1]),
    .C(_800_),
    .Y(_965_)
);

NAND3X1 _2553_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_798_),
    .C(_799_),
    .Y(_964_)
);

AOI21X1 _2554_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_857_),
    .B(_962_),
    .C(_808_),
    .Y(_963_)
);

NAND3X1 _2555_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_798_),
    .B(_858_),
    .C(_961_),
    .Y(_962_)
);

NAND2X1 _2556_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(_859_),
    .Y(_961_)
);

INVX1 _2557_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_859_)
);

OR2X2 _2558_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(\u_cpu.bufreg.data [11]),
    .Y(_858_)
);

NAND3X1 _2559_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .B(_856_),
    .C(_855_),
    .Y(_857_)
);

OR2X2 _2560_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(\u_cpu.bufreg.data [10]),
    .Y(_856_)
);

NAND2X1 _2561_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(_854_),
    .Y(_855_)
);

INVX1 _2562_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_854_)
);

OAI21X1 _2563_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(_852_),
    .C(_802_),
    .Y(_853_)
);

NAND2X1 _2564_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_799_),
    .B(_796_),
    .Y(_852_)
);

AOI21X1 _2565_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_809_),
    .B(_839_),
    .C(_850_),
    .Y(_851_)
);

NAND3X1 _2566_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_805_),
    .B(_844_),
    .C(_849_),
    .Y(_850_)
);

NAND2X1 _2567_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_848_),
    .B(_845_),
    .Y(_849_)
);

OAI21X1 _2568_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(_846_),
    .C(_847_),
    .Y(_848_)
);

NAND2X1 _2569_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_847_)
);

INVX1 _2570_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [13]),
    .Y(_846_)
);

NOR2X1 _2571_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf1 ),
    .B(_799_),
    .Y(_845_)
);

NAND2X1 _2572_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_843_),
    .B(_840_),
    .Y(_844_)
);

OAI21X1 _2573_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(_841_),
    .C(_842_),
    .Y(_843_)
);

NAND2X1 _2574_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_842_)
);

INVX1 _2575_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_841_)
);

NOR2X1 _2576_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_798_),
    .Y(_840_)
);

OAI22X1 _2577_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_837_),
    .B(_838_),
    .C(_835_),
    .D(_836_),
    .Y(_839_)
);

OAI21X1 _2578_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_810_),
    .C(_798_),
    .Y(_838_)
);

NOR2X1 _2579_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(\u_cpu.bufreg.data [15]),
    .Y(_837_)
);

OAI21X1 _2580_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(\u_cpu.bufreg.data [14]),
    .C(\u_mem_serial.bit_count_0_bF$buf0 ),
    .Y(_836_)
);

NOR2X1 _2581_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_810_),
    .Y(_835_)
);

NAND2X1 _2582_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_831_),
    .B(_833_),
    .Y(_834_)
);

NAND2X1 _2583_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [4]),
    .B(_832_),
    .Y(_833_)
);

INVX1 _2584_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_797_),
    .Y(_832_)
);

OAI21X1 _2585_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .B(_801_),
    .C(_830_),
    .Y(_831_)
);

INVX1 _2586_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [4]),
    .Y(_830_)
);

MUX2X1 _2587_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_819_),
    .B(_828_),
    .S(_805_),
    .Y(_829_)
);

AOI21X1 _2588_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_809_),
    .B(_824_),
    .C(_827_),
    .Y(_828_)
);

OAI22X1 _2589_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_806_),
    .B(_825_),
    .C(_807_),
    .D(_826_),
    .Y(_827_)
);

MUX2X1 _2590_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .B(gnd),
    .S(\u_mem_serial.active_ibus_bF$buf6 ),
    .Y(_826_)
);

MUX2X1 _2591_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(gnd),
    .S(\u_mem_serial.active_ibus_bF$buf5 ),
    .Y(_825_)
);

OAI22X1 _2592_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_822_),
    .B(_823_),
    .C(_820_),
    .D(_821_),
    .Y(_824_)
);

OAI21X1 _2593_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .B(_810_),
    .C(_798_),
    .Y(_823_)
);

NOR2X1 _2594_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [3]),
    .Y(_822_)
);

OAI21X1 _2595_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.bufreg.data [2]),
    .C(\u_mem_serial.bit_count_0_bF$buf3 ),
    .Y(_821_)
);

NOR2X1 _2596_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .B(_810_),
    .Y(_820_)
);

AOI21X1 _2597_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_809_),
    .B(_815_),
    .C(_818_),
    .Y(_819_)
);

OAI22X1 _2598_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_806_),
    .B(_816_),
    .C(_807_),
    .D(_817_),
    .Y(_818_)
);

MUX2X1 _2599_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(\u_cpu.bufreg.data [5]),
    .S(\u_mem_serial.active_ibus_bF$buf2 ),
    .Y(_817_)
);

MUX2X1 _2600_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(\u_cpu.bufreg.data [4]),
    .S(\u_mem_serial.active_ibus_bF$buf1 ),
    .Y(_816_)
);

OAI22X1 _2601_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_813_),
    .B(_814_),
    .C(_811_),
    .D(_812_),
    .Y(_815_)
);

OAI21X1 _2602_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .B(_810_),
    .C(_798_),
    .Y(_814_)
);

NOR2X1 _2603_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(\u_cpu.bufreg.data [7]),
    .Y(_813_)
);

OAI21X1 _2604_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [6]),
    .C(\u_mem_serial.bit_count_0_bF$buf2 ),
    .Y(_812_)
);

NOR2X1 _2605_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .B(_810_),
    .Y(_811_)
);

INVX2 _2606_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .Y(_810_)
);

INVX1 _2607_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_808_),
    .Y(_809_)
);

NAND2X1 _2608_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_806_),
    .B(_807_),
    .Y(_808_)
);

NAND2X1 _2609_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_798_),
    .Y(_807_)
);

NAND2X1 _2610_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf1 ),
    .B(_799_),
    .Y(_806_)
);

NAND2X1 _2611_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_804_),
    .B(_801_),
    .Y(_805_)
);

OAI21X1 _2612_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf0 ),
    .B(\u_mem_serial.bit_count [1]),
    .C(\u_mem_serial.bit_count [2]),
    .Y(_804_)
);

AND2X2 _2613_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_802_),
    .B(_797_),
    .Y(_803_)
);

NAND2X1 _2614_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [3]),
    .B(_801_),
    .Y(_802_)
);

NAND3X1 _2615_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_798_),
    .B(_799_),
    .C(_800_),
    .Y(_801_)
);

INVX1 _2616_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .Y(_800_)
);

INVX2 _2617_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [1]),
    .Y(_799_)
);

INVX4 _2618_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .Y(_798_)
);

NAND2X1 _2619_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_795_),
    .B(_796_),
    .Y(_797_)
);

NOR2X1 _2620_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count [2]),
    .B(\u_mem_serial.bit_count [3]),
    .Y(_796_)
);

NOR2X1 _2621_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_795_)
);

INVX1 _2622_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2158_),
    .Y(_794_)
);

DFFPOSX1 _2623_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_67_),
    .Q(\u_rf_serial.shift_rx [1])
);

DFFPOSX1 _2624_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_59_),
    .Q(\u_rf_serial.last_req_key [5])
);

DFFPOSX1 _2625_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_72_),
    .Q(\u_rf_serial.tx_state [3])
);

DFFPOSX1 _2626_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_60_),
    .Q(\u_rf_serial.last_req_key [4])
);

DFFPOSX1 _2627_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_68_),
    .Q(_2161_)
);

DFFPOSX1 _2628_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_61_),
    .Q(\u_rf_serial.last_req_key [3])
);

DFFPOSX1 _2629_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_71_),
    .Q(\u_rf_serial.last_req_key [8])
);

DFFPOSX1 _2630_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_62_),
    .Q(\u_rf_serial.req_seen )
);

DFFPOSX1 _2631_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_63_),
    .Q(\u_rf_serial.last_req_key [2])
);

DFFPOSX1 _2632_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_69_),
    .Q(\u_rf_serial.last_req_key [0])
);

DFFPOSX1 _2633_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_53_),
    .Q(\u_rf_serial.tx_state [2])
);

DFFPOSX1 _2634_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_64_),
    .Q(\u_rf_serial.launch_pending )
);

DFFPOSX1 _2635_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_54_),
    .Q(\u_rf_serial.shift_rx [0])
);

DFFPOSX1 _2636_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_65_),
    .Q(\u_rf_serial.last_req_key [10])
);

DFFPOSX1 _2637_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_55_),
    .Q(\u_rf_serial.tx_state [1])
);

DFFPOSX1 _2638_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_52_),
    .Q(\u_rf_serial.tx_state [4])
);

DFFPOSX1 _2639_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_56_),
    .Q(\u_rf_serial.tx_state [0])
);

DFFPOSX1 _2640_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_66_),
    .Q(\u_rf_serial.last_req_key [1])
);

DFFPOSX1 _2641_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_57_),
    .Q(\u_rf_serial.last_req_key [7])
);

DFFPOSX1 _2642_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_70_),
    .Q(\u_rf_serial.last_req_key [9])
);

NOR2X1 _2643_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_109_),
    .B(_208_),
    .Y(_72_)
);

AOI21X1 _2644_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_243_),
    .B(_215__bF$buf3),
    .C(_294_),
    .Y(_71_)
);

OAI21X1 _2645_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_100_),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_294_)
);

AOI21X1 _2646_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_237_),
    .B(_215__bF$buf1),
    .C(_293_),
    .Y(_70_)
);

OAI21X1 _2647_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf4),
    .B(_215__bF$buf0),
    .C(_202_),
    .Y(_293_)
);

AOI21X1 _2648_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_291_),
    .B(_215__bF$buf3),
    .C(_292_),
    .Y(_69_)
);

OAI21X1 _2649_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_197_),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_292_)
);

INVX1 _2650_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [0]),
    .Y(_291_)
);

AOI21X1 _2651_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_215__bF$buf1),
    .B(_290_),
    .C(rst_bF$buf4),
    .Y(_68_)
);

OAI21X1 _2652_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_85_),
    .B(_289_),
    .C(_2161_),
    .Y(_290_)
);

INVX1 _2653_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_210_),
    .Y(_289_)
);

AOI21X1 _2654_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_286_),
    .B(_287_),
    .C(_288_),
    .Y(_67_)
);

OAI21X1 _2655_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rf_miso),
    .B(_287_),
    .C(_202_),
    .Y(_288_)
);

NAND2X1 _2656_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_98_),
    .B(_210_),
    .Y(_287_)
);

INVX1 _2657_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.shift_rx [1]),
    .Y(_286_)
);

AOI21X1 _2658_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_260_),
    .B(_215__bF$buf0),
    .C(_285_),
    .Y(_66_)
);

OAI21X1 _2659_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_167_),
    .B(_215__bF$buf3),
    .C(_202_),
    .Y(_285_)
);

AOI21X1 _2660_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_238_),
    .B(_283_),
    .C(_284_),
    .Y(_65_)
);

OAI21X1 _2661_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [10]),
    .B(_283_),
    .C(_202_),
    .Y(_284_)
);

NOR2X1 _2662_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_206_),
    .B(_205_),
    .Y(_283_)
);

AOI21X1 _2663_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_282_),
    .B(_231_),
    .C(rst_bF$buf3),
    .Y(_64_)
);

OAI21X1 _2664_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_250_),
    .B(_281_),
    .C(_233_),
    .Y(_282_)
);

NAND3X1 _2665_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_280_),
    .B(_275_),
    .C(_266_),
    .Y(_281_)
);

AOI22X1 _2666_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_276_),
    .B(_277_),
    .C(_279_),
    .D(_278_),
    .Y(_280_)
);

NAND2X1 _2667_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_227_),
    .B(_123_),
    .Y(_279_)
);

NAND2X1 _2668_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [2]),
    .B(_229_),
    .Y(_278_)
);

NAND3X1 _2669_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_217_),
    .B(_93_),
    .C(_92_),
    .Y(_277_)
);

NAND2X1 _2670_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [6]),
    .B(_94_),
    .Y(_276_)
);

AOI21X1 _2671_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_273_),
    .B(_274_),
    .C(_272_),
    .Y(_275_)
);

OR2X2 _2672_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_197_),
    .B(\u_rf_serial.last_req_key [0]),
    .Y(_274_)
);

NAND2X1 _2673_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [0]),
    .B(_197_),
    .Y(_273_)
);

NAND2X1 _2674_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_271_),
    .B(_269_),
    .Y(_272_)
);

NAND3X1 _2675_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [7]),
    .B(_270_),
    .C(_103_),
    .Y(_271_)
);

NAND2X1 _2676_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(raddr[7]),
    .Y(_270_)
);

NAND3X1 _2677_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_214_),
    .B(_267_),
    .C(_268_),
    .Y(_269_)
);

NAND2X1 _2678_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf2),
    .B(_102_),
    .Y(_268_)
);

OR2X2 _2679_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf1),
    .B(\u_rf_if.o_waddr [7]),
    .Y(_267_)
);

NOR2X1 _2680_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_257_),
    .B(_265_),
    .Y(_266_)
);

NAND2X1 _2681_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_259_),
    .B(_264_),
    .Y(_265_)
);

NAND3X1 _2682_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_260_),
    .B(_263_),
    .C(_261_),
    .Y(_264_)
);

NAND2X1 _2683_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf0),
    .B(_262_),
    .Y(_263_)
);

INVX1 _2684_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[1]),
    .Y(_262_)
);

NAND2X1 _2685_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_91_),
    .B(_127_),
    .Y(_261_)
);

INVX1 _2686_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [1]),
    .Y(_260_)
);

NAND3X1 _2687_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [1]),
    .B(_164_),
    .C(_258_),
    .Y(_259_)
);

NAND2X1 _2688_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_91_),
    .Y(_258_)
);

NAND2X1 _2689_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_253_),
    .B(_256_),
    .Y(_257_)
);

NAND3X1 _2690_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_219_),
    .B(_110_),
    .C(_255_),
    .Y(_256_)
);

NAND2X1 _2691_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf4),
    .B(_254_),
    .Y(_255_)
);

INVX1 _2692_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[5]),
    .Y(_254_)
);

NAND3X1 _2693_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [5]),
    .B(_252_),
    .C(_251_),
    .Y(_253_)
);

NAND2X1 _2694_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(raddr[5]),
    .Y(_252_)
);

NAND2X1 _2695_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [5]),
    .B(_91_),
    .Y(_251_)
);

NAND3X1 _2696_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_236_),
    .B(_242_),
    .C(_249_),
    .Y(_250_)
);

AOI22X1 _2697_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_246_),
    .B(_245_),
    .C(_247_),
    .D(_248_),
    .Y(_249_)
);

NAND2X1 _2698_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [3]),
    .B(_119_),
    .Y(_248_)
);

OR2X2 _2699_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_119_),
    .B(\u_rf_serial.last_req_key [3]),
    .Y(_247_)
);

NAND2X1 _2700_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [8]),
    .B(_100_),
    .Y(_246_)
);

NAND3X1 _2701_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_243_),
    .B(_244_),
    .C(_99_),
    .Y(_245_)
);

NAND2X1 _2702_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf2),
    .B(raddr[8]),
    .Y(_244_)
);

INVX1 _2703_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [8]),
    .Y(_243_)
);

AOI21X1 _2704_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_237_),
    .B(ren_bF$buf1),
    .C(_241_),
    .Y(_242_)
);

NAND3X1 _2705_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.req_seen ),
    .B(_240_),
    .C(_239_),
    .Y(_241_)
);

AOI22X1 _2706_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_91_),
    .B(\u_rf_serial.last_req_key [9]),
    .C(\u_rf_serial.last_req_key [10]),
    .D(_238_),
    .Y(_240_)
);

OR2X2 _2707_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_238_),
    .B(\u_rf_serial.last_req_key [10]),
    .Y(_239_)
);

INVX1 _2708_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_wen ),
    .Y(_238_)
);

INVX1 _2709_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [9]),
    .Y(_237_)
);

NAND2X1 _2710_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_234_),
    .B(_235_),
    .Y(_236_)
);

OR2X2 _2711_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_114_),
    .B(\u_rf_serial.last_req_key [4]),
    .Y(_235_)
);

NAND2X1 _2712_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [4]),
    .B(_114_),
    .Y(_234_)
);

NOR3X1 _2713_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.launch_pending ),
    .B(_232_),
    .C(_205_),
    .Y(_233_)
);

NOR2X1 _2714_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf0),
    .B(\u_rf_if.o_wen ),
    .Y(_232_)
);

NAND2X1 _2715_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_207_),
    .B(_205_),
    .Y(_231_)
);

AOI21X1 _2716_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_227_),
    .B(_215__bF$buf2),
    .C(_230_),
    .Y(_63_)
);

OAI21X1 _2717_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_229_),
    .B(_215__bF$buf1),
    .C(_202_),
    .Y(_230_)
);

OAI21X1 _2718_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf4),
    .B(_121_),
    .C(_228_),
    .Y(_229_)
);

NAND2X1 _2719_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(raddr[2]),
    .Y(_228_)
);

INVX1 _2720_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [2]),
    .Y(_227_)
);

AOI21X1 _2721_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_215__bF$buf0),
    .B(_226_),
    .C(rst_bF$buf2),
    .Y(_62_)
);

OAI21X1 _2722_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf2),
    .B(\u_rf_if.o_wen ),
    .C(\u_rf_serial.req_seen ),
    .Y(_226_)
);

AOI21X1 _2723_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_224_),
    .B(_215__bF$buf3),
    .C(_225_),
    .Y(_61_)
);

OAI21X1 _2724_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_119_),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_225_)
);

INVX1 _2725_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [3]),
    .Y(_224_)
);

AOI21X1 _2726_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_222_),
    .B(_215__bF$buf1),
    .C(_223_),
    .Y(_60_)
);

OAI21X1 _2727_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_114_),
    .B(_215__bF$buf0),
    .C(_202_),
    .Y(_223_)
);

INVX1 _2728_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [4]),
    .Y(_222_)
);

AOI21X1 _2729_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_219_),
    .B(_215__bF$buf3),
    .C(_221_),
    .Y(_59_)
);

OAI21X1 _2730_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_220_),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_221_)
);

INVX1 _2731_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_111_),
    .Y(_220_)
);

INVX1 _2732_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [5]),
    .Y(_219_)
);

AOI21X1 _2733_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_217_),
    .B(_215__bF$buf1),
    .C(_218_),
    .Y(_58_)
);

OAI21X1 _2734_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_94_),
    .B(_215__bF$buf0),
    .C(_202_),
    .Y(_218_)
);

INVX1 _2735_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [6]),
    .Y(_217_)
);

AOI21X1 _2736_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_214_),
    .B(_215__bF$buf3),
    .C(_216_),
    .Y(_57_)
);

OAI21X1 _2737_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_104_),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_216_)
);

OR2X2 _2738_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_205_),
    .B(_206_),
    .Y(_215_)
);

INVX1 _2739_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.last_req_key [7]),
    .Y(_214_)
);

NOR2X1 _2740_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_208_),
    .Y(_56_)
);

NOR2X1 _2741_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf1),
    .B(_213_),
    .Y(_55_)
);

OAI21X1 _2742_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_78_),
    .B(_98_),
    .C(_205_),
    .Y(_213_)
);

AOI21X1 _2743_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_209_),
    .B(_211_),
    .C(_212_),
    .Y(_54_)
);

OAI21X1 _2744_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rf_miso),
    .B(_211_),
    .C(_202_),
    .Y(_212_)
);

NAND2X1 _2745_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_105_),
    .B(_210_),
    .Y(_211_)
);

NOR2X1 _2746_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [4]),
    .B(_81_),
    .Y(_210_)
);

INVX1 _2747_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.shift_rx [0]),
    .Y(_209_)
);

NOR2X1 _2748_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_90_),
    .B(_208_),
    .Y(_53_)
);

OAI21X1 _2749_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_207_),
    .B(_205_),
    .C(_202_),
    .Y(_208_)
);

INVX1 _2750_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_206_),
    .Y(_207_)
);

OAI21X1 _2751_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf1),
    .B(\u_rf_if.o_wen ),
    .C(\u_rf_serial.launch_pending ),
    .Y(_206_)
);

NAND2X1 _2752_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_203_),
    .B(_204_),
    .Y(_205_)
);

NOR2X1 _2753_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [3]),
    .B(_88_),
    .Y(_204_)
);

INVX1 _2754_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [4]),
    .Y(_203_)
);

INVX2 _2755_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf0),
    .Y(_202_)
);

NOR2X1 _2756_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf10),
    .B(_201_),
    .Y(_52_)
);

OAI21X1 _2757_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_81_),
    .B(_79_),
    .C(\u_rf_serial.tx_state [4]),
    .Y(_201_)
);

NOR2X1 _2758_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_clk_fast_bF$buf6),
    .B(_77_),
    .Y(_2160_)
);

AOI21X1 _2759_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_200_),
    .B(_108_),
    .C(_77_),
    .Y(_2159_)
);

NAND3X1 _2760_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_109_),
    .B(_126_),
    .C(_199_),
    .Y(_200_)
);

NAND3X1 _2761_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_90_),
    .B(_170_),
    .C(_198_),
    .Y(_199_)
);

AOI21X1 _2762_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_98_),
    .B(_197_),
    .C(_194_),
    .Y(_198_)
);

OAI21X1 _2763_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf0),
    .B(_195_),
    .C(_196_),
    .Y(_197_)
);

NAND2X1 _2764_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf4),
    .B(raddr[0]),
    .Y(_196_)
);

INVX1 _2765_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_195_)
);

OAI21X1 _2766_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_192_),
    .B(_85_),
    .C(_193_),
    .Y(_194_)
);

NAND2X1 _2767_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_wdata [1]),
    .B(_105_),
    .Y(_193_)
);

INVX1 _2768_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_wdata [0]),
    .Y(_192_)
);

NAND2X1 _2769_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_78_),
    .B(_167_),
    .Y(_170_)
);

OAI21X1 _2770_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(_127_),
    .C(_164_),
    .Y(_167_)
);

NAND2X1 _2771_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf2),
    .B(raddr[1]),
    .Y(_164_)
);

INVX1 _2772_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .Y(_127_)
);

NAND2X1 _2773_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_97_),
    .B(_125_),
    .Y(_126_)
);

NOR2X1 _2774_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_116_),
    .B(_124_),
    .Y(_125_)
);

OAI21X1 _2775_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_85_),
    .B(_123_),
    .C(_120_),
    .Y(_124_)
);

OAI21X1 _2776_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_91_),
    .B(raddr[2]),
    .C(_122_),
    .Y(_123_)
);

NAND2X1 _2777_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_91_),
    .B(_121_),
    .Y(_122_)
);

INVX1 _2778_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .Y(_121_)
);

NAND2X1 _2779_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_119_),
    .B(_105_),
    .Y(_120_)
);

OAI21X1 _2780_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf1),
    .B(_117_),
    .C(_118_),
    .Y(_119_)
);

NAND2X1 _2781_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf0),
    .B(raddr[3]),
    .Y(_118_)
);

INVX1 _2782_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .Y(_117_)
);

OAI21X1 _2783_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_79_),
    .B(_111_),
    .C(_115_),
    .Y(_116_)
);

NAND2X1 _2784_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_98_),
    .B(_114_),
    .Y(_115_)
);

OAI21X1 _2785_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf4),
    .B(_112_),
    .C(_113_),
    .Y(_114_)
);

NAND2X1 _2786_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf3),
    .B(raddr[4]),
    .Y(_113_)
);

INVX1 _2787_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [4]),
    .Y(_112_)
);

OAI21X1 _2788_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_91_),
    .B(raddr[5]),
    .C(_110_),
    .Y(_111_)
);

OR2X2 _2789_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf2),
    .B(\u_rf_if.o_waddr [5]),
    .Y(_110_)
);

INVX1 _2790_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_83_),
    .Y(_109_)
);

OAI21X1 _2791_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_107_),
    .B(_96_),
    .C(_83_),
    .Y(_108_)
);

AOI21X1 _2792_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_101_),
    .B(_106_),
    .C(_97_),
    .Y(_107_)
);

NAND2X1 _2793_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_105_),
    .B(_104_),
    .Y(_106_)
);

NOR2X1 _2794_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_84_),
    .Y(_105_)
);

OAI21X1 _2795_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_91_),
    .B(_102_),
    .C(_103_),
    .Y(_104_)
);

NAND2X1 _2796_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [7]),
    .B(_91_),
    .Y(_103_)
);

INVX1 _2797_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .Y(_102_)
);

AOI22X1 _2798_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf1),
    .B(_78_),
    .C(_100_),
    .D(_98_),
    .Y(_101_)
);

OAI21X1 _2799_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_91_),
    .B(_73_),
    .C(_99_),
    .Y(_100_)
);

NAND2X1 _2800_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [8]),
    .B(_91_),
    .Y(_99_)
);

AND2X2 _2801_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .Y(_98_)
);

INVX1 _2802_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_90_),
    .Y(_97_)
);

AOI21X1 _2803_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_95_),
    .B(_86_),
    .C(_85_),
    .Y(_96_)
);

NAND2X1 _2804_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_94_),
    .B(_90_),
    .Y(_95_)
);

NAND2X1 _2805_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_93_),
    .B(_92_),
    .Y(_94_)
);

NAND2X1 _2806_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf0),
    .B(raddr[6]),
    .Y(_93_)
);

NAND2X1 _2807_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [6]),
    .B(_91_),
    .Y(_92_)
);

INVX2 _2808_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ren_bF$buf4),
    .Y(_91_)
);

AND2X2 _2809_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_88_),
    .B(_89_),
    .Y(_90_)
);

OAI21X1 _2810_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .C(\u_rf_serial.tx_state [2]),
    .Y(_89_)
);

NAND2X1 _2811_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_87_),
    .B(_78_),
    .Y(_88_)
);

INVX1 _2812_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [2]),
    .Y(_87_)
);

NAND2X1 _2813_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_wen ),
    .B(\u_rf_serial.tx_state [2]),
    .Y(_86_)
);

NAND2X1 _2814_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_84_),
    .Y(_85_)
);

INVX1 _2815_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [1]),
    .Y(_84_)
);

OAI21X1 _2816_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_79_),
    .B(_81_),
    .C(_82_),
    .Y(_83_)
);

OAI21X1 _2817_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [2]),
    .B(_79_),
    .C(\u_rf_serial.tx_state [3]),
    .Y(_82_)
);

INVX1 _2818_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_80_),
    .Y(_81_)
);

NOR2X1 _2819_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [3]),
    .B(\u_rf_serial.tx_state [2]),
    .Y(_80_)
);

INVX1 _2820_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_78_),
    .Y(_79_)
);

NOR2X1 _2821_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .Y(_78_)
);

INVX1 _2822_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2161_),
    .Y(_77_)
);

AND2X2 _2823_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_76_),
    .B(\u_rf_serial.shift_rx [1]),
    .Y(rdata[1])
);

AND2X2 _2824_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_76_),
    .B(\u_rf_serial.shift_rx [0]),
    .Y(rdata[0])
);

NAND3X1 _2825_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_73_),
    .B(_74_),
    .C(_75_),
    .Y(_76_)
);

NOR2X1 _2826_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .B(raddr[6]),
    .Y(_75_)
);

NOR2X1 _2827_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[5]),
    .B(raddr[4]),
    .Y(_74_)
);

INVX1 _2828_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[8]),
    .Y(_73_)
);

DFFPOSX1 _2829_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf44),
    .D(_492_),
    .Q(\u_rf_if.wdata1_phase [0])
);

DFFPOSX1 _2830_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf43),
    .D(_545_),
    .Q(\u_rf_if.read_buf0 [21])
);

DFFPOSX1 _2831_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf42),
    .D(_514_),
    .Q(raddr[5])
);

DFFPOSX1 _2832_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf41),
    .D(_544_),
    .Q(\u_rf_if.read_buf0 [20])
);

DFFPOSX1 _2833_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf40),
    .D(_499_),
    .Q(\u_rf_if.write_wait [2])
);

DFFPOSX1 _2834_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf39),
    .D(_543_),
    .Q(\u_rf_if.read_buf0 [19])
);

DFFPOSX1 _2835_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf38),
    .D(_513_),
    .Q(raddr[4])
);

DFFPOSX1 _2836_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf37),
    .D(_542_),
    .Q(\u_rf_if.read_buf0 [18])
);

DFFPOSX1 _2837_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf36),
    .D(_491_),
    .Q(\u_rf_if.wdata1_r [0])
);

DFFPOSX1 _2838_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf35),
    .D(_605_),
    .Q(\u_rf_if.stream_cnt [1])
);

DFFPOSX1 _2839_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf34),
    .D(_541_),
    .Q(\u_rf_if.read_buf0 [17])
);

DFFPOSX1 _2840_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf33),
    .D(_604_),
    .Q(\u_rf_if.stream_cnt [0])
);

DFFPOSX1 _2841_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf32),
    .D(_512_),
    .Q(raddr[3])
);

DFFPOSX1 _2842_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf31),
    .D(_603_),
    .Q(\u_rf_if.read_buf1 [30])
);

DFFPOSX1 _2843_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf30),
    .D(_540_),
    .Q(\u_rf_if.read_buf0 [16])
);

DFFPOSX1 _2844_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf29),
    .D(_602_),
    .Q(\u_rf_if.read_buf1 [29])
);

DFFPOSX1 _2845_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf28),
    .D(_498_),
    .Q(\u_rf_if.write_wait [1])
);

DFFPOSX1 _2846_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf27),
    .D(_601_),
    .Q(\u_rf_if.read_buf1 [28])
);

DFFPOSX1 _2847_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf26),
    .D(_539_),
    .Q(\u_rf_if.read_buf0 [15])
);

DFFPOSX1 _2848_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf25),
    .D(_600_),
    .Q(\u_rf_if.read_buf1 [27])
);

DFFPOSX1 _2849_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf24),
    .D(_511_),
    .Q(raddr[2])
);

DFFPOSX1 _2850_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf23),
    .D(_599_),
    .Q(\u_rf_if.read_buf1 [26])
);

DFFPOSX1 _2851_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf22),
    .D(_538_),
    .Q(\u_rf_if.read_buf0 [14])
);

DFFPOSX1 _2852_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf21),
    .D(_598_),
    .Q(\u_rf_if.read_buf1 [25])
);

DFFPOSX1 _2853_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf20),
    .D(_490_),
    .Q(\u_rf_if.wdata0_r [0])
);

DFFPOSX1 _2854_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf19),
    .D(_597_),
    .Q(\u_rf_if.read_buf1 [24])
);

DFFPOSX1 _2855_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf18),
    .D(_537_),
    .Q(\u_rf_if.read_buf0 [13])
);

DFFPOSX1 _2856_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf17),
    .D(_596_),
    .Q(\u_rf_if.read_buf1 [23])
);

DFFPOSX1 _2857_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf16),
    .D(_510_),
    .Q(raddr[1])
);

DFFPOSX1 _2858_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf15),
    .D(_595_),
    .Q(\u_rf_if.read_buf1 [22])
);

DFFPOSX1 _2859_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf14),
    .D(_536_),
    .Q(\u_rf_if.rreg0_latched [4])
);

DFFPOSX1 _2860_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf13),
    .D(_594_),
    .Q(\u_rf_if.read_buf1 [21])
);

DFFPOSX1 _2861_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf12),
    .D(_497_),
    .Q(\u_rf_if.write_wait [0])
);

DFFPOSX1 _2862_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf11),
    .D(_593_),
    .Q(\u_rf_if.read_buf1 [20])
);

DFFPOSX1 _2863_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf10),
    .D(_535_),
    .Q(\u_rf_if.read_buf0 [12])
);

DFFPOSX1 _2864_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf9),
    .D(_592_),
    .Q(\u_rf_if.read_buf1 [19])
);

DFFPOSX1 _2865_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf8),
    .D(_509_),
    .Q(raddr[0])
);

DFFPOSX1 _2866_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf7),
    .D(_591_),
    .Q(\u_rf_if.read_buf1 [18])
);

DFFPOSX1 _2867_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf6),
    .D(_534_),
    .Q(\u_rf_if.read_buf0 [11])
);

DFFPOSX1 _2868_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf5),
    .D(_590_),
    .Q(\u_rf_if.read_buf1 [17])
);

DFFPOSX1 _2869_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf4),
    .D(_489_),
    .Q(\u_rf_if.rreg1_latched [3])
);

DFFPOSX1 _2870_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf3),
    .D(_589_),
    .Q(\u_rf_if.read_buf1 [16])
);

DFFPOSX1 _2871_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf2),
    .D(_533_),
    .Q(\u_rf_if.read_buf0 [10])
);

DFFPOSX1 _2872_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf1),
    .D(_588_),
    .Q(\u_rf_if.read_buf1 [15])
);

DFFPOSX1 _2873_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf0),
    .D(_508_),
    .Q(\u_rf_if.issue_chunk [1])
);

DFFPOSX1 _2874_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf45),
    .D(_587_),
    .Q(\u_rf_if.read_buf1 [14])
);

DFFPOSX1 _2875_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf44),
    .D(_532_),
    .Q(\u_rf_if.read_buf0 [9])
);

DFFPOSX1 _2876_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf43),
    .D(_586_),
    .Q(\u_rf_if.read_buf1 [13])
);

DFFPOSX1 _2877_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf42),
    .D(_496_),
    .Q(\u_rf_if.o_waddr [2])
);

DFFPOSX1 _2878_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf41),
    .D(_585_),
    .Q(\u_rf_if.read_buf1 [12])
);

DFFPOSX1 _2879_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf40),
    .D(_531_),
    .Q(raddr[8])
);

DFFPOSX1 _2880_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf39),
    .D(_584_),
    .Q(\u_rf_if.read_buf1 [11])
);

DFFPOSX1 _2881_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf38),
    .D(_507_),
    .Q(\u_rf_if.issue_chunk [0])
);

DFFPOSX1 _2882_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf37),
    .D(_583_),
    .Q(\u_rf_if.read_buf1 [10])
);

DFFPOSX1 _2883_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf36),
    .D(_530_),
    .Q(\u_rf_if.read_buf0 [8])
);

DFFPOSX1 _2884_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf35),
    .D(_582_),
    .Q(\u_rf_if.read_buf1 [9])
);

DFFPOSX1 _2885_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf34),
    .D(_606_),
    .Q(\u_rf_if.stream_cnt [2])
);

DFFPOSX1 _2886_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf33),
    .D(_581_),
    .Q(\u_rf_if.read_buf1 [8])
);

DFFPOSX1 _2887_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf32),
    .D(_529_),
    .Q(\u_rf_if.read_buf0 [7])
);

DFFPOSX1 _2888_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf31),
    .D(_580_),
    .Q(\u_rf_if.read_buf1 [7])
);

DFFPOSX1 _2889_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf30),
    .D(_506_),
    .Q(\u_rf_if.issue_sel )
);

DFFPOSX1 _2890_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf29),
    .D(_579_),
    .Q(\u_rf_if.stream_active )
);

DFFPOSX1 _2891_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf28),
    .D(_578_),
    .Q(\u_rf_if.read_buf1 [6])
);

DFFPOSX1 _2892_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf27),
    .D(_528_),
    .Q(\u_rf_if.read_buf0 [6])
);

DFFPOSX1 _2893_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf26),
    .D(_577_),
    .Q(\u_rf_if.rtrig1 )
);

DFFPOSX1 _2894_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf25),
    .D(_576_),
    .Q(\u_rf_if.wdata0_next [0])
);

DFFPOSX1 _2895_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf24),
    .D(_575_),
    .Q(\u_rf_if.read_buf1 [5])
);

DFFPOSX1 _2896_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf23),
    .D(_495_),
    .Q(\u_rf_if.o_waddr [1])
);

DFFPOSX1 _2897_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf22),
    .D(_574_),
    .Q(\u_rf_if.read_buf1 [4])
);

DFFPOSX1 _2898_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf21),
    .D(_527_),
    .Q(ren)
);

DFFPOSX1 _2899_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf20),
    .D(_573_),
    .Q(\u_rf_if.read_buf1 [3])
);

DFFPOSX1 _2900_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf19),
    .D(_526_),
    .Q(\u_rf_if.issue_idx [5])
);

DFFPOSX1 _2901_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf18),
    .D(_572_),
    .Q(\u_rf_if.read_buf1 [2])
);

DFFPOSX1 _2902_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf17),
    .D(_505_),
    .Q(\u_rf_if.rreg0_latched [3])
);

DFFPOSX1 _2903_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf16),
    .D(_571_),
    .Q(\u_rf_if.read_buf1 [1])
);

DFFPOSX1 _2904_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf15),
    .D(_525_),
    .Q(\u_rf_if.read_buf0 [5])
);

DFFPOSX1 _2905_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf14),
    .D(_570_),
    .Q(\u_rf_if.read_buf1 [0])
);

DFFPOSX1 _2906_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf13),
    .D(_488_),
    .Q(\u_rf_if.rcnt [2])
);

DFFPOSX1 _2907_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf12),
    .D(_569_),
    .Q(\u_rf_if.wdata1_phase [1])
);

DFFPOSX1 _2908_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf11),
    .D(_568_),
    .Q(\u_rf_if.wen0_r )
);

DFFPOSX1 _2909_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf10),
    .D(_524_),
    .Q(\u_rf_if.read_buf0 [4])
);

DFFPOSX1 _2910_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf9),
    .D(_567_),
    .Q(\u_rf_if.wen1_r )
);

DFFPOSX1 _2911_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf8),
    .D(_504_),
    .Q(\u_rf_if.rreg0_latched [2])
);

DFFPOSX1 _2912_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf7),
    .D(_566_),
    .Q(\u_rf_if.o_waddr [3])
);

DFFPOSX1 _2913_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf6),
    .D(_523_),
    .Q(\u_rf_if.read_buf0 [3])
);

DFFPOSX1 _2914_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf5),
    .D(_565_),
    .Q(\u_rf_if.rreg1_latched [2])
);

DFFPOSX1 _2915_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf4),
    .D(_494_),
    .Q(\u_rf_if.rreg1_latched [4])
);

DFFPOSX1 _2916_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf3),
    .D(_564_),
    .Q(\u_rf_if.rreg1_latched [1])
);

DFFPOSX1 _2917_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf2),
    .D(_522_),
    .Q(\u_rf_if.read_buf0 [2])
);

DFFPOSX1 _2918_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf1),
    .D(_563_),
    .Q(\u_rf_if.read_buf0 [30])
);

DFFPOSX1 _2919_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf0),
    .D(_503_),
    .Q(\u_rf_if.rreg0_latched [1])
);

DFFPOSX1 _2920_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf45),
    .D(_562_),
    .Q(\u_rf_if.read_buf0 [29])
);

DFFPOSX1 _2921_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf44),
    .D(_521_),
    .Q(\u_rf_if.read_buf0 [1])
);

DFFPOSX1 _2922_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf43),
    .D(_561_),
    .Q(\u_rf_if.wdata0_next_phase )
);

DFFPOSX1 _2923_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf42),
    .D(_487_),
    .Q(\u_rf_if.rcnt [0])
);

DFFPOSX1 _2924_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf41),
    .D(_560_),
    .Q(\u_rf_if.write_wait [5])
);

DFFPOSX1 _2925_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf40),
    .D(_520_),
    .Q(\u_rf_if.read_buf0 [0])
);

DFFPOSX1 _2926_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf39),
    .D(_559_),
    .Q(\u_rf_if.prefetch_active )
);

DFFPOSX1 _2927_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf38),
    .D(_558_),
    .Q(\u_rf_if.pending_read )
);

DFFPOSX1 _2928_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf37),
    .D(_502_),
    .Q(\u_rf_if.rreg0_latched [0])
);

DFFPOSX1 _2929_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf36),
    .D(_557_),
    .Q(\u_rf_if.rcnt [1])
);

DFFPOSX1 _2930_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf35),
    .D(_556_),
    .Q(\u_rf_if.read_buf0 [28])
);

DFFPOSX1 _2931_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf34),
    .D(_519_),
    .Q(\u_rf_if.rreg1_latched [0])
);

DFFPOSX1 _2932_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf33),
    .D(_555_),
    .Q(\u_rf_if.read_buf0 [27])
);

DFFPOSX1 _2933_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf32),
    .D(_493_),
    .Q(\u_rf_if.o_waddr [0])
);

DFFPOSX1 _2934_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf31),
    .D(_554_),
    .Q(\u_rf_if.ready_pulse )
);

DFFPOSX1 _2935_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf30),
    .D(_553_),
    .Q(\u_rf_if.read_buf0 [31])
);

DFFPOSX1 _2936_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf29),
    .D(_518_),
    .Q(\u_rf_if.issue_chunk [3])
);

DFFPOSX1 _2937_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf28),
    .D(_552_),
    .Q(\u_rf_if.read_buf0 [26])
);

DFFPOSX1 _2938_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf27),
    .D(_501_),
    .Q(\u_rf_if.write_wait [4])
);

DFFPOSX1 _2939_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf26),
    .D(_551_),
    .Q(\u_rf_if.read_buf0 [25])
);

DFFPOSX1 _2940_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf25),
    .D(_517_),
    .Q(\u_rf_if.issue_chunk [2])
);

DFFPOSX1 _2941_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf24),
    .D(_550_),
    .Q(\u_rf_if.read_buf1 [31])
);

DFFPOSX1 _2942_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf23),
    .D(_486_),
    .Q(\u_rf_if.stream_cnt [3])
);

DFFPOSX1 _2943_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf22),
    .D(_549_),
    .Q(\u_rf_if.read_buf0 [24])
);

DFFPOSX1 _2944_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf21),
    .D(_516_),
    .Q(raddr[7])
);

DFFPOSX1 _2945_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf20),
    .D(_548_),
    .Q(\u_rf_if.read_buf0 [23])
);

DFFPOSX1 _2946_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf19),
    .D(_500_),
    .Q(\u_rf_if.write_wait [3])
);

DFFPOSX1 _2947_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf18),
    .D(_547_),
    .Q(\u_rf_if.read_buf0 [22])
);

DFFPOSX1 _2948_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf17),
    .D(_515_),
    .Q(raddr[6])
);

AOI21X1 _2949_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_609_),
    .B(_608_),
    .C(_607_),
    .Y(_486_)
);

OAI21X1 _2950_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1755_),
    .C(_32__bF$buf4),
    .Y(_607_)
);

OAI21X1 _2951_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_426_),
    .B(_39_),
    .C(\u_rf_if.stream_active ),
    .Y(_608_)
);

NAND2X1 _2952_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_42_),
    .Y(_609_)
);

INVX1 _2953_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_610_),
    .Y(_487_)
);

NAND2X1 _2954_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_611_),
    .B(_613_),
    .Y(_610_)
);

INVX1 _2955_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .Y(_611_)
);

AOI21X1 _2956_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .B(_1690_),
    .C(_612_),
    .Y(_488_)
);

OAI21X1 _2957_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .B(_1690_),
    .C(_613_),
    .Y(_612_)
);

NOR2X1 _2958_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_rreq ),
    .B(_1730_),
    .Y(_613_)
);

AOI21X1 _2959_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1604_),
    .B(_1722_),
    .C(_614_),
    .Y(_489_)
);

OAI21X1 _2960_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[3]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_614_)
);

NOR2X1 _2961_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf9),
    .B(_475_),
    .Y(_490_)
);

NOR2X1 _2962_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf8),
    .B(_472_),
    .Y(_491_)
);

AND2X2 _2963_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_32__bF$buf2),
    .B(\u_rf_if.wdata1_phase [1]),
    .Y(_492_)
);

AOI21X1 _2964_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(_1729_),
    .C(_615_),
    .Y(_493_)
);

OAI21X1 _2965_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(_1729_),
    .C(_1731_),
    .Y(_615_)
);

AOI21X1 _2966_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1722_),
    .B(_1636_),
    .C(_616_),
    .Y(_494_)
);

OAI21X1 _2967_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[4]),
    .B(_1722_),
    .C(_32__bF$buf1),
    .Y(_616_)
);

AOI21X1 _2968_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_480_),
    .B(_620_),
    .C(_617_),
    .Y(_495_)
);

OAI21X1 _2969_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_480_),
    .B(_620_),
    .C(_1731_),
    .Y(_617_)
);

AOI21X1 _2970_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(_619_),
    .C(_618_),
    .Y(_496_)
);

OAI21X1 _2971_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(_619_),
    .C(_1731_),
    .Y(_618_)
);

NOR2X1 _2972_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_480_),
    .B(_620_),
    .Y(_619_)
);

NAND2X1 _2973_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(_1729_),
    .Y(_620_)
);

AOI21X1 _2974_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .B(_44_),
    .C(_735_),
    .Y(_497_)
);

NOR2X1 _2975_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_621_),
    .B(_735_),
    .Y(_498_)
);

AOI21X1 _2976_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(_622_),
    .Y(_621_)
);

OAI21X1 _2977_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(_44_),
    .Y(_622_)
);

AOI21X1 _2978_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_44_),
    .B(_623_),
    .C(_735_),
    .Y(_499_)
);

AND2X2 _2979_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1703_),
    .B(_624_),
    .Y(_623_)
);

OAI21X1 _2980_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(\u_rf_if.write_wait [2]),
    .Y(_624_)
);

NOR2X1 _2981_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_625_),
    .B(_735_),
    .Y(_500_)
);

AOI21X1 _2982_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [3]),
    .B(_1703_),
    .C(_734_),
    .Y(_625_)
);

OAI21X1 _2983_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [3]),
    .B(_1703_),
    .C(_44_),
    .Y(_734_)
);

NOR2X1 _2984_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_736_),
    .B(_735_),
    .Y(_501_)
);

OAI21X1 _2985_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreq),
    .B(_1695_),
    .C(_32__bF$buf0),
    .Y(_735_)
);

NOR2X1 _2986_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_737_),
    .B(_1700_),
    .Y(_736_)
);

OAI21X1 _2987_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1706_),
    .B(_1702_),
    .C(_44_),
    .Y(_737_)
);

NOR2X1 _2988_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_739_),
    .B(_738_),
    .Y(_502_)
);

OAI21X1 _2989_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[0]),
    .B(_1722_),
    .C(_32__bF$buf4),
    .Y(_738_)
);

NOR2X1 _2990_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [0]),
    .Y(_739_)
);

NOR2X1 _2991_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_741_),
    .B(_740_),
    .Y(_503_)
);

OAI21X1 _2992_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[1]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_740_)
);

NOR2X1 _2993_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_741_)
);

NOR2X1 _2994_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_743_),
    .B(_742_),
    .Y(_504_)
);

OAI21X1 _2995_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[2]),
    .B(_1722_),
    .C(_32__bF$buf2),
    .Y(_742_)
);

NOR2X1 _2996_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [2]),
    .Y(_743_)
);

NOR2X1 _2997_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_745_),
    .B(_744_),
    .Y(_505_)
);

OAI21X1 _2998_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[3]),
    .B(_1722_),
    .C(_32__bF$buf1),
    .Y(_744_)
);

NOR2X1 _2999_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [3]),
    .Y(_745_)
);

AOI21X1 _3000_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1466_),
    .B(_746_),
    .C(_1692_),
    .Y(_506_)
);

NAND2X1 _3001_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_25_),
    .B(_1697_),
    .Y(_746_)
);

OAI21X1 _3002_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .C(\u_rf_if.issue_sel_bF$buf3 ),
    .Y(_1466_)
);

AOI21X1 _3003_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1468_),
    .B(_1467_),
    .C(_1692_),
    .Y(_507_)
);

NAND2X1 _3004_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .B(_1822_),
    .Y(_1467_)
);

OAI21X1 _3005_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .C(\u_rf_if.issue_chunk [0]),
    .Y(_1468_)
);

AOI21X1 _3006_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1584_),
    .B(_1583_),
    .C(_1692_),
    .Y(_508_)
);

NAND2X1 _3007_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .B(_1817_),
    .Y(_1583_)
);

OAI21X1 _3008_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_1584_)
);

AOI21X1 _3009_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1586_),
    .B(_1696_),
    .C(_1585_),
    .Y(_509_)
);

OAI21X1 _3010_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [0]),
    .B(_1696_),
    .C(_32__bF$buf0),
    .Y(_1585_)
);

INVX1 _3011_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[0]),
    .Y(_1586_)
);

AOI21X1 _3012_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1626_),
    .B(_1587_),
    .C(rst_bF$buf7),
    .Y(_510_)
);

OAI21X1 _3013_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .C(raddr[1]),
    .Y(_1587_)
);

AOI21X1 _3014_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1589_),
    .B(_1696_),
    .C(_1588_),
    .Y(_511_)
);

OAI21X1 _3015_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1696_),
    .C(_32__bF$buf4),
    .Y(_1588_)
);

INVX1 _3016_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[2]),
    .Y(_1589_)
);

AOI21X1 _3017_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1591_),
    .B(_1696_),
    .C(_1590_),
    .Y(_512_)
);

OAI21X1 _3018_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1696_),
    .C(_32__bF$buf3),
    .Y(_1590_)
);

INVX1 _3019_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[3]),
    .Y(_1591_)
);

AOI21X1 _3020_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .B(_1593_),
    .C(_1592_),
    .Y(_513_)
);

OAI21X1 _3021_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[4]),
    .B(_1697_),
    .C(_32__bF$buf2),
    .Y(_1592_)
);

OAI21X1 _3022_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(\u_rf_if.issue_sel_bF$buf2 ),
    .C(_1594_),
    .Y(_1593_)
);

NAND2X1 _3023_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_1610_),
    .Y(_1594_)
);

AOI21X1 _3024_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .B(_1596_),
    .C(_1595_),
    .Y(_514_)
);

OAI21X1 _3025_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[5]),
    .B(_1697_),
    .C(_32__bF$buf1),
    .Y(_1595_)
);

OAI21X1 _3026_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [1]),
    .B(\u_rf_if.issue_sel_bF$buf0 ),
    .C(_1597_),
    .Y(_1596_)
);

NAND2X1 _3027_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(_1719_),
    .Y(_1597_)
);

AOI21X1 _3028_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .B(_1599_),
    .C(_1598_),
    .Y(_515_)
);

OAI21X1 _3029_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[6]),
    .B(_1697_),
    .C(_32__bF$buf0),
    .Y(_1598_)
);

OAI21X1 _3030_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(\u_rf_if.issue_sel_bF$buf2 ),
    .C(_1600_),
    .Y(_1599_)
);

NAND2X1 _3031_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_1721_),
    .Y(_1600_)
);

AOI21X1 _3032_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .B(_1602_),
    .C(_1601_),
    .Y(_516_)
);

OAI21X1 _3033_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[7]),
    .B(_1697_),
    .C(_32__bF$buf4),
    .Y(_1601_)
);

OAI21X1 _3034_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(\u_rf_if.issue_sel_bF$buf0 ),
    .C(_1603_),
    .Y(_1602_)
);

NAND2X1 _3035_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(_1604_),
    .Y(_1603_)
);

INVX1 _3036_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [3]),
    .Y(_1604_)
);

NOR2X1 _3037_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1605_),
    .B(_1692_),
    .Y(_517_)
);

NAND2X1 _3038_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1606_),
    .B(_1624_),
    .Y(_1605_)
);

OAI21X1 _3039_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_14_),
    .B(_1626_),
    .C(_9_),
    .Y(_1606_)
);

NOR2X1 _3040_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1692_),
    .B(_1607_),
    .Y(_518_)
);

OR2X2 _3041_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1623_),
    .B(_1608_),
    .Y(_1607_)
);

AOI21X1 _3042_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1625_),
    .B(\u_rf_if.issue_chunk [2]),
    .C(\u_rf_if.issue_chunk [3]),
    .Y(_1608_)
);

AOI21X1 _3043_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1722_),
    .B(_1610_),
    .C(_1609_),
    .Y(_519_)
);

OAI21X1 _3044_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[0]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_1609_)
);

INVX1 _3045_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [0]),
    .Y(_1610_)
);

AOI21X1 _3046_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2100_),
    .B(_1613_),
    .C(_1611_),
    .Y(_520_)
);

OAI21X1 _3047_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [0]),
    .B(_1613_),
    .C(_32__bF$buf2),
    .Y(_1611_)
);

NOR2X1 _3048_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf6),
    .B(_1612_),
    .Y(_521_)
);

MUX2X1 _3049_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf3),
    .B(\u_rf_if.read_buf0 [1]),
    .S(_1613_),
    .Y(_1612_)
);

NOR2X1 _3050_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2153_),
    .B(_1717__bF$buf4),
    .Y(_1613_)
);

AOI21X1 _3051_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1615_),
    .B(_1614_),
    .C(rst_bF$buf5),
    .Y(_522_)
);

NAND3X1 _3052_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1742_),
    .B(_1715__bF$buf4),
    .C(_2099_),
    .Y(_1614_)
);

OAI21X1 _3053_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf3),
    .B(_1744_),
    .C(\u_rf_if.read_buf0 [2]),
    .Y(_1615_)
);

AOI21X1 _3054_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1617_),
    .B(_1616_),
    .C(rst_bF$buf4),
    .Y(_523_)
);

NAND3X1 _3055_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf2),
    .B(_1715__bF$buf3),
    .C(_1742_),
    .Y(_1616_)
);

OAI21X1 _3056_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf2),
    .B(_1744_),
    .C(\u_rf_if.read_buf0 [3]),
    .Y(_1617_)
);

AOI21X1 _3057_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1618_),
    .B(_1619_),
    .C(rst_bF$buf3),
    .Y(_524_)
);

NAND3X1 _3058_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf3),
    .B(_1715__bF$buf2),
    .C(_1798_),
    .Y(_1618_)
);

OAI21X1 _3059_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf1),
    .B(_1749_),
    .C(\u_rf_if.read_buf0 [4]),
    .Y(_1619_)
);

AOI21X1 _3060_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1620_),
    .B(_1621_),
    .C(rst_bF$buf2),
    .Y(_525_)
);

NAND3X1 _3061_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf2),
    .B(_1715__bF$buf1),
    .C(_1801_),
    .Y(_1620_)
);

OAI21X1 _3062_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf0),
    .B(_1749_),
    .C(\u_rf_if.read_buf0 [5]),
    .Y(_1621_)
);

NOR2X1 _3063_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1692_),
    .B(_1622_),
    .Y(_526_)
);

NOR2X1 _3064_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1623_),
    .Y(_1622_)
);

NOR2X1 _3065_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_22_),
    .B(_1624_),
    .Y(_1623_)
);

NAND2X1 _3066_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1625_),
    .Y(_1624_)
);

NOR2X1 _3067_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_14_),
    .B(_1626_),
    .Y(_1625_)
);

NAND2X1 _3068_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_1697_),
    .Y(_1626_)
);

NOR2X1 _3069_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf1),
    .B(_1696_),
    .Y(_527_)
);

AOI21X1 _3070_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1628_),
    .B(_1627_),
    .C(rst_bF$buf0),
    .Y(_528_)
);

NAND3X1 _3071_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715__bF$buf0),
    .B(_1757_),
    .C(_2099_),
    .Y(_1627_)
);

OAI21X1 _3072_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf4),
    .B(_1759_),
    .C(\u_rf_if.read_buf0 [6]),
    .Y(_1628_)
);

AOI21X1 _3073_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1630_),
    .B(_1629_),
    .C(rst_bF$buf10),
    .Y(_529_)
);

NAND3X1 _3074_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf1),
    .B(_1715__bF$buf4),
    .C(_1757_),
    .Y(_1629_)
);

OAI21X1 _3075_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf3),
    .B(_1759_),
    .C(\u_rf_if.read_buf0 [7]),
    .Y(_1630_)
);

AOI21X1 _3076_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1631_),
    .B(_1632_),
    .C(rst_bF$buf9),
    .Y(_530_)
);

NAND3X1 _3077_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf1),
    .B(_1715__bF$buf3),
    .C(_1813_),
    .Y(_1631_)
);

OAI21X1 _3078_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf2),
    .B(_1764_),
    .C(\u_rf_if.read_buf0 [8]),
    .Y(_1632_)
);

AOI21X1 _3079_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .B(_1634_),
    .C(_1633_),
    .Y(_531_)
);

OAI21X1 _3080_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(raddr[8]),
    .B(_1697_),
    .C(_32__bF$buf1),
    .Y(_1633_)
);

OAI21X1 _3081_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .B(\u_rf_if.rreg0_latched [4]),
    .C(_1635_),
    .Y(_1634_)
);

NAND2X1 _3082_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_1636_),
    .Y(_1635_)
);

INVX1 _3083_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [4]),
    .Y(_1636_)
);

AOI21X1 _3084_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1637_),
    .B(_1638_),
    .C(rst_bF$buf8),
    .Y(_532_)
);

NAND3X1 _3085_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf0),
    .B(_1715__bF$buf2),
    .C(_1816_),
    .Y(_1637_)
);

OAI21X1 _3086_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf1),
    .B(_1764_),
    .C(\u_rf_if.read_buf0 [9]),
    .Y(_1638_)
);

AOI21X1 _3087_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1640_),
    .B(_1639_),
    .C(rst_bF$buf7),
    .Y(_533_)
);

NAND3X1 _3088_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715__bF$buf1),
    .B(_2099_),
    .C(_1768_),
    .Y(_1639_)
);

OAI21X1 _3089_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf0),
    .B(_1770_),
    .C(\u_rf_if.read_buf0 [10]),
    .Y(_1640_)
);

AOI21X1 _3090_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1642_),
    .B(_1641_),
    .C(rst_bF$buf6),
    .Y(_534_)
);

NAND3X1 _3091_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf0),
    .B(_1715__bF$buf0),
    .C(_1768_),
    .Y(_1641_)
);

OAI21X1 _3092_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf4),
    .B(_1770_),
    .C(\u_rf_if.read_buf0 [11]),
    .Y(_1642_)
);

AOI21X1 _3093_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1643_),
    .B(_1644_),
    .C(rst_bF$buf5),
    .Y(_535_)
);

NAND3X1 _3094_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf3),
    .B(_1715__bF$buf4),
    .C(_2068_),
    .Y(_1643_)
);

OAI21X1 _3095_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf3),
    .B(_1775_),
    .C(\u_rf_if.read_buf0 [12]),
    .Y(_1644_)
);

AOI21X1 _3096_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1722_),
    .B(_2108_),
    .C(_1645_),
    .Y(_536_)
);

OAI21X1 _3097_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0_to_if[4]),
    .B(_1722_),
    .C(_32__bF$buf0),
    .Y(_1645_)
);

AOI21X1 _3098_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1646_),
    .B(_1647_),
    .C(rst_bF$buf4),
    .Y(_537_)
);

NAND3X1 _3099_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf2),
    .B(_1715__bF$buf3),
    .C(_2088_),
    .Y(_1646_)
);

OAI21X1 _3100_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf2),
    .B(_1775_),
    .C(\u_rf_if.read_buf0 [13]),
    .Y(_1647_)
);

AOI21X1 _3101_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1649_),
    .B(_1648_),
    .C(rst_bF$buf3),
    .Y(_538_)
);

NAND3X1 _3102_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715__bF$buf2),
    .B(_1779_),
    .C(_2099_),
    .Y(_1648_)
);

OAI21X1 _3103_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf1),
    .B(_1781_),
    .C(\u_rf_if.read_buf0 [14]),
    .Y(_1649_)
);

AOI21X1 _3104_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1651_),
    .B(_1650_),
    .C(rst_bF$buf2),
    .Y(_539_)
);

NAND3X1 _3105_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf3),
    .B(_1715__bF$buf1),
    .C(_1779_),
    .Y(_1650_)
);

OAI21X1 _3106_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf0),
    .B(_1781_),
    .C(\u_rf_if.read_buf0 [15]),
    .Y(_1651_)
);

AOI21X1 _3107_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1652_),
    .B(_1653_),
    .C(rst_bF$buf1),
    .Y(_540_)
);

NAND3X1 _3108_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_5_),
    .B(_1715__bF$buf0),
    .C(_1783_),
    .Y(_1652_)
);

OAI21X1 _3109_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf4),
    .B(_1788_),
    .C(\u_rf_if.read_buf0 [16]),
    .Y(_1653_)
);

AOI21X1 _3110_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1655_),
    .B(_1657_),
    .C(rst_bF$buf0),
    .Y(_541_)
);

NAND3X1 _3111_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_5_),
    .B(_1715__bF$buf4),
    .C(_1786_),
    .Y(_1655_)
);

OAI21X1 _3112_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf3),
    .B(_1788_),
    .C(\u_rf_if.read_buf0 [17]),
    .Y(_1657_)
);

AOI21X1 _3113_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1658_),
    .B(_1659_),
    .C(rst_bF$buf10),
    .Y(_542_)
);

NAND3X1 _3114_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2099_),
    .B(_1715__bF$buf3),
    .C(_1792_),
    .Y(_1658_)
);

OAI21X1 _3115_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf2),
    .B(_1794_),
    .C(\u_rf_if.read_buf0 [18]),
    .Y(_1659_)
);

AOI21X1 _3116_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1660_),
    .B(_1661_),
    .C(rst_bF$buf9),
    .Y(_543_)
);

NAND3X1 _3117_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf2),
    .B(_1715__bF$buf2),
    .C(_1792_),
    .Y(_1660_)
);

OAI21X1 _3118_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf1),
    .B(_1794_),
    .C(\u_rf_if.read_buf0 [19]),
    .Y(_1661_)
);

AOI21X1 _3119_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1662_),
    .B(_1663_),
    .C(rst_bF$buf8),
    .Y(_544_)
);

NAND3X1 _3120_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf3),
    .B(_1715__bF$buf1),
    .C(_1798_),
    .Y(_1662_)
);

OAI21X1 _3121_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf0),
    .B(_1803_),
    .C(\u_rf_if.read_buf0 [20]),
    .Y(_1663_)
);

AOI21X1 _3122_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1664_),
    .B(_1665_),
    .C(rst_bF$buf7),
    .Y(_545_)
);

NAND3X1 _3123_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf2),
    .B(_1715__bF$buf0),
    .C(_1801_),
    .Y(_1664_)
);

OAI21X1 _3124_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf4),
    .B(_1803_),
    .C(\u_rf_if.read_buf0 [21]),
    .Y(_1665_)
);

AOI21X1 _3125_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1753_),
    .B(_1668_),
    .C(_1666_),
    .Y(_546_)
);

NAND2X1 _3126_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_32__bF$buf4),
    .B(_1667_),
    .Y(_1666_)
);

OAI21X1 _3127_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_426_),
    .B(_39_),
    .C(_449_),
    .Y(_1667_)
);

NAND2X1 _3128_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [4]),
    .B(_42_),
    .Y(_1668_)
);

AOI21X1 _3129_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1670_),
    .B(_1669_),
    .C(rst_bF$buf6),
    .Y(_547_)
);

NAND3X1 _3130_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1807_),
    .B(_1715__bF$buf4),
    .C(_2099_),
    .Y(_1669_)
);

OAI21X1 _3131_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf3),
    .B(_1809_),
    .C(\u_rf_if.read_buf0 [22]),
    .Y(_1670_)
);

AOI21X1 _3132_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1672_),
    .B(_1671_),
    .C(rst_bF$buf5),
    .Y(_548_)
);

NAND3X1 _3133_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf1),
    .B(_1715__bF$buf3),
    .C(_1807_),
    .Y(_1671_)
);

OAI21X1 _3134_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf2),
    .B(_1809_),
    .C(\u_rf_if.read_buf0 [23]),
    .Y(_1672_)
);

AOI21X1 _3135_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1673_),
    .B(_1674_),
    .C(rst_bF$buf4),
    .Y(_549_)
);

NAND3X1 _3136_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf1),
    .B(_1715__bF$buf2),
    .C(_1813_),
    .Y(_1673_)
);

OAI21X1 _3137_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf1),
    .B(_1819_),
    .C(\u_rf_if.read_buf0 [24]),
    .Y(_1674_)
);

AOI21X1 _3138_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1675_),
    .B(_1676_),
    .C(rst_bF$buf3),
    .Y(_550_)
);

NAND3X1 _3139_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf4),
    .B(_2062__bF$buf0),
    .C(_2150_),
    .Y(_1675_)
);

OAI21X1 _3140_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf4),
    .B(_2162_),
    .C(\u_rf_if.read_buf1 [31]),
    .Y(_1676_)
);

AOI21X1 _3141_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1677_),
    .B(_1678_),
    .C(rst_bF$buf2),
    .Y(_551_)
);

NAND3X1 _3142_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf0),
    .B(_1715__bF$buf1),
    .C(_1816_),
    .Y(_1677_)
);

OAI21X1 _3143_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf0),
    .B(_1819_),
    .C(\u_rf_if.read_buf0 [25]),
    .Y(_1678_)
);

AOI21X1 _3144_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1680_),
    .B(_1679_),
    .C(rst_bF$buf1),
    .Y(_552_)
);

NAND3X1 _3145_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2099_),
    .B(_1715__bF$buf0),
    .C(_2060_),
    .Y(_1679_)
);

OAI21X1 _3146_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf4),
    .B(_2064_),
    .C(\u_rf_if.read_buf0 [26]),
    .Y(_1680_)
);

AOI21X1 _3147_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1681_),
    .B(_1682_),
    .C(rst_bF$buf0),
    .Y(_553_)
);

NAND3X1 _3148_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf3),
    .B(_1715__bF$buf4),
    .C(_2150_),
    .Y(_1681_)
);

OAI21X1 _3149_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf3),
    .B(_2162_),
    .C(\u_rf_if.read_buf0 [31]),
    .Y(_1682_)
);

NOR2X1 _3150_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf10),
    .B(_1683_),
    .Y(_554_)
);

NAND2X1 _3151_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(\u_rf_if.prefetch_active ),
    .Y(_1683_)
);

AOI21X1 _3152_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1685_),
    .B(_1684_),
    .C(rst_bF$buf9),
    .Y(_555_)
);

NAND3X1 _3153_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf2),
    .B(_1715__bF$buf3),
    .C(_2060_),
    .Y(_1684_)
);

OAI21X1 _3154_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf2),
    .B(_2064_),
    .C(\u_rf_if.read_buf0 [27]),
    .Y(_1685_)
);

AOI21X1 _3155_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1686_),
    .B(_1687_),
    .C(rst_bF$buf8),
    .Y(_556_)
);

NAND3X1 _3156_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf3),
    .B(_1715__bF$buf2),
    .C(_2068_),
    .Y(_1686_)
);

OAI21X1 _3157_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf1),
    .B(_2094_),
    .C(\u_rf_if.read_buf0 [28]),
    .Y(_1687_)
);

AND2X2 _3158_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1688_),
    .B(_32__bF$buf3),
    .Y(_557_)
);

OAI21X1 _3159_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1690_),
    .B(_1689_),
    .C(_44_),
    .Y(_1688_)
);

OAI21X1 _3160_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [1]),
    .C(_485_),
    .Y(_1689_)
);

AND2X2 _3161_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [1]),
    .Y(_1690_)
);

NOR2X1 _3162_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1691_),
    .B(_1692_),
    .Y(_558_)
);

NOR2X1 _3163_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.pending_read ),
    .Y(_1691_)
);

OAI21X1 _3164_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1694_),
    .B(_1695_),
    .C(_32__bF$buf2),
    .Y(_1692_)
);

AOI21X1 _3165_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1693_),
    .B(_1696_),
    .C(rst_bF$buf7),
    .Y(_559_)
);

OR2X2 _3166_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1695_),
    .B(_1694_),
    .Y(_1693_)
);

NAND2X1 _3167_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.pending_read ),
    .B(_1698_),
    .Y(_1694_)
);

NAND2X1 _3168_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1707_),
    .B(_1700_),
    .Y(_1695_)
);

INVX2 _3169_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1697_),
    .Y(_1696_)
);

NOR2X1 _3170_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .Y(_1697_)
);

INVX2 _3171_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.prefetch_active ),
    .Y(_1698_)
);

AND2X2 _3172_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1699_),
    .B(_32__bF$buf1),
    .Y(_560_)
);

OAI21X1 _3173_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1707_),
    .B(_1700_),
    .C(_44_),
    .Y(_1699_)
);

INVX1 _3174_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1701_),
    .Y(_1700_)
);

NAND2X1 _3175_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1706_),
    .B(_1702_),
    .Y(_1701_)
);

NOR2X1 _3176_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [3]),
    .B(_1703_),
    .Y(_1702_)
);

NAND2X1 _3177_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1705_),
    .B(_1704_),
    .Y(_1703_)
);

NOR2X1 _3178_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .Y(_1704_)
);

INVX1 _3179_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [2]),
    .Y(_1705_)
);

INVX1 _3180_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [4]),
    .Y(_1706_)
);

INVX1 _3181_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.write_wait [5]),
    .Y(_1707_)
);

AOI21X1 _3182_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1708_),
    .B(_1710_),
    .C(_1730_),
    .Y(_561_)
);

NAND3X1 _3183_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .B(rf_wdata0_next_to_if),
    .C(_1709_),
    .Y(_1708_)
);

NOR2X1 _3184_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_478_),
    .B(_1711_),
    .Y(_1709_)
);

OAI21X1 _3185_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_478_),
    .B(_1711_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1710_)
);

NAND2X1 _3186_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_484__bF$buf3),
    .B(\u_rf_if.o_wen ),
    .Y(_1711_)
);

AOI21X1 _3187_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1712_),
    .B(_1713_),
    .C(rst_bF$buf6),
    .Y(_562_)
);

NAND3X1 _3188_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf2),
    .B(_1715__bF$buf1),
    .C(_2088_),
    .Y(_1712_)
);

OAI21X1 _3189_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf0),
    .B(_2094_),
    .C(\u_rf_if.read_buf0 [29]),
    .Y(_1713_)
);

AOI21X1 _3190_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1714_),
    .B(_1716_),
    .C(rst_bF$buf5),
    .Y(_563_)
);

NAND3X1 _3191_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1715__bF$buf0),
    .B(_2099_),
    .C(_2150_),
    .Y(_1714_)
);

INVX8 _3192_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf4),
    .Y(_1715_)
);

OAI21X1 _3193_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1717__bF$buf3),
    .B(_2162_),
    .C(\u_rf_if.read_buf0 [30]),
    .Y(_1716_)
);

NAND3X1 _3194_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf0 ),
    .B(\u_rf_if.prefetch_active ),
    .C(_19_),
    .Y(_1717_)
);

AOI21X1 _3195_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1722_),
    .B(_1719_),
    .C(_1718_),
    .Y(_564_)
);

OAI21X1 _3196_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[1]),
    .B(_1722_),
    .C(_32__bF$buf0),
    .Y(_1718_)
);

INVX1 _3197_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [1]),
    .Y(_1719_)
);

AOI21X1 _3198_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1722_),
    .B(_1721_),
    .C(_1720_),
    .Y(_565_)
);

OAI21X1 _3199_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1_to_if[2]),
    .B(_1722_),
    .C(_32__bF$buf4),
    .Y(_1720_)
);

INVX1 _3200_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [2]),
    .Y(_1721_)
);

INVX4 _3201_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_rreq ),
    .Y(_1722_)
);

AOI21X1 _3202_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1727_),
    .B(_1723_),
    .C(_1730_),
    .Y(_566_)
);

OAI21X1 _3203_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1725_),
    .B(_1724_),
    .C(_1729_),
    .Y(_1723_)
);

AND2X2 _3204_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1726_),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_1724_)
);

NOR2X1 _3205_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .B(_1726_),
    .Y(_1725_)
);

NAND3X1 _3206_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [1]),
    .C(\u_rf_if.o_waddr [2]),
    .Y(_1726_)
);

NAND2X1 _3207_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .B(_1728_),
    .Y(_1727_)
);

INVX1 _3208_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1729_),
    .Y(_1728_)
);

AOI21X1 _3209_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .B(_1734_),
    .C(_484__bF$buf2),
    .Y(_1729_)
);

INVX1 _3210_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1731_),
    .Y(_1730_)
);

NOR2X1 _3211_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreq),
    .B(rst_bF$buf4),
    .Y(_1731_)
);

AOI21X1 _3212_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .B(_484__bF$buf1),
    .C(_1732_),
    .Y(_567_)
);

OAI21X1 _3213_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .B(_484__bF$buf0),
    .C(_32__bF$buf3),
    .Y(_1732_)
);

AOI21X1 _3214_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1734_),
    .B(_484__bF$buf3),
    .C(_1733_),
    .Y(_568_)
);

OAI21X1 _3215_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.o_wen0 ),
    .B(_484__bF$buf2),
    .C(_32__bF$buf2),
    .Y(_1733_)
);

INVX1 _3216_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen0_r ),
    .Y(_1734_)
);

AND2X2 _3217_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_32__bF$buf1),
    .B(gnd),
    .Y(_569_)
);

AND2X2 _3218_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1735_),
    .B(_32__bF$buf0),
    .Y(_570_)
);

OAI21X1 _3219_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2100_),
    .B(_1738_),
    .C(_1736_),
    .Y(_1735_)
);

OAI21X1 _3220_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2153_),
    .B(_18__bF$buf3),
    .C(\u_rf_if.read_buf1 [0]),
    .Y(_1736_)
);

AOI21X1 _3221_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_433_),
    .B(_1738_),
    .C(_1737_),
    .Y(_571_)
);

OAI21X1 _3222_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2062__bF$buf1),
    .B(_1738_),
    .C(_32__bF$buf4),
    .Y(_1737_)
);

NAND2X1 _3223_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2149_),
    .B(_2154__bF$buf3),
    .Y(_1738_)
);

AOI21X1 _3224_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1740_),
    .B(_1739_),
    .C(rst_bF$buf3),
    .Y(_572_)
);

NAND3X1 _3225_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf2),
    .B(_1742_),
    .C(_2099_),
    .Y(_1739_)
);

OAI21X1 _3226_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf2),
    .B(_1744_),
    .C(\u_rf_if.read_buf1 [2]),
    .Y(_1740_)
);

AOI21X1 _3227_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1743_),
    .B(_1741_),
    .C(rst_bF$buf2),
    .Y(_573_)
);

NAND3X1 _3228_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf1),
    .B(_2062__bF$buf0),
    .C(_1742_),
    .Y(_1741_)
);

NOR2X1 _3229_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1796_),
    .B(_10__bF$buf1),
    .Y(_1742_)
);

OAI21X1 _3230_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf1),
    .B(_1744_),
    .C(\u_rf_if.read_buf1 [3]),
    .Y(_1743_)
);

NAND2X1 _3231_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf1),
    .B(_1795_),
    .Y(_1744_)
);

AOI21X1 _3232_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1745_),
    .B(_1746_),
    .C(rst_bF$buf1),
    .Y(_574_)
);

NAND3X1 _3233_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf0),
    .B(_2152__bF$buf0),
    .C(_1798_),
    .Y(_1745_)
);

OAI21X1 _3234_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf0),
    .B(_1749_),
    .C(\u_rf_if.read_buf1 [4]),
    .Y(_1746_)
);

AOI21X1 _3235_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1747_),
    .B(_1748_),
    .C(rst_bF$buf0),
    .Y(_575_)
);

NAND3X1 _3236_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf4),
    .B(_2152__bF$buf3),
    .C(_1801_),
    .Y(_1747_)
);

OAI21X1 _3237_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf4),
    .B(_1749_),
    .C(\u_rf_if.read_buf1 [5]),
    .Y(_1748_)
);

NAND3X1 _3238_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2092_),
    .B(_2095_),
    .C(_2152__bF$buf2),
    .Y(_1749_)
);

NOR2X1 _3239_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf10),
    .B(_457_),
    .Y(_576_)
);

NOR2X1 _3240_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf9),
    .B(_484__bF$buf1),
    .Y(_577_)
);

AOI21X1 _3241_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1751_),
    .B(_1750_),
    .C(rst_bF$buf8),
    .Y(_578_)
);

NAND3X1 _3242_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf3),
    .B(_1757_),
    .C(_2099_),
    .Y(_1750_)
);

OAI21X1 _3243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf3),
    .B(_1759_),
    .C(\u_rf_if.read_buf1 [6]),
    .Y(_1751_)
);

AND2X2 _3244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1752_),
    .B(_32__bF$buf3),
    .Y(_579_)
);

OAI21X1 _3245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .B(_43_),
    .C(_1753_),
    .Y(_1752_)
);

OAI21X1 _3246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_449_),
    .B(_1754_),
    .C(\u_rf_if.stream_active ),
    .Y(_1753_)
);

NAND2X1 _3247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1755_),
    .Y(_1754_)
);

INVX1 _3248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_39_),
    .Y(_1755_)
);

AOI21X1 _3249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1758_),
    .B(_1756_),
    .C(rst_bF$buf7),
    .Y(_580_)
);

NAND3X1 _3250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf2),
    .B(_2062__bF$buf3),
    .C(_1757_),
    .Y(_1756_)
);

NOR2X1 _3251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1811_),
    .B(_10__bF$buf0),
    .Y(_1757_)
);

OAI21X1 _3252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf2),
    .B(_1759_),
    .C(\u_rf_if.read_buf1 [7]),
    .Y(_1758_)
);

NAND2X1 _3253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1810_),
    .B(_2152__bF$buf1),
    .Y(_1759_)
);

AOI21X1 _3254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1760_),
    .B(_1761_),
    .C(rst_bF$buf6),
    .Y(_581_)
);

NAND3X1 _3255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf1),
    .B(_2152__bF$buf0),
    .C(_1813_),
    .Y(_1760_)
);

OAI21X1 _3256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf1),
    .B(_1764_),
    .C(\u_rf_if.read_buf1 [8]),
    .Y(_1761_)
);

AOI21X1 _3257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1762_),
    .B(_1763_),
    .C(rst_bF$buf5),
    .Y(_582_)
);

NAND3X1 _3258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf0),
    .B(_2152__bF$buf3),
    .C(_1816_),
    .Y(_1762_)
);

OAI21X1 _3259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf0),
    .B(_1764_),
    .C(\u_rf_if.read_buf1 [9]),
    .Y(_1763_)
);

NAND2X1 _3260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_11_),
    .B(_1820_),
    .Y(_1764_)
);

AOI21X1 _3261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1766_),
    .B(_1765_),
    .C(rst_bF$buf4),
    .Y(_583_)
);

NAND3X1 _3262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf4),
    .B(_2099_),
    .C(_1768_),
    .Y(_1765_)
);

OAI21X1 _3263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf4),
    .B(_1770_),
    .C(\u_rf_if.read_buf1 [10]),
    .Y(_1766_)
);

AOI21X1 _3264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1769_),
    .B(_1767_),
    .C(rst_bF$buf3),
    .Y(_584_)
);

NAND3X1 _3265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf3),
    .B(_2062__bF$buf2),
    .C(_1768_),
    .Y(_1767_)
);

NOR2X1 _3266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf3),
    .B(_2061_),
    .Y(_1768_)
);

OAI21X1 _3267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf3),
    .B(_1770_),
    .C(\u_rf_if.read_buf1 [11]),
    .Y(_1769_)
);

NAND2X1 _3268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf2),
    .B(_2065_),
    .Y(_1770_)
);

AOI21X1 _3269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1771_),
    .B(_1772_),
    .C(rst_bF$buf2),
    .Y(_585_)
);

NAND3X1 _3270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf2),
    .B(_2152__bF$buf1),
    .C(_2068_),
    .Y(_1771_)
);

OAI21X1 _3271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf2),
    .B(_1775_),
    .C(\u_rf_if.read_buf1 [12]),
    .Y(_1772_)
);

AOI21X1 _3272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1773_),
    .B(_1774_),
    .C(rst_bF$buf1),
    .Y(_586_)
);

NAND3X1 _3273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf1),
    .B(_2152__bF$buf0),
    .C(_2088_),
    .Y(_1773_)
);

OAI21X1 _3274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf1),
    .B(_1775_),
    .C(\u_rf_if.read_buf1 [13]),
    .Y(_1774_)
);

NAND3X1 _3275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_5_),
    .B(_2095_),
    .C(_2152__bF$buf3),
    .Y(_1775_)
);

AOI21X1 _3276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1777_),
    .B(_1776_),
    .C(rst_bF$buf0),
    .Y(_587_)
);

NAND3X1 _3277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf0),
    .B(_1779_),
    .C(_2099_),
    .Y(_1776_)
);

OAI21X1 _3278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf0),
    .B(_1781_),
    .C(\u_rf_if.read_buf1 [14]),
    .Y(_1777_)
);

AOI21X1 _3279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1780_),
    .B(_1778_),
    .C(rst_bF$buf10),
    .Y(_588_)
);

NAND3X1 _3280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf4),
    .B(_2062__bF$buf1),
    .C(_1779_),
    .Y(_1778_)
);

NOR2X1 _3281_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf2),
    .B(_2151_),
    .Y(_1779_)
);

OAI21X1 _3282_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf4),
    .B(_1781_),
    .C(\u_rf_if.read_buf1 [15]),
    .Y(_1780_)
);

NAND2X1 _3283_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2152__bF$buf2),
    .B(_0_),
    .Y(_1781_)
);

AOI21X1 _3284_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1782_),
    .B(_1784_),
    .C(rst_bF$buf9),
    .Y(_589_)
);

NAND3X1 _3285_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf3),
    .B(_5_),
    .C(_1783_),
    .Y(_1782_)
);

NOR2X1 _3286_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_2069_),
    .Y(_1783_)
);

OAI21X1 _3287_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf3),
    .B(_1788_),
    .C(\u_rf_if.read_buf1 [16]),
    .Y(_1784_)
);

AOI21X1 _3288_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1785_),
    .B(_1787_),
    .C(rst_bF$buf8),
    .Y(_590_)
);

NAND3X1 _3289_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf2),
    .B(_5_),
    .C(_1786_),
    .Y(_1785_)
);

NOR2X1 _3290_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1817_),
    .B(_2089_),
    .Y(_1786_)
);

OAI21X1 _3291_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf2),
    .B(_1788_),
    .C(\u_rf_if.read_buf1 [17]),
    .Y(_1787_)
);

NAND3X1 _3292_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_4_),
    .B(_2090_),
    .C(_5_),
    .Y(_1788_)
);

AOI21X1 _3293_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1789_),
    .B(_1790_),
    .C(rst_bF$buf7),
    .Y(_591_)
);

NAND3X1 _3294_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf1),
    .B(_2099_),
    .C(_1792_),
    .Y(_1789_)
);

OAI21X1 _3295_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf1),
    .B(_1794_),
    .C(\u_rf_if.read_buf1 [18]),
    .Y(_1790_)
);

AOI21X1 _3296_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1791_),
    .B(_1793_),
    .C(rst_bF$buf6),
    .Y(_592_)
);

NAND3X1 _3297_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf0),
    .B(_2062__bF$buf0),
    .C(_1792_),
    .Y(_1791_)
);

NOR2X1 _3298_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1796_),
    .B(_2152__bF$buf1),
    .Y(_1792_)
);

OAI21X1 _3299_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf0),
    .B(_1794_),
    .C(\u_rf_if.read_buf1 [19]),
    .Y(_1793_)
);

NAND2X1 _3300_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf1),
    .B(_1795_),
    .Y(_1794_)
);

INVX1 _3301_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1796_),
    .Y(_1795_)
);

NAND3X1 _3302_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .B(_2096_),
    .C(_2092_),
    .Y(_1796_)
);

AOI21X1 _3303_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1797_),
    .B(_1799_),
    .C(rst_bF$buf5),
    .Y(_593_)
);

NAND3X1 _3304_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf4),
    .B(_10__bF$buf0),
    .C(_1798_),
    .Y(_1797_)
);

NOR3X1 _3305_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_4_),
    .B(\u_rf_if.issue_chunk [2]),
    .C(_2069_),
    .Y(_1798_)
);

OAI21X1 _3306_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf4),
    .B(_1803_),
    .C(\u_rf_if.read_buf1 [20]),
    .Y(_1799_)
);

AOI21X1 _3307_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1800_),
    .B(_1802_),
    .C(rst_bF$buf4),
    .Y(_594_)
);

NAND3X1 _3308_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf3),
    .B(_10__bF$buf3),
    .C(_1801_),
    .Y(_1800_)
);

NOR3X1 _3309_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_5_),
    .B(_2091_),
    .C(_2089_),
    .Y(_1801_)
);

OAI21X1 _3310_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf3),
    .B(_1803_),
    .C(\u_rf_if.read_buf1 [21]),
    .Y(_1802_)
);

NAND3X1 _3311_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2092_),
    .B(_2095_),
    .C(_10__bF$buf2),
    .Y(_1803_)
);

AOI21X1 _3312_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1805_),
    .B(_1804_),
    .C(rst_bF$buf3),
    .Y(_595_)
);

NAND3X1 _3313_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf2),
    .B(_1807_),
    .C(_2099_),
    .Y(_1804_)
);

OAI21X1 _3314_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf2),
    .B(_1809_),
    .C(\u_rf_if.read_buf1 [22]),
    .Y(_1805_)
);

AOI21X1 _3315_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1808_),
    .B(_1806_),
    .C(rst_bF$buf2),
    .Y(_596_)
);

NAND3X1 _3316_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf1),
    .B(_2062__bF$buf3),
    .C(_1807_),
    .Y(_1806_)
);

AOI21X1 _3317_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2153_),
    .B(_11_),
    .C(_1811_),
    .Y(_1807_)
);

OAI21X1 _3318_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf1),
    .B(_1809_),
    .C(\u_rf_if.read_buf1 [23]),
    .Y(_1808_)
);

NAND2X1 _3319_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf1),
    .B(_1810_),
    .Y(_1809_)
);

INVX1 _3320_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1811_),
    .Y(_1810_)
);

NAND2X1 _3321_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1_),
    .B(_2092_),
    .Y(_1811_)
);

AOI21X1 _3322_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1812_),
    .B(_1814_),
    .C(rst_bF$buf1),
    .Y(_597_)
);

NAND3X1 _3323_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf0),
    .B(_10__bF$buf0),
    .C(_1813_),
    .Y(_1812_)
);

NOR3X1 _3324_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_5_),
    .C(_2069_),
    .Y(_1813_)
);

OAI21X1 _3325_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf0),
    .B(_1819_),
    .C(\u_rf_if.read_buf1 [24]),
    .Y(_1814_)
);

AOI21X1 _3326_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1815_),
    .B(_1818_),
    .C(rst_bF$buf0),
    .Y(_598_)
);

NAND3X1 _3327_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf4),
    .B(_10__bF$buf3),
    .C(_1816_),
    .Y(_1815_)
);

NOR3X1 _3328_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_5_),
    .B(_1817_),
    .C(_2089_),
    .Y(_1816_)
);

NOR2X1 _3329_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_8_),
    .B(_1_),
    .Y(_1817_)
);

OAI21X1 _3330_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf4),
    .B(_1819_),
    .C(\u_rf_if.read_buf1 [25]),
    .Y(_1818_)
);

NAND2X1 _3331_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf2),
    .B(_1820_),
    .Y(_1819_)
);

NOR2X1 _3332_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_9_),
    .B(_1821_),
    .Y(_1820_)
);

NAND2X1 _3333_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_4_),
    .B(_1822_),
    .Y(_1821_)
);

INVX1 _3334_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .Y(_1822_)
);

AOI21X1 _3335_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2058_),
    .B(_1824_),
    .C(rst_bF$buf10),
    .Y(_599_)
);

NAND3X1 _3336_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf3),
    .B(_2099_),
    .C(_2060_),
    .Y(_1824_)
);

OAI21X1 _3337_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf3),
    .B(_2064_),
    .C(\u_rf_if.read_buf1 [26]),
    .Y(_2058_)
);

AOI21X1 _3338_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2063_),
    .B(_2059_),
    .C(rst_bF$buf9),
    .Y(_600_)
);

NAND3X1 _3339_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf2),
    .B(_2062__bF$buf2),
    .C(_2060_),
    .Y(_2059_)
);

NOR2X1 _3340_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2061_),
    .B(_2152__bF$buf0),
    .Y(_2060_)
);

NAND3X1 _3341_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .B(_2096_),
    .C(_5_),
    .Y(_2061_)
);

AND2X2 _3342_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2101_),
    .B(rdata[1]),
    .Y(_2062_)
);

OAI21X1 _3343_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf2),
    .B(_2064_),
    .C(\u_rf_if.read_buf1 [27]),
    .Y(_2063_)
);

NAND2X1 _3344_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf1),
    .B(_2065_),
    .Y(_2064_)
);

NOR2X1 _3345_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2092_),
    .B(_2066_),
    .Y(_2065_)
);

NAND2X1 _3346_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .B(_2096_),
    .Y(_2066_)
);

AOI21X1 _3347_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2067_),
    .B(_2070_),
    .C(rst_bF$buf8),
    .Y(_601_)
);

NAND3X1 _3348_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf1),
    .B(_10__bF$buf0),
    .C(_2068_),
    .Y(_2067_)
);

NOR3X1 _3349_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_4_),
    .B(_9_),
    .C(_2069_),
    .Y(_2068_)
);

NAND3X1 _3350_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rdata[0]),
    .B(_2090_),
    .C(_2101_),
    .Y(_2069_)
);

OAI21X1 _3351_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf1),
    .B(_2094_),
    .C(\u_rf_if.read_buf1 [28]),
    .Y(_2070_)
);

AOI21X1 _3352_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2071_),
    .B(_2093_),
    .C(rst_bF$buf7),
    .Y(_602_)
);

NAND3X1 _3353_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf0),
    .B(_10__bF$buf3),
    .C(_2088_),
    .Y(_2071_)
);

NOR3X1 _3354_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2092_),
    .B(_2091_),
    .C(_2089_),
    .Y(_2088_)
);

NAND3X1 _3355_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rdata[1]),
    .B(_2090_),
    .C(_2101_),
    .Y(_2089_)
);

NOR2X1 _3356_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .B(_20_),
    .Y(_2090_)
);

OR2X2 _3357_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1_),
    .B(_8_),
    .Y(_2091_)
);

AOI21X1 _3358_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_21_),
    .B(_14_),
    .C(_7_),
    .Y(_2092_)
);

OAI21X1 _3359_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf0),
    .B(_2094_),
    .C(\u_rf_if.read_buf1 [29]),
    .Y(_2093_)
);

NAND3X1 _3360_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_5_),
    .B(_2095_),
    .C(_10__bF$buf2),
    .Y(_2094_)
);

NOR2X1 _3361_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .B(_2096_),
    .Y(_2095_)
);

AND2X2 _3362_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_3_),
    .B(_2097_),
    .Y(_2096_)
);

OAI21X1 _3363_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_2097_)
);

AOI21X1 _3364_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2098_),
    .B(_2155_),
    .C(rst_bF$buf6),
    .Y(_603_)
);

NAND3X1 _3365_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2154__bF$buf4),
    .B(_2099_),
    .C(_2150_),
    .Y(_2098_)
);

NOR2X1 _3366_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2149_),
    .B(_2100_),
    .Y(_2099_)
);

NAND2X1 _3367_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rdata[0]),
    .B(_2101_),
    .Y(_2100_)
);

AOI22X1 _3368_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2105_),
    .B(_2102_),
    .C(_2106_),
    .D(_2110_),
    .Y(_2101_)
);

AND2X2 _3369_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2104_),
    .B(_2103_),
    .Y(_2102_)
);

NOR2X1 _3370_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .B(\u_rf_if.rreg1_latched [2]),
    .Y(_2103_)
);

NOR2X1 _3371_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(\u_rf_if.rreg1_latched [4]),
    .Y(_2104_)
);

NOR2X1 _3372_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(\u_rf_if.rreg1_latched [1]),
    .Y(_2105_)
);

NOR2X1 _3373_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2109_),
    .B(_2107_),
    .Y(_2106_)
);

NAND2X1 _3374_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_2108_),
    .Y(_2107_)
);

INVX1 _3375_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [4]),
    .Y(_2108_)
);

OR2X2 _3376_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(\u_rf_if.rreg0_latched [3]),
    .Y(_2109_)
);

NOR2X1 _3377_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_2110_)
);

INVX1 _3378_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2153_),
    .Y(_2149_)
);

NOR2X1 _3379_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2151_),
    .B(_2152__bF$buf3),
    .Y(_2150_)
);

NAND2X1 _3380_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1_),
    .B(_5_),
    .Y(_2151_)
);

AND2X2 _3381_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2153_),
    .B(_11_),
    .Y(_2152_)
);

OR2X2 _3382_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_13_),
    .B(_17_),
    .Y(_2153_)
);

INVX8 _3383_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf4),
    .Y(_2154_)
);

OAI21X1 _3384_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_18__bF$buf3),
    .B(_2162_),
    .C(\u_rf_if.read_buf1 [30]),
    .Y(_2155_)
);

NAND2X1 _3385_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_10__bF$buf1),
    .B(_0_),
    .Y(_2162_)
);

AND2X2 _3386_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_5_),
    .B(_1_),
    .Y(_0_)
);

OAI21X1 _3387_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_4_),
    .B(_14_),
    .C(_3_),
    .Y(_1_)
);

NAND2X1 _3388_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_4_),
    .B(_23_),
    .Y(_3_)
);

INVX2 _3389_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .Y(_4_)
);

NAND2X1 _3390_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_12_),
    .B(_6_),
    .Y(_5_)
);

INVX1 _3391_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_7_),
    .Y(_6_)
);

NOR2X1 _3392_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_9_),
    .B(_8_),
    .Y(_7_)
);

AOI21X1 _3393_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf0 ),
    .B(\u_rf_if.issue_chunk [0]),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_8_)
);

INVX1 _3394_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [2]),
    .Y(_9_)
);

OAI21X1 _3395_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_17_),
    .B(_13_),
    .C(_11_),
    .Y(_10_)
);

AOI22X1 _3396_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_12_),
    .C(_20_),
    .D(_23_),
    .Y(_11_)
);

OAI21X1 _3397_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_25_),
    .B(_16_),
    .C(_21_),
    .Y(_12_)
);

NAND2X1 _3398_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_14_),
    .B(_15_),
    .Y(_13_)
);

NAND2X1 _3399_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_14_)
);

NAND2X1 _3400_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_25_),
    .B(_16_),
    .Y(_15_)
);

INVX1 _3401_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [0]),
    .Y(_16_)
);

NAND2X1 _3402_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_22_),
    .B(_21_),
    .Y(_17_)
);

NAND3X1 _3403_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_25_),
    .B(\u_rf_if.prefetch_active ),
    .C(_19_),
    .Y(_18_)
);

NAND3X1 _3404_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_24_),
    .B(_23_),
    .C(_20_),
    .Y(_19_)
);

AND2X2 _3405_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_21_),
    .B(_22_),
    .Y(_20_)
);

NOR2X1 _3406_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(\u_rf_if.issue_chunk [2]),
    .Y(_21_)
);

INVX1 _3407_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_chunk [3]),
    .Y(_22_)
);

NOR2X1 _3408_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_23_)
);

INVX1 _3409_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_idx [5]),
    .Y(_24_)
);

INVX1 _3410_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .Y(_25_)
);

AOI21X1 _3411_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_27_),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(_26_),
    .Y(_604_)
);

OAI21X1 _3412_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .B(\u_rf_if.stream_active ),
    .C(_32__bF$buf2),
    .Y(_26_)
);

INVX1 _3413_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_42_),
    .Y(_27_)
);

AOI21X1 _3414_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_30_),
    .B(_29_),
    .C(_28_),
    .Y(_605_)
);

OAI21X1 _3415_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .B(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .C(_32__bF$buf1),
    .Y(_28_)
);

OAI21X1 _3416_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_446__bF$buf3),
    .B(_445_),
    .C(\u_rf_if.stream_active ),
    .Y(_29_)
);

NAND2X1 _3417_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .B(_42_),
    .Y(_30_)
);

AOI21X1 _3418_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_38_),
    .B(_41_),
    .C(_31_),
    .Y(_606_)
);

OAI21X1 _3419_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_40_),
    .C(_32__bF$buf0),
    .Y(_31_)
);

INVX8 _3420_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf5),
    .Y(_32_)
);

NAND2X1 _3421_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .B(_39_),
    .Y(_38_)
);

NAND2X1 _3422_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_40_),
    .Y(_39_)
);

NOR2X1 _3423_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_446__bF$buf2),
    .B(_445_),
    .Y(_40_)
);

NAND2X1 _3424_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_42_),
    .Y(_41_)
);

NOR2X1 _3425_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_42_)
);

NAND2X1 _3426_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_44_),
    .B(_43_),
    .Y(rf_ready)
);

INVX1 _3427_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.ready_pulse ),
    .Y(_43_)
);

INVX2 _3428_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_wreq),
    .Y(_44_)
);

AOI21X1 _3429_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_45_),
    .B(_315_),
    .C(_450_),
    .Y(rdata0)
);

OAI21X1 _3430_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_46_),
    .B(_302_),
    .C(\u_rf_if.stream_cnt [4]),
    .Y(_45_)
);

AOI21X1 _3431_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_296_),
    .B(_47_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_46_)
);

NAND2X1 _3432_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_48_),
    .Y(_47_)
);

OAI22X1 _3433_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_295_),
    .B(_51_),
    .C(_50_),
    .D(_49_),
    .Y(_48_)
);

OAI21X1 _3434_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [22]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_49_)
);

NOR2X1 _3435_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [23]),
    .B(_446__bF$buf1),
    .Y(_50_)
);

OAI21X1 _3436_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [21]),
    .B(_446__bF$buf0),
    .C(_445_),
    .Y(_51_)
);

NOR2X1 _3437_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [20]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_295_)
);

NAND2X1 _3438_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_297_),
    .Y(_296_)
);

OAI22X1 _3439_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_301_),
    .B(_300_),
    .C(_299_),
    .D(_298_),
    .Y(_297_)
);

OAI21X1 _3440_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [18]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_298_)
);

NOR2X1 _3441_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(_446__bF$buf3),
    .Y(_299_)
);

OAI21X1 _3442_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_300_)
);

NOR2X1 _3443_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [16]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_301_)
);

NOR2X1 _3444_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_303_),
    .B(_309_),
    .Y(_302_)
);

OAI21X1 _3445_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_304_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_303_)
);

OAI22X1 _3446_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_308_),
    .B(_307_),
    .C(_306_),
    .D(_305_),
    .Y(_304_)
);

OAI21X1 _3447_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_305_)
);

NOR2X1 _3448_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(_446__bF$buf1),
    .Y(_306_)
);

OAI21X1 _3449_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [29]),
    .B(_446__bF$buf0),
    .C(_445_),
    .Y(_307_)
);

NOR2X1 _3450_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [28]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .Y(_308_)
);

NOR2X1 _3451_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_310_),
    .Y(_309_)
);

OAI22X1 _3452_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_314_),
    .B(_313_),
    .C(_312_),
    .D(_311_),
    .Y(_310_)
);

OAI21X1 _3453_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [26]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_311_)
);

NOR2X1 _3454_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(_446__bF$buf3),
    .Y(_312_)
);

OAI21X1 _3455_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [25]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_313_)
);

NOR2X1 _3456_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [24]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_314_)
);

OAI21X1 _3457_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_330_),
    .B(_316_),
    .C(_449_),
    .Y(_315_)
);

AOI21X1 _3458_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_323_),
    .C(_317_),
    .Y(_316_)
);

OAI21X1 _3459_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_318_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_317_)
);

OAI22X1 _3460_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_322_),
    .B(_321_),
    .C(_320_),
    .D(_319_),
    .Y(_318_)
);

OAI21X1 _3461_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [14]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_319_)
);

NOR2X1 _3462_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(_446__bF$buf1),
    .Y(_320_)
);

OAI21X1 _3463_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(_446__bF$buf0),
    .C(_445_),
    .Y(_321_)
);

NOR2X1 _3464_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [12]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_322_)
);

MUX2X1 _3465_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_324_),
    .B(_327_),
    .S(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_323_)
);

OAI21X1 _3466_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .B(_326_),
    .C(_325_),
    .Y(_324_)
);

NAND2X1 _3467_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [11]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .Y(_325_)
);

INVX1 _3468_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [10]),
    .Y(_326_)
);

OAI21X1 _3469_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .B(_329_),
    .C(_328_),
    .Y(_327_)
);

NAND2X1 _3470_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [9]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_328_)
);

INVX1 _3471_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [8]),
    .Y(_329_)
);

AOI21X1 _3472_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_337_),
    .C(_331_),
    .Y(_330_)
);

OAI21X1 _3473_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_332_),
    .C(_426_),
    .Y(_331_)
);

OAI22X1 _3474_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_336_),
    .B(_335_),
    .C(_334_),
    .D(_333_),
    .Y(_332_)
);

OAI21X1 _3475_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_333_)
);

NOR2X1 _3476_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [7]),
    .B(_446__bF$buf3),
    .Y(_334_)
);

OAI21X1 _3477_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [5]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_335_)
);

NOR2X1 _3478_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [4]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_336_)
);

MUX2X1 _3479_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_341_),
    .B(_338_),
    .S(_445_),
    .Y(_337_)
);

OAI21X1 _3480_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .B(_340_),
    .C(_339_),
    .Y(_338_)
);

NAND2X1 _3481_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [3]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .Y(_339_)
);

INVX1 _3482_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [2]),
    .Y(_340_)
);

OAI21X1 _3483_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .B(_343_),
    .C(_342_),
    .Y(_341_)
);

NAND2X1 _3484_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [1]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_342_)
);

INVX1 _3485_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_343_)
);

AOI21X1 _3486_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_412_),
    .B(_344_),
    .C(_450_),
    .Y(rdata1)
);

OAI21X1 _3487_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_361_),
    .B(_345_),
    .C(\u_rf_if.stream_cnt [4]),
    .Y(_344_)
);

AOI21X1 _3488_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_352_),
    .C(_346_),
    .Y(_345_)
);

OAI21X1 _3489_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_347_),
    .C(_426_),
    .Y(_346_)
);

OAI22X1 _3490_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_351_),
    .B(_350_),
    .C(_349_),
    .D(_348_),
    .Y(_347_)
);

OAI21X1 _3491_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [22]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_348_)
);

NOR2X1 _3492_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [23]),
    .B(_446__bF$buf1),
    .Y(_349_)
);

OAI21X1 _3493_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [21]),
    .B(_446__bF$buf0),
    .C(_445_),
    .Y(_350_)
);

NOR2X1 _3494_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [20]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_351_)
);

MUX2X1 _3495_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_353_),
    .B(_356_),
    .S(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_352_)
);

OAI21X1 _3496_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .B(_355_),
    .C(_354_),
    .Y(_353_)
);

NAND2X1 _3497_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [19]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .Y(_354_)
);

INVX1 _3498_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [18]),
    .Y(_355_)
);

OAI21X1 _3499_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .B(_360_),
    .C(_357_),
    .Y(_356_)
);

NAND2X1 _3500_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [17]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_357_)
);

INVX1 _3501_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [16]),
    .Y(_360_)
);

AOI21X1 _3502_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_382_),
    .C(_364_),
    .Y(_361_)
);

OAI21X1 _3503_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_374_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_364_)
);

OAI22X1 _3504_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_381_),
    .B(_380_),
    .C(_379_),
    .D(_377_),
    .Y(_374_)
);

OAI21X1 _3505_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [30]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_377_)
);

NOR2X1 _3506_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [31]),
    .B(_446__bF$buf3),
    .Y(_379_)
);

OAI21X1 _3507_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [29]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_380_)
);

NOR2X1 _3508_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [28]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_381_)
);

MUX2X1 _3509_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_383_),
    .B(_405_),
    .S(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_382_)
);

OAI21X1 _3510_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .B(_394_),
    .C(_389_),
    .Y(_383_)
);

NAND2X1 _3511_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [27]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .Y(_389_)
);

INVX1 _3512_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [26]),
    .Y(_394_)
);

OAI21X1 _3513_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .B(_409_),
    .C(_408_),
    .Y(_405_)
);

NAND2X1 _3514_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [25]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_408_)
);

INVX1 _3515_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [24]),
    .Y(_409_)
);

NAND2X1 _3516_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_449_),
    .B(_419_),
    .Y(_412_)
);

OAI22X1 _3517_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_440_),
    .B(_434_),
    .C(_420_),
    .D(_427_),
    .Y(_419_)
);

OAI21X1 _3518_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_421_),
    .C(_426_),
    .Y(_420_)
);

OAI22X1 _3519_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_425_),
    .B(_424_),
    .C(_423_),
    .D(_422_),
    .Y(_421_)
);

OAI21X1 _3520_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [7]),
    .B(_445_),
    .C(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_422_)
);

NOR2X1 _3521_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [5]),
    .B(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_423_)
);

OAI21X1 _3522_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [6]),
    .B(_445_),
    .C(_446__bF$buf1),
    .Y(_424_)
);

NOR2X1 _3523_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [4]),
    .B(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_425_)
);

INVX1 _3524_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_426_)
);

NOR2X1 _3525_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_428_),
    .Y(_427_)
);

OAI21X1 _3526_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_430_),
    .B(_429_),
    .C(_431_),
    .Y(_428_)
);

OAI21X1 _3527_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [2]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_429_)
);

NOR2X1 _3528_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [3]),
    .B(_446__bF$buf0),
    .Y(_430_)
);

OAI21X1 _3529_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [0]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .C(_432_),
    .Y(_431_)
);

AOI21X1 _3530_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_433_),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_432_)
);

INVX1 _3531_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [1]),
    .Y(_433_)
);

OAI21X1 _3532_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_435_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_434_)
);

OAI22X1 _3533_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_439_),
    .B(_438_),
    .C(_437_),
    .D(_436_),
    .Y(_435_)
);

OAI21X1 _3534_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [10]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_436_)
);

NOR2X1 _3535_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [11]),
    .B(_446__bF$buf3),
    .Y(_437_)
);

OAI21X1 _3536_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [9]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_438_)
);

NOR2X1 _3537_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [8]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_439_)
);

NOR2X1 _3538_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_448_),
    .B(_441_),
    .Y(_440_)
);

OAI22X1 _3539_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_447_),
    .B(_444_),
    .C(_443_),
    .D(_442_),
    .Y(_441_)
);

OAI21X1 _3540_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [14]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_442_)
);

NOR2X1 _3541_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [15]),
    .B(_446__bF$buf1),
    .Y(_443_)
);

OAI21X1 _3542_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [13]),
    .B(_446__bF$buf0),
    .C(_445_),
    .Y(_444_)
);

INVX4 _3543_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_445_)
);

INVX8 _3544_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_446_)
);

NOR2X1 _3545_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.read_buf1 [12]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_447_)
);

INVX4 _3546_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_448_)
);

INVX1 _3547_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_449_)
);

INVX1 _3548_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.stream_active ),
    .Y(_450_)
);

OAI21X1 _3549_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_471_),
    .B(_484__bF$buf0),
    .C(_451_),
    .Y(\u_rf_if.o_waddr [8])
);

NAND2X1 _3550_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_484__bF$buf3),
    .Y(_451_)
);

OAI21X1 _3551_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_483_),
    .B(_455_),
    .C(_452_),
    .Y(\u_rf_if.o_wdata [1])
);

NAND2X1 _3552_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_453_),
    .B(_483_),
    .Y(_452_)
);

OAI21X1 _3553_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .B(_472_),
    .C(_454_),
    .Y(_453_)
);

NAND2X1 _3554_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .B(\u_rf_if.wdata1_phase [1]),
    .Y(_454_)
);

OAI21X1 _3555_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next [0]),
    .B(_476_),
    .C(_456_),
    .Y(_455_)
);

NAND2X1 _3556_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_457_),
    .B(_476_),
    .Y(_456_)
);

INVX1 _3557_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.o_wdata0 ),
    .Y(_457_)
);

OAI21X1 _3558_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_459_),
    .B(_484__bF$buf2),
    .C(_458_),
    .Y(\u_rf_if.o_wen )
);

NAND2X1 _3559_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen0_r ),
    .B(\u_rf_if.rtrig1 ),
    .Y(_458_)
);

INVX1 _3560_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wen1_r ),
    .Y(_459_)
);

OAI21X1 _3561_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_461_),
    .B(_484__bF$buf1),
    .C(_460_),
    .Y(\u_rf_if.o_waddr [4])
);

NAND2X1 _3562_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(_484__bF$buf0),
    .Y(_460_)
);

INVX1 _3563_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(_461_)
);

OAI21X1 _3564_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_463_),
    .B(_484__bF$buf3),
    .C(_462_),
    .Y(\u_rf_if.o_waddr [5])
);

NAND2X1 _3565_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_484__bF$buf2),
    .Y(_462_)
);

INVX1 _3566_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(_463_)
);

OAI21X1 _3567_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_465_),
    .B(_484__bF$buf1),
    .C(_464_),
    .Y(\u_rf_if.o_waddr [6])
);

NAND2X1 _3568_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .B(_484__bF$buf0),
    .Y(_464_)
);

INVX1 _3569_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(_465_)
);

OAI21X1 _3570_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_467_),
    .B(_484__bF$buf3),
    .C(_466_),
    .Y(\u_rf_if.o_waddr [7])
);

NAND2X1 _3571_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(_484__bF$buf2),
    .Y(_466_)
);

INVX1 _3572_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(_467_)
);

OAI21X1 _3573_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_483_),
    .B(_473_),
    .C(_468_),
    .Y(\u_rf_if.o_wdata [0])
);

NAND2X1 _3574_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_469_),
    .B(_483_),
    .Y(_468_)
);

OAI21X1 _3575_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_472_),
    .B(_471_),
    .C(_470_),
    .Y(_469_)
);

NAND2X1 _3576_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata1_r [0]),
    .B(_471_),
    .Y(_470_)
);

INVX1 _3577_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .Y(_471_)
);

INVX1 _3578_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata1_phase [0]),
    .Y(_472_)
);

OAI21X1 _3579_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_r [0]),
    .B(_476_),
    .C(_474_),
    .Y(_473_)
);

NAND2X1 _3580_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_475_),
    .B(_476_),
    .Y(_474_)
);

INVX1 _3581_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_475_)
);

AOI21X1 _3582_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_482_),
    .B(_478_),
    .C(_477_),
    .Y(_476_)
);

OAI21X1 _3583_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [2]),
    .B(_478_),
    .C(rf_wdata0_next_to_if),
    .Y(_477_)
);

NAND3X1 _3584_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_481_),
    .B(_480_),
    .C(_479_),
    .Y(_478_)
);

NOR2X1 _3585_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_479_)
);

INVX1 _3586_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [1]),
    .Y(_480_)
);

INVX1 _3587_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_481_)
);

INVX1 _3588_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.wdata0_next_phase ),
    .Y(_482_)
);

INVX1 _3589_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_484__bF$buf1),
    .Y(_483_)
);

NAND2X1 _3590_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.rcnt [0]),
    .B(_485_),
    .Y(_484_)
);

NOR2X1 _3591_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.i_rreq ),
    .B(rf_wreq),
    .Y(_485_)
);

DFFPOSX1 _3592_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf16),
    .D(_2_),
    .Q(\u_cpu.alu.add_cy_r )
);

NAND2X1 _3593_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_36_),
    .B(_37_),
    .Y(\u_cpu.o_wdata0 )
);

DFFPOSX1 _3594_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf15),
    .D(_134_),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

DFFPOSX1 _3595_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf14),
    .D(_368_),
    .Q(\u_cpu.branch_op )
);

DFFPOSX1 _3596_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf13),
    .D(_640_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

DFFPOSX1 _3597_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf12),
    .D(_876_),
    .Q(\u_cpu.bufreg.data [25])
);

DFFPOSX1 _3598_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf11),
    .D(_1112_),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

DFFPOSX1 _3599_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf10),
    .D(_1473_),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

NOR2X1 _3600_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_sub ),
    .B(_1823_),
    .Y(rf_wdata0_next)
);

NAND2X1 _3601_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_rd_sel [0]),
    .B(\u_cpu.decode.co_rd_alu_en ),
    .Y(_1823_)
);

DFFPOSX1 _3602_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_769_),
    .Q(\u_mem_serial.bit_count [4])
);

NOR2X1 _3603_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .Y(\u_cpu.mem_if.o_wb_sel [0])
);

INVX1 _3604_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_2073_)
);

NOR2X1 _3605_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bne_or_bge ),
    .Y(_2074_)
);

OAI21X1 _3606_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_2074_),
    .C(_2073_),
    .Y(\u_cpu.mem_if.o_wb_sel [1])
);

INVX1 _3607_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_2075_)
);

OAI21X1 _3608_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .B(_2075_),
    .C(_2073_),
    .Y(\u_cpu.mem_if.o_wb_sel [2])
);

OAI21X1 _3609_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2075_),
    .B(_2074_),
    .C(_2073_),
    .Y(\u_cpu.mem_if.o_wb_sel [3])
);

INVX1 _3610_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.o_q ),
    .Y(_2076_)
);

INVX1 _3611_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_2077_)
);

OR2X2 _3612_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(gnd),
    .Y(_2078_)
);

INVX1 _3613_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_2079_)
);

NAND2X1 _3614_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_2079_),
    .Y(_2080_)
);

AOI21X1 _3615_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2080_),
    .B(_2077_),
    .C(_2078_),
    .Y(_2081_)
);

NOR2X1 _3616_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(gnd),
    .Y(_2082_)
);

INVX1 _3617_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_2083_)
);

OAI21X1 _3618_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .B(_2083_),
    .C(_2077_),
    .Y(_2084_)
);

AND2X2 _3619_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.mem_if.signbit ),
    .B(\u_cpu.decode.co_mem_signed ),
    .Y(_2085_)
);

NAND3X1 _3620_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2082_),
    .B(_2085_),
    .C(_2084_),
    .Y(_2086_)
);

OAI21X1 _3621_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2076_),
    .B(_2081_),
    .C(_2086_),
    .Y(\u_cpu.mem_if.o_rd )
);

NAND3X1 _3622_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.mem_if.signbit ),
    .B(_2082_),
    .C(_2084_),
    .Y(_2087_)
);

OAI21X1 _3623_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2076_),
    .B(_2081_),
    .C(_2087_),
    .Y(_2072_)
);

NAND2X1 _3624_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(rdata0),
    .Y(_2112_)
);

NOR2X1 _3625_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(rdata0),
    .Y(_2113_)
);

INVX1 _3626_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2113_),
    .Y(_2114_)
);

INVX1 _3627_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_op_b ),
    .Y(_2115_)
);

NAND2X1 _3628_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_sub ),
    .B(_2115_),
    .Y(_2116_)
);

INVX1 _3629_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_sub ),
    .Y(_2117_)
);

NAND2X1 _3630_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_op_b ),
    .B(_2117_),
    .Y(_2118_)
);

NAND2X1 _3631_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2116_),
    .B(_2118_),
    .Y(_2119_)
);

NAND3X1 _3632_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2112_),
    .B(_2114_),
    .C(_2119_),
    .Y(_2120_)
);

INVX1 _3633_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2112_),
    .Y(_2121_)
);

OR2X2 _3634_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_sub ),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2122_)
);

NAND2X1 _3635_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_sub ),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2123_)
);

NAND2X1 _3636_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2123_),
    .B(_2122_),
    .Y(_2124_)
);

OAI21X1 _3637_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2121_),
    .B(_2113_),
    .C(_2124_),
    .Y(_2125_)
);

NAND3X1 _3638_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_rd_sel [0]),
    .B(_2125_),
    .C(_2120_),
    .Y(_2126_)
);

NAND3X1 _3639_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_cnt0 ),
    .B(\u_cpu.alu.cmp_r ),
    .C(\u_cpu.state.i_alu_rd_sel1 ),
    .Y(_2127_)
);

INVX1 _3640_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_2128_)
);

NAND2X1 _3641_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rdata0),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2129_)
);

INVX1 _3642_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rdata0),
    .Y(_2130_)
);

NAND2X1 _3643_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2130_),
    .B(_2115_),
    .Y(_2131_)
);

NAND2X1 _3644_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2129_),
    .B(_2131_),
    .Y(_2132_)
);

OAI22X1 _3645_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2128_),
    .B(_2129_),
    .C(\u_cpu.bne_or_bge ),
    .D(_2132_),
    .Y(_2133_)
);

AOI21X1 _3646_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2133_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(\u_cpu.alu.i_buf ),
    .Y(_2134_)
);

NAND3X1 _3647_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2126_),
    .B(_2127_),
    .C(_2134_),
    .Y(\u_cpu.alu.o_rd )
);

NAND2X1 _3648_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2125_),
    .B(_2120_),
    .Y(_2135_)
);

AOI21X1 _3649_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2119_),
    .B(_2114_),
    .C(_2121_),
    .Y(_2136_)
);

NAND3X1 _3650_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_cmp_sig ),
    .B(_2129_),
    .C(_2131_),
    .Y(_2137_)
);

INVX1 _3651_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2137_),
    .Y(_2138_)
);

NAND2X1 _3652_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2138_),
    .B(_2136_),
    .Y(_2139_)
);

OAI21X1 _3653_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2113_),
    .B(_2124_),
    .C(_2112_),
    .Y(_2140_)
);

AOI21X1 _3654_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2140_),
    .B(_2137_),
    .C(\u_cpu.alu.i_cmp_eq ),
    .Y(_2141_)
);

INVX1 _3655_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_cmp_eq ),
    .Y(_2142_)
);

NOR2X1 _3656_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_cnt0 ),
    .B(\u_cpu.alu.cmp_r ),
    .Y(_2143_)
);

NOR2X1 _3657_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2142_),
    .B(_2143_),
    .Y(_2144_)
);

AOI22X1 _3658_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2135_),
    .B(_2144_),
    .C(_2141_),
    .D(_2139_),
    .Y(_2145_)
);

INVX1 _3659_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2145_),
    .Y(\u_cpu.alu.o_cmp )
);

INVX1 _3660_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_en ),
    .Y(_2146_)
);

NAND2X1 _3661_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_sub ),
    .B(_2146_),
    .Y(_2147_)
);

OAI21X1 _3662_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2146_),
    .B(_2136_),
    .C(_2147_),
    .Y(_2_)
);

NAND2X1 _3663_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_2146_),
    .Y(_2148_)
);

OAI21X1 _3664_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2146_),
    .B(_2145_),
    .C(_2148_),
    .Y(_2111_)
);

DFFPOSX1 _3665_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf9),
    .D(_2111_),
    .Q(\u_cpu.alu.cmp_r )
);

NOR2X1 _3666_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_33_)
);

NOR3X1 _3667_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_34_)
);

NAND2X1 _3668_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.rd_en ),
    .B(\u_cpu.alu.i_en ),
    .Y(_35_)
);

AOI21X1 _3669_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_34_),
    .B(_33_),
    .C(_35_),
    .Y(\u_cpu.o_wen0 )
);

NAND2X1 _3670_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_rd_alu_en ),
    .B(\u_cpu.alu.o_rd ),
    .Y(_36_)
);

AOI21X1 _3671_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_rd_mem_en ),
    .B(\u_cpu.mem_if.o_rd ),
    .C(\u_cpu.ctrl.o_rd ),
    .Y(_37_)
);

NOR2X1 _3672_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .B(gnd),
    .Y(_138_)
);

NAND2X1 _3673_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_two_stage_op ),
    .B(_138_),
    .Y(_139_)
);

INVX2 _3674_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_139_),
    .Y(\u_cpu.bufreg.i_init )
);

AND2X2 _3675_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .Y(_140_)
);

NAND3X1 _3676_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .C(_140_),
    .Y(_141_)
);

INVX2 _3677_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_141_),
    .Y(\u_cpu.bufreg.i_cnt_done )
);

NOR2X1 _3678_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_142_)
);

NOR2X1 _3679_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_143_)
);

NAND2X1 _3680_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_142_),
    .B(_143_),
    .Y(\u_cpu.alu.i_en )
);

INVX1 _3681_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_en ),
    .Y(_144_)
);

OAI21X1 _3682_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(_138_),
    .C(\u_cpu.decode.co_two_stage_op ),
    .Y(_145_)
);

AND2X2 _3683_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.bufreg.i_shift_op ),
    .Y(_146_)
);

OAI21X1 _3684_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.o_sh_done ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_146_),
    .Y(_147_)
);

OAI21X1 _3685_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_145_),
    .B(_144_),
    .C(_147_),
    .Y(\u_cpu.bufreg.i_en )
);

AND2X2 _3686_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_139_),
    .B(\u_cpu.decode.co_rd_op ),
    .Y(\u_cpu.rd_en )
);

NAND3X1 _3687_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.dbus_en ),
    .C(_144_),
    .Y(_148_)
);

NOR2X1 _3688_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .B(_148_),
    .Y(\u_cpu.o_dbus_cyc )
);

INVX1 _3689_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .Y(_149_)
);

INVX1 _3690_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_150_)
);

NAND3X1 _3691_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.init_done ),
    .B(_142_),
    .C(_143_),
    .Y(_151_)
);

OAI22X1 _3692_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_139_),
    .B(_141_),
    .C(_150_),
    .D(_151_),
    .Y(_152_)
);

INVX1 _3693_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shift_op ),
    .Y(_153_)
);

INVX1 _3694_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.o_sh_done ),
    .Y(_154_)
);

AOI21X1 _3695_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_154_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_153_),
    .Y(_155_)
);

NAND2X1 _3696_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_155_),
    .B(_152_),
    .Y(_156_)
);

INVX1 _3697_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .Y(_157_)
);

NAND2X1 _3698_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_alu_rd_sel1 ),
    .B(\u_cpu.decode.co_rd_alu_en ),
    .Y(_158_)
);

NAND2X1 _3699_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_157_),
    .B(_158_),
    .Y(_159_)
);

NAND3X1 _3700_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_159_),
    .B(\u_cpu.bufreg.i_init ),
    .C(\u_cpu.bufreg.i_cnt_done ),
    .Y(_160_)
);

NAND3X1 _3701_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_149_),
    .B(_160_),
    .C(_156_),
    .Y(rf_wreq)
);

INVX1 _3702_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf4),
    .Y(_161_)
);

AND2X2 _3703_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_161_),
    .B(\u_cpu.state.ibus_cyc ),
    .Y(\u_cpu.o_ibus_cyc )
);

NAND2X1 _3704_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_162_)
);

INVX2 _3705_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_163_)
);

DFFPOSX1 _3706_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_788_),
    .Q(\u_mem_serial.shift_rx [19])
);

DFFPOSX1 _3707_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_768_),
    .Q(\u_mem_serial.active_we )
);

INVX2 _3708_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_165_)
);

NAND2X1 _3709_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_165_),
    .B(_163_),
    .Y(_166_)
);

DFFPOSX1 _3710_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_781_),
    .Q(\u_mem_serial.state [1])
);

DFFPOSX1 _3711_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_767_),
    .Q(\u_mem_serial.bit_count [5])
);

INVX1 _3712_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_168_)
);

NAND2X1 _3713_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_168_),
    .B(_140_),
    .Y(_169_)
);

NOR2X1 _3714_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(_169_),
    .Y(\u_cpu.bufreg2.i_cnt7 )
);

NOR2X1 _3715_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_166_),
    .Y(\u_cpu.cnt0to3 )
);

DFFPOSX1 _3716_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_791_),
    .Q(\u_mem_serial.shift_rx [16])
);

DFFPOSX1 _3717_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_766_),
    .Q(\u_mem_serial.shift_rx [27])
);

NAND2X1 _3718_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [2]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_171_)
);

INVX1 _3719_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_171_),
    .Y(\u_cpu.cnt2 )
);

NAND2X1 _3720_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_172_)
);

INVX1 _3721_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_172_),
    .Y(\u_cpu.bufreg.i_cnt1 )
);

NAND2X1 _3722_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_173_)
);

INVX2 _3723_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_173_),
    .Y(\u_cpu.alu.i_cnt0 )
);

NOR2X1 _3724_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_144_),
    .Y(\u_cpu.ctrl.i_pc_en )
);

OAI21X1 _3725_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_165_),
    .B(_168_),
    .C(_163_),
    .Y(\u_cpu.cnt12to31 )
);

AND2X2 _3726_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_161_),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_128_)
);

AND2X2 _3727_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_161_),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_129_)
);

INVX1 _3728_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_174_)
);

NAND2X1 _3729_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_init ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .Y(_175_)
);

NAND3X1 _3730_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_176_)
);

OAI21X1 _3731_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_163_),
    .B(_176_),
    .C(_161_),
    .Y(_177_)
);

INVX1 _3732_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_178_)
);

AND2X2 _3733_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_178_),
    .B(\u_cpu.alu.o_cmp ),
    .Y(_179_)
);

OAI21X1 _3734_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.o_cmp ),
    .B(_178_),
    .C(\u_cpu.cond_branch ),
    .Y(_180_)
);

NOR2X1 _3735_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf3),
    .B(_157_),
    .Y(_181_)
);

OAI21X1 _3736_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_180_),
    .B(_179_),
    .C(_181_),
    .Y(_182_)
);

OAI22X1 _3737_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_174_),
    .B(_177_),
    .C(_182_),
    .D(_175_),
    .Y(_130_)
);

OAI21X1 _3738_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_163_),
    .B(_176_),
    .C(\u_cpu.state.init_done ),
    .Y(_183_)
);

AOI21X1 _3739_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_175_),
    .B(_183_),
    .C(rst_bF$buf2),
    .Y(_131_)
);

NOR2X1 _3740_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf7),
    .B(_177_),
    .Y(_184_)
);

NAND2X1 _3741_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.ibus_cyc ),
    .B(_184_),
    .Y(_185_)
);

AOI21X1 _3742_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_en ),
    .B(_139_),
    .C(rst_bF$buf1),
    .Y(_186_)
);

OAI21X1 _3743_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_184_),
    .B(_186_),
    .C(_185_),
    .Y(_132_)
);

INVX1 _3744_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_ready),
    .Y(_187_)
);

OAI21X1 _3745_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_163_),
    .B(_162_),
    .C(\u_cpu.state.cnt_r [3]),
    .Y(_188_)
);

AOI21X1 _3746_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_188_),
    .B(_187_),
    .C(rst_bF$buf0),
    .Y(_133_)
);

INVX1 _3747_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_189_)
);

OAI21X1 _3748_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_165_),
    .B(_189_),
    .C(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_190_)
);

AOI21X1 _3749_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_169_),
    .B(_190_),
    .C(rst_bF$buf10),
    .Y(_134_)
);

AOI21X1 _3750_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_163_),
    .B(_176_),
    .C(_177_),
    .Y(_135_)
);

OAI21X1 _3751_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_165_),
    .B(_189_),
    .C(_161_),
    .Y(_191_)
);

AOI21X1 _3752_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_165_),
    .B(_189_),
    .C(_191_),
    .Y(_136_)
);

AND2X2 _3753_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_161_),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_137_)
);

DFFPOSX1 _3754_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf8),
    .D(_133_),
    .Q(\u_cpu.state.cnt_r [0])
);

DFFPOSX1 _3755_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf7),
    .D(_132_),
    .Q(\u_cpu.state.ibus_cyc )
);

DFFPOSX1 _3756_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf6),
    .D(_128_),
    .Q(\u_cpu.state.cnt_r [3])
);

DFFPOSX1 _3757_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf5),
    .D(_131_),
    .Q(\u_cpu.state.init_done )
);

DFFPOSX1 _3758_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf4),
    .D(_137_),
    .Q(\u_cpu.state.cnt_r [2])
);

DFFPOSX1 _3759_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf3),
    .D(_130_),
    .Q(\u_cpu.ctrl.i_jump )
);

DFFPOSX1 _3760_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf2),
    .D(_129_),
    .Q(\u_cpu.state.cnt_r [1])
);

DFFPOSX1 _3761_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf1),
    .D(_136_),
    .Q(\u_cpu.state.o_cnt [2])
);

DFFPOSX1 _3762_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf0),
    .D(_135_),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

INVX2 _3763_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .Y(\u_cpu.cond_branch )
);

INVX1 _3764_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(\u_cpu.decode.co_mem_signed )
);

INVX1 _3765_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_371_)
);

INVX1 _3766_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_372_)
);

NAND3X1 _3767_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_signed ),
    .B(_371_),
    .C(_372_),
    .Y(_373_)
);

INVX1 _3768_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_373_),
    .Y(\u_cpu.alu.i_rd_sel [0])
);

DFFPOSX1 _3769_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_780_),
    .Q(\u_mem_serial.shift_rx [24])
);

NAND2X1 _3770_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_375_)
);

INVX1 _3771_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_375_),
    .Y(_376_)
);

DFFPOSX1 _3772_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_765_),
    .Q(\u_mem_serial.shift_rx [28])
);

INVX1 _3773_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_378_)
);

DFFPOSX1 _3774_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_787_),
    .Q(mem_ibus_ack)
);

DFFPOSX1 _3775_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_764_),
    .Q(\u_mem_serial.shift_rx [29])
);

DFFPOSX1 _3776_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(clk_sys_bF$buf45),
    .Q(\u_mem_serial.clk_sys_prev )
);

DFFPOSX1 _3777_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_763_),
    .Q(\u_mem_serial.shift_rx [30])
);

DFFPOSX1 _3778_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_779_),
    .Q(\u_mem_serial.req_pending )
);

DFFPOSX1 _3779_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_762_),
    .Q(\u_mem_serial.state [0])
);

DFFPOSX1 _3780_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_778_),
    .Q(\u_mem_serial.shift_rx [31])
);

DFFPOSX1 _3781_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_761_),
    .Q(\u_mem_serial.shift_rx [0])
);

DFFPOSX1 _3782_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_786_),
    .Q(\u_mem_serial.shift_rx [20])
);

NOR2X1 _3783_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(\u_cpu.alu.i_cmp_eq )
);

NOR2X1 _3784_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_372_),
    .Y(\u_cpu.state.i_alu_rd_sel1 )
);

DFFPOSX1 _3785_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_760_),
    .Q(\u_mem_serial.shift_rx [1])
);

INVX1 _3786_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_384_)
);

INVX1 _3787_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_385_)
);

INVX2 _3788_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .Y(_386_)
);

NAND2X1 _3789_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_386_),
    .B(_371_),
    .Y(_387_)
);

NOR2X1 _3790_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_387_),
    .Y(_388_)
);

OAI21X1 _3791_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_384_),
    .B(_385_),
    .C(_388_),
    .Y(\u_cpu.alu.i_sub )
);

DFFPOSX1 _3792_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_777_),
    .Q(\u_mem_serial.shift_rx [25])
);

DFFPOSX1 _3793_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_759_),
    .Q(\u_mem_serial.shift_rx [2])
);

INVX2 _3794_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.bufreg.i_imm_en )
);

NAND2X1 _3795_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.cond_branch ),
    .Y(_390_)
);

OAI21X1 _3796_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.cond_branch ),
    .B(\u_cpu.branch_op ),
    .C(_390_),
    .Y(_391_)
);

AND2X2 _3797_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_391_),
    .B(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.decode.co_immdec_en [0])
);

INVX1 _3798_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_390_),
    .Y(_392_)
);

NOR2X1 _3799_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.cond_branch ),
    .Y(_393_)
);

OAI21X1 _3800_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_393_),
    .B(_392_),
    .C(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.decode.co_rd_op )
);

DFFPOSX1 _3801_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_747_),
    .Q(\u_mem_serial.shift_rx [14])
);

DFFPOSX1 _3802_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_790_),
    .Q(\u_mem_serial.shift_rx [17])
);

DFFPOSX1 _3803_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_758_),
    .Q(\u_mem_serial.shift_rx [3])
);

NAND2X1 _3804_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_376_),
    .Y(_395_)
);

INVX1 _3805_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_395_),
    .Y(\u_cpu.csr_imm_en )
);

INVX1 _3806_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [1]),
    .Y(_396_)
);

NAND2X1 _3807_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(_396_),
    .Y(_397_)
);

OAI21X1 _3808_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_397_),
    .Y(_398_)
);

OAI21X1 _3809_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_signed ),
    .B(_375_),
    .C(_398_),
    .Y(\u_cpu.decode.co_immdec_en [1])
);

OAI21X1 _3810_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_386_),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_392_),
    .Y(\u_cpu.decode.co_immdec_en [2])
);

OAI21X1 _3811_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .C(_396_),
    .Y(_399_)
);

OAI21X1 _3812_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_396_),
    .C(_399_),
    .Y(_400_)
);

NOR2X1 _3813_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_401_)
);

AOI21X1 _3814_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_376_),
    .B(\u_cpu.decode.co_ebreak ),
    .C(_401_),
    .Y(_402_)
);

NAND2X1 _3815_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_400_),
    .B(_402_),
    .Y(\u_cpu.ctrl.i_pc_rel )
);

NOR2X1 _3816_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.cond_branch ),
    .B(_386_),
    .Y(\u_cpu.ctrl.i_jal_or_jalr )
);

AND2X2 _3817_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_393_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.ctrl.i_utype )
);

NAND3X1 _3818_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_401_),
    .Y(\u_cpu.decode.co_immdec_en [3])
);

OAI21X1 _3819_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [1]),
    .B(\u_cpu.cond_branch ),
    .C(\u_cpu.branch_op ),
    .Y(\u_cpu.bufreg.i_rs1_en )
);

AOI21X1 _3820_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.cond_branch ),
    .B(\u_cpu.decode.opcode [1]),
    .C(\u_cpu.bufreg.i_rs1_en ),
    .Y(\u_cpu.bufreg.i_clr_lsb )
);

NOR2X1 _3821_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_386_),
    .Y(\u_cpu.decode.co_immdec_ctrl [2])
);

NOR2X1 _3822_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.decode.co_rd_mem_en )
);

OAI21X1 _3823_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_397_),
    .Y(\u_cpu.decode.co_immdec_ctrl [1])
);

NAND2X1 _3824_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.cond_branch ),
    .B(_386_),
    .Y(_403_)
);

NOR2X1 _3825_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(_403_),
    .Y(\u_cpu.decode.co_rd_alu_en )
);

NOR2X1 _3826_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.dbus_en )
);

NOR2X1 _3827_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.bufreg.i_shift_op )
);

MUX2X1 _3828_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_mem_signed ),
    .B(\u_cpu.bne_or_bge ),
    .S(\u_cpu.decode.co_mem_word ),
    .Y(_404_)
);

OAI21X1 _3829_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_403_),
    .B(_404_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.decode.co_two_stage_op )
);

NOR2X1 _3830_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_390_),
    .B(_397_),
    .Y(\u_cpu.decode.co_immdec_ctrl [0])
);

OAI21X1 _3831_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(\u_cpu.alu.i_cmp_sig )
);

DFFPOSX1 _3832_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_776_),
    .Q(\u_mem_serial.shift_rx [26])
);

DFFPOSX1 _3833_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_757_),
    .Q(\u_mem_serial.shift_rx [4])
);

NAND2X1 _3834_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [13]),
    .B(rf_rreq_bF$buf6),
    .Y(_406_)
);

OAI21X1 _3835_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf5),
    .B(_372_),
    .C(_406_),
    .Y(_358_)
);

NAND2X1 _3836_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf4),
    .B(\u_cpu.decode.i_wb_rdt [12]),
    .Y(_407_)
);

OAI21X1 _3837_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf3),
    .B(_371_),
    .C(_407_),
    .Y(_359_)
);

DFFPOSX1 _3838_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_785_),
    .Q(\u_mem_serial.shift_rx [21])
);

DFFPOSX1 _3839_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_756_),
    .Q(\u_mem_serial.shift_rx [5])
);

DFFPOSX1 _3840_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_775_),
    .Q(\u_mem_serial.bit_count [6])
);

DFFPOSX1 _3841_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_755_),
    .Q(\u_mem_serial.shift_rx [6])
);

NAND2X1 _3842_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.decode.i_wb_rdt [14]),
    .Y(_410_)
);

OAI21X1 _3843_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf1),
    .B(\u_cpu.decode.co_mem_signed ),
    .C(_410_),
    .Y(_362_)
);

NAND2X1 _3844_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .Y(_411_)
);

OAI21X1 _3845_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf7),
    .B(_378_),
    .C(_411_),
    .Y(_363_)
);

DFFPOSX1 _3846_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_792_),
    .Q(_2158_)
);

DFFPOSX1 _3847_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_754_),
    .Q(\u_mem_serial.shift_rx [7])
);

NAND2X1 _3848_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.decode.i_wb_rdt [5]),
    .Y(_413_)
);

OAI21X1 _3849_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf5),
    .B(_385_),
    .C(_413_),
    .Y(_365_)
);

NAND2X1 _3850_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf4),
    .B(\u_cpu.decode.i_wb_rdt [4]),
    .Y(_414_)
);

OAI21X1 _3851_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf3),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_414_),
    .Y(_366_)
);

NAND2X1 _3852_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.decode.i_wb_rdt [3]),
    .Y(_415_)
);

OAI21X1 _3853_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf1),
    .B(_396_),
    .C(_415_),
    .Y(_367_)
);

NAND2X1 _3854_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.i_wb_rdt [6]),
    .Y(_416_)
);

OAI21X1 _3855_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf7),
    .B(_386_),
    .C(_416_),
    .Y(_368_)
);

NAND2X1 _3856_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.decode.i_wb_rdt [30]),
    .Y(_417_)
);

OAI21X1 _3857_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf5),
    .B(_384_),
    .C(_417_),
    .Y(_369_)
);

NAND2X1 _3858_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf4),
    .B(\u_cpu.decode.i_wb_rdt [2]),
    .Y(_418_)
);

OAI21X1 _3859_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf3),
    .B(\u_cpu.cond_branch ),
    .C(_418_),
    .Y(_370_)
);

DFFPOSX1 _3860_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf44),
    .D(_367_),
    .Q(\u_cpu.decode.opcode [1])
);

DFFPOSX1 _3861_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf43),
    .D(_366_),
    .Q(\u_cpu.decode.opcode [2])
);

DFFPOSX1 _3862_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf42),
    .D(_365_),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

DFFPOSX1 _3863_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_774_),
    .Q(\u_mem_serial.active_ibus )
);

DFFPOSX1 _3864_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf41),
    .D(_363_),
    .Q(\u_cpu.decode.co_ebreak )
);

DFFPOSX1 _3865_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf40),
    .D(_362_),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

DFFPOSX1 _3866_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_753_),
    .Q(\u_mem_serial.shift_rx [8])
);

DFFPOSX1 _3867_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf3),
    .D(_784_),
    .Q(mem_dbus_ack)
);

DFFPOSX1 _3868_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf39),
    .D(_359_),
    .Q(\u_cpu.bne_or_bge )
);

DFFPOSX1 _3869_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf38),
    .D(_358_),
    .Q(\u_cpu.decode.co_mem_word )
);

DFFPOSX1 _3870_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf37),
    .D(_370_),
    .Q(\u_cpu.decode.opcode [0])
);

DFFPOSX1 _3871_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf36),
    .D(_369_),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

MUX2X1 _3872_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(rreg1[0]),
    .S(\u_cpu.decode.co_immdec_ctrl [0]),
    .Y(_653_)
);

INVX1 _3873_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_654_)
);

NOR2X1 _3874_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm_en ),
    .B(_654_),
    .Y(_655_)
);

NAND2X1 _3875_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_cnt_done ),
    .B(_655_),
    .Y(_656_)
);

OAI21X1 _3876_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_cnt_done ),
    .B(_653_),
    .C(_656_),
    .Y(\u_cpu.bufreg.i_imm )
);

NAND2X1 _3877_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.decode.i_wb_rdt [31]),
    .Y(_657_)
);

OAI21X1 _3878_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf1),
    .B(_654_),
    .C(_657_),
    .Y(_626_)
);

OR2X2 _3879_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[0]),
    .B(\u_cpu.branch_op ),
    .Y(_658_)
);

OAI21X1 _3880_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm_en ),
    .B(_654_),
    .C(\u_cpu.branch_op ),
    .Y(_659_)
);

AOI21X1 _3881_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_659_),
    .B(_658_),
    .C(rf_rreq_bF$buf0),
    .Y(_660_)
);

INVX2 _3882_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf7),
    .Y(_661_)
);

INVX1 _3883_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_en ),
    .Y(_662_)
);

INVX1 _3884_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_immdec_en [1]),
    .Y(_663_)
);

OAI21X1 _3885_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_662_),
    .B(_663_),
    .C(_661_),
    .Y(_664_)
);

INVX4 _3886_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_664_),
    .Y(_665_)
);

NAND2X1 _3887_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[4]),
    .B(_665__bF$buf3),
    .Y(_666_)
);

OAI21X1 _3888_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .B(\u_cpu.decode.i_wb_rdt [19]),
    .C(_664_),
    .Y(_667_)
);

OAI21X1 _3889_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_667_),
    .B(_660_),
    .C(_666_),
    .Y(_627_)
);

INVX1 _3890_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_668_)
);

NAND2X1 _3891_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .B(_662_),
    .Y(_669_)
);

AND2X2 _3892_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.decode.i_wb_rdt [7]),
    .Y(_670_)
);

AOI21X1 _3893_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_655_),
    .B(_661_),
    .C(_670_),
    .Y(_671_)
);

MUX2X1 _3894_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_671_),
    .B(_668_),
    .S(_669_),
    .Y(_628_)
);

INVX1 _3895_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_immdec_ctrl [2]),
    .Y(_672_)
);

INVX1 _3896_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_immdec_ctrl [1]),
    .Y(_673_)
);

NAND2X1 _3897_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_673_),
    .Y(_674_)
);

INVX1 _3898_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm_en ),
    .Y(_675_)
);

NAND3X1 _3899_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(\u_cpu.decode.co_immdec_ctrl [1]),
    .C(_675_),
    .Y(_676_)
);

NAND3X1 _3900_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_672_),
    .B(_674_),
    .C(_676_),
    .Y(_677_)
);

NAND2X1 _3901_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_immdec_ctrl [2]),
    .B(_668_),
    .Y(_678_)
);

AOI21X1 _3902_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_677_),
    .B(_678_),
    .C(rf_rreq_bF$buf5),
    .Y(_679_)
);

INVX1 _3903_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.co_immdec_en [3]),
    .Y(_680_)
);

OAI21X1 _3904_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_662_),
    .B(_680_),
    .C(_661_),
    .Y(_681_)
);

OAI21X1 _3905_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .B(\u_cpu.decode.i_wb_rdt [30]),
    .C(_681_),
    .Y(_682_)
);

INVX2 _3906_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_681_),
    .Y(_683_)
);

NAND2X1 _3907_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .B(_683_),
    .Y(_684_)
);

OAI21X1 _3908_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_682_),
    .B(_679_),
    .C(_684_),
    .Y(_629_)
);

OAI21X1 _3909_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf4),
    .B(\u_cpu.decode.co_immdec_en [2]),
    .C(_669_),
    .Y(_685_)
);

MUX2X1 _3910_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [24]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .S(rf_rreq_bF$buf3),
    .Y(_686_)
);

NAND2X1 _3911_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[4]),
    .B(_685_),
    .Y(_687_)
);

OAI21X1 _3912_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_685_),
    .B(_686_),
    .C(_687_),
    .Y(_630_)
);

OAI21X1 _3913_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.decode.co_immdec_en [0]),
    .C(_669_),
    .Y(_688_)
);

MUX2X1 _3914_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [11]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .S(rf_rreq_bF$buf1),
    .Y(_689_)
);

NAND2X1 _3915_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_688_),
    .Y(_690_)
);

OAI21X1 _3916_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_688_),
    .B(_689_),
    .C(_690_),
    .Y(_631_)
);

MUX2X1 _3917_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [18]),
    .B(rreg0[4]),
    .S(rf_rreq_bF$buf0),
    .Y(_691_)
);

NAND2X1 _3918_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[3]),
    .B(_665__bF$buf2),
    .Y(_692_)
);

OAI21X1 _3919_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665__bF$buf1),
    .B(_691_),
    .C(_692_),
    .Y(_632_)
);

MUX2X1 _3920_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [17]),
    .B(rreg0[3]),
    .S(rf_rreq_bF$buf7),
    .Y(_693_)
);

NAND2X1 _3921_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[2]),
    .B(_665__bF$buf0),
    .Y(_694_)
);

OAI21X1 _3922_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665__bF$buf3),
    .B(_693_),
    .C(_694_),
    .Y(_633_)
);

MUX2X1 _3923_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [16]),
    .B(rreg0[2]),
    .S(rf_rreq_bF$buf6),
    .Y(_695_)
);

NAND2X1 _3924_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[1]),
    .B(_665__bF$buf2),
    .Y(_696_)
);

OAI21X1 _3925_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665__bF$buf1),
    .B(_695_),
    .C(_696_),
    .Y(_634_)
);

MUX2X1 _3926_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [15]),
    .B(rreg0[1]),
    .S(rf_rreq_bF$buf5),
    .Y(_697_)
);

NAND2X1 _3927_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm ),
    .B(_665__bF$buf0),
    .Y(_698_)
);

OAI21X1 _3928_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665__bF$buf3),
    .B(_697_),
    .C(_698_),
    .Y(_635_)
);

MUX2X1 _3929_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [14]),
    .B(\u_cpu.csr_imm ),
    .S(rf_rreq_bF$buf4),
    .Y(_699_)
);

NAND2X1 _3930_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .B(_665__bF$buf2),
    .Y(_700_)
);

OAI21X1 _3931_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665__bF$buf1),
    .B(_699_),
    .C(_700_),
    .Y(_636_)
);

MUX2X1 _3932_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [13]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .S(rf_rreq_bF$buf3),
    .Y(_701_)
);

NAND2X1 _3933_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .B(_665__bF$buf0),
    .Y(_702_)
);

OAI21X1 _3934_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665__bF$buf3),
    .B(_701_),
    .C(_702_),
    .Y(_637_)
);

MUX2X1 _3935_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [12]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .S(rf_rreq_bF$buf2),
    .Y(_703_)
);

NAND2X1 _3936_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .B(_665__bF$buf2),
    .Y(_704_)
);

OAI21X1 _3937_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665__bF$buf1),
    .B(_703_),
    .C(_704_),
    .Y(_638_)
);

AND2X2 _3938_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf1),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .Y(_705_)
);

AOI21X1 _3939_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .C(_705_),
    .Y(_706_)
);

NAND2X1 _3940_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_665__bF$buf0),
    .Y(_707_)
);

OAI21X1 _3941_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_665__bF$buf3),
    .B(_706_),
    .C(_707_),
    .Y(_639_)
);

MUX2X1 _3942_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(rf_rreq_bF$buf0),
    .Y(_708_)
);

NAND2X1 _3943_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_683_),
    .Y(_709_)
);

OAI21X1 _3944_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_683_),
    .B(_708_),
    .C(_709_),
    .Y(_640_)
);

MUX2X1 _3945_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(rf_rreq_bF$buf7),
    .Y(_710_)
);

NAND2X1 _3946_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_683_),
    .Y(_711_)
);

OAI21X1 _3947_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_683_),
    .B(_710_),
    .C(_711_),
    .Y(_641_)
);

MUX2X1 _3948_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(rf_rreq_bF$buf6),
    .Y(_712_)
);

NAND2X1 _3949_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_683_),
    .Y(_713_)
);

OAI21X1 _3950_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_683_),
    .B(_712_),
    .C(_713_),
    .Y(_642_)
);

MUX2X1 _3951_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(rf_rreq_bF$buf5),
    .Y(_714_)
);

NAND2X1 _3952_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_683_),
    .Y(_715_)
);

OAI21X1 _3953_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_683_),
    .B(_714_),
    .C(_715_),
    .Y(_643_)
);

MUX2X1 _3954_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(rf_rreq_bF$buf4),
    .Y(_716_)
);

NAND2X1 _3955_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_683_),
    .Y(_717_)
);

OAI21X1 _3956_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_683_),
    .B(_716_),
    .C(_717_),
    .Y(_644_)
);

MUX2X1 _3957_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [23]),
    .B(rreg1[4]),
    .S(rf_rreq_bF$buf3),
    .Y(_718_)
);

NAND2X1 _3958_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[3]),
    .B(_685_),
    .Y(_719_)
);

OAI21X1 _3959_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_685_),
    .B(_718_),
    .C(_719_),
    .Y(_645_)
);

MUX2X1 _3960_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [22]),
    .B(rreg1[3]),
    .S(rf_rreq_bF$buf2),
    .Y(_720_)
);

NAND2X1 _3961_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[2]),
    .B(_685_),
    .Y(_721_)
);

OAI21X1 _3962_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_685_),
    .B(_720_),
    .C(_721_),
    .Y(_646_)
);

MUX2X1 _3963_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [21]),
    .B(rreg1[2]),
    .S(rf_rreq_bF$buf1),
    .Y(_722_)
);

NAND2X1 _3964_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[1]),
    .B(_685_),
    .Y(_723_)
);

OAI21X1 _3965_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_685_),
    .B(_722_),
    .C(_723_),
    .Y(_647_)
);

AOI21X1 _3966_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .B(rreg1[1]),
    .C(_705_),
    .Y(_724_)
);

NAND2X1 _3967_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[0]),
    .B(_685_),
    .Y(_725_)
);

OAI21X1 _3968_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_685_),
    .B(_724_),
    .C(_725_),
    .Y(_648_)
);

MUX2X1 _3969_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [10]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .S(rf_rreq_bF$buf0),
    .Y(_726_)
);

NAND2X1 _3970_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(_688_),
    .Y(_727_)
);

OAI21X1 _3971_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_688_),
    .B(_726_),
    .C(_727_),
    .Y(_649_)
);

MUX2X1 _3972_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [9]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .S(rf_rreq_bF$buf7),
    .Y(_728_)
);

NAND2X1 _3973_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .B(_688_),
    .Y(_729_)
);

OAI21X1 _3974_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_688_),
    .B(_728_),
    .C(_729_),
    .Y(_650_)
);

MUX2X1 _3975_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [8]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .S(rf_rreq_bF$buf6),
    .Y(_730_)
);

NAND2X1 _3976_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_688_),
    .Y(_731_)
);

OAI21X1 _3977_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_688_),
    .B(_730_),
    .C(_731_),
    .Y(_651_)
);

AOI21X1 _3978_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_661_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .C(_670_),
    .Y(_732_)
);

NAND2X1 _3979_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(_688_),
    .Y(_733_)
);

OAI21X1 _3980_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_688_),
    .B(_732_),
    .C(_733_),
    .Y(_652_)
);

DFFPOSX1 _3981_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf35),
    .D(_639_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

DFFPOSX1 _3982_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf34),
    .D(_638_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

DFFPOSX1 _3983_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf33),
    .D(_637_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

DFFPOSX1 _3984_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf32),
    .D(_636_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

DFFPOSX1 _3985_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf31),
    .D(_635_),
    .Q(\u_cpu.csr_imm )
);

DFFPOSX1 _3986_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf30),
    .D(_634_),
    .Q(rreg0[1])
);

DFFPOSX1 _3987_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf29),
    .D(_633_),
    .Q(rreg0[2])
);

DFFPOSX1 _3988_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf28),
    .D(_632_),
    .Q(rreg0[3])
);

DFFPOSX1 _3989_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf27),
    .D(_631_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

DFFPOSX1 _3990_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf26),
    .D(_630_),
    .Q(rreg1[4])
);

DFFPOSX1 _3991_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf25),
    .D(_629_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

DFFPOSX1 _3992_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf24),
    .D(_628_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

DFFPOSX1 _3993_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf23),
    .D(_627_),
    .Q(rreg0[4])
);

DFFPOSX1 _3994_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf22),
    .D(_626_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

DFFPOSX1 _3995_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf21),
    .D(_652_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0])
);

DFFPOSX1 _3996_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf20),
    .D(_651_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1])
);

DFFPOSX1 _3997_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf19),
    .D(_650_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2])
);

DFFPOSX1 _3998_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf18),
    .D(_649_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3])
);

DFFPOSX1 _3999_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf17),
    .D(_648_),
    .Q(rreg1[0])
);

DFFPOSX1 _4000_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf16),
    .D(_647_),
    .Q(rreg1[1])
);

DFFPOSX1 _4001_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf15),
    .D(_646_),
    .Q(rreg1[2])
);

DFFPOSX1 _4002_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf14),
    .D(_645_),
    .Q(rreg1[3])
);

DFFPOSX1 _4003_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf13),
    .D(_644_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

DFFPOSX1 _4004_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf12),
    .D(_643_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

DFFPOSX1 _4005_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf11),
    .D(_642_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

DFFPOSX1 _4006_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf10),
    .D(_641_),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

AND2X2 _4007_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [0]),
    .Y(\u_cpu.alu.i_buf )
);

INVX8 _4008_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .Y(_892_)
);

NAND3X1 _4009_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.c_r ),
    .B(\u_cpu.bufreg.i_rs1_en ),
    .C(rdata0),
    .Y(_893_)
);

NAND2X1 _4010_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(\u_cpu.bufreg.i_imm ),
    .Y(_894_)
);

AOI21X1 _4011_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_clr_lsb ),
    .B(\u_cpu.alu.i_cnt0 ),
    .C(_894_),
    .Y(_895_)
);

INVX1 _4012_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.c_r ),
    .Y(_896_)
);

NAND2X1 _4013_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_rs1_en ),
    .B(rdata0),
    .Y(_897_)
);

NAND2X1 _4014_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_896_),
    .B(_897_),
    .Y(_898_)
);

NAND3X1 _4015_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_893_),
    .B(_898_),
    .C(_895_),
    .Y(_899_)
);

AOI21X1 _4016_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_899_),
    .B(_893_),
    .C(_892__bF$buf4),
    .Y(_998_)
);

INVX1 _4017_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_900_)
);

NAND2X1 _4018_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [11]),
    .B(_892__bF$buf3),
    .Y(_901_)
);

OAI21X1 _4019_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf2),
    .B(_900_),
    .C(_901_),
    .Y(_860_)
);

INVX1 _4020_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [10]),
    .Y(_902_)
);

NAND2X1 _4021_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [11]),
    .Y(_903_)
);

OAI21X1 _4022_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_902_),
    .C(_903_),
    .Y(_861_)
);

NAND2X1 _4023_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [9]),
    .B(_892__bF$buf1),
    .Y(_904_)
);

OAI21X1 _4024_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf0),
    .B(_902_),
    .C(_904_),
    .Y(_862_)
);

INVX1 _4025_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_905_)
);

NAND2X1 _4026_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(\u_cpu.bufreg.data [9]),
    .Y(_906_)
);

OAI21X1 _4027_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(_905_),
    .C(_906_),
    .Y(_863_)
);

NAND2X1 _4028_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [7]),
    .B(_892__bF$buf4),
    .Y(_907_)
);

OAI21X1 _4029_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf3),
    .B(_905_),
    .C(_907_),
    .Y(_864_)
);

INVX1 _4030_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [6]),
    .Y(_908_)
);

NAND2X1 _4031_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.data [7]),
    .Y(_909_)
);

OAI21X1 _4032_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_908_),
    .C(_909_),
    .Y(_865_)
);

NAND2X1 _4033_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [5]),
    .B(_892__bF$buf2),
    .Y(_910_)
);

OAI21X1 _4034_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf1),
    .B(_908_),
    .C(_910_),
    .Y(_866_)
);

INVX1 _4035_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [4]),
    .Y(_911_)
);

NAND2X1 _4036_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [5]),
    .Y(_912_)
);

OAI21X1 _4037_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_911_),
    .C(_912_),
    .Y(_867_)
);

NAND2X1 _4038_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [3]),
    .B(_892__bF$buf0),
    .Y(_913_)
);

OAI21X1 _4039_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf4),
    .B(_911_),
    .C(_913_),
    .Y(_868_)
);

INVX1 _4040_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [2]),
    .Y(_914_)
);

NAND2X1 _4041_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [3]),
    .Y(_915_)
);

OAI21X1 _4042_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_914_),
    .C(_915_),
    .Y(_869_)
);

INVX1 _4043_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_916_)
);

INVX1 _4044_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_cnt0 ),
    .Y(_917_)
);

INVX1 _4045_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_cnt1 ),
    .Y(_918_)
);

NAND3X1 _4046_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_917_),
    .C(_918_),
    .Y(_919_)
);

OAI21X1 _4047_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.i_init ),
    .C(_919_),
    .Y(_920_)
);

NAND2X1 _4048_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .B(_920_),
    .Y(_921_)
);

OAI21X1 _4049_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_916_),
    .B(_920_),
    .C(_921_),
    .Y(_870_)
);

INVX1 _4050_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [30]),
    .Y(_922_)
);

NAND2X1 _4051_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [29]),
    .B(_892__bF$buf3),
    .Y(_923_)
);

OAI21X1 _4052_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf2),
    .B(_922_),
    .C(_923_),
    .Y(_871_)
);

NAND2X1 _4053_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_924_)
);

OAI21X1 _4054_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_922_),
    .C(_924_),
    .Y(_872_)
);

INVX1 _4055_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [28]),
    .Y(_925_)
);

NAND2X1 _4056_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [29]),
    .Y(_926_)
);

OAI21X1 _4057_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_925_),
    .C(_926_),
    .Y(_873_)
);

NAND2X1 _4058_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [27]),
    .B(_892__bF$buf1),
    .Y(_927_)
);

OAI21X1 _4059_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf0),
    .B(_925_),
    .C(_927_),
    .Y(_874_)
);

INVX1 _4060_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [26]),
    .Y(_928_)
);

NAND2X1 _4061_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [27]),
    .Y(_929_)
);

OAI21X1 _4062_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_928_),
    .C(_929_),
    .Y(_875_)
);

NAND2X1 _4063_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [25]),
    .B(_892__bF$buf4),
    .Y(_930_)
);

OAI21X1 _4064_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf3),
    .B(_928_),
    .C(_930_),
    .Y(_876_)
);

INVX1 _4065_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [24]),
    .Y(_931_)
);

NAND2X1 _4066_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(\u_cpu.bufreg.data [25]),
    .Y(_932_)
);

OAI21X1 _4067_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(_931_),
    .C(_932_),
    .Y(_877_)
);

NAND2X1 _4068_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_clr_lsb ),
    .B(\u_cpu.alu.i_cnt0 ),
    .Y(_933_)
);

NAND3X1 _4069_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(\u_cpu.bufreg.i_imm ),
    .C(_933_),
    .Y(_934_)
);

NAND3X1 _4070_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_rs1_en ),
    .B(rdata0),
    .C(_896_),
    .Y(_935_)
);

NAND2X1 _4071_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.c_r ),
    .B(_897_),
    .Y(_936_)
);

NAND3X1 _4072_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_936_),
    .B(_935_),
    .C(_934_),
    .Y(_937_)
);

NAND3X1 _4073_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_937_),
    .C(_899_),
    .Y(_938_)
);

NOR2X1 _4074_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_914_),
    .Y(_939_)
);

NOR2X1 _4075_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_939_),
    .B(_920_),
    .Y(_940_)
);

AOI22X1 _4076_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_916_),
    .B(_920_),
    .C(_938_),
    .D(_940_),
    .Y(_878_)
);

NAND2X1 _4077_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [23]),
    .B(_892__bF$buf2),
    .Y(_941_)
);

OAI21X1 _4078_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf1),
    .B(_931_),
    .C(_941_),
    .Y(_879_)
);

INVX1 _4079_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [22]),
    .Y(_942_)
);

NAND2X1 _4080_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.data [23]),
    .Y(_943_)
);

OAI21X1 _4081_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_942_),
    .C(_943_),
    .Y(_880_)
);

NAND2X1 _4082_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [21]),
    .B(_892__bF$buf0),
    .Y(_944_)
);

OAI21X1 _4083_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf4),
    .B(_942_),
    .C(_944_),
    .Y(_881_)
);

INVX1 _4084_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_945_)
);

NAND2X1 _4085_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [21]),
    .Y(_946_)
);

OAI21X1 _4086_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_945_),
    .C(_946_),
    .Y(_882_)
);

NAND2X1 _4087_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [19]),
    .B(_892__bF$buf3),
    .Y(_947_)
);

OAI21X1 _4088_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf2),
    .B(_945_),
    .C(_947_),
    .Y(_883_)
);

INVX1 _4089_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [18]),
    .Y(_948_)
);

NAND2X1 _4090_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [19]),
    .Y(_949_)
);

OAI21X1 _4091_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_948_),
    .C(_949_),
    .Y(_884_)
);

NAND2X1 _4092_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [17]),
    .B(_892__bF$buf1),
    .Y(_950_)
);

OAI21X1 _4093_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf0),
    .B(_948_),
    .C(_950_),
    .Y(_885_)
);

INVX1 _4094_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_951_)
);

OAI21X1 _4095_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_951_),
    .C(\u_cpu.bufreg.i_en_bF$buf2 ),
    .Y(_952_)
);

NAND2X1 _4096_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [31]),
    .B(_952_),
    .Y(_953_)
);

OAI21X1 _4097_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf4),
    .B(_938_),
    .C(_953_),
    .Y(_886_)
);

INVX1 _4098_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_954_)
);

NAND2X1 _4099_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [17]),
    .Y(_955_)
);

OAI21X1 _4100_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_954_),
    .C(_955_),
    .Y(_887_)
);

NAND2X1 _4101_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [15]),
    .B(_892__bF$buf3),
    .Y(_956_)
);

OAI21X1 _4102_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf2),
    .B(_954_),
    .C(_956_),
    .Y(_888_)
);

INVX1 _4103_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [14]),
    .Y(_957_)
);

NAND2X1 _4104_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [15]),
    .Y(_958_)
);

OAI21X1 _4105_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_957_),
    .C(_958_),
    .Y(_889_)
);

NAND2X1 _4106_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [13]),
    .B(_892__bF$buf1),
    .Y(_959_)
);

OAI21X1 _4107_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_892__bF$buf0),
    .B(_957_),
    .C(_959_),
    .Y(_890_)
);

NAND2X1 _4108_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [13]),
    .Y(_960_)
);

OAI21X1 _4109_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_900_),
    .C(_960_),
    .Y(_891_)
);

DFFPOSX1 _4110_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf9),
    .D(_875_),
    .Q(\u_cpu.bufreg.data [26])
);

DFFPOSX1 _4111_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf8),
    .D(_874_),
    .Q(\u_cpu.bufreg.data [27])
);

DFFPOSX1 _4112_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf7),
    .D(_873_),
    .Q(\u_cpu.bufreg.data [28])
);

DFFPOSX1 _4113_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf6),
    .D(_872_),
    .Q(\u_cpu.bufreg.data [30])
);

DFFPOSX1 _4114_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf5),
    .D(_871_),
    .Q(\u_cpu.bufreg.data [29])
);

DFFPOSX1 _4115_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf4),
    .D(_870_),
    .Q(\u_cpu.bufreg.data [0])
);

DFFPOSX1 _4116_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf3),
    .D(_869_),
    .Q(\u_cpu.bufreg.data [2])
);

DFFPOSX1 _4117_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf2),
    .D(_868_),
    .Q(\u_cpu.bufreg.data [3])
);

DFFPOSX1 _4118_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf1),
    .D(_867_),
    .Q(\u_cpu.bufreg.data [4])
);

DFFPOSX1 _4119_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf0),
    .D(_866_),
    .Q(\u_cpu.bufreg.data [5])
);

DFFPOSX1 _4120_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf45),
    .D(_865_),
    .Q(\u_cpu.bufreg.data [6])
);

DFFPOSX1 _4121_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf44),
    .D(_864_),
    .Q(\u_cpu.bufreg.data [7])
);

DFFPOSX1 _4122_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf43),
    .D(_863_),
    .Q(\u_cpu.bufreg.data [8])
);

DFFPOSX1 _4123_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf42),
    .D(_862_),
    .Q(\u_cpu.bufreg.data [9])
);

DFFPOSX1 _4124_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf41),
    .D(_861_),
    .Q(\u_cpu.bufreg.data [10])
);

DFFPOSX1 _4125_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf40),
    .D(_878_),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

DFFPOSX1 _4126_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf39),
    .D(_891_),
    .Q(\u_cpu.bufreg.data [12])
);

DFFPOSX1 _4127_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf38),
    .D(_890_),
    .Q(\u_cpu.bufreg.data [13])
);

DFFPOSX1 _4128_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf37),
    .D(_889_),
    .Q(\u_cpu.bufreg.data [14])
);

DFFPOSX1 _4129_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf36),
    .D(_860_),
    .Q(\u_cpu.bufreg.data [11])
);

DFFPOSX1 _4130_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf35),
    .D(_888_),
    .Q(\u_cpu.bufreg.data [15])
);

DFFPOSX1 _4131_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf34),
    .D(_887_),
    .Q(\u_cpu.bufreg.data [16])
);

DFFPOSX1 _4132_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf33),
    .D(_886_),
    .Q(\u_cpu.bufreg.data [31])
);

DFFPOSX1 _4133_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf32),
    .D(_885_),
    .Q(\u_cpu.bufreg.data [17])
);

DFFPOSX1 _4134_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf31),
    .D(_884_),
    .Q(\u_cpu.bufreg.data [18])
);

DFFPOSX1 _4135_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf30),
    .D(_883_),
    .Q(\u_cpu.bufreg.data [19])
);

DFFPOSX1 _4136_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf29),
    .D(_882_),
    .Q(\u_cpu.bufreg.data [20])
);

DFFPOSX1 _4137_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf28),
    .D(_881_),
    .Q(\u_cpu.bufreg.data [21])
);

DFFPOSX1 _4138_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf27),
    .D(_880_),
    .Q(\u_cpu.bufreg.data [22])
);

DFFPOSX1 _4139_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf26),
    .D(_879_),
    .Q(\u_cpu.bufreg.data [23])
);

DFFPOSX1 _4140_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf25),
    .D(_998_),
    .Q(\u_cpu.bufreg.c_r )
);

DFFPOSX1 _4141_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf24),
    .D(_877_),
    .Q(\u_cpu.bufreg.data [24])
);

INVX2 _4142_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shift_op ),
    .Y(_1130_)
);

INVX1 _4143_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_1131_)
);

INVX1 _4144_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_init ),
    .Y(_1132_)
);

AOI21X1 _4145_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .C(_1132_),
    .Y(_1133_)
);

OAI21X1 _4146_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(_1133_),
    .C(_1131_),
    .Y(_1134_)
);

NAND2X1 _4147_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .Y(_1135_)
);

AOI21X1 _4148_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1135_),
    .B(\u_cpu.bufreg.i_init ),
    .C(_1130_),
    .Y(_1136_)
);

INVX1 _4149_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_1137_)
);

NOR2X1 _4150_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1138_)
);

NOR2X1 _4151_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(\u_cpu.bufreg.i_shamt [2]),
    .Y(_1139_)
);

NAND3X1 _4152_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1137_),
    .B(_1138_),
    .C(_1139_),
    .Y(_1140_)
);

NAND2X1 _4153_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .B(_1140_),
    .Y(_1141_)
);

INVX1 _4154_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_1142_)
);

AND2X2 _4155_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1138_),
    .B(_1139_),
    .Y(_1143_)
);

NAND3X1 _4156_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1137_),
    .B(_1142_),
    .C(_1143_),
    .Y(_1144_)
);

NAND3X1 _4157_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_1141_),
    .C(_1144_),
    .Y(_1145_)
);

AND2X2 _4158_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1145_),
    .B(_1134_),
    .Y(\u_cpu.bufreg2.o_sh_done )
);

AND2X2 _4159_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_1146_)
);

INVX1 _4160_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .Y(_1147_)
);

NOR2X1 _4161_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .B(_1147_),
    .Y(_1148_)
);

OAI21X1 _4162_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1146_),
    .B(_1148_),
    .C(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1149_)
);

MUX2X1 _4163_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(\u_cpu.bufreg2.dlo [0]),
    .S(\u_cpu.bufreg.data [0]),
    .Y(_1150_)
);

OAI21X1 _4164_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_1150_),
    .C(_1149_),
    .Y(\u_cpu.bufreg2.o_q )
);

INVX1 _4165_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_imm ),
    .Y(_1151_)
);

NAND2X1 _4166_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rdata1),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_1152_)
);

OAI21X1 _4167_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_1151_),
    .C(_1152_),
    .Y(\u_cpu.alu.i_op_b )
);

INVX1 _4168_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .Y(_1153_)
);

INVX2 _4169_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .Y(_1154_)
);

OR2X2 _4170_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1155_)
);

AND2X2 _4171_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1156_)
);

AND2X2 _4172_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1157_)
);

OAI21X1 _4173_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1156_),
    .B(_1157_),
    .C(_1155_),
    .Y(_1158_)
);

NAND3X1 _4174_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(\u_cpu.alu.i_en ),
    .C(_1158_),
    .Y(_1159_)
);

NOR2X1 _4175_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1160_)
);

INVX1 _4176_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_en ),
    .Y(_1161_)
);

NOR2X1 _4177_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1132_),
    .B(_1161_),
    .Y(_1162_)
);

NAND3X1 _4178_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shift_op ),
    .B(_1160_),
    .C(_1162_),
    .Y(_1163_)
);

NAND3X1 _4179_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1154_),
    .B(_1163_),
    .C(_1159_),
    .Y(_1164_)
);

NOR2X1 _4180_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1165_)
);

NAND2X1 _4181_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1166_)
);

AOI21X1 _4182_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .C(\u_cpu.bufreg.i_shift_op ),
    .Y(_1167_)
);

OAI21X1 _4183_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1166_),
    .B(_1165_),
    .C(_1167_),
    .Y(_1168_)
);

INVX1 _4184_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1169_)
);

INVX1 _4185_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1170_)
);

NAND3X1 _4186_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_1169_),
    .C(_1170_),
    .Y(_1171_)
);

AOI21X1 _4187_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1168_),
    .B(_1171_),
    .C(_1161_),
    .Y(_1172_)
);

INVX1 _4188_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .Y(_1173_)
);

NOR2X1 _4189_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_1173_),
    .Y(_1174_)
);

AOI22X1 _4190_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [7]),
    .C(_1172__bF$buf3),
    .D(_1174_),
    .Y(_1175_)
);

OAI21X1 _4191_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1153_),
    .B(_1164__bF$buf4),
    .C(_1175_),
    .Y(_1098_)
);

INVX1 _4192_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [6]),
    .Y(_1176_)
);

NOR2X1 _4193_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_1153_),
    .Y(_1177_)
);

AOI22X1 _4194_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [6]),
    .C(_1172__bF$buf2),
    .D(_1177_),
    .Y(_1178_)
);

OAI21X1 _4195_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1176_),
    .B(_1164__bF$buf3),
    .C(_1178_),
    .Y(_1099_)
);

INVX1 _4196_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [5]),
    .Y(_1179_)
);

NOR2X1 _4197_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1176_),
    .Y(_1180_)
);

AOI22X1 _4198_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [5]),
    .C(_1172__bF$buf1),
    .D(_1180_),
    .Y(_1181_)
);

OAI21X1 _4199_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1179_),
    .B(_1164__bF$buf2),
    .C(_1181_),
    .Y(_1100_)
);

INVX1 _4200_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [4]),
    .Y(_1182_)
);

NOR2X1 _4201_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_1179_),
    .Y(_1183_)
);

AOI22X1 _4202_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [4]),
    .C(_1172__bF$buf0),
    .D(_1183_),
    .Y(_1184_)
);

OAI21X1 _4203_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1182_),
    .B(_1164__bF$buf1),
    .C(_1184_),
    .Y(_1101_)
);

INVX1 _4204_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .Y(_1185_)
);

NOR2X1 _4205_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1182_),
    .Y(_1186_)
);

AOI22X1 _4206_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [3]),
    .C(_1172__bF$buf3),
    .D(_1186_),
    .Y(_1187_)
);

OAI21X1 _4207_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1185_),
    .B(_1164__bF$buf0),
    .C(_1187_),
    .Y(_1102_)
);

INVX1 _4208_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [2]),
    .Y(_1188_)
);

NOR2X1 _4209_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1185_),
    .Y(_1189_)
);

AOI22X1 _4210_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [2]),
    .C(_1172__bF$buf2),
    .D(_1189_),
    .Y(_1190_)
);

OAI21X1 _4211_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1188_),
    .B(_1164__bF$buf4),
    .C(_1190_),
    .Y(_1103_)
);

INVX1 _4212_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [1]),
    .Y(_1191_)
);

NOR2X1 _4213_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1188_),
    .Y(_1192_)
);

AOI22X1 _4214_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [1]),
    .C(_1172__bF$buf1),
    .D(_1192_),
    .Y(_1193_)
);

OAI21X1 _4215_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1191_),
    .B(_1164__bF$buf3),
    .C(_1193_),
    .Y(_1104_)
);

INVX1 _4216_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1194_)
);

AOI21X1 _4217_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1194_),
    .B(_1169_),
    .C(_1166_),
    .Y(_1195_)
);

INVX1 _4218_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1167_),
    .Y(_1196_)
);

OAI21X1 _4219_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1196_),
    .B(_1195_),
    .C(_1171_),
    .Y(_1197_)
);

AOI21X1 _4220_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1197_),
    .B(\u_cpu.alu.i_en ),
    .C(mem_dbus_ack_bF$buf3),
    .Y(_1198_)
);

NAND2X1 _4221_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [0]),
    .B(_1198_),
    .Y(_1199_)
);

MUX2X1 _4222_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [0]),
    .B(\u_cpu.bufreg2.dlo [1]),
    .S(mem_dbus_ack_bF$buf2),
    .Y(_1200_)
);

OAI21X1 _4223_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1198_),
    .B(_1200_),
    .C(_1199_),
    .Y(_1105_)
);

OAI21X1 _4224_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(_1133_),
    .C(_1198_),
    .Y(_1201_)
);

INVX1 _4225_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_1202_)
);

NAND2X1 _4226_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [30]),
    .Y(_1203_)
);

OAI21X1 _4227_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1202_),
    .C(_1203_),
    .Y(_1204_)
);

OAI21X1 _4228_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_1164__bF$buf2),
    .C(_1204_),
    .Y(_1205_)
);

OAI21X1 _4229_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1131_),
    .B(_1201_),
    .C(_1205_),
    .Y(_1106_)
);

NOR3X1 _4230_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1136_),
    .C(_1172__bF$buf0),
    .Y(_1206_)
);

AND2X2 _4231_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shift_op ),
    .B(\u_cpu.bufreg2.i_cnt7 ),
    .Y(_1207_)
);

AOI21X1 _4232_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1133_),
    .B(_1207_),
    .C(mem_dbus_ack_bF$buf5),
    .Y(_1208_)
);

NAND3X1 _4233_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1134_),
    .B(_1208_),
    .C(_1145_),
    .Y(_1209_)
);

INVX2 _4234_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .Y(_1210_)
);

AOI22X1 _4235_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [29]),
    .C(_1198_),
    .D(_1210_),
    .Y(_1211_)
);

AOI22X1 _4236_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1142_),
    .B(_1206_),
    .C(_1211_),
    .D(_1209_),
    .Y(_1107_)
);

NAND3X1 _4237_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1212_)
);

INVX1 _4238_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_1213_)
);

NAND2X1 _4239_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1213_),
    .B(_1138_),
    .Y(_1214_)
);

OAI21X1 _4240_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_1214_),
    .C(\u_cpu.bufreg2.dhi [4]),
    .Y(_1215_)
);

NAND3X1 _4241_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_1140_),
    .C(_1215_),
    .Y(_1216_)
);

OAI21X1 _4242_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(_1133_),
    .C(_1142_),
    .Y(_1217_)
);

AOI21X1 _4243_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1216_),
    .B(_1217_),
    .C(mem_dbus_ack_bF$buf3),
    .Y(_1218_)
);

OR2X2 _4244_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1154_),
    .B(\u_mem_serial.shift_rx [28]),
    .Y(_1219_)
);

OAI21X1 _4245_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1136_),
    .B(_1164__bF$buf1),
    .C(_1219_),
    .Y(_1220_)
);

OAI21X1 _4246_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1218_),
    .B(_1220_),
    .C(_1212_),
    .Y(_1108_)
);

OAI21X1 _4247_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(_1133_),
    .C(\u_cpu.bufreg2.dhi [4]),
    .Y(_1221_)
);

INVX1 _4248_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_1222_)
);

AOI21X1 _4249_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1138_),
    .B(_1213_),
    .C(_1222_),
    .Y(_1223_)
);

OAI21X1 _4250_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1223_),
    .B(_1143_),
    .C(_1136_),
    .Y(_1224_)
);

NAND3X1 _4251_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1154_),
    .B(_1221_),
    .C(_1224_),
    .Y(_1225_)
);

OAI21X1 _4252_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1154_),
    .B(\u_mem_serial.shift_rx [27]),
    .C(_1225_),
    .Y(_1226_)
);

NAND3X1 _4253_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1227_)
);

OAI21X1 _4254_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1206_),
    .B(_1226_),
    .C(_1227_),
    .Y(_1109_)
);

AND2X2 _4255_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1138_),
    .B(_1213_),
    .Y(_1228_)
);

NOR2X1 _4256_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1213_),
    .B(_1138_),
    .Y(_1229_)
);

OAI21X1 _4257_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1229_),
    .B(_1228_),
    .C(_1136_),
    .Y(_1230_)
);

OAI21X1 _4258_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(_1133_),
    .C(\u_cpu.bufreg2.dhi [3]),
    .Y(_1231_)
);

NAND3X1 _4259_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1154_),
    .B(_1231_),
    .C(_1230_),
    .Y(_1232_)
);

OAI21X1 _4260_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1154_),
    .B(\u_mem_serial.shift_rx [26]),
    .C(_1232_),
    .Y(_1233_)
);

NAND3X1 _4261_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1234_)
);

OAI21X1 _4262_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1206_),
    .B(_1233_),
    .C(_1234_),
    .Y(_1110_)
);

AND2X2 _4263_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1235_)
);

OAI21X1 _4264_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1138_),
    .B(_1235_),
    .C(_1136_),
    .Y(_1236_)
);

OAI21X1 _4265_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1213_),
    .B(_1136_),
    .C(_1236_),
    .Y(_1237_)
);

MUX2X1 _4266_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1237_),
    .B(\u_mem_serial.shift_rx [25]),
    .S(_1154_),
    .Y(_1238_)
);

NAND3X1 _4267_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1239_)
);

OAI21X1 _4268_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1238_),
    .B(_1206_),
    .C(_1239_),
    .Y(_1111_)
);

NAND3X1 _4269_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1240_)
);

OAI21X1 _4270_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1130_),
    .B(_1133_),
    .C(\u_cpu.bufreg.i_shamt [1]),
    .Y(_1241_)
);

OAI21X1 _4271_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_1210_),
    .C(_1241_),
    .Y(_1242_)
);

MUX2X1 _4272_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1242_),
    .B(\u_mem_serial.shift_rx [24]),
    .S(_1154_),
    .Y(_1243_)
);

OAI21X1 _4273_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1206_),
    .B(_1243_),
    .C(_1240_),
    .Y(_1112_)
);

INVX1 _4274_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [22]),
    .Y(_1244_)
);

INVX1 _4275_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .Y(_1245_)
);

NOR2X1 _4276_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1245_),
    .Y(_1246_)
);

AOI22X1 _4277_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [22]),
    .C(_1172__bF$buf3),
    .D(_1246_),
    .Y(_1247_)
);

OAI21X1 _4278_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1244_),
    .B(_1164__bF$buf0),
    .C(_1247_),
    .Y(_1113_)
);

INVX1 _4279_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [21]),
    .Y(_1248_)
);

NOR2X1 _4280_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1244_),
    .Y(_1249_)
);

AOI22X1 _4281_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [21]),
    .C(_1172__bF$buf2),
    .D(_1249_),
    .Y(_1250_)
);

OAI21X1 _4282_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1248_),
    .B(_1164__bF$buf4),
    .C(_1250_),
    .Y(_1114_)
);

INVX1 _4283_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [20]),
    .Y(_1251_)
);

NOR2X1 _4284_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1248_),
    .Y(_1252_)
);

AOI22X1 _4285_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [20]),
    .B(mem_dbus_ack_bF$buf4),
    .C(_1172__bF$buf1),
    .D(_1252_),
    .Y(_1253_)
);

OAI21X1 _4286_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1251_),
    .B(_1164__bF$buf3),
    .C(_1253_),
    .Y(_1115_)
);

INVX1 _4287_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .Y(_1254_)
);

NOR2X1 _4288_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_1251_),
    .Y(_1255_)
);

AOI22X1 _4289_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [19]),
    .C(_1172__bF$buf0),
    .D(_1255_),
    .Y(_1256_)
);

OAI21X1 _4290_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1254_),
    .B(_1164__bF$buf2),
    .C(_1256_),
    .Y(_1116_)
);

INVX1 _4291_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [18]),
    .Y(_1257_)
);

NOR2X1 _4292_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_1254_),
    .Y(_1258_)
);

AOI22X1 _4293_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [18]),
    .C(_1172__bF$buf3),
    .D(_1258_),
    .Y(_1259_)
);

OAI21X1 _4294_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1257_),
    .B(_1164__bF$buf1),
    .C(_1259_),
    .Y(_1117_)
);

INVX1 _4295_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [17]),
    .Y(_1260_)
);

NOR2X1 _4296_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1257_),
    .Y(_1261_)
);

AOI22X1 _4297_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [17]),
    .C(_1172__bF$buf2),
    .D(_1261_),
    .Y(_1262_)
);

OAI21X1 _4298_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1260_),
    .B(_1164__bF$buf0),
    .C(_1262_),
    .Y(_1118_)
);

NOR2X1 _4299_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_1260_),
    .Y(_1263_)
);

AOI22X1 _4300_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [16]),
    .C(_1172__bF$buf1),
    .D(_1263_),
    .Y(_1264_)
);

OAI21X1 _4301_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1147_),
    .B(_1164__bF$buf4),
    .C(_1264_),
    .Y(_1119_)
);

INVX1 _4302_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .Y(_1265_)
);

NOR2X1 _4303_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1147_),
    .Y(_1266_)
);

AOI22X1 _4304_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [15]),
    .C(_1172__bF$buf0),
    .D(_1266_),
    .Y(_1267_)
);

OAI21X1 _4305_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1265_),
    .B(_1164__bF$buf3),
    .C(_1267_),
    .Y(_1120_)
);

AND2X2 _4306_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1154_),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1268_)
);

AOI22X1 _4307_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [23]),
    .C(_1172__bF$buf3),
    .D(_1268_),
    .Y(_1269_)
);

OAI21X1 _4308_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1245_),
    .B(_1164__bF$buf2),
    .C(_1269_),
    .Y(_1121_)
);

MUX2X1 _4309_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_op_b ),
    .B(\u_mem_serial.shift_rx [31]),
    .S(_1154_),
    .Y(_1270_)
);

NAND3X1 _4310_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1271_)
);

OAI21X1 _4311_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1270_),
    .B(_1206_),
    .C(_1271_),
    .Y(_1122_)
);

INVX1 _4312_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [14]),
    .Y(_1272_)
);

NOR2X1 _4313_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1265_),
    .Y(_1273_)
);

AOI22X1 _4314_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1172__bF$buf2),
    .D(_1273_),
    .Y(_1274_)
);

OAI21X1 _4315_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1272_),
    .B(_1164__bF$buf1),
    .C(_1274_),
    .Y(_1123_)
);

INVX1 _4316_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [13]),
    .Y(_1275_)
);

NOR2X1 _4317_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_1272_),
    .Y(_1276_)
);

AOI22X1 _4318_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [13]),
    .C(_1172__bF$buf1),
    .D(_1276_),
    .Y(_1277_)
);

OAI21X1 _4319_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1275_),
    .B(_1164__bF$buf0),
    .C(_1277_),
    .Y(_1124_)
);

INVX1 _4320_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [12]),
    .Y(_1278_)
);

NOR2X1 _4321_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1275_),
    .Y(_1279_)
);

AOI22X1 _4322_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [12]),
    .C(_1172__bF$buf0),
    .D(_1279_),
    .Y(_1280_)
);

OAI21X1 _4323_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1278_),
    .B(_1164__bF$buf4),
    .C(_1280_),
    .Y(_1125_)
);

INVX1 _4324_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .Y(_1281_)
);

NOR2X1 _4325_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1278_),
    .Y(_1282_)
);

AOI22X1 _4326_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [11]),
    .C(_1172__bF$buf3),
    .D(_1282_),
    .Y(_1283_)
);

OAI21X1 _4327_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1281_),
    .B(_1164__bF$buf3),
    .C(_1283_),
    .Y(_1126_)
);

INVX1 _4328_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [10]),
    .Y(_1284_)
);

NOR2X1 _4329_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1281_),
    .Y(_1285_)
);

AOI22X1 _4330_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [10]),
    .C(_1172__bF$buf2),
    .D(_1285_),
    .Y(_1286_)
);

OAI21X1 _4331_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1284_),
    .B(_1164__bF$buf2),
    .C(_1286_),
    .Y(_1127_)
);

INVX1 _4332_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg2.dlo [9]),
    .Y(_1287_)
);

NOR2X1 _4333_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_1284_),
    .Y(_1288_)
);

AOI22X1 _4334_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [9]),
    .C(_1172__bF$buf1),
    .D(_1288_),
    .Y(_1289_)
);

OAI21X1 _4335_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1287_),
    .B(_1164__bF$buf1),
    .C(_1289_),
    .Y(_1128_)
);

NOR2X1 _4336_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_1287_),
    .Y(_1290_)
);

AOI22X1 _4337_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [8]),
    .C(_1172__bF$buf0),
    .D(_1290_),
    .Y(_1291_)
);

OAI21X1 _4338_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1173_),
    .B(_1164__bF$buf0),
    .C(_1291_),
    .Y(_1129_)
);

DFFPOSX1 _4339_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf23),
    .D(_1111_),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

DFFPOSX1 _4340_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf22),
    .D(_1110_),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

DFFPOSX1 _4341_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf21),
    .D(_1109_),
    .Q(\u_cpu.bufreg2.dhi [3])
);

DFFPOSX1 _4342_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf20),
    .D(_1108_),
    .Q(\u_cpu.bufreg2.dhi [4])
);

DFFPOSX1 _4343_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf19),
    .D(_1107_),
    .Q(\u_cpu.bufreg2.dhi [5])
);

DFFPOSX1 _4344_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf18),
    .D(_1106_),
    .Q(\u_cpu.bufreg2.dhi [6])
);

DFFPOSX1 _4345_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf17),
    .D(_1105_),
    .Q(\u_cpu.bufreg2.dlo [0])
);

DFFPOSX1 _4346_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf16),
    .D(_1104_),
    .Q(\u_cpu.bufreg2.dlo [1])
);

DFFPOSX1 _4347_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf15),
    .D(_1103_),
    .Q(\u_cpu.bufreg2.dlo [2])
);

DFFPOSX1 _4348_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf14),
    .D(_1102_),
    .Q(\u_cpu.bufreg2.dlo [3])
);

DFFPOSX1 _4349_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf13),
    .D(_1101_),
    .Q(\u_cpu.bufreg2.dlo [4])
);

DFFPOSX1 _4350_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf12),
    .D(_1100_),
    .Q(\u_cpu.bufreg2.dlo [5])
);

DFFPOSX1 _4351_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf11),
    .D(_1099_),
    .Q(\u_cpu.bufreg2.dlo [6])
);

DFFPOSX1 _4352_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf10),
    .D(_1098_),
    .Q(\u_cpu.bufreg2.dlo [7])
);

DFFPOSX1 _4353_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf9),
    .D(_1129_),
    .Q(\u_cpu.bufreg2.dlo [8])
);

DFFPOSX1 _4354_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf8),
    .D(_1128_),
    .Q(\u_cpu.bufreg2.dlo [9])
);

DFFPOSX1 _4355_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf7),
    .D(_1127_),
    .Q(\u_cpu.bufreg2.dlo [10])
);

DFFPOSX1 _4356_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf6),
    .D(_1126_),
    .Q(\u_cpu.bufreg2.dlo [11])
);

DFFPOSX1 _4357_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf5),
    .D(_1125_),
    .Q(\u_cpu.bufreg2.dlo [12])
);

DFFPOSX1 _4358_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf4),
    .D(_1124_),
    .Q(\u_cpu.bufreg2.dlo [13])
);

DFFPOSX1 _4359_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf3),
    .D(_1123_),
    .Q(\u_cpu.bufreg2.dlo [14])
);

DFFPOSX1 _4360_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf2),
    .D(_1122_),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

DFFPOSX1 _4361_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf1),
    .D(_1121_),
    .Q(\u_cpu.bufreg2.dlo [23])
);

DFFPOSX1 _4362_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf0),
    .D(_1120_),
    .Q(\u_cpu.bufreg2.dlo [15])
);

DFFPOSX1 _4363_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf45),
    .D(_1119_),
    .Q(\u_cpu.bufreg2.dlo [16])
);

DFFPOSX1 _4364_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf44),
    .D(_1118_),
    .Q(\u_cpu.bufreg2.dlo [17])
);

DFFPOSX1 _4365_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf43),
    .D(_1117_),
    .Q(\u_cpu.bufreg2.dlo [18])
);

DFFPOSX1 _4366_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf42),
    .D(_1116_),
    .Q(\u_cpu.bufreg2.dlo [19])
);

DFFPOSX1 _4367_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf41),
    .D(_1115_),
    .Q(\u_cpu.bufreg2.dlo [20])
);

DFFPOSX1 _4368_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf40),
    .D(_1114_),
    .Q(\u_cpu.bufreg2.dlo [21])
);

DFFPOSX1 _4369_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf39),
    .D(_1113_),
    .Q(\u_cpu.bufreg2.dlo [22])
);

NAND3X1 _4370_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .B(\u_cpu.ctrl.i_pc_rel ),
    .C(\u_cpu.ctrl.pc ),
    .Y(_1501_)
);

INVX1 _4371_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_1502_)
);

NAND2X1 _4372_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_pc_rel ),
    .B(\u_cpu.ctrl.pc ),
    .Y(_1503_)
);

NAND2X1 _4373_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1502_),
    .B(_1503_),
    .Y(_1504_)
);

NAND2X1 _4374_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1501_),
    .B(_1504_),
    .Y(_1505_)
);

INVX1 _4375_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_utype ),
    .Y(_1506_)
);

AND2X2 _4376_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_utype ),
    .B(\u_cpu.bufreg.i_imm ),
    .Y(_1507_)
);

AOI22X1 _4377_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_buf ),
    .B(_1506_),
    .C(_1507_),
    .D(\u_cpu.cnt12to31 ),
    .Y(_1508_)
);

AOI21X1 _4378_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1505_),
    .B(_1508_),
    .C(\u_cpu.alu.i_cnt0 ),
    .Y(_1509_)
);

OAI21X1 _4379_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1505_),
    .B(_1508_),
    .C(_1509_),
    .Y(_1510_)
);

INVX2 _4380_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_pc_en ),
    .Y(_1511_)
);

INVX1 _4381_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.alu.i_buf ),
    .Y(_1512_)
);

NAND3X1 _4382_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_utype ),
    .B(\u_cpu.cnt12to31 ),
    .C(\u_cpu.bufreg.i_imm ),
    .Y(_1513_)
);

OAI21X1 _4383_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1512_),
    .B(\u_cpu.ctrl.i_utype ),
    .C(_1513_),
    .Y(_1514_)
);

NAND3X1 _4384_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1501_),
    .B(_1504_),
    .C(_1514_),
    .Y(_1515_)
);

AOI21X1 _4385_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1515_),
    .B(_1501_),
    .C(_1511_),
    .Y(_1654_)
);

NAND2X1 _4386_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1516_)
);

NOR2X1 _4387_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1517_)
);

MUX2X1 _4388_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_cnt1 ),
    .B(\u_cpu.cnt2 ),
    .S(gnd),
    .Y(_1518_)
);

OAI21X1 _4389_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1517_),
    .B(_1518_),
    .C(_1516_),
    .Y(_1519_)
);

AND2X2 _4390_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1519_),
    .B(\u_cpu.ctrl.i_pc_en ),
    .Y(_1656_)
);

INVX1 _4391_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1516_),
    .Y(_1520_)
);

INVX1 _4392_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.cnt2 ),
    .Y(_1521_)
);

NAND2X1 _4393_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.bufreg.i_cnt1 ),
    .B(gnd),
    .Y(_1522_)
);

OAI21X1 _4394_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(gnd),
    .B(_1521_),
    .C(_1522_),
    .Y(_1523_)
);

OAI21X1 _4395_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1520_),
    .B(_1517_),
    .C(_1523_),
    .Y(_1524_)
);

OR2X2 _4396_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1525_)
);

NAND3X1 _4397_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1516_),
    .B(_1525_),
    .C(_1518_),
    .Y(_1526_)
);

NAND2X1 _4398_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1526_),
    .B(_1524_),
    .Y(_1527_)
);

NAND2X1 _4399_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jal_or_jalr ),
    .B(_1527_),
    .Y(_1528_)
);

OAI21X1 _4400_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1506_),
    .B(_1510_),
    .C(_1528_),
    .Y(\u_cpu.ctrl.o_rd )
);

INVX1 _4401_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_1529_)
);

NOR2X1 _4402_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf9),
    .B(\u_cpu.ctrl.i_pc_en ),
    .Y(_1530_)
);

INVX4 _4403_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf4),
    .Y(_1531_)
);

NOR2X1 _4404_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf8),
    .B(_1511_),
    .Y(_1532_)
);

NAND2X1 _4405_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(_1532_),
    .Y(_1533_)
);

OAI21X1 _4406_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1529_),
    .B(_1531_),
    .C(_1533_),
    .Y(_1469_)
);

INVX1 _4407_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_1534_)
);

INVX4 _4408_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1532_),
    .Y(_1535_)
);

OAI22X1 _4409_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1534_),
    .B(_1531_),
    .C(_1529_),
    .D(_1535_),
    .Y(_1470_)
);

INVX1 _4410_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_1536_)
);

OAI22X1 _4411_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1536_),
    .B(_1531_),
    .C(_1534_),
    .D(_1535_),
    .Y(_1471_)
);

NAND2X1 _4412_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.pc ),
    .B(_1530__bF$buf3),
    .Y(_1537_)
);

OAI21X1 _4413_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1536_),
    .B(_1535_),
    .C(_1537_),
    .Y(_1472_)
);

INVX1 _4414_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_1538_)
);

INVX1 _4415_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_1539_)
);

OAI22X1 _4416_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1538_),
    .B(_1531_),
    .C(_1539_),
    .D(_1535_),
    .Y(_1473_)
);

INVX1 _4417_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_1540_)
);

INVX1 _4418_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_1541_)
);

OAI22X1 _4419_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1540_),
    .B(_1531_),
    .C(_1541_),
    .D(_1535_),
    .Y(_1474_)
);

INVX1 _4420_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_1542_)
);

OAI22X1 _4421_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1542_),
    .B(_1531_),
    .C(_1538_),
    .D(_1535_),
    .Y(_1475_)
);

INVX1 _4422_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_1543_)
);

OAI22X1 _4423_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1543_),
    .B(_1531_),
    .C(_1542_),
    .D(_1535_),
    .Y(_1476_)
);

INVX1 _4424_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1544_)
);

OAI22X1 _4425_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1544_),
    .B(_1531_),
    .C(_1543_),
    .D(_1535_),
    .Y(_1477_)
);

INVX1 _4426_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_1545_)
);

OAI22X1 _4427_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1541_),
    .B(_1531_),
    .C(_1545_),
    .D(_1535_),
    .Y(_1478_)
);

INVX1 _4428_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1546_)
);

OAI22X1 _4429_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1546_),
    .B(_1531_),
    .C(_1544_),
    .D(_1535_),
    .Y(_1479_)
);

INVX1 _4430_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1547_)
);

OAI22X1 _4431_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1547_),
    .B(_1531_),
    .C(_1546_),
    .D(_1535_),
    .Y(_1480_)
);

INVX1 _4432_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1548_)
);

OAI22X1 _4433_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1548_),
    .B(_1531_),
    .C(_1547_),
    .D(_1535_),
    .Y(_1481_)
);

OAI22X1 _4434_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1539_),
    .B(_1531_),
    .C(_1540_),
    .D(_1535_),
    .Y(_1482_)
);

INVX1 _4435_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_1549_)
);

OAI22X1 _4436_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1549_),
    .B(_1531_),
    .C(_1548_),
    .D(_1535_),
    .Y(_1483_)
);

NAND2X1 _4437_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .B(_1532_),
    .Y(_1550_)
);

OAI21X1 _4438_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1545_),
    .B(_1531_),
    .C(_1550_),
    .Y(_1484_)
);

INVX1 _4439_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_1551_)
);

OAI22X1 _4440_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1551_),
    .B(_1531_),
    .C(_1549_),
    .D(_1535_),
    .Y(_1485_)
);

NAND2X1 _4441_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .B(_1530__bF$buf2),
    .Y(_1552_)
);

OAI21X1 _4442_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1551_),
    .B(_1535_),
    .C(_1552_),
    .Y(_1486_)
);

INVX2 _4443_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rst_bF$buf7),
    .Y(_1553_)
);

NAND2X1 _4444_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .B(_1553_),
    .Y(_1554_)
);

NAND2X1 _4445_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .B(_1530__bF$buf1),
    .Y(_1555_)
);

OAI21X1 _4446_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf0),
    .B(_1554_),
    .C(_1555_),
    .Y(_1487_)
);

NAND2X1 _4447_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .B(_1553_),
    .Y(_1556_)
);

NAND2X1 _4448_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_1530__bF$buf4),
    .Y(_1557_)
);

OAI21X1 _4449_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf3),
    .B(_1556_),
    .C(_1557_),
    .Y(_1488_)
);

NAND2X1 _4450_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_1553_),
    .Y(_1558_)
);

NAND2X1 _4451_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_1530__bF$buf2),
    .Y(_1559_)
);

OAI21X1 _4452_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf1),
    .B(_1558_),
    .C(_1559_),
    .Y(_1489_)
);

NAND2X1 _4453_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_1553_),
    .Y(_1560_)
);

NAND2X1 _4454_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .B(_1530__bF$buf0),
    .Y(_1561_)
);

OAI21X1 _4455_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf4),
    .B(_1560_),
    .C(_1561_),
    .Y(_1490_)
);

NAND2X1 _4456_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .B(_1553_),
    .Y(_1562_)
);

NAND2X1 _4457_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .B(_1530__bF$buf3),
    .Y(_1563_)
);

OAI21X1 _4458_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf2),
    .B(_1562_),
    .C(_1563_),
    .Y(_1491_)
);

NAND2X1 _4459_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .B(_1553_),
    .Y(_1564_)
);

NAND2X1 _4460_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .B(_1530__bF$buf1),
    .Y(_1565_)
);

OAI21X1 _4461_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf0),
    .B(_1564_),
    .C(_1565_),
    .Y(_1492_)
);

NAND2X1 _4462_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .B(_1553_),
    .Y(_1566_)
);

NAND2X1 _4463_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .B(_1530__bF$buf4),
    .Y(_1567_)
);

OAI21X1 _4464_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf3),
    .B(_1566_),
    .C(_1567_),
    .Y(_1493_)
);

NAND2X1 _4465_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .B(_1553_),
    .Y(_1568_)
);

NAND2X1 _4466_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .B(_1530__bF$buf2),
    .Y(_1569_)
);

OAI21X1 _4467_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf1),
    .B(_1568_),
    .C(_1569_),
    .Y(_1494_)
);

NAND2X1 _4468_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .B(_1553_),
    .Y(_1570_)
);

NAND2X1 _4469_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .B(_1530__bF$buf0),
    .Y(_1571_)
);

OAI21X1 _4470_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf4),
    .B(_1570_),
    .C(_1571_),
    .Y(_1495_)
);

NAND2X1 _4471_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .B(_1553_),
    .Y(_1572_)
);

NAND2X1 _4472_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .B(_1530__bF$buf3),
    .Y(_1573_)
);

OAI21X1 _4473_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf2),
    .B(_1572_),
    .C(_1573_),
    .Y(_1496_)
);

AOI21X1 _4474_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1553_),
    .B(\u_cpu.ctrl.o_ibus_adr [7]),
    .C(_1511_),
    .Y(_1574_)
);

NAND2X1 _4475_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .B(_1553_),
    .Y(_1575_)
);

AOI21X1 _4476_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1511_),
    .B(_1575_),
    .C(_1574_),
    .Y(_1497_)
);

NAND2X1 _4477_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_1530__bF$buf1),
    .Y(_1576_)
);

OAI21X1 _4478_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1530__bF$buf0),
    .B(_1575_),
    .C(_1576_),
    .Y(_1498_)
);

NAND2X1 _4479_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_1553_),
    .Y(_1577_)
);

NAND2X1 _4480_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(_1530__bF$buf4),
    .Y(_1578_)
);

OAI21X1 _4481_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1511_),
    .B(_1577_),
    .C(_1578_),
    .Y(_1499_)
);

NAND2X1 _4482_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .B(_1530__bF$buf3),
    .Y(_1579_)
);

INVX1 _4483_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_1580_)
);

AOI21X1 _4484_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1509_),
    .B(_1515_),
    .C(_1580_),
    .Y(_1581_)
);

OAI21X1 _4485_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.ctrl.i_jump ),
    .B(_1527_),
    .C(_1532_),
    .Y(_1582_)
);

OAI21X1 _4486_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1582_),
    .B(_1581_),
    .C(_1579_),
    .Y(_1500_)
);

DFFPOSX1 _4487_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf38),
    .D(_1487_),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

DFFPOSX1 _4488_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf37),
    .D(_1472_),
    .Q(\u_cpu.ctrl.pc )
);

DFFPOSX1 _4489_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf36),
    .D(_1494_),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

DFFPOSX1 _4490_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf35),
    .D(_1471_),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

DFFPOSX1 _4491_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf34),
    .D(_1654_),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

DFFPOSX1 _4492_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf33),
    .D(_1470_),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

DFFPOSX1 _4493_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf32),
    .D(_1492_),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

DFFPOSX1 _4494_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf31),
    .D(_1485_),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

DFFPOSX1 _4495_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf30),
    .D(_1493_),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

DFFPOSX1 _4496_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf29),
    .D(_1484_),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

DFFPOSX1 _4497_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf28),
    .D(_1497_),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

DFFPOSX1 _4498_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf27),
    .D(_1483_),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

DFFPOSX1 _4499_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf26),
    .D(_1656_),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

DFFPOSX1 _4500_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf25),
    .D(_1482_),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

DFFPOSX1 _4501_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf24),
    .D(_1499_),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

DFFPOSX1 _4502_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf23),
    .D(_1481_),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

DFFPOSX1 _4503_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf22),
    .D(_1491_),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

DFFPOSX1 _4504_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf21),
    .D(_1480_),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

DFFPOSX1 _4505_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf20),
    .D(_1469_),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

DFFPOSX1 _4506_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf19),
    .D(_1496_),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

DFFPOSX1 _4507_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf18),
    .D(_1479_),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

DFFPOSX1 _4508_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf17),
    .D(_1490_),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

DFFPOSX1 _4509_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf16),
    .D(_1478_),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

DFFPOSX1 _4510_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf15),
    .D(_1500_),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

DFFPOSX1 _4511_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf14),
    .D(_1477_),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

DFFPOSX1 _4512_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf13),
    .D(_1486_),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

DFFPOSX1 _4513_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf12),
    .D(_1489_),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

DFFPOSX1 _4514_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf11),
    .D(_1476_),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

DFFPOSX1 _4515_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf10),
    .D(_1495_),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

DFFPOSX1 _4516_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf9),
    .D(_1475_),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

DFFPOSX1 _4517_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf8),
    .D(_1488_),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

DFFPOSX1 _4518_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf7),
    .D(_1474_),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

DFFPOSX1 _4519_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf6),
    .D(_1498_),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

INVX1 _4520_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[12]),
    .Y(_1876_)
);

INVX8 _4521_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf3),
    .Y(_1877_)
);

NAND2X1 _4522_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [12]),
    .B(_1877__bF$buf5),
    .Y(_1878_)
);

OAI21X1 _4523_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1876_),
    .B(_1877__bF$buf4),
    .C(_1878_),
    .Y(\u_cpu.decode.i_wb_rdt [12])
);

MUX2X1 _4524_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[13]),
    .B(\u_mem_serial.shift_rx [13]),
    .S(ibus_pending_ack_bF$buf2),
    .Y(_1879_)
);

INVX1 _4525_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1879_),
    .Y(\u_cpu.decode.i_wb_rdt [13])
);

MUX2X1 _4526_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[6]),
    .B(\u_mem_serial.shift_rx [6]),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_1880_)
);

INVX1 _4527_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1880_),
    .Y(\u_cpu.decode.i_wb_rdt [6])
);

INVX1 _4528_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[2]),
    .Y(_1881_)
);

NAND2X1 _4529_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [2]),
    .B(_1877__bF$buf3),
    .Y(_1882_)
);

OAI21X1 _4530_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf2),
    .B(_1881_),
    .C(_1882_),
    .Y(\u_cpu.decode.i_wb_rdt [2])
);

MUX2X1 _4531_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[3]),
    .B(\u_mem_serial.shift_rx [3]),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_1883_)
);

INVX1 _4532_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1883_),
    .Y(\u_cpu.decode.i_wb_rdt [3])
);

INVX1 _4533_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[16]),
    .Y(_1884_)
);

NAND2X1 _4534_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [16]),
    .B(_1877__bF$buf1),
    .Y(_1885_)
);

OAI21X1 _4535_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf0),
    .B(_1884_),
    .C(_1885_),
    .Y(\u_cpu.decode.i_wb_rdt [16])
);

INVX1 _4536_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_write_drain_busy),
    .Y(_1886_)
);

INVX1 _4537_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_1887_)
);

NOR2X1 _4538_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_1888_)
);

NOR2X1 _4539_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .Y(_1889_)
);

NAND3X1 _4540_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1887_),
    .B(_1888_),
    .C(_1889_),
    .Y(_1890_)
);

AND2X2 _4541_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.o_wen0 ),
    .B(rf_wreq),
    .Y(_1891_)
);

NAND2X1 _4542_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1891_),
    .B(_1890_),
    .Y(_1892_)
);

INVX1 _4543_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .Y(_1893_)
);

NAND2X1 _4544_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf5),
    .B(_1893_),
    .Y(_1894_)
);

NAND3X1 _4545_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1886_),
    .B(_1894_),
    .C(_1892_),
    .Y(_1895_)
);

INVX8 _4546_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1895__bF$buf3),
    .Y(rf_rreq)
);

INVX1 _4547_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0[1]),
    .Y(_1896_)
);

AOI21X1 _4548_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1890_),
    .B(_1891_),
    .C(rf_write_drain_busy),
    .Y(_1897_)
);

NAND3X1 _4549_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [16]),
    .B(_1894_),
    .C(_1897_),
    .Y(_1898_)
);

OAI21X1 _4550_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1896_),
    .B(rf_rreq_bF$buf5),
    .C(_1898_),
    .Y(rf_read_reg0_to_if[1])
);

INVX1 _4551_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[15]),
    .Y(_1899_)
);

NAND2X1 _4552_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [15]),
    .B(_1877__bF$buf4),
    .Y(_1900_)
);

OAI21X1 _4553_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf3),
    .B(_1899_),
    .C(_1900_),
    .Y(\u_cpu.decode.i_wb_rdt [15])
);

INVX1 _4554_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0[0]),
    .Y(_1901_)
);

NAND3X1 _4555_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [15]),
    .C(_1897_),
    .Y(_1902_)
);

OAI21X1 _4556_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1901_),
    .B(rf_rreq_bF$buf4),
    .C(_1902_),
    .Y(rf_read_reg0_to_if[0])
);

INVX1 _4557_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[14]),
    .Y(_1903_)
);

NAND2X1 _4558_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf3),
    .B(_1903_),
    .Y(_1904_)
);

OAI21X1 _4559_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1904_),
    .Y(_1905_)
);

INVX1 _4560_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1905_),
    .Y(\u_cpu.decode.i_wb_rdt [14])
);

INVX1 _4561_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [5]),
    .Y(_1906_)
);

NAND2X1 _4562_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf1),
    .B(ibus_pending_rdt[5]),
    .Y(_1907_)
);

OAI21X1 _4563_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_1906_),
    .C(_1907_),
    .Y(\u_cpu.decode.i_wb_rdt [5])
);

INVX1 _4564_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[18]),
    .Y(_1908_)
);

NAND2X1 _4565_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [18]),
    .B(_1877__bF$buf2),
    .Y(_1909_)
);

OAI21X1 _4566_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf1),
    .B(_1908_),
    .C(_1909_),
    .Y(\u_cpu.decode.i_wb_rdt [18])
);

INVX1 _4567_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[22]),
    .Y(_1910_)
);

NAND2X1 _4568_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [22]),
    .B(_1877__bF$buf0),
    .Y(_1911_)
);

OAI21X1 _4569_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf5),
    .B(_1910_),
    .C(_1911_),
    .Y(\u_cpu.decode.i_wb_rdt [22])
);

INVX1 _4570_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[2]),
    .Y(_1912_)
);

NAND3X1 _4571_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [22]),
    .C(_1897_),
    .Y(_1913_)
);

OAI21X1 _4572_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1912_),
    .B(rf_rreq_bF$buf3),
    .C(_1913_),
    .Y(rf_read_reg1_to_if[2])
);

INVX1 _4573_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[20]),
    .Y(_1914_)
);

NAND2X1 _4574_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [20]),
    .B(_1877__bF$buf4),
    .Y(_1915_)
);

OAI21X1 _4575_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf3),
    .B(_1914_),
    .C(_1915_),
    .Y(\u_cpu.decode.i_wb_rdt [20])
);

INVX1 _4576_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[0]),
    .Y(_1916_)
);

NAND3X1 _4577_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .C(_1897_),
    .Y(_1917_)
);

OAI21X1 _4578_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1916_),
    .B(rf_rreq_bF$buf2),
    .C(_1917_),
    .Y(rf_read_reg1_to_if[0])
);

INVX1 _4579_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[21]),
    .Y(_1918_)
);

NAND2X1 _4580_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [21]),
    .B(_1877__bF$buf2),
    .Y(_1919_)
);

OAI21X1 _4581_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf1),
    .B(_1918_),
    .C(_1919_),
    .Y(\u_cpu.decode.i_wb_rdt [21])
);

INVX1 _4582_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[1]),
    .Y(_1920_)
);

NAND3X1 _4583_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [21]),
    .C(_1897_),
    .Y(_1921_)
);

OAI21X1 _4584_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1920_),
    .B(rf_rreq_bF$buf1),
    .C(_1921_),
    .Y(rf_read_reg1_to_if[1])
);

INVX1 _4585_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[17]),
    .Y(_1922_)
);

NAND2X1 _4586_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [17]),
    .B(_1877__bF$buf0),
    .Y(_1923_)
);

OAI21X1 _4587_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf5),
    .B(_1922_),
    .C(_1923_),
    .Y(\u_cpu.decode.i_wb_rdt [17])
);

INVX1 _4588_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [4]),
    .Y(_1924_)
);

NAND2X1 _4589_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf3),
    .B(ibus_pending_rdt[4]),
    .Y(_1925_)
);

OAI21X1 _4590_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_1924_),
    .C(_1925_),
    .Y(\u_cpu.decode.i_wb_rdt [4])
);

INVX1 _4591_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[23]),
    .Y(_1926_)
);

NAND2X1 _4592_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [23]),
    .B(_1877__bF$buf4),
    .Y(_1927_)
);

OAI21X1 _4593_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf3),
    .B(_1926_),
    .C(_1927_),
    .Y(\u_cpu.decode.i_wb_rdt [23])
);

INVX1 _4594_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [30]),
    .Y(_1928_)
);

NAND2X1 _4595_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf1),
    .B(ibus_pending_rdt[30]),
    .Y(_1929_)
);

OAI21X1 _4596_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_1928_),
    .C(_1929_),
    .Y(\u_cpu.decode.i_wb_rdt [30])
);

INVX1 _4597_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[29]),
    .Y(_1930_)
);

NAND2X1 _4598_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [29]),
    .B(_1877__bF$buf2),
    .Y(_1931_)
);

OAI21X1 _4599_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf1),
    .B(_1930_),
    .C(_1931_),
    .Y(\u_cpu.decode.i_wb_rdt [29])
);

INVX1 _4600_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[28]),
    .Y(_1932_)
);

NAND2X1 _4601_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [28]),
    .B(_1877__bF$buf0),
    .Y(_1933_)
);

OAI21X1 _4602_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf5),
    .B(_1932_),
    .C(_1933_),
    .Y(\u_cpu.decode.i_wb_rdt [28])
);

INVX1 _4603_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[27]),
    .Y(_1934_)
);

NAND2X1 _4604_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [27]),
    .B(_1877__bF$buf4),
    .Y(_1935_)
);

OAI21X1 _4605_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf3),
    .B(_1934_),
    .C(_1935_),
    .Y(\u_cpu.decode.i_wb_rdt [27])
);

INVX1 _4606_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[26]),
    .Y(_1936_)
);

NAND2X1 _4607_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [26]),
    .B(_1877__bF$buf2),
    .Y(_1937_)
);

OAI21X1 _4608_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf1),
    .B(_1936_),
    .C(_1937_),
    .Y(\u_cpu.decode.i_wb_rdt [26])
);

INVX1 _4609_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[25]),
    .Y(_1938_)
);

NAND2X1 _4610_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [25]),
    .B(_1877__bF$buf0),
    .Y(_1939_)
);

OAI21X1 _4611_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf5),
    .B(_1938_),
    .C(_1939_),
    .Y(\u_cpu.decode.i_wb_rdt [25])
);

INVX1 _4612_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[24]),
    .Y(_1940_)
);

NAND2X1 _4613_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [24]),
    .B(_1877__bF$buf4),
    .Y(_1941_)
);

OAI21X1 _4614_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf3),
    .B(_1940_),
    .C(_1941_),
    .Y(\u_cpu.decode.i_wb_rdt [24])
);

INVX1 _4615_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[19]),
    .Y(_1942_)
);

NAND2X1 _4616_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [19]),
    .B(_1877__bF$buf2),
    .Y(_1943_)
);

OAI21X1 _4617_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf1),
    .B(_1942_),
    .C(_1943_),
    .Y(\u_cpu.decode.i_wb_rdt [19])
);

INVX1 _4618_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[11]),
    .Y(_1944_)
);

NAND2X1 _4619_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [11]),
    .B(_1877__bF$buf0),
    .Y(_1945_)
);

OAI21X1 _4620_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf5),
    .B(_1944_),
    .C(_1945_),
    .Y(\u_cpu.decode.i_wb_rdt [11])
);

INVX1 _4621_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[10]),
    .Y(_1946_)
);

NAND2X1 _4622_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [10]),
    .B(_1877__bF$buf4),
    .Y(_1947_)
);

OAI21X1 _4623_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf3),
    .B(_1946_),
    .C(_1947_),
    .Y(\u_cpu.decode.i_wb_rdt [10])
);

INVX1 _4624_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[9]),
    .Y(_1948_)
);

NAND2X1 _4625_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [9]),
    .B(_1877__bF$buf2),
    .Y(_1949_)
);

OAI21X1 _4626_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf1),
    .B(_1948_),
    .C(_1949_),
    .Y(\u_cpu.decode.i_wb_rdt [9])
);

INVX1 _4627_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[8]),
    .Y(_1950_)
);

NAND2X1 _4628_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [8]),
    .B(_1877__bF$buf0),
    .Y(_1951_)
);

OAI21X1 _4629_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf5),
    .B(_1950_),
    .C(_1951_),
    .Y(\u_cpu.decode.i_wb_rdt [8])
);

INVX1 _4630_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[7]),
    .Y(_1952_)
);

NAND2X1 _4631_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [7]),
    .B(_1877__bF$buf4),
    .Y(_1953_)
);

OAI21X1 _4632_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf3),
    .B(_1952_),
    .C(_1953_),
    .Y(\u_cpu.decode.i_wb_rdt [7])
);

INVX1 _4633_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [1]),
    .Y(_1954_)
);

NAND2X1 _4634_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf3),
    .B(ibus_pending_rdt[1]),
    .Y(_1955_)
);

OAI21X1 _4635_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_1954_),
    .C(_1955_),
    .Y(\u_cpu.i_ibus_rdt [1])
);

INVX1 _4636_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [0]),
    .Y(_1956_)
);

NAND2X1 _4637_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf1),
    .B(ibus_pending_rdt[0]),
    .Y(_1957_)
);

OAI21X1 _4638_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_1956_),
    .C(_1957_),
    .Y(\u_cpu.i_ibus_rdt [0])
);

INVX1 _4639_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0[3]),
    .Y(_1958_)
);

NAND3X1 _4640_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [18]),
    .C(_1897_),
    .Y(_1959_)
);

OAI21X1 _4641_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1958_),
    .B(rf_rreq_bF$buf0),
    .C(_1959_),
    .Y(rf_read_reg0_to_if[3])
);

INVX1 _4642_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[3]),
    .Y(_1960_)
);

NAND3X1 _4643_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [23]),
    .C(_1897_),
    .Y(_1961_)
);

OAI21X1 _4644_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1960_),
    .B(rf_rreq_bF$buf7),
    .C(_1961_),
    .Y(rf_read_reg1_to_if[3])
);

INVX8 _4645_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(i_rst_n_bF$buf5),
    .Y(rst)
);

INVX2 _4646_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf6),
    .Y(_1962_)
);

INVX1 _4647_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(has_fetched_first_insn),
    .Y(_1963_)
);

AOI21X1 _4648_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1895__bF$buf2),
    .B(_1963_),
    .C(_1962_),
    .Y(\u_rf_if.i_rreq )
);

INVX1 _4649_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[4]),
    .Y(_1964_)
);

NAND3X1 _4650_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [24]),
    .C(_1897_),
    .Y(_1965_)
);

OAI21X1 _4651_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1964_),
    .B(rf_rreq_bF$buf5),
    .C(_1965_),
    .Y(rf_read_reg1_to_if[4])
);

INVX1 _4652_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0[4]),
    .Y(_1966_)
);

NAND3X1 _4653_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [19]),
    .C(_1897_),
    .Y(_1967_)
);

OAI21X1 _4654_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1966_),
    .B(rf_rreq_bF$buf4),
    .C(_1967_),
    .Y(rf_read_reg0_to_if[4])
);

OR2X2 _4655_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(current_wdata0_next_hint),
    .B(rf_wdata0_next),
    .Y(rf_wdata0_next_to_if)
);

INVX1 _4656_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[31]),
    .Y(_1968_)
);

NAND2X1 _4657_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [31]),
    .B(_1877__bF$buf2),
    .Y(_1969_)
);

OAI21X1 _4658_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf1),
    .B(_1968_),
    .C(_1969_),
    .Y(\u_cpu.decode.i_wb_rdt [31])
);

INVX1 _4659_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0[2]),
    .Y(_1970_)
);

NAND3X1 _4660_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [17]),
    .C(_1897_),
    .Y(_1971_)
);

OAI21X1 _4661_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1970_),
    .B(rf_rreq_bF$buf3),
    .C(_1971_),
    .Y(rf_read_reg0_to_if[2])
);

NAND3X1 _4662_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1962_),
    .B(rf_read_reg0[4]),
    .C(_1895__bF$buf1),
    .Y(_1972_)
);

NAND3X1 _4663_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[4]),
    .B(rf_rreq_bF$buf2),
    .C(_1895__bF$buf0),
    .Y(_1973_)
);

NAND3X1 _4664_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1967_),
    .B(_1972_),
    .C(_1973_),
    .Y(_1825_)
);

INVX1 _4665_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_div[3]),
    .Y(_1974_)
);

AND2X2 _4666_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_div[0]),
    .B(clk_div[1]),
    .Y(_1975_)
);

NAND2X1 _4667_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_div[2]),
    .B(_1975_),
    .Y(_1976_)
);

NOR2X1 _4668_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1974_),
    .B(_1976_),
    .Y(_1977_)
);

INVX1 _4669_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1976_),
    .Y(_1978_)
);

NOR2X1 _4670_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_div[3]),
    .B(_1978_),
    .Y(_1979_)
);

NOR2X1 _4671_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1977_),
    .B(_1979_),
    .Y(_1826_)
);

NAND3X1 _4672_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1962_),
    .B(rf_read_reg1[4]),
    .C(_1895__bF$buf3),
    .Y(_1980_)
);

NAND3X1 _4673_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_rreq_bF$buf1),
    .B(rreg1[4]),
    .C(_1895__bF$buf2),
    .Y(_1981_)
);

NAND3X1 _4674_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1965_),
    .B(_1980_),
    .C(_1981_),
    .Y(_1827_)
);

NAND2X1 _4675_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_ack_bF$buf3),
    .B(mem_ibus_ack_bF$buf2),
    .Y(_1982_)
);

OAI21X1 _4676_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1893_),
    .B(_1897_),
    .C(_1982_),
    .Y(_1983_)
);

NAND2X1 _4677_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1877__bF$buf0),
    .B(_1897_),
    .Y(_1984_)
);

NAND3X1 _4678_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [23]),
    .C(_1984__bF$buf4),
    .Y(_1985_)
);

OAI21X1 _4679_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1926_),
    .B(_1983__bF$buf4),
    .C(_1985_),
    .Y(_1828_)
);

NAND3X1 _4680_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [22]),
    .C(_1984__bF$buf3),
    .Y(_1986_)
);

OAI21X1 _4681_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1910_),
    .B(_1983__bF$buf3),
    .C(_1986_),
    .Y(_1829_)
);

NAND3X1 _4682_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [21]),
    .C(_1984__bF$buf2),
    .Y(_1987_)
);

OAI21X1 _4683_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1918_),
    .B(_1983__bF$buf2),
    .C(_1987_),
    .Y(_1830_)
);

NAND3X1 _4684_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [20]),
    .C(_1984__bF$buf1),
    .Y(_1988_)
);

OAI21X1 _4685_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1914_),
    .B(_1983__bF$buf1),
    .C(_1988_),
    .Y(_1831_)
);

NAND3X1 _4686_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [19]),
    .C(_1984__bF$buf0),
    .Y(_1989_)
);

OAI21X1 _4687_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1942_),
    .B(_1983__bF$buf0),
    .C(_1989_),
    .Y(_1832_)
);

NAND2X1 _4688_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1963_),
    .B(_1895__bF$buf1),
    .Y(_1833_)
);

NAND3X1 _4689_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [18]),
    .C(_1984__bF$buf4),
    .Y(_1990_)
);

OAI21X1 _4690_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1908_),
    .B(_1983__bF$buf4),
    .C(_1990_),
    .Y(_1834_)
);

NOR2X1 _4691_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_sys_bF$buf5),
    .B(_1977_),
    .Y(_1991_)
);

AND2X2 _4692_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1977_),
    .B(clk_sys_bF$buf4),
    .Y(_1992_)
);

NOR2X1 _4693_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1991_),
    .B(_1992_),
    .Y(_1835_)
);

NAND2X1 _4694_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(current_wdata0_next_hint),
    .B(_1895__bF$buf0),
    .Y(_1993_)
);

NAND2X1 _4695_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1879_),
    .B(\u_cpu.decode.i_wb_rdt [12]),
    .Y(_1994_)
);

NAND3X1 _4696_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1879_),
    .B(\u_cpu.decode.i_wb_rdt [5]),
    .C(\u_cpu.decode.i_wb_rdt [30]),
    .Y(_1995_)
);

NAND2X1 _4697_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1905_),
    .B(_1995_),
    .Y(_1996_)
);

AOI21X1 _4698_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1996_),
    .B(_1994_),
    .C(\u_cpu.decode.i_wb_rdt [2]),
    .Y(_1997_)
);

NAND2X1 _4699_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1880_),
    .B(_1883_),
    .Y(_1998_)
);

NAND3X1 _4700_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.decode.i_wb_rdt [4]),
    .B(\u_cpu.i_ibus_rdt [1]),
    .C(\u_cpu.i_ibus_rdt [0]),
    .Y(_1999_)
);

NOR2X1 _4701_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1998_),
    .B(_1999_),
    .Y(_2000_)
);

NAND3X1 _4702_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1897_),
    .B(_1894_),
    .C(_2000_),
    .Y(_2001_)
);

OAI21X1 _4703_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1997_),
    .B(_2001_),
    .C(_1993_),
    .Y(_1836_)
);

NAND3X1 _4704_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [17]),
    .C(_1984__bF$buf3),
    .Y(_2002_)
);

OAI21X1 _4705_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1922_),
    .B(_1983__bF$buf3),
    .C(_2002_),
    .Y(_1837_)
);

INVX1 _4706_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1894_),
    .Y(_2003_)
);

AOI21X1 _4707_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1897_),
    .B(_1982_),
    .C(_2003_),
    .Y(_1838_)
);

NAND3X1 _4708_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [16]),
    .B(mem_ibus_ack_bF$buf4),
    .C(_1984__bF$buf2),
    .Y(_2004_)
);

OAI21X1 _4709_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1884_),
    .B(_1983__bF$buf2),
    .C(_2004_),
    .Y(_1839_)
);

NAND3X1 _4710_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [15]),
    .C(_1984__bF$buf1),
    .Y(_2005_)
);

OAI21X1 _4711_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1899_),
    .B(_1983__bF$buf1),
    .C(_2005_),
    .Y(_1840_)
);

NAND3X1 _4712_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1984__bF$buf0),
    .Y(_2006_)
);

OAI21X1 _4713_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1903_),
    .B(_1983__bF$buf0),
    .C(_2006_),
    .Y(_1841_)
);

INVX1 _4714_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[13]),
    .Y(_2007_)
);

NAND3X1 _4715_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [13]),
    .B(mem_ibus_ack_bF$buf1),
    .C(_1984__bF$buf4),
    .Y(_2008_)
);

OAI21X1 _4716_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2007_),
    .B(_1983__bF$buf4),
    .C(_2008_),
    .Y(_1842_)
);

NAND3X1 _4717_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [12]),
    .B(mem_ibus_ack_bF$buf0),
    .C(_1984__bF$buf3),
    .Y(_2009_)
);

OAI21X1 _4718_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1876_),
    .B(_1983__bF$buf3),
    .C(_2009_),
    .Y(_1843_)
);

NAND3X1 _4719_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [11]),
    .C(_1984__bF$buf2),
    .Y(_2010_)
);

OAI21X1 _4720_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1944_),
    .B(_1983__bF$buf2),
    .C(_2010_),
    .Y(_1844_)
);

NAND3X1 _4721_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [10]),
    .C(_1984__bF$buf1),
    .Y(_2011_)
);

OAI21X1 _4722_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1946_),
    .B(_1983__bF$buf1),
    .C(_2011_),
    .Y(_1845_)
);

NAND3X1 _4723_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [9]),
    .C(_1984__bF$buf0),
    .Y(_2012_)
);

OAI21X1 _4724_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1948_),
    .B(_1983__bF$buf0),
    .C(_2012_),
    .Y(_1846_)
);

NAND3X1 _4725_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [8]),
    .C(_1984__bF$buf4),
    .Y(_2013_)
);

OAI21X1 _4726_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1950_),
    .B(_1983__bF$buf4),
    .C(_2013_),
    .Y(_1847_)
);

NAND3X1 _4727_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [7]),
    .C(_1984__bF$buf3),
    .Y(_2014_)
);

OAI21X1 _4728_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1952_),
    .B(_1983__bF$buf3),
    .C(_2014_),
    .Y(_1848_)
);

INVX1 _4729_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[6]),
    .Y(_2015_)
);

NAND3X1 _4730_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [6]),
    .B(mem_ibus_ack_bF$buf4),
    .C(_1984__bF$buf2),
    .Y(_2016_)
);

OAI21X1 _4731_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2015_),
    .B(_1983__bF$buf2),
    .C(_2016_),
    .Y(_1849_)
);

INVX1 _4732_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[5]),
    .Y(_2017_)
);

NAND3X1 _4733_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [5]),
    .C(_1984__bF$buf1),
    .Y(_2018_)
);

OAI21X1 _4734_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2017_),
    .B(_1983__bF$buf1),
    .C(_2018_),
    .Y(_1850_)
);

INVX1 _4735_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[4]),
    .Y(_2019_)
);

NAND3X1 _4736_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [4]),
    .C(_1984__bF$buf0),
    .Y(_2020_)
);

OAI21X1 _4737_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2019_),
    .B(_1983__bF$buf0),
    .C(_2020_),
    .Y(_1851_)
);

INVX1 _4738_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[3]),
    .Y(_2021_)
);

NAND3X1 _4739_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [3]),
    .B(mem_ibus_ack_bF$buf1),
    .C(_1984__bF$buf4),
    .Y(_2022_)
);

OAI21X1 _4740_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2021_),
    .B(_1983__bF$buf4),
    .C(_2022_),
    .Y(_1852_)
);

NAND3X1 _4741_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_mem_serial.shift_rx [2]),
    .B(mem_ibus_ack_bF$buf0),
    .C(_1984__bF$buf3),
    .Y(_2023_)
);

OAI21X1 _4742_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1881_),
    .B(_1983__bF$buf3),
    .C(_2023_),
    .Y(_1853_)
);

INVX1 _4743_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[1]),
    .Y(_2024_)
);

NAND3X1 _4744_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [1]),
    .C(_1984__bF$buf2),
    .Y(_2025_)
);

OAI21X1 _4745_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2024_),
    .B(_1983__bF$buf2),
    .C(_2025_),
    .Y(_1854_)
);

INVX1 _4746_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[0]),
    .Y(_2026_)
);

NAND3X1 _4747_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [0]),
    .C(_1984__bF$buf1),
    .Y(_2027_)
);

OAI21X1 _4748_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2026_),
    .B(_1983__bF$buf1),
    .C(_2027_),
    .Y(_1855_)
);

NAND3X1 _4749_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[3]),
    .B(_1962_),
    .C(_1895__bF$buf3),
    .Y(_2028_)
);

NAND3X1 _4750_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[3]),
    .B(rf_rreq_bF$buf0),
    .C(_1895__bF$buf2),
    .Y(_2029_)
);

NAND3X1 _4751_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1961_),
    .B(_2028_),
    .C(_2029_),
    .Y(_1856_)
);

NAND3X1 _4752_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[2]),
    .B(_1962_),
    .C(_1895__bF$buf1),
    .Y(_2030_)
);

NAND3X1 _4753_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[2]),
    .B(rf_rreq_bF$buf7),
    .C(_1895__bF$buf0),
    .Y(_2031_)
);

NAND3X1 _4754_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1913_),
    .B(_2030_),
    .C(_2031_),
    .Y(_1857_)
);

NAND3X1 _4755_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[1]),
    .B(_1962_),
    .C(_1895__bF$buf3),
    .Y(_2032_)
);

NAND3X1 _4756_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[1]),
    .B(rf_rreq_bF$buf6),
    .C(_1895__bF$buf2),
    .Y(_2033_)
);

NAND3X1 _4757_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1921_),
    .B(_2032_),
    .C(_2033_),
    .Y(_1858_)
);

NAND3X1 _4758_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg1[0]),
    .B(_1962_),
    .C(_1895__bF$buf1),
    .Y(_2034_)
);

NAND3X1 _4759_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg1[0]),
    .B(rf_rreq_bF$buf5),
    .C(_1895__bF$buf0),
    .Y(_2035_)
);

NAND3X1 _4760_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1917_),
    .B(_2034_),
    .C(_2035_),
    .Y(_1859_)
);

NOR2X1 _4761_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_div[2]),
    .B(_1975_),
    .Y(_2036_)
);

NOR2X1 _4762_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2036_),
    .B(_1978_),
    .Y(_1860_)
);

NAND3X1 _4763_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [31]),
    .C(_1984__bF$buf0),
    .Y(_2037_)
);

OAI21X1 _4764_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1968_),
    .B(_1983__bF$buf0),
    .C(_2037_),
    .Y(_1861_)
);

NOR2X1 _4765_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_div[0]),
    .B(clk_div[1]),
    .Y(_2038_)
);

NOR2X1 _4766_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2038_),
    .B(_1975_),
    .Y(_1862_)
);

INVX1 _4767_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(clk_div[0]),
    .Y(_1863_)
);

NAND3X1 _4768_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0[3]),
    .B(_1962_),
    .C(_1895__bF$buf3),
    .Y(_2039_)
);

NAND3X1 _4769_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[3]),
    .B(rf_rreq_bF$buf4),
    .C(_1895__bF$buf2),
    .Y(_2040_)
);

NAND3X1 _4770_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1959_),
    .B(_2039_),
    .C(_2040_),
    .Y(_1864_)
);

NAND3X1 _4771_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1962_),
    .B(rf_read_reg0[2]),
    .C(_1895__bF$buf1),
    .Y(_2041_)
);

NAND3X1 _4772_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[2]),
    .B(rf_rreq_bF$buf3),
    .C(_1895__bF$buf0),
    .Y(_2042_)
);

NAND3X1 _4773_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1971_),
    .B(_2041_),
    .C(_2042_),
    .Y(_1865_)
);

NAND3X1 _4774_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0[1]),
    .B(_1962_),
    .C(_1895__bF$buf3),
    .Y(_2043_)
);

NAND3X1 _4775_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rreg0[1]),
    .B(rf_rreq_bF$buf2),
    .C(_1895__bF$buf2),
    .Y(_2044_)
);

NAND3X1 _4776_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1898_),
    .B(_2043_),
    .C(_2044_),
    .Y(_1866_)
);

NAND3X1 _4777_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(rf_read_reg0[0]),
    .B(_1962_),
    .C(_1895__bF$buf1),
    .Y(_2045_)
);

NAND3X1 _4778_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_cpu.csr_imm ),
    .B(rf_rreq_bF$buf1),
    .C(_1895__bF$buf0),
    .Y(_2046_)
);

NAND3X1 _4779_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1902_),
    .B(_2045_),
    .C(_2046_),
    .Y(_1867_)
);

INVX1 _4780_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(ibus_pending_rdt[30]),
    .Y(_2047_)
);

NAND3X1 _4781_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [30]),
    .C(_1984__bF$buf4),
    .Y(_2048_)
);

OAI21X1 _4782_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2047_),
    .B(_1983__bF$buf4),
    .C(_2048_),
    .Y(_1868_)
);

NAND3X1 _4783_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [29]),
    .C(_1984__bF$buf3),
    .Y(_2049_)
);

OAI21X1 _4784_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1930_),
    .B(_1983__bF$buf3),
    .C(_2049_),
    .Y(_1869_)
);

NAND3X1 _4785_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [28]),
    .C(_1984__bF$buf2),
    .Y(_2050_)
);

OAI21X1 _4786_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1932_),
    .B(_1983__bF$buf2),
    .C(_2050_),
    .Y(_1870_)
);

NAND3X1 _4787_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [27]),
    .C(_1984__bF$buf1),
    .Y(_2051_)
);

OAI21X1 _4788_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1934_),
    .B(_1983__bF$buf1),
    .C(_2051_),
    .Y(_1871_)
);

NAND3X1 _4789_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [26]),
    .C(_1984__bF$buf0),
    .Y(_2052_)
);

OAI21X1 _4790_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1936_),
    .B(_1983__bF$buf0),
    .C(_2052_),
    .Y(_1872_)
);

NAND3X1 _4791_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [25]),
    .C(_1984__bF$buf4),
    .Y(_2053_)
);

OAI21X1 _4792_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1938_),
    .B(_1983__bF$buf4),
    .C(_2053_),
    .Y(_1873_)
);

NAND3X1 _4793_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [24]),
    .C(_1984__bF$buf3),
    .Y(_2054_)
);

OAI21X1 _4794_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1940_),
    .B(_1983__bF$buf3),
    .C(_2054_),
    .Y(_1874_)
);

NAND2X1 _4795_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_2055_)
);

NAND3X1 _4796_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(\u_rf_if.o_waddr [3]),
    .B(\u_rf_if.o_waddr [2]),
    .C(\u_rf_if.o_wen ),
    .Y(_2056_)
);

OAI21X1 _4797_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_2055_),
    .B(_2056_),
    .C(_1892_),
    .Y(_2057_)
);

OAI21X1 _4798_ (
    .vdd(vdd),
    .gnd(gnd),
    .A(_1886_),
    .B(_2057_),
    .C(_1892_),
    .Y(_1875_)
);

DFFPOSX1 _4799_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf2),
    .D(_1863_),
    .Q(clk_div[0])
);

DFFPOSX1 _4800_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf1),
    .D(_1862_),
    .Q(clk_div[1])
);

DFFSR _4801_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf3),
    .D(_1861_),
    .Q(ibus_pending_rdt[31]),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFPOSX1 _4802_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf0),
    .D(_1860_),
    .Q(clk_div[2])
);

DFFSR _4803_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf2),
    .D(_1859_),
    .Q(rf_read_reg1[0]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFSR _4804_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf1),
    .D(_1858_),
    .Q(rf_read_reg1[1]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFPOSX1 _4805_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf7),
    .D(_752_),
    .Q(\u_mem_serial.shift_rx [9])
);

DFFPOSX1 _4806_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf6),
    .D(_58_),
    .Q(\u_rf_serial.last_req_key [6])
);

DFFSR _4807_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf0),
    .D(_1857_),
    .Q(rf_read_reg1[2]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFSR _4808_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf45),
    .D(_1856_),
    .Q(rf_read_reg1[3]),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFPOSX1 _4809_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf44),
    .D(_546_),
    .Q(\u_rf_if.stream_cnt [4])
);

DFFPOSX1 _4810_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf43),
    .D(_2072_),
    .Q(\u_cpu.mem_if.signbit )
);

DFFSR _4811_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf42),
    .D(_1855_),
    .Q(ibus_pending_rdt[0]),
    .R(vdd),
    .S(i_rst_n_bF$buf5)
);

DFFSR _4812_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf41),
    .D(_1854_),
    .Q(ibus_pending_rdt[1]),
    .R(vdd),
    .S(i_rst_n_bF$buf4)
);

DFFSR _4813_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf40),
    .D(_1853_),
    .Q(ibus_pending_rdt[2]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFSR _4814_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf39),
    .D(_1852_),
    .Q(ibus_pending_rdt[3]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFSR _4815_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf38),
    .D(_1851_),
    .Q(ibus_pending_rdt[4]),
    .R(vdd),
    .S(i_rst_n_bF$buf1)
);

DFFSR _4816_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf37),
    .D(_1850_),
    .Q(ibus_pending_rdt[5]),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFSR _4817_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf36),
    .D(_1849_),
    .Q(ibus_pending_rdt[6]),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFSR _4818_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf35),
    .D(_1848_),
    .Q(ibus_pending_rdt[7]),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFSR _4819_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf34),
    .D(_1847_),
    .Q(ibus_pending_rdt[8]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFSR _4820_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf33),
    .D(_1846_),
    .Q(ibus_pending_rdt[9]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFSR _4821_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf32),
    .D(_1845_),
    .Q(ibus_pending_rdt[10]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFSR _4822_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf31),
    .D(_1844_),
    .Q(ibus_pending_rdt[11]),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFSR _4823_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf30),
    .D(_1843_),
    .Q(ibus_pending_rdt[12]),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFSR _4824_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf29),
    .D(_1842_),
    .Q(ibus_pending_rdt[13]),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFSR _4825_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf28),
    .D(_1841_),
    .Q(ibus_pending_rdt[14]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFSR _4826_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf27),
    .D(_1840_),
    .Q(ibus_pending_rdt[15]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFSR _4827_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf26),
    .D(_1839_),
    .Q(ibus_pending_rdt[16]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFSR _4828_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf25),
    .D(_1838_),
    .Q(ibus_pending_ack),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFSR _4829_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf24),
    .D(_1837_),
    .Q(ibus_pending_rdt[17]),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFSR _4830_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf23),
    .D(_1836_),
    .Q(current_wdata0_next_hint),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFPOSX1 _4831_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf5),
    .D(_1835_),
    .Q(clk_sys)
);

DFFSR _4832_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf22),
    .D(_1834_),
    .Q(ibus_pending_rdt[18]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFSR _4833_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf21),
    .D(_1833_),
    .Q(has_fetched_first_insn),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFSR _4834_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf20),
    .D(_1832_),
    .Q(ibus_pending_rdt[19]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFSR _4835_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf19),
    .D(_1831_),
    .Q(ibus_pending_rdt[20]),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFSR _4836_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf18),
    .D(_1830_),
    .Q(ibus_pending_rdt[21]),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFSR _4837_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf17),
    .D(_1829_),
    .Q(ibus_pending_rdt[22]),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFSR _4838_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf16),
    .D(_1828_),
    .Q(ibus_pending_rdt[23]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFSR _4839_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf15),
    .D(_1827_),
    .Q(rf_read_reg1[4]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFPOSX1 _4840_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(i_clk_fast_bF$buf4),
    .D(_1826_),
    .Q(clk_div[3])
);

DFFSR _4841_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf14),
    .D(_1825_),
    .Q(rf_read_reg0[4]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFSR _4842_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf13),
    .D(_1875_),
    .Q(rf_write_drain_busy),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFSR _4843_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf12),
    .D(_1874_),
    .Q(ibus_pending_rdt[24]),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFSR _4844_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf11),
    .D(_1873_),
    .Q(ibus_pending_rdt[25]),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFSR _4845_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf10),
    .D(_1872_),
    .Q(ibus_pending_rdt[26]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFSR _4846_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf9),
    .D(_1871_),
    .Q(ibus_pending_rdt[27]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFSR _4847_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf8),
    .D(_1870_),
    .Q(ibus_pending_rdt[28]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

DFFSR _4848_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf7),
    .D(_1869_),
    .Q(ibus_pending_rdt[29]),
    .R(i_rst_n_bF$buf0),
    .S(vdd)
);

DFFSR _4849_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf6),
    .D(_1868_),
    .Q(ibus_pending_rdt[30]),
    .R(i_rst_n_bF$buf5),
    .S(vdd)
);

DFFSR _4850_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf5),
    .D(_1867_),
    .Q(rf_read_reg0[0]),
    .R(i_rst_n_bF$buf4),
    .S(vdd)
);

DFFSR _4851_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf4),
    .D(_1866_),
    .Q(rf_read_reg0[1]),
    .R(i_rst_n_bF$buf3),
    .S(vdd)
);

DFFSR _4852_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf3),
    .D(_1865_),
    .Q(rf_read_reg0[2]),
    .R(i_rst_n_bF$buf2),
    .S(vdd)
);

DFFSR _4853_ (
    .vdd(vdd),
    .gnd(gnd),
    .CLK(clk_sys_bF$buf2),
    .D(_1864_),
    .Q(rf_read_reg0[3]),
    .R(i_rst_n_bF$buf1),
    .S(vdd)
);

endmodule
