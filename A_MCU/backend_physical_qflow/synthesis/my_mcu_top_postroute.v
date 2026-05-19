/* Verilog module written by DEF2Verilog (qflow) */
module my_mcu_top (
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
wire \u_cpu.ctrl.pc_plus_4_cy_r_w  ;
wire _1295_ ;
wire i_uart_rx ;
wire _2101_ ;
wire _1315__bF$buf0 ;
wire _1315__bF$buf1 ;
wire _1315__bF$buf2 ;
wire _1315__bF$buf3 ;
wire _703_ ;
wire [2:0] \u_cpu.decode.opcode  ;
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
wire [2:2] \u_cpu.state.o_cnt  ;
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
wire \u_cpu.ctrl.o_rd  ;
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
wire \u_cpu.bufreg2.o_q  ;
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
wire \u_cpu.alu.add_cy_r  ;
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
wire [0:0] \u_rf_if.wdata1_r  ;
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
wire [0:0] \u_rf_if.wdata0_r  ;
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
wire \u_cpu.bufreg.c_r  ;
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
wire _1453_ ;
wire [1:0] \u_mem_serial.state  ;
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
wire [5:5] \u_rf_if.issue_idx  ;
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
wire [0:0] \u_cpu.alu.i_rd_sel  ;
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
wire \u_cpu.mem_if.o_rd  ;
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
wire [1:0] \u_cpu.i_ibus_rdt  ;
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
wire _2023_ ;
wire _1714_ ;
wire _625_ ;
wire _205_ ;
wire \u_cpu.csr_imm  ;
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
wire \u_cpu.alu.i_op_b  ;
wire \u_cpu.alu.o_rd  ;
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
wire [31:1] \u_cpu.ctrl.o_ibus_adr  ;
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
wire \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
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
wire _974_ ;
wire \u_cpu.cnt12to31  ;
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
wire [4:1] rreg0 ;
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
wire \u_cpu.bufreg.i_imm  ;
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
wire [2:0] \u_cpu.decode.co_immdec_ctrl  ;
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
wire gnd = 1'b0 ;
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
wire [6:6] \u_cpu.bufreg2.cnt_next  ;
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
wire \u_cpu.ctrl.pc  ;
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
wire vdd = 1'b1 ;
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
wire \u_cpu.o_wdata0  ;
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
wire [3:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20  ;
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
wire \u_cpu.alu.i_buf  ;
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

NAND2X1 _4552_ (
    .A(\u_mem_serial.shift_rx [15]),
    .B(_1877__bF$buf0),
    .Y(_1900_)
);

DFFPOSX1 _4132_ (
    .D(_886_),
    .CLK(clk_sys_bF$buf31),
    .Q(\u_cpu.bufreg.data [31])
);

FILL FILL_1__4294_ (
);

OAI21X1 _3823_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_397_),
    .Y(\u_cpu.decode.co_immdec_ctrl [1])
);

NAND3X1 _3403_ (
    .A(_25_),
    .B(\u_rf_if.prefetch_active ),
    .C(_19_),
    .Y(_18_)
);

OAI21X1 _4608_ (
    .A(_1877__bF$buf1),
    .B(_1936_),
    .C(_1937_),
    .Y(\u_cpu.decode.i_wb_rdt [26])
);

FILL FILL_1__3145_ (
);

FILL FILL_0__2255_ (
);

NAND3X1 _4781_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [30]),
    .C(_1984__bF$buf0),
    .Y(_2048_)
);

DFFPOSX1 _4361_ (
    .D(_1121_),
    .CLK(clk_sys_bF$buf28),
    .Q(\u_cpu.bufreg2.dlo [23])
);

FILL FILL_0__4401_ (
);

NAND3X1 _3632_ (
    .A(_2112_),
    .B(_2114_),
    .C(_2119_),
    .Y(_2120_)
);

AOI21X1 _3212_ (
    .A(_459_),
    .B(_484__bF$buf1),
    .C(_1732_),
    .Y(_567_)
);

DFFSR _4837_ (
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1829_),
    .CLK(clk_sys_bF$buf14),
    .Q(ibus_pending_rdt[22])
);

INVX1 _4417_ (
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_1540_)
);

BUFX2 BUFX2_insert120 (
    .A(_484_),
    .Y(_484__bF$buf2)
);

BUFX2 BUFX2_insert121 (
    .A(_484_),
    .Y(_484__bF$buf1)
);

BUFX2 BUFX2_insert122 (
    .A(_484_),
    .Y(_484__bF$buf0)
);

BUFX2 BUFX2_insert123 (
    .A(_1303_),
    .Y(_1303__bF$buf3)
);

BUFX2 BUFX2_insert124 (
    .A(_1303_),
    .Y(_1303__bF$buf2)
);

BUFX2 BUFX2_insert125 (
    .A(_1303_),
    .Y(_1303__bF$buf1)
);

BUFX2 BUFX2_insert126 (
    .A(_1303_),
    .Y(_1303__bF$buf0)
);

BUFX2 BUFX2_insert127 (
    .A(rst),
    .Y(rst_bF$buf10)
);

BUFX2 BUFX2_insert128 (
    .A(rst),
    .Y(rst_bF$buf9)
);

BUFX2 BUFX2_insert129 (
    .A(rst),
    .Y(rst_bF$buf8)
);

OAI21X1 _4590_ (
    .A(ibus_pending_ack_bF$buf3),
    .B(_1924_),
    .C(_1925_),
    .Y(\u_cpu.decode.i_wb_rdt [4])
);

OR2X2 _4170_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1155_)
);

DFFPOSX1 _2903_ (
    .D(_571_),
    .CLK(clk_sys_bF$buf35),
    .Q(\u_rf_if.read_buf1 [1])
);

FILL FILL_0__3269_ (
);

FILL FILL_0__4630_ (
);

DFFPOSX1 _3861_ (
    .D(_366_),
    .CLK(clk_sys_bF$buf23),
    .Q(\u_cpu.decode.opcode [2])
);

NOR2X1 _3441_ (
    .A(\u_rf_if.read_buf0 [19]),
    .B(_446__bF$buf2),
    .Y(_299_)
);

OAI21X1 _3021_ (
    .A(raddr[4]),
    .B(_1697_),
    .C(_32__bF$buf4),
    .Y(_1592_)
);

INVX2 _4646_ (
    .A(rf_rreq_bF$buf5),
    .Y(_1962_)
);

NAND2X1 _4226_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [30]),
    .Y(_1203_)
);

FILL FILL_1__3183_ (
);

FILL FILL_0__2293_ (
);

NAND2X1 _2712_ (
    .A(\u_rf_serial.last_req_key [4]),
    .B(_114_),
    .Y(_234_)
);

MUX2X1 _3917_ (
    .A(\u_cpu.decode.i_wb_rdt [18]),
    .B(rreg0[4]),
    .S(rf_rreq_bF$buf4),
    .Y(_691_)
);

FILL FILL_1__3659_ (
);

NAND2X1 _3670_ (
    .A(\u_cpu.decode.co_rd_alu_en ),
    .B(\u_cpu.alu.o_rd ),
    .Y(_36_)
);

NAND3X1 _3250_ (
    .A(_2154__bF$buf2),
    .B(_2062__bF$buf2),
    .C(_1757_),
    .Y(_1756_)
);

FILL FILL_0__2769_ (
);

FILL FILL145050x122550 (
);

OAI21X1 _4455_ (
    .A(_1530__bF$buf4),
    .B(_1560_),
    .C(_1561_),
    .Y(_1490_)
);

INVX1 _4035_ (
    .A(\u_cpu.bufreg.data [4]),
    .Y(_911_)
);

FILL FILL_1_CLKBUF1_insert65 (
);

FILL FILL_1_CLKBUF1_insert69 (
);

FILL FILL_0_BUFX2_insert20 (
);

FILL FILL_0_BUFX2_insert22 (
);

FILL FILL_0_BUFX2_insert23 (
);

FILL FILL_0_BUFX2_insert25 (
);

FILL FILL_0_BUFX2_insert27 (
);

FILL FILL_0_BUFX2_insert29 (
);

DFFPOSX1 _2941_ (
    .D(_550_),
    .CLK(clk_sys_bF$buf13),
    .Q(\u_rf_if.read_buf1 [31])
);

OR2X2 _2521_ (
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(\u_cpu.bufreg.data [27]),
    .Y(_996_)
);

AND2X2 _3726_ (
    .A(_161_),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_128_)
);

OAI21X1 _3306_ (
    .A(_18__bF$buf4),
    .B(_1803_),
    .C(\u_rf_if.read_buf1 [20]),
    .Y(_1799_)
);

FILL FILL_1__3468_ (
);

FILL FILL_0__2578_ (
);

NAND3X1 _4684_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [20]),
    .C(_1984__bF$buf2),
    .Y(_1988_)
);

OAI21X1 _4264_ (
    .A(_1138_),
    .B(_1235_),
    .C(_1136_),
    .Y(_1236_)
);

FILL FILL_0__4304_ (
);

INVX1 _2750_ (
    .A(_206_),
    .Y(_207_)
);

NAND3X1 _2330_ (
    .A(_1315__bF$buf3),
    .B(_1367_),
    .C(_1303__bF$buf0),
    .Y(_1368_)
);

NAND2X1 _3955_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_683_),
    .Y(_717_)
);

NOR2X1 _3535_ (
    .A(\u_rf_if.read_buf1 [11]),
    .B(_446__bF$buf1),
    .Y(_437_)
);

OAI21X1 _3115_ (
    .A(_1717__bF$buf2),
    .B(_1794_),
    .C(\u_rf_if.read_buf0 [18]),
    .Y(_1659_)
);

DFFPOSX1 _4493_ (
    .D(_1492_),
    .CLK(clk_sys_bF$buf42),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

NAND3X1 _4073_ (
    .A(\u_cpu.bufreg.i_init ),
    .B(_937_),
    .C(_899_),
    .Y(_938_)
);

NAND2X1 _2806_ (
    .A(ren_bF$buf4),
    .B(raddr[6]),
    .Y(_93_)
);

FILL FILL_0__4533_ (
);

INVX1 _3764_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(\u_cpu.decode.co_mem_signed )
);

NAND2X1 _3344_ (
    .A(_10__bF$buf1),
    .B(_2065_),
    .Y(_2064_)
);

NAND3X1 _4549_ (
    .A(\u_cpu.decode.i_wb_rdt [16]),
    .B(_1894_),
    .C(_1897_),
    .Y(_1898_)
);

DFFPOSX1 _4129_ (
    .D(_860_),
    .CLK(clk_sys_bF$buf38),
    .Q(\u_cpu.bufreg.data [11])
);

FILL FILL_0__3804_ (
);

NAND3X1 _2615_ (
    .A(_798_),
    .B(_799_),
    .C(_800_),
    .Y(_801_)
);

BUFX2 BUFX2_insert30 (
    .A(_2062_),
    .Y(_2062__bF$buf2)
);

BUFX2 BUFX2_insert31 (
    .A(_2062_),
    .Y(_2062__bF$buf1)
);

BUFX2 BUFX2_insert32 (
    .A(_2062_),
    .Y(_2062__bF$buf0)
);

BUFX2 BUFX2_insert33 (
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf6 )
);

BUFX2 BUFX2_insert34 (
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf5 )
);

BUFX2 BUFX2_insert35 (
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf4 )
);

BUFX2 BUFX2_insert36 (
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf3 )
);

BUFX2 BUFX2_insert37 (
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf2 )
);

BUFX2 BUFX2_insert38 (
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf1 )
);

BUFX2 BUFX2_insert39 (
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf0 )
);

DFFPOSX1 _3993_ (
    .D(_627_),
    .CLK(clk_sys_bF$buf3),
    .Q(rreg0[4])
);

OAI21X1 _3573_ (
    .A(_483_),
    .B(_473_),
    .C(_468_),
    .Y(\u_rf_if.o_wdata [0])
);

NAND3X1 _3153_ (
    .A(_2062__bF$buf0),
    .B(_1715__bF$buf3),
    .C(_2060_),
    .Y(_1684_)
);

NAND3X1 _4778_ (
    .A(\u_cpu.csr_imm ),
    .B(rf_rreq_bF$buf6),
    .C(_1895__bF$buf2),
    .Y(_2046_)
);

DFFPOSX1 _4358_ (
    .D(_1124_),
    .CLK(clk_sys_bF$buf25),
    .Q(\u_cpu.bufreg2.dlo [13])
);

FILL FILL_0__3613_ (
);

DFFPOSX1 _2844_ (
    .D(_602_),
    .CLK(clk_sys_bF$buf10),
    .Q(\u_rf_if.read_buf1 [29])
);

INVX1 _2424_ (
    .A(\u_cpu.mem_if.o_wb_sel [3]),
    .Y(_1094_)
);

FILL FILL_0__4571_ (
);

INVX1 _3629_ (
    .A(\u_cpu.alu.i_sub ),
    .Y(_2117_)
);

AOI21X1 _3209_ (
    .A(_459_),
    .B(_1734_),
    .C(_484__bF$buf1),
    .Y(_1729_)
);

OR2X2 _3382_ (
    .A(_13_),
    .B(_17_),
    .Y(_2153_)
);

OAI21X1 _4587_ (
    .A(_1877__bF$buf5),
    .B(_1922_),
    .C(_1923_),
    .Y(\u_cpu.decode.i_wb_rdt [17])
);

OAI21X1 _4167_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_1151_),
    .C(_1152_),
    .Y(\u_cpu.alu.i_op_b )
);

FILL FILL_0__3842_ (
);

FILL FILL_0__4207_ (
);

INVX1 _2653_ (
    .A(_210_),
    .Y(_289_)
);

AOI21X1 _2233_ (
    .A(_1439_),
    .B(_1440_),
    .C(rst_bF$buf3),
    .Y(_783_)
);

FILL FILL_0__4380_ (
);

NAND2X1 _3858_ (
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.i_wb_rdt [2]),
    .Y(_418_)
);

NAND2X1 _3438_ (
    .A(_448_),
    .B(_297_),
    .Y(_296_)
);

OAI21X1 _3018_ (
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1696_),
    .C(_32__bF$buf1),
    .Y(_1590_)
);

FILL FILL_1_BUFX2_insert92 (
);

FILL FILL_1_BUFX2_insert96 (
);

FILL FILL_0_CLKBUF1_insert71 (
);

FILL FILL_0_CLKBUF1_insert73 (
);

FILL FILL_0_CLKBUF1_insert75 (
);

FILL FILL_0_CLKBUF1_insert77 (
);

FILL FILL_0_CLKBUF1_insert79 (
);

NAND3X1 _3191_ (
    .A(_1715__bF$buf3),
    .B(_2099_),
    .C(_2150_),
    .Y(_1714_)
);

OR2X2 _4396_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1525_)
);

FILL FILL_0__3651_ (
);

FILL FILL_0__3231_ (
);

INVX1 _2709_ (
    .A(\u_rf_serial.last_req_key [9]),
    .Y(_237_)
);

DFFPOSX1 _2882_ (
    .D(_583_),
    .CLK(clk_sys_bF$buf35),
    .Q(\u_rf_if.read_buf1 [10])
);

AOI22X1 _2462_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_795_),
    .C(_845_),
    .D(\u_cpu.bufreg.i_shamt [1]),
    .Y(_1056_)
);

NOR3X1 _3667_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_34_)
);

NAND2X1 _3247_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1755_),
    .Y(_1754_)
);

FILL FILL_0__2502_ (
);

DFFPOSX1 _2938_ (
    .D(_501_),
    .CLK(clk_sys_bF$buf6),
    .Q(\u_rf_if.write_wait [4])
);

NAND3X1 _2518_ (
    .A(_798_),
    .B(_996_),
    .C(_999_),
    .Y(_1000_)
);

FILL FILL_0__4245_ (
);

FILL FILL_1__3621_ (
);

NAND2X1 _2691_ (
    .A(ren_bF$buf4),
    .B(_254_),
    .Y(_255_)
);

OAI21X1 _2271_ (
    .A(_805_),
    .B(_1414_),
    .C(_1310_),
    .Y(_1415_)
);

INVX1 _3896_ (
    .A(\u_cpu.decode.co_immdec_ctrl [1]),
    .Y(_673_)
);

NOR2X1 _3476_ (
    .A(\u_rf_if.read_buf0 [7]),
    .B(_446__bF$buf3),
    .Y(_334_)
);

OAI21X1 _3056_ (
    .A(_1717__bF$buf1),
    .B(_1744_),
    .C(\u_rf_if.read_buf0 [3]),
    .Y(_1617_)
);

FILL FILL_0__2731_ (
);

FILL FILL_0__3936_ (
);

FILL FILL_0__3516_ (
);

FILL FILL144750x82950 (
);

INVX1 _2747_ (
    .A(\u_rf_serial.shift_rx [0]),
    .Y(_209_)
);

NAND2X1 _2327_ (
    .A(\u_mem_serial.shift_rx [0]),
    .B(_1297__bF$buf3),
    .Y(_1370_)
);

FILL FILL_1__2489_ (
);

FILL FILL_1__3430_ (
);

FILL FILL_1__4635_ (
);

NAND3X1 _3285_ (
    .A(_2154__bF$buf1),
    .B(_5_),
    .C(_1783_),
    .Y(_1782_)
);

FILL FILL_0__2540_ (
);

FILL FILL_0_BUFX2_insert111 (
);

FILL FILL_0_BUFX2_insert113 (
);

FILL FILL_0_BUFX2_insert115 (
);

FILL FILL_0_BUFX2_insert117 (
);

FILL FILL_0_BUFX2_insert118 (
);

AOI21X1 _2976_ (
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(_622_),
    .Y(_621_)
);

NAND2X1 _2556_ (
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(_859_),
    .Y(_961_)
);

FILL FILL_0__4283_ (
);

NAND3X1 _4702_ (
    .A(_1897_),
    .B(_1894_),
    .C(_2000_),
    .Y(_2001_)
);

NAND3X1 _3094_ (
    .A(_2152__bF$buf2),
    .B(_1715__bF$buf3),
    .C(_2068_),
    .Y(_1643_)
);

NOR2X1 _4299_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_1260_),
    .Y(_1263_)
);

FILL FILL_0__3974_ (
);

FILL FILL_0__3554_ (
);

FILL FILL_0__3134_ (
);

FILL FILL_0__4759_ (
);

OAI21X1 _2785_ (
    .A(ren_bF$buf4),
    .B(_112_),
    .C(_113_),
    .Y(_114_)
);

NAND3X1 _2365_ (
    .A(_1315__bF$buf2),
    .B(_1339_),
    .C(_1303__bF$buf2),
    .Y(_1340_)
);

FILL FILL_0__2405_ (
);

DFFPOSX1 _4511_ (
    .D(_1477_),
    .CLK(clk_sys_bF$buf19),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

FILL FILL_1__4673_ (
);

FILL FILL_0__3783_ (
);

FILL FILL_0__4148_ (
);

FILL FILL_1__3104_ (
);

NOR2X1 _2594_ (
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [3]),
    .Y(_822_)
);

BUFX2 _2174_ (
    .A(gnd),
    .Y(o_gpio[3])
);

FILL FILL_1__4309_ (
);

NOR2X1 _3799_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.cond_branch ),
    .Y(_393_)
);

NOR2X1 _3379_ (
    .A(_2151_),
    .B(_2152__bF$buf1),
    .Y(_2150_)
);

OAI21X1 _4740_ (
    .A(_2021_),
    .B(_1983__bF$buf0),
    .C(_2022_),
    .Y(_1852_)
);

INVX1 _4320_ (
    .A(\u_cpu.bufreg2.dlo [12]),
    .Y(_1278_)
);

FILL FILL_0__3419_ (
);

FILL FILL_0__3172_ (
);

FILL FILL_0__4797_ (
);

FILL FILL145050x32550 (
);

FILL FILL_1__3753_ (
);

NAND3X1 _3188_ (
    .A(_10__bF$buf0),
    .B(_1715__bF$buf2),
    .C(_2088_),
    .Y(_1712_)
);

FILL FILL_0__2443_ (
);

DFFPOSX1 _2879_ (
    .D(_531_),
    .CLK(clk_sys_bF$buf17),
    .Q(raddr[8])
);

AOI22X1 _2459_ (
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_795_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dhi [4]),
    .Y(_1059_)
);

AOI21X1 _3820_ (
    .A(\u_cpu.cond_branch ),
    .B(\u_cpu.decode.opcode [1]),
    .C(\u_cpu.bufreg.i_rs1_en ),
    .Y(\u_cpu.bufreg.i_clr_lsb )
);

FILL FILL144750x14550 (
);

NAND2X1 _3400_ (
    .A(_25_),
    .B(_16_),
    .Y(_15_)
);

FILL FILL_0__4186_ (
);

OAI21X1 _4605_ (
    .A(_1877__bF$buf1),
    .B(_1934_),
    .C(_1935_),
    .Y(\u_cpu.decode.i_wb_rdt [27])
);

FILL FILL_1__3142_ (
);

FILL FILL_0__2672_ (
);

FILL FILL_0__3877_ (
);

FILL FILL_0__3457_ (
);

FILL FILL_0__3037_ (
);

FILL FILL_1__2413_ (
);

NAND2X1 _2688_ (
    .A(\u_rf_if.o_waddr [1]),
    .B(_91_),
    .Y(_258_)
);

AOI21X1 _2268_ (
    .A(_808_),
    .B(_1297__bF$buf1),
    .C(_1416_),
    .Y(_772_)
);

FILL FILL_0__2308_ (
);

DFFSR _4834_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1832_),
    .CLK(clk_sys_bF$buf36),
    .Q(ibus_pending_rdt[19])
);

INVX1 _4414_ (
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_1538_)
);

FILL FILL_0__2481_ (
);

DFFPOSX1 _2900_ (
    .D(_526_),
    .CLK(clk_sys_bF$buf26),
    .Q(\u_rf_if.issue_idx [5])
);

FILL FILL_0__3686_ (
);

FILL FILL_1__3427_ (
);

NAND3X1 _2497_ (
    .A(_966_),
    .B(_1016_),
    .C(_1020_),
    .Y(_1021_)
);

FILL FILL_0__2957_ (
);

NAND3X1 _4643_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [23]),
    .C(_1897_),
    .Y(_1961_)
);

OAI21X1 _4223_ (
    .A(_1198_),
    .B(_1200_),
    .C(_1199_),
    .Y(_1105_)
);

FILL FILL_1__3180_ (
);

FILL FILL_0__3495_ (
);

FILL FILL_0__3075_ (
);

MUX2X1 _3914_ (
    .A(\u_cpu.decode.i_wb_rdt [11]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .S(rf_rreq_bF$buf2),
    .Y(_689_)
);

FILL FILL_1__2451_ (
);

FILL FILL_0__2346_ (
);

OAI21X1 _4452_ (
    .A(_1530__bF$buf4),
    .B(_1558_),
    .C(_1559_),
    .Y(_1489_)
);

OAI21X1 _4032_ (
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_908_),
    .C(_909_),
    .Y(_865_)
);

INVX2 _3723_ (
    .A(_173_),
    .Y(\u_cpu.alu.i_cnt0 )
);

AOI21X1 _3303_ (
    .A(_1797_),
    .B(_1799_),
    .C(rst_bF$buf0),
    .Y(_593_)
);

FILL FILL_1__2680_ (
);

FILL FILL_0__4089_ (
);

DFFPOSX1 _4508_ (
    .D(_1490_),
    .CLK(clk_sys_bF$buf42),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

FILL FILL_1__3465_ (
);

FILL FILL_0__2995_ (
);

OAI21X1 _4681_ (
    .A(_1910_),
    .B(_1983__bF$buf2),
    .C(_1986_),
    .Y(_1829_)
);

NAND3X1 _4261_ (
    .A(\u_cpu.bufreg.i_shamt [2]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1234_)
);

FILL FILL_0__4721_ (
);

NAND2X1 _3952_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_683_),
    .Y(_715_)
);

OAI21X1 _3532_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_435_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_434_)
);

OAI21X1 _3112_ (
    .A(_1717__bF$buf2),
    .B(_1788_),
    .C(\u_rf_if.read_buf0 [17]),
    .Y(_1657_)
);

OAI21X1 _4737_ (
    .A(_2019_),
    .B(_1983__bF$buf4),
    .C(_2020_),
    .Y(_1851_)
);

NOR2X1 _4317_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(_1272_),
    .Y(_1276_)
);

FILL FILL_1__3694_ (
);

FILL FILL_0__2384_ (
);

DFFPOSX1 _4490_ (
    .D(_1471_),
    .CLK(clk_sys_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

NAND3X1 _4070_ (
    .A(\u_cpu.bufreg.i_rs1_en ),
    .B(rdata0[0]),
    .C(_896_),
    .Y(_935_)
);

AOI21X1 _2803_ (
    .A(_95_),
    .B(_86_),
    .C(_85_),
    .Y(_96_)
);

DFFPOSX1 _3761_ (
    .D(_136_),
    .CLK(clk_sys_bF$buf45),
    .Q(\u_cpu.state.o_cnt [2])
);

NAND3X1 _3341_ (
    .A(_13_),
    .B(_2096_),
    .C(_5_),
    .Y(_2061_)
);

INVX8 _4546_ (
    .A(_1895__bF$buf2),
    .Y(rf_rreq)
);

DFFPOSX1 _4126_ (
    .D(_891_),
    .CLK(clk_sys_bF$buf9),
    .Q(\u_cpu.bufreg.data [12])
);

OAI21X1 _2612_ (
    .A(\u_mem_serial.bit_count_0_bF$buf1 ),
    .B(\u_mem_serial.bit_count [1]),
    .C(\u_mem_serial.bit_count [2]),
    .Y(_804_)
);

FILL FILL_0__3398_ (
);

AND2X2 _3817_ (
    .A(_393_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.ctrl.i_utype )
);

DFFPOSX1 _3990_ (
    .D(_630_),
    .CLK(clk_sys_bF$buf15),
    .Q(rreg1[4])
);

OAI21X1 _3570_ (
    .A(_467_),
    .B(_484__bF$buf2),
    .C(_466_),
    .Y(\u_rf_if.o_waddr [7])
);

NOR2X1 _3150_ (
    .A(rst_bF$buf7),
    .B(_1683_),
    .Y(_554_)
);

FILL FILL_0__2249_ (
);

NAND3X1 _4775_ (
    .A(rreg0[1]),
    .B(rf_rreq_bF$buf6),
    .C(_1895__bF$buf0),
    .Y(_2044_)
);

DFFPOSX1 _4355_ (
    .D(_1127_),
    .CLK(clk_sys_bF$buf25),
    .Q(\u_cpu.bufreg2.dlo [10])
);

DFFPOSX1 _2841_ (
    .D(_512_),
    .CLK(clk_sys_bF$buf41),
    .Q(raddr[3])
);

NAND2X1 _2421_ (
    .A(\u_mem_serial.active_we ),
    .B(_966_),
    .Y(_1097_)
);

INVX1 _3626_ (
    .A(_2113_),
    .Y(_2114_)
);

NAND3X1 _3206_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [1]),
    .C(\u_rf_if.o_waddr [2]),
    .Y(_1726_)
);

OAI21X1 _4584_ (
    .A(_1920_),
    .B(rf_rreq_bF$buf6),
    .C(_1921_),
    .Y(rf_read_reg1_to_if[1])
);

OAI21X1 _4164_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_1150_),
    .C(_1149_),
    .Y(\u_cpu.bufreg2.o_q )
);

FILL FILL_0__4624_ (
);

FILL FILL_1__2219_ (
);

INVX1 _2650_ (
    .A(\u_rf_serial.last_req_key [0]),
    .Y(_291_)
);

OAI21X1 _2230_ (
    .A(_1442_),
    .B(_1385_),
    .C(mem_dbus_ack_bF$buf6),
    .Y(_1443_)
);

OAI21X1 _3855_ (
    .A(rf_rreq_bF$buf0),
    .B(_386_),
    .C(_416_),
    .Y(_368_)
);

NOR2X1 _3435_ (
    .A(\u_rf_if.read_buf0 [23]),
    .B(_446__bF$buf0),
    .Y(_50_)
);

OAI21X1 _3015_ (
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1696_),
    .C(_32__bF$buf1),
    .Y(_1588_)
);

FILL FILL_0_CLKBUF1_insert41 (
);

FILL FILL_0_CLKBUF1_insert42 (
);

FILL FILL_0_CLKBUF1_insert44 (
);

FILL FILL_0_CLKBUF1_insert46 (
);

FILL FILL_0_CLKBUF1_insert48 (
);

FILL FILL_0__2287_ (
);

NAND2X1 _4393_ (
    .A(\u_cpu.bufreg.i_cnt1 ),
    .B(gnd),
    .Y(_1522_)
);

AOI22X1 _2706_ (
    .A(_91_),
    .B(\u_rf_serial.last_req_key [9]),
    .C(\u_rf_serial.last_req_key [10]),
    .D(_238_),
    .Y(_240_)
);

FILL FILL_0__4433_ (
);

FILL FILL_0__4013_ (
);

OAI21X1 _3664_ (
    .A(_2146_),
    .B(_2145_),
    .C(_2148_),
    .Y(_2111_)
);

AND2X2 _3244_ (
    .A(_1752_),
    .B(_32__bF$buf2),
    .Y(_579_)
);

OAI21X1 _4449_ (
    .A(_1530__bF$buf2),
    .B(_1556_),
    .C(_1557_),
    .Y(_1488_)
);

OAI21X1 _4029_ (
    .A(_892__bF$buf2),
    .B(_905_),
    .C(_907_),
    .Y(_864_)
);

DFFPOSX1 _2935_ (
    .D(_553_),
    .CLK(clk_sys_bF$buf10),
    .Q(\u_rf_if.read_buf0 [31])
);

MUX2X1 _2515_ (
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .B(\u_cpu.bufreg.data [24]),
    .S(\u_mem_serial.active_ibus_bF$buf3 ),
    .Y(_1003_)
);

FILL FILL_0__4662_ (
);

FILL FILL_1__2257_ (
);

AOI21X1 _3893_ (
    .A(_655_),
    .B(_661_),
    .C(_670_),
    .Y(_671_)
);

OAI21X1 _3473_ (
    .A(_448_),
    .B(_332_),
    .C(_426_),
    .Y(_331_)
);

OAI21X1 _3053_ (
    .A(_1717__bF$buf1),
    .B(_1744_),
    .C(\u_rf_if.read_buf0 [2]),
    .Y(_1615_)
);

NAND3X1 _4678_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [23]),
    .C(_1984__bF$buf4),
    .Y(_1985_)
);

OAI21X1 _4258_ (
    .A(_1130_),
    .B(_1133_),
    .C(\u_cpu.bufreg2.dhi [3]),
    .Y(_1231_)
);

OAI21X1 _2744_ (
    .A(i_rf_miso),
    .B(_211_),
    .C(_202_),
    .Y(_212_)
);

AOI21X1 _2324_ (
    .A(_1369_),
    .B(_1372_),
    .C(rst_bF$buf3),
    .Y(_760_)
);

FILL FILL_0__4471_ (
);

FILL FILL_0__4051_ (
);

NAND2X1 _3949_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_683_),
    .Y(_713_)
);

OAI21X1 _3529_ (
    .A(\u_rf_if.read_buf1 [0]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(_432_),
    .Y(_431_)
);

OAI21X1 _3109_ (
    .A(_1717__bF$buf2),
    .B(_1788_),
    .C(\u_rf_if.read_buf0 [16]),
    .Y(_1653_)
);

FILL FILL_1__4632_ (
);

OAI21X1 _3282_ (
    .A(_18__bF$buf3),
    .B(_1781_),
    .C(\u_rf_if.read_buf1 [15]),
    .Y(_1780_)
);

DFFPOSX1 _4487_ (
    .D(_1487_),
    .CLK(clk_sys_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

OAI21X1 _4067_ (
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_931_),
    .C(_932_),
    .Y(_877_)
);

FILL FILL_0__3742_ (
);

FILL FILL_0__3322_ (
);

FILL FILL_0__4527_ (
);

NAND2X1 _2973_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(_1729_),
    .Y(_620_)
);

NAND3X1 _2553_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(_798_),
    .C(_799_),
    .Y(_964_)
);

DFFPOSX1 _3758_ (
    .D(_137_),
    .CLK(clk_sys_bF$buf45),
    .Q(\u_cpu.state.cnt_r [2])
);

AOI21X1 _3338_ (
    .A(_2063_),
    .B(_2059_),
    .C(rst_bF$buf2),
    .Y(_600_)
);

FILL FILL_1__2295_ (
);

NAND3X1 _3091_ (
    .A(_2062__bF$buf3),
    .B(_1715__bF$buf1),
    .C(_1768_),
    .Y(_1641_)
);

NOR2X1 _4296_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_1257_),
    .Y(_1261_)
);

NAND2X1 _2609_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_798_),
    .Y(_807_)
);

FILL FILL_0__4336_ (
);

INVX1 _2782_ (
    .A(\u_rf_if.o_waddr [3]),
    .Y(_117_)
);

NAND2X1 _2362_ (
    .A(\u_mem_serial.shift_rx [7]),
    .B(_1297__bF$buf3),
    .Y(_1342_)
);

DFFPOSX1 _3987_ (
    .D(_633_),
    .CLK(clk_sys_bF$buf3),
    .Q(rreg0[2])
);

OAI21X1 _3567_ (
    .A(_465_),
    .B(_484__bF$buf2),
    .C(_464_),
    .Y(\u_rf_if.o_waddr [6])
);

AOI21X1 _3147_ (
    .A(_1681_),
    .B(_1682_),
    .C(rst_bF$buf2),
    .Y(_553_)
);

FILL FILL_0__2822_ (
);

FILL FILL_0__3607_ (
);

FILL FILL_1__4670_ (
);

FILL FILL_0__3360_ (
);

DFFPOSX1 _2838_ (
    .D(_605_),
    .CLK(clk_sys_bF$buf24),
    .Q(\u_rf_if.stream_cnt [1])
);

NAND3X1 _2418_ (
    .A(_1089_),
    .B(_1090_),
    .C(_1293_),
    .Y(_1294_)
);

FILL FILL_0__4565_ (
);

MUX2X1 _2591_ (
    .A(\u_cpu.ctrl.pc ),
    .B(gnd),
    .S(\u_mem_serial.active_ibus_bF$buf6 ),
    .Y(_825_)
);

BUFX2 _2171_ (
    .A(gnd),
    .Y(o_gpio[6])
);

OAI21X1 _3796_ (
    .A(\u_cpu.cond_branch ),
    .B(\u_cpu.branch_op ),
    .C(_390_),
    .Y(_391_)
);

OR2X2 _3376_ (
    .A(\u_rf_if.rreg0_latched [2]),
    .B(\u_rf_if.rreg0_latched [3]),
    .Y(_2109_)
);

FILL FILL_0__2211_ (
);

FILL FILL_0__3836_ (
);

OAI21X1 _2647_ (
    .A(ren_bF$buf0),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_293_)
);

AOI21X1 _2227_ (
    .A(_1443_),
    .B(_1445_),
    .C(rst_bF$buf1),
    .Y(_784_)
);

OAI21X1 _3185_ (
    .A(_478_),
    .B(_1711_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1710_)
);

FILL FILL_0__3645_ (
);

FILL FILL_0__3225_ (
);

FILL FILL_1__3806_ (
);

DFFPOSX1 _2876_ (
    .D(_586_),
    .CLK(clk_sys_bF$buf13),
    .Q(\u_rf_if.read_buf1 [13])
);

AOI21X1 _2456_ (
    .A(_1058_),
    .B(_1061_),
    .C(_803_),
    .Y(_1062_)
);

OAI21X1 _4602_ (
    .A(_1877__bF$buf1),
    .B(_1932_),
    .C(_1933_),
    .Y(\u_cpu.decode.i_wb_rdt [28])
);

OAI21X1 _4199_ (
    .A(_1179_),
    .B(_1164__bF$buf4),
    .C(_1181_),
    .Y(_1100_)
);

FILL FILL_0__4239_ (
);

NAND2X1 _2685_ (
    .A(_91_),
    .B(_127_),
    .Y(_261_)
);

INVX1 _2265_ (
    .A(_1410_),
    .Y(_1418_)
);

FILL FILL_0__2725_ (
);

DFFPOSX1 _4831_ (
    .D(_1835_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(clk_sys)
);

OAI22X1 _4411_ (
    .A(_1536_),
    .B(_1531_),
    .C(_1534_),
    .D(_1535_),
    .Y(_1471_)
);

FILL FILL_0__3683_ (
);

FILL FILL_0__3263_ (
);

FILL FILL_0__4468_ (
);

NAND2X1 _2494_ (
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(_1023_),
    .Y(_1024_)
);

NAND2X1 _3699_ (
    .A(_157_),
    .B(_158_),
    .Y(_159_)
);

AOI21X1 _3279_ (
    .A(_1780_),
    .B(_1778_),
    .C(rst_bF$buf6),
    .Y(_588_)
);

FILL FILL_0__2534_ (
);

NAND3X1 _4640_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [18]),
    .C(_1897_),
    .Y(_1959_)
);

AOI21X1 _4220_ (
    .A(_1197_),
    .B(\u_cpu.alu.i_en ),
    .C(mem_dbus_ack_bF$buf4),
    .Y(_1198_)
);

FILL FILL_1__4382_ (
);

NAND2X1 _3911_ (
    .A(rreg1[4]),
    .B(_685_),
    .Y(_687_)
);

FILL FILL_0__4277_ (
);

FILL FILL_1__3233_ (
);

NAND3X1 _3088_ (
    .A(_1715__bF$buf1),
    .B(_2099_),
    .C(_1768_),
    .Y(_1639_)
);

FILL FILL_0__2763_ (
);

FILL FILL_0__3968_ (
);

FILL FILL_0__3548_ (
);

FILL FILL_0__3128_ (
);

FILL FILL_1__2504_ (
);

NAND2X1 _2779_ (
    .A(_119_),
    .B(_105_),
    .Y(_120_)
);

AOI21X1 _2359_ (
    .A(_1341_),
    .B(_1344_),
    .C(rst_bF$buf4),
    .Y(_753_)
);

NAND2X1 _3720_ (
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_172_)
);

NAND2X1 _3300_ (
    .A(_10__bF$buf2),
    .B(_1795_),
    .Y(_1794_)
);

DFFPOSX1 _4505_ (
    .D(_1469_),
    .CLK(clk_sys_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

FILL FILL_0__2572_ (
);

FILL FILL_1__2733_ (
);

FILL FILL_1__3518_ (
);

AOI21X1 _2588_ (
    .A(_809_),
    .B(_824_),
    .C(_827_),
    .Y(_828_)
);

BUFX2 _2168_ (
    .A(_2156_),
    .Y(o_mem_mosi)
);

FILL FILL_0__2208_ (
);

OAI21X1 _4734_ (
    .A(_2017_),
    .B(_1983__bF$buf3),
    .C(_2018_),
    .Y(_1850_)
);

AOI22X1 _4314_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1172__bF$buf2),
    .D(_1273_),
    .Y(_1274_)
);

FILL FILL_1__3271_ (
);

NAND2X1 _2800_ (
    .A(\u_rf_if.o_waddr [8]),
    .B(_91_),
    .Y(_99_)
);

FILL FILL_0__3586_ (
);

FILL FILL_0__3166_ (
);

FILL FILL_1__2542_ (
);

INVX1 _2397_ (
    .A(_1312_),
    .Y(_1313_)
);

FILL FILL_0__2437_ (
);

INVX1 _4543_ (
    .A(mem_ibus_ack_bF$buf0),
    .Y(_1893_)
);

DFFPOSX1 _4123_ (
    .D(_862_),
    .CLK(clk_sys_bF$buf9),
    .Q(\u_cpu.bufreg.data [9])
);

AOI21X1 _3814_ (
    .A(_376_),
    .B(\u_cpu.decode.co_ebreak ),
    .C(_401_),
    .Y(_402_)
);

FILL FILL_1__2771_ (
);

FILL FILL_1__3556_ (
);

FILL FILL_0__2666_ (
);

FILL FILL_0__2246_ (
);

NAND3X1 _4772_ (
    .A(rreg0[2]),
    .B(rf_rreq_bF$buf5),
    .C(_1895__bF$buf3),
    .Y(_2042_)
);

DFFPOSX1 _4352_ (
    .D(_1098_),
    .CLK(clk_sys_bF$buf43),
    .Q(\u_cpu.bufreg2.dlo [7])
);

FILL FILL145050x7350 (
);

OAI21X1 _3623_ (
    .A(_2076_),
    .B(_2081_),
    .C(_2087_),
    .Y(_2072_)
);

OAI21X1 _3203_ (
    .A(_1725_),
    .B(_1724_),
    .C(_1729_),
    .Y(_1723_)
);

FILL FILL_1__2580_ (
);

DFFSR _4828_ (
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1838_),
    .CLK(clk_sys_bF$buf32),
    .Q(ibus_pending_ack)
);

INVX4 _4408_ (
    .A(_1532_),
    .Y(_1535_)
);

FILL FILL_0__2475_ (
);

OAI21X1 _4581_ (
    .A(_1877__bF$buf5),
    .B(_1918_),
    .C(_1919_),
    .Y(\u_cpu.decode.i_wb_rdt [21])
);

NOR2X1 _4161_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(_1147_),
    .Y(_1148_)
);

FILL FILL_0__4201_ (
);

NAND2X1 _3852_ (
    .A(rf_rreq_bF$buf3),
    .B(\u_cpu.decode.i_wb_rdt [3]),
    .Y(_415_)
);

NAND2X1 _3432_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_48_),
    .Y(_47_)
);

AOI21X1 _3012_ (
    .A(_1626_),
    .B(_1587_),
    .C(rst_bF$buf5),
    .Y(_510_)
);

FILL FILL_1_BUFX2_insert31 (
);

FILL FILL_1_BUFX2_insert35 (
);

FILL FILL_1_BUFX2_insert39 (
);

NAND2X1 _4637_ (
    .A(ibus_pending_ack_bF$buf1),
    .B(ibus_pending_rdt[0]),
    .Y(_1957_)
);

AOI21X1 _4217_ (
    .A(_1194_),
    .B(_1169_),
    .C(_1166_),
    .Y(_1195_)
);

FILL FILL_0__2284_ (
);

AND2X2 _4390_ (
    .A(_1519_),
    .B(\u_cpu.ctrl.i_pc_en ),
    .Y(_1656_)
);

INVX1 _2703_ (
    .A(\u_rf_serial.last_req_key [8]),
    .Y(_243_)
);

FILL FILL_0__3489_ (
);

FILL FILL_0__3069_ (
);

FILL FILL_0__4430_ (
);

OAI21X1 _3908_ (
    .A(_682_),
    .B(_679_),
    .C(_684_),
    .Y(_629_)
);

NAND2X1 _3661_ (
    .A(\u_cpu.alu.i_sub ),
    .B(_2146_),
    .Y(_2147_)
);

AOI21X1 _3241_ (
    .A(_1751_),
    .B(_1750_),
    .C(rst_bF$buf0),
    .Y(_578_)
);

OAI21X1 _4446_ (
    .A(_1530__bF$buf0),
    .B(_1554_),
    .C(_1555_),
    .Y(_1487_)
);

NAND2X1 _4026_ (
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.data [9]),
    .Y(_906_)
);

FILL FILL_1__4188_ (
);

DFFPOSX1 _2932_ (
    .D(_555_),
    .CLK(clk_sys_bF$buf13),
    .Q(\u_rf_if.read_buf0 [27])
);

AOI22X1 _2512_ (
    .A(_797_),
    .B(_802_),
    .C(_991_),
    .D(_1005_),
    .Y(_1006_)
);

DFFPOSX1 _3717_ (
    .D(_766_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [27])
);

FILL FILL_1__3879_ (
);

FILL FILL_1__3039_ (
);

INVX1 _3890_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_668_)
);

NAND2X1 _3470_ (
    .A(\u_rf_if.read_buf0 [9]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_328_)
);

NOR2X1 _3050_ (
    .A(_2153_),
    .B(_1717__bF$buf1),
    .Y(_1613_)
);

FILL FILL_0__2569_ (
);

NAND2X1 _4675_ (
    .A(ibus_pending_ack_bF$buf0),
    .B(mem_ibus_ack_bF$buf0),
    .Y(_1982_)
);

AND2X2 _4255_ (
    .A(_1138_),
    .B(_1213_),
    .Y(_1228_)
);

FILL FILL_0__3930_ (
);

FILL FILL_0__3510_ (
);

FILL FILL_0__4715_ (
);

NOR2X1 _2741_ (
    .A(rst_bF$buf4),
    .B(_213_),
    .Y(_55_)
);

INVX1 _2321_ (
    .A(_1374_),
    .Y(_1375_)
);

NAND2X1 _3946_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_683_),
    .Y(_711_)
);

OAI21X1 _3526_ (
    .A(_430_),
    .B(_429_),
    .C(_431_),
    .Y(_428_)
);

OAI21X1 _3106_ (
    .A(_1717__bF$buf4),
    .B(_1781_),
    .C(\u_rf_if.read_buf0 [15]),
    .Y(_1651_)
);

AOI21X1 _4484_ (
    .A(_1509_),
    .B(_1515_),
    .C(_1580_),
    .Y(_1581_)
);

OAI21X1 _4064_ (
    .A(_892__bF$buf0),
    .B(_928_),
    .C(_930_),
    .Y(_876_)
);

FILL FILL_0__4104_ (
);

FILL FILL_1__2959_ (
);

AOI21X1 _2970_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(_619_),
    .C(_618_),
    .Y(_496_)
);

INVX1 _2550_ (
    .A(\u_cpu.bufreg.data [9]),
    .Y(_967_)
);

DFFPOSX1 _3755_ (
    .D(_132_),
    .CLK(clk_sys_bF$buf45),
    .Q(\u_cpu.state.ibus_cyc )
);

AOI21X1 _3335_ (
    .A(_2058_),
    .B(_1824_),
    .C(rst_bF$buf2),
    .Y(_599_)
);

FILL FILL_1__3077_ (
);

AOI22X1 _4293_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [18]),
    .C(_1172__bF$buf3),
    .D(_1258_),
    .Y(_1259_)
);

INVX2 _2606_ (
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .Y(_810_)
);

FILL FILL_0__4753_ (
);

FILL FILL_1__2348_ (
);

DFFPOSX1 _3984_ (
    .D(_636_),
    .CLK(clk_sys_bF$buf8),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

OAI21X1 _3564_ (
    .A(_463_),
    .B(_484__bF$buf0),
    .C(_462_),
    .Y(\u_rf_if.o_waddr [5])
);

AOI21X1 _3144_ (
    .A(_1680_),
    .B(_1679_),
    .C(rst_bF$buf2),
    .Y(_552_)
);

NAND3X1 _4769_ (
    .A(rreg0[3]),
    .B(rf_rreq_bF$buf4),
    .C(_1895__bF$buf2),
    .Y(_2040_)
);

DFFPOSX1 _4349_ (
    .D(_1101_),
    .CLK(clk_sys_bF$buf28),
    .Q(\u_cpu.bufreg2.dlo [4])
);

FILL FILL_0__3604_ (
);

DFFPOSX1 _2835_ (
    .D(_513_),
    .CLK(clk_sys_bF$buf33),
    .Q(raddr[4])
);

NOR2X1 _2415_ (
    .A(i_clk_fast_bF$buf0),
    .B(_794_),
    .Y(_2157_)
);

FILL FILL_0__4142_ (
);

FILL FILL_1__2997_ (
);

FILL FILL_1__4723_ (
);

DFFPOSX1 _3793_ (
    .D(_759_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [2])
);

NOR2X1 _3373_ (
    .A(_2109_),
    .B(_2107_),
    .Y(_2106_)
);

OAI21X1 _4578_ (
    .A(_1916_),
    .B(rf_rreq_bF$buf4),
    .C(_1917_),
    .Y(rf_read_reg1_to_if[0])
);

AND2X2 _4158_ (
    .A(_1145_),
    .B(_1134_),
    .Y(\u_cpu.bufreg2.o_sh_done )
);

FILL FILL_0__3413_ (
);

FILL FILL_0__4618_ (
);

AOI21X1 _2644_ (
    .A(_243_),
    .B(_215__bF$buf0),
    .C(_294_),
    .Y(_71_)
);

AOI21X1 _2224_ (
    .A(_1446_),
    .B(_1447_),
    .C(rst_bF$buf3),
    .Y(_785_)
);

FILL FILL_0__4791_ (
);

FILL FILL_0__4371_ (
);

OAI21X1 _3849_ (
    .A(rf_rreq_bF$buf1),
    .B(_385_),
    .C(_413_),
    .Y(_365_)
);

AOI21X1 _3429_ (
    .A(_45_),
    .B(_315_),
    .C(_450_),
    .Y(rdata0[0])
);

AOI21X1 _3009_ (
    .A(_1586_),
    .B(_1696_),
    .C(_1585_),
    .Y(_509_)
);

FILL FILL_1__2386_ (
);

AOI21X1 _3182_ (
    .A(_1708_),
    .B(_1710_),
    .C(_1730_),
    .Y(_561_)
);

FILL FILL_1_BUFX2_insert1 (
);

NOR2X1 _4387_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1517_)
);

FILL FILL_1_BUFX2_insert8 (
);

FILL FILL_0__3642_ (
);

DFFPOSX1 _2873_ (
    .D(_508_),
    .CLK(clk_sys_bF$buf26),
    .Q(\u_rf_if.issue_chunk [1])
);

AOI22X1 _2453_ (
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(\u_cpu.bufreg2.dlo [2]),
    .D(_1048_),
    .Y(_1065_)
);

FILL FILL_0__4180_ (
);

AOI22X1 _3658_ (
    .A(_2135_),
    .B(_2144_),
    .C(_2141_),
    .D(_2139_),
    .Y(_2145_)
);

NAND3X1 _3238_ (
    .A(_2092_),
    .B(_2095_),
    .C(_2152__bF$buf0),
    .Y(_1749_)
);

FILL FILL_1__4761_ (
);

INVX1 _4196_ (
    .A(\u_cpu.bufreg2.dlo [5]),
    .Y(_1179_)
);

FILL FILL_0__3451_ (
);

FILL FILL_0__3031_ (
);

DFFPOSX1 _2929_ (
    .D(_557_),
    .CLK(clk_sys_bF$buf27),
    .Q(\u_rf_if.rcnt [1])
);

OAI21X1 _2509_ (
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [18]),
    .C(\u_mem_serial.bit_count_0_bF$buf2 ),
    .Y(_1009_)
);

FILL FILL_0__4656_ (
);

NAND3X1 _2682_ (
    .A(_260_),
    .B(_263_),
    .C(_261_),
    .Y(_264_)
);

NAND3X1 _2262_ (
    .A(\u_cpu.o_ibus_cyc ),
    .B(_1420_),
    .C(_1310_),
    .Y(_1421_)
);

NAND2X1 _3887_ (
    .A(rreg0[4]),
    .B(_665__bF$buf2),
    .Y(_666_)
);

NAND2X1 _3467_ (
    .A(\u_rf_if.read_buf0 [11]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_325_)
);

OAI21X1 _3047_ (
    .A(\u_rf_if.read_buf0 [0]),
    .B(_1613_),
    .C(_32__bF$buf0),
    .Y(_1611_)
);

FILL FILL_1__4150_ (
);

OR2X2 _2738_ (
    .A(_205_),
    .B(_206_),
    .Y(_215_)
);

NAND3X1 _2318_ (
    .A(_1083_),
    .B(\u_mem_serial.bit_count_0_bF$buf1 ),
    .C(_1299_),
    .Y(_1377_)
);

FILL FILL_1__3001_ (
);

OR2X2 _2491_ (
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.bufreg.data [23]),
    .Y(_1027_)
);

NAND2X1 _3696_ (
    .A(_155_),
    .B(_152_),
    .Y(_156_)
);

AOI21X1 _3276_ (
    .A(_1777_),
    .B(_1776_),
    .C(rst_bF$buf6),
    .Y(_587_)
);

FILL FILL_0__2531_ (
);

FILL FILL_0__3736_ (
);

FILL FILL_0__3316_ (
);

OAI21X1 _2967_ (
    .A(rf_read_reg1_to_if[4]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_616_)
);

NAND2X1 _2547_ (
    .A(_969_),
    .B(_845_),
    .Y(_970_)
);

FILL FILL_0__4694_ (
);

FILL FILL_1__4435_ (
);

FILL FILL_1__4015_ (
);

NAND3X1 _3085_ (
    .A(_2152__bF$buf3),
    .B(_1715__bF$buf4),
    .C(_1816_),
    .Y(_1637_)
);

OAI21X1 _2776_ (
    .A(_91_),
    .B(raddr[2]),
    .C(_122_),
    .Y(_123_)
);

INVX1 _2356_ (
    .A(_1346_),
    .Y(_1347_)
);

FILL FILL_0__2816_ (
);

DFFPOSX1 _4502_ (
    .D(_1481_),
    .CLK(clk_sys_bF$buf19),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

NAND2X1 _4099_ (
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [17]),
    .Y(_955_)
);

FILL FILL_0__3354_ (
);

FILL FILL_1__2310_ (
);

FILL FILL_0__4559_ (
);

OAI21X1 _2585_ (
    .A(\u_mem_serial.bit_count [3]),
    .B(_801_),
    .C(_830_),
    .Y(_831_)
);

BUFX2 _2165_ (
    .A(_2159_),
    .Y(o_rf_mosi)
);

OAI21X1 _4731_ (
    .A(_2015_),
    .B(_1983__bF$buf0),
    .C(_2016_),
    .Y(_1849_)
);

OAI21X1 _4311_ (
    .A(_1270_),
    .B(_1206_),
    .C(_1271_),
    .Y(_1122_)
);

FILL FILL_1__4473_ (
);

FILL FILL_1__4053_ (
);

FILL FILL_1__3324_ (
);

INVX8 _2394_ (
    .A(_1315__bF$buf3),
    .Y(_1316_)
);

FILL FILL_1__4529_ (
);

DFFPOSX1 _3599_ (
    .D(_1473_),
    .CLK(clk_sys_bF$buf29),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

INVX1 _3179_ (
    .A(\u_rf_if.write_wait [2]),
    .Y(_1705_)
);

FILL FILL_0__2434_ (
);

NAND3X1 _4540_ (
    .A(_1887_),
    .B(_1888_),
    .C(_1889_),
    .Y(_1890_)
);

FILL FILL144750x21750 (
);

DFFPOSX1 _4120_ (
    .D(_865_),
    .CLK(clk_sys_bF$buf38),
    .Q(\u_cpu.bufreg.data [6])
);

FILL FILL_0__3392_ (
);

OAI21X1 _3811_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .C(_396_),
    .Y(_399_)
);

FILL FILL_0__4597_ (
);

FILL FILL_0__2663_ (
);

FILL FILL_0__3028_ (
);

FILL FILL_1__4091_ (
);

FILL FILL_1__2824_ (
);

FILL FILL_1__3609_ (
);

OR2X2 _2679_ (
    .A(ren_bF$buf3),
    .B(\u_rf_if.o_waddr [7]),
    .Y(_267_)
);

OAI21X1 _2259_ (
    .A(\u_mem_serial.bit_count [6]),
    .B(_1315__bF$buf0),
    .C(_1310_),
    .Y(_1423_)
);

NAND3X1 _3620_ (
    .A(_2082_),
    .B(_2085_),
    .C(_2084_),
    .Y(_2086_)
);

INVX1 _3200_ (
    .A(\u_rf_if.rreg1_latched [2]),
    .Y(_1721_)
);

DFFSR _4825_ (
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1841_),
    .CLK(clk_sys_bF$buf23),
    .Q(ibus_pending_rdt[14])
);

NAND2X1 _4405_ (
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(_1532_),
    .Y(_1533_)
);

FILL FILL_1__3362_ (
);

FILL FILL_1__4567_ (
);

FILL FILL_0__2472_ (
);

FILL FILL_0__3677_ (
);

NAND3X1 _2488_ (
    .A(_798_),
    .B(_1027_),
    .C(_1029_),
    .Y(_1030_)
);

NAND2X1 _4634_ (
    .A(ibus_pending_ack_bF$buf3),
    .B(ibus_pending_rdt[1]),
    .Y(_1955_)
);

AOI22X1 _4214_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [1]),
    .C(_1172__bF$buf1),
    .D(_1192_),
    .Y(_1193_)
);

NAND2X1 _2700_ (
    .A(\u_rf_serial.last_req_key [8]),
    .B(_100_),
    .Y(_246_)
);

FILL FILL_0__3066_ (
);

OAI21X1 _3905_ (
    .A(_661_),
    .B(\u_cpu.decode.i_wb_rdt [30]),
    .C(_681_),
    .Y(_682_)
);

FILL FILL_1__3647_ (
);

AOI21X1 _2297_ (
    .A(_1392_),
    .B(_1395_),
    .C(rst_bF$buf10),
    .Y(_764_)
);

FILL FILL_0__2337_ (
);

INVX2 _4443_ (
    .A(rst_bF$buf7),
    .Y(_1553_)
);

NAND2X1 _4023_ (
    .A(\u_cpu.bufreg.data [9]),
    .B(_892__bF$buf2),
    .Y(_904_)
);

NOR2X1 _3714_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(_169_),
    .Y(\u_cpu.bufreg2.i_cnt7 )
);

FILL FILL_0__2986_ (
);

NAND3X1 _4672_ (
    .A(_1962_),
    .B(rf_read_reg1[4]),
    .C(_1895__bF$buf1),
    .Y(_1980_)
);

OAI21X1 _4252_ (
    .A(_1154_),
    .B(\u_mem_serial.shift_rx [27]),
    .C(_1225_),
    .Y(_1226_)
);

NAND2X1 _3943_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_683_),
    .Y(_709_)
);

NOR2X1 _3523_ (
    .A(\u_rf_if.read_buf1 [4]),
    .B(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_425_)
);

OAI21X1 _3103_ (
    .A(_1717__bF$buf4),
    .B(_1781_),
    .C(\u_rf_if.read_buf0 [14]),
    .Y(_1649_)
);

OAI21X1 _4728_ (
    .A(_1952_),
    .B(_1983__bF$buf0),
    .C(_2014_),
    .Y(_1848_)
);

OAI21X1 _4308_ (
    .A(_1245_),
    .B(_1164__bF$buf2),
    .C(_1269_),
    .Y(_1121_)
);

FILL FILL_0__2375_ (
);

OAI21X1 _4481_ (
    .A(_1511_),
    .B(_1577_),
    .C(_1578_),
    .Y(_1499_)
);

NAND2X1 _4061_ (
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [27]),
    .Y(_929_)
);

FILL FILL_0__4101_ (
);

AOI21X1 _3752_ (
    .A(_165_),
    .B(_189_),
    .C(_191_),
    .Y(_136_)
);

NOR2X1 _3332_ (
    .A(_9_),
    .B(_1821_),
    .Y(_1820_)
);

INVX1 _4537_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_1887_)
);

DFFPOSX1 _4117_ (
    .D(_868_),
    .CLK(clk_sys_bF$buf38),
    .Q(\u_cpu.bufreg.data [3])
);

FILL FILL_1__4279_ (
);

FILL FILL_0__2184_ (
);

OAI21X1 _4290_ (
    .A(_1254_),
    .B(_1164__bF$buf3),
    .C(_1256_),
    .Y(_1116_)
);

NOR2X1 _2603_ (
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.bufreg.data [7]),
    .Y(_813_)
);

FILL FILL_0__3389_ (
);

FILL FILL_0__4330_ (
);

OAI21X1 _3808_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_397_),
    .Y(_398_)
);

DFFPOSX1 _3981_ (
    .D(_639_),
    .CLK(clk_sys_bF$buf31),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

OAI21X1 _3561_ (
    .A(_461_),
    .B(_484__bF$buf2),
    .C(_460_),
    .Y(\u_rf_if.o_waddr [4])
);

AOI21X1 _3141_ (
    .A(_1677_),
    .B(_1678_),
    .C(rst_bF$buf8),
    .Y(_551_)
);

NOR2X1 _4766_ (
    .A(_2038_),
    .B(_1975_),
    .Y(_1862_)
);

DFFPOSX1 _4346_ (
    .D(_1104_),
    .CLK(clk_sys_bF$buf37),
    .Q(\u_cpu.bufreg2.dlo [1])
);

FILL FILL_0__3601_ (
);

DFFPOSX1 _2832_ (
    .D(_544_),
    .CLK(clk_sys_bF$buf18),
    .Q(\u_rf_if.read_buf0 [20])
);

NOR2X1 _2412_ (
    .A(\u_mem_serial.bit_count [4]),
    .B(_852_),
    .Y(_1298_)
);

INVX1 _3617_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_2083_)
);

NOR2X1 _3790_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_387_),
    .Y(_388_)
);

NOR2X1 _3370_ (
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(\u_rf_if.rreg1_latched [2]),
    .Y(_2103_)
);

OAI21X1 _4575_ (
    .A(_1877__bF$buf4),
    .B(_1914_),
    .C(_1915_),
    .Y(\u_cpu.decode.i_wb_rdt [20])
);

AND2X2 _4155_ (
    .A(_1138_),
    .B(_1139_),
    .Y(_1143_)
);

FILL FILL_0__3830_ (
);

DFFPOSX1 _2641_ (
    .D(_57_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.last_req_key [7])
);

AOI21X1 _2221_ (
    .A(_1448_),
    .B(_1449_),
    .C(rst_bF$buf1),
    .Y(_786_)
);

DFFPOSX1 _3846_ (
    .D(_792_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(_2158_)
);

NAND2X1 _3426_ (
    .A(_44_),
    .B(_43_),
    .Y(rf_ready)
);

AOI21X1 _3006_ (
    .A(_1584_),
    .B(_1583_),
    .C(_1692_),
    .Y(_508_)
);

FILL FILL_1__3168_ (
);

FILL FILL_0__2278_ (
);

NAND3X1 _4384_ (
    .A(_1501_),
    .B(_1504_),
    .C(_1514_),
    .Y(_1515_)
);

FILL FILL_0__4424_ (
);

FILL FILL_1__2439_ (
);

DFFPOSX1 _2870_ (
    .D(_589_),
    .CLK(clk_sys_bF$buf2),
    .Q(\u_rf_if.read_buf1 [16])
);

AOI22X1 _2450_ (
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_795_),
    .C(_845_),
    .D(\u_cpu.bufreg2.dlo [5]),
    .Y(_1068_)
);

INVX1 _3655_ (
    .A(\u_cpu.alu.i_cmp_eq ),
    .Y(_2142_)
);

AOI21X1 _3235_ (
    .A(_1747_),
    .B(_1748_),
    .C(rst_bF$buf0),
    .Y(_575_)
);

NOR2X1 _4193_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(_1153_),
    .Y(_1177_)
);

DFFPOSX1 _2926_ (
    .D(_559_),
    .CLK(clk_sys_bF$buf26),
    .Q(\u_rf_if.prefetch_active )
);

OAI22X1 _2506_ (
    .A(_1010_),
    .B(_1011_),
    .C(_1008_),
    .D(_1009_),
    .Y(_1012_)
);

FILL FILL_0__4233_ (
);

FILL FILL_1__2668_ (
);

INVX1 _3884_ (
    .A(\u_cpu.decode.co_immdec_en [1]),
    .Y(_663_)
);

NOR2X1 _3464_ (
    .A(\u_rf_if.read_buf0 [12]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .Y(_322_)
);

OAI21X1 _3044_ (
    .A(rf_read_reg1_to_if[0]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_1609_)
);

INVX1 _4669_ (
    .A(_1976_),
    .Y(_1978_)
);

AOI21X1 _4249_ (
    .A(_1138_),
    .B(_1213_),
    .C(_1222_),
    .Y(_1223_)
);

INVX1 _2735_ (
    .A(\u_rf_serial.last_req_key [6]),
    .Y(_217_)
);

NOR2X1 _2315_ (
    .A(_1296_),
    .B(_1379_),
    .Y(_1380_)
);

FILL FILL_0__4462_ (
);

FILL FILL_0__4042_ (
);

FILL FILL_1__2477_ (
);

FILL FILL_1__4203_ (
);

INVX1 _3693_ (
    .A(\u_cpu.bufreg.i_shift_op ),
    .Y(_153_)
);

NAND3X1 _3273_ (
    .A(_2154__bF$buf3),
    .B(_2152__bF$buf1),
    .C(_2088_),
    .Y(_1773_)
);

OAI21X1 _4478_ (
    .A(_1530__bF$buf3),
    .B(_1575_),
    .C(_1576_),
    .Y(_1498_)
);

NAND2X1 _4058_ (
    .A(\u_cpu.bufreg.data [27]),
    .B(_892__bF$buf0),
    .Y(_927_)
);

FILL FILL_0__3313_ (
);

AOI21X1 _2964_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(_1729_),
    .C(_615_),
    .Y(_493_)
);

OAI21X1 _2544_ (
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(_971_),
    .C(_972_),
    .Y(_973_)
);

FILL FILL_0__4271_ (
);

AOI21X1 _3749_ (
    .A(_169_),
    .B(_190_),
    .C(rst_bF$buf1),
    .Y(_134_)
);

NOR2X1 _3329_ (
    .A(_8_),
    .B(_1_),
    .Y(_1817_)
);

NAND2X1 _3082_ (
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_1636_),
    .Y(_1635_)
);

INVX1 _4287_ (
    .A(\u_cpu.bufreg2.dlo [19]),
    .Y(_1254_)
);

NAND2X1 _2773_ (
    .A(_97_),
    .B(_125_),
    .Y(_126_)
);

OAI21X1 _2353_ (
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [6]),
    .Y(_1349_)
);

FILL FILL_0__4080_ (
);

AOI21X1 _3978_ (
    .A(_661_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .C(_670_),
    .Y(_732_)
);

OAI21X1 _3558_ (
    .A(_459_),
    .B(_484__bF$buf1),
    .C(_458_),
    .Y(\u_rf_if.o_wen )
);

AOI21X1 _3138_ (
    .A(_1675_),
    .B(_1676_),
    .C(rst_bF$buf2),
    .Y(_550_)
);

FILL FILL_0__2813_ (
);

FILL FILL_1__4241_ (
);

NAND2X1 _4096_ (
    .A(\u_cpu.bufreg.data [31]),
    .B(_952_),
    .Y(_953_)
);

FILL FILL_0__3771_ (
);

FILL FILL_0__3351_ (
);

DFFPOSX1 _2829_ (
    .D(_492_),
    .CLK(clk_sys_bF$buf41),
    .Q(\u_rf_if.wdata1_phase [0])
);

NOR2X1 _2409_ (
    .A(_1300_),
    .B(_1299_),
    .Y(_1301_)
);

FILL FILL_0__4556_ (
);

FILL FILL_1__3932_ (
);

NAND2X1 _2582_ (
    .A(_831_),
    .B(_833_),
    .Y(_834_)
);

INVX1 _3787_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_385_)
);

NAND2X1 _3367_ (
    .A(rdata[0]),
    .B(_2101_),
    .Y(_2100_)
);

FILL FILL_0__2622_ (
);

FILL FILL_0__2202_ (
);

FILL FILL_0__3827_ (
);

DFFPOSX1 _2638_ (
    .D(_52_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.tx_state [4])
);

OAI21X1 _2218_ (
    .A(_1451_),
    .B(_1450_),
    .C(mem_ibus_ack_bF$buf4),
    .Y(_1452_)
);

INVX1 _2391_ (
    .A(_1318_),
    .Y(_1319_)
);

FILL FILL_1__4106_ (
);

DFFPOSX1 _3596_ (
    .D(_640_),
    .CLK(clk_sys_bF$buf23),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

NOR2X1 _3176_ (
    .A(\u_rf_if.write_wait [3]),
    .B(_1703_),
    .Y(_1702_)
);

FILL FILL_0__3636_ (
);

FILL FILL_0__3216_ (
);

DFFPOSX1 _2867_ (
    .D(_534_),
    .CLK(clk_sys_bF$buf35),
    .Q(\u_rf_if.read_buf0 [11])
);

AOI22X1 _2447_ (
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_795_),
    .C(_1048_),
    .D(\u_cpu.bufreg2.dlo [10]),
    .Y(_1071_)
);

FILL FILL_0__4594_ (
);

FILL FILL_0__4174_ (
);

FILL FILL_1__3970_ (
);

FILL FILL_1__3130_ (
);

FILL FILL_0__2240_ (
);

FILL FILL_1__2401_ (
);

NAND2X1 _2676_ (
    .A(ren_bF$buf3),
    .B(raddr[7]),
    .Y(_270_)
);

NOR2X1 _2256_ (
    .A(_1414_),
    .B(_1302_),
    .Y(_1425_)
);

FILL FILL_0__2716_ (
);

DFFSR _4822_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1844_),
    .CLK(clk_sys_bF$buf36),
    .Q(ibus_pending_rdt[11])
);

NOR2X1 _4402_ (
    .A(rst_bF$buf7),
    .B(\u_cpu.ctrl.i_pc_en ),
    .Y(_1530_)
);

FILL FILL_0__3254_ (
);

FILL FILL_1__3415_ (
);

NAND2X1 _2485_ (
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1033_)
);

FILL FILL_0__2525_ (
);

NAND2X1 _4631_ (
    .A(\u_mem_serial.shift_rx [7]),
    .B(_1877__bF$buf4),
    .Y(_1953_)
);

OAI21X1 _4211_ (
    .A(_1188_),
    .B(_1164__bF$buf0),
    .C(_1190_),
    .Y(_1103_)
);

AOI21X1 _3902_ (
    .A(_677_),
    .B(_678_),
    .C(rf_rreq_bF$buf7),
    .Y(_679_)
);

FILL FILL_0__4268_ (
);

INVX1 _2294_ (
    .A(_1397_),
    .Y(_1398_)
);

OAI21X1 _3499_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .B(_360_),
    .C(_357_),
    .Y(_356_)
);

AOI21X1 _3079_ (
    .A(_1697_),
    .B(_1634_),
    .C(_1633_),
    .Y(_531_)
);

FILL FILL_0__2754_ (
);

OAI22X1 _4440_ (
    .A(_1551_),
    .B(_1531_),
    .C(_1549_),
    .D(_1535_),
    .Y(_1485_)
);

INVX1 _4020_ (
    .A(\u_cpu.bufreg.data [10]),
    .Y(_902_)
);

FILL FILL_0__3959_ (
);

FILL FILL_0__3539_ (
);

FILL FILL_0__3119_ (
);

FILL FILL_0__3292_ (
);

DFFPOSX1 _3711_ (
    .D(_767_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [5])
);

FILL FILL_1__3453_ (
);

FILL FILL_1__4658_ (
);

FILL FILL_0__2563_ (
);

FILL FILL_0__3768_ (
);

FILL FILL144750x97350 (
);

NOR2X1 _2999_ (
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [3]),
    .Y(_745_)
);

NOR2X1 _2579_ (
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.bufreg.data [15]),
    .Y(_837_)
);

NAND2X1 _3940_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_665__bF$buf3),
    .Y(_707_)
);

OAI21X1 _3520_ (
    .A(\u_rf_if.read_buf1 [7]),
    .B(_445_),
    .C(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_422_)
);

OAI21X1 _3100_ (
    .A(_1717__bF$buf0),
    .B(_1775_),
    .C(\u_rf_if.read_buf0 [13]),
    .Y(_1647_)
);

NAND3X1 _4725_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [8]),
    .C(_1984__bF$buf4),
    .Y(_2013_)
);

OAI21X1 _4305_ (
    .A(_1265_),
    .B(_1164__bF$buf1),
    .C(_1267_),
    .Y(_1120_)
);

FILL FILL_0__2792_ (
);

FILL FILL_0__3577_ (
);

FILL FILL_0__3157_ (
);

FILL FILL_1__3738_ (
);

OAI21X1 _2388_ (
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [13]),
    .Y(_1321_)
);

FILL FILL_0__2428_ (
);

NAND2X1 _4534_ (
    .A(\u_mem_serial.shift_rx [16]),
    .B(_1877__bF$buf3),
    .Y(_1885_)
);

DFFPOSX1 _4114_ (
    .D(_871_),
    .CLK(clk_sys_bF$buf0),
    .Q(\u_cpu.bufreg.data [29])
);

FILL FILL_1__3491_ (
);

FILL FILL_1__4696_ (
);

MUX2X1 _2600_ (
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(\u_cpu.bufreg.data [4]),
    .S(\u_mem_serial.active_ibus_bF$buf6 ),
    .Y(_816_)
);

INVX1 _3805_ (
    .A(_395_),
    .Y(\u_cpu.csr_imm_en )
);

DFFPOSX1 _2197_ (
    .D(_773_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [0])
);

FILL FILL_0__2657_ (
);

NAND3X1 _4763_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [31]),
    .C(_1984__bF$buf3),
    .Y(_2037_)
);

DFFPOSX1 _4343_ (
    .D(_1107_),
    .CLK(clk_sys_bF$buf37),
    .Q(\u_cpu.bufreg2.dhi [5])
);

FILL FILL_0__3195_ (
);

NAND2X1 _3614_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_2079_),
    .Y(_2080_)
);

DFFSR _4819_ (
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1847_),
    .CLK(clk_sys_bF$buf14),
    .Q(ibus_pending_rdt[8])
);

FILL FILL_0__2466_ (
);

OAI21X1 _4572_ (
    .A(_1912_),
    .B(rf_rreq_bF$buf5),
    .C(_1913_),
    .Y(rf_read_reg1_to_if[2])
);

NAND3X1 _4152_ (
    .A(_1137_),
    .B(_1138_),
    .C(_1139_),
    .Y(_1140_)
);

OAI21X1 _3843_ (
    .A(rf_rreq_bF$buf7),
    .B(\u_cpu.decode.co_mem_signed ),
    .C(_410_),
    .Y(_362_)
);

NOR2X1 _3423_ (
    .A(_446__bF$buf1),
    .B(_445_),
    .Y(_40_)
);

AOI21X1 _3003_ (
    .A(_1468_),
    .B(_1467_),
    .C(_1692_),
    .Y(_507_)
);

NAND2X1 _4628_ (
    .A(\u_mem_serial.shift_rx [8]),
    .B(_1877__bF$buf0),
    .Y(_1951_)
);

INVX1 _4208_ (
    .A(\u_cpu.bufreg2.dlo [2]),
    .Y(_1188_)
);

FILL FILL_0__2695_ (
);

INVX1 _4381_ (
    .A(\u_cpu.alu.i_buf ),
    .Y(_1512_)
);

NAND2X1 _3652_ (
    .A(_2138_),
    .B(_2136_),
    .Y(_2139_)
);

AOI21X1 _3232_ (
    .A(_1745_),
    .B(_1746_),
    .C(rst_bF$buf0),
    .Y(_574_)
);

NAND2X1 _4437_ (
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .B(_1532_),
    .Y(_1550_)
);

INVX1 _4017_ (
    .A(\u_cpu.bufreg.data [12]),
    .Y(_900_)
);

AOI22X1 _4190_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [7]),
    .C(_1172__bF$buf0),
    .D(_1174_),
    .Y(_1175_)
);

DFFPOSX1 _2923_ (
    .D(_487_),
    .CLK(clk_sys_bF$buf27),
    .Q(\u_rf_if.rcnt [0])
);

OAI21X1 _2503_ (
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(_1013_),
    .C(_1014_),
    .Y(_1015_)
);

FILL FILL_0__4230_ (
);

INVX2 _3708_ (
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_165_)
);

AOI21X1 _3881_ (
    .A(_659_),
    .B(_658_),
    .C(rf_rreq_bF$buf7),
    .Y(_660_)
);

OAI21X1 _3461_ (
    .A(\u_rf_if.read_buf0 [14]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_319_)
);

OR2X2 _3041_ (
    .A(_1623_),
    .B(_1608_),
    .Y(_1607_)
);

AND2X2 _4666_ (
    .A(clk_div[0]),
    .B(clk_div[1]),
    .Y(_1975_)
);

OAI21X1 _4246_ (
    .A(_1218_),
    .B(_1220_),
    .C(_1212_),
    .Y(_1108_)
);

FILL FILL_0__3921_ (
);

FILL FILL_0__3501_ (
);

FILL FILL_0__4706_ (
);

INVX1 _2732_ (
    .A(\u_rf_serial.last_req_key [5]),
    .Y(_219_)
);

NOR2X1 _2312_ (
    .A(_1313_),
    .B(_1382_),
    .Y(_1383_)
);

FILL FILL_0__3098_ (
);

OAI21X1 _3937_ (
    .A(_665__bF$buf3),
    .B(_703_),
    .C(_704_),
    .Y(_638_)
);

OAI22X1 _3517_ (
    .A(_440_),
    .B(_434_),
    .C(_420_),
    .D(_427_),
    .Y(_419_)
);

FILL FILL_1__3679_ (
);

FILL FILL_1__3259_ (
);

FILL FILL_1__4620_ (
);

INVX1 _3690_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_150_)
);

NAND3X1 _3270_ (
    .A(_2154__bF$buf1),
    .B(_2152__bF$buf2),
    .C(_2068_),
    .Y(_1771_)
);

FILL FILL_0__2369_ (
);

NAND2X1 _4475_ (
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .B(_1553_),
    .Y(_1575_)
);

INVX1 _4055_ (
    .A(\u_cpu.bufreg.data [28]),
    .Y(_925_)
);

FILL FILL_0__3730_ (
);

NOR2X1 _2961_ (
    .A(rst_bF$buf5),
    .B(_475_),
    .Y(_490_)
);

OAI21X1 _2541_ (
    .A(_963_),
    .B(_975_),
    .C(_853_),
    .Y(_976_)
);

AOI21X1 _3746_ (
    .A(_188_),
    .B(_187_),
    .C(rst_bF$buf7),
    .Y(_133_)
);

AOI21X1 _3326_ (
    .A(_1815_),
    .B(_1818_),
    .C(rst_bF$buf8),
    .Y(_598_)
);

FILL FILL_0__2178_ (
);

NOR2X1 _4284_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_1248_),
    .Y(_1252_)
);

FILL FILL_0__4744_ (
);

FILL FILL_1__2759_ (
);

OAI21X1 _2770_ (
    .A(ren_bF$buf2),
    .B(_127_),
    .C(_164_),
    .Y(_167_)
);

NAND3X1 _2350_ (
    .A(_1315__bF$buf1),
    .B(_1351_),
    .C(_1303__bF$buf2),
    .Y(_1352_)
);

MUX2X1 _3975_ (
    .A(\u_cpu.decode.i_wb_rdt [8]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .S(rf_rreq_bF$buf2),
    .Y(_730_)
);

OAI21X1 _3555_ (
    .A(\u_rf_if.wdata0_next [0]),
    .B(_476_),
    .C(_456_),
    .Y(_455_)
);

AOI21X1 _3135_ (
    .A(_1673_),
    .B(_1674_),
    .C(rst_bF$buf8),
    .Y(_549_)
);

FILL FILL_1__3297_ (
);

OAI21X1 _4093_ (
    .A(_892__bF$buf1),
    .B(_948_),
    .C(_950_),
    .Y(_885_)
);

NOR2X1 _2826_ (
    .A(raddr[7]),
    .B(raddr[6]),
    .Y(_75_)
);

INVX8 _2406_ (
    .A(_1303__bF$buf1),
    .Y(_1304_)
);

CLKBUF1 CLKBUF1_insert245 (
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf5)
);

CLKBUF1 CLKBUF1_insert246 (
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf4)
);

CLKBUF1 CLKBUF1_insert247 (
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf3)
);

CLKBUF1 CLKBUF1_insert248 (
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf2)
);

CLKBUF1 CLKBUF1_insert249 (
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf1)
);

NOR2X1 _3784_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_372_),
    .Y(\u_cpu.state.i_alu_rd_sel1 )
);

AOI21X1 _3364_ (
    .A(_2098_),
    .B(_2155_),
    .C(rst_bF$buf2),
    .Y(_603_)
);

OAI21X1 _4569_ (
    .A(_1877__bF$buf5),
    .B(_1910_),
    .C(_1911_),
    .Y(\u_cpu.decode.i_wb_rdt [22])
);

INVX1 _4149_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_1137_)
);

FILL FILL_0__3404_ (
);

FILL FILL_0__4609_ (
);

DFFPOSX1 _2635_ (
    .D(_54_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_serial.shift_rx [0])
);

OAI21X1 _2215_ (
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [19]),
    .Y(_1454_)
);

FILL FILL_0__4782_ (
);

FILL FILL_1__2797_ (
);

NAND2X1 _3593_ (
    .A(_36_),
    .B(_37_),
    .Y(\u_cpu.o_wdata0 )
);

OAI21X1 _3173_ (
    .A(_1707_),
    .B(_1700_),
    .C(_44_),
    .Y(_1699_)
);

FILL FILL144150x32550 (
);

OAI21X1 _4798_ (
    .A(_1886_),
    .B(_2057_),
    .C(_1892_),
    .Y(_1875_)
);

AOI21X1 _4378_ (
    .A(_1505_),
    .B(_1508_),
    .C(\u_cpu.alu.i_cnt0 ),
    .Y(_1509_)
);

FILL FILL_0__4418_ (
);

DFFPOSX1 _2864_ (
    .D(_592_),
    .CLK(clk_sys_bF$buf10),
    .Q(\u_rf_if.read_buf1 [19])
);

AOI22X1 _2444_ (
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(\u_cpu.bufreg2.dlo [14]),
    .D(_1048_),
    .Y(_1074_)
);

FILL FILL_0__4171_ (
);

AOI21X1 _3649_ (
    .A(_2119_),
    .B(_2114_),
    .C(_2121_),
    .Y(_2136_)
);

NOR2X1 _3229_ (
    .A(_1796_),
    .B(_10__bF$buf1),
    .Y(_1742_)
);

FILL FILL_1__4332_ (
);

AOI21X1 _4187_ (
    .A(_1168_),
    .B(_1171_),
    .C(_1161_),
    .Y(_1172_)
);

FILL FILL_0__3442_ (
);

FILL FILL_0__3022_ (
);

FILL FILL_0__4647_ (
);

NAND2X1 _2673_ (
    .A(\u_rf_serial.last_req_key [0]),
    .B(_197_),
    .Y(_273_)
);

OAI21X1 _2253_ (
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [25]),
    .Y(_1427_)
);

OAI21X1 _3878_ (
    .A(rf_rreq_bF$buf6),
    .B(_654_),
    .C(_657_),
    .Y(_626_)
);

AOI21X1 _3458_ (
    .A(_448_),
    .B(_323_),
    .C(_317_),
    .Y(_316_)
);

NAND2X1 _3038_ (
    .A(_1606_),
    .B(_1624_),
    .Y(_1605_)
);

FILL FILL_0__3671_ (
);

AOI21X1 _2729_ (
    .A(_219_),
    .B(_215__bF$buf3),
    .C(_221_),
    .Y(_59_)
);

INVX1 _2309_ (
    .A(_1385_),
    .Y(_1386_)
);

FILL FILL_0__4456_ (
);

FILL FILL_0__4036_ (
);

INVX1 _2482_ (
    .A(\u_cpu.bufreg.data [20]),
    .Y(_1036_)
);

NAND3X1 _3687_ (
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.dbus_en ),
    .C(_144_),
    .Y(_148_)
);

OAI21X1 _3267_ (
    .A(_18__bF$buf0),
    .B(_1770_),
    .C(\u_rf_if.read_buf1 [11]),
    .Y(_1769_)
);

FILL FILL_0__3727_ (
);

FILL FILL_0__3307_ (
);

FILL FILL_0__3480_ (
);

FILL FILL_0__3060_ (
);

NOR2X1 _2958_ (
    .A(\u_rf_if.i_rreq ),
    .B(_1730_),
    .Y(_613_)
);

INVX1 _2538_ (
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_979_)
);

FILL FILL_0__4685_ (
);

FILL FILL_1__3221_ (
);

OAI21X1 _2291_ (
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [27]),
    .Y(_1400_)
);

OAI21X1 _3496_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .B(_355_),
    .C(_354_),
    .Y(_353_)
);

AOI21X1 _3076_ (
    .A(_1631_),
    .B(_1632_),
    .C(rst_bF$buf8),
    .Y(_530_)
);

FILL FILL_0__2331_ (
);

NAND2X1 _2767_ (
    .A(\u_rf_if.o_wdata [1]),
    .B(_105_),
    .Y(_193_)
);

NAND2X1 _2347_ (
    .A(\u_mem_serial.shift_rx [4]),
    .B(_1297__bF$buf3),
    .Y(_1354_)
);

FILL FILL_0__4074_ (
);

FILL FILL_0__2807_ (
);

FILL FILL_0__2980_ (
);

FILL FILL_0__3345_ (
);

FILL FILL_1__2721_ (
);

FILL FILL_1__3506_ (
);

NOR2X1 _2996_ (
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [2]),
    .Y(_743_)
);

NOR2X1 _2576_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_798_),
    .Y(_840_)
);

FILL FILL_0__2616_ (
);

OAI21X1 _4722_ (
    .A(_1946_),
    .B(_1983__bF$buf3),
    .C(_2011_),
    .Y(_1845_)
);

INVX1 _4302_ (
    .A(\u_cpu.bufreg2.dlo [15]),
    .Y(_1265_)
);

CLKBUF1 CLKBUF1_insert80 (
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf5)
);

CLKBUF1 CLKBUF1_insert81 (
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf4)
);

CLKBUF1 CLKBUF1_insert82 (
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf3)
);

CLKBUF1 CLKBUF1_insert83 (
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf2)
);

CLKBUF1 CLKBUF1_insert84 (
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf1)
);

CLKBUF1 CLKBUF1_insert85 (
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf0)
);

NAND3X1 _2385_ (
    .A(_1315__bF$buf0),
    .B(_1323_),
    .C(_1303__bF$buf3),
    .Y(_1324_)
);

MUX2X1 _4531_ (
    .A(ibus_pending_rdt[3]),
    .B(\u_mem_serial.shift_rx [3]),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_1883_)
);

DFFPOSX1 _4111_ (
    .D(_874_),
    .CLK(clk_sys_bF$buf0),
    .Q(\u_cpu.bufreg.data [27])
);

FILL FILL_0__3383_ (
);

DFFPOSX1 _3802_ (
    .D(_790_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [17])
);

FILL FILL_0__4588_ (
);

FILL FILL_1__3544_ (
);

DFFPOSX1 _2194_ (
    .D(_750_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [11])
);

FILL FILL_1__4749_ (
);

NAND2X1 _3399_ (
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_14_)
);

FILL FILL_0__2234_ (
);

NAND3X1 _4760_ (
    .A(_1917_),
    .B(_2034_),
    .C(_2035_),
    .Y(_1859_)
);

DFFPOSX1 _4340_ (
    .D(_1110_),
    .CLK(clk_sys_bF$buf37),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

FILL FILL_0__3859_ (
);

INVX1 _3611_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_2077_)
);

FILL FILL_0__4397_ (
);

FILL FILL_1_BUFX2_insert240 (
);

FILL FILL_1_BUFX2_insert244 (
);

DFFSR _4816_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1850_),
    .CLK(clk_sys_bF$buf36),
    .Q(ibus_pending_rdt[5])
);

FILL FILL_0__3248_ (
);

FILL FILL_1__2204_ (
);

DFFPOSX1 _2899_ (
    .D(_573_),
    .CLK(clk_sys_bF$buf40),
    .Q(\u_rf_if.read_buf1 [3])
);

NAND2X1 _2479_ (
    .A(_1038_),
    .B(_840_),
    .Y(_1039_)
);

DFFPOSX1 _3840_ (
    .D(_775_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [6])
);

INVX8 _3420_ (
    .A(rst_bF$buf7),
    .Y(_32_)
);

AOI21X1 _3000_ (
    .A(_1466_),
    .B(_746_),
    .C(_1692_),
    .Y(_506_)
);

FILL FILL_0__2519_ (
);

NAND2X1 _4625_ (
    .A(\u_mem_serial.shift_rx [9]),
    .B(_1877__bF$buf2),
    .Y(_1949_)
);

NOR2X1 _4205_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(_1182_),
    .Y(_1186_)
);

FILL FILL_1__3582_ (
);

FILL FILL_1__4787_ (
);

FILL FILL_0__2272_ (
);

FILL FILL_1__3218_ (
);

NAND3X1 _2288_ (
    .A(_1315__bF$buf3),
    .B(_1402_),
    .C(_1303__bF$buf1),
    .Y(_1403_)
);

FILL FILL_0__2748_ (
);

OAI22X1 _4434_ (
    .A(_1539_),
    .B(_1531_),
    .C(_1540_),
    .D(_1535_),
    .Y(_1482_)
);

NAND2X1 _4014_ (
    .A(_896_),
    .B(_897_),
    .Y(_898_)
);

FILL FILL_1__4176_ (
);

DFFPOSX1 _2920_ (
    .D(_562_),
    .CLK(clk_sys_bF$buf18),
    .Q(\u_rf_if.read_buf0 [29])
);

NAND2X1 _2500_ (
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_1018_)
);

FILL FILL_0__3286_ (
);

INVX2 _3705_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_163_)
);

FILL FILL_1__2242_ (
);

FILL FILL_0__2557_ (
);

NAND3X1 _4663_ (
    .A(rreg0[4]),
    .B(rf_rreq_bF$buf4),
    .C(_1895__bF$buf2),
    .Y(_1973_)
);

AOI21X1 _4243_ (
    .A(_1216_),
    .B(_1217_),
    .C(mem_dbus_ack_bF$buf4),
    .Y(_1218_)
);

FILL FILL_1__2718_ (
);

OAI21X1 _3934_ (
    .A(_665__bF$buf2),
    .B(_701_),
    .C(_702_),
    .Y(_637_)
);

NAND2X1 _3514_ (
    .A(\u_rf_if.read_buf1 [25]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_408_)
);

NAND3X1 _4719_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [11]),
    .C(_1984__bF$buf1),
    .Y(_2010_)
);

FILL FILL_1__3256_ (
);

FILL FILL_0__2786_ (
);

NAND2X1 _4472_ (
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .B(_1530__bF$buf1),
    .Y(_1573_)
);

OAI21X1 _4052_ (
    .A(_892__bF$buf0),
    .B(_922_),
    .C(_923_),
    .Y(_871_)
);

FILL FILL_1__2527_ (
);

OAI21X1 _3743_ (
    .A(_184_),
    .B(_186_),
    .C(_185_),
    .Y(_132_)
);

NAND3X1 _3323_ (
    .A(_2154__bF$buf0),
    .B(_10__bF$buf1),
    .C(_1813_),
    .Y(_1812_)
);

FILL FILL_1__2280_ (
);

INVX1 _4528_ (
    .A(ibus_pending_rdt[2]),
    .Y(_1881_)
);

NAND2X1 _4108_ (
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.data [13]),
    .Y(_960_)
);

FILL FILL_0__2595_ (
);

FILL FILL_0__2175_ (
);

AOI22X1 _4281_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [21]),
    .C(_1172__bF$buf3),
    .D(_1249_),
    .Y(_1250_)
);

FILL FILL_0__4321_ (
);

FILL FILL_1__2756_ (
);

MUX2X1 _3972_ (
    .A(\u_cpu.decode.i_wb_rdt [9]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .S(rf_rreq_bF$buf2),
    .Y(_728_)
);

NAND2X1 _3552_ (
    .A(_453_),
    .B(_483_),
    .Y(_452_)
);

AOI21X1 _3132_ (
    .A(_1672_),
    .B(_1671_),
    .C(rst_bF$buf6),
    .Y(_548_)
);

NAND3X1 _4757_ (
    .A(_1921_),
    .B(_2032_),
    .C(_2033_),
    .Y(_1858_)
);

AOI22X1 _4337_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [8]),
    .C(_1172__bF$buf0),
    .D(_1290_),
    .Y(_1291_)
);

FILL FILL_1__3294_ (
);

NAND2X1 _4090_ (
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(\u_cpu.bufreg.data [19]),
    .Y(_949_)
);

AND2X2 _2823_ (
    .A(_76_),
    .B(\u_rf_serial.shift_rx [1]),
    .Y(rdata[1])
);

INVX1 _2403_ (
    .A(_1306_),
    .Y(_1307_)
);

FILL FILL_0__3189_ (
);

FILL FILL_0__4550_ (
);

OAI21X1 _3608_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(_2075_),
    .C(_2073_),
    .Y(\u_cpu.mem_if.o_wb_sel [2])
);

FILL FILL_1__2565_ (
);

FILL FILL_1__4711_ (
);

DFFPOSX1 _3781_ (
    .D(_761_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [0])
);

NOR2X1 _3361_ (
    .A(_13_),
    .B(_2096_),
    .Y(_2095_)
);

OAI21X1 _4566_ (
    .A(_1877__bF$buf0),
    .B(_1908_),
    .C(_1909_),
    .Y(\u_cpu.decode.i_wb_rdt [18])
);

OAI21X1 _4146_ (
    .A(_1130_),
    .B(_1133_),
    .C(_1131_),
    .Y(_1134_)
);

FILL FILL_0__3821_ (
);

DFFPOSX1 _2632_ (
    .D(_69_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_serial.last_req_key [0])
);

OAI21X1 _2212_ (
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [18]),
    .Y(_1456_)
);

OAI21X1 _3837_ (
    .A(rf_rreq_bF$buf1),
    .B(_371_),
    .C(_407_),
    .Y(_359_)
);

NAND2X1 _3417_ (
    .A(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .B(_42_),
    .Y(_30_)
);

FILL FILL_1__2794_ (
);

FILL FILL_1__3579_ (
);

NAND2X1 _3590_ (
    .A(\u_rf_if.rcnt [0]),
    .B(_485_),
    .Y(_484_)
);

NOR2X1 _3170_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .Y(_1697_)
);

FILL FILL_0__2689_ (
);

NAND2X1 _4795_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_2055_)
);

INVX1 _4375_ (
    .A(\u_cpu.ctrl.i_utype ),
    .Y(_1506_)
);

FILL FILL_0__3630_ (
);

FILL FILL_0__3210_ (
);

DFFPOSX1 _2861_ (
    .D(_497_),
    .CLK(clk_sys_bF$buf24),
    .Q(\u_rf_if.write_wait [0])
);

AOI21X1 _2441_ (
    .A(_1073_),
    .B(_1076_),
    .C(_803_),
    .Y(_1077_)
);

AOI21X1 _3646_ (
    .A(_2133_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(\u_cpu.alu.i_buf ),
    .Y(_2134_)
);

OAI21X1 _3226_ (
    .A(_18__bF$buf0),
    .B(_1744_),
    .C(\u_rf_if.read_buf1 [2]),
    .Y(_1740_)
);

FILL FILL_0__2498_ (
);

INVX1 _4184_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1169_)
);

DFFPOSX1 _2917_ (
    .D(_522_),
    .CLK(clk_sys_bF$buf12),
    .Q(\u_rf_if.read_buf0 [2])
);

FILL FILL_0__4224_ (
);

NAND2X1 _2670_ (
    .A(\u_rf_serial.last_req_key [6]),
    .B(_94_),
    .Y(_276_)
);

OAI21X1 _2250_ (
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [31]),
    .Y(_1429_)
);

NAND2X1 _3875_ (
    .A(\u_cpu.bufreg.i_cnt_done ),
    .B(_655_),
    .Y(_656_)
);

OAI21X1 _3455_ (
    .A(\u_rf_if.read_buf0 [25]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_313_)
);

NAND2X1 _3035_ (
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .B(_1604_),
    .Y(_1603_)
);

FILL FILL_0__2710_ (
);

FILL FILL_0__3915_ (
);

AOI21X1 _2726_ (
    .A(_222_),
    .B(_215__bF$buf2),
    .C(_223_),
    .Y(_60_)
);

OAI21X1 _2306_ (
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [30]),
    .Y(_1388_)
);

OAI21X1 _3684_ (
    .A(\u_cpu.bufreg2.o_sh_done ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_146_),
    .Y(_147_)
);

AOI21X1 _3264_ (
    .A(_1769_),
    .B(_1767_),
    .C(rst_bF$buf8),
    .Y(_584_)
);

NAND2X1 _4469_ (
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .B(_1530__bF$buf4),
    .Y(_1571_)
);

OAI21X1 _4049_ (
    .A(_916_),
    .B(_920_),
    .C(_921_),
    .Y(_870_)
);

INVX1 _2955_ (
    .A(\u_rf_if.rcnt [0]),
    .Y(_611_)
);

NAND3X1 _2535_ (
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .B(_981_),
    .C(_980_),
    .Y(_982_)
);

FILL FILL_0__4262_ (
);

OAI21X1 _3493_ (
    .A(\u_rf_if.read_buf1 [21]),
    .B(_446__bF$buf0),
    .C(_445_),
    .Y(_350_)
);

AOI21X1 _3073_ (
    .A(_1630_),
    .B(_1629_),
    .C(rst_bF$buf6),
    .Y(_529_)
);

AOI21X1 _4698_ (
    .A(_1996_),
    .B(_1994_),
    .C(\u_cpu.decode.i_wb_rdt [2]),
    .Y(_1997_)
);

OAI21X1 _4278_ (
    .A(_1244_),
    .B(_1164__bF$buf2),
    .C(_1247_),
    .Y(_1113_)
);

FILL FILL_0__3953_ (
);

FILL FILL_0__3533_ (
);

FILL FILL_0__3113_ (
);

FILL FILL_0__4738_ (
);

NAND2X1 _2764_ (
    .A(ren_bF$buf3),
    .B(raddr[0]),
    .Y(_196_)
);

AOI21X1 _2344_ (
    .A(_1353_),
    .B(_1356_),
    .C(rst_bF$buf4),
    .Y(_756_)
);

MUX2X1 _3969_ (
    .A(\u_cpu.decode.i_wb_rdt [10]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .S(rf_rreq_bF$buf2),
    .Y(_726_)
);

OAI21X1 _3549_ (
    .A(_471_),
    .B(_484__bF$buf2),
    .C(_451_),
    .Y(\u_rf_if.o_waddr [8])
);

AOI21X1 _3129_ (
    .A(_1670_),
    .B(_1669_),
    .C(rst_bF$buf6),
    .Y(_547_)
);

NAND2X1 _4087_ (
    .A(\u_cpu.bufreg.data [19]),
    .B(_892__bF$buf4),
    .Y(_947_)
);

FILL FILL_1__3503_ (
);

NOR2X1 _2993_ (
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_741_)
);

OAI21X1 _2573_ (
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(_841_),
    .C(_842_),
    .Y(_843_)
);

FILL FILL_1__4708_ (
);

DFFPOSX1 _3778_ (
    .D(_779_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.req_pending )
);

AOI21X1 _3358_ (
    .A(_21_),
    .B(_14_),
    .C(_7_),
    .Y(_2092_)
);

CLKBUF1 CLKBUF1_insert50 (
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf35)
);

CLKBUF1 CLKBUF1_insert51 (
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf34)
);

CLKBUF1 CLKBUF1_insert52 (
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf33)
);

CLKBUF1 CLKBUF1_insert53 (
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf32)
);

CLKBUF1 CLKBUF1_insert54 (
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf31)
);

CLKBUF1 CLKBUF1_insert55 (
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf30)
);

CLKBUF1 CLKBUF1_insert56 (
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf29)
);

CLKBUF1 CLKBUF1_insert57 (
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf28)
);

CLKBUF1 CLKBUF1_insert58 (
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf27)
);

CLKBUF1 CLKBUF1_insert59 (
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf26)
);

FILL FILL_0__3571_ (
);

FILL FILL_0__3151_ (
);

DFFPOSX1 _2629_ (
    .D(_71_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_serial.last_req_key [8])
);

OAI21X1 _2209_ (
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [17]),
    .Y(_1458_)
);

FILL FILL_0__4776_ (
);

NAND2X1 _2382_ (
    .A(\u_mem_serial.shift_rx [11]),
    .B(_1297__bF$buf2),
    .Y(_1326_)
);

INVX1 _3587_ (
    .A(\u_rf_if.o_waddr [0]),
    .Y(_481_)
);

NAND2X1 _3167_ (
    .A(\u_rf_if.pending_read ),
    .B(_1698_),
    .Y(_1694_)
);

FILL FILL_0__2422_ (
);

DFFPOSX1 _2858_ (
    .D(_595_),
    .CLK(clk_sys_bF$buf24),
    .Q(\u_rf_if.read_buf1 [22])
);

NOR2X1 _2438_ (
    .A(_1079_),
    .B(_1046_),
    .Y(_1080_)
);

FILL FILL_0__4165_ (
);

FILL FILL_1__3541_ (
);

DFFPOSX1 _2191_ (
    .D(_783_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [22])
);

FILL FILL_1__4746_ (
);

AOI22X1 _3396_ (
    .A(\u_rf_if.issue_chunk [3]),
    .B(_12_),
    .C(_20_),
    .D(_23_),
    .Y(_11_)
);

FILL FILL_0__2651_ (
);

FILL FILL_0__3856_ (
);

FILL FILL_0__3436_ (
);

FILL FILL_0__3016_ (
);

NAND2X1 _2667_ (
    .A(_227_),
    .B(_123_),
    .Y(_279_)
);

NAND2X1 _2247_ (
    .A(\u_mem_serial.req_pending ),
    .B(_1307_),
    .Y(_1431_)
);

FILL FILL_0__4394_ (
);

FILL FILL_1_BUFX2_insert210 (
);

FILL FILL_1_BUFX2_insert217 (
);

DFFSR _4813_ (
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1853_),
    .CLK(clk_sys_bF$buf5),
    .Q(ibus_pending_rdt[2])
);

FILL FILL144450x28950 (
);

FILL FILL_0__2460_ (
);

DFFPOSX1 _2896_ (
    .D(_495_),
    .CLK(clk_sys_bF$buf44),
    .Q(\u_rf_if.o_waddr [1])
);

OAI21X1 _2476_ (
    .A(_1022_),
    .B(_1041_),
    .C(_1007_),
    .Y(_1042_)
);

NAND2X1 _4622_ (
    .A(\u_mem_serial.shift_rx [10]),
    .B(_1877__bF$buf2),
    .Y(_1947_)
);

AOI22X1 _4202_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [4]),
    .C(_1172__bF$buf1),
    .D(_1183_),
    .Y(_1184_)
);

FILL FILL_1__4784_ (
);

FILL FILL_0__3894_ (
);

FILL FILL_0__3474_ (
);

FILL FILL_0__3054_ (
);

FILL FILL_0__4679_ (
);

NAND2X1 _2285_ (
    .A(_1297__bF$buf1),
    .B(_1046_),
    .Y(_1405_)
);

FILL FILL_0__2325_ (
);

DFFSR _4851_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1866_),
    .CLK(clk_sys_bF$buf32),
    .Q(rf_read_reg0[1])
);

OAI22X1 _4431_ (
    .A(_1547_),
    .B(_1531_),
    .C(_1546_),
    .D(_1535_),
    .Y(_1480_)
);

AOI21X1 _4011_ (
    .A(\u_cpu.bufreg.i_clr_lsb ),
    .B(\u_cpu.alu.i_cnt0 ),
    .C(_894_),
    .Y(_895_)
);

FILL FILL144150x108150 (
);

INVX1 _3702_ (
    .A(rst_bF$buf1),
    .Y(_161_)
);

FILL FILL_0__4068_ (
);

FILL FILL_1__3024_ (
);

OAI21X1 _3299_ (
    .A(_18__bF$buf2),
    .B(_1794_),
    .C(\u_rf_if.read_buf1 [19]),
    .Y(_1793_)
);

FILL FILL_0__2974_ (
);

NAND3X1 _4660_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [17]),
    .C(_1897_),
    .Y(_1971_)
);

OAI21X1 _4240_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_1214_),
    .C(\u_cpu.bufreg2.dhi [4]),
    .Y(_1215_)
);

FILL FILL_0__3339_ (
);

FILL FILL_0__4700_ (
);

FILL FILL_0__3092_ (
);

OAI21X1 _3931_ (
    .A(_665__bF$buf2),
    .B(_699_),
    .C(_700_),
    .Y(_636_)
);

NAND2X1 _3511_ (
    .A(\u_rf_if.read_buf1 [27]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .Y(_389_)
);

OAI21X1 _4716_ (
    .A(_2007_),
    .B(_1983__bF$buf2),
    .C(_2008_),
    .Y(_1842_)
);

FILL FILL_1__4458_ (
);

FILL FILL_1__4038_ (
);

FILL FILL_0__2363_ (
);

FILL FILL_1__3309_ (
);

OAI21X1 _2799_ (
    .A(_91_),
    .B(_73_),
    .C(_99_),
    .Y(_100_)
);

AOI21X1 _2379_ (
    .A(_1325_),
    .B(_1328_),
    .C(rst_bF$buf10),
    .Y(_749_)
);

NOR2X1 _3740_ (
    .A(rf_rreq_bF$buf3),
    .B(_177_),
    .Y(_184_)
);

INVX1 _3320_ (
    .A(_1811_),
    .Y(_1810_)
);

INVX1 _4525_ (
    .A(_1879_),
    .Y(\u_cpu.decode.i_wb_rdt [13])
);

OAI21X1 _4105_ (
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_957_),
    .C(_958_),
    .Y(_889_)
);

FILL FILL_1__3062_ (
);

FILL FILL_0__3797_ (
);

FILL FILL_0__3377_ (
);

FILL FILL_1__2333_ (
);

DFFPOSX1 _2188_ (
    .D(_793_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [15])
);

FILL FILL_0__2228_ (
);

NAND3X1 _4754_ (
    .A(_1913_),
    .B(_2030_),
    .C(_2031_),
    .Y(_1857_)
);

AOI22X1 _4334_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [9]),
    .C(_1172__bF$buf2),
    .D(_1288_),
    .Y(_1289_)
);

FILL FILL_1__4076_ (
);

FILL FILL_1__2809_ (
);

INVX1 _2820_ (
    .A(_78_),
    .Y(_79_)
);

INVX2 _2400_ (
    .A(rst_bF$buf5),
    .Y(_1310_)
);

NOR2X1 _3605_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bne_or_bge ),
    .Y(_2074_)
);

FILL FILL_1__2982_ (
);

FILL FILL_1_BUFX2_insert183 (
);

FILL FILL_1_BUFX2_insert187 (
);

FILL FILL_1__3347_ (
);

OAI21X1 _4563_ (
    .A(ibus_pending_ack_bF$buf0),
    .B(_1906_),
    .C(_1907_),
    .Y(\u_cpu.decode.i_wb_rdt [5])
);

INVX1 _4143_ (
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_1131_)
);

FILL FILL_0__4603_ (
);

FILL FILL_1__2618_ (
);

NAND2X1 _3834_ (
    .A(\u_cpu.decode.i_wb_rdt [13]),
    .B(rf_rreq_bF$buf1),
    .Y(_406_)
);

AOI21X1 _3414_ (
    .A(_30_),
    .B(_29_),
    .C(_28_),
    .Y(_605_)
);

FILL FILL_1__2371_ (
);

NAND2X1 _4619_ (
    .A(\u_mem_serial.shift_rx [11]),
    .B(_1877__bF$buf4),
    .Y(_1945_)
);

OAI21X1 _4792_ (
    .A(_1938_),
    .B(_1983__bF$buf4),
    .C(_2053_),
    .Y(_1873_)
);

FILL FILL_0__2266_ (
);

NAND2X1 _4372_ (
    .A(\u_cpu.ctrl.i_pc_rel ),
    .B(\u_cpu.ctrl.pc ),
    .Y(_1503_)
);

FILL FILL_0_CLKBUF1_insert246 (
);

FILL FILL_0_CLKBUF1_insert248 (
);

NAND2X1 _3643_ (
    .A(_2130_),
    .B(_2115_),
    .Y(_2131_)
);

NAND2X1 _3223_ (
    .A(_2149_),
    .B(_2154__bF$buf4),
    .Y(_1738_)
);

FILL FILL_1__2180_ (
);

DFFSR _4848_ (
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1869_),
    .CLK(clk_sys_bF$buf43),
    .Q(ibus_pending_rdt[29])
);

INVX1 _4428_ (
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1546_)
);

INVX8 _4008_ (
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .Y(_892_)
);

FILL FILL_1__3385_ (
);

BUFX2 BUFX2_insert230 (
    .A(_1877_),
    .Y(_1877__bF$buf4)
);

BUFX2 BUFX2_insert231 (
    .A(_1877_),
    .Y(_1877__bF$buf3)
);

BUFX2 BUFX2_insert232 (
    .A(_1877_),
    .Y(_1877__bF$buf2)
);

BUFX2 BUFX2_insert233 (
    .A(_1877_),
    .Y(_1877__bF$buf1)
);

BUFX2 BUFX2_insert234 (
    .A(_1877_),
    .Y(_1877__bF$buf0)
);

BUFX2 BUFX2_insert235 (
    .A(_1316_),
    .Y(_1316__bF$buf4)
);

BUFX2 BUFX2_insert236 (
    .A(_1316_),
    .Y(_1316__bF$buf3)
);

BUFX2 BUFX2_insert237 (
    .A(_1316_),
    .Y(_1316__bF$buf2)
);

BUFX2 BUFX2_insert238 (
    .A(_1316_),
    .Y(_1316__bF$buf1)
);

BUFX2 BUFX2_insert239 (
    .A(_1316_),
    .Y(_1316__bF$buf0)
);

NAND2X1 _4181_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1166_)
);

DFFPOSX1 _2914_ (
    .D(_565_),
    .CLK(clk_sys_bF$buf16),
    .Q(\u_rf_if.rreg1_latched [2])
);

FILL FILL_0__4641_ (
);

MUX2X1 _3872_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(rreg1[0]),
    .S(\u_cpu.decode.co_immdec_ctrl [0]),
    .Y(_653_)
);

OAI22X1 _3452_ (
    .A(_314_),
    .B(_313_),
    .C(_312_),
    .D(_311_),
    .Y(_310_)
);

AOI21X1 _3032_ (
    .A(_1697_),
    .B(_1602_),
    .C(_1601_),
    .Y(_516_)
);

NAND2X1 _4657_ (
    .A(\u_mem_serial.shift_rx [31]),
    .B(_1877__bF$buf1),
    .Y(_1969_)
);

NAND3X1 _4237_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1212_)
);

AOI21X1 _2723_ (
    .A(_224_),
    .B(_215__bF$buf0),
    .C(_225_),
    .Y(_61_)
);

NAND3X1 _2303_ (
    .A(_1315__bF$buf3),
    .B(_1390_),
    .C(_1303__bF$buf1),
    .Y(_1391_)
);

FILL FILL_0__4030_ (
);

OAI21X1 _3928_ (
    .A(_665__bF$buf1),
    .B(_697_),
    .C(_698_),
    .Y(_635_)
);

NOR2X1 _3508_ (
    .A(\u_rf_if.read_buf1 [28]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_381_)
);

INVX1 _3681_ (
    .A(\u_cpu.alu.i_en ),
    .Y(_144_)
);

AOI21X1 _3261_ (
    .A(_1766_),
    .B(_1765_),
    .C(rst_bF$buf7),
    .Y(_583_)
);

NAND2X1 _4466_ (
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .B(_1530__bF$buf2),
    .Y(_1569_)
);

NAND3X1 _4046_ (
    .A(\u_cpu.bufreg.i_init ),
    .B(_917_),
    .C(_918_),
    .Y(_919_)
);

FILL FILL_0__3721_ (
);

FILL FILL_0__3301_ (
);

NAND2X1 _2952_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_42_),
    .Y(_609_)
);

NAND2X1 _2532_ (
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(_984_),
    .Y(_985_)
);

OAI22X1 _3737_ (
    .A(_174_),
    .B(_177_),
    .C(_182_),
    .D(_175_),
    .Y(_130_)
);

AOI21X1 _3317_ (
    .A(_2153_),
    .B(_11_),
    .C(_1811_),
    .Y(_1807_)
);

FILL FILL_1__4420_ (
);

OAI22X1 _3490_ (
    .A(_351_),
    .B(_350_),
    .C(_349_),
    .D(_348_),
    .Y(_347_)
);

AOI21X1 _3070_ (
    .A(_1628_),
    .B(_1627_),
    .C(rst_bF$buf6),
    .Y(_528_)
);

FILL FILL_0__2589_ (
);

FILL FILL_0__2169_ (
);

NAND2X1 _4695_ (
    .A(_1879_),
    .B(\u_cpu.decode.i_wb_rdt [12]),
    .Y(_1994_)
);

INVX1 _4275_ (
    .A(\u_cpu.bufreg2.dlo [23]),
    .Y(_1245_)
);

FILL FILL_0__4315_ (
);

NAND3X1 _2761_ (
    .A(_90_),
    .B(_170_),
    .C(_198_),
    .Y(_199_)
);

INVX1 _2341_ (
    .A(_1358_),
    .Y(_1359_)
);

AOI21X1 _3966_ (
    .A(_661_),
    .B(rreg1[1]),
    .C(_705_),
    .Y(_724_)
);

INVX4 _3546_ (
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_448_)
);

NAND2X1 _3126_ (
    .A(_32__bF$buf2),
    .B(_1667_),
    .Y(_1666_)
);

FILL FILL_0__2801_ (
);

FILL FILL_0__2398_ (
);

INVX1 _4084_ (
    .A(\u_cpu.bufreg.data [20]),
    .Y(_945_)
);

OAI21X1 _2817_ (
    .A(\u_rf_serial.tx_state [2]),
    .B(_79_),
    .C(\u_rf_serial.tx_state [3]),
    .Y(_82_)
);

CLKBUF1 CLKBUF1_insert152 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

CLKBUF1 CLKBUF1_insert153 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert154 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert155 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert156 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert157 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert158 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

FILL FILL_0__4544_ (
);

CLKBUF1 CLKBUF1_insert159 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

NOR2X1 _2990_ (
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [0]),
    .Y(_739_)
);

INVX1 _2570_ (
    .A(\u_cpu.bufreg.data [13]),
    .Y(_846_)
);

DFFPOSX1 _3775_ (
    .D(_764_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [29])
);

NAND3X1 _3355_ (
    .A(rdata[1]),
    .B(_2090_),
    .C(_2101_),
    .Y(_2089_)
);

FILL FILL_0__2610_ (
);

FILL FILL_0__3815_ (
);

DFFPOSX1 _2626_ (
    .D(_60_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_serial.last_req_key [4])
);

OAI21X1 _2206_ (
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [16]),
    .Y(_1460_)
);

NAND3X1 _3584_ (
    .A(_481_),
    .B(_480_),
    .C(_479_),
    .Y(_478_)
);

OAI21X1 _3164_ (
    .A(_1694_),
    .B(_1695_),
    .C(_32__bF$buf1),
    .Y(_1692_)
);

NAND3X1 _4789_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [26]),
    .C(_1984__bF$buf0),
    .Y(_2052_)
);

DFFPOSX1 _4369_ (
    .D(_1113_),
    .CLK(clk_sys_bF$buf4),
    .Q(\u_cpu.bufreg2.dlo [22])
);

FILL FILL_0__3204_ (
);

FILL FILL144750x100950 (
);

FILL FILL_0__4409_ (
);

DFFPOSX1 _2855_ (
    .D(_537_),
    .CLK(clk_sys_bF$buf13),
    .Q(\u_rf_if.read_buf0 [13])
);

INVX1 _2435_ (
    .A(\u_mem_serial.bit_count [6]),
    .Y(_1083_)
);

FILL FILL_0__4582_ (
);

AOI21X1 _3393_ (
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_8_)
);

NAND2X1 _4598_ (
    .A(\u_mem_serial.shift_rx [29]),
    .B(_1877__bF$buf3),
    .Y(_1931_)
);

NAND3X1 _4178_ (
    .A(\u_cpu.bufreg.i_shift_op ),
    .B(_1160_),
    .C(_1162_),
    .Y(_1163_)
);

FILL FILL_0__4218_ (
);

OAI21X1 _2664_ (
    .A(_250_),
    .B(_281_),
    .C(_233_),
    .Y(_282_)
);

OAI21X1 _2244_ (
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [24]),
    .Y(_1433_)
);

DFFPOSX1 _3869_ (
    .D(_358_),
    .CLK(clk_sys_bF$buf30),
    .Q(\u_cpu.decode.co_mem_word )
);

OAI21X1 _3449_ (
    .A(\u_rf_if.read_buf0 [29]),
    .B(_446__bF$buf3),
    .C(_445_),
    .Y(_307_)
);

OAI21X1 _3029_ (
    .A(raddr[6]),
    .B(_1697_),
    .C(_32__bF$buf4),
    .Y(_1598_)
);

FILL FILL_0__2704_ (
);

DFFPOSX1 _4810_ (
    .D(_2072_),
    .CLK(clk_sys_bF$buf34),
    .Q(\u_cpu.mem_if.signbit )
);

FILL FILL_0__3909_ (
);

FILL FILL_1__4552_ (
);

FILL FILL_0__3242_ (
);

FILL FILL144450x82950 (
);

FILL FILL_0__4447_ (
);

FILL FILL_0__4027_ (
);

DFFPOSX1 _2893_ (
    .D(_577_),
    .CLK(clk_sys_bF$buf17),
    .Q(\u_rf_if.rtrig1 )
);

NAND3X1 _2473_ (
    .A(_830_),
    .B(_1044_),
    .C(_832_),
    .Y(_1045_)
);

NOR2X1 _3678_ (
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_142_)
);

NAND3X1 _3258_ (
    .A(_2154__bF$buf0),
    .B(_2152__bF$buf3),
    .C(_1816_),
    .Y(_1762_)
);

FILL FILL_0__2513_ (
);

AOI21X1 _2949_ (
    .A(_609_),
    .B(_608_),
    .C(_607_),
    .Y(_486_)
);

MUX2X1 _2529_ (
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .B(\u_cpu.bufreg.data [29]),
    .S(\u_mem_serial.active_ibus_bF$buf1 ),
    .Y(_988_)
);

FILL FILL_0__4256_ (
);

FILL FILL_1__3632_ (
);

NOR2X1 _2282_ (
    .A(_1311_),
    .B(_1309_),
    .Y(_1407_)
);

OAI21X1 _3487_ (
    .A(_361_),
    .B(_345_),
    .C(\u_rf_if.stream_cnt [4]),
    .Y(_344_)
);

NOR2X1 _3067_ (
    .A(_14_),
    .B(_1626_),
    .Y(_1625_)
);

FILL FILL_0__2742_ (
);

FILL FILL_0__2322_ (
);

FILL FILL_0__3947_ (
);

FILL FILL_0__3527_ (
);

FILL FILL_0__3107_ (
);

FILL FILL_1__4590_ (
);

FILL FILL_0__3280_ (
);

NOR2X1 _2758_ (
    .A(i_clk_fast_bF$buf6),
    .B(_77_),
    .Y(_2160_)
);

OAI21X1 _2338_ (
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [3]),
    .Y(_1361_)
);

FILL FILL_0__4485_ (
);

FILL FILL_0__4065_ (
);

FILL FILL_1__4226_ (
);

AOI21X1 _3296_ (
    .A(_1791_),
    .B(_1793_),
    .C(rst_bF$buf9),
    .Y(_592_)
);

FILL FILL_0__2971_ (
);

FILL FILL_0__2551_ (
);

FILL FILL_0_BUFX2_insert221 (
);

FILL FILL_0_BUFX2_insert223 (
);

FILL FILL_0_BUFX2_insert225 (
);

FILL FILL_0_BUFX2_insert227 (
);

FILL FILL_0_BUFX2_insert229 (
);

FILL FILL_1__3917_ (
);

OAI21X1 _2987_ (
    .A(_1706_),
    .B(_1702_),
    .C(_44_),
    .Y(_737_)
);

NAND2X1 _2567_ (
    .A(_848_),
    .B(_845_),
    .Y(_849_)
);

FILL FILL_0__4294_ (
);

FILL FILL_0__2607_ (
);

OAI21X1 _4713_ (
    .A(_1903_),
    .B(_1983__bF$buf1),
    .C(_2006_),
    .Y(_1841_)
);

FILL FILL_0__2780_ (
);

FILL FILL_0__2360_ (
);

FILL FILL_0__3565_ (
);

FILL FILL_0__3145_ (
);

NAND2X1 _2796_ (
    .A(\u_rf_if.o_waddr [7]),
    .B(_91_),
    .Y(_103_)
);

INVX1 _2376_ (
    .A(_1330_),
    .Y(_1331_)
);

NAND2X1 _4522_ (
    .A(\u_mem_serial.shift_rx [12]),
    .B(_1877__bF$buf5),
    .Y(_1878_)
);

OAI21X1 _4102_ (
    .A(_892__bF$buf2),
    .B(_954_),
    .C(_956_),
    .Y(_888_)
);

FILL FILL_1__4264_ (
);

FILL FILL144450x108150 (
);

FILL FILL_0__4159_ (
);

FILL FILL144450x14550 (
);

FILL FILL_1__3955_ (
);

FILL FILL_1__3115_ (
);

BUFX2 _2185_ (
    .A(gnd),
    .Y(o_gpio_oe[0])
);

FILL FILL_0__2225_ (
);

NAND3X1 _4751_ (
    .A(_1961_),
    .B(_2028_),
    .C(_2029_),
    .Y(_1856_)
);

OAI21X1 _4331_ (
    .A(_1284_),
    .B(_1164__bF$buf1),
    .C(_1286_),
    .Y(_1127_)
);

FILL FILL_0__3183_ (
);

DFFPOSX1 _3602_ (
    .D(_769_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.bit_count [4])
);

FILL FILL_0__4388_ (
);

DFFSR _4807_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1857_),
    .CLK(clk_sys_bF$buf20),
    .Q(rf_read_reg1[2])
);

OAI21X1 _3199_ (
    .A(rf_read_reg1_to_if[2]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_1720_)
);

INVX1 _4560_ (
    .A(_1905_),
    .Y(\u_cpu.decode.i_wb_rdt [14])
);

DFFPOSX1 _4140_ (
    .D(_998_),
    .CLK(clk_sys_bF$buf7),
    .Q(\u_cpu.bufreg.c_r )
);

FILL FILL_0__3659_ (
);

FILL FILL145050x75750 (
);

OAI21X1 _3831_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(\u_cpu.alu.i_cmp_sig )
);

AOI21X1 _3411_ (
    .A(_27_),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(_26_),
    .Y(_604_)
);

FILL FILL_0__4197_ (
);

NAND2X1 _4616_ (
    .A(\u_mem_serial.shift_rx [19]),
    .B(_1877__bF$buf2),
    .Y(_1943_)
);

FILL FILL_1__3153_ (
);

FILL FILL_0__2263_ (
);

FILL FILL_0__3888_ (
);

FILL FILL_0__3468_ (
);

FILL FILL144750x90150 (
);

FILL FILL_1__2424_ (
);

OR2X2 _2699_ (
    .A(_119_),
    .B(\u_rf_serial.last_req_key [3]),
    .Y(_247_)
);

NOR2X1 _2279_ (
    .A(_1406_),
    .B(_1408_),
    .Y(_1410_)
);

INVX1 _3640_ (
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_2128_)
);

OAI21X1 _3220_ (
    .A(_2153_),
    .B(_18__bF$buf0),
    .C(\u_rf_if.read_buf1 [0]),
    .Y(_1736_)
);

DFFSR _4845_ (
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1872_),
    .CLK(clk_sys_bF$buf43),
    .Q(ibus_pending_rdt[26])
);

OAI22X1 _4425_ (
    .A(_1544_),
    .B(_1531_),
    .C(_1543_),
    .D(_1535_),
    .Y(_1477_)
);

DFFPOSX1 _4005_ (
    .D(_642_),
    .CLK(clk_sys_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

BUFX2 BUFX2_insert200 (
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf2 )
);

BUFX2 BUFX2_insert201 (
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf1 )
);

BUFX2 BUFX2_insert202 (
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf0 )
);

BUFX2 BUFX2_insert203 (
    .A(_1895_),
    .Y(_1895__bF$buf3)
);

BUFX2 BUFX2_insert204 (
    .A(_1895_),
    .Y(_1895__bF$buf2)
);

BUFX2 BUFX2_insert205 (
    .A(_1895_),
    .Y(_1895__bF$buf1)
);

BUFX2 BUFX2_insert206 (
    .A(_1895_),
    .Y(_1895__bF$buf0)
);

BUFX2 BUFX2_insert207 (
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf3 )
);

BUFX2 BUFX2_insert208 (
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf2 )
);

BUFX2 BUFX2_insert209 (
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf1 )
);

DFFPOSX1 _2911_ (
    .D(_504_),
    .CLK(clk_sys_bF$buf16),
    .Q(\u_rf_if.rreg0_latched [2])
);

FILL FILL_1__2653_ (
);

BUFX2 BUFX2_insert0 (
    .A(_1304_),
    .Y(_1304__bF$buf4)
);

BUFX2 BUFX2_insert1 (
    .A(_1304_),
    .Y(_1304__bF$buf3)
);

BUFX2 BUFX2_insert2 (
    .A(_1304_),
    .Y(_1304__bF$buf2)
);

BUFX2 BUFX2_insert3 (
    .A(_1304_),
    .Y(_1304__bF$buf1)
);

BUFX2 BUFX2_insert4 (
    .A(_1304_),
    .Y(_1304__bF$buf0)
);

BUFX2 BUFX2_insert5 (
    .A(_215_),
    .Y(_215__bF$buf3)
);

BUFX2 BUFX2_insert6 (
    .A(_215_),
    .Y(_215__bF$buf2)
);

BUFX2 BUFX2_insert7 (
    .A(_215_),
    .Y(_215__bF$buf1)
);

BUFX2 BUFX2_insert8 (
    .A(_215_),
    .Y(_215__bF$buf0)
);

BUFX2 BUFX2_insert9 (
    .A(_10_),
    .Y(_10__bF$buf3)
);

FILL FILL_1__3438_ (
);

FILL FILL_0__2548_ (
);

OAI21X1 _4654_ (
    .A(_1966_),
    .B(rf_rreq_bF$buf5),
    .C(_1967_),
    .Y(rf_read_reg0_to_if[4])
);

INVX2 _4234_ (
    .A(_1136_),
    .Y(_1210_)
);

FILL FILL_1__3191_ (
);

FILL FILL_0_BUFX2_insert191 (
);

FILL FILL_0_BUFX2_insert193 (
);

FILL FILL_0_BUFX2_insert194 (
);

FILL FILL_0_BUFX2_insert196 (
);

FILL FILL_0_BUFX2_insert198 (
);

FILL FILL_1_CLKBUF1_insert248 (
);

INVX1 _2720_ (
    .A(\u_rf_serial.last_req_key [2]),
    .Y(_227_)
);

NAND2X1 _2300_ (
    .A(\u_mem_serial.shift_rx [28]),
    .B(_1297__bF$buf0),
    .Y(_1393_)
);

OAI21X1 _3925_ (
    .A(_665__bF$buf1),
    .B(_695_),
    .C(_696_),
    .Y(_634_)
);

OAI21X1 _3505_ (
    .A(\u_rf_if.read_buf1 [30]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_377_)
);

FILL FILL_1__2462_ (
);

FILL FILL_1__3667_ (
);

NAND2X1 _4463_ (
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .B(_1530__bF$buf2),
    .Y(_1567_)
);

INVX1 _4043_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_916_)
);

OAI21X1 _3734_ (
    .A(\u_cpu.alu.o_cmp ),
    .B(_178_),
    .C(\u_cpu.cond_branch ),
    .Y(_180_)
);

OAI21X1 _3314_ (
    .A(_18__bF$buf3),
    .B(_1809_),
    .C(\u_rf_if.read_buf1 [22]),
    .Y(_1805_)
);

FILL FILL_1__2691_ (
);

DFFPOSX1 _4519_ (
    .D(_1498_),
    .CLK(clk_sys_bF$buf31),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

FILL FILL_1__3476_ (
);

FILL FILL_0__2586_ (
);

AND2X2 _4692_ (
    .A(_1977_),
    .B(clk_sys_bF$buf41),
    .Y(_1992_)
);

MUX2X1 _4272_ (
    .A(_1242_),
    .B(\u_mem_serial.shift_rx [24]),
    .S(_1154_),
    .Y(_1243_)
);

FILL FILL_0__4732_ (
);

MUX2X1 _3963_ (
    .A(\u_cpu.decode.i_wb_rdt [21]),
    .B(rreg1[2]),
    .S(rf_rreq_bF$buf4),
    .Y(_722_)
);

INVX4 _3543_ (
    .A(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_445_)
);

NAND3X1 _3123_ (
    .A(_10__bF$buf3),
    .B(_1715__bF$buf2),
    .C(_1801_),
    .Y(_1664_)
);

OAI21X1 _4748_ (
    .A(_2026_),
    .B(_1983__bF$buf1),
    .C(_2027_),
    .Y(_1855_)
);

INVX1 _4328_ (
    .A(\u_cpu.bufreg2.dlo [10]),
    .Y(_1284_)
);

OAI21X1 _4081_ (
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_942_),
    .C(_943_),
    .Y(_880_)
);

NAND2X1 _2814_ (
    .A(\u_rf_serial.tx_state [0]),
    .B(_84_),
    .Y(_85_)
);

FILL FILL_0__4541_ (
);

DFFPOSX1 _3772_ (
    .D(_765_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [28])
);

AOI21X1 _3352_ (
    .A(_2071_),
    .B(_2093_),
    .C(rst_bF$buf9),
    .Y(_602_)
);

INVX1 _4557_ (
    .A(ibus_pending_rdt[14]),
    .Y(_1903_)
);

DFFPOSX1 _4137_ (
    .D(_881_),
    .CLK(clk_sys_bF$buf19),
    .Q(\u_cpu.bufreg.data [21])
);

DFFPOSX1 _2623_ (
    .D(_67_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_serial.shift_rx [1])
);

NOR2X1 _2203_ (
    .A(_794_),
    .B(_1307_),
    .Y(_1462_)
);

FILL FILL_0__4770_ (
);

MUX2X1 _3828_ (
    .A(\u_cpu.decode.co_mem_signed ),
    .B(\u_cpu.bne_or_bge ),
    .S(\u_cpu.decode.co_mem_word ),
    .Y(_404_)
);

NOR2X1 _3408_ (
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_23_)
);

INVX1 _3581_ (
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_475_)
);

AND2X2 _3161_ (
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [1]),
    .Y(_1690_)
);

OAI21X1 _4786_ (
    .A(_1932_),
    .B(_1983__bF$buf4),
    .C(_2050_),
    .Y(_1870_)
);

DFFPOSX1 _4366_ (
    .D(_1116_),
    .CLK(clk_sys_bF$buf4),
    .Q(\u_cpu.bufreg2.dlo [19])
);

FILL FILL_0__3621_ (
);

DFFPOSX1 _2852_ (
    .D(_598_),
    .CLK(clk_sys_bF$buf22),
    .Q(\u_rf_if.read_buf1 [25])
);

NAND2X1 _2432_ (
    .A(_1084_),
    .B(_1085_),
    .Y(_1086_)
);

OAI21X1 _3637_ (
    .A(_2121_),
    .B(_2113_),
    .C(_2124_),
    .Y(_2125_)
);

AND2X2 _3217_ (
    .A(_32__bF$buf1),
    .B(gnd),
    .Y(_569_)
);

FILL FILL_1__3799_ (
);

NAND2X1 _3390_ (
    .A(_12_),
    .B(_6_),
    .Y(_5_)
);

BUFX2 BUFX2_insert170 (
    .A(_892_),
    .Y(_892__bF$buf1)
);

BUFX2 BUFX2_insert171 (
    .A(_892_),
    .Y(_892__bF$buf0)
);

BUFX2 BUFX2_insert172 (
    .A(_2152_),
    .Y(_2152__bF$buf3)
);

BUFX2 BUFX2_insert173 (
    .A(_2152_),
    .Y(_2152__bF$buf2)
);

BUFX2 BUFX2_insert174 (
    .A(_2152_),
    .Y(_2152__bF$buf1)
);

BUFX2 BUFX2_insert175 (
    .A(_2152_),
    .Y(_2152__bF$buf0)
);

BUFX2 BUFX2_insert176 (
    .A(_32_),
    .Y(_32__bF$buf4)
);

BUFX2 BUFX2_insert177 (
    .A(_32_),
    .Y(_32__bF$buf3)
);

BUFX2 BUFX2_insert178 (
    .A(_32_),
    .Y(_32__bF$buf2)
);

BUFX2 BUFX2_insert179 (
    .A(_32_),
    .Y(_32__bF$buf1)
);

FILL FILL_0__2489_ (
);

NAND2X1 _4595_ (
    .A(ibus_pending_ack_bF$buf2),
    .B(ibus_pending_rdt[30]),
    .Y(_1929_)
);

NOR2X1 _4175_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1160_)
);

FILL FILL_0__3850_ (
);

FILL FILL_0__3430_ (
);

DFFPOSX1 _2908_ (
    .D(_568_),
    .CLK(clk_sys_bF$buf17),
    .Q(\u_rf_if.wen0_r )
);

FILL FILL_0__4635_ (
);

OAI21X1 _2661_ (
    .A(\u_rf_serial.last_req_key [10]),
    .B(_283_),
    .C(_202_),
    .Y(_284_)
);

NAND2X1 _2241_ (
    .A(_1312_),
    .B(_1378_),
    .Y(_1435_)
);

DFFPOSX1 _3866_ (
    .D(_753_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [8])
);

OAI22X1 _3446_ (
    .A(_308_),
    .B(_307_),
    .C(_306_),
    .D(_305_),
    .Y(_304_)
);

OAI21X1 _3026_ (
    .A(\u_rf_if.rreg0_latched [1]),
    .B(\u_rf_if.issue_sel_bF$buf0 ),
    .C(_1597_),
    .Y(_1596_)
);

FILL FILL_0__2701_ (
);

FILL FILL_0__3906_ (
);

OAI21X1 _2717_ (
    .A(_229_),
    .B(_215__bF$buf1),
    .C(_202_),
    .Y(_230_)
);

FILL FILL_1__3400_ (
);

DFFPOSX1 _2890_ (
    .D(_579_),
    .CLK(clk_sys_bF$buf6),
    .Q(\u_rf_if.stream_active )
);

NOR2X1 _2470_ (
    .A(_798_),
    .B(_799_),
    .Y(_1048_)
);

FILL FILL_1__4605_ (
);

FILL FILL145050x118950 (
);

AND2X2 _3675_ (
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .Y(_140_)
);

NAND3X1 _3255_ (
    .A(_2154__bF$buf0),
    .B(_2152__bF$buf3),
    .C(_1813_),
    .Y(_1760_)
);

FILL FILL_0__2510_ (
);

FILL FILL_0__3715_ (
);

DFFPOSX1 _2946_ (
    .D(_500_),
    .CLK(clk_sys_bF$buf6),
    .Q(\u_rf_if.write_wait [3])
);

OAI21X1 _2526_ (
    .A(_990_),
    .B(_987_),
    .C(_805_),
    .Y(_991_)
);

FILL FILL_0__4673_ (
);

FILL FILL_1__2268_ (
);

NAND2X1 _3484_ (
    .A(\u_rf_if.read_buf0 [1]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_342_)
);

NOR2X1 _3064_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1623_),
    .Y(_1622_)
);

NAND3X1 _4689_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [18]),
    .C(_1984__bF$buf4),
    .Y(_1990_)
);

NAND3X1 _4269_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1240_)
);

FILL FILL_0__3944_ (
);

FILL FILL_0__3104_ (
);

FILL FILL_0__4309_ (
);

INVX2 _2755_ (
    .A(rst_bF$buf4),
    .Y(_202_)
);

NAND3X1 _2335_ (
    .A(_1315__bF$buf2),
    .B(_1363_),
    .C(_1303__bF$buf0),
    .Y(_1364_)
);

FILL FILL_1__4643_ (
);

AOI21X1 _3293_ (
    .A(_1789_),
    .B(_1790_),
    .C(rst_bF$buf9),
    .Y(_591_)
);

DFFPOSX1 _4498_ (
    .D(_1483_),
    .CLK(clk_sys_bF$buf19),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

OAI21X1 _4078_ (
    .A(_892__bF$buf4),
    .B(_931_),
    .C(_941_),
    .Y(_879_)
);

FILL FILL_0__3753_ (
);

NOR2X1 _2984_ (
    .A(_736_),
    .B(_735_),
    .Y(_501_)
);

NAND2X1 _2564_ (
    .A(_799_),
    .B(_796_),
    .Y(_852_)
);

DFFPOSX1 _3769_ (
    .D(_780_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [24])
);

NOR3X1 _3349_ (
    .A(_4_),
    .B(_9_),
    .C(_2069_),
    .Y(_2068_)
);

NAND3X1 _4710_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [15]),
    .C(_1984__bF$buf4),
    .Y(_2005_)
);

FILL FILL_0__3142_ (
);

FILL FILL_1__3723_ (
);

BUFX2 BUFX2_insert86 (
    .A(ren),
    .Y(ren_bF$buf4)
);

BUFX2 BUFX2_insert87 (
    .A(ren),
    .Y(ren_bF$buf3)
);

BUFX2 BUFX2_insert88 (
    .A(ren),
    .Y(ren_bF$buf2)
);

BUFX2 BUFX2_insert89 (
    .A(ren),
    .Y(ren_bF$buf1)
);

NAND2X1 _2793_ (
    .A(_105_),
    .B(_104_),
    .Y(_106_)
);

OAI21X1 _2373_ (
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [10]),
    .Y(_1333_)
);

DFFPOSX1 _3998_ (
    .D(_649_),
    .CLK(clk_sys_bF$buf27),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3])
);

INVX1 _3578_ (
    .A(\u_rf_if.wdata1_phase [0]),
    .Y(_472_)
);

AND2X2 _3158_ (
    .A(_1688_),
    .B(_32__bF$buf4),
    .Y(_557_)
);

FILL FILL_0__2413_ (
);

FILL FILL_1__4681_ (
);

FILL FILL_0__3791_ (
);

DFFPOSX1 _2849_ (
    .D(_511_),
    .CLK(clk_sys_bF$buf41),
    .Q(raddr[2])
);

NAND2X1 _2429_ (
    .A(_805_),
    .B(_1088_),
    .Y(_1089_)
);

BUFX2 _2182_ (
    .A(gnd),
    .Y(o_gpio_oe[3])
);

FILL FILL_1__4317_ (
);

OAI21X1 _3387_ (
    .A(_4_),
    .B(_14_),
    .C(_3_),
    .Y(_1_)
);

FILL FILL_0__3427_ (
);

FILL FILL_0__3007_ (
);

FILL FILL_0__3180_ (
);

AOI21X1 _2658_ (
    .A(_260_),
    .B(_215__bF$buf3),
    .C(_285_),
    .Y(_66_)
);

OAI21X1 _2238_ (
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [23]),
    .Y(_1437_)
);

FILL FILL_1_BUFX2_insert122 (
);

FILL FILL_1_BUFX2_insert126 (
);

DFFSR _4804_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1858_),
    .CLK(clk_sys_bF$buf30),
    .Q(rf_read_reg1[1])
);

OAI21X1 _3196_ (
    .A(rf_read_reg1_to_if[1]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_1718_)
);

FILL FILL_0__2451_ (
);

FILL FILL_1__3817_ (
);

DFFPOSX1 _2887_ (
    .D(_529_),
    .CLK(clk_sys_bF$buf21),
    .Q(\u_rf_if.read_buf0 [7])
);

NAND3X1 _2467_ (
    .A(_966_),
    .B(_1050_),
    .C(_1049_),
    .Y(_1051_)
);

NAND2X1 _4613_ (
    .A(\u_mem_serial.shift_rx [24]),
    .B(_1877__bF$buf2),
    .Y(_1941_)
);

FILL FILL_0__2680_ (
);

FILL FILL_0__3885_ (
);

FILL FILL_0__3465_ (
);

FILL FILL_0__3045_ (
);

FILL FILL_1__3206_ (
);

NAND3X1 _2696_ (
    .A(_236_),
    .B(_242_),
    .C(_249_),
    .Y(_250_)
);

AOI22X1 _2276_ (
    .A(_1007_),
    .B(_1297__bF$buf1),
    .C(_1316__bF$buf2),
    .D(\u_mem_serial.bit_count [4]),
    .Y(_1412_)
);

FILL FILL144750x108150 (
);

FILL FILL_0__2316_ (
);

DFFSR _4842_ (
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1875_),
    .CLK(clk_sys_bF$buf27),
    .Q(rf_write_drain_busy)
);

INVX1 _4422_ (
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_1543_)
);

DFFPOSX1 _4002_ (
    .D(_645_),
    .CLK(clk_sys_bF$buf15),
    .Q(rreg1[3])
);

FILL FILL_0__3694_ (
);

FILL FILL144750x3750 (
);

FILL FILL_1__2230_ (
);

FILL FILL_0__4479_ (
);

FILL FILL_0__4059_ (
);

FILL FILL_0__2965_ (
);

OAI21X1 _4651_ (
    .A(_1964_),
    .B(rf_rreq_bF$buf2),
    .C(_1965_),
    .Y(rf_read_reg1_to_if[4])
);

AND2X2 _4231_ (
    .A(\u_cpu.bufreg.i_shift_op ),
    .B(\u_cpu.bufreg2.i_cnt7 ),
    .Y(_1207_)
);

FILL FILL_0_BUFX2_insert160 (
);

FILL FILL_0_BUFX2_insert162 (
);

FILL FILL_0_BUFX2_insert164 (
);

FILL FILL_0_BUFX2_insert166 (
);

FILL FILL_0_BUFX2_insert168 (
);

FILL FILL_1__2706_ (
);

FILL FILL_0__3083_ (
);

OAI21X1 _3922_ (
    .A(_665__bF$buf0),
    .B(_693_),
    .C(_694_),
    .Y(_633_)
);

AOI21X1 _3502_ (
    .A(_448_),
    .B(_382_),
    .C(_364_),
    .Y(_361_)
);

FILL FILL_0__4288_ (
);

AOI21X1 _4707_ (
    .A(_1897_),
    .B(_1982_),
    .C(_2003_),
    .Y(_1838_)
);

FILL FILL_1__3244_ (
);

NAND3X1 _3099_ (
    .A(_2152__bF$buf1),
    .B(_1715__bF$buf3),
    .C(_2088_),
    .Y(_1646_)
);

FILL FILL_0__2354_ (
);

NAND2X1 _4460_ (
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .B(_1530__bF$buf1),
    .Y(_1565_)
);

INVX1 _4040_ (
    .A(\u_cpu.bufreg.data [2]),
    .Y(_914_)
);

FILL FILL_1__2515_ (
);

OAI21X1 _3731_ (
    .A(_163_),
    .B(_176_),
    .C(_161_),
    .Y(_177_)
);

NAND3X1 _3311_ (
    .A(_2092_),
    .B(_2095_),
    .C(_10__bF$buf3),
    .Y(_1803_)
);

FILL FILL_0__4097_ (
);

DFFPOSX1 _4516_ (
    .D(_1475_),
    .CLK(clk_sys_bF$buf6),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

FILL FILL_0__2163_ (
);

FILL FILL_0__3368_ (
);

FILL FILL_1__2744_ (
);

FILL FILL_1__3529_ (
);

MUX2X1 _2599_ (
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(\u_cpu.bufreg.data [5]),
    .S(\u_mem_serial.active_ibus_bF$buf6 ),
    .Y(_817_)
);

BUFX2 _2179_ (
    .A(gnd),
    .Y(o_gpio_oe[6])
);

MUX2X1 _3960_ (
    .A(\u_cpu.decode.i_wb_rdt [22]),
    .B(rreg1[3]),
    .S(rf_rreq_bF$buf5),
    .Y(_720_)
);

OAI21X1 _3540_ (
    .A(\u_rf_if.read_buf1 [14]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_442_)
);

NAND3X1 _3120_ (
    .A(_10__bF$buf0),
    .B(_1715__bF$buf2),
    .C(_1798_),
    .Y(_1662_)
);

OAI21X1 _4745_ (
    .A(_2024_),
    .B(_1983__bF$buf4),
    .C(_2025_),
    .Y(_1854_)
);

FILL FILL_0__2219_ (
);

NOR2X1 _4325_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(_1278_),
    .Y(_1282_)
);

FILL FILL_1__3282_ (
);

FILL FILL_0__2392_ (
);

FILL FILL145050x61350 (
);

NAND2X1 _2811_ (
    .A(_87_),
    .B(_78_),
    .Y(_88_)
);

FILL FILL145050x28950 (
);

FILL FILL_1__2553_ (
);

INVX1 _4554_ (
    .A(rf_read_reg0[0]),
    .Y(_1901_)
);

DFFPOSX1 _4134_ (
    .D(_884_),
    .CLK(clk_sys_bF$buf0),
    .Q(\u_cpu.bufreg.data [18])
);

NOR2X1 _2620_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(\u_mem_serial.bit_count [3]),
    .Y(_796_)
);

OAI21X1 _2200_ (
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [15]),
    .Y(_1464_)
);

NOR2X1 _3825_ (
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(_403_),
    .Y(\u_cpu.decode.co_rd_alu_en )
);

AND2X2 _3405_ (
    .A(_21_),
    .B(_22_),
    .Y(_20_)
);

FILL FILL_1__2782_ (
);

FILL FILL_1__3567_ (
);

NAND3X1 _4783_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [29]),
    .C(_1984__bF$buf3),
    .Y(_2049_)
);

FILL FILL_0__2257_ (
);

DFFPOSX1 _4363_ (
    .D(_1119_),
    .CLK(clk_sys_bF$buf4),
    .Q(\u_cpu.bufreg2.dlo [16])
);

FILL FILL_0__4403_ (
);

FILL FILL_0_CLKBUF1_insert153 (
);

FILL FILL_0_CLKBUF1_insert155 (
);

FILL FILL_0_CLKBUF1_insert156 (
);

FILL FILL_0_CLKBUF1_insert158 (
);

OR2X2 _3634_ (
    .A(\u_cpu.alu.i_sub ),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2122_)
);

AOI21X1 _3214_ (
    .A(_1734_),
    .B(_484__bF$buf3),
    .C(_1733_),
    .Y(_568_)
);

FILL FILL_1__2591_ (
);

DFFSR _4839_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1827_),
    .CLK(clk_sys_bF$buf15),
    .Q(rf_read_reg1[4])
);

OAI22X1 _4419_ (
    .A(_1540_),
    .B(_1531_),
    .C(_1541_),
    .D(_1535_),
    .Y(_1474_)
);

BUFX2 BUFX2_insert140 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf1)
);

BUFX2 BUFX2_insert141 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf0)
);

BUFX2 BUFX2_insert142 (
    .A(_1717_),
    .Y(_1717__bF$buf4)
);

BUFX2 BUFX2_insert143 (
    .A(_1717_),
    .Y(_1717__bF$buf3)
);

BUFX2 BUFX2_insert144 (
    .A(_1717_),
    .Y(_1717__bF$buf2)
);

BUFX2 BUFX2_insert145 (
    .A(_1717_),
    .Y(_1717__bF$buf1)
);

BUFX2 BUFX2_insert146 (
    .A(_1717_),
    .Y(_1717__bF$buf0)
);

BUFX2 BUFX2_insert147 (
    .A(_1984_),
    .Y(_1984__bF$buf4)
);

BUFX2 BUFX2_insert148 (
    .A(_1984_),
    .Y(_1984__bF$buf3)
);

BUFX2 BUFX2_insert149 (
    .A(_1984_),
    .Y(_1984__bF$buf2)
);

NAND2X1 _4592_ (
    .A(\u_mem_serial.shift_rx [23]),
    .B(_1877__bF$buf0),
    .Y(_1927_)
);

AND2X2 _4172_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1157_)
);

DFFPOSX1 _2905_ (
    .D(_570_),
    .CLK(clk_sys_bF$buf40),
    .Q(\u_rf_if.read_buf1 [0])
);

FILL FILL_0__4632_ (
);

FILL FILL_0__4212_ (
);

DFFPOSX1 _3863_ (
    .D(_774_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.active_ibus )
);

NOR2X1 _3443_ (
    .A(\u_rf_if.read_buf0 [16]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_301_)
);

NAND2X1 _3023_ (
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_1610_),
    .Y(_1594_)
);

AOI21X1 _4648_ (
    .A(_1895__bF$buf1),
    .B(_1963_),
    .C(_1962_),
    .Y(\u_rf_if.i_rreq )
);

OAI21X1 _4228_ (
    .A(_1136_),
    .B(_1164__bF$buf0),
    .C(_1204_),
    .Y(_1205_)
);

FILL FILL_0__2295_ (
);

NOR2X1 _2714_ (
    .A(ren_bF$buf0),
    .B(\u_rf_if.o_wen ),
    .Y(_232_)
);

FILL FILL_0__4441_ (
);

FILL FILL_0__4021_ (
);

OAI21X1 _3919_ (
    .A(_665__bF$buf0),
    .B(_691_),
    .C(_692_),
    .Y(_632_)
);

NOR2X1 _3672_ (
    .A(\u_cpu.state.init_done ),
    .B(gnd),
    .Y(_138_)
);

OAI21X1 _3252_ (
    .A(_18__bF$buf3),
    .B(_1759_),
    .C(\u_rf_if.read_buf1 [7]),
    .Y(_1758_)
);

NAND2X1 _4457_ (
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .B(_1530__bF$buf1),
    .Y(_1563_)
);

OAI21X1 _4037_ (
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(_911_),
    .C(_912_),
    .Y(_867_)
);

FILL FILL_1_CLKBUF1_insert84 (
);

FILL FILL_1__4199_ (
);

DFFPOSX1 _2943_ (
    .D(_549_),
    .CLK(clk_sys_bF$buf12),
    .Q(\u_rf_if.read_buf0 [24])
);

OR2X2 _2523_ (
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(\u_cpu.bufreg.data [26]),
    .Y(_994_)
);

FILL FILL_0__4670_ (
);

FILL FILL_0__4250_ (
);

INVX1 _3728_ (
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_174_)
);

NAND3X1 _3308_ (
    .A(_2154__bF$buf3),
    .B(_10__bF$buf0),
    .C(_1801_),
    .Y(_1800_)
);

NAND2X1 _3481_ (
    .A(\u_rf_if.read_buf0 [3]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_339_)
);

NAND3X1 _3061_ (
    .A(_2152__bF$buf0),
    .B(_1715__bF$buf2),
    .C(_1801_),
    .Y(_1620_)
);

NAND3X1 _4686_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [19]),
    .C(_1984__bF$buf2),
    .Y(_1989_)
);

MUX2X1 _4266_ (
    .A(_1237_),
    .B(\u_mem_serial.shift_rx [25]),
    .S(_1154_),
    .Y(_1238_)
);

FILL FILL_0__4306_ (
);

NAND2X1 _2752_ (
    .A(_203_),
    .B(_204_),
    .Y(_205_)
);

NAND2X1 _2332_ (
    .A(\u_mem_serial.shift_rx [1]),
    .B(_1297__bF$buf3),
    .Y(_1366_)
);

MUX2X1 _3957_ (
    .A(\u_cpu.decode.i_wb_rdt [23]),
    .B(rreg1[4]),
    .S(rf_rreq_bF$buf2),
    .Y(_718_)
);

NOR2X1 _3537_ (
    .A(\u_rf_if.read_buf1 [8]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_439_)
);

NAND3X1 _3117_ (
    .A(_2062__bF$buf3),
    .B(_1715__bF$buf4),
    .C(_1792_),
    .Y(_1660_)
);

NOR2X1 _3290_ (
    .A(_1817_),
    .B(_2089_),
    .Y(_1786_)
);

DFFPOSX1 _4495_ (
    .D(_1493_),
    .CLK(clk_sys_bF$buf42),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

NOR2X1 _4075_ (
    .A(_939_),
    .B(_920_),
    .Y(_940_)
);

FILL FILL_0__3330_ (
);

INVX2 _2808_ (
    .A(ren_bF$buf2),
    .Y(_91_)
);

FILL FILL_0__4535_ (
);

NOR2X1 _2981_ (
    .A(_625_),
    .B(_735_),
    .Y(_500_)
);

NAND2X1 _2561_ (
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(_854_),
    .Y(_855_)
);

INVX1 _3766_ (
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_372_)
);

NAND2X1 _3346_ (
    .A(_13_),
    .B(_2096_),
    .Y(_2066_)
);

FILL FILL_0__2601_ (
);

FILL FILL_1__3088_ (
);

FILL FILL_0__3806_ (
);

FILL FILL_0__2198_ (
);

INVX2 _2617_ (
    .A(\u_mem_serial.bit_count [1]),
    .Y(_799_)
);

INVX1 _2790_ (
    .A(_83_),
    .Y(_109_)
);

NAND3X1 _2370_ (
    .A(_1315__bF$buf0),
    .B(_1335_),
    .C(_1303__bF$buf3),
    .Y(_1336_)
);

DFFPOSX1 _3995_ (
    .D(_652_),
    .CLK(clk_sys_bF$buf30),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0])
);

OAI21X1 _3575_ (
    .A(_472_),
    .B(_471_),
    .C(_470_),
    .Y(_469_)
);

AOI21X1 _3155_ (
    .A(_1686_),
    .B(_1687_),
    .C(rst_bF$buf0),
    .Y(_556_)
);

FILL FILL_0__3615_ (
);

DFFPOSX1 _2846_ (
    .D(_601_),
    .CLK(clk_sys_bF$buf10),
    .Q(\u_rf_if.read_buf1 [28])
);

INVX1 _2426_ (
    .A(\u_cpu.mem_if.o_wb_sel [0]),
    .Y(_1092_)
);

FILL FILL_0__4573_ (
);

FILL FILL_1__4734_ (
);

OAI21X1 _3384_ (
    .A(_18__bF$buf1),
    .B(_2162_),
    .C(\u_rf_if.read_buf1 [30]),
    .Y(_2155_)
);

NAND2X1 _4589_ (
    .A(ibus_pending_ack_bF$buf3),
    .B(ibus_pending_rdt[4]),
    .Y(_1925_)
);

INVX2 _4169_ (
    .A(mem_dbus_ack_bF$buf4),
    .Y(_1154_)
);

FILL FILL_0__3844_ (
);

FILL FILL_0__4209_ (
);

FILL FILL145050x104550 (
);

OAI21X1 _2655_ (
    .A(i_rf_miso),
    .B(_287_),
    .C(_202_),
    .Y(_288_)
);

OAI21X1 _2235_ (
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [22]),
    .Y(_1439_)
);

FILL FILL_0__4382_ (
);

DFFSR _4801_ (
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1861_),
    .CLK(clk_sys_bF$buf1),
    .Q(ibus_pending_rdt[31])
);

OAI21X1 _3193_ (
    .A(_1717__bF$buf0),
    .B(_2162_),
    .C(\u_rf_if.read_buf0 [30]),
    .Y(_1716_)
);

NAND2X1 _4398_ (
    .A(_1526_),
    .B(_1524_),
    .Y(_1527_)
);

FILL FILL_0__3653_ (
);

FILL FILL_0__3233_ (
);

DFFPOSX1 _2884_ (
    .D(_582_),
    .CLK(clk_sys_bF$buf22),
    .Q(\u_rf_if.read_buf1 [9])
);

NAND3X1 _2464_ (
    .A(_805_),
    .B(_1052_),
    .C(_1053_),
    .Y(_1054_)
);

AOI21X1 _3669_ (
    .A(_34_),
    .B(_33_),
    .C(_35_),
    .Y(\u_cpu.o_wen0 )
);

AOI21X1 _3249_ (
    .A(_1758_),
    .B(_1756_),
    .C(rst_bF$buf6),
    .Y(_580_)
);

FILL FILL_0__2504_ (
);

NAND2X1 _4610_ (
    .A(\u_mem_serial.shift_rx [25]),
    .B(_1877__bF$buf3),
    .Y(_1939_)
);

FILL FILL_0__3709_ (
);

FILL FILL_1__4772_ (
);

FILL FILL_0__4247_ (
);

NAND3X1 _2693_ (
    .A(\u_rf_serial.last_req_key [5]),
    .B(_252_),
    .C(_251_),
    .Y(_253_)
);

NOR2X1 _2273_ (
    .A(rst_bF$buf1),
    .B(_1413_),
    .Y(_770_)
);

INVX1 _3898_ (
    .A(\u_cpu.csr_imm_en ),
    .Y(_675_)
);

NOR2X1 _3478_ (
    .A(\u_rf_if.read_buf0 [4]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_336_)
);

NAND3X1 _3058_ (
    .A(_2152__bF$buf0),
    .B(_1715__bF$buf2),
    .C(_1798_),
    .Y(_1618_)
);

FILL FILL_0__2733_ (
);

FILL FILL_0__3938_ (
);

FILL FILL_0__3518_ (
);

FILL FILL144150x136950 (
);

FILL FILL_1__4161_ (
);

FILL FILL_0__3271_ (
);

FILL FILL144750x129750 (
);

OAI21X1 _2749_ (
    .A(_207_),
    .B(_205_),
    .C(_202_),
    .Y(_208_)
);

AOI21X1 _2329_ (
    .A(_1365_),
    .B(_1368_),
    .C(rst_bF$buf4),
    .Y(_759_)
);

FILL FILL_1__3852_ (
);

FILL FILL_1__3012_ (
);

OAI21X1 _3287_ (
    .A(_18__bF$buf4),
    .B(_1788_),
    .C(\u_rf_if.read_buf1 [16]),
    .Y(_1784_)
);

FILL FILL_0__2542_ (
);

FILL FILL_0_BUFX2_insert130 (
);

FILL FILL_0_BUFX2_insert132 (
);

FILL FILL_0_BUFX2_insert134 (
);

FILL FILL_0_BUFX2_insert136 (
);

FILL FILL_0_BUFX2_insert137 (
);

FILL FILL_0_BUFX2_insert139 (
);

FILL FILL_0__3747_ (
);

FILL FILL_1__4390_ (
);

AOI21X1 _2978_ (
    .A(_44_),
    .B(_623_),
    .C(_735_),
    .Y(_499_)
);

OR2X2 _2558_ (
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [11]),
    .Y(_858_)
);

FILL FILL_0__4285_ (
);

NAND3X1 _4704_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [17]),
    .C(_1984__bF$buf2),
    .Y(_2002_)
);

AOI21X1 _3096_ (
    .A(_1722_),
    .B(_2108_),
    .C(_1645_),
    .Y(_536_)
);

FILL FILL_0__2771_ (
);

FILL FILL_0__3976_ (
);

FILL FILL_0__3556_ (
);

FILL FILL_0__3136_ (
);

INVX1 _2787_ (
    .A(\u_rf_if.o_waddr [4]),
    .Y(_112_)
);

NAND2X1 _2367_ (
    .A(\u_mem_serial.shift_rx [8]),
    .B(_1297__bF$buf0),
    .Y(_1338_)
);

FILL FILL_0__2407_ (
);

DFFPOSX1 _4513_ (
    .D(_1489_),
    .CLK(clk_sys_bF$buf42),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

FILL FILL_1__3890_ (
);

FILL FILL_1__3050_ (
);

FILL FILL_0__2580_ (
);

NOR2X1 _2596_ (
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .B(_810_),
    .Y(_820_)
);

BUFX2 _2176_ (
    .A(gnd),
    .Y(o_gpio[1])
);

OAI21X1 _4742_ (
    .A(_1881_),
    .B(_1983__bF$buf1),
    .C(_2023_),
    .Y(_1853_)
);

AOI22X1 _4322_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [12]),
    .C(_1172__bF$buf2),
    .D(_1279_),
    .Y(_1280_)
);

FILL FILL_0__3174_ (
);

FILL FILL_1__3335_ (
);

FILL FILL145050x82950 (
);

FILL FILL_0__2445_ (
);

INVX1 _4551_ (
    .A(ibus_pending_rdt[15]),
    .Y(_1899_)
);

DFFPOSX1 _4131_ (
    .D(_887_),
    .CLK(clk_sys_bF$buf11),
    .Q(\u_cpu.bufreg.data [16])
);

NOR2X1 _3822_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.decode.co_rd_mem_en )
);

NAND2X1 _3402_ (
    .A(_22_),
    .B(_21_),
    .Y(_17_)
);

FILL FILL_0__4188_ (
);

NAND2X1 _4607_ (
    .A(\u_mem_serial.shift_rx [26]),
    .B(_1877__bF$buf1),
    .Y(_1937_)
);

FILL FILL_0__2674_ (
);

INVX1 _4780_ (
    .A(ibus_pending_rdt[30]),
    .Y(_2047_)
);

DFFPOSX1 _4360_ (
    .D(_1122_),
    .CLK(clk_sys_bF$buf43),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

FILL FILL_0__3879_ (
);

FILL FILL_0__3459_ (
);

FILL FILL_0__3039_ (
);

NAND2X1 _3631_ (
    .A(_2116_),
    .B(_2118_),
    .Y(_2119_)
);

NOR2X1 _3211_ (
    .A(rf_wreq),
    .B(rst_bF$buf5),
    .Y(_1731_)
);

DFFSR _4836_ (
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1830_),
    .CLK(clk_sys_bF$buf14),
    .Q(ibus_pending_rdt[21])
);

OAI22X1 _4416_ (
    .A(_1538_),
    .B(_1531_),
    .C(_1539_),
    .D(_1535_),
    .Y(_1473_)
);

FILL FILL_1__3373_ (
);

BUFX2 BUFX2_insert110 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf4)
);

BUFX2 BUFX2_insert111 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert112 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert113 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert114 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

FILL FILL_1__4578_ (
);

BUFX2 BUFX2_insert115 (
    .A(_446_),
    .Y(_446__bF$buf3)
);

BUFX2 BUFX2_insert116 (
    .A(_446_),
    .Y(_446__bF$buf2)
);

BUFX2 BUFX2_insert117 (
    .A(_446_),
    .Y(_446__bF$buf1)
);

BUFX2 BUFX2_insert118 (
    .A(_446_),
    .Y(_446__bF$buf0)
);

BUFX2 BUFX2_insert119 (
    .A(_484_),
    .Y(_484__bF$buf3)
);

FILL FILL_0__2483_ (
);

DFFPOSX1 _2902_ (
    .D(_505_),
    .CLK(clk_sys_bF$buf17),
    .Q(\u_rf_if.rreg0_latched [3])
);

FILL FILL_0__3688_ (
);

FILL FILL_1__3009_ (
);

OAI21X1 _2499_ (
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(_1017_),
    .C(_1018_),
    .Y(_1019_)
);

DFFPOSX1 _3860_ (
    .D(_367_),
    .CLK(clk_sys_bF$buf7),
    .Q(\u_cpu.decode.opcode [1])
);

OAI21X1 _3440_ (
    .A(\u_rf_if.read_buf0 [18]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_298_)
);

AOI21X1 _3020_ (
    .A(_1697_),
    .B(_1593_),
    .C(_1592_),
    .Y(_513_)
);

FILL FILL_0__2959_ (
);

INVX8 _4645_ (
    .A(i_rst_n_bF$buf4),
    .Y(rst)
);

INVX1 _4225_ (
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_1202_)
);

FILL FILL_0__3900_ (
);

FILL FILL_1_CLKBUF1_insert153 (
);

OR2X2 _2711_ (
    .A(_114_),
    .B(\u_rf_serial.last_req_key [4]),
    .Y(_235_)
);

FILL FILL_0__3497_ (
);

FILL FILL_0__3077_ (
);

OAI21X1 _3916_ (
    .A(_688_),
    .B(_689_),
    .C(_690_),
    .Y(_631_)
);

FILL FILL_0__2348_ (
);

NAND2X1 _4454_ (
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .B(_1530__bF$buf4),
    .Y(_1561_)
);

OAI21X1 _4034_ (
    .A(_892__bF$buf1),
    .B(_908_),
    .C(_910_),
    .Y(_866_)
);

FILL FILL_1_CLKBUF1_insert50 (
);

FILL FILL_1_CLKBUF1_insert54 (
);

FILL FILL_1_CLKBUF1_insert58 (
);

FILL FILL_0_BUFX2_insert10 (
);

FILL FILL_0_BUFX2_insert12 (
);

FILL FILL_0_BUFX2_insert14 (
);

FILL FILL_0_BUFX2_insert16 (
);

FILL FILL_0_BUFX2_insert18 (
);

DFFPOSX1 _2940_ (
    .D(_517_),
    .CLK(clk_sys_bF$buf26),
    .Q(\u_rf_if.issue_chunk [2])
);

INVX1 _2520_ (
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_997_)
);

OAI21X1 _3725_ (
    .A(_165_),
    .B(_168_),
    .C(_163_),
    .Y(\u_cpu.cnt12to31 )
);

NOR3X1 _3305_ (
    .A(_4_),
    .B(\u_rf_if.issue_chunk [2]),
    .C(_2069_),
    .Y(_1798_)
);

FILL FILL_1__3047_ (
);

FILL FILL_0__2997_ (
);

OAI21X1 _4683_ (
    .A(_1918_),
    .B(_1983__bF$buf0),
    .C(_1987_),
    .Y(_1830_)
);

AND2X2 _4263_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1235_)
);

FILL FILL145050x14550 (
);

FILL FILL_0__4723_ (
);

FILL FILL_1__2318_ (
);

MUX2X1 _3954_ (
    .A(\u_cpu.decode.i_wb_rdt [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(rf_rreq_bF$buf3),
    .Y(_716_)
);

OAI21X1 _3534_ (
    .A(\u_rf_if.read_buf1 [10]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_436_)
);

NAND3X1 _3114_ (
    .A(_2099_),
    .B(_1715__bF$buf4),
    .C(_1792_),
    .Y(_1658_)
);

NAND3X1 _4739_ (
    .A(\u_mem_serial.shift_rx [3]),
    .B(mem_ibus_ack_bF$buf0),
    .C(_1984__bF$buf1),
    .Y(_2022_)
);

OAI21X1 _4319_ (
    .A(_1275_),
    .B(_1164__bF$buf1),
    .C(_1277_),
    .Y(_1124_)
);

FILL FILL_0__2386_ (
);

DFFPOSX1 _4492_ (
    .D(_1470_),
    .CLK(clk_sys_bF$buf0),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

NAND3X1 _4072_ (
    .A(_936_),
    .B(_935_),
    .C(_934_),
    .Y(_937_)
);

NAND2X1 _2805_ (
    .A(_93_),
    .B(_92_),
    .Y(_94_)
);

FILL FILL_1__2967_ (
);

INVX2 _3763_ (
    .A(\u_cpu.decode.opcode [0]),
    .Y(\u_cpu.cond_branch )
);

OAI21X1 _3343_ (
    .A(_18__bF$buf1),
    .B(_2064_),
    .C(\u_rf_if.read_buf1 [27]),
    .Y(_2063_)
);

AOI21X1 _4548_ (
    .A(_1890_),
    .B(_1891_),
    .C(rf_write_drain_busy),
    .Y(_1897_)
);

DFFPOSX1 _4128_ (
    .D(_889_),
    .CLK(clk_sys_bF$buf38),
    .Q(\u_cpu.bufreg.data [14])
);

FILL FILL_1__3085_ (
);

NAND2X1 _2614_ (
    .A(\u_mem_serial.bit_count [3]),
    .B(_801_),
    .Y(_802_)
);

FILL FILL_0__4761_ (
);

OAI21X1 _3819_ (
    .A(\u_cpu.decode.opcode [1]),
    .B(\u_cpu.cond_branch ),
    .C(\u_cpu.branch_op ),
    .Y(\u_cpu.bufreg.i_rs1_en )
);

FILL FILL_1__2356_ (
);

BUFX2 BUFX2_insert20 (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf3 )
);

BUFX2 BUFX2_insert21 (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf2 )
);

BUFX2 BUFX2_insert22 (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf1 )
);

BUFX2 BUFX2_insert23 (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf0 )
);

BUFX2 BUFX2_insert24 (
    .A(_1715_),
    .Y(_1715__bF$buf4)
);

BUFX2 BUFX2_insert25 (
    .A(_1715_),
    .Y(_1715__bF$buf3)
);

BUFX2 BUFX2_insert26 (
    .A(_1715_),
    .Y(_1715__bF$buf2)
);

BUFX2 BUFX2_insert27 (
    .A(_1715_),
    .Y(_1715__bF$buf1)
);

BUFX2 BUFX2_insert28 (
    .A(_1715_),
    .Y(_1715__bF$buf0)
);

BUFX2 BUFX2_insert29 (
    .A(_2062_),
    .Y(_2062__bF$buf3)
);

DFFPOSX1 _3992_ (
    .D(_628_),
    .CLK(clk_sys_bF$buf31),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

INVX1 _3572_ (
    .A(gnd),
    .Y(_467_)
);

AOI21X1 _3152_ (
    .A(_1685_),
    .B(_1684_),
    .C(rst_bF$buf2),
    .Y(_555_)
);

NAND3X1 _4777_ (
    .A(rf_read_reg0[0]),
    .B(_1962_),
    .C(_1895__bF$buf1),
    .Y(_2045_)
);

DFFPOSX1 _4357_ (
    .D(_1125_),
    .CLK(clk_sys_bF$buf4),
    .Q(\u_cpu.bufreg2.dlo [12])
);

FILL FILL_1__4099_ (
);

DFFPOSX1 _2843_ (
    .D(_540_),
    .CLK(clk_sys_bF$buf2),
    .Q(\u_rf_if.read_buf0 [16])
);

INVX1 _2423_ (
    .A(\u_cpu.mem_if.o_wb_sel [2]),
    .Y(_1095_)
);

FILL FILL_0__4150_ (
);

NAND2X1 _3628_ (
    .A(\u_cpu.alu.i_sub ),
    .B(_2115_),
    .Y(_2116_)
);

INVX1 _3208_ (
    .A(_1729_),
    .Y(_1728_)
);

FILL FILL_1__2165_ (
);

AND2X2 _3381_ (
    .A(_2153_),
    .B(_11_),
    .Y(_2152_)
);

NAND2X1 _4586_ (
    .A(\u_mem_serial.shift_rx [17]),
    .B(_1877__bF$buf5),
    .Y(_1923_)
);

NAND2X1 _4166_ (
    .A(rdata1[0]),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_1152_)
);

FILL FILL_0__3421_ (
);

FILL FILL_0__3001_ (
);

FILL FILL_0__4626_ (
);

OAI21X1 _2652_ (
    .A(_85_),
    .B(_289_),
    .C(_2161_),
    .Y(_290_)
);

NAND2X1 _2232_ (
    .A(\u_mem_serial.state [1]),
    .B(_1296_),
    .Y(_1441_)
);

OAI21X1 _3857_ (
    .A(rf_rreq_bF$buf1),
    .B(_384_),
    .C(_417_),
    .Y(_369_)
);

NOR2X1 _3437_ (
    .A(\u_rf_if.read_buf0 [20]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_295_)
);

AOI21X1 _3017_ (
    .A(_1591_),
    .B(_1696_),
    .C(_1590_),
    .Y(_512_)
);

FILL FILL_1__2394_ (
);

FILL FILL_1_BUFX2_insert88 (
);

FILL FILL_0_CLKBUF1_insert60 (
);

FILL FILL_0_CLKBUF1_insert61 (
);

FILL FILL_0_CLKBUF1_insert63 (
);

FILL FILL_0_CLKBUF1_insert65 (
);

FILL FILL_0_CLKBUF1_insert67 (
);

FILL FILL_0_CLKBUF1_insert69 (
);

AOI21X1 _3190_ (
    .A(_1714_),
    .B(_1716_),
    .C(rst_bF$buf2),
    .Y(_563_)
);

FILL FILL_0__2289_ (
);

OAI21X1 _4395_ (
    .A(_1520_),
    .B(_1517_),
    .C(_1523_),
    .Y(_1524_)
);

INVX1 _2708_ (
    .A(\u_rf_if.o_wen ),
    .Y(_238_)
);

FILL FILL_0__4435_ (
);

FILL FILL_0__4015_ (
);

DFFPOSX1 _2881_ (
    .D(_507_),
    .CLK(clk_sys_bF$buf26),
    .Q(\u_rf_if.issue_chunk [0])
);

AOI22X1 _2461_ (
    .A(_840_),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .C(\u_cpu.bufreg.i_shamt [2]),
    .D(_1048_),
    .Y(_1057_)
);

NOR2X1 _3666_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_33_)
);

OAI21X1 _3246_ (
    .A(_449_),
    .B(_1754_),
    .C(\u_rf_if.stream_active ),
    .Y(_1753_)
);

DFFPOSX1 _2937_ (
    .D(_552_),
    .CLK(clk_sys_bF$buf13),
    .Q(\u_rf_if.read_buf0 [26])
);

AOI21X1 _2517_ (
    .A(_995_),
    .B(_1000_),
    .C(_808_),
    .Y(_1001_)
);

FILL FILL_0__4664_ (
);

NAND3X1 _2690_ (
    .A(_219_),
    .B(_110_),
    .C(_255_),
    .Y(_256_)
);

AOI21X1 _2270_ (
    .A(_1316__bF$buf2),
    .B(_800_),
    .C(_1415_),
    .Y(_771_)
);

FILL FILL_1__4405_ (
);

INVX1 _3895_ (
    .A(\u_cpu.decode.co_immdec_ctrl [2]),
    .Y(_672_)
);

OAI21X1 _3475_ (
    .A(\u_rf_if.read_buf0 [6]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_333_)
);

NAND3X1 _3055_ (
    .A(_2062__bF$buf1),
    .B(_1715__bF$buf1),
    .C(_1742_),
    .Y(_1616_)
);

FILL FILL_0__2310_ (
);

NOR2X1 _2746_ (
    .A(\u_rf_serial.tx_state [4]),
    .B(_81_),
    .Y(_210_)
);

INVX1 _2326_ (
    .A(_1370_),
    .Y(_1371_)
);

FILL FILL_0__4473_ (
);

FILL FILL_0__4053_ (
);

FILL FILL_1__4214_ (
);

AOI21X1 _3284_ (
    .A(_1782_),
    .B(_1784_),
    .C(rst_bF$buf9),
    .Y(_589_)
);

FILL FILL_0_BUFX2_insert101 (
);

FILL FILL_0_BUFX2_insert103 (
);

FILL FILL_0_BUFX2_insert105 (
);

FILL FILL_0_BUFX2_insert107 (
);

FILL FILL_0_BUFX2_insert109 (
);

DFFPOSX1 _4489_ (
    .D(_1494_),
    .CLK(clk_sys_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

NAND3X1 _4069_ (
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(\u_cpu.bufreg.i_imm ),
    .C(_933_),
    .Y(_934_)
);

FILL FILL_0__3744_ (
);

FILL FILL_0__3324_ (
);

FILL FILL_0__4529_ (
);

NOR2X1 _2975_ (
    .A(_621_),
    .B(_735_),
    .Y(_498_)
);

NAND3X1 _2555_ (
    .A(_798_),
    .B(_858_),
    .C(_961_),
    .Y(_962_)
);

NOR2X1 _4701_ (
    .A(_1998_),
    .B(_1999_),
    .Y(_2000_)
);

FILL FILL_1__4443_ (
);

FILL FILL_1__4023_ (
);

AOI21X1 _3093_ (
    .A(_1643_),
    .B(_1644_),
    .C(rst_bF$buf2),
    .Y(_535_)
);

OAI21X1 _4298_ (
    .A(_1260_),
    .B(_1164__bF$buf3),
    .C(_1262_),
    .Y(_1118_)
);

FILL FILL_0__4338_ (
);

NAND2X1 _2784_ (
    .A(_98_),
    .B(_114_),
    .Y(_115_)
);

AOI21X1 _2364_ (
    .A(_1337_),
    .B(_1340_),
    .C(rst_bF$buf4),
    .Y(_752_)
);

FILL FILL_0__4091_ (
);

DFFPOSX1 _3989_ (
    .D(_631_),
    .CLK(clk_sys_bF$buf15),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

INVX1 _3569_ (
    .A(gnd),
    .Y(_465_)
);

OAI21X1 _3149_ (
    .A(_1717__bF$buf0),
    .B(_2162_),
    .C(\u_rf_if.read_buf0 [31]),
    .Y(_1682_)
);

FILL FILL_0__2824_ (
);

DFFPOSX1 _4510_ (
    .D(_1500_),
    .CLK(clk_sys_bF$buf31),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

FILL FILL_0__3609_ (
);

FILL FILL_1__4252_ (
);

FILL FILL_0__3362_ (
);

FILL FILL144450x136950 (
);

FILL FILL_0__4567_ (
);

OAI21X1 _2593_ (
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .B(_810_),
    .C(_798_),
    .Y(_823_)
);

BUFX2 _2173_ (
    .A(gnd),
    .Y(o_gpio[4])
);

INVX1 _3798_ (
    .A(_390_),
    .Y(_392_)
);

INVX1 _3378_ (
    .A(_2153_),
    .Y(_2149_)
);

FILL FILL_0__2213_ (
);

FILL FILL_1__4481_ (
);

FILL FILL_1__4061_ (
);

OAI21X1 _2649_ (
    .A(_197_),
    .B(_215__bF$buf1),
    .C(_202_),
    .Y(_292_)
);

NAND2X1 _2229_ (
    .A(_810_),
    .B(_1297__bF$buf1),
    .Y(_1444_)
);

FILL FILL_0__4376_ (
);

FILL FILL_1__3332_ (
);

FILL FILL_1__4537_ (
);

AOI21X1 _3187_ (
    .A(_1712_),
    .B(_1713_),
    .C(rst_bF$buf0),
    .Y(_562_)
);

FILL FILL_0__3647_ (
);

FILL FILL_0__3227_ (
);

FILL FILL_1__4290_ (
);

FILL FILL_1__2603_ (
);

DFFPOSX1 _2878_ (
    .D(_585_),
    .CLK(clk_sys_bF$buf2),
    .Q(\u_rf_if.read_buf1 [12])
);

AOI22X1 _2458_ (
    .A(_845_),
    .B(\u_cpu.bufreg2.dhi [5]),
    .C(\u_cpu.bufreg2.dhi [6]),
    .D(_1048_),
    .Y(_1060_)
);

NAND2X1 _4604_ (
    .A(\u_mem_serial.shift_rx [27]),
    .B(_1877__bF$buf1),
    .Y(_1935_)
);

FILL FILL_0__2251_ (
);

FILL FILL_1__3617_ (
);

NAND3X1 _2687_ (
    .A(\u_rf_serial.last_req_key [1]),
    .B(_164_),
    .C(_258_),
    .Y(_259_)
);

OAI21X1 _2267_ (
    .A(\u_mem_serial.bit_count_0_bF$buf1 ),
    .B(_1297__bF$buf1),
    .C(_1310_),
    .Y(_1417_)
);

FILL FILL_0__2727_ (
);

DFFSR _4833_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1833_),
    .CLK(clk_sys_bF$buf16),
    .Q(has_fetched_first_insn)
);

OAI21X1 _4413_ (
    .A(_1536_),
    .B(_1535_),
    .C(_1537_),
    .Y(_1472_)
);

FILL FILL_1__3370_ (
);

FILL FILL_1__4575_ (
);

FILL FILL_0__3265_ (
);

AOI21X1 _2496_ (
    .A(_809_),
    .B(_1012_),
    .C(_1021_),
    .Y(_1022_)
);

FILL FILL_0__2536_ (
);

INVX1 _4642_ (
    .A(rf_read_reg1[3]),
    .Y(_1960_)
);

MUX2X1 _4222_ (
    .A(\u_mem_serial.shift_rx [0]),
    .B(\u_cpu.bufreg2.dlo [1]),
    .S(mem_dbus_ack_bF$buf3),
    .Y(_1200_)
);

FILL FILL144450x97350 (
);

OAI21X1 _3913_ (
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.co_immdec_en [0]),
    .C(_669_),
    .Y(_688_)
);

FILL FILL_0__4279_ (
);

FILL FILL_1__3655_ (
);

FILL FILL_0__2765_ (
);

NAND2X1 _4451_ (
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_1530__bF$buf4),
    .Y(_1559_)
);

NAND2X1 _4031_ (
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [7]),
    .Y(_909_)
);

NAND2X1 _3722_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_173_)
);

NAND3X1 _3302_ (
    .A(_13_),
    .B(_2096_),
    .C(_2092_),
    .Y(_1796_)
);

DFFPOSX1 _4507_ (
    .D(_1479_),
    .CLK(clk_sys_bF$buf6),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

FILL FILL_0__2574_ (
);

NAND3X1 _4680_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [22]),
    .C(_1984__bF$buf4),
    .Y(_1986_)
);

OAI21X1 _4260_ (
    .A(_1154_),
    .B(\u_mem_serial.shift_rx [26]),
    .C(_1232_),
    .Y(_1233_)
);

FILL FILL_0__4300_ (
);

MUX2X1 _3951_ (
    .A(\u_cpu.decode.i_wb_rdt [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(rf_rreq_bF$buf3),
    .Y(_714_)
);

INVX1 _3531_ (
    .A(\u_rf_if.read_buf1 [1]),
    .Y(_433_)
);

NAND3X1 _3111_ (
    .A(_5_),
    .B(_1715__bF$buf4),
    .C(_1786_),
    .Y(_1655_)
);

NAND3X1 _4736_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [4]),
    .C(_1984__bF$buf3),
    .Y(_2020_)
);

INVX1 _4316_ (
    .A(\u_cpu.bufreg2.dlo [13]),
    .Y(_1275_)
);

INVX1 _2802_ (
    .A(_90_),
    .Y(_97_)
);

FILL FILL_0__3588_ (
);

FILL FILL_0__3168_ (
);

FILL FILL_1__3749_ (
);

OAI21X1 _2399_ (
    .A(\u_cpu.o_dbus_cyc ),
    .B(\u_cpu.o_ibus_cyc ),
    .C(_1310_),
    .Y(_1311_)
);

DFFPOSX1 _3760_ (
    .D(_129_),
    .CLK(clk_sys_bF$buf34),
    .Q(\u_cpu.state.cnt_r [1])
);

NOR2X1 _3340_ (
    .A(_2061_),
    .B(_2152__bF$buf3),
    .Y(_2060_)
);

FILL FILL_0__2439_ (
);

NAND3X1 _4545_ (
    .A(_1886_),
    .B(_1894_),
    .C(_1892_),
    .Y(_1895_)
);

DFFPOSX1 _4125_ (
    .D(_878_),
    .CLK(clk_sys_bF$buf7),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

NAND2X1 _2611_ (
    .A(_804_),
    .B(_801_),
    .Y(_805_)
);

NOR2X1 _3816_ (
    .A(\u_cpu.cond_branch ),
    .B(_386_),
    .Y(\u_cpu.ctrl.i_jal_or_jalr )
);

FILL FILL_1__3978_ (
);

FILL FILL_1__3138_ (
);

FILL FILL_0__2668_ (
);

NAND3X1 _4774_ (
    .A(rf_read_reg0[1]),
    .B(_1962_),
    .C(_1895__bF$buf0),
    .Y(_2043_)
);

DFFPOSX1 _4354_ (
    .D(_1128_),
    .CLK(clk_sys_bF$buf25),
    .Q(\u_cpu.bufreg2.dlo [9])
);

FILL FILL_1__2409_ (
);

DFFPOSX1 _2840_ (
    .D(_604_),
    .CLK(clk_sys_bF$buf24),
    .Q(\u_rf_if.stream_cnt [0])
);

AOI21X1 _2420_ (
    .A(_1093_),
    .B(_1096_),
    .C(_1097_),
    .Y(_1292_)
);

NOR2X1 _3625_ (
    .A(\u_cpu.alu.add_cy_r ),
    .B(rdata0[0]),
    .Y(_2113_)
);

NOR2X1 _3205_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(_1726_),
    .Y(_1725_)
);

FILL FILL_0__2477_ (
);

NAND3X1 _4583_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [21]),
    .C(_1897_),
    .Y(_1921_)
);

MUX2X1 _4163_ (
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(\u_cpu.bufreg2.dlo [0]),
    .S(\u_cpu.bufreg.data [0]),
    .Y(_1150_)
);

FILL FILL_0__4203_ (
);

NAND2X1 _3854_ (
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.i_wb_rdt [6]),
    .Y(_416_)
);

OAI21X1 _3434_ (
    .A(\u_rf_if.read_buf0 [22]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_49_)
);

AOI21X1 _3014_ (
    .A(_1589_),
    .B(_1696_),
    .C(_1588_),
    .Y(_511_)
);

INVX1 _4639_ (
    .A(rf_read_reg0[3]),
    .Y(_1958_)
);

OAI21X1 _4219_ (
    .A(_1196_),
    .B(_1195_),
    .C(_1171_),
    .Y(_1197_)
);

FILL FILL_1__3176_ (
);

INVX1 _4392_ (
    .A(\u_cpu.cnt2 ),
    .Y(_1521_)
);

NAND3X1 _2705_ (
    .A(\u_rf_serial.req_seen ),
    .B(_240_),
    .C(_239_),
    .Y(_241_)
);

FILL FILL_0__4432_ (
);

FILL FILL_1__2447_ (
);

NAND2X1 _3663_ (
    .A(\u_cpu.alu.cmp_r ),
    .B(_2146_),
    .Y(_2148_)
);

OAI21X1 _3243_ (
    .A(_18__bF$buf3),
    .B(_1759_),
    .C(\u_rf_if.read_buf1 [6]),
    .Y(_1751_)
);

NAND2X1 _4448_ (
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_1530__bF$buf2),
    .Y(_1557_)
);

NAND2X1 _4028_ (
    .A(\u_cpu.bufreg.data [7]),
    .B(_892__bF$buf2),
    .Y(_907_)
);

FILL FILL_0__3703_ (
);

DFFPOSX1 _2934_ (
    .D(_554_),
    .CLK(clk_sys_bF$buf40),
    .Q(\u_rf_if.ready_pulse )
);

OAI22X1 _2514_ (
    .A(_806_),
    .B(_1003_),
    .C(_807_),
    .D(_1002_),
    .Y(_1004_)
);

FILL FILL_0__4241_ (
);

INVX1 _3719_ (
    .A(_171_),
    .Y(\u_cpu.cnt2 )
);

FILL FILL_1__2676_ (
);

AND2X2 _3892_ (
    .A(rf_rreq_bF$buf1),
    .B(\u_cpu.decode.i_wb_rdt [7]),
    .Y(_670_)
);

AOI21X1 _3472_ (
    .A(_448_),
    .B(_337_),
    .C(_331_),
    .Y(_330_)
);

NAND3X1 _3052_ (
    .A(_1742_),
    .B(_1715__bF$buf1),
    .C(_2099_),
    .Y(_1614_)
);

NAND2X1 _4677_ (
    .A(_1877__bF$buf4),
    .B(_1897_),
    .Y(_1984_)
);

OAI21X1 _4257_ (
    .A(_1229_),
    .B(_1228_),
    .C(_1136_),
    .Y(_1230_)
);

FILL FILL_0__3932_ (
);

FILL FILL_0__3512_ (
);

FILL FILL_0__4717_ (
);

AOI21X1 _2743_ (
    .A(_209_),
    .B(_211_),
    .C(_212_),
    .Y(_54_)
);

OAI21X1 _2323_ (
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [0]),
    .Y(_1373_)
);

FILL FILL_0__4470_ (
);

MUX2X1 _3948_ (
    .A(\u_cpu.decode.i_wb_rdt [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(rf_rreq_bF$buf3),
    .Y(_712_)
);

NOR2X1 _3528_ (
    .A(\u_rf_if.read_buf1 [3]),
    .B(_446__bF$buf1),
    .Y(_430_)
);

NAND3X1 _3108_ (
    .A(_5_),
    .B(_1715__bF$buf4),
    .C(_1783_),
    .Y(_1652_)
);

FILL FILL_1__2485_ (
);

NOR2X1 _3281_ (
    .A(_10__bF$buf3),
    .B(_2151_),
    .Y(_1779_)
);

OAI21X1 _4486_ (
    .A(_1582_),
    .B(_1581_),
    .C(_1579_),
    .Y(_1500_)
);

NAND2X1 _4066_ (
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [25]),
    .Y(_932_)
);

FILL FILL_0__4106_ (
);

FILL FILL_1__3902_ (
);

NOR2X1 _2972_ (
    .A(_480_),
    .B(_620_),
    .Y(_619_)
);

OAI21X1 _2552_ (
    .A(\u_mem_serial.bit_count_0_bF$buf0 ),
    .B(\u_mem_serial.bit_count [1]),
    .C(_800_),
    .Y(_965_)
);

DFFPOSX1 _3757_ (
    .D(_131_),
    .CLK(clk_sys_bF$buf34),
    .Q(\u_cpu.state.init_done )
);

OAI21X1 _3337_ (
    .A(_18__bF$buf1),
    .B(_2064_),
    .C(\u_rf_if.read_buf1 [26]),
    .Y(_2058_)
);

FILL FILL_1__3499_ (
);

AOI21X1 _3090_ (
    .A(_1642_),
    .B(_1641_),
    .C(rst_bF$buf8),
    .Y(_534_)
);

INVX1 _4295_ (
    .A(\u_cpu.bufreg2.dlo [17]),
    .Y(_1260_)
);

FILL FILL_0__3970_ (
);

FILL FILL_0__3550_ (
);

FILL FILL_0__3130_ (
);

NAND2X1 _2608_ (
    .A(_806_),
    .B(_807_),
    .Y(_808_)
);

FILL FILL_0__4755_ (
);

NAND2X1 _2781_ (
    .A(ren_bF$buf1),
    .B(raddr[3]),
    .Y(_118_)
);

INVX1 _2361_ (
    .A(_1342_),
    .Y(_1343_)
);

DFFPOSX1 _3986_ (
    .D(_634_),
    .CLK(clk_sys_bF$buf30),
    .Q(rreg0[1])
);

INVX1 _3566_ (
    .A(gnd),
    .Y(_463_)
);

OAI21X1 _3146_ (
    .A(_1717__bF$buf0),
    .B(_2064_),
    .C(\u_rf_if.read_buf0 [26]),
    .Y(_1680_)
);

FILL FILL_0__2401_ (
);

FILL FILL_0__3606_ (
);

DFFPOSX1 _2837_ (
    .D(_491_),
    .CLK(clk_sys_bF$buf41),
    .Q(\u_rf_if.wdata1_r [0])
);

OR2X2 _2417_ (
    .A(_1294_),
    .B(_1046_),
    .Y(_1295_)
);

FILL FILL_0__4144_ (
);

FILL FILL_1__3940_ (
);

FILL FILL_1__3100_ (
);

MUX2X1 _2590_ (
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .B(gnd),
    .S(\u_mem_serial.active_ibus_bF$buf6 ),
    .Y(_826_)
);

BUFX2 _2170_ (
    .A(gnd),
    .Y(o_gpio[7])
);

NAND2X1 _3795_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.cond_branch ),
    .Y(_390_)
);

FILL FILL145050x111750 (
);

INVX1 _3375_ (
    .A(\u_rf_if.rreg0_latched [4]),
    .Y(_2108_)
);

FILL FILL_0__3415_ (
);

AOI21X1 _2646_ (
    .A(_237_),
    .B(_215__bF$buf2),
    .C(_293_),
    .Y(_70_)
);

OAI21X1 _2226_ (
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [21]),
    .Y(_1446_)
);

FILL FILL_0__4793_ (
);

FILL FILL_0__4373_ (
);

NOR2X1 _3184_ (
    .A(_478_),
    .B(_1711_),
    .Y(_1709_)
);

OAI21X1 _4389_ (
    .A(_1517_),
    .B(_1518_),
    .C(_1516_),
    .Y(_1519_)
);

FILL FILL_0__3644_ (
);

FILL FILL_0__4009_ (
);

DFFPOSX1 _2875_ (
    .D(_532_),
    .CLK(clk_sys_bF$buf22),
    .Q(\u_rf_if.read_buf0 [9])
);

OAI21X1 _2455_ (
    .A(_1055_),
    .B(_1062_),
    .C(_1007_),
    .Y(_1063_)
);

FILL FILL_0__4182_ (
);

NAND2X1 _4601_ (
    .A(\u_mem_serial.shift_rx [28]),
    .B(_1877__bF$buf1),
    .Y(_1933_)
);

AOI22X1 _4198_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [5]),
    .C(_1172__bF$buf1),
    .D(_1180_),
    .Y(_1181_)
);

FILL FILL_0__3873_ (
);

FILL FILL_0__3453_ (
);

FILL FILL_0__3033_ (
);

FILL FILL_0__4658_ (
);

INVX1 _2684_ (
    .A(raddr[1]),
    .Y(_262_)
);

OAI21X1 _2264_ (
    .A(_1406_),
    .B(_1408_),
    .C(\u_mem_serial.active_ibus_bF$buf0 ),
    .Y(_1419_)
);

FILL FILL144750x136950 (
);

OAI21X1 _3889_ (
    .A(_667_),
    .B(_660_),
    .C(_666_),
    .Y(_627_)
);

OAI21X1 _3469_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .B(_329_),
    .C(_328_),
    .Y(_327_)
);

MUX2X1 _3049_ (
    .A(_2062__bF$buf1),
    .B(\u_rf_if.read_buf0 [1]),
    .S(_1613_),
    .Y(_1612_)
);

FILL FILL_0__2304_ (
);

DFFSR _4830_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1836_),
    .CLK(clk_sys_bF$buf32),
    .Q(current_wdata0_next_hint)
);

INVX1 _4410_ (
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_1536_)
);

FILL FILL_0__4047_ (
);

FILL FILL_1__3423_ (
);

OR2X2 _2493_ (
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.bufreg.data [22]),
    .Y(_1025_)
);

FILL FILL_1__4628_ (
);

NAND2X1 _3698_ (
    .A(\u_cpu.state.i_alu_rd_sel1 ),
    .B(\u_cpu.decode.co_rd_alu_en ),
    .Y(_158_)
);

OAI21X1 _3278_ (
    .A(_18__bF$buf3),
    .B(_1781_),
    .C(\u_rf_if.read_buf1 [14]),
    .Y(_1777_)
);

FILL FILL_0__3738_ (
);

FILL FILL_0__3318_ (
);

FILL FILL_0__3491_ (
);

FILL FILL_0__3071_ (
);

OAI21X1 _2969_ (
    .A(_480_),
    .B(_620_),
    .C(_1731_),
    .Y(_617_)
);

NAND2X1 _2549_ (
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_968_)
);

MUX2X1 _3910_ (
    .A(\u_cpu.decode.i_wb_rdt [24]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .S(rf_rreq_bF$buf2),
    .Y(_686_)
);

FILL FILL_0__4696_ (
);

AOI21X1 _3087_ (
    .A(_1640_),
    .B(_1639_),
    .C(rst_bF$buf8),
    .Y(_533_)
);

FILL FILL_0__2342_ (
);

INVX1 _2778_ (
    .A(\u_rf_if.o_waddr [2]),
    .Y(_121_)
);

OAI21X1 _2358_ (
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [7]),
    .Y(_1345_)
);

FILL FILL_0__4085_ (
);

FILL FILL_0__2818_ (
);

DFFPOSX1 _4504_ (
    .D(_1480_),
    .CLK(clk_sys_bF$buf19),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

FILL FILL_1__3461_ (
);

FILL FILL_1__4666_ (
);

FILL FILL_0__3356_ (
);

MUX2X1 _2587_ (
    .A(_819_),
    .B(_828_),
    .S(_805_),
    .Y(_829_)
);

BUFX2 _2167_ (
    .A(_2157_),
    .Y(o_mem_sck)
);

NAND3X1 _4733_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [5]),
    .C(_1984__bF$buf1),
    .Y(_2018_)
);

NOR2X1 _4313_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(_1265_),
    .Y(_1273_)
);

FILL FILL_1__3690_ (
);

FILL FILL_0__2380_ (
);

OAI21X1 _2396_ (
    .A(\u_mem_serial.req_pending ),
    .B(\u_mem_serial.state [0]),
    .C(_1305_),
    .Y(_1314_)
);

FILL FILL_0__2436_ (
);

NAND2X1 _4542_ (
    .A(_1891_),
    .B(_1890_),
    .Y(_1892_)
);

DFFPOSX1 _4122_ (
    .D(_863_),
    .CLK(clk_sys_bF$buf9),
    .Q(\u_cpu.bufreg.data [8])
);

FILL FILL_0__3394_ (
);

NOR2X1 _3813_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_401_)
);

FILL FILL_0__4599_ (
);

FILL FILL_0__2665_ (
);

NAND3X1 _4771_ (
    .A(_1962_),
    .B(rf_read_reg0[2]),
    .C(_1895__bF$buf1),
    .Y(_2041_)
);

DFFPOSX1 _4351_ (
    .D(_1099_),
    .CLK(clk_sys_bF$buf28),
    .Q(\u_cpu.bufreg2.dlo [6])
);

NAND3X1 _3622_ (
    .A(\u_cpu.mem_if.signbit ),
    .B(_2082_),
    .C(_2084_),
    .Y(_2087_)
);

AOI21X1 _3202_ (
    .A(_1727_),
    .B(_1723_),
    .C(_1730_),
    .Y(_566_)
);

DFFSR _4827_ (
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1839_),
    .CLK(clk_sys_bF$buf1),
    .Q(ibus_pending_rdt[16])
);

INVX1 _4407_ (
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_1534_)
);

FILL FILL_0__2474_ (
);

NAND2X1 _4580_ (
    .A(\u_mem_serial.shift_rx [21]),
    .B(_1877__bF$buf5),
    .Y(_1919_)
);

INVX1 _4160_ (
    .A(\u_cpu.bufreg2.dlo [16]),
    .Y(_1147_)
);

FILL FILL_0__3679_ (
);

FILL FILL_0__3259_ (
);

FILL FILL_0__4620_ (
);

FILL FILL_1__2215_ (
);

OAI21X1 _3851_ (
    .A(rf_rreq_bF$buf3),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_414_),
    .Y(_366_)
);

AOI21X1 _3431_ (
    .A(_296_),
    .B(_47_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_46_)
);

INVX1 _3011_ (
    .A(raddr[0]),
    .Y(_1586_)
);

FILL FILL_1_BUFX2_insert20 (
);

FILL FILL_1_BUFX2_insert27 (
);

INVX1 _4636_ (
    .A(\u_mem_serial.shift_rx [0]),
    .Y(_1956_)
);

INVX1 _4216_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1194_)
);

FILL FILL_1__4378_ (
);

NAND2X1 _2702_ (
    .A(ren_bF$buf4),
    .B(raddr[8]),
    .Y(_244_)
);

NAND2X1 _3907_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .B(_683_),
    .Y(_684_)
);

FILL FILL_1__3229_ (
);

INVX1 _2299_ (
    .A(_1393_),
    .Y(_1394_)
);

INVX1 _3660_ (
    .A(\u_cpu.alu.i_en ),
    .Y(_2146_)
);

NOR2X1 _3240_ (
    .A(rst_bF$buf5),
    .B(_484__bF$buf3),
    .Y(_577_)
);

FILL FILL_0__2759_ (
);

FILL FILL_0__2339_ (
);

NAND2X1 _4445_ (
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .B(_1530__bF$buf0),
    .Y(_1555_)
);

INVX1 _4025_ (
    .A(\u_cpu.bufreg.data [8]),
    .Y(_905_)
);

FILL FILL_0__3700_ (
);

DFFPOSX1 _2931_ (
    .D(_519_),
    .CLK(clk_sys_bF$buf16),
    .Q(\u_rf_if.rreg1_latched [0])
);

AND2X2 _2511_ (
    .A(_833_),
    .B(_831_),
    .Y(_1007_)
);

FILL FILL_0__3297_ (
);

DFFPOSX1 _3716_ (
    .D(_791_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [16])
);

FILL FILL145050x21750 (
);

FILL FILL_1__2253_ (
);

FILL FILL_0__2988_ (
);

NAND3X1 _4674_ (
    .A(_1965_),
    .B(_1980_),
    .C(_1981_),
    .Y(_1827_)
);

OAI21X1 _4254_ (
    .A(_1206_),
    .B(_1226_),
    .C(_1227_),
    .Y(_1109_)
);

FILL FILL_1__2729_ (
);

NOR2X1 _2740_ (
    .A(\u_rf_serial.tx_state [0]),
    .B(_208_),
    .Y(_56_)
);

NAND3X1 _2320_ (
    .A(_1315__bF$buf2),
    .B(_1375_),
    .C(_1303__bF$buf0),
    .Y(_1376_)
);

MUX2X1 _3945_ (
    .A(\u_cpu.decode.i_wb_rdt [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(rf_rreq_bF$buf3),
    .Y(_710_)
);

NOR2X1 _3525_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_428_),
    .Y(_427_)
);

NAND3X1 _3105_ (
    .A(_2062__bF$buf0),
    .B(_1715__bF$buf0),
    .C(_1779_),
    .Y(_1650_)
);

FILL FILL_1__3267_ (
);

FILL FILL_0__2797_ (
);

FILL FILL_0__2377_ (
);

INVX1 _4483_ (
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_1580_)
);

NAND2X1 _4063_ (
    .A(\u_cpu.bufreg.data [25]),
    .B(_892__bF$buf0),
    .Y(_930_)
);

FILL FILL_0__4523_ (
);

FILL FILL_0__4103_ (
);

FILL FILL_1__2538_ (
);

DFFPOSX1 _3754_ (
    .D(_133_),
    .CLK(clk_sys_bF$buf34),
    .Q(\u_cpu.state.cnt_r [0])
);

INVX1 _3334_ (
    .A(_13_),
    .Y(_1822_)
);

FILL FILL_1__2291_ (
);

NOR2X1 _4539_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .Y(_1889_)
);

DFFPOSX1 _4119_ (
    .D(_866_),
    .CLK(clk_sys_bF$buf8),
    .Q(\u_cpu.bufreg.data [5])
);

NOR2X1 _4292_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_1254_),
    .Y(_1258_)
);

NOR2X1 _2605_ (
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .B(_810_),
    .Y(_811_)
);

FILL FILL_0__4332_ (
);

FILL FILL_1__2767_ (
);

DFFPOSX1 _3983_ (
    .D(_637_),
    .CLK(clk_sys_bF$buf8),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

INVX1 _3563_ (
    .A(gnd),
    .Y(_461_)
);

OAI21X1 _3143_ (
    .A(_1717__bF$buf2),
    .B(_1819_),
    .C(\u_rf_if.read_buf0 [25]),
    .Y(_1678_)
);

NAND3X1 _4768_ (
    .A(rf_read_reg0[3]),
    .B(_1962_),
    .C(_1895__bF$buf3),
    .Y(_2039_)
);

DFFPOSX1 _4348_ (
    .D(_1102_),
    .CLK(clk_sys_bF$buf28),
    .Q(\u_cpu.bufreg2.dlo [3])
);

DFFPOSX1 _2834_ (
    .D(_543_),
    .CLK(clk_sys_bF$buf10),
    .Q(\u_rf_if.read_buf0 [19])
);

INVX1 _2414_ (
    .A(\u_mem_serial.state [0]),
    .Y(_1296_)
);

FILL FILL_0__4561_ (
);

AND2X2 _3619_ (
    .A(\u_cpu.mem_if.signbit ),
    .B(\u_cpu.decode.co_mem_signed ),
    .Y(_2085_)
);

FILL FILL_1__2576_ (
);

FILL FILL_1__4302_ (
);

DFFPOSX1 _3792_ (
    .D(_777_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [25])
);

NOR2X1 _3372_ (
    .A(\u_rf_if.rreg1_latched [0]),
    .B(\u_rf_if.rreg1_latched [1]),
    .Y(_2105_)
);

NAND3X1 _4577_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .C(_1897_),
    .Y(_1917_)
);

NAND3X1 _4157_ (
    .A(_1136_),
    .B(_1141_),
    .C(_1144_),
    .Y(_1145_)
);

NOR2X1 _2643_ (
    .A(_109_),
    .B(_208_),
    .Y(_72_)
);

OAI21X1 _2223_ (
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [20]),
    .Y(_1448_)
);

NAND2X1 _3848_ (
    .A(rf_rreq_bF$buf1),
    .B(\u_cpu.decode.i_wb_rdt [5]),
    .Y(_413_)
);

INVX2 _3428_ (
    .A(rf_wreq),
    .Y(_44_)
);

OAI21X1 _3008_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_1584_)
);

INVX1 _3181_ (
    .A(\u_rf_if.write_wait [5]),
    .Y(_1707_)
);

NAND2X1 _4386_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1516_)
);

FILL FILL_0__3221_ (
);

FILL FILL_0__4426_ (
);

DFFPOSX1 _2872_ (
    .D(_588_),
    .CLK(clk_sys_bF$buf21),
    .Q(\u_rf_if.read_buf1 [15])
);

NAND3X1 _2452_ (
    .A(_966_),
    .B(_1064_),
    .C(_1065_),
    .Y(_1066_)
);

NOR2X1 _3657_ (
    .A(_2142_),
    .B(_2143_),
    .Y(_2144_)
);

OAI21X1 _3237_ (
    .A(_18__bF$buf3),
    .B(_1749_),
    .C(\u_rf_if.read_buf1 [5]),
    .Y(_1748_)
);

OAI21X1 _4195_ (
    .A(_1176_),
    .B(_1164__bF$buf4),
    .C(_1178_),
    .Y(_1099_)
);

DFFPOSX1 _2928_ (
    .D(_502_),
    .CLK(clk_sys_bF$buf16),
    .Q(\u_rf_if.rreg0_latched [0])
);

NOR2X1 _2508_ (
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [19]),
    .Y(_1010_)
);

FILL FILL_0__4235_ (
);

NAND2X1 _2681_ (
    .A(_259_),
    .B(_264_),
    .Y(_265_)
);

OAI21X1 _2261_ (
    .A(_1421_),
    .B(_1418_),
    .C(_1419_),
    .Y(_1422_)
);

FILL FILL145050x150 (
);

INVX4 _3886_ (
    .A(_664_),
    .Y(_665_)
);

OAI21X1 _3466_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .B(_326_),
    .C(_325_),
    .Y(_324_)
);

AOI21X1 _3046_ (
    .A(_2100_),
    .B(_1613_),
    .C(_1611_),
    .Y(_520_)
);

FILL FILL_0__2721_ (
);

FILL FILL_0__2301_ (
);

FILL FILL_0__3926_ (
);

FILL FILL_0__3506_ (
);

OAI21X1 _2737_ (
    .A(_104_),
    .B(_215__bF$buf1),
    .C(_202_),
    .Y(_216_)
);

NAND2X1 _2317_ (
    .A(_1297__bF$buf4),
    .B(_1377_),
    .Y(_1378_)
);

FILL FILL_0__4464_ (
);

FILL FILL_0__4044_ (
);

INVX1 _2490_ (
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1028_)
);

AOI21X1 _3695_ (
    .A(_154_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_153_),
    .Y(_155_)
);

NAND3X1 _3275_ (
    .A(_5_),
    .B(_2095_),
    .C(_2152__bF$buf2),
    .Y(_1775_)
);

FILL FILL_0__2950_ (
);

AOI21X1 _2966_ (
    .A(_1722_),
    .B(_1636_),
    .C(_616_),
    .Y(_494_)
);

INVX1 _2546_ (
    .A(\u_cpu.bufreg.data [8]),
    .Y(_971_)
);

FILL FILL_0__4273_ (
);

AOI21X1 _3084_ (
    .A(_1637_),
    .B(_1638_),
    .C(rst_bF$buf9),
    .Y(_532_)
);

AOI22X1 _4289_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [19]),
    .C(_1172__bF$buf3),
    .D(_1255_),
    .Y(_1256_)
);

FILL FILL_0__3964_ (
);

FILL FILL_0__3544_ (
);

FILL FILL_1__2500_ (
);

FILL FILL_0__4749_ (
);

FILL FILL_1__3705_ (
);

OAI21X1 _2775_ (
    .A(_85_),
    .B(_123_),
    .C(_120_),
    .Y(_124_)
);

NAND3X1 _2355_ (
    .A(_1315__bF$buf2),
    .B(_1347_),
    .C(_1303__bF$buf2),
    .Y(_1348_)
);

FILL FILL_0__4082_ (
);

DFFPOSX1 _4501_ (
    .D(_1499_),
    .CLK(clk_sys_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

INVX1 _4098_ (
    .A(\u_cpu.bufreg.data [16]),
    .Y(_954_)
);

FILL FILL_1__3514_ (
);

INVX1 _2584_ (
    .A(_797_),
    .Y(_832_)
);

BUFX2 _2164_ (
    .A(_2160_),
    .Y(o_rf_sck)
);

FILL FILL_1__4719_ (
);

NAND2X1 _3789_ (
    .A(_386_),
    .B(_371_),
    .Y(_387_)
);

AND2X2 _3369_ (
    .A(_2104_),
    .B(_2103_),
    .Y(_2102_)
);

FILL FILL_0__2204_ (
);

NAND3X1 _4730_ (
    .A(\u_mem_serial.shift_rx [6]),
    .B(mem_ibus_ack_bF$buf0),
    .C(_1984__bF$buf1),
    .Y(_2016_)
);

NAND3X1 _4310_ (
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1271_)
);

FILL FILL_0__3829_ (
);

FILL FILL_0__3582_ (
);

FILL FILL_0__4787_ (
);

OAI21X1 _2393_ (
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [14]),
    .Y(_1317_)
);

DFFPOSX1 _3598_ (
    .D(_1112_),
    .CLK(clk_sys_bF$buf43),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

NOR2X1 _3178_ (
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .Y(_1704_)
);

FILL FILL_0__3638_ (
);

FILL FILL_0__3218_ (
);

FILL FILL144750x122550 (
);

DFFPOSX1 _2869_ (
    .D(_489_),
    .CLK(clk_sys_bF$buf40),
    .Q(\u_rf_if.rreg1_latched [3])
);

NAND3X1 _2449_ (
    .A(_805_),
    .B(_1068_),
    .C(_1067_),
    .Y(_1069_)
);

OAI21X1 _3810_ (
    .A(_386_),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_392_),
    .Y(\u_cpu.decode.co_immdec_en [2])
);

FILL FILL_0__4176_ (
);

FILL FILL_1__3552_ (
);

FILL FILL_1__4757_ (
);

FILL FILL_0__2242_ (
);

NAND2X1 _2678_ (
    .A(ren_bF$buf1),
    .B(_102_),
    .Y(_268_)
);

AOI21X1 _2258_ (
    .A(_1086_),
    .B(_1297__bF$buf1),
    .C(_1423_),
    .Y(_775_)
);

FILL FILL_0__2718_ (
);

DFFSR _4824_ (
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1842_),
    .CLK(clk_sys_bF$buf5),
    .Q(ibus_pending_rdt[13])
);

NOR2X1 _4404_ (
    .A(rst_bF$buf7),
    .B(_1511_),
    .Y(_1532_)
);

FILL FILL_1__4146_ (
);

FILL FILL_0__3256_ (
);

AOI21X1 _2487_ (
    .A(_1026_),
    .B(_1030_),
    .C(_808_),
    .Y(_1031_)
);

FILL FILL_0__2527_ (
);

INVX1 _4633_ (
    .A(\u_mem_serial.shift_rx [1]),
    .Y(_1954_)
);

NOR2X1 _4213_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(_1188_),
    .Y(_1192_)
);

FILL FILL_1__3590_ (
);

FILL FILL_1__4795_ (
);

FILL FILL_0__2280_ (
);

OAI21X1 _3904_ (
    .A(_662_),
    .B(_680_),
    .C(_661_),
    .Y(_681_)
);

OAI21X1 _2296_ (
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [28]),
    .Y(_1396_)
);

FILL FILL_0__2756_ (
);

OAI21X1 _4442_ (
    .A(_1551_),
    .B(_1535_),
    .C(_1552_),
    .Y(_1486_)
);

OAI21X1 _4022_ (
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_902_),
    .C(_903_),
    .Y(_861_)
);

FILL FILL_1__4184_ (
);

FILL FILL_0__3294_ (
);

NAND2X1 _3713_ (
    .A(_168_),
    .B(_140_),
    .Y(_169_)
);

FILL FILL_1__3875_ (
);

FILL FILL_1__3035_ (
);

FILL FILL_0__2565_ (
);

NOR2X1 _4671_ (
    .A(_1977_),
    .B(_1979_),
    .Y(_1826_)
);

NAND3X1 _4251_ (
    .A(_1154_),
    .B(_1221_),
    .C(_1224_),
    .Y(_1225_)
);

FILL FILL_0__4711_ (
);

FILL FILL_1__2306_ (
);

MUX2X1 _3942_ (
    .A(\u_cpu.decode.i_wb_rdt [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(rf_rreq_bF$buf3),
    .Y(_708_)
);

OAI21X1 _3522_ (
    .A(\u_rf_if.read_buf1 [6]),
    .B(_445_),
    .C(_446__bF$buf3),
    .Y(_424_)
);

NAND3X1 _3102_ (
    .A(_1715__bF$buf0),
    .B(_1779_),
    .C(_2099_),
    .Y(_1648_)
);

NAND3X1 _4727_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [7]),
    .C(_1984__bF$buf1),
    .Y(_2014_)
);

AOI22X1 _4307_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [23]),
    .C(_1172__bF$buf0),
    .D(_1268_),
    .Y(_1269_)
);

FILL FILL_1__4049_ (
);

FILL FILL_0__2794_ (
);

NAND2X1 _4480_ (
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(_1530__bF$buf3),
    .Y(_1578_)
);

INVX1 _4060_ (
    .A(\u_cpu.bufreg.data [26]),
    .Y(_928_)
);

FILL FILL_0__3579_ (
);

FILL FILL_0__3159_ (
);

FILL FILL_0__4520_ (
);

FILL FILL_1__2955_ (
);

OAI21X1 _3751_ (
    .A(_165_),
    .B(_189_),
    .C(_161_),
    .Y(_191_)
);

NAND2X1 _3331_ (
    .A(_10__bF$buf1),
    .B(_1820_),
    .Y(_1819_)
);

INVX1 _4536_ (
    .A(rf_write_drain_busy),
    .Y(_1886_)
);

DFFPOSX1 _4116_ (
    .D(_869_),
    .CLK(clk_sys_bF$buf3),
    .Q(\u_cpu.bufreg.data [2])
);

FILL FILL_1__3073_ (
);

OAI21X1 _2602_ (
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .B(_810_),
    .C(_798_),
    .Y(_814_)
);

NAND2X1 _3807_ (
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(_396_),
    .Y(_397_)
);

FILL FILL_1__2344_ (
);

NAND2X1 _2199_ (
    .A(\u_mem_serial.shift_rx [14]),
    .B(_1425_),
    .Y(_1465_)
);

OAI21X1 _3980_ (
    .A(_688_),
    .B(_732_),
    .C(_733_),
    .Y(_652_)
);

INVX1 _3560_ (
    .A(\u_rf_if.wen1_r ),
    .Y(_459_)
);

OAI21X1 _3140_ (
    .A(_18__bF$buf1),
    .B(_2162_),
    .C(\u_rf_if.read_buf1 [31]),
    .Y(_1676_)
);

FILL FILL_0__2659_ (
);

NOR2X1 _4765_ (
    .A(clk_div[0]),
    .B(clk_div[1]),
    .Y(_2038_)
);

DFFPOSX1 _4345_ (
    .D(_1105_),
    .CLK(clk_sys_bF$buf37),
    .Q(\u_cpu.bufreg2.dlo [0])
);

FILL FILL_1__4087_ (
);

DFFPOSX1 _2831_ (
    .D(_514_),
    .CLK(clk_sys_bF$buf33),
    .Q(raddr[5])
);

AND2X2 _2411_ (
    .A(_1298_),
    .B(_1044_),
    .Y(_1299_)
);

FILL FILL_0__3197_ (
);

NOR2X1 _3616_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(gnd),
    .Y(_2082_)
);

FILL FILL_1__2993_ (
);

FILL FILL_1__3358_ (
);

FILL FILL_0__2468_ (
);

NAND2X1 _4574_ (
    .A(\u_mem_serial.shift_rx [20]),
    .B(_1877__bF$buf4),
    .Y(_1915_)
);

INVX1 _4154_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_1142_)
);

DFFPOSX1 _2640_ (
    .D(_66_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_serial.last_req_key [1])
);

NAND3X1 _2220_ (
    .A(_1441_),
    .B(_1444_),
    .C(_1378_),
    .Y(_1450_)
);

OAI21X1 _3845_ (
    .A(rf_rreq_bF$buf7),
    .B(_378_),
    .C(_411_),
    .Y(_363_)
);

NOR2X1 _3425_ (
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_42_)
);

OAI21X1 _3005_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .C(\u_rf_if.issue_chunk [0]),
    .Y(_1468_)
);

FILL FILL_1__2382_ (
);

FILL FILL145050x97350 (
);

FILL FILL_0__2697_ (
);

OAI21X1 _4383_ (
    .A(_1512_),
    .B(\u_cpu.ctrl.i_utype ),
    .C(_1513_),
    .Y(_1514_)
);

AOI21X1 _3654_ (
    .A(_2140_),
    .B(_2137_),
    .C(\u_cpu.alu.i_cmp_eq ),
    .Y(_2141_)
);

OAI21X1 _3234_ (
    .A(_18__bF$buf4),
    .B(_1749_),
    .C(\u_rf_if.read_buf1 [4]),
    .Y(_1746_)
);

INVX1 _4439_ (
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_1551_)
);

OAI21X1 _4019_ (
    .A(_892__bF$buf1),
    .B(_900_),
    .C(_901_),
    .Y(_860_)
);

FILL FILL_1__3396_ (
);

INVX1 _4192_ (
    .A(\u_cpu.bufreg2.dlo [6]),
    .Y(_1176_)
);

DFFPOSX1 _2925_ (
    .D(_520_),
    .CLK(clk_sys_bF$buf40),
    .Q(\u_rf_if.read_buf0 [0])
);

INVX1 _2505_ (
    .A(\u_cpu.bufreg.data [16]),
    .Y(_1013_)
);

INVX1 _3883_ (
    .A(\u_cpu.alu.i_en ),
    .Y(_662_)
);

OAI21X1 _3463_ (
    .A(\u_rf_if.read_buf0 [13]),
    .B(_446__bF$buf0),
    .C(_445_),
    .Y(_321_)
);

AOI21X1 _3043_ (
    .A(_1722_),
    .B(_1610_),
    .C(_1609_),
    .Y(_519_)
);

NOR2X1 _4668_ (
    .A(_1974_),
    .B(_1976_),
    .Y(_1977_)
);

INVX1 _4248_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_1222_)
);

FILL FILL_0__3923_ (
);

FILL FILL_0__3503_ (
);

FILL FILL_0__4708_ (
);

OAI21X1 _2734_ (
    .A(_94_),
    .B(_215__bF$buf3),
    .C(_202_),
    .Y(_218_)
);

INVX1 _2314_ (
    .A(_1380_),
    .Y(_1381_)
);

AOI21X1 _3939_ (
    .A(_661_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .C(_705_),
    .Y(_706_)
);

OAI22X1 _3519_ (
    .A(_425_),
    .B(_424_),
    .C(_423_),
    .D(_422_),
    .Y(_421_)
);

OAI22X1 _3692_ (
    .A(_139_),
    .B(_141_),
    .C(_150_),
    .D(_151_),
    .Y(_152_)
);

AOI21X1 _3272_ (
    .A(_1773_),
    .B(_1774_),
    .C(rst_bF$buf2),
    .Y(_586_)
);

NAND2X1 _4477_ (
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_1530__bF$buf3),
    .Y(_1576_)
);

OAI21X1 _4057_ (
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_925_),
    .C(_926_),
    .Y(_873_)
);

FILL FILL_0__3732_ (
);

AND2X2 _2963_ (
    .A(_32__bF$buf1),
    .B(\u_rf_if.wdata1_phase [1]),
    .Y(_492_)
);

NAND2X1 _2543_ (
    .A(_973_),
    .B(_840_),
    .Y(_974_)
);

OAI21X1 _3748_ (
    .A(_165_),
    .B(_189_),
    .C(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_190_)
);

NOR3X1 _3328_ (
    .A(_5_),
    .B(_1817_),
    .C(_2089_),
    .Y(_1816_)
);

FILL FILL_1__4011_ (
);

OAI21X1 _3081_ (
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .B(\u_rf_if.rreg0_latched [4]),
    .C(_1635_),
    .Y(_1634_)
);

OAI21X1 _4286_ (
    .A(_1251_),
    .B(_1164__bF$buf2),
    .C(_1253_),
    .Y(_1115_)
);

FILL FILL_0__3961_ (
);

FILL FILL_0__3541_ (
);

FILL FILL_0__3121_ (
);

FILL FILL_0__4746_ (
);

FILL FILL_0__4326_ (
);

INVX1 _2772_ (
    .A(\u_rf_if.o_waddr [1]),
    .Y(_127_)
);

NAND2X1 _2352_ (
    .A(\u_mem_serial.shift_rx [5]),
    .B(_1297__bF$buf0),
    .Y(_1350_)
);

OAI21X1 _3977_ (
    .A(_688_),
    .B(_730_),
    .C(_731_),
    .Y(_651_)
);

INVX1 _3557_ (
    .A(\u_cpu.o_wdata0 ),
    .Y(_457_)
);

OAI21X1 _3137_ (
    .A(_1717__bF$buf1),
    .B(_1819_),
    .C(\u_rf_if.read_buf0 [24]),
    .Y(_1674_)
);

OAI21X1 _4095_ (
    .A(\u_cpu.bufreg.i_init ),
    .B(_951_),
    .C(\u_cpu.bufreg.i_en_bF$buf4 ),
    .Y(_952_)
);

INVX1 _2828_ (
    .A(raddr[8]),
    .Y(_73_)
);

OAI21X1 _2408_ (
    .A(_1044_),
    .B(_1298_),
    .C(_1301_),
    .Y(_1302_)
);

NOR2X1 _2581_ (
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_810_),
    .Y(_835_)
);

INVX1 _3786_ (
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_384_)
);

NOR2X1 _3366_ (
    .A(_2149_),
    .B(_2100_),
    .Y(_2099_)
);

FILL FILL_0__3406_ (
);

DFFPOSX1 _2637_ (
    .D(_55_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.tx_state [1])
);

OAI21X1 _2217_ (
    .A(_1414_),
    .B(_1450_),
    .C(_1452_),
    .Y(_1453_)
);

FILL FILL_0__4784_ (
);

FILL FILL_1__3320_ (
);

NAND3X1 _2390_ (
    .A(_1315__bF$buf1),
    .B(_1319_),
    .C(_1303__bF$buf3),
    .Y(_1320_)
);

FILL FILL_1__4525_ (
);

DFFPOSX1 _3595_ (
    .D(_368_),
    .CLK(clk_sys_bF$buf32),
    .Q(\u_cpu.branch_op )
);

NAND2X1 _3175_ (
    .A(_1706_),
    .B(_1702_),
    .Y(_1701_)
);

FILL FILL_0__2430_ (
);

DFFPOSX1 _2866_ (
    .D(_591_),
    .CLK(clk_sys_bF$buf2),
    .Q(\u_rf_if.read_buf1 [18])
);

AOI22X1 _2446_ (
    .A(_840_),
    .B(\u_cpu.bufreg2.dlo [8]),
    .C(\u_cpu.bufreg2.dlo [9]),
    .D(_845_),
    .Y(_1072_)
);

FILL FILL_0__4173_ (
);

NOR2X1 _4189_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(_1173_),
    .Y(_1174_)
);

FILL FILL_0__3444_ (
);

FILL FILL_0__3024_ (
);

FILL FILL_1__2820_ (
);

FILL FILL_0__4649_ (
);

NAND3X1 _2675_ (
    .A(\u_rf_serial.last_req_key [7]),
    .B(_270_),
    .C(_103_),
    .Y(_271_)
);

NAND2X1 _2255_ (
    .A(\u_mem_serial.shift_rx [25]),
    .B(_1425_),
    .Y(_1426_)
);

DFFSR _4821_ (
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1845_),
    .CLK(clk_sys_bF$buf36),
    .Q(ibus_pending_rdt[10])
);

INVX1 _4401_ (
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_1529_)
);

FILL FILL_1__4563_ (
);

FILL FILL_0__3673_ (
);

FILL FILL_0__4458_ (
);

FILL FILL_0__4038_ (
);

FILL FILL_1__3834_ (
);

OAI21X1 _2484_ (
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(_1032_),
    .C(_1033_),
    .Y(_1034_)
);

INVX1 _3689_ (
    .A(mem_dbus_ack_bF$buf4),
    .Y(_149_)
);

AOI21X1 _3269_ (
    .A(_1771_),
    .B(_1772_),
    .C(rst_bF$buf9),
    .Y(_585_)
);

INVX1 _4630_ (
    .A(ibus_pending_rdt[7]),
    .Y(_1952_)
);

AOI22X1 _4210_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [2]),
    .C(_1172__bF$buf1),
    .D(_1189_),
    .Y(_1190_)
);

FILL FILL_0__3309_ (
);

FILL FILL_0__3482_ (
);

FILL FILL_0__3062_ (
);

NAND2X1 _3901_ (
    .A(\u_cpu.decode.co_immdec_ctrl [2]),
    .B(_668_),
    .Y(_678_)
);

FILL FILL_0__4687_ (
);

NAND3X1 _2293_ (
    .A(_1315__bF$buf1),
    .B(_1398_),
    .C(_1303__bF$buf2),
    .Y(_1399_)
);

FILL FILL_1__4428_ (
);

INVX1 _3498_ (
    .A(\u_rf_if.read_buf1 [18]),
    .Y(_355_)
);

OAI21X1 _3078_ (
    .A(_1717__bF$buf2),
    .B(_1764_),
    .C(\u_rf_if.read_buf0 [8]),
    .Y(_1632_)
);

FILL FILL_0__2333_ (
);

NAND2X1 _2769_ (
    .A(_78_),
    .B(_167_),
    .Y(_170_)
);

AOI21X1 _2349_ (
    .A(_1349_),
    .B(_1352_),
    .C(rst_bF$buf10),
    .Y(_755_)
);

DFFPOSX1 _3710_ (
    .D(_781_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.state [1])
);

FILL FILL_0__4076_ (
);

FILL FILL_0__2809_ (
);

FILL FILL_1__4237_ (
);

FILL FILL_0__2982_ (
);

FILL FILL_0__3347_ (
);

FILL FILL144150x14550 (
);

FILL FILL_1__3928_ (
);

OAI21X1 _2998_ (
    .A(rf_read_reg0_to_if[3]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_744_)
);

OAI21X1 _2578_ (
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_810_),
    .C(_798_),
    .Y(_838_)
);

FILL FILL_0__2618_ (
);

OAI21X1 _4724_ (
    .A(_1948_),
    .B(_1983__bF$buf3),
    .C(_2012_),
    .Y(_1846_)
);

AOI22X1 _4304_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [15]),
    .C(_1172__bF$buf0),
    .D(_1266_),
    .Y(_1267_)
);

FILL FILL_1__4466_ (
);

FILL FILL_0__2371_ (
);

FILL FILL_1__2952_ (
);

NAND2X1 _2387_ (
    .A(\u_mem_serial.shift_rx [12]),
    .B(_1297__bF$buf4),
    .Y(_1322_)
);

INVX1 _4533_ (
    .A(ibus_pending_rdt[16]),
    .Y(_1884_)
);

DFFPOSX1 _4113_ (
    .D(_872_),
    .CLK(clk_sys_bF$buf20),
    .Q(\u_cpu.bufreg.data [30])
);

FILL FILL_1__4275_ (
);

FILL FILL_0__2180_ (
);

FILL FILL_0__3385_ (
);

NAND2X1 _3804_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_376_),
    .Y(_395_)
);

FILL FILL_1__3966_ (
);

FILL FILL_1__3126_ (
);

DFFPOSX1 _2196_ (
    .D(_751_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_rx [10])
);

NOR2X1 _4762_ (
    .A(_2036_),
    .B(_1978_),
    .Y(_1860_)
);

FILL FILL_0__2236_ (
);

DFFPOSX1 _4342_ (
    .D(_1108_),
    .CLK(clk_sys_bF$buf37),
    .Q(\u_cpu.bufreg2.dhi [4])
);

FILL FILL144450x90150 (
);

INVX1 _3613_ (
    .A(\u_cpu.bne_or_bge ),
    .Y(_2079_)
);

FILL FILL_1__2990_ (
);

FILL FILL_0__4399_ (
);

DFFSR _4818_ (
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1848_),
    .CLK(clk_sys_bF$buf14),
    .Q(ibus_pending_rdt[7])
);

NAND3X1 _4571_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [22]),
    .C(_1897_),
    .Y(_1913_)
);

NOR2X1 _4151_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(\u_cpu.bufreg.i_shamt [2]),
    .Y(_1139_)
);

FILL FILL_0__4611_ (
);

NAND2X1 _3842_ (
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.decode.i_wb_rdt [14]),
    .Y(_410_)
);

NAND2X1 _3422_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_40_),
    .Y(_39_)
);

OAI21X1 _3002_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .C(\u_rf_if.issue_sel_bF$buf2 ),
    .Y(_1466_)
);

INVX1 _4627_ (
    .A(ibus_pending_rdt[8]),
    .Y(_1950_)
);

OAI21X1 _4207_ (
    .A(_1185_),
    .B(_1164__bF$buf0),
    .C(_1187_),
    .Y(_1102_)
);

FILL FILL_1__3164_ (
);

FILL FILL_0__2274_ (
);

INVX2 _4380_ (
    .A(\u_cpu.ctrl.i_pc_en ),
    .Y(_1511_)
);

FILL FILL_0__4420_ (
);

INVX1 _3651_ (
    .A(_2137_),
    .Y(_2138_)
);

NAND2X1 _3231_ (
    .A(_2152__bF$buf2),
    .B(_1795_),
    .Y(_1744_)
);

OAI22X1 _4436_ (
    .A(_1549_),
    .B(_1531_),
    .C(_1548_),
    .D(_1535_),
    .Y(_1483_)
);

AOI21X1 _4016_ (
    .A(_899_),
    .B(_893_),
    .C(_892__bF$buf3),
    .Y(_998_)
);

DFFPOSX1 _2922_ (
    .D(_561_),
    .CLK(clk_sys_bF$buf33),
    .Q(\u_rf_if.wdata0_next_phase )
);

NAND2X1 _2502_ (
    .A(_1015_),
    .B(_840_),
    .Y(_1016_)
);

FILL FILL_0__3288_ (
);

DFFPOSX1 _3707_ (
    .D(_768_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.active_we )
);

FILL FILL_1__3449_ (
);

OAI21X1 _3880_ (
    .A(\u_cpu.csr_imm_en ),
    .B(_654_),
    .C(\u_cpu.branch_op ),
    .Y(_659_)
);

OAI22X1 _3460_ (
    .A(_322_),
    .B(_321_),
    .C(_320_),
    .D(_319_),
    .Y(_318_)
);

FILL FILL144750x10950 (
);

NOR2X1 _3040_ (
    .A(_1692_),
    .B(_1607_),
    .Y(_518_)
);

FILL FILL_0__2559_ (
);

INVX1 _4665_ (
    .A(clk_div[3]),
    .Y(_1974_)
);

OAI21X1 _4245_ (
    .A(_1136_),
    .B(_1164__bF$buf0),
    .C(_1219_),
    .Y(_1220_)
);

INVX1 _2731_ (
    .A(_111_),
    .Y(_220_)
);

NAND2X1 _2311_ (
    .A(_1383_),
    .B(_1378_),
    .Y(_1384_)
);

NAND2X1 _3936_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .B(_665__bF$buf3),
    .Y(_704_)
);

NAND2X1 _3516_ (
    .A(_449_),
    .B(_419_),
    .Y(_412_)
);

FILL FILL_0__2788_ (
);

AOI21X1 _4474_ (
    .A(_1553_),
    .B(\u_cpu.ctrl.o_ibus_adr [7]),
    .C(_1511_),
    .Y(_1574_)
);

OAI21X1 _4054_ (
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_922_),
    .C(_924_),
    .Y(_872_)
);

OAI21X1 _2960_ (
    .A(rf_read_reg1_to_if[3]),
    .B(_1722_),
    .C(_32__bF$buf0),
    .Y(_614_)
);

OAI21X1 _2540_ (
    .A(_851_),
    .B(_976_),
    .C(_834_),
    .Y(_977_)
);

OAI21X1 _3745_ (
    .A(_163_),
    .B(_162_),
    .C(\u_cpu.state.cnt_r [3]),
    .Y(_188_)
);

OAI21X1 _3325_ (
    .A(_18__bF$buf0),
    .B(_1819_),
    .C(\u_rf_if.read_buf1 [24]),
    .Y(_1814_)
);

FILL FILL_1__3487_ (
);

FILL FILL_0__2597_ (
);

FILL FILL_0__2177_ (
);

INVX1 _4283_ (
    .A(\u_cpu.bufreg2.dlo [20]),
    .Y(_1251_)
);

FILL FILL_0__4323_ (
);

OAI21X1 _3974_ (
    .A(_688_),
    .B(_728_),
    .C(_729_),
    .Y(_650_)
);

NAND2X1 _3554_ (
    .A(gnd),
    .B(\u_rf_if.wdata1_phase [1]),
    .Y(_454_)
);

OAI21X1 _3134_ (
    .A(_1717__bF$buf4),
    .B(_1809_),
    .C(\u_rf_if.read_buf0 [23]),
    .Y(_1672_)
);

NAND3X1 _4759_ (
    .A(rreg1[0]),
    .B(rf_rreq_bF$buf4),
    .C(_1895__bF$buf0),
    .Y(_2035_)
);

DFFPOSX1 _4339_ (
    .D(_1111_),
    .CLK(clk_sys_bF$buf43),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

NAND2X1 _4092_ (
    .A(\u_cpu.bufreg.data [17]),
    .B(_892__bF$buf1),
    .Y(_950_)
);

NAND3X1 _2825_ (
    .A(_73_),
    .B(_74_),
    .C(_75_),
    .Y(_76_)
);

INVX1 _2405_ (
    .A(\u_mem_serial.state [1]),
    .Y(_1305_)
);

FILL FILL_0__4552_ (
);

NOR2X1 _3783_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(\u_cpu.alu.i_cmp_eq )
);

OAI21X1 _3363_ (
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_2097_)
);

NAND2X1 _4568_ (
    .A(\u_mem_serial.shift_rx [22]),
    .B(_1877__bF$buf5),
    .Y(_1911_)
);

AOI21X1 _4148_ (
    .A(_1135_),
    .B(\u_cpu.bufreg.i_init ),
    .C(_1130_),
    .Y(_1136_)
);

FILL FILL_0__3823_ (
);

DFFPOSX1 _2634_ (
    .D(_64_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.launch_pending )
);

NAND2X1 _2214_ (
    .A(\u_mem_serial.shift_rx [18]),
    .B(_1425_),
    .Y(_1455_)
);

DFFPOSX1 _3839_ (
    .D(_756_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [5])
);

OAI21X1 _3419_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_40_),
    .C(_32__bF$buf2),
    .Y(_31_)
);

DFFPOSX1 _3592_ (
    .D(_2_),
    .CLK(clk_sys_bF$buf34),
    .Q(\u_cpu.alu.add_cy_r )
);

AND2X2 _3172_ (
    .A(_1699_),
    .B(_32__bF$buf2),
    .Y(_560_)
);

OAI21X1 _4797_ (
    .A(_2055_),
    .B(_2056_),
    .C(_1892_),
    .Y(_2057_)
);

AOI22X1 _4377_ (
    .A(\u_cpu.alu.i_buf ),
    .B(_1506_),
    .C(_1507_),
    .D(\u_cpu.cnt12to31 ),
    .Y(_1508_)
);

FILL FILL_0__3632_ (
);

FILL FILL_0__3212_ (
);

DFFPOSX1 _2863_ (
    .D(_535_),
    .CLK(clk_sys_bF$buf39),
    .Q(\u_rf_if.read_buf0 [12])
);

AOI22X1 _2443_ (
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_795_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [12]),
    .Y(_1075_)
);

FILL FILL_0__4590_ (
);

NAND2X1 _3648_ (
    .A(_2125_),
    .B(_2120_),
    .Y(_2135_)
);

NAND3X1 _3228_ (
    .A(_2154__bF$buf4),
    .B(_2062__bF$buf1),
    .C(_1742_),
    .Y(_1741_)
);

NAND3X1 _4186_ (
    .A(\u_cpu.bufreg.i_init ),
    .B(_1169_),
    .C(_1170_),
    .Y(_1171_)
);

DFFPOSX1 _2919_ (
    .D(_503_),
    .CLK(clk_sys_bF$buf16),
    .Q(\u_rf_if.rreg0_latched [1])
);

FILL FILL_0__4226_ (
);

OR2X2 _2672_ (
    .A(_197_),
    .B(\u_rf_serial.last_req_key [0]),
    .Y(_274_)
);

NAND2X1 _2252_ (
    .A(\u_mem_serial.shift_rx [24]),
    .B(_1425_),
    .Y(_1428_)
);

NAND2X1 _3877_ (
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.i_wb_rdt [31]),
    .Y(_657_)
);

OAI21X1 _3457_ (
    .A(_330_),
    .B(_316_),
    .C(_449_),
    .Y(_315_)
);

NOR2X1 _3037_ (
    .A(_1605_),
    .B(_1692_),
    .Y(_517_)
);

FILL FILL_0__2712_ (
);

FILL FILL_1__3199_ (
);

FILL FILL_0__3917_ (
);

FILL FILL_0__3250_ (
);

INVX1 _2728_ (
    .A(\u_rf_serial.last_req_key [4]),
    .Y(_222_)
);

OAI21X1 _2308_ (
    .A(\u_mem_serial.state [1]),
    .B(_1384_),
    .C(_1386_),
    .Y(_1387_)
);

FILL FILL_1__3411_ (
);

NAND2X1 _2481_ (
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1037_)
);

FILL FILL_1__4616_ (
);

AND2X2 _3686_ (
    .A(_139_),
    .B(\u_cpu.decode.co_rd_op ),
    .Y(\u_cpu.rd_en )
);

NOR2X1 _3266_ (
    .A(_10__bF$buf1),
    .B(_2061_),
    .Y(_1768_)
);

FILL FILL_0__2521_ (
);

OAI21X1 _2957_ (
    .A(\u_rf_if.rcnt [2]),
    .B(_1690_),
    .C(_613_),
    .Y(_612_)
);

NAND2X1 _2537_ (
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(_979_),
    .Y(_980_)
);

FILL FILL_0__4264_ (
);

FILL FILL_1__2699_ (
);

FILL FILL_1__3640_ (
);

NAND2X1 _2290_ (
    .A(\u_mem_serial.shift_rx [26]),
    .B(_1297__bF$buf2),
    .Y(_1401_)
);

MUX2X1 _3495_ (
    .A(_353_),
    .B(_356_),
    .S(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_352_)
);

OAI21X1 _3075_ (
    .A(_1717__bF$buf4),
    .B(_1759_),
    .C(\u_rf_if.read_buf0 [7]),
    .Y(_1630_)
);

FILL FILL_0__2750_ (
);

FILL FILL_0__3955_ (
);

FILL FILL_0__3535_ (
);

FILL FILL_0__3115_ (
);

OAI21X1 _2766_ (
    .A(_192_),
    .B(_85_),
    .C(_193_),
    .Y(_194_)
);

INVX1 _2346_ (
    .A(_1354_),
    .Y(_1355_)
);

FILL FILL_1__4654_ (
);

INVX1 _4089_ (
    .A(\u_cpu.bufreg.data [18]),
    .Y(_948_)
);

FILL FILL_0__3764_ (
);

OAI21X1 _2995_ (
    .A(rf_read_reg0_to_if[2]),
    .B(_1722_),
    .C(_32__bF$buf0),
    .Y(_742_)
);

INVX1 _2575_ (
    .A(\u_cpu.bufreg.data [12]),
    .Y(_841_)
);

NAND3X1 _4721_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [10]),
    .C(_1984__bF$buf2),
    .Y(_2011_)
);

OAI21X1 _4301_ (
    .A(_1147_),
    .B(_1164__bF$buf3),
    .C(_1264_),
    .Y(_1119_)
);

CLKBUF1 CLKBUF1_insert70 (
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf15)
);

CLKBUF1 CLKBUF1_insert71 (
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf14)
);

CLKBUF1 CLKBUF1_insert72 (
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf13)
);

CLKBUF1 CLKBUF1_insert73 (
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf12)
);

CLKBUF1 CLKBUF1_insert74 (
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf11)
);

CLKBUF1 CLKBUF1_insert75 (
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf10)
);

CLKBUF1 CLKBUF1_insert76 (
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf9)
);

CLKBUF1 CLKBUF1_insert77 (
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf8)
);

CLKBUF1 CLKBUF1_insert78 (
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf7)
);

CLKBUF1 CLKBUF1_insert79 (
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf6)
);

FILL FILL_0__3573_ (
);

FILL FILL_0__3153_ (
);

FILL FILL_0__4778_ (
);

FILL FILL_1__3734_ (
);

AOI21X1 _2384_ (
    .A(_1321_),
    .B(_1324_),
    .C(rst_bF$buf10),
    .Y(_748_)
);

INVX1 _3589_ (
    .A(_484__bF$buf2),
    .Y(_483_)
);

INVX2 _3169_ (
    .A(_1697_),
    .Y(_1696_)
);

FILL FILL_0__2424_ (
);

OAI21X1 _4530_ (
    .A(_1877__bF$buf3),
    .B(_1881_),
    .C(_1882_),
    .Y(\u_cpu.decode.i_wb_rdt [2])
);

DFFPOSX1 _4110_ (
    .D(_875_),
    .CLK(clk_sys_bF$buf29),
    .Q(\u_cpu.bufreg.data [26])
);

FILL FILL_1__4692_ (
);

DFFPOSX1 _3801_ (
    .D(_747_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [14])
);

FILL FILL_0__4167_ (
);

FILL FILL_1__3123_ (
);

DFFPOSX1 _2193_ (
    .D(_772_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [1])
);

FILL FILL_1__4328_ (
);

NAND2X1 _3398_ (
    .A(_14_),
    .B(_15_),
    .Y(_13_)
);

FILL FILL_0__2653_ (
);

FILL FILL_0__3438_ (
);

FILL FILL_0__3018_ (
);

FILL FILL_0__3191_ (
);

NAND3X1 _2669_ (
    .A(_217_),
    .B(_93_),
    .C(_92_),
    .Y(_277_)
);

NAND2X1 _2249_ (
    .A(\u_mem_serial.shift_rx [30]),
    .B(_1425_),
    .Y(_1430_)
);

INVX1 _3610_ (
    .A(\u_cpu.bufreg2.o_q ),
    .Y(_2076_)
);

FILL FILL_1_BUFX2_insert236 (
);

FILL FILL145050x126150 (
);

DFFSR _4815_ (
    .R(vdd),
    .S(i_rst_n_bF$buf0),
    .D(_1851_),
    .CLK(clk_sys_bF$buf5),
    .Q(ibus_pending_rdt[4])
);

FILL FILL_0__2462_ (
);

FILL FILL_0__3667_ (
);

FILL FILL_1__3408_ (
);

DFFPOSX1 _2898_ (
    .D(_527_),
    .CLK(clk_sys_bF$buf44),
    .Q(ren)
);

NAND3X1 _2478_ (
    .A(_805_),
    .B(_1035_),
    .C(_1039_),
    .Y(_1040_)
);

INVX1 _4624_ (
    .A(ibus_pending_rdt[9]),
    .Y(_1948_)
);

INVX1 _4204_ (
    .A(\u_cpu.bufreg2.dlo [3]),
    .Y(_1185_)
);

FILL FILL_1__3161_ (
);

FILL FILL_0__2691_ (
);

FILL FILL_0__3896_ (
);

FILL FILL_0__3476_ (
);

FILL FILL_0__3056_ (
);

FILL FILL_1__2432_ (
);

AOI21X1 _2287_ (
    .A(_1400_),
    .B(_1403_),
    .C(rst_bF$buf3),
    .Y(_766_)
);

FILL FILL_0__2327_ (
);

DFFSR _4853_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1864_),
    .CLK(clk_sys_bF$buf20),
    .Q(rf_read_reg0[3])
);

OAI22X1 _4433_ (
    .A(_1548_),
    .B(_1531_),
    .C(_1547_),
    .D(_1535_),
    .Y(_1481_)
);

NAND2X1 _4013_ (
    .A(\u_cpu.bufreg.i_rs1_en ),
    .B(rdata0[0]),
    .Y(_897_)
);

NAND2X1 _3704_ (
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_162_)
);

FILL FILL_1__2661_ (
);

FILL FILL_1__3446_ (
);

FILL FILL_0__2976_ (
);

NAND3X1 _4662_ (
    .A(_1962_),
    .B(rf_read_reg0[4]),
    .C(_1895__bF$buf3),
    .Y(_1972_)
);

OAI21X1 _4242_ (
    .A(_1130_),
    .B(_1133_),
    .C(_1142_),
    .Y(_1217_)
);

FILL FILL_0__4702_ (
);

FILL FILL_0__3094_ (
);

NAND2X1 _3933_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .B(_665__bF$buf3),
    .Y(_702_)
);

OAI21X1 _3513_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .B(_409_),
    .C(_408_),
    .Y(_405_)
);

FILL FILL_1__2470_ (
);

OAI21X1 _4718_ (
    .A(_1876_),
    .B(_1983__bF$buf0),
    .C(_2009_),
    .Y(_1843_)
);

FILL FILL_1__3675_ (
);

FILL FILL_0__2365_ (
);

NAND2X1 _4471_ (
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .B(_1553_),
    .Y(_1572_)
);

NAND2X1 _4051_ (
    .A(\u_cpu.bufreg.data [29]),
    .B(_892__bF$buf0),
    .Y(_923_)
);

AOI21X1 _3742_ (
    .A(\u_cpu.alu.i_en ),
    .B(_139_),
    .C(rst_bF$buf1),
    .Y(_186_)
);

AOI21X1 _3322_ (
    .A(_1812_),
    .B(_1814_),
    .C(rst_bF$buf8),
    .Y(_597_)
);

INVX1 _4527_ (
    .A(_1880_),
    .Y(\u_cpu.decode.i_wb_rdt [6])
);

OAI21X1 _4107_ (
    .A(_892__bF$buf3),
    .B(_957_),
    .C(_959_),
    .Y(_890_)
);

FILL FILL_1__3484_ (
);

FILL FILL_1__4689_ (
);

NOR2X1 _4280_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(_1244_),
    .Y(_1249_)
);

FILL FILL_0__3799_ (
);

FILL FILL_0__3379_ (
);

FILL FILL_0__4740_ (
);

OAI21X1 _3971_ (
    .A(_688_),
    .B(_726_),
    .C(_727_),
    .Y(_649_)
);

OAI21X1 _3551_ (
    .A(_483_),
    .B(_455_),
    .C(_452_),
    .Y(\u_rf_if.o_wdata [1])
);

OAI21X1 _3131_ (
    .A(_1717__bF$buf4),
    .B(_1809_),
    .C(\u_rf_if.read_buf0 [22]),
    .Y(_1670_)
);

NAND3X1 _4756_ (
    .A(rreg1[1]),
    .B(rf_rreq_bF$buf6),
    .C(_1895__bF$buf2),
    .Y(_2033_)
);

NOR2X1 _4336_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_1287_),
    .Y(_1290_)
);

INVX1 _2822_ (
    .A(_2161_),
    .Y(_77_)
);

INVX1 _2402_ (
    .A(clk_sys_bF$buf33),
    .Y(_1308_)
);

INVX1 _3607_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_2075_)
);

DFFPOSX1 _3780_ (
    .D(_778_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [31])
);

NAND3X1 _3360_ (
    .A(_5_),
    .B(_2095_),
    .C(_10__bF$buf2),
    .Y(_2094_)
);

NAND2X1 _4565_ (
    .A(\u_mem_serial.shift_rx [18]),
    .B(_1877__bF$buf0),
    .Y(_1909_)
);

AOI21X1 _4145_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .C(_1132_),
    .Y(_1133_)
);

FILL FILL_0__3400_ (
);

FILL FILL_0__4605_ (
);

DFFPOSX1 _2631_ (
    .D(_63_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.last_req_key [2])
);

NAND2X1 _2211_ (
    .A(\u_mem_serial.shift_rx [17]),
    .B(_1425_),
    .Y(_1457_)
);

NAND2X1 _3836_ (
    .A(rf_rreq_bF$buf1),
    .B(\u_cpu.decode.i_wb_rdt [12]),
    .Y(_407_)
);

OAI21X1 _3416_ (
    .A(_446__bF$buf1),
    .B(_445_),
    .C(\u_rf_if.stream_active ),
    .Y(_29_)
);

FILL FILL_0__2268_ (
);

OAI21X1 _4794_ (
    .A(_1940_),
    .B(_1983__bF$buf3),
    .C(_2054_),
    .Y(_1874_)
);

NAND2X1 _4374_ (
    .A(_1501_),
    .B(_1504_),
    .Y(_1505_)
);

FILL FILL144750x86550 (
);

FILL FILL_0__4414_ (
);

DFFPOSX1 _2860_ (
    .D(_594_),
    .CLK(clk_sys_bF$buf18),
    .Q(\u_rf_if.read_buf1 [21])
);

OAI21X1 _2440_ (
    .A(_1070_),
    .B(_1077_),
    .C(_834_),
    .Y(_1078_)
);

OAI22X1 _3645_ (
    .A(_2128_),
    .B(_2129_),
    .C(\u_cpu.bne_or_bge ),
    .D(_2132_),
    .Y(_2133_)
);

NAND3X1 _3225_ (
    .A(_2154__bF$buf4),
    .B(_1742_),
    .C(_2099_),
    .Y(_1739_)
);

OAI21X1 _4183_ (
    .A(_1166_),
    .B(_1165_),
    .C(_1167_),
    .Y(_1168_)
);

DFFPOSX1 _2916_ (
    .D(_564_),
    .CLK(clk_sys_bF$buf16),
    .Q(\u_rf_if.rreg1_latched [1])
);

FILL FILL_0__4643_ (
);

FILL FILL_1__2238_ (
);

NOR2X1 _3874_ (
    .A(\u_cpu.csr_imm_en ),
    .B(_654_),
    .Y(_655_)
);

NOR2X1 _3454_ (
    .A(\u_rf_if.read_buf0 [27]),
    .B(_446__bF$buf1),
    .Y(_312_)
);

OAI21X1 _3034_ (
    .A(\u_rf_if.rreg0_latched [3]),
    .B(\u_rf_if.issue_sel_bF$buf2 ),
    .C(_1603_),
    .Y(_1602_)
);

INVX1 _4659_ (
    .A(rf_read_reg0[2]),
    .Y(_1970_)
);

NAND2X1 _4239_ (
    .A(_1213_),
    .B(_1138_),
    .Y(_1214_)
);

INVX1 _2725_ (
    .A(\u_rf_serial.last_req_key [3]),
    .Y(_224_)
);

NAND2X1 _2305_ (
    .A(\u_mem_serial.shift_rx [29]),
    .B(_1297__bF$buf2),
    .Y(_1389_)
);

FILL FILL_0__4452_ (
);

FILL FILL_0__4032_ (
);

FILL FILL145050x3750 (
);

FILL FILL_1__4613_ (
);

AND2X2 _3683_ (
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.bufreg.i_shift_op ),
    .Y(_146_)
);

OAI21X1 _3263_ (
    .A(_18__bF$buf0),
    .B(_1770_),
    .C(\u_rf_if.read_buf1 [10]),
    .Y(_1766_)
);

NAND2X1 _4468_ (
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .B(_1553_),
    .Y(_1570_)
);

NAND2X1 _4048_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(_920_),
    .Y(_921_)
);

FILL FILL_0__3723_ (
);

FILL FILL_0__3303_ (
);

NAND2X1 _2954_ (
    .A(_611_),
    .B(_613_),
    .Y(_610_)
);

OR2X2 _2534_ (
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_983_)
);

FILL FILL_0__4681_ (
);

AOI21X1 _3739_ (
    .A(_175_),
    .B(_183_),
    .C(rst_bF$buf1),
    .Y(_131_)
);

NAND2X1 _3319_ (
    .A(_10__bF$buf3),
    .B(_1810_),
    .Y(_1809_)
);

FILL FILL_1__2276_ (
);

NOR2X1 _3492_ (
    .A(\u_rf_if.read_buf1 [23]),
    .B(_446__bF$buf0),
    .Y(_349_)
);

OAI21X1 _3072_ (
    .A(_1717__bF$buf4),
    .B(_1759_),
    .C(\u_rf_if.read_buf0 [6]),
    .Y(_1628_)
);

NAND2X1 _4697_ (
    .A(_1905_),
    .B(_1995_),
    .Y(_1996_)
);

AOI22X1 _4277_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [22]),
    .C(_1172__bF$buf0),
    .D(_1246_),
    .Y(_1247_)
);

FILL FILL_0__4317_ (
);

OAI21X1 _2763_ (
    .A(ren_bF$buf3),
    .B(_195_),
    .C(_196_),
    .Y(_197_)
);

OAI21X1 _2343_ (
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [4]),
    .Y(_1357_)
);

FILL FILL_0__4070_ (
);

OAI21X1 _3968_ (
    .A(_685_),
    .B(_724_),
    .C(_725_),
    .Y(_648_)
);

INVX1 _3548_ (
    .A(\u_rf_if.stream_active ),
    .Y(_450_)
);

NAND2X1 _3128_ (
    .A(\u_rf_if.stream_cnt [4]),
    .B(_42_),
    .Y(_1668_)
);

FILL FILL_0__2803_ (
);

FILL FILL_1__4651_ (
);

OAI21X1 _4086_ (
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_945_),
    .C(_946_),
    .Y(_882_)
);

FILL FILL_0__3341_ (
);

NOR2X1 _2819_ (
    .A(\u_rf_serial.tx_state [3]),
    .B(\u_rf_serial.tx_state [2]),
    .Y(_80_)
);

FILL FILL_0__4546_ (
);

OAI21X1 _2992_ (
    .A(rf_read_reg0_to_if[1]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_740_)
);

NAND2X1 _2572_ (
    .A(_843_),
    .B(_840_),
    .Y(_844_)
);

DFFPOSX1 _3777_ (
    .D(_763_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [30])
);

OR2X2 _3357_ (
    .A(_1_),
    .B(_8_),
    .Y(_2091_)
);

FILL FILL_0__2612_ (
);

FILL FILL_0__3817_ (
);

CLKBUF1 CLKBUF1_insert40 (
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf45)
);

CLKBUF1 CLKBUF1_insert41 (
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf44)
);

CLKBUF1 CLKBUF1_insert42 (
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf43)
);

CLKBUF1 CLKBUF1_insert43 (
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf42)
);

CLKBUF1 CLKBUF1_insert44 (
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf41)
);

CLKBUF1 CLKBUF1_insert45 (
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf40)
);

CLKBUF1 CLKBUF1_insert46 (
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf39)
);

CLKBUF1 CLKBUF1_insert47 (
    .A(clk_sys_hier0_bF$buf3),
    .Y(clk_sys_bF$buf38)
);

CLKBUF1 CLKBUF1_insert48 (
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf37)
);

CLKBUF1 CLKBUF1_insert49 (
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf36)
);

DFFPOSX1 _2628_ (
    .D(_61_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.last_req_key [3])
);

NAND2X1 _2208_ (
    .A(\u_mem_serial.shift_rx [16]),
    .B(_1425_),
    .Y(_1459_)
);

INVX1 _2381_ (
    .A(_1326_),
    .Y(_1327_)
);

INVX1 _3586_ (
    .A(\u_rf_if.o_waddr [1]),
    .Y(_480_)
);

OR2X2 _3166_ (
    .A(_1695_),
    .B(_1694_),
    .Y(_1693_)
);

FILL FILL_0__3626_ (
);

FILL FILL_0__3206_ (
);

DFFPOSX1 _2857_ (
    .D(_510_),
    .CLK(clk_sys_bF$buf26),
    .Q(raddr[1])
);

NAND3X1 _2437_ (
    .A(_1080_),
    .B(_1063_),
    .C(_1078_),
    .Y(_1081_)
);

FILL FILL_0__4584_ (
);

FILL FILL_1__2599_ (
);

DFFPOSX1 _2190_ (
    .D(_748_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.shift_rx [13])
);

OAI21X1 _3395_ (
    .A(_17_),
    .B(_13_),
    .C(_11_),
    .Y(_10_)
);

FILL FILL_0__2230_ (
);

AOI22X1 _2666_ (
    .A(_276_),
    .B(_277_),
    .C(_279_),
    .D(_278_),
    .Y(_280_)
);

OAI21X1 _2246_ (
    .A(_1309_),
    .B(_1431_),
    .C(_1310_),
    .Y(_1432_)
);

FILL FILL_1_BUFX2_insert202 (
);

FILL FILL_1_BUFX2_insert206 (
);

FILL FILL_0__2706_ (
);

DFFSR _4812_ (
    .R(vdd),
    .S(i_rst_n_bF$buf5),
    .D(_1854_),
    .CLK(clk_sys_bF$buf43),
    .Q(ibus_pending_rdt[1])
);

FILL FILL_0__3664_ (
);

FILL FILL_0__3244_ (
);

FILL FILL_1__2200_ (
);

FILL FILL_0__4449_ (
);

FILL FILL_1__3825_ (
);

DFFPOSX1 _2895_ (
    .D(_575_),
    .CLK(clk_sys_bF$buf39),
    .Q(\u_rf_if.read_buf1 [5])
);

OAI21X1 _2475_ (
    .A(\u_mem_serial.bit_count [4]),
    .B(_797_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_1043_)
);

FILL FILL_0__2515_ (
);

INVX1 _4621_ (
    .A(ibus_pending_rdt[10]),
    .Y(_1946_)
);

NOR2X1 _4201_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(_1179_),
    .Y(_1183_)
);

FILL FILL_0__4258_ (
);

FILL FILL_1__3214_ (
);

AOI21X1 _2284_ (
    .A(_1405_),
    .B(_1404_),
    .C(rst_bF$buf5),
    .Y(_767_)
);

OAI21X1 _3489_ (
    .A(_448_),
    .B(_347_),
    .C(_426_),
    .Y(_346_)
);

NOR2X1 _3069_ (
    .A(rst_bF$buf5),
    .B(_1696_),
    .Y(_527_)
);

FILL FILL_0__2744_ (
);

DFFSR _4850_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1867_),
    .CLK(clk_sys_bF$buf15),
    .Q(rf_read_reg0[0])
);

INVX1 _4430_ (
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1547_)
);

NAND2X1 _4010_ (
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(\u_cpu.bufreg.i_imm ),
    .Y(_894_)
);

FILL FILL_0__3949_ (
);

FILL FILL_0__3529_ (
);

FILL FILL_0__3109_ (
);

FILL FILL_0__3282_ (
);

NAND3X1 _3701_ (
    .A(_149_),
    .B(_160_),
    .C(_156_),
    .Y(rf_wreq)
);

NOR2X1 _3298_ (
    .A(_1796_),
    .B(_2152__bF$buf2),
    .Y(_1792_)
);

FILL FILL_0__2553_ (
);

FILL FILL_0_BUFX2_insert240 (
);

FILL FILL_0_BUFX2_insert242 (
);

FILL FILL_0_BUFX2_insert244 (
);

FILL FILL_1__2714_ (
);

OAI21X1 _2989_ (
    .A(rf_read_reg0_to_if[0]),
    .B(_1722_),
    .C(_32__bF$buf3),
    .Y(_738_)
);

NAND2X1 _2569_ (
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_847_)
);

NAND2X1 _3930_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .B(_665__bF$buf2),
    .Y(_700_)
);

OAI21X1 _3510_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .B(_394_),
    .C(_389_),
    .Y(_383_)
);

FILL FILL_0__4296_ (
);

NAND3X1 _4715_ (
    .A(\u_mem_serial.shift_rx [13]),
    .B(mem_ibus_ack_bF$buf1),
    .C(_1984__bF$buf4),
    .Y(_2008_)
);

FILL FILL_1__3252_ (
);

FILL FILL_0__2782_ (
);

FILL FILL_0__3567_ (
);

FILL FILL_0__3147_ (
);

FILL FILL_1__2523_ (
);

AOI22X1 _2798_ (
    .A(ren_bF$buf2),
    .B(_78_),
    .C(_100_),
    .D(_98_),
    .Y(_101_)
);

OAI21X1 _2378_ (
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [11]),
    .Y(_1329_)
);

FILL FILL_0__2418_ (
);

MUX2X1 _4524_ (
    .A(ibus_pending_rdt[13]),
    .B(\u_mem_serial.shift_rx [13]),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_1879_)
);

NAND2X1 _4104_ (
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.data [15]),
    .Y(_958_)
);

FILL FILL_0__2591_ (
);

FILL FILL_0__2171_ (
);

FILL FILL_1__2752_ (
);

FILL FILL_1__3537_ (
);

DFFPOSX1 _2187_ (
    .D(_770_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.bit_count [3])
);

FILL FILL_0__2647_ (
);

FILL FILL_0__2227_ (
);

NAND3X1 _4753_ (
    .A(rreg1[2]),
    .B(rf_rreq_bF$buf4),
    .C(_1895__bF$buf2),
    .Y(_2031_)
);

NOR2X1 _4333_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(_1284_),
    .Y(_1288_)
);

FILL FILL_1__3290_ (
);

FILL FILL_0__3185_ (
);

INVX1 _3604_ (
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_2073_)
);

FILL FILL_1__2561_ (
);

FILL FILL_1_BUFX2_insert172 (
);

FILL FILL_1_BUFX2_insert179 (
);

DFFPOSX1 _4809_ (
    .D(_546_),
    .CLK(clk_sys_bF$buf35),
    .Q(\u_rf_if.stream_cnt [4])
);

FILL FILL_1__3766_ (
);

FILL FILL_0__2456_ (
);

NAND2X1 _4562_ (
    .A(ibus_pending_ack_bF$buf0),
    .B(ibus_pending_rdt[5]),
    .Y(_1907_)
);

INVX2 _4142_ (
    .A(\u_cpu.bufreg.i_shift_op ),
    .Y(_1130_)
);

DFFPOSX1 _3833_ (
    .D(_757_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [4])
);

INVX1 _3413_ (
    .A(_42_),
    .Y(_27_)
);

FILL FILL_1__2790_ (
);

FILL FILL_0__4199_ (
);

INVX1 _4618_ (
    .A(ibus_pending_rdt[11]),
    .Y(_1944_)
);

FILL FILL_1__3575_ (
);

FILL FILL_0__2685_ (
);

NAND3X1 _4791_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [25]),
    .C(_1984__bF$buf0),
    .Y(_2053_)
);

FILL FILL_0__2265_ (
);

INVX1 _4371_ (
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_1502_)
);

FILL FILL_0__4411_ (
);

INVX1 _3642_ (
    .A(rdata0[0]),
    .Y(_2130_)
);

OAI21X1 _3222_ (
    .A(_2062__bF$buf1),
    .B(_1738_),
    .C(_32__bF$buf0),
    .Y(_1737_)
);

DFFSR _4847_ (
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1870_),
    .CLK(clk_sys_bF$buf1),
    .Q(ibus_pending_rdt[28])
);

OAI22X1 _4427_ (
    .A(_1541_),
    .B(_1531_),
    .C(_1545_),
    .D(_1535_),
    .Y(_1478_)
);

AND2X2 _4007_ (
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [0]),
    .Y(\u_cpu.alu.i_buf )
);

BUFX2 BUFX2_insert220 (
    .A(_2154_),
    .Y(_2154__bF$buf4)
);

BUFX2 BUFX2_insert221 (
    .A(_2154_),
    .Y(_2154__bF$buf3)
);

BUFX2 BUFX2_insert222 (
    .A(_2154_),
    .Y(_2154__bF$buf2)
);

BUFX2 BUFX2_insert223 (
    .A(_2154_),
    .Y(_2154__bF$buf1)
);

BUFX2 BUFX2_insert224 (
    .A(_2154_),
    .Y(_2154__bF$buf0)
);

BUFX2 BUFX2_insert225 (
    .A(_1172_),
    .Y(_1172__bF$buf3)
);

FILL FILL_1__4169_ (
);

BUFX2 BUFX2_insert226 (
    .A(_1172_),
    .Y(_1172__bF$buf2)
);

BUFX2 BUFX2_insert227 (
    .A(_1172_),
    .Y(_1172__bF$buf1)
);

BUFX2 BUFX2_insert228 (
    .A(_1172_),
    .Y(_1172__bF$buf0)
);

BUFX2 BUFX2_insert229 (
    .A(_1877_),
    .Y(_1877__bF$buf5)
);

FILL FILL_0__2494_ (
);

NOR2X1 _4180_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1165_)
);

DFFPOSX1 _2913_ (
    .D(_523_),
    .CLK(clk_sys_bF$buf12),
    .Q(\u_rf_if.read_buf0 [3])
);

FILL FILL_0__4220_ (
);

DFFPOSX1 _3871_ (
    .D(_369_),
    .CLK(clk_sys_bF$buf32),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

NOR2X1 _3451_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_310_),
    .Y(_309_)
);

NAND2X1 _3031_ (
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_1721_),
    .Y(_1600_)
);

INVX1 _4656_ (
    .A(ibus_pending_rdt[31]),
    .Y(_1968_)
);

AOI22X1 _4236_ (
    .A(_1142_),
    .B(_1206_),
    .C(_1211_),
    .D(_1209_),
    .Y(_1107_)
);

FILL FILL_0__3911_ (
);

OAI21X1 _2722_ (
    .A(ren_bF$buf0),
    .B(\u_rf_if.o_wen ),
    .C(\u_rf_serial.req_seen ),
    .Y(_226_)
);

AOI21X1 _2302_ (
    .A(_1388_),
    .B(_1391_),
    .C(rst_bF$buf3),
    .Y(_763_)
);

FILL FILL_0__3088_ (
);

NAND2X1 _3927_ (
    .A(\u_cpu.csr_imm ),
    .B(_665__bF$buf1),
    .Y(_698_)
);

OAI21X1 _3507_ (
    .A(\u_rf_if.read_buf1 [29]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_380_)
);

NAND2X1 _3680_ (
    .A(_142_),
    .B(_143_),
    .Y(\u_cpu.alu.i_en )
);

NAND2X1 _3260_ (
    .A(_11_),
    .B(_1820_),
    .Y(_1764_)
);

NAND2X1 _4465_ (
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .B(_1553_),
    .Y(_1568_)
);

INVX1 _4045_ (
    .A(\u_cpu.bufreg.i_cnt1 ),
    .Y(_918_)
);

OAI21X1 _2951_ (
    .A(_426_),
    .B(_39_),
    .C(\u_rf_if.stream_active ),
    .Y(_608_)
);

NAND3X1 _2531_ (
    .A(_798_),
    .B(_983_),
    .C(_985_),
    .Y(_986_)
);

OAI21X1 _3736_ (
    .A(_180_),
    .B(_179_),
    .C(_181_),
    .Y(_182_)
);

NAND3X1 _3316_ (
    .A(_2154__bF$buf2),
    .B(_2062__bF$buf2),
    .C(_1807_),
    .Y(_1806_)
);

FILL FILL_1__3898_ (
);

FILL FILL_1__3058_ (
);

FILL FILL_0__2588_ (
);

NAND2X1 _4694_ (
    .A(current_wdata0_next_hint),
    .B(_1895__bF$buf0),
    .Y(_1993_)
);

INVX1 _4274_ (
    .A(\u_cpu.bufreg2.dlo [22]),
    .Y(_1244_)
);

FILL FILL_0__4734_ (
);

FILL FILL_1__2329_ (
);

NAND3X1 _2760_ (
    .A(_109_),
    .B(_126_),
    .C(_199_),
    .Y(_200_)
);

NAND3X1 _2340_ (
    .A(_1315__bF$buf3),
    .B(_1359_),
    .C(_1303__bF$buf1),
    .Y(_1360_)
);

OAI21X1 _3965_ (
    .A(_685_),
    .B(_722_),
    .C(_723_),
    .Y(_647_)
);

NOR2X1 _3545_ (
    .A(\u_rf_if.read_buf1 [12]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .Y(_447_)
);

AOI21X1 _3125_ (
    .A(_1753_),
    .B(_1668_),
    .C(_1666_),
    .Y(_546_)
);

FILL FILL145050x90150 (
);

FILL FILL145050x57750 (
);

OAI21X1 _4083_ (
    .A(_892__bF$buf4),
    .B(_942_),
    .C(_944_),
    .Y(_881_)
);

OAI21X1 _2816_ (
    .A(_79_),
    .B(_81_),
    .C(_82_),
    .Y(_83_)
);

FILL FILL_1__2978_ (
);

FILL FILL_1__4704_ (
);

DFFPOSX1 _3774_ (
    .D(_787_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(mem_ibus_ack)
);

NOR3X1 _3354_ (
    .A(_2092_),
    .B(_2091_),
    .C(_2089_),
    .Y(_2088_)
);

OAI21X1 _4559_ (
    .A(ibus_pending_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1904_),
    .Y(_1905_)
);

DFFPOSX1 _4139_ (
    .D(_879_),
    .CLK(clk_sys_bF$buf19),
    .Q(\u_cpu.bufreg.data [23])
);

FILL FILL_1__3096_ (
);

FILL FILL144750x39750 (
);

DFFPOSX1 _2625_ (
    .D(_72_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_serial.tx_state [3])
);

NAND2X1 _2205_ (
    .A(\u_mem_serial.shift_rx [15]),
    .B(_1425_),
    .Y(_1461_)
);

FILL FILL_0__4772_ (
);

FILL FILL_1__2367_ (
);

OAI21X1 _3583_ (
    .A(\u_rf_if.rcnt [2]),
    .B(_478_),
    .C(rf_wdata0_next_to_if),
    .Y(_477_)
);

NOR2X1 _3163_ (
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.pending_read ),
    .Y(_1691_)
);

OAI21X1 _4788_ (
    .A(_1934_),
    .B(_1983__bF$buf1),
    .C(_2051_),
    .Y(_1871_)
);

DFFPOSX1 _4368_ (
    .D(_1114_),
    .CLK(clk_sys_bF$buf4),
    .Q(\u_cpu.bufreg2.dlo [21])
);

FILL FILL_0__3623_ (
);

DFFPOSX1 _2854_ (
    .D(_597_),
    .CLK(clk_sys_bF$buf22),
    .Q(\u_rf_if.read_buf1 [24])
);

NAND2X1 _2434_ (
    .A(_1083_),
    .B(_1045_),
    .Y(_1084_)
);

FILL FILL_0__4161_ (
);

NAND3X1 _3639_ (
    .A(\u_cpu.alu.i_cnt0 ),
    .B(\u_cpu.alu.cmp_r ),
    .C(\u_cpu.state.i_alu_rd_sel1 ),
    .Y(_2127_)
);

OAI21X1 _3219_ (
    .A(_2100_),
    .B(_1738_),
    .C(_1736_),
    .Y(_1735_)
);

FILL FILL_1__4742_ (
);

NOR2X1 _3392_ (
    .A(_9_),
    .B(_8_),
    .Y(_7_)
);

BUFX2 BUFX2_insert190 (
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf7)
);

BUFX2 BUFX2_insert191 (
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf6)
);

BUFX2 BUFX2_insert192 (
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf5)
);

BUFX2 BUFX2_insert193 (
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf4)
);

BUFX2 BUFX2_insert194 (
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf3)
);

BUFX2 BUFX2_insert195 (
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf2)
);

BUFX2 BUFX2_insert196 (
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf1)
);

BUFX2 BUFX2_insert197 (
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf0)
);

BUFX2 BUFX2_insert198 (
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf4 )
);

BUFX2 BUFX2_insert199 (
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf3 )
);

INVX1 _4597_ (
    .A(ibus_pending_rdt[29]),
    .Y(_1930_)
);

NOR2X1 _4177_ (
    .A(_1132_),
    .B(_1161_),
    .Y(_1162_)
);

FILL FILL_0__3852_ (
);

FILL FILL_0__3432_ (
);

FILL FILL_0__3012_ (
);

FILL FILL_0__4637_ (
);

AOI21X1 _2663_ (
    .A(_282_),
    .B(_231_),
    .C(rst_bF$buf4),
    .Y(_64_)
);

NAND2X1 _2243_ (
    .A(\u_mem_serial.shift_rx [23]),
    .B(_1425_),
    .Y(_1434_)
);

FILL FILL_0__4390_ (
);

DFFPOSX1 _3868_ (
    .D(_359_),
    .CLK(clk_sys_bF$buf32),
    .Q(\u_cpu.bne_or_bge )
);

NOR2X1 _3448_ (
    .A(\u_rf_if.read_buf0 [31]),
    .B(_446__bF$buf3),
    .Y(_306_)
);

AOI21X1 _3028_ (
    .A(_1697_),
    .B(_1599_),
    .C(_1598_),
    .Y(_515_)
);

FILL FILL_0__2703_ (
);

FILL FILL_0__3661_ (
);

NAND2X1 _2719_ (
    .A(ren_bF$buf1),
    .B(raddr[2]),
    .Y(_228_)
);

DFFPOSX1 _2892_ (
    .D(_528_),
    .CLK(clk_sys_bF$buf39),
    .Q(\u_rf_if.read_buf0 [6])
);

NAND2X1 _2472_ (
    .A(_1043_),
    .B(_1045_),
    .Y(_1046_)
);

INVX2 _3677_ (
    .A(_141_),
    .Y(\u_cpu.bufreg.i_cnt_done )
);

AOI21X1 _3257_ (
    .A(_1762_),
    .B(_1763_),
    .C(rst_bF$buf8),
    .Y(_582_)
);

FILL FILL_0__2512_ (
);

FILL FILL_1__4780_ (
);

FILL FILL_0_BUFX2_insert90 (
);

FILL FILL_0__3890_ (
);

FILL FILL_0_BUFX2_insert92 (
);

FILL FILL_0__3470_ (
);

FILL FILL_0__3050_ (
);

FILL FILL_0_BUFX2_insert94 (
);

FILL FILL_0_BUFX2_insert96 (
);

FILL FILL_0_BUFX2_insert98 (
);

FILL FILL_0_BUFX2_insert99 (
);

DFFPOSX1 _2948_ (
    .D(_515_),
    .CLK(clk_sys_bF$buf33),
    .Q(raddr[6])
);

MUX2X1 _2528_ (
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .B(\u_cpu.bufreg.data [28]),
    .S(\u_mem_serial.active_ibus_bF$buf1 ),
    .Y(_989_)
);

FILL FILL_0__4675_ (
);

NAND2X1 _2281_ (
    .A(_1307_),
    .B(_1407_),
    .Y(_1408_)
);

FILL FILL_1__4416_ (
);

AOI21X1 _3486_ (
    .A(_412_),
    .B(_344_),
    .C(_450_),
    .Y(rdata1[0])
);

NAND2X1 _3066_ (
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1625_),
    .Y(_1624_)
);

OAI21X1 _2757_ (
    .A(_81_),
    .B(_79_),
    .C(\u_rf_serial.tx_state [4]),
    .Y(_201_)
);

NAND2X1 _2337_ (
    .A(\u_mem_serial.shift_rx [2]),
    .B(_1297__bF$buf3),
    .Y(_1362_)
);

FILL FILL_1__3020_ (
);

OAI21X1 _3295_ (
    .A(_18__bF$buf2),
    .B(_1794_),
    .C(\u_rf_if.read_buf1 [18]),
    .Y(_1790_)
);

FILL FILL_0__2550_ (
);

FILL FILL_0_BUFX2_insert210 (
);

FILL FILL_0_BUFX2_insert212 (
);

FILL FILL_0_BUFX2_insert213 (
);

FILL FILL_0_BUFX2_insert215 (
);

FILL FILL_0_BUFX2_insert217 (
);

FILL FILL_0_BUFX2_insert219 (
);

FILL FILL_0__3335_ (
);

NOR2X1 _2986_ (
    .A(_737_),
    .B(_1700_),
    .Y(_736_)
);

NAND3X1 _2566_ (
    .A(_805_),
    .B(_844_),
    .C(_849_),
    .Y(_850_)
);

NAND3X1 _4712_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1984__bF$buf0),
    .Y(_2006_)
);

FILL FILL_1__4454_ (
);

FILL FILL_1__4034_ (
);

FILL FILL_1__3305_ (
);

OAI21X1 _2795_ (
    .A(_91_),
    .B(_102_),
    .C(_103_),
    .Y(_104_)
);

NAND3X1 _2375_ (
    .A(_1315__bF$buf1),
    .B(_1331_),
    .C(_1303__bF$buf3),
    .Y(_1332_)
);

FILL FILL_0__2415_ (
);

INVX8 _4521_ (
    .A(ibus_pending_ack_bF$buf1),
    .Y(_1877_)
);

NAND2X1 _4101_ (
    .A(\u_cpu.bufreg.data [15]),
    .B(_892__bF$buf2),
    .Y(_956_)
);

FILL FILL_0__3373_ (
);

FILL FILL_0__4578_ (
);

BUFX2 _2184_ (
    .A(gnd),
    .Y(o_gpio_oe[1])
);

INVX2 _3389_ (
    .A(\u_rf_if.issue_chunk [1]),
    .Y(_4_)
);

FILL FILL_0__2644_ (
);

NAND3X1 _4750_ (
    .A(rreg1[3]),
    .B(rf_rreq_bF$buf5),
    .C(_1895__bF$buf3),
    .Y(_2029_)
);

AOI22X1 _4330_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [10]),
    .C(_1172__bF$buf2),
    .D(_1285_),
    .Y(_1286_)
);

FILL FILL145050x133350 (
);

FILL FILL_0__3009_ (
);

FILL FILL_1__4072_ (
);

FILL FILL_1__2805_ (
);

NAND2X1 _3601_ (
    .A(\u_cpu.alu.i_rd_sel [0]),
    .B(\u_cpu.decode.co_rd_alu_en ),
    .Y(_1823_)
);

FILL FILL_1_BUFX2_insert141 (
);

FILL FILL_1_BUFX2_insert145 (
);

FILL FILL_1_BUFX2_insert149 (
);

DFFPOSX1 _4806_ (
    .D(_58_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_serial.last_req_key [6])
);

FILL FILL_1__3343_ (
);

FILL FILL_1__4548_ (
);

AOI21X1 _3198_ (
    .A(_1722_),
    .B(_1721_),
    .C(_1720_),
    .Y(_565_)
);

FILL FILL_0__2453_ (
);

FILL FILL_1__2614_ (
);

DFFPOSX1 _2889_ (
    .D(_506_),
    .CLK(clk_sys_bF$buf22),
    .Q(\u_rf_if.issue_sel )
);

AOI22X1 _2469_ (
    .A(_840_),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(\u_cpu.bufreg2.dlo [18]),
    .D(_1048_),
    .Y(_1049_)
);

NOR2X1 _3830_ (
    .A(_390_),
    .B(_397_),
    .Y(\u_cpu.decode.co_immdec_ctrl [0])
);

INVX1 _3410_ (
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .Y(_25_)
);

INVX1 _4615_ (
    .A(ibus_pending_rdt[19]),
    .Y(_1942_)
);

FILL FILL_0__2682_ (
);

FILL FILL_0__3887_ (
);

FILL FILL_0__3047_ (
);

FILL FILL_1__3628_ (
);

NAND2X1 _2698_ (
    .A(\u_rf_serial.last_req_key [3]),
    .B(_119_),
    .Y(_248_)
);

NAND3X1 _2278_ (
    .A(\u_cpu.o_dbus_cyc ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .C(_1410_),
    .Y(_1411_)
);

DFFSR _4844_ (
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1873_),
    .CLK(clk_sys_bF$buf1),
    .Q(ibus_pending_rdt[25])
);

FILL FILL_0__2318_ (
);

INVX1 _4424_ (
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1544_)
);

DFFPOSX1 _4004_ (
    .D(_643_),
    .CLK(clk_sys_bF$buf23),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

FILL FILL_1__3381_ (
);

FILL FILL_1__4586_ (
);

FILL FILL_0__2491_ (
);

DFFPOSX1 _2910_ (
    .D(_567_),
    .CLK(clk_sys_bF$buf17),
    .Q(\u_rf_if.wen1_r )
);

FILL FILL_0__3696_ (
);

FILL FILL_0__2967_ (
);

NAND3X1 _4653_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [19]),
    .C(_1897_),
    .Y(_1967_)
);

NAND3X1 _4233_ (
    .A(_1134_),
    .B(_1208_),
    .C(_1145_),
    .Y(_1209_)
);

FILL FILL_0_BUFX2_insert181 (
);

FILL FILL_0_BUFX2_insert183 (
);

FILL FILL_0_BUFX2_insert185 (
);

FILL FILL_0_BUFX2_insert187 (
);

FILL FILL_0_BUFX2_insert189 (
);

FILL FILL_0__3085_ (
);

NAND2X1 _3924_ (
    .A(rreg0[1]),
    .B(_665__bF$buf1),
    .Y(_696_)
);

OAI22X1 _3504_ (
    .A(_381_),
    .B(_380_),
    .C(_379_),
    .D(_377_),
    .Y(_374_)
);

OAI21X1 _4709_ (
    .A(_1884_),
    .B(_1983__bF$buf4),
    .C(_2004_),
    .Y(_1839_)
);

FILL FILL_0__2356_ (
);

NAND2X1 _4462_ (
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .B(_1553_),
    .Y(_1566_)
);

OAI21X1 _4042_ (
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(_914_),
    .C(_915_),
    .Y(_869_)
);

AND2X2 _3733_ (
    .A(_178_),
    .B(\u_cpu.alu.o_cmp ),
    .Y(_179_)
);

NAND3X1 _3313_ (
    .A(_2154__bF$buf2),
    .B(_1807_),
    .C(_2099_),
    .Y(_1804_)
);

FILL FILL_0__4099_ (
);

DFFPOSX1 _4518_ (
    .D(_1474_),
    .CLK(clk_sys_bF$buf29),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

FILL FILL_0__2165_ (
);

NOR2X1 _4691_ (
    .A(clk_sys_bF$buf41),
    .B(_1977_),
    .Y(_1991_)
);

OAI21X1 _4271_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_1210_),
    .C(_1241_),
    .Y(_1242_)
);

FILL FILL_0__4311_ (
);

OAI21X1 _3962_ (
    .A(_685_),
    .B(_720_),
    .C(_721_),
    .Y(_646_)
);

OAI21X1 _3542_ (
    .A(\u_rf_if.read_buf1 [13]),
    .B(_446__bF$buf0),
    .C(_445_),
    .Y(_444_)
);

AOI21X1 _3122_ (
    .A(_1664_),
    .B(_1665_),
    .C(rst_bF$buf0),
    .Y(_545_)
);

NAND3X1 _4747_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [0]),
    .C(_1984__bF$buf3),
    .Y(_2027_)
);

OAI21X1 _4327_ (
    .A(_1281_),
    .B(_1164__bF$buf1),
    .C(_1283_),
    .Y(_1126_)
);

FILL FILL_0__2394_ (
);

NAND2X1 _4080_ (
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(\u_cpu.bufreg.data [23]),
    .Y(_943_)
);

NAND2X1 _2813_ (
    .A(\u_rf_if.o_wen ),
    .B(\u_rf_serial.tx_state [2]),
    .Y(_86_)
);

INVX1 _3771_ (
    .A(_375_),
    .Y(_376_)
);

OAI21X1 _3351_ (
    .A(_18__bF$buf2),
    .B(_2094_),
    .C(\u_rf_if.read_buf1 [28]),
    .Y(_2070_)
);

OAI21X1 _4556_ (
    .A(_1901_),
    .B(rf_rreq_bF$buf2),
    .C(_1902_),
    .Y(rf_read_reg0_to_if[0])
);

DFFPOSX1 _4136_ (
    .D(_882_),
    .CLK(clk_sys_bF$buf11),
    .Q(\u_cpu.bufreg.data [20])
);

FILL FILL_0__3811_ (
);

FILL FILL_1__4298_ (
);

INVX1 _2622_ (
    .A(_2158_),
    .Y(_794_)
);

OAI21X1 _2202_ (
    .A(_1414_),
    .B(_1435_),
    .C(_1462_),
    .Y(_1463_)
);

FILL FILL144750x93750 (
);

NOR2X1 _3827_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.bufreg.i_shift_op )
);

INVX1 _3407_ (
    .A(\u_rf_if.issue_chunk [3]),
    .Y(_22_)
);

FILL FILL_1__3149_ (
);

NAND2X1 _3580_ (
    .A(_475_),
    .B(_476_),
    .Y(_474_)
);

OAI21X1 _3160_ (
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [1]),
    .C(_485_),
    .Y(_1689_)
);

NAND3X1 _4785_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [28]),
    .C(_1984__bF$buf0),
    .Y(_2050_)
);

FILL FILL_0__2259_ (
);

DFFPOSX1 _4365_ (
    .D(_1117_),
    .CLK(clk_sys_bF$buf4),
    .Q(\u_cpu.bufreg2.dlo [18])
);

FILL FILL_0__4405_ (
);

DFFPOSX1 _2851_ (
    .D(_538_),
    .CLK(clk_sys_bF$buf21),
    .Q(\u_rf_if.read_buf0 [14])
);

NAND2X1 _2431_ (
    .A(_1086_),
    .B(_1082_),
    .Y(_1087_)
);

NAND2X1 _3636_ (
    .A(_2123_),
    .B(_2122_),
    .Y(_2124_)
);

INVX1 _3216_ (
    .A(\u_rf_if.wen0_r ),
    .Y(_1734_)
);

FILL FILL_1__2173_ (
);

BUFX2 BUFX2_insert160 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf6)
);

BUFX2 BUFX2_insert161 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf5)
);

BUFX2 BUFX2_insert162 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf4)
);

BUFX2 BUFX2_insert163 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf3)
);

BUFX2 BUFX2_insert164 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf2)
);

BUFX2 BUFX2_insert165 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf1)
);

BUFX2 BUFX2_insert166 (
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf0)
);

BUFX2 BUFX2_insert167 (
    .A(_892_),
    .Y(_892__bF$buf4)
);

BUFX2 BUFX2_insert168 (
    .A(_892_),
    .Y(_892__bF$buf3)
);

BUFX2 BUFX2_insert169 (
    .A(_892_),
    .Y(_892__bF$buf2)
);

INVX1 _4594_ (
    .A(\u_mem_serial.shift_rx [30]),
    .Y(_1928_)
);

NAND3X1 _4174_ (
    .A(_1130_),
    .B(\u_cpu.alu.i_en ),
    .C(_1158_),
    .Y(_1159_)
);

DFFPOSX1 _2907_ (
    .D(_569_),
    .CLK(clk_sys_bF$buf41),
    .Q(\u_rf_if.wdata1_phase [1])
);

FILL FILL_0__4214_ (
);

FILL FILL_1__2649_ (
);

AOI21X1 _2660_ (
    .A(_238_),
    .B(_283_),
    .C(_284_),
    .Y(_65_)
);

OAI21X1 _2240_ (
    .A(_1414_),
    .B(_1435_),
    .C(_1381_),
    .Y(_1436_)
);

DFFPOSX1 _3865_ (
    .D(_362_),
    .CLK(clk_sys_bF$buf7),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

OAI21X1 _3445_ (
    .A(_448_),
    .B(_304_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_303_)
);

OAI21X1 _3025_ (
    .A(raddr[5]),
    .B(_1697_),
    .C(_32__bF$buf4),
    .Y(_1595_)
);

FILL FILL_1__3187_ (
);

FILL FILL_0__2297_ (
);

AOI21X1 _2716_ (
    .A(_227_),
    .B(_215__bF$buf1),
    .C(_230_),
    .Y(_63_)
);

FILL FILL_0__4443_ (
);

FILL FILL_0__4023_ (
);

FILL FILL_1__2458_ (
);

INVX2 _3674_ (
    .A(_139_),
    .Y(\u_cpu.bufreg.i_init )
);

AOI21X1 _3254_ (
    .A(_1760_),
    .B(_1761_),
    .C(rst_bF$buf8),
    .Y(_581_)
);

NAND2X1 _4459_ (
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .B(_1553_),
    .Y(_1564_)
);

OAI21X1 _4039_ (
    .A(_892__bF$buf3),
    .B(_911_),
    .C(_913_),
    .Y(_868_)
);

DFFPOSX1 _2945_ (
    .D(_548_),
    .CLK(clk_sys_bF$buf21),
    .Q(\u_rf_if.read_buf0 [23])
);

INVX1 _2525_ (
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_992_)
);

FILL FILL_0__4252_ (
);

FILL FILL_1__2687_ (
);

OAI21X1 _3483_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .B(_343_),
    .C(_342_),
    .Y(_341_)
);

NOR2X1 _3063_ (
    .A(_1692_),
    .B(_1622_),
    .Y(_526_)
);

NAND2X1 _4688_ (
    .A(_1963_),
    .B(_1895__bF$buf1),
    .Y(_1833_)
);

OAI21X1 _4268_ (
    .A(_1238_),
    .B(_1206_),
    .C(_1239_),
    .Y(_1111_)
);

INVX1 _2754_ (
    .A(\u_rf_serial.tx_state [4]),
    .Y(_203_)
);

AOI21X1 _2334_ (
    .A(_1361_),
    .B(_1364_),
    .C(rst_bF$buf4),
    .Y(_758_)
);

FILL FILL_0__4481_ (
);

FILL FILL_0__4061_ (
);

OAI21X1 _3959_ (
    .A(_685_),
    .B(_718_),
    .C(_719_),
    .Y(_645_)
);

OAI22X1 _3539_ (
    .A(_447_),
    .B(_444_),
    .C(_443_),
    .D(_442_),
    .Y(_441_)
);

AOI21X1 _3119_ (
    .A(_1662_),
    .B(_1663_),
    .C(rst_bF$buf0),
    .Y(_544_)
);

FILL FILL_1__2496_ (
);

FILL FILL_1__4222_ (
);

NAND3X1 _3292_ (
    .A(_4_),
    .B(_2090_),
    .C(_5_),
    .Y(_1788_)
);

DFFPOSX1 _4497_ (
    .D(_1497_),
    .CLK(clk_sys_bF$buf42),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

NAND2X1 _4077_ (
    .A(\u_cpu.bufreg.data [23]),
    .B(_892__bF$buf4),
    .Y(_941_)
);

FILL FILL_0__3332_ (
);

FILL FILL_0__4537_ (
);

FILL FILL_1__3913_ (
);

OAI21X1 _2983_ (
    .A(\u_rf_if.write_wait [3]),
    .B(_1703_),
    .C(_44_),
    .Y(_734_)
);

OAI21X1 _2563_ (
    .A(\u_mem_serial.bit_count_0_bF$buf0 ),
    .B(_852_),
    .C(_802_),
    .Y(_853_)
);

FILL FILL_0__4290_ (
);

INVX1 _3768_ (
    .A(_373_),
    .Y(\u_cpu.alu.i_rd_sel [0])
);

NAND3X1 _3348_ (
    .A(_2154__bF$buf0),
    .B(_10__bF$buf2),
    .C(_2068_),
    .Y(_2067_)
);

FILL FILL_0__2603_ (
);

FILL FILL_0__3808_ (
);

NAND2X1 _2619_ (
    .A(_795_),
    .B(_796_),
    .Y(_797_)
);

AOI21X1 _2792_ (
    .A(_101_),
    .B(_106_),
    .C(_97_),
    .Y(_107_)
);

NAND2X1 _2372_ (
    .A(\u_mem_serial.shift_rx [9]),
    .B(_1297__bF$buf4),
    .Y(_1334_)
);

DFFPOSX1 _3997_ (
    .D(_650_),
    .CLK(clk_sys_bF$buf27),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2])
);

INVX1 _3577_ (
    .A(gnd),
    .Y(_471_)
);

OAI21X1 _3157_ (
    .A(_1717__bF$buf3),
    .B(_2094_),
    .C(\u_rf_if.read_buf0 [28]),
    .Y(_1687_)
);

FILL FILL_0__3617_ (
);

FILL FILL_1__4260_ (
);

FILL FILL_0__3370_ (
);

DFFPOSX1 _2848_ (
    .D(_600_),
    .CLK(clk_sys_bF$buf35),
    .Q(\u_rf_if.read_buf1 [27])
);

NOR2X1 _2428_ (
    .A(_1083_),
    .B(_853_),
    .Y(_1090_)
);

FILL FILL_0__4575_ (
);

FILL FILL_0__4155_ (
);

FILL FILL_1__3951_ (
);

FILL FILL_1__3111_ (
);

BUFX2 _2181_ (
    .A(gnd),
    .Y(o_gpio_oe[4])
);

AND2X2 _3386_ (
    .A(_5_),
    .B(_1_),
    .Y(_0_)
);

FILL FILL_0__2221_ (
);

INVX1 _2657_ (
    .A(\u_rf_serial.shift_rx [1]),
    .Y(_286_)
);

NAND2X1 _2237_ (
    .A(\u_mem_serial.shift_rx [22]),
    .B(_1425_),
    .Y(_1438_)
);

FILL FILL_0__4384_ (
);

FILL FILL_1_BUFX2_insert111 (
);

FILL FILL_1_BUFX2_insert115 (
);

DFFSR _4803_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1859_),
    .CLK(clk_sys_bF$buf15),
    .Q(rf_read_reg1[0])
);

AOI21X1 _3195_ (
    .A(_1722_),
    .B(_1719_),
    .C(_1718_),
    .Y(_564_)
);

FILL FILL_0__3655_ (
);

FILL FILL_0__3235_ (
);

DFFPOSX1 _2886_ (
    .D(_581_),
    .CLK(clk_sys_bF$buf22),
    .Q(\u_rf_if.read_buf1 [8])
);

AOI22X1 _2466_ (
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_795_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [20]),
    .Y(_1052_)
);

FILL FILL_0__4193_ (
);

FILL FILL_0__2506_ (
);

INVX1 _4612_ (
    .A(ibus_pending_rdt[24]),
    .Y(_1940_)
);

FILL FILL_1__2420_ (
);

FILL FILL_0__4249_ (
);

NAND2X1 _2695_ (
    .A(\u_rf_if.o_waddr [5]),
    .B(_91_),
    .Y(_251_)
);

NOR2X1 _2275_ (
    .A(rst_bF$buf1),
    .B(_1412_),
    .Y(_769_)
);

FILL FILL_0__2735_ (
);

DFFSR _4841_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1825_),
    .CLK(clk_sys_bF$buf20),
    .Q(rf_read_reg0[4])
);

OAI22X1 _4421_ (
    .A(_1542_),
    .B(_1531_),
    .C(_1538_),
    .D(_1535_),
    .Y(_1475_)
);

DFFPOSX1 _4001_ (
    .D(_646_),
    .CLK(clk_sys_bF$buf20),
    .Q(rreg1[2])
);

FILL FILL_0__3273_ (
);

FILL FILL_1__3434_ (
);

FILL FILL_1__4639_ (
);

NAND3X1 _3289_ (
    .A(_2154__bF$buf1),
    .B(_5_),
    .C(_1786_),
    .Y(_1785_)
);

FILL FILL_0__2544_ (
);

NAND3X1 _4650_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [24]),
    .C(_1897_),
    .Y(_1965_)
);

NOR3X1 _4230_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(_1136_),
    .C(_1172__bF$buf1),
    .Y(_1206_)
);

FILL FILL_0_BUFX2_insert151 (
);

FILL FILL_0__3749_ (
);

NAND2X1 _3921_ (
    .A(rreg0[2]),
    .B(_665__bF$buf0),
    .Y(_694_)
);

INVX1 _3501_ (
    .A(\u_rf_if.read_buf1 [16]),
    .Y(_360_)
);

FILL FILL_0__4287_ (
);

INVX1 _4706_ (
    .A(_1894_),
    .Y(_2003_)
);

AOI21X1 _3098_ (
    .A(_1646_),
    .B(_1647_),
    .C(rst_bF$buf2),
    .Y(_537_)
);

FILL FILL_0__2773_ (
);

FILL FILL_0__3978_ (
);

FILL FILL_0__3558_ (
);

FILL FILL_0__3138_ (
);

FILL FILL_1__3719_ (
);

OR2X2 _2789_ (
    .A(ren_bF$buf4),
    .B(\u_rf_if.o_waddr [5]),
    .Y(_110_)
);

AOI21X1 _2369_ (
    .A(_1333_),
    .B(_1336_),
    .C(rst_bF$buf10),
    .Y(_751_)
);

NAND3X1 _3730_ (
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_176_)
);

OAI21X1 _3310_ (
    .A(_18__bF$buf4),
    .B(_1803_),
    .C(\u_rf_if.read_buf1 [21]),
    .Y(_1802_)
);

FILL FILL_0__2409_ (
);

DFFPOSX1 _4515_ (
    .D(_1495_),
    .CLK(clk_sys_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

FILL FILL_1__3472_ (
);

FILL FILL_1__4677_ (
);

FILL FILL_0__2582_ (
);

FILL FILL_0__3787_ (
);

OAI22X1 _2598_ (
    .A(_806_),
    .B(_816_),
    .C(_807_),
    .D(_817_),
    .Y(_818_)
);

BUFX2 _2178_ (
    .A(gnd),
    .Y(o_gpio_oe[7])
);

NAND3X1 _4744_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [1]),
    .C(_1984__bF$buf3),
    .Y(_2025_)
);

INVX1 _4324_ (
    .A(\u_cpu.bufreg2.dlo [11]),
    .Y(_1281_)
);

OAI21X1 _2810_ (
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .C(\u_rf_serial.tx_state [2]),
    .Y(_89_)
);

FILL FILL_0__3176_ (
);

FILL FILL_0__2447_ (
);

OAI21X1 _4553_ (
    .A(_1877__bF$buf0),
    .B(_1899_),
    .C(_1900_),
    .Y(\u_cpu.decode.i_wb_rdt [15])
);

DFFPOSX1 _4133_ (
    .D(_885_),
    .CLK(clk_sys_bF$buf11),
    .Q(\u_cpu.bufreg.data [17])
);

NAND2X1 _3824_ (
    .A(\u_cpu.cond_branch ),
    .B(_386_),
    .Y(_403_)
);

NAND3X1 _3404_ (
    .A(_24_),
    .B(_23_),
    .C(_20_),
    .Y(_19_)
);

INVX1 _4609_ (
    .A(ibus_pending_rdt[25]),
    .Y(_1938_)
);

FILL FILL_0__2676_ (
);

OAI21X1 _4782_ (
    .A(_2047_),
    .B(_1983__bF$buf1),
    .C(_2048_),
    .Y(_1868_)
);

DFFPOSX1 _4362_ (
    .D(_1120_),
    .CLK(clk_sys_bF$buf25),
    .Q(\u_cpu.bufreg2.dlo [15])
);

INVX1 _3633_ (
    .A(_2112_),
    .Y(_2121_)
);

OAI21X1 _3213_ (
    .A(gnd),
    .B(_484__bF$buf1),
    .C(_32__bF$buf4),
    .Y(_1732_)
);

DFFSR _4838_ (
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1828_),
    .CLK(clk_sys_bF$buf14),
    .Q(ibus_pending_rdt[23])
);

INVX1 _4418_ (
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_1541_)
);

FILL FILL_1__3795_ (
);

BUFX2 BUFX2_insert130 (
    .A(rst),
    .Y(rst_bF$buf7)
);

BUFX2 BUFX2_insert131 (
    .A(rst),
    .Y(rst_bF$buf6)
);

BUFX2 BUFX2_insert132 (
    .A(rst),
    .Y(rst_bF$buf5)
);

BUFX2 BUFX2_insert133 (
    .A(rst),
    .Y(rst_bF$buf4)
);

BUFX2 BUFX2_insert134 (
    .A(rst),
    .Y(rst_bF$buf3)
);

BUFX2 BUFX2_insert135 (
    .A(rst),
    .Y(rst_bF$buf2)
);

BUFX2 BUFX2_insert136 (
    .A(rst),
    .Y(rst_bF$buf1)
);

BUFX2 BUFX2_insert137 (
    .A(rst),
    .Y(rst_bF$buf0)
);

BUFX2 BUFX2_insert138 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf3)
);

BUFX2 BUFX2_insert139 (
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf2)
);

FILL FILL_0__2485_ (
);

INVX1 _4591_ (
    .A(ibus_pending_rdt[23]),
    .Y(_1926_)
);

AND2X2 _4171_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1156_)
);

DFFPOSX1 _2904_ (
    .D(_525_),
    .CLK(clk_sys_bF$buf39),
    .Q(\u_rf_if.read_buf0 [5])
);

FILL FILL_0__4211_ (
);

DFFPOSX1 _3862_ (
    .D(_365_),
    .CLK(clk_sys_bF$buf32),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

OAI21X1 _3442_ (
    .A(\u_rf_if.read_buf0 [17]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_300_)
);

OAI21X1 _3022_ (
    .A(\u_rf_if.rreg0_latched [0]),
    .B(\u_rf_if.issue_sel_bF$buf0 ),
    .C(_1594_),
    .Y(_1593_)
);

INVX1 _4647_ (
    .A(has_fetched_first_insn),
    .Y(_1963_)
);

OAI21X1 _4227_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(_1202_),
    .C(_1203_),
    .Y(_1204_)
);

FILL FILL_0__3902_ (
);

NOR3X1 _2713_ (
    .A(\u_rf_serial.launch_pending ),
    .B(_232_),
    .C(_205_),
    .Y(_233_)
);

FILL FILL_0__3499_ (
);

FILL FILL_0__3079_ (
);

NAND2X1 _3918_ (
    .A(rreg0[3]),
    .B(_665__bF$buf0),
    .Y(_692_)
);

FILL FILL_1__4601_ (
);

AOI21X1 _3671_ (
    .A(\u_cpu.decode.co_rd_mem_en ),
    .B(\u_cpu.mem_if.o_rd ),
    .C(\u_cpu.ctrl.o_rd ),
    .Y(_37_)
);

NOR2X1 _3251_ (
    .A(_1811_),
    .B(_10__bF$buf3),
    .Y(_1757_)
);

NAND2X1 _4456_ (
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .B(_1553_),
    .Y(_1562_)
);

NAND2X1 _4036_ (
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [5]),
    .Y(_912_)
);

FILL FILL_1_CLKBUF1_insert73 (
);

FILL FILL_1_CLKBUF1_insert77 (
);

FILL FILL_0_BUFX2_insert31 (
);

FILL FILL_0_BUFX2_insert33 (
);

FILL FILL_0_BUFX2_insert35 (
);

FILL FILL_0_BUFX2_insert37 (
);

FILL FILL_0_BUFX2_insert39 (
);

DFFPOSX1 _2942_ (
    .D(_486_),
    .CLK(clk_sys_bF$buf29),
    .Q(\u_rf_if.stream_cnt [3])
);

NAND3X1 _2522_ (
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .B(_994_),
    .C(_993_),
    .Y(_995_)
);

AND2X2 _3727_ (
    .A(_161_),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_129_)
);

AOI21X1 _3307_ (
    .A(_1800_),
    .B(_1802_),
    .C(rst_bF$buf0),
    .Y(_594_)
);

OAI21X1 _3480_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .B(_340_),
    .C(_339_),
    .Y(_338_)
);

AOI21X1 _3060_ (
    .A(_1620_),
    .B(_1621_),
    .C(rst_bF$buf0),
    .Y(_525_)
);

FILL FILL_0__2999_ (
);

OAI21X1 _4685_ (
    .A(_1914_),
    .B(_1983__bF$buf3),
    .C(_1988_),
    .Y(_1831_)
);

OAI21X1 _4265_ (
    .A(_1213_),
    .B(_1136_),
    .C(_1236_),
    .Y(_1237_)
);

FILL FILL_0__3940_ (
);

FILL FILL_0__3520_ (
);

FILL FILL_0__3100_ (
);

FILL FILL_0__4725_ (
);

OAI21X1 _2751_ (
    .A(ren_bF$buf0),
    .B(\u_rf_if.o_wen ),
    .C(\u_rf_serial.launch_pending ),
    .Y(_206_)
);

INVX1 _2331_ (
    .A(_1366_),
    .Y(_1367_)
);

OAI21X1 _3956_ (
    .A(_683_),
    .B(_716_),
    .C(_717_),
    .Y(_644_)
);

OAI21X1 _3536_ (
    .A(\u_rf_if.read_buf1 [9]),
    .B(_446__bF$buf2),
    .C(_445_),
    .Y(_438_)
);

AOI21X1 _3116_ (
    .A(_1660_),
    .B(_1661_),
    .C(rst_bF$buf9),
    .Y(_543_)
);

FILL FILL_1__3698_ (
);

FILL FILL_1__3278_ (
);

FILL FILL_0__2388_ (
);

DFFPOSX1 _4494_ (
    .D(_1485_),
    .CLK(clk_sys_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

NOR2X1 _4074_ (
    .A(\u_cpu.bufreg.i_init ),
    .B(_914_),
    .Y(_939_)
);

NAND2X1 _2807_ (
    .A(\u_rf_if.o_waddr [6]),
    .B(_91_),
    .Y(_92_)
);

FILL FILL144750x46950 (
);

OAI21X1 _2980_ (
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(\u_rf_if.write_wait [2]),
    .Y(_624_)
);

OR2X2 _2560_ (
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [10]),
    .Y(_856_)
);

INVX1 _3765_ (
    .A(\u_cpu.bne_or_bge ),
    .Y(_371_)
);

NOR2X1 _3345_ (
    .A(_2092_),
    .B(_2066_),
    .Y(_2065_)
);

INVX1 _2616_ (
    .A(\u_mem_serial.bit_count [2]),
    .Y(_800_)
);

FILL FILL_0__4763_ (
);

FILL FILL_1__2778_ (
);

DFFPOSX1 _3994_ (
    .D(_626_),
    .CLK(clk_sys_bF$buf30),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

NAND2X1 _3574_ (
    .A(_469_),
    .B(_483_),
    .Y(_468_)
);

OAI21X1 _3154_ (
    .A(_1717__bF$buf0),
    .B(_2064_),
    .C(\u_rf_if.read_buf0 [27]),
    .Y(_1685_)
);

NAND3X1 _4779_ (
    .A(_1902_),
    .B(_2045_),
    .C(_2046_),
    .Y(_1867_)
);

DFFPOSX1 _4359_ (
    .D(_1123_),
    .CLK(clk_sys_bF$buf25),
    .Q(\u_cpu.bufreg2.dlo [14])
);

DFFPOSX1 _2845_ (
    .D(_498_),
    .CLK(clk_sys_bF$buf24),
    .Q(\u_rf_if.write_wait [1])
);

AOI22X1 _2425_ (
    .A(_840_),
    .B(_1092_),
    .C(_1091_),
    .D(_845_),
    .Y(_1093_)
);

FILL FILL_0__4152_ (
);

FILL FILL_1__4313_ (
);

INVX8 _3383_ (
    .A(_18__bF$buf4),
    .Y(_2154_)
);

INVX1 _4588_ (
    .A(\u_mem_serial.shift_rx [4]),
    .Y(_1924_)
);

INVX1 _4168_ (
    .A(\u_cpu.bufreg2.dlo [7]),
    .Y(_1153_)
);

FILL FILL_0__3423_ (
);

FILL FILL_0__3003_ (
);

FILL FILL_0__4628_ (
);

AOI21X1 _2654_ (
    .A(_286_),
    .B(_287_),
    .C(_288_),
    .Y(_67_)
);

NAND2X1 _2234_ (
    .A(\u_mem_serial.shift_rx [21]),
    .B(_1425_),
    .Y(_1440_)
);

OAI21X1 _3859_ (
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.cond_branch ),
    .C(_418_),
    .Y(_370_)
);

OAI22X1 _3439_ (
    .A(_301_),
    .B(_300_),
    .C(_299_),
    .D(_298_),
    .Y(_297_)
);

INVX1 _3019_ (
    .A(raddr[3]),
    .Y(_1591_)
);

DFFPOSX1 _4800_ (
    .D(_1862_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(clk_div[1])
);

FILL FILL_0_CLKBUF1_insert80 (
);

FILL FILL_0_CLKBUF1_insert82 (
);

FILL FILL_0_CLKBUF1_insert84 (
);

INVX8 _3192_ (
    .A(_1717__bF$buf4),
    .Y(_1715_)
);

NAND3X1 _4397_ (
    .A(_1516_),
    .B(_1525_),
    .C(_1518_),
    .Y(_1526_)
);

FILL FILL_0__4437_ (
);

FILL FILL_0__4017_ (
);

FILL FILL_1__3813_ (
);

DFFPOSX1 _2883_ (
    .D(_530_),
    .CLK(clk_sys_bF$buf10),
    .Q(\u_rf_if.read_buf0 [8])
);

AOI21X1 _2463_ (
    .A(_1051_),
    .B(_1054_),
    .C(_853_),
    .Y(_1055_)
);

FILL FILL_0__4190_ (
);

NAND2X1 _3668_ (
    .A(\u_cpu.rd_en ),
    .B(\u_cpu.alu.i_en ),
    .Y(_35_)
);

INVX1 _3248_ (
    .A(_39_),
    .Y(_1755_)
);

FILL FILL_0__3881_ (
);

FILL FILL_0__3461_ (
);

FILL FILL_0__3041_ (
);

DFFPOSX1 _2939_ (
    .D(_551_),
    .CLK(clk_sys_bF$buf22),
    .Q(\u_rf_if.read_buf0 [25])
);

NAND2X1 _2519_ (
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(_997_),
    .Y(_999_)
);

FILL FILL_0__4666_ (
);

FILL FILL_1__3202_ (
);

INVX1 _2692_ (
    .A(raddr[5]),
    .Y(_254_)
);

INVX2 _2272_ (
    .A(_1297__bF$buf4),
    .Y(_1414_)
);

NAND2X1 _3897_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_673_),
    .Y(_674_)
);

OAI21X1 _3477_ (
    .A(\u_rf_if.read_buf0 [5]),
    .B(_446__bF$buf3),
    .C(_445_),
    .Y(_335_)
);

AOI21X1 _3057_ (
    .A(_1618_),
    .B(_1619_),
    .C(rst_bF$buf0),
    .Y(_524_)
);

FILL FILL_0__2312_ (
);

FILL FILL_0__3690_ (
);

NOR2X1 _2748_ (
    .A(_90_),
    .B(_208_),
    .Y(_53_)
);

OAI21X1 _2328_ (
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [1]),
    .Y(_1369_)
);

FILL FILL_0__4475_ (
);

FILL FILL_0__4055_ (
);

NOR2X1 _3286_ (
    .A(\u_rf_if.issue_chunk [1]),
    .B(_2069_),
    .Y(_1783_)
);

FILL FILL_0__2961_ (
);

FILL FILL_0_BUFX2_insert120 (
);

FILL FILL_0_BUFX2_insert122 (
);

FILL FILL_0_BUFX2_insert124 (
);

FILL FILL_0_BUFX2_insert126 (
);

FILL FILL_0_BUFX2_insert128 (
);

FILL FILL_0__3746_ (
);

FILL FILL_0__3326_ (
);

OAI21X1 _2977_ (
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(_44_),
    .Y(_622_)
);

INVX1 _2557_ (
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_859_)
);

FILL FILL_1__2299_ (
);

OAI21X1 _4703_ (
    .A(_1997_),
    .B(_2001_),
    .C(_1993_),
    .Y(_1836_)
);

FILL FILL_1__3240_ (
);

OAI21X1 _3095_ (
    .A(_1717__bF$buf0),
    .B(_1775_),
    .C(\u_rf_if.read_buf0 [12]),
    .Y(_1644_)
);

FILL FILL_0__2350_ (
);

NAND2X1 _2786_ (
    .A(ren_bF$buf3),
    .B(raddr[4]),
    .Y(_113_)
);

INVX1 _2366_ (
    .A(_1338_),
    .Y(_1339_)
);

FILL FILL_0__4093_ (
);

FILL FILL_0__2826_ (
);

DFFPOSX1 _4512_ (
    .D(_1486_),
    .CLK(clk_sys_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

FILL FILL_0__3364_ (
);

FILL FILL_1__2740_ (
);

FILL FILL_0__4569_ (
);

FILL FILL_1__3525_ (
);

OAI21X1 _2595_ (
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [2]),
    .C(\u_mem_serial.bit_count_0_bF$buf2 ),
    .Y(_821_)
);

BUFX2 _2175_ (
    .A(gnd),
    .Y(o_gpio[2])
);

FILL FILL_0__2215_ (
);

NAND3X1 _4741_ (
    .A(\u_mem_serial.shift_rx [2]),
    .B(mem_ibus_ack_bF$buf2),
    .C(_1984__bF$buf3),
    .Y(_2023_)
);

NOR2X1 _4321_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(_1275_),
    .Y(_1279_)
);

FILL FILL_0__3593_ (
);

FILL FILL_0__4378_ (
);

OAI21X1 _3189_ (
    .A(_1717__bF$buf3),
    .B(_2094_),
    .C(\u_rf_if.read_buf0 [29]),
    .Y(_1713_)
);

OAI21X1 _4550_ (
    .A(_1896_),
    .B(rf_rreq_bF$buf4),
    .C(_1898_),
    .Y(rf_read_reg0_to_if[1])
);

DFFPOSX1 _4130_ (
    .D(_888_),
    .CLK(clk_sys_bF$buf38),
    .Q(\u_cpu.bufreg.data [15])
);

FILL FILL_0__3649_ (
);

FILL FILL_0__3229_ (
);

NOR2X1 _3821_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_386_),
    .Y(\u_cpu.decode.co_immdec_ctrl [2])
);

INVX1 _3401_ (
    .A(\u_rf_if.issue_chunk [0]),
    .Y(_16_)
);

INVX1 _4606_ (
    .A(ibus_pending_rdt[26]),
    .Y(_1936_)
);

FILL FILL_1__3563_ (
);

FILL FILL_1__4768_ (
);

FILL FILL_0__2253_ (
);

NAND2X1 _2689_ (
    .A(_253_),
    .B(_256_),
    .Y(_257_)
);

OAI21X1 _2269_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_1315__bF$buf0),
    .C(_1310_),
    .Y(_1416_)
);

NAND2X1 _3630_ (
    .A(\u_cpu.alu.i_op_b ),
    .B(_2117_),
    .Y(_2118_)
);

INVX1 _3210_ (
    .A(_1731_),
    .Y(_1730_)
);

FILL FILL_0__2729_ (
);

DFFSR _4835_ (
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1831_),
    .CLK(clk_sys_bF$buf36),
    .Q(ibus_pending_rdt[20])
);

INVX1 _4415_ (
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_1539_)
);

BUFX2 BUFX2_insert100 (
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf3 )
);

BUFX2 BUFX2_insert101 (
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf2 )
);

BUFX2 BUFX2_insert102 (
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf1 )
);

BUFX2 BUFX2_insert103 (
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf0 )
);

BUFX2 BUFX2_insert104 (
    .A(_18_),
    .Y(_18__bF$buf4)
);

FILL FILL_1__4157_ (
);

BUFX2 BUFX2_insert105 (
    .A(_18_),
    .Y(_18__bF$buf3)
);

BUFX2 BUFX2_insert106 (
    .A(_18_),
    .Y(_18__bF$buf2)
);

BUFX2 BUFX2_insert107 (
    .A(_18_),
    .Y(_18__bF$buf1)
);

BUFX2 BUFX2_insert108 (
    .A(_18_),
    .Y(_18__bF$buf0)
);

BUFX2 BUFX2_insert109 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf5)
);

DFFPOSX1 _2901_ (
    .D(_572_),
    .CLK(clk_sys_bF$buf12),
    .Q(\u_rf_if.read_buf1 [2])
);

FILL FILL_0__3267_ (
);

FILL FILL_1__2223_ (
);

FILL FILL_1__3848_ (
);

NAND2X1 _2498_ (
    .A(_1019_),
    .B(_845_),
    .Y(_1020_)
);

FILL FILL_0__2538_ (
);

OAI21X1 _4644_ (
    .A(_1960_),
    .B(rf_rreq_bF$buf5),
    .C(_1961_),
    .Y(rf_read_reg1_to_if[3])
);

OAI21X1 _4224_ (
    .A(_1130_),
    .B(_1133_),
    .C(_1198_),
    .Y(_1201_)
);

FILL FILL_1__4386_ (
);

FILL FILL_0__2291_ (
);

NAND2X1 _2710_ (
    .A(_234_),
    .B(_235_),
    .Y(_236_)
);

NAND2X1 _3915_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_688_),
    .Y(_690_)
);

FILL FILL_1__3237_ (
);

FILL FILL144450x118950 (
);

FILL FILL_0__2767_ (
);

NAND2X1 _4453_ (
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_1553_),
    .Y(_1560_)
);

NAND2X1 _4033_ (
    .A(\u_cpu.bufreg.data [5]),
    .B(_892__bF$buf1),
    .Y(_910_)
);

FILL FILL_1_CLKBUF1_insert46 (
);

FILL FILL_1__4195_ (
);

FILL FILL_1__2508_ (
);

NOR2X1 _3724_ (
    .A(\u_cpu.bufreg.i_init ),
    .B(_144_),
    .Y(\u_cpu.ctrl.i_pc_en )
);

NAND3X1 _3304_ (
    .A(_2154__bF$buf3),
    .B(_10__bF$buf0),
    .C(_1798_),
    .Y(_1797_)
);

FILL FILL_1__2261_ (
);

DFFPOSX1 _4509_ (
    .D(_1478_),
    .CLK(clk_sys_bF$buf29),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

FILL FILL_0__2576_ (
);

NAND3X1 _4682_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [21]),
    .C(_1984__bF$buf4),
    .Y(_1987_)
);

OAI21X1 _4262_ (
    .A(_1206_),
    .B(_1233_),
    .C(_1234_),
    .Y(_1110_)
);

FILL FILL_0__4302_ (
);

FILL FILL_1__2737_ (
);

OAI21X1 _3953_ (
    .A(_683_),
    .B(_714_),
    .C(_715_),
    .Y(_643_)
);

OAI22X1 _3533_ (
    .A(_439_),
    .B(_438_),
    .C(_437_),
    .D(_436_),
    .Y(_435_)
);

AOI21X1 _3113_ (
    .A(_1658_),
    .B(_1659_),
    .C(rst_bF$buf9),
    .Y(_542_)
);

INVX1 _4738_ (
    .A(ibus_pending_rdt[3]),
    .Y(_2021_)
);

AOI22X1 _4318_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [13]),
    .C(_1172__bF$buf2),
    .D(_1276_),
    .Y(_1277_)
);

FILL FILL_1__3275_ (
);

DFFPOSX1 _4491_ (
    .D(_1654_),
    .CLK(clk_sys_bF$buf7),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

NAND2X1 _4071_ (
    .A(\u_cpu.bufreg.c_r ),
    .B(_897_),
    .Y(_936_)
);

NAND2X1 _2804_ (
    .A(_94_),
    .B(_90_),
    .Y(_95_)
);

FILL FILL_0__4531_ (
);

FILL FILL_1__2546_ (
);

DFFPOSX1 _3762_ (
    .D(_135_),
    .CLK(clk_sys_bF$buf45),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

AND2X2 _3342_ (
    .A(_2101_),
    .B(rdata[1]),
    .Y(_2062_)
);

INVX1 _4547_ (
    .A(rf_read_reg0[1]),
    .Y(_1896_)
);

DFFPOSX1 _4127_ (
    .D(_890_),
    .CLK(clk_sys_bF$buf38),
    .Q(\u_cpu.bufreg.data [13])
);

AND2X2 _2613_ (
    .A(_802_),
    .B(_797_),
    .Y(_803_)
);

NAND3X1 _3818_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_401_),
    .Y(\u_cpu.decode.co_immdec_en [3])
);

FILL FILL_1__2775_ (
);

BUFX2 BUFX2_insert10 (
    .A(_10_),
    .Y(_10__bF$buf2)
);

BUFX2 BUFX2_insert11 (
    .A(_10_),
    .Y(_10__bF$buf1)
);

BUFX2 BUFX2_insert12 (
    .A(_10_),
    .Y(_10__bF$buf0)
);

BUFX2 BUFX2_insert13 (
    .A(_1530_),
    .Y(_1530__bF$buf4)
);

BUFX2 BUFX2_insert14 (
    .A(_1530_),
    .Y(_1530__bF$buf3)
);

BUFX2 BUFX2_insert15 (
    .A(_1530_),
    .Y(_1530__bF$buf2)
);

BUFX2 BUFX2_insert16 (
    .A(_1530_),
    .Y(_1530__bF$buf1)
);

BUFX2 BUFX2_insert17 (
    .A(_1530_),
    .Y(_1530__bF$buf0)
);

BUFX2 BUFX2_insert18 (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf5 )
);

BUFX2 BUFX2_insert19 (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf4 )
);

DFFPOSX1 _3991_ (
    .D(_629_),
    .CLK(clk_sys_bF$buf23),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

NAND2X1 _3571_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(_484__bF$buf0),
    .Y(_466_)
);

NAND2X1 _3151_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(\u_rf_if.prefetch_active ),
    .Y(_1683_)
);

NAND3X1 _4776_ (
    .A(_1898_),
    .B(_2043_),
    .C(_2044_),
    .Y(_1866_)
);

DFFPOSX1 _4356_ (
    .D(_1126_),
    .CLK(clk_sys_bF$buf25),
    .Q(\u_cpu.bufreg2.dlo [11])
);

FILL FILL_0__3611_ (
);

DFFPOSX1 _2842_ (
    .D(_603_),
    .CLK(clk_sys_bF$buf13),
    .Q(\u_rf_if.read_buf1 [30])
);

AOI22X1 _2422_ (
    .A(_1094_),
    .B(_795_),
    .C(_1048_),
    .D(_1095_),
    .Y(_1096_)
);

INVX1 _3627_ (
    .A(\u_cpu.alu.i_op_b ),
    .Y(_2115_)
);

NAND2X1 _3207_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(_1728_),
    .Y(_1727_)
);

FILL FILL_1__2584_ (
);

FILL FILL_1__3789_ (
);

FILL FILL_1__4730_ (
);

NAND2X1 _3380_ (
    .A(_1_),
    .B(_5_),
    .Y(_2151_)
);

FILL FILL_0__2479_ (
);

INVX1 _4585_ (
    .A(ibus_pending_rdt[17]),
    .Y(_1922_)
);

INVX1 _4165_ (
    .A(\u_cpu.bufreg.i_imm ),
    .Y(_1151_)
);

FILL FILL_0__4205_ (
);

AOI21X1 _2651_ (
    .A(_215__bF$buf2),
    .B(_290_),
    .C(rst_bF$buf4),
    .Y(_68_)
);

OAI21X1 _2231_ (
    .A(_810_),
    .B(_1414_),
    .C(_1441_),
    .Y(_1442_)
);

NAND2X1 _3856_ (
    .A(rf_rreq_bF$buf1),
    .B(\u_cpu.decode.i_wb_rdt [30]),
    .Y(_417_)
);

OAI21X1 _3436_ (
    .A(\u_rf_if.read_buf0 [21]),
    .B(_446__bF$buf3),
    .C(_445_),
    .Y(_51_)
);

INVX1 _3016_ (
    .A(raddr[2]),
    .Y(_1589_)
);

FILL FILL_0_CLKBUF1_insert50 (
);

FILL FILL_0_CLKBUF1_insert52 (
);

FILL FILL_0_CLKBUF1_insert54 (
);

FILL FILL_0_CLKBUF1_insert56 (
);

FILL FILL_0_CLKBUF1_insert58 (
);

OAI21X1 _4394_ (
    .A(gnd),
    .B(_1521_),
    .C(_1522_),
    .Y(_1523_)
);

OR2X2 _2707_ (
    .A(_238_),
    .B(\u_rf_serial.last_req_key [10]),
    .Y(_239_)
);

DFFPOSX1 _2880_ (
    .D(_584_),
    .CLK(clk_sys_bF$buf12),
    .Q(\u_rf_if.read_buf1 [11])
);

NAND3X1 _2460_ (
    .A(_966_),
    .B(_1056_),
    .C(_1057_),
    .Y(_1058_)
);

DFFPOSX1 _3665_ (
    .D(_2111_),
    .CLK(clk_sys_bF$buf34),
    .Q(\u_cpu.alu.cmp_r )
);

OAI21X1 _3245_ (
    .A(\u_rf_if.stream_active ),
    .B(_43_),
    .C(_1753_),
    .Y(_1752_)
);

FILL FILL_0__2500_ (
);

FILL FILL_0__3705_ (
);

DFFPOSX1 _2936_ (
    .D(_518_),
    .CLK(clk_sys_bF$buf26),
    .Q(\u_rf_if.issue_chunk [3])
);

MUX2X1 _2516_ (
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .B(\u_cpu.bufreg.data [25]),
    .S(\u_mem_serial.active_ibus_bF$buf1 ),
    .Y(_1002_)
);

FILL FILL_0__4243_ (
);

MUX2X1 _3894_ (
    .A(_671_),
    .B(_668_),
    .S(_669_),
    .Y(_628_)
);

OAI22X1 _3474_ (
    .A(_336_),
    .B(_335_),
    .C(_334_),
    .D(_333_),
    .Y(_332_)
);

AOI21X1 _3054_ (
    .A(_1617_),
    .B(_1616_),
    .C(rst_bF$buf8),
    .Y(_523_)
);

OAI21X1 _4679_ (
    .A(_1926_),
    .B(_1983__bF$buf2),
    .C(_1985_),
    .Y(_1828_)
);

NAND3X1 _4259_ (
    .A(_1154_),
    .B(_1231_),
    .C(_1230_),
    .Y(_1232_)
);

FILL FILL_0__3934_ (
);

FILL FILL_0__3514_ (
);

FILL FILL144750x32550 (
);

FILL FILL_0__4719_ (
);

NAND2X1 _2745_ (
    .A(_105_),
    .B(_210_),
    .Y(_211_)
);

NAND3X1 _2325_ (
    .A(_1315__bF$buf3),
    .B(_1371_),
    .C(_1303__bF$buf1),
    .Y(_1372_)
);

NAND2X1 _3283_ (
    .A(_2152__bF$buf1),
    .B(_0_),
    .Y(_1781_)
);

DFFPOSX1 _4488_ (
    .D(_1472_),
    .CLK(clk_sys_bF$buf3),
    .Q(\u_cpu.ctrl.pc )
);

NAND2X1 _4068_ (
    .A(\u_cpu.bufreg.i_clr_lsb ),
    .B(\u_cpu.alu.i_cnt0 ),
    .Y(_933_)
);

FILL FILL_0__4108_ (
);

AOI21X1 _2974_ (
    .A(\u_rf_if.write_wait [0]),
    .B(_44_),
    .C(_735_),
    .Y(_497_)
);

AOI21X1 _2554_ (
    .A(_857_),
    .B(_962_),
    .C(_808_),
    .Y(_963_)
);

FILL FILL_0__4281_ (
);

DFFPOSX1 _3759_ (
    .D(_130_),
    .CLK(clk_sys_bF$buf34),
    .Q(\u_cpu.ctrl.i_jump )
);

NAND3X1 _3339_ (
    .A(_2154__bF$buf0),
    .B(_2062__bF$buf3),
    .C(_2060_),
    .Y(_2059_)
);

NAND3X1 _4700_ (
    .A(\u_cpu.decode.i_wb_rdt [4]),
    .B(\u_cpu.i_ibus_rdt [1]),
    .C(\u_cpu.i_ibus_rdt [0]),
    .Y(_1999_)
);

OAI21X1 _3092_ (
    .A(_1717__bF$buf1),
    .B(_1770_),
    .C(\u_rf_if.read_buf0 [11]),
    .Y(_1642_)
);

AOI22X1 _4297_ (
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [17]),
    .C(_1172__bF$buf3),
    .D(_1261_),
    .Y(_1262_)
);

FILL FILL_0__3972_ (
);

FILL FILL_0__3552_ (
);

FILL FILL_0__3132_ (
);

FILL FILL_0__4757_ (
);

FILL FILL_1__3713_ (
);

OAI21X1 _2783_ (
    .A(_79_),
    .B(_111_),
    .C(_115_),
    .Y(_116_)
);

OAI21X1 _2363_ (
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [8]),
    .Y(_1341_)
);

DFFPOSX1 _3988_ (
    .D(_632_),
    .CLK(clk_sys_bF$buf3),
    .Q(rreg0[3])
);

NAND2X1 _3568_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .B(_484__bF$buf0),
    .Y(_464_)
);

NAND3X1 _3148_ (
    .A(_2062__bF$buf0),
    .B(_1715__bF$buf3),
    .C(_2150_),
    .Y(_1681_)
);

FILL FILL_0__2403_ (
);

DFFPOSX1 _2839_ (
    .D(_541_),
    .CLK(clk_sys_bF$buf2),
    .Q(\u_rf_if.read_buf0 [17])
);

NOR2X1 _2419_ (
    .A(_1292_),
    .B(_1007_),
    .Y(_1293_)
);

FILL FILL_0__4146_ (
);

FILL FILL_1__3522_ (
);

OAI22X1 _2592_ (
    .A(_822_),
    .B(_823_),
    .C(_820_),
    .D(_821_),
    .Y(_824_)
);

BUFX2 _2172_ (
    .A(gnd),
    .Y(o_gpio[5])
);

FILL FILL_1__4727_ (
);

AND2X2 _3797_ (
    .A(_391_),
    .B(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.decode.co_immdec_en [0])
);

NOR2X1 _3377_ (
    .A(\u_rf_if.rreg0_latched [0]),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_2110_)
);

FILL FILL_0__3417_ (
);

FILL FILL_0__3590_ (
);

FILL FILL_0__3170_ (
);

AOI21X1 _2648_ (
    .A(_291_),
    .B(_215__bF$buf0),
    .C(_292_),
    .Y(_69_)
);

OR2X2 _2228_ (
    .A(_1377_),
    .B(_1444_),
    .Y(_1445_)
);

FILL FILL_0__4795_ (
);

FILL FILL_0__4375_ (
);

NAND2X1 _3186_ (
    .A(_484__bF$buf1),
    .B(\u_rf_if.o_wen ),
    .Y(_1711_)
);

FILL FILL_0__2441_ (
);

DFFPOSX1 _2877_ (
    .D(_496_),
    .CLK(clk_sys_bF$buf44),
    .Q(\u_rf_if.o_waddr [2])
);

NAND3X1 _2457_ (
    .A(_805_),
    .B(_1059_),
    .C(_1060_),
    .Y(_1061_)
);

FILL FILL_0__4184_ (
);

INVX1 _4603_ (
    .A(ibus_pending_rdt[27]),
    .Y(_1934_)
);

FILL FILL_1__3560_ (
);

FILL FILL_1__4765_ (
);

FILL FILL_0__2670_ (
);

FILL FILL_0__3875_ (
);

FILL FILL_0__3455_ (
);

FILL FILL_0__3035_ (
);

INVX1 _2686_ (
    .A(\u_rf_serial.last_req_key [1]),
    .Y(_260_)
);

AOI21X1 _2266_ (
    .A(_1315__bF$buf0),
    .B(\u_mem_serial.bit_count_0_bF$buf1 ),
    .C(_1417_),
    .Y(_773_)
);

FILL FILL_0__2306_ (
);

DFFSR _4832_ (
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1834_),
    .CLK(clk_sys_bF$buf5),
    .Q(ibus_pending_rdt[18])
);

NAND2X1 _4412_ (
    .A(\u_cpu.ctrl.pc ),
    .B(_1530__bF$buf3),
    .Y(_1537_)
);

FILL FILL_0__3684_ (
);

FILL FILL_0__4049_ (
);

FILL FILL_1__3005_ (
);

INVX1 _2495_ (
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1023_)
);

FILL FILL_0__2955_ (
);

OAI21X1 _4641_ (
    .A(_1958_),
    .B(rf_rreq_bF$buf5),
    .C(_1959_),
    .Y(rf_read_reg0_to_if[3])
);

NAND2X1 _4221_ (
    .A(\u_cpu.bufreg2.dlo [0]),
    .B(_1198_),
    .Y(_1199_)
);

FILL FILL_0__3493_ (
);

FILL FILL_0__3073_ (
);

OAI21X1 _3912_ (
    .A(_685_),
    .B(_686_),
    .C(_687_),
    .Y(_630_)
);

FILL FILL_0__4698_ (
);

FILL FILL_1__4439_ (
);

FILL FILL_1__4019_ (
);

OAI21X1 _3089_ (
    .A(_1717__bF$buf1),
    .B(_1770_),
    .C(\u_rf_if.read_buf0 [10]),
    .Y(_1640_)
);

FILL FILL_0__2344_ (
);

NAND2X1 _4450_ (
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_1553_),
    .Y(_1558_)
);

INVX1 _4030_ (
    .A(\u_cpu.bufreg.data [6]),
    .Y(_908_)
);

INVX1 _3721_ (
    .A(_172_),
    .Y(\u_cpu.bufreg.i_cnt1 )
);

INVX1 _3301_ (
    .A(_1796_),
    .Y(_1795_)
);

FILL FILL_0__4087_ (
);

DFFPOSX1 _4506_ (
    .D(_1496_),
    .CLK(clk_sys_bF$buf42),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

FILL FILL_1__3883_ (
);

FILL FILL_1__3043_ (
);

FILL FILL_0__2993_ (
);

FILL FILL_0__3358_ (
);

FILL FILL_1__2314_ (
);

OAI22X1 _2589_ (
    .A(_806_),
    .B(_825_),
    .C(_807_),
    .D(_826_),
    .Y(_827_)
);

BUFX2 _2169_ (
    .A(vdd),
    .Y(o_uart_tx)
);

OAI21X1 _3950_ (
    .A(_683_),
    .B(_712_),
    .C(_713_),
    .Y(_642_)
);

AOI21X1 _3530_ (
    .A(_433_),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_432_)
);

AOI21X1 _3110_ (
    .A(_1655_),
    .B(_1657_),
    .C(rst_bF$buf9),
    .Y(_541_)
);

FILL FILL_0__2209_ (
);

INVX1 _4735_ (
    .A(ibus_pending_rdt[4]),
    .Y(_2019_)
);

OAI21X1 _4315_ (
    .A(_1272_),
    .B(_1164__bF$buf1),
    .C(_1274_),
    .Y(_1123_)
);

FILL FILL_1__4477_ (
);

FILL FILL_1__4057_ (
);

FILL FILL_0__2382_ (
);

FILL FILL144150x90150 (
);

AND2X2 _2801_ (
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .Y(_98_)
);

FILL FILL_1__2963_ (
);

FILL FILL_1__3328_ (
);

OAI21X1 _2398_ (
    .A(_1311_),
    .B(_1309_),
    .C(_1307_),
    .Y(_1312_)
);

NAND2X1 _4544_ (
    .A(_1877__bF$buf4),
    .B(_1893_),
    .Y(_1894_)
);

DFFPOSX1 _4124_ (
    .D(_861_),
    .CLK(clk_sys_bF$buf11),
    .Q(\u_cpu.bufreg.data [10])
);

FILL FILL_1__3081_ (
);

FILL FILL144750x118950 (
);

NAND2X1 _2610_ (
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .B(_799_),
    .Y(_806_)
);

FILL FILL_0__3396_ (
);

NAND2X1 _3815_ (
    .A(_400_),
    .B(_402_),
    .Y(\u_cpu.ctrl.i_pc_rel )
);

FILL FILL_1__2352_ (
);

FILL FILL_0__2247_ (
);

NAND3X1 _4773_ (
    .A(_1971_),
    .B(_2041_),
    .C(_2042_),
    .Y(_1865_)
);

DFFPOSX1 _4353_ (
    .D(_1129_),
    .CLK(clk_sys_bF$buf25),
    .Q(\u_cpu.bufreg2.dlo [8])
);

FILL FILL_1__4095_ (
);

FILL FILL_1__2828_ (
);

NAND2X1 _3624_ (
    .A(\u_cpu.alu.add_cy_r ),
    .B(rdata0[0]),
    .Y(_2112_)
);

AND2X2 _3204_ (
    .A(_1726_),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_1724_)
);

DFFSR _4829_ (
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1837_),
    .CLK(clk_sys_bF$buf14),
    .Q(ibus_pending_rdt[17])
);

OAI22X1 _4409_ (
    .A(_1534_),
    .B(_1531_),
    .C(_1529_),
    .D(_1535_),
    .Y(_1470_)
);

FILL FILL_1__3366_ (
);

INVX1 _4582_ (
    .A(rf_read_reg1[1]),
    .Y(_1920_)
);

OAI21X1 _4162_ (
    .A(_1146_),
    .B(_1148_),
    .C(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1149_)
);

FILL FILL_0__4622_ (
);

OAI21X1 _3853_ (
    .A(rf_rreq_bF$buf7),
    .B(_396_),
    .C(_415_),
    .Y(_367_)
);

OAI22X1 _3433_ (
    .A(_295_),
    .B(_51_),
    .C(_50_),
    .D(_49_),
    .Y(_48_)
);

OAI21X1 _3013_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(_1698_),
    .C(raddr[1]),
    .Y(_1587_)
);

FILL FILL_1__2390_ (
);

FILL FILL144450x10950 (
);

OAI21X1 _4638_ (
    .A(ibus_pending_ack_bF$buf3),
    .B(_1956_),
    .C(_1957_),
    .Y(\u_cpu.i_ibus_rdt [0])
);

INVX1 _4218_ (
    .A(_1167_),
    .Y(_1196_)
);

FILL FILL_0__2285_ (
);

INVX1 _4391_ (
    .A(_1516_),
    .Y(_1520_)
);

AOI21X1 _2704_ (
    .A(_237_),
    .B(ren_bF$buf0),
    .C(_241_),
    .Y(_242_)
);

FILL FILL_0__4011_ (
);

OAI21X1 _3909_ (
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.co_immdec_en [2]),
    .C(_669_),
    .Y(_685_)
);

OAI21X1 _3662_ (
    .A(_2146_),
    .B(_2136_),
    .C(_2147_),
    .Y(_2_)
);

NAND3X1 _3242_ (
    .A(_2154__bF$buf3),
    .B(_1757_),
    .C(_2099_),
    .Y(_1750_)
);

NAND2X1 _4447_ (
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .B(_1553_),
    .Y(_1556_)
);

OAI21X1 _4027_ (
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_905_),
    .C(_906_),
    .Y(_863_)
);

FILL FILL_0__3702_ (
);

DFFPOSX1 _2933_ (
    .D(_493_),
    .CLK(clk_sys_bF$buf33),
    .Q(\u_rf_if.o_waddr [0])
);

OAI21X1 _2513_ (
    .A(_1004_),
    .B(_1001_),
    .C(_966_),
    .Y(_1005_)
);

FILL FILL_0__3299_ (
);

FILL FILL_0__4660_ (
);

NAND2X1 _3718_ (
    .A(\u_cpu.state.cnt_r [2]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_171_)
);

FILL FILL_1__4401_ (
);

NAND2X1 _3891_ (
    .A(_661_),
    .B(_662_),
    .Y(_669_)
);

INVX1 _3471_ (
    .A(\u_rf_if.read_buf0 [8]),
    .Y(_329_)
);

AOI21X1 _3051_ (
    .A(_1615_),
    .B(_1614_),
    .C(rst_bF$buf8),
    .Y(_522_)
);

OAI21X1 _4676_ (
    .A(_1893_),
    .B(_1897_),
    .C(_1982_),
    .Y(_1983_)
);

NOR2X1 _4256_ (
    .A(_1213_),
    .B(_1138_),
    .Y(_1229_)
);

OAI21X1 _2742_ (
    .A(_78_),
    .B(_98_),
    .C(_205_),
    .Y(_213_)
);

NAND2X1 _2322_ (
    .A(i_mem_miso),
    .B(_1297__bF$buf3),
    .Y(_1374_)
);

OAI21X1 _3947_ (
    .A(_683_),
    .B(_710_),
    .C(_711_),
    .Y(_641_)
);

OAI21X1 _3527_ (
    .A(\u_rf_if.read_buf1 [2]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_429_)
);

AOI21X1 _3107_ (
    .A(_1652_),
    .B(_1653_),
    .C(rst_bF$buf9),
    .Y(_540_)
);

NAND3X1 _3280_ (
    .A(_2154__bF$buf2),
    .B(_2062__bF$buf2),
    .C(_1779_),
    .Y(_1778_)
);

FILL FILL_0__2799_ (
);

FILL FILL_0__2379_ (
);

OAI21X1 _4485_ (
    .A(\u_cpu.ctrl.i_jump ),
    .B(_1527_),
    .C(_1532_),
    .Y(_1582_)
);

INVX1 _4065_ (
    .A(\u_cpu.bufreg.data [24]),
    .Y(_931_)
);

FILL FILL_0__3740_ (
);

FILL FILL_0__3320_ (
);

FILL FILL_0__4525_ (
);

OAI21X1 _2971_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(_619_),
    .C(_1731_),
    .Y(_618_)
);

NAND2X1 _2551_ (
    .A(_965_),
    .B(_964_),
    .Y(_966_)
);

DFFPOSX1 _3756_ (
    .D(_128_),
    .CLK(clk_sys_bF$buf45),
    .Q(\u_cpu.state.cnt_r [3])
);

NAND3X1 _3336_ (
    .A(_2154__bF$buf4),
    .B(_2099_),
    .C(_2060_),
    .Y(_1824_)
);

OAI21X1 _4294_ (
    .A(_1257_),
    .B(_1164__bF$buf3),
    .C(_1259_),
    .Y(_1117_)
);

INVX1 _2607_ (
    .A(_808_),
    .Y(_809_)
);

FILL FILL_0__4334_ (
);

OAI21X1 _2780_ (
    .A(ren_bF$buf1),
    .B(_117_),
    .C(_118_),
    .Y(_119_)
);

NAND3X1 _2360_ (
    .A(_1315__bF$buf2),
    .B(_1343_),
    .C(_1303__bF$buf0),
    .Y(_1344_)
);

DFFPOSX1 _3985_ (
    .D(_635_),
    .CLK(clk_sys_bF$buf30),
    .Q(\u_cpu.csr_imm )
);

NAND2X1 _3565_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_484__bF$buf3),
    .Y(_462_)
);

NAND3X1 _3145_ (
    .A(_2099_),
    .B(_1715__bF$buf3),
    .C(_2060_),
    .Y(_1679_)
);

FILL FILL_0__2820_ (
);

DFFPOSX1 _2836_ (
    .D(_542_),
    .CLK(clk_sys_bF$buf2),
    .Q(\u_rf_if.read_buf0 [18])
);

AOI21X1 _2416_ (
    .A(_1087_),
    .B(_1295_),
    .C(_794_),
    .Y(_2156_)
);

FILL FILL_0__4563_ (
);

INVX2 _3794_ (
    .A(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.bufreg.i_imm_en )
);

NAND2X1 _3374_ (
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_2108_),
    .Y(_2107_)
);

INVX1 _4579_ (
    .A(ibus_pending_rdt[21]),
    .Y(_1918_)
);

AND2X2 _4159_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_1146_)
);

FILL FILL_0__3834_ (
);

OAI21X1 _2645_ (
    .A(_100_),
    .B(_215__bF$buf0),
    .C(_202_),
    .Y(_294_)
);

NAND2X1 _2225_ (
    .A(\u_mem_serial.shift_rx [20]),
    .B(_1425_),
    .Y(_1447_)
);

FILL FILL_1__4533_ (
);

NAND3X1 _3183_ (
    .A(\u_rf_if.rcnt [2]),
    .B(rf_wdata0_next_to_if),
    .C(_1709_),
    .Y(_1708_)
);

MUX2X1 _4388_ (
    .A(\u_cpu.bufreg.i_cnt1 ),
    .B(\u_cpu.cnt2 ),
    .S(gnd),
    .Y(_1518_)
);

FILL FILL_0__3223_ (
);

FILL FILL_0__4428_ (
);

FILL FILL_0__4008_ (
);

DFFPOSX1 _2874_ (
    .D(_587_),
    .CLK(clk_sys_bF$buf21),
    .Q(\u_rf_if.read_buf1 [14])
);

AOI22X1 _2454_ (
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_795_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [0]),
    .Y(_1064_)
);

INVX1 _3659_ (
    .A(_2145_),
    .Y(\u_cpu.alu.o_cmp )
);

NOR2X1 _3239_ (
    .A(rst_bF$buf5),
    .B(_457_),
    .Y(_576_)
);

INVX1 _4600_ (
    .A(ibus_pending_rdt[28]),
    .Y(_1932_)
);

NOR2X1 _4197_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(_1176_),
    .Y(_1180_)
);

FILL FILL_0__4237_ (
);

FILL FILL_1__3613_ (
);

NAND2X1 _2683_ (
    .A(ren_bF$buf2),
    .B(_262_),
    .Y(_263_)
);

INVX1 _2263_ (
    .A(\u_cpu.o_dbus_cyc ),
    .Y(_1420_)
);

OAI21X1 _3888_ (
    .A(_661_),
    .B(\u_cpu.decode.i_wb_rdt [19]),
    .C(_664_),
    .Y(_667_)
);

INVX1 _3468_ (
    .A(\u_rf_if.read_buf0 [10]),
    .Y(_326_)
);

NOR2X1 _3048_ (
    .A(rst_bF$buf7),
    .B(_1612_),
    .Y(_521_)
);

FILL FILL_0__2723_ (
);

FILL FILL_0__2303_ (
);

FILL FILL_0__3928_ (
);

FILL FILL_0__3508_ (
);

FILL FILL_1__4571_ (
);

FILL FILL_0__3681_ (
);

FILL FILL_0__3261_ (
);

INVX1 _2739_ (
    .A(\u_rf_serial.last_req_key [7]),
    .Y(_214_)
);

AOI21X1 _2319_ (
    .A(_1373_),
    .B(_1376_),
    .C(rst_bF$buf3),
    .Y(_761_)
);

FILL FILL_0__4466_ (
);

FILL FILL_0__4046_ (
);

FILL FILL_1__3842_ (
);

NAND3X1 _2492_ (
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .B(_1025_),
    .C(_1024_),
    .Y(_1026_)
);

FILL FILL_1__4207_ (
);

INVX1 _3697_ (
    .A(\u_cpu.branch_op ),
    .Y(_157_)
);

NAND3X1 _3277_ (
    .A(_2154__bF$buf2),
    .B(_1779_),
    .C(_2099_),
    .Y(_1776_)
);

FILL FILL_0__2952_ (
);

FILL FILL_0__2532_ (
);

AOI21X1 _2968_ (
    .A(_480_),
    .B(_620_),
    .C(_617_),
    .Y(_495_)
);

OAI21X1 _2548_ (
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(_967_),
    .C(_968_),
    .Y(_969_)
);

FILL FILL_0__4275_ (
);

FILL FILL_1__3651_ (
);

OAI21X1 _3086_ (
    .A(_1717__bF$buf2),
    .B(_1764_),
    .C(\u_rf_if.read_buf0 [9]),
    .Y(_1638_)
);

FILL FILL_0__2761_ (
);

FILL FILL_0__2341_ (
);

FILL FILL_0__3966_ (
);

FILL FILL_0__3546_ (
);

FILL FILL_0__3126_ (
);

NAND2X1 _2777_ (
    .A(_91_),
    .B(_121_),
    .Y(_122_)
);

NAND2X1 _2357_ (
    .A(\u_mem_serial.shift_rx [6]),
    .B(_1297__bF$buf0),
    .Y(_1346_)
);

FILL FILL_0__4084_ (
);

DFFPOSX1 _4503_ (
    .D(_1491_),
    .CLK(clk_sys_bF$buf42),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

FILL FILL_1__4245_ (
);

FILL FILL_0__2990_ (
);

FILL FILL_0__2570_ (
);

FILL FILL_1__3936_ (
);

INVX1 _2586_ (
    .A(\u_mem_serial.bit_count [4]),
    .Y(_830_)
);

BUFX2 _2166_ (
    .A(_2158_),
    .Y(o_mem_sync)
);

FILL FILL_0__2206_ (
);

INVX1 _4732_ (
    .A(ibus_pending_rdt[5]),
    .Y(_2017_)
);

INVX1 _4312_ (
    .A(\u_cpu.bufreg2.dlo [14]),
    .Y(_1272_)
);

FILL FILL_0__3584_ (
);

FILL FILL_0__3164_ (
);

FILL FILL_0__4789_ (
);

NOR2X1 _2395_ (
    .A(_1314_),
    .B(_1313_),
    .Y(_1315_)
);

AND2X2 _4541_ (
    .A(\u_cpu.o_wen0 ),
    .B(rf_wreq),
    .Y(_1891_)
);

DFFPOSX1 _4121_ (
    .D(_864_),
    .CLK(clk_sys_bF$buf38),
    .Q(\u_cpu.bufreg.data [7])
);

FILL FILL_1__4283_ (
);

OAI21X1 _3812_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_396_),
    .C(_399_),
    .Y(_400_)
);

FILL FILL_0__4178_ (
);

FILL FILL_1__3974_ (
);

FILL FILL_1__3134_ (
);

FILL FILL_0__2244_ (
);

NAND3X1 _4770_ (
    .A(_1959_),
    .B(_2039_),
    .C(_2040_),
    .Y(_1864_)
);

DFFPOSX1 _4350_ (
    .D(_1100_),
    .CLK(clk_sys_bF$buf28),
    .Q(\u_cpu.bufreg2.dlo [5])
);

FILL FILL_0__3449_ (
);

FILL FILL_1__2405_ (
);

OAI21X1 _3621_ (
    .A(_2076_),
    .B(_2081_),
    .C(_2086_),
    .Y(\u_cpu.mem_if.o_rd )
);

INVX4 _3201_ (
    .A(\u_rf_if.i_rreq ),
    .Y(_1722_)
);

DFFSR _4826_ (
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1840_),
    .CLK(clk_sys_bF$buf14),
    .Q(ibus_pending_rdt[15])
);

OAI21X1 _4406_ (
    .A(_1529_),
    .B(_1531_),
    .C(_1533_),
    .Y(_1469_)
);

FILL FILL_1__3419_ (
);

NAND2X1 _2489_ (
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(_1028_),
    .Y(_1029_)
);

NAND2X1 _3850_ (
    .A(rf_rreq_bF$buf3),
    .B(\u_cpu.decode.i_wb_rdt [4]),
    .Y(_414_)
);

OAI21X1 _3430_ (
    .A(_46_),
    .B(_302_),
    .C(\u_rf_if.stream_cnt [4]),
    .Y(_45_)
);

OAI21X1 _3010_ (
    .A(\u_rf_if.issue_chunk [0]),
    .B(_1696_),
    .C(_32__bF$buf1),
    .Y(_1585_)
);

FILL FILL_1_BUFX2_insert12 (
);

FILL FILL_1_BUFX2_insert16 (
);

FILL FILL_0__2529_ (
);

OAI21X1 _4635_ (
    .A(ibus_pending_ack_bF$buf3),
    .B(_1954_),
    .C(_1955_),
    .Y(\u_cpu.i_ibus_rdt [1])
);

OAI21X1 _4215_ (
    .A(_1191_),
    .B(_1164__bF$buf0),
    .C(_1193_),
    .Y(_1104_)
);

FILL FILL_1__3172_ (
);

FILL FILL_0__2282_ (
);

NAND3X1 _2701_ (
    .A(_243_),
    .B(_244_),
    .C(_99_),
    .Y(_245_)
);

FILL FILL_0__3487_ (
);

INVX2 _3906_ (
    .A(_681_),
    .Y(_683_)
);

FILL FILL_1__2443_ (
);

NAND3X1 _2298_ (
    .A(_1315__bF$buf1),
    .B(_1394_),
    .C(_1303__bF$buf2),
    .Y(_1395_)
);

NAND2X1 _4444_ (
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .B(_1553_),
    .Y(_1554_)
);

OAI21X1 _4024_ (
    .A(_892__bF$buf2),
    .B(_902_),
    .C(_904_),
    .Y(_862_)
);

DFFPOSX1 _2930_ (
    .D(_556_),
    .CLK(clk_sys_bF$buf18),
    .Q(\u_rf_if.read_buf0 [28])
);

NOR2X1 _2510_ (
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .B(_810_),
    .Y(_1008_)
);

NOR2X1 _3715_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_166_),
    .Y(\u_cpu.cnt0to3 )
);

FILL FILL_1__2672_ (
);

FILL FILL_1__3457_ (
);

FILL FILL_0__2567_ (
);

NAND3X1 _4673_ (
    .A(rf_rreq_bF$buf2),
    .B(rreg1[4]),
    .C(_1895__bF$buf1),
    .Y(_1981_)
);

NAND3X1 _4253_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1227_)
);

FILL FILL_0__4713_ (
);

OAI21X1 _3944_ (
    .A(_683_),
    .B(_708_),
    .C(_709_),
    .Y(_640_)
);

INVX1 _3524_ (
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_426_)
);

AOI21X1 _3104_ (
    .A(_1651_),
    .B(_1650_),
    .C(rst_bF$buf6),
    .Y(_539_)
);

FILL FILL_1__2481_ (
);

INVX1 _4729_ (
    .A(ibus_pending_rdt[6]),
    .Y(_2015_)
);

MUX2X1 _4309_ (
    .A(\u_cpu.alu.i_op_b ),
    .B(\u_mem_serial.shift_rx [31]),
    .S(_1154_),
    .Y(_1270_)
);

FILL FILL_1__3686_ (
);

FILL FILL144750x104550 (
);

NAND2X1 _4482_ (
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .B(_1530__bF$buf3),
    .Y(_1579_)
);

OAI21X1 _4062_ (
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_928_),
    .C(_929_),
    .Y(_875_)
);

FILL FILL_0__4522_ (
);

AND2X2 _3753_ (
    .A(_161_),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_137_)
);

NAND2X1 _3333_ (
    .A(_4_),
    .B(_1822_),
    .Y(_1821_)
);

NOR2X1 _4538_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_1888_)
);

DFFPOSX1 _4118_ (
    .D(_867_),
    .CLK(clk_sys_bF$buf8),
    .Q(\u_cpu.bufreg.data [4])
);

FILL FILL_1__3495_ (
);

INVX1 _4291_ (
    .A(\u_cpu.bufreg2.dlo [18]),
    .Y(_1257_)
);

OAI21X1 _2604_ (
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [6]),
    .C(\u_mem_serial.bit_count_0_bF$buf2 ),
    .Y(_812_)
);

FILL FILL_0__4751_ (
);

OAI21X1 _3809_ (
    .A(\u_cpu.decode.co_mem_signed ),
    .B(_375_),
    .C(_398_),
    .Y(\u_cpu.decode.co_immdec_en [1])
);

DFFPOSX1 _3982_ (
    .D(_638_),
    .CLK(clk_sys_bF$buf31),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

NAND2X1 _3562_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(_484__bF$buf3),
    .Y(_460_)
);

NAND3X1 _3142_ (
    .A(_10__bF$buf2),
    .B(_1715__bF$buf4),
    .C(_1816_),
    .Y(_1677_)
);

INVX1 _4767_ (
    .A(clk_div[0]),
    .Y(_1863_)
);

DFFPOSX1 _4347_ (
    .D(_1103_),
    .CLK(clk_sys_bF$buf28),
    .Q(\u_cpu.bufreg2.dlo [2])
);

FILL FILL144450x86550 (
);

DFFPOSX1 _2833_ (
    .D(_499_),
    .CLK(clk_sys_bF$buf24),
    .Q(\u_rf_if.write_wait [2])
);

NOR2X1 _2413_ (
    .A(\u_mem_serial.state [1]),
    .B(_1296_),
    .Y(_1297_)
);

FILL FILL_0__3199_ (
);

FILL FILL143850x136950 (
);

OAI21X1 _3618_ (
    .A(\u_cpu.bne_or_bge ),
    .B(_2083_),
    .C(_2077_),
    .Y(_2084_)
);

OAI21X1 _3791_ (
    .A(_384_),
    .B(_385_),
    .C(_388_),
    .Y(\u_cpu.alu.i_sub )
);

NOR2X1 _3371_ (
    .A(\u_rf_if.rreg1_latched [3]),
    .B(\u_rf_if.rreg1_latched [4]),
    .Y(_2104_)
);

INVX1 _4576_ (
    .A(rf_read_reg1[0]),
    .Y(_1916_)
);

NAND3X1 _4156_ (
    .A(_1137_),
    .B(_1142_),
    .C(_1143_),
    .Y(_1144_)
);

FILL FILL_0__3411_ (
);

FILL FILL_0__4616_ (
);

DFFPOSX1 _2642_ (
    .D(_70_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.last_req_key [9])
);

NAND2X1 _2222_ (
    .A(\u_mem_serial.shift_rx [19]),
    .B(_1425_),
    .Y(_1449_)
);

DFFPOSX1 _3847_ (
    .D(_754_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [7])
);

INVX1 _3427_ (
    .A(\u_rf_if.ready_pulse ),
    .Y(_43_)
);

NAND2X1 _3007_ (
    .A(_1697_),
    .B(_1817_),
    .Y(_1583_)
);

INVX1 _3180_ (
    .A(\u_rf_if.write_wait [4]),
    .Y(_1706_)
);

FILL FILL_0__2699_ (
);

AOI21X1 _4385_ (
    .A(_1515_),
    .B(_1501_),
    .C(_1511_),
    .Y(_1654_)
);

FILL FILL_0__3640_ (
);

DFFPOSX1 _2871_ (
    .D(_533_),
    .CLK(clk_sys_bF$buf12),
    .Q(\u_rf_if.read_buf0 [10])
);

AOI22X1 _2451_ (
    .A(_840_),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(\u_cpu.bufreg2.dlo [6]),
    .D(_1048_),
    .Y(_1067_)
);

NOR2X1 _3656_ (
    .A(\u_cpu.alu.i_cnt0 ),
    .B(\u_cpu.alu.cmp_r ),
    .Y(_2143_)
);

NAND3X1 _3236_ (
    .A(_2154__bF$buf3),
    .B(_2152__bF$buf0),
    .C(_1801_),
    .Y(_1747_)
);

AOI22X1 _4194_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [6]),
    .C(_1172__bF$buf0),
    .D(_1177_),
    .Y(_1178_)
);

DFFPOSX1 _2927_ (
    .D(_558_),
    .CLK(clk_sys_bF$buf17),
    .Q(\u_rf_if.pending_read )
);

OAI21X1 _2507_ (
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .B(_810_),
    .C(_798_),
    .Y(_1011_)
);

FILL FILL_0__4654_ (
);

FILL FILL_1__2249_ (
);

NOR2X1 _2680_ (
    .A(_257_),
    .B(_265_),
    .Y(_266_)
);

AND2X2 _2260_ (
    .A(_1422_),
    .B(_1310_),
    .Y(_774_)
);

OAI21X1 _3885_ (
    .A(_662_),
    .B(_663_),
    .C(_661_),
    .Y(_664_)
);

MUX2X1 _3465_ (
    .A(_324_),
    .B(_327_),
    .S(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_323_)
);

INVX1 _3045_ (
    .A(\u_rf_if.rreg1_latched [0]),
    .Y(_1610_)
);

FILL FILL_0__3925_ (
);

AOI21X1 _2736_ (
    .A(_214_),
    .B(_215__bF$buf1),
    .C(_216_),
    .Y(_57_)
);

OAI21X1 _2316_ (
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_1308_),
    .C(\u_mem_serial.state [1]),
    .Y(_1379_)
);

FILL FILL_1__4624_ (
);

INVX1 _3694_ (
    .A(\u_cpu.bufreg2.o_sh_done ),
    .Y(_154_)
);

OAI21X1 _3274_ (
    .A(_18__bF$buf1),
    .B(_1775_),
    .C(\u_rf_if.read_buf1 [13]),
    .Y(_1774_)
);

NAND2X1 _4479_ (
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_1553_),
    .Y(_1577_)
);

OAI21X1 _4059_ (
    .A(_892__bF$buf0),
    .B(_925_),
    .C(_927_),
    .Y(_874_)
);

FILL FILL_0__3734_ (
);

OAI21X1 _2965_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(_1729_),
    .C(_1731_),
    .Y(_615_)
);

NAND2X1 _2545_ (
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_972_)
);

FILL FILL_0__4692_ (
);

FILL FILL_1__2287_ (
);

INVX1 _3083_ (
    .A(\u_rf_if.rreg1_latched [4]),
    .Y(_1636_)
);

NOR2X1 _4288_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_1251_),
    .Y(_1255_)
);

FILL FILL_0__3963_ (
);

FILL FILL_0__3123_ (
);

FILL FILL_0__4328_ (
);

NOR2X1 _2774_ (
    .A(_116_),
    .B(_124_),
    .Y(_125_)
);

AOI21X1 _2354_ (
    .A(_1345_),
    .B(_1348_),
    .C(rst_bF$buf10),
    .Y(_754_)
);

NAND2X1 _3979_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(_688_),
    .Y(_733_)
);

NAND2X1 _3559_ (
    .A(\u_rf_if.wen0_r ),
    .B(\u_rf_if.rtrig1 ),
    .Y(_458_)
);

NAND3X1 _3139_ (
    .A(_2154__bF$buf4),
    .B(_2062__bF$buf0),
    .C(_2150_),
    .Y(_1675_)
);

DFFPOSX1 _4500_ (
    .D(_1482_),
    .CLK(clk_sys_bF$buf29),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

FILL FILL_1__4662_ (
);

OAI21X1 _4097_ (
    .A(_892__bF$buf3),
    .B(_938_),
    .C(_953_),
    .Y(_886_)
);

NAND2X1 _2583_ (
    .A(\u_mem_serial.bit_count [4]),
    .B(_832_),
    .Y(_833_)
);

BUFX2 _2163_ (
    .A(_2161_),
    .Y(o_rf_sync)
);

INVX2 _3788_ (
    .A(\u_cpu.branch_op ),
    .Y(_386_)
);

AOI22X1 _3368_ (
    .A(_2105_),
    .B(_2102_),
    .C(_2106_),
    .D(_2110_),
    .Y(_2101_)
);

FILL FILL_0__3408_ (
);

FILL FILL_0__3161_ (
);

DFFPOSX1 _2639_ (
    .D(_56_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.tx_state [0])
);

INVX1 _2219_ (
    .A(_1379_),
    .Y(_1451_)
);

FILL FILL_1__3742_ (
);

NAND2X1 _2392_ (
    .A(\u_mem_serial.shift_rx [13]),
    .B(_1297__bF$buf2),
    .Y(_1318_)
);

DFFPOSX1 _3597_ (
    .D(_876_),
    .CLK(clk_sys_bF$buf0),
    .Q(\u_cpu.bufreg.data [25])
);

NAND2X1 _3177_ (
    .A(_1705_),
    .B(_1704_),
    .Y(_1703_)
);

FILL FILL_0__2432_ (
);

DFFPOSX1 _2868_ (
    .D(_590_),
    .CLK(clk_sys_bF$buf2),
    .Q(\u_rf_if.read_buf1 [17])
);

AOI21X1 _2448_ (
    .A(_1066_),
    .B(_1069_),
    .C(_853_),
    .Y(_1070_)
);

FILL FILL_1__4336_ (
);

FILL FILL_0__2661_ (
);

FILL FILL_0__3446_ (
);

FILL FILL_0__3026_ (
);

NAND3X1 _2677_ (
    .A(_214_),
    .B(_267_),
    .C(_268_),
    .Y(_269_)
);

OAI21X1 _2257_ (
    .A(_1316__bF$buf2),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [26]),
    .Y(_1424_)
);

DFFSR _4823_ (
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1843_),
    .CLK(clk_sys_bF$buf5),
    .Q(ibus_pending_rdt[12])
);

INVX4 _4403_ (
    .A(_1530__bF$buf0),
    .Y(_1531_)
);

FILL FILL_0__2470_ (
);

FILL FILL_0__3675_ (
);

FILL FILL_1__2211_ (
);

INVX1 _2486_ (
    .A(\u_cpu.bufreg.data [21]),
    .Y(_1032_)
);

OAI21X1 _4632_ (
    .A(_1877__bF$buf4),
    .B(_1952_),
    .C(_1953_),
    .Y(\u_cpu.decode.i_wb_rdt [7])
);

INVX1 _4212_ (
    .A(\u_cpu.bufreg2.dlo [1]),
    .Y(_1191_)
);

FILL FILL_0__3484_ (
);

FILL FILL_0__3064_ (
);

INVX1 _3903_ (
    .A(\u_cpu.decode.co_immdec_en [3]),
    .Y(_680_)
);

FILL FILL_0__4689_ (
);

FILL FILL_0__4269_ (
);

FILL FILL_1__3225_ (
);

FILL FILL145050x100950 (
);

NAND2X1 _2295_ (
    .A(\u_mem_serial.shift_rx [27]),
    .B(_1297__bF$buf2),
    .Y(_1397_)
);

FILL FILL_0__2335_ (
);

NAND2X1 _4441_ (
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .B(_1530__bF$buf0),
    .Y(_1552_)
);

NAND2X1 _4021_ (
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [11]),
    .Y(_903_)
);

INVX1 _3712_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_168_)
);

FILL FILL_0__4078_ (
);

FILL FILL_0__2984_ (
);

NOR2X1 _4670_ (
    .A(clk_div[3]),
    .B(_1978_),
    .Y(_1979_)
);

OAI21X1 _4250_ (
    .A(_1223_),
    .B(_1143_),
    .C(_1136_),
    .Y(_1224_)
);

FILL FILL_0__3349_ (
);

FILL FILL_1__2725_ (
);

OAI21X1 _3941_ (
    .A(_665__bF$buf3),
    .B(_706_),
    .C(_707_),
    .Y(_639_)
);

NOR2X1 _3521_ (
    .A(\u_rf_if.read_buf1 [5]),
    .B(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_423_)
);

AOI21X1 _3101_ (
    .A(_1649_),
    .B(_1648_),
    .C(rst_bF$buf6),
    .Y(_538_)
);

OAI21X1 _4726_ (
    .A(_1950_),
    .B(_1983__bF$buf2),
    .C(_2013_),
    .Y(_1847_)
);

AND2X2 _4306_ (
    .A(_1154_),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1268_)
);

FILL FILL_1__3263_ (
);

FILL FILL_0__2373_ (
);

FILL FILL_1__2534_ (
);

AOI21X1 _2389_ (
    .A(_1317_),
    .B(_1320_),
    .C(rst_bF$buf10),
    .Y(_747_)
);

AOI21X1 _3750_ (
    .A(_163_),
    .B(_176_),
    .C(_177_),
    .Y(_135_)
);

OAI21X1 _3330_ (
    .A(_18__bF$buf2),
    .B(_1819_),
    .C(\u_rf_if.read_buf1 [25]),
    .Y(_1818_)
);

OAI21X1 _4535_ (
    .A(_1877__bF$buf3),
    .B(_1884_),
    .C(_1885_),
    .Y(\u_cpu.decode.i_wb_rdt [16])
);

DFFPOSX1 _4115_ (
    .D(_870_),
    .CLK(clk_sys_bF$buf7),
    .Q(\u_cpu.bufreg.data [0])
);

FILL FILL_0__2182_ (
);

OAI22X1 _2601_ (
    .A(_813_),
    .B(_814_),
    .C(_811_),
    .D(_812_),
    .Y(_815_)
);

FILL FILL_0__3387_ (
);

INVX1 _3806_ (
    .A(\u_cpu.decode.opcode [1]),
    .Y(_396_)
);

FILL FILL_1__2763_ (
);

FILL FILL_1__3548_ (
);

AOI21X1 _2198_ (
    .A(_1464_),
    .B(_1465_),
    .C(rst_bF$buf1),
    .Y(_793_)
);

FILL FILL_0__2238_ (
);

OAI21X1 _4764_ (
    .A(_1968_),
    .B(_1983__bF$buf1),
    .C(_2037_),
    .Y(_1861_)
);

DFFPOSX1 _4344_ (
    .D(_1106_),
    .CLK(clk_sys_bF$buf37),
    .Q(\u_cpu.bufreg2.dhi [6])
);

DFFPOSX1 _2830_ (
    .D(_545_),
    .CLK(clk_sys_bF$buf39),
    .Q(\u_rf_if.read_buf0 [21])
);

NAND2X1 _2410_ (
    .A(_1083_),
    .B(_1079_),
    .Y(_1300_)
);

AOI21X1 _3615_ (
    .A(_2080_),
    .B(_2077_),
    .C(_2078_),
    .Y(_2081_)
);

FILL FILL_1__2572_ (
);

FILL FILL144450x111750 (
);

INVX1 _4573_ (
    .A(ibus_pending_rdt[20]),
    .Y(_1914_)
);

NAND2X1 _4153_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .B(_1140_),
    .Y(_1141_)
);

FILL FILL_0__4613_ (
);

NAND2X1 _3844_ (
    .A(rf_rreq_bF$buf7),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .Y(_411_)
);

NAND2X1 _3424_ (
    .A(\u_rf_if.stream_cnt [2]),
    .B(_42_),
    .Y(_41_)
);

NAND2X1 _3004_ (
    .A(_1697_),
    .B(_1822_),
    .Y(_1467_)
);

OAI21X1 _4629_ (
    .A(_1877__bF$buf0),
    .B(_1950_),
    .C(_1951_),
    .Y(\u_cpu.decode.i_wb_rdt [8])
);

NOR2X1 _4209_ (
    .A(mem_dbus_ack_bF$buf3),
    .B(_1185_),
    .Y(_1189_)
);

FILL FILL_1__3586_ (
);

FILL FILL_0__2276_ (
);

NAND3X1 _4382_ (
    .A(\u_cpu.ctrl.i_utype ),
    .B(\u_cpu.cnt12to31 ),
    .C(\u_cpu.bufreg.i_imm ),
    .Y(_1513_)
);

FILL FILL_0__4422_ (
);

OAI21X1 _3653_ (
    .A(_2113_),
    .B(_2124_),
    .C(_2112_),
    .Y(_2140_)
);

NAND3X1 _3233_ (
    .A(_2154__bF$buf3),
    .B(_2152__bF$buf0),
    .C(_1798_),
    .Y(_1745_)
);

OAI21X1 _4438_ (
    .A(_1545_),
    .B(_1531_),
    .C(_1550_),
    .Y(_1484_)
);

NAND2X1 _4018_ (
    .A(\u_cpu.bufreg.data [11]),
    .B(_892__bF$buf1),
    .Y(_901_)
);

OAI21X1 _4191_ (
    .A(_1153_),
    .B(_1164__bF$buf4),
    .C(_1175_),
    .Y(_1098_)
);

DFFPOSX1 _2924_ (
    .D(_560_),
    .CLK(clk_sys_bF$buf35),
    .Q(\u_rf_if.write_wait [5])
);

NAND2X1 _2504_ (
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_1014_)
);

FILL FILL_0__4651_ (
);

FILL FILL_0__4231_ (
);

NAND2X1 _3709_ (
    .A(_165_),
    .B(_163_),
    .Y(_166_)
);

INVX2 _3882_ (
    .A(rf_rreq_bF$buf1),
    .Y(_661_)
);

NOR2X1 _3462_ (
    .A(\u_rf_if.read_buf0 [15]),
    .B(_446__bF$buf0),
    .Y(_320_)
);

AOI21X1 _3042_ (
    .A(_1625_),
    .B(\u_rf_if.issue_chunk [2]),
    .C(\u_rf_if.issue_chunk [3]),
    .Y(_1608_)
);

NAND2X1 _4667_ (
    .A(clk_div[2]),
    .B(_1975_),
    .Y(_1976_)
);

OAI21X1 _4247_ (
    .A(_1130_),
    .B(_1133_),
    .C(\u_cpu.bufreg2.dhi [4]),
    .Y(_1221_)
);

AOI21X1 _2733_ (
    .A(_217_),
    .B(_215__bF$buf3),
    .C(_218_),
    .Y(_58_)
);

OAI21X1 _2313_ (
    .A(\u_mem_serial.req_pending ),
    .B(_1306_),
    .C(_1381_),
    .Y(_1382_)
);

FILL FILL_0__4460_ (
);

FILL FILL_0__4040_ (
);

AND2X2 _3938_ (
    .A(rf_rreq_bF$buf7),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .Y(_705_)
);

OAI21X1 _3518_ (
    .A(_448_),
    .B(_421_),
    .C(_426_),
    .Y(_420_)
);

NAND3X1 _3691_ (
    .A(\u_cpu.state.init_done ),
    .B(_142_),
    .C(_143_),
    .Y(_151_)
);

OAI21X1 _3271_ (
    .A(_18__bF$buf4),
    .B(_1775_),
    .C(\u_rf_if.read_buf1 [12]),
    .Y(_1772_)
);

AOI21X1 _4476_ (
    .A(_1511_),
    .B(_1575_),
    .C(_1574_),
    .Y(_1497_)
);

NAND2X1 _4056_ (
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [29]),
    .Y(_926_)
);

FILL FILL_0__3311_ (
);

NOR2X1 _2962_ (
    .A(rst_bF$buf5),
    .B(_472_),
    .Y(_491_)
);

NAND3X1 _2542_ (
    .A(_966_),
    .B(_970_),
    .C(_974_),
    .Y(_975_)
);

INVX1 _3747_ (
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_189_)
);

NAND3X1 _3327_ (
    .A(_2154__bF$buf0),
    .B(_10__bF$buf2),
    .C(_1816_),
    .Y(_1815_)
);

FILL FILL_1__3069_ (
);

OAI21X1 _3080_ (
    .A(raddr[8]),
    .B(_1697_),
    .C(_32__bF$buf1),
    .Y(_1633_)
);

FILL FILL_0__2599_ (
);

AOI22X1 _4285_ (
    .A(\u_mem_serial.shift_rx [20]),
    .B(mem_dbus_ack_bF$buf1),
    .C(_1172__bF$buf3),
    .D(_1252_),
    .Y(_1253_)
);

FILL FILL_0__4325_ (
);

NAND2X1 _2771_ (
    .A(ren_bF$buf2),
    .B(raddr[1]),
    .Y(_164_)
);

INVX1 _2351_ (
    .A(_1350_),
    .Y(_1351_)
);

NAND2X1 _3976_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_688_),
    .Y(_731_)
);

NAND2X1 _3556_ (
    .A(_457_),
    .B(_476_),
    .Y(_456_)
);

NAND3X1 _3136_ (
    .A(_10__bF$buf1),
    .B(_1715__bF$buf1),
    .C(_1813_),
    .Y(_1673_)
);

FILL FILL_0__2811_ (
);

INVX1 _4094_ (
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_951_)
);

NOR2X1 _2827_ (
    .A(raddr[5]),
    .B(raddr[4]),
    .Y(_74_)
);

NAND2X1 _2407_ (
    .A(_1297__bF$buf4),
    .B(_1302_),
    .Y(_1303_)
);

CLKBUF1 CLKBUF1_insert250 (
    .A(clk_sys),
    .Y(clk_sys_hier0_bF$buf0)
);

FILL FILL_0__4554_ (
);

FILL FILL_1__3510_ (
);

OAI21X1 _2580_ (
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.bufreg.data [14]),
    .C(\u_mem_serial.bit_count_0_bF$buf2 ),
    .Y(_836_)
);

FILL FILL_1__4715_ (
);

DFFPOSX1 _3785_ (
    .D(_760_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [1])
);

NAND3X1 _3365_ (
    .A(_2154__bF$buf2),
    .B(_2099_),
    .C(_2150_),
    .Y(_2098_)
);

FILL FILL_0__2620_ (
);

FILL FILL_0__2200_ (
);

FILL FILL_0__3825_ (
);

DFFPOSX1 _2636_ (
    .D(_65_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.last_req_key [10])
);

FILL FILL145050x10950 (
);

AND2X2 _2216_ (
    .A(_1453_),
    .B(_1310_),
    .Y(_787_)
);

DFFPOSX1 _3594_ (
    .D(_134_),
    .CLK(clk_sys_bF$buf45),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

INVX1 _3174_ (
    .A(_1701_),
    .Y(_1700_)
);

DFFPOSX1 _4799_ (
    .D(_1863_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(clk_div[0])
);

OAI21X1 _4379_ (
    .A(_1505_),
    .B(_1508_),
    .C(_1509_),
    .Y(_1510_)
);

FILL FILL_0__3634_ (
);

FILL FILL_0__3214_ (
);

DFFPOSX1 _2865_ (
    .D(_509_),
    .CLK(clk_sys_bF$buf44),
    .Q(raddr[0])
);

NAND3X1 _2445_ (
    .A(_966_),
    .B(_1071_),
    .C(_1072_),
    .Y(_1073_)
);

FILL FILL_0__4592_ (
);

FILL FILL_1__4753_ (
);

INVX1 _4188_ (
    .A(\u_cpu.bufreg2.dlo [8]),
    .Y(_1173_)
);

FILL FILL_0__4228_ (
);

NAND2X1 _2674_ (
    .A(_271_),
    .B(_269_),
    .Y(_272_)
);

AOI21X1 _2254_ (
    .A(_1424_),
    .B(_1426_),
    .C(rst_bF$buf1),
    .Y(_776_)
);

OR2X2 _3879_ (
    .A(rreg1[0]),
    .B(\u_cpu.branch_op ),
    .Y(_658_)
);

OAI21X1 _3459_ (
    .A(_448_),
    .B(_318_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_317_)
);

OAI21X1 _3039_ (
    .A(_14_),
    .B(_1626_),
    .C(_9_),
    .Y(_1606_)
);

FILL FILL_0__2714_ (
);

DFFSR _4820_ (
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1846_),
    .CLK(clk_sys_bF$buf36),
    .Q(ibus_pending_rdt[9])
);

OAI21X1 _4400_ (
    .A(_1506_),
    .B(_1510_),
    .C(_1528_),
    .Y(\u_cpu.ctrl.o_rd )
);

FILL FILL_0__3919_ (
);

FILL FILL_1__4142_ (
);

FILL FILL_0__3252_ (
);

NAND2X1 _2483_ (
    .A(_1034_),
    .B(_845_),
    .Y(_1035_)
);

NOR2X1 _3688_ (
    .A(gnd),
    .B(_148_),
    .Y(\u_cpu.o_dbus_cyc )
);

NAND2X1 _3268_ (
    .A(_2152__bF$buf3),
    .B(_2065_),
    .Y(_1770_)
);

FILL FILL_0__2523_ (
);

FILL FILL_0__3728_ (
);

FILL FILL_1__4791_ (
);

FILL FILL_1__4371_ (
);

AOI21X1 _2959_ (
    .A(_1604_),
    .B(_1722_),
    .C(_614_),
    .Y(_489_)
);

AOI21X1 _2539_ (
    .A(_803_),
    .B(_829_),
    .C(_977_),
    .Y(_978_)
);

NAND3X1 _3900_ (
    .A(_672_),
    .B(_674_),
    .C(_676_),
    .Y(_677_)
);

FILL FILL_0__4266_ (
);

AOI21X1 _2292_ (
    .A(_1396_),
    .B(_1399_),
    .C(rst_bF$buf10),
    .Y(_765_)
);

NAND2X1 _3497_ (
    .A(\u_rf_if.read_buf1 [19]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_354_)
);

NAND3X1 _3077_ (
    .A(_2152__bF$buf3),
    .B(_1715__bF$buf1),
    .C(_1813_),
    .Y(_1631_)
);

FILL FILL_0__2752_ (
);

FILL FILL_0__3957_ (
);

FILL FILL_0__3537_ (
);

FILL FILL_0__3117_ (
);

FILL FILL_1__4180_ (
);

FILL FILL_0__3290_ (
);

INVX1 _2768_ (
    .A(\u_rf_if.o_wdata [0]),
    .Y(_192_)
);

OAI21X1 _2348_ (
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [5]),
    .Y(_1353_)
);

FILL FILL_1__3031_ (
);

FILL FILL_0__2561_ (
);

FILL FILL_0__3766_ (
);

NOR2X1 _2997_ (
    .A(_745_),
    .B(_744_),
    .Y(_505_)
);

OAI22X1 _2577_ (
    .A(_837_),
    .B(_838_),
    .C(_835_),
    .D(_836_),
    .Y(_839_)
);

NAND3X1 _4723_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [9]),
    .C(_1984__bF$buf2),
    .Y(_2012_)
);

NOR2X1 _4303_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_1147_),
    .Y(_1266_)
);

FILL FILL_0__2790_ (
);

FILL FILL_0__3575_ (
);

FILL FILL_0__3155_ (
);

FILL FILL_1__3316_ (
);

INVX1 _2386_ (
    .A(_1322_),
    .Y(_1323_)
);

FILL FILL_0__2426_ (
);

INVX1 _4532_ (
    .A(_1883_),
    .Y(\u_cpu.decode.i_wb_rdt [3])
);

DFFPOSX1 _4112_ (
    .D(_873_),
    .CLK(clk_sys_bF$buf0),
    .Q(\u_cpu.bufreg.data [28])
);

DFFPOSX1 _3803_ (
    .D(_758_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [3])
);

FILL FILL_0__4169_ (
);

DFFPOSX1 _2195_ (
    .D(_789_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [18])
);

FILL FILL_0__2655_ (
);

NOR2X1 _4761_ (
    .A(clk_div[2]),
    .B(_1975_),
    .Y(_2036_)
);

DFFPOSX1 _4341_ (
    .D(_1109_),
    .CLK(clk_sys_bF$buf37),
    .Q(\u_cpu.bufreg2.dhi [3])
);

FILL FILL_1__2816_ (
);

FILL FILL_0__3193_ (
);

OR2X2 _3612_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(gnd),
    .Y(_2078_)
);

DFFSR _4817_ (
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1849_),
    .CLK(clk_sys_bF$buf5),
    .Q(ibus_pending_rdt[6])
);

FILL FILL_1__3354_ (
);

FILL FILL_1__4559_ (
);

FILL FILL_0__2464_ (
);

INVX1 _4570_ (
    .A(rf_read_reg1[2]),
    .Y(_1912_)
);

NOR2X1 _4150_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1138_)
);

FILL FILL_0__3669_ (
);

DFFPOSX1 _3841_ (
    .D(_755_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.shift_rx [6])
);

NAND2X1 _3421_ (
    .A(\u_rf_if.stream_active ),
    .B(_39_),
    .Y(_38_)
);

NAND2X1 _3001_ (
    .A(_25_),
    .B(_1697_),
    .Y(_746_)
);

OAI21X1 _4626_ (
    .A(_1877__bF$buf2),
    .B(_1948_),
    .C(_1949_),
    .Y(\u_cpu.decode.i_wb_rdt [9])
);

AOI22X1 _4206_ (
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [3]),
    .C(_1172__bF$buf1),
    .D(_1186_),
    .Y(_1187_)
);

FILL FILL_0__2693_ (
);

FILL FILL_0__3898_ (
);

FILL FILL_0__3478_ (
);

FILL FILL_0__3058_ (
);

INVX1 _2289_ (
    .A(_1401_),
    .Y(_1402_)
);

NAND3X1 _3650_ (
    .A(\u_cpu.alu.i_cmp_sig ),
    .B(_2129_),
    .C(_2131_),
    .Y(_2137_)
);

OAI21X1 _3230_ (
    .A(_18__bF$buf0),
    .B(_1744_),
    .C(\u_rf_if.read_buf1 [3]),
    .Y(_1743_)
);

FILL FILL_0__2329_ (
);

INVX1 _4435_ (
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_1549_)
);

NAND3X1 _4015_ (
    .A(_893_),
    .B(_898_),
    .C(_895_),
    .Y(_899_)
);

FILL FILL_1__3392_ (
);

FILL FILL_1__4597_ (
);

DFFPOSX1 _2921_ (
    .D(_521_),
    .CLK(clk_sys_bF$buf40),
    .Q(\u_rf_if.read_buf0 [1])
);

INVX1 _2501_ (
    .A(\u_cpu.bufreg.data [17]),
    .Y(_1017_)
);

DFFPOSX1 _3706_ (
    .D(_788_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [19])
);

FILL FILL_1__3028_ (
);

FILL FILL_0__2978_ (
);

NAND3X1 _4664_ (
    .A(_1967_),
    .B(_1972_),
    .C(_1973_),
    .Y(_1825_)
);

OR2X2 _4244_ (
    .A(_1154_),
    .B(\u_mem_serial.shift_rx [28]),
    .Y(_1219_)
);

FILL FILL_0__4704_ (
);

FILL FILL144750x111750 (
);

OAI21X1 _2730_ (
    .A(_220_),
    .B(_215__bF$buf3),
    .C(_202_),
    .Y(_221_)
);

AOI21X1 _2310_ (
    .A(_1378_),
    .B(_1383_),
    .C(_1296_),
    .Y(_1385_)
);

FILL FILL_0__3096_ (
);

MUX2X1 _3935_ (
    .A(\u_cpu.decode.i_wb_rdt [12]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .S(rf_rreq_bF$buf7),
    .Y(_703_)
);

INVX1 _3515_ (
    .A(\u_rf_if.read_buf1 [24]),
    .Y(_409_)
);

FILL FILL_0__2367_ (
);

OAI21X1 _4473_ (
    .A(_1530__bF$buf1),
    .B(_1572_),
    .C(_1573_),
    .Y(_1496_)
);

NAND2X1 _4053_ (
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_924_)
);

INVX1 _3744_ (
    .A(rf_ready),
    .Y(_187_)
);

NOR3X1 _3324_ (
    .A(\u_rf_if.issue_chunk [1]),
    .B(_5_),
    .C(_2069_),
    .Y(_1813_)
);

NAND2X1 _4529_ (
    .A(\u_mem_serial.shift_rx [2]),
    .B(_1877__bF$buf3),
    .Y(_1882_)
);

OAI21X1 _4109_ (
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_900_),
    .C(_960_),
    .Y(_891_)
);

FILL FILL_1__3066_ (
);

OAI21X1 _4282_ (
    .A(_1248_),
    .B(_1164__bF$buf2),
    .C(_1250_),
    .Y(_1114_)
);

FILL FILL145050x108150 (
);

FILL FILL_0__4742_ (
);

FILL FILL144450x93750 (
);

FILL FILL_1__2337_ (
);

NAND2X1 _3973_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .B(_688_),
    .Y(_729_)
);

OAI21X1 _3553_ (
    .A(gnd),
    .B(_472_),
    .C(_454_),
    .Y(_453_)
);

NAND3X1 _3133_ (
    .A(_2062__bF$buf2),
    .B(_1715__bF$buf0),
    .C(_1807_),
    .Y(_1671_)
);

NAND3X1 _4758_ (
    .A(rf_read_reg1[0]),
    .B(_1962_),
    .C(_1895__bF$buf0),
    .Y(_2034_)
);

OAI21X1 _4338_ (
    .A(_1173_),
    .B(_1164__bF$buf4),
    .C(_1291_),
    .Y(_1129_)
);

OAI21X1 _4091_ (
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_948_),
    .C(_949_),
    .Y(_884_)
);

AND2X2 _2824_ (
    .A(_76_),
    .B(\u_rf_serial.shift_rx [0]),
    .Y(rdata[0])
);

NAND2X1 _2404_ (
    .A(_1305_),
    .B(_1296_),
    .Y(_1306_)
);

OAI21X1 _3609_ (
    .A(_2075_),
    .B(_2074_),
    .C(_2073_),
    .Y(\u_cpu.mem_if.o_wb_sel [3])
);

FILL FILL_1__2986_ (
);

DFFPOSX1 _3782_ (
    .D(_786_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [20])
);

AND2X2 _3362_ (
    .A(_3_),
    .B(_2097_),
    .Y(_2096_)
);

INVX1 _4567_ (
    .A(ibus_pending_rdt[22]),
    .Y(_1910_)
);

NAND2X1 _4147_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .Y(_1135_)
);

FILL FILL_0__3402_ (
);

FILL FILL_0__4607_ (
);

DFFPOSX1 _2633_ (
    .D(_53_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.tx_state [2])
);

AOI21X1 _2213_ (
    .A(_1454_),
    .B(_1455_),
    .C(rst_bF$buf3),
    .Y(_788_)
);

FILL FILL_0__4780_ (
);

DFFPOSX1 _3838_ (
    .D(_785_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [21])
);

AOI21X1 _3418_ (
    .A(_38_),
    .B(_41_),
    .C(_31_),
    .Y(_606_)
);

FILL FILL_1__2375_ (
);

NOR2X1 _3591_ (
    .A(\u_rf_if.i_rreq ),
    .B(rf_wreq),
    .Y(_485_)
);

INVX2 _3171_ (
    .A(\u_rf_if.prefetch_active ),
    .Y(_1698_)
);

NAND3X1 _4796_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(\u_rf_if.o_waddr [2]),
    .C(\u_rf_if.o_wen ),
    .Y(_2056_)
);

AND2X2 _4376_ (
    .A(\u_cpu.ctrl.i_utype ),
    .B(\u_cpu.bufreg.i_imm ),
    .Y(_1507_)
);

FILL FILL_0__4416_ (
);

DFFPOSX1 _2862_ (
    .D(_593_),
    .CLK(clk_sys_bF$buf18),
    .Q(\u_rf_if.read_buf1 [20])
);

NAND3X1 _2442_ (
    .A(_805_),
    .B(_1075_),
    .C(_1074_),
    .Y(_1076_)
);

NAND3X1 _3647_ (
    .A(_2126_),
    .B(_2127_),
    .C(_2134_),
    .Y(\u_cpu.alu.o_rd )
);

AOI21X1 _3227_ (
    .A(_1743_),
    .B(_1741_),
    .C(rst_bF$buf7),
    .Y(_573_)
);

FILL FILL_1__2184_ (
);

FILL FILL_1__3389_ (
);

INVX1 _4185_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1170_)
);

FILL FILL_0__3440_ (
);

FILL FILL_0__3020_ (
);

DFFPOSX1 _2918_ (
    .D(_563_),
    .CLK(clk_sys_bF$buf13),
    .Q(\u_rf_if.read_buf0 [30])
);

FILL FILL_0__4645_ (
);

FILL FILL_1__3601_ (
);

AOI21X1 _2671_ (
    .A(_273_),
    .B(_274_),
    .C(_272_),
    .Y(_275_)
);

AOI21X1 _2251_ (
    .A(_1427_),
    .B(_1428_),
    .C(rst_bF$buf1),
    .Y(_777_)
);

OAI21X1 _3876_ (
    .A(\u_cpu.bufreg.i_cnt_done ),
    .B(_653_),
    .C(_656_),
    .Y(\u_cpu.bufreg.i_imm )
);

NOR2X1 _3456_ (
    .A(\u_rf_if.read_buf0 [24]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_314_)
);

INVX1 _3036_ (
    .A(\u_rf_if.rreg1_latched [3]),
    .Y(_1604_)
);

OAI21X1 _2727_ (
    .A(_114_),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_223_)
);

AND2X2 _2307_ (
    .A(_1387_),
    .B(_1310_),
    .Y(_762_)
);

FILL FILL_0__4454_ (
);

FILL FILL_0__4034_ (
);

OAI21X1 _2480_ (
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(_1036_),
    .C(_1037_),
    .Y(_1038_)
);

OAI21X1 _3685_ (
    .A(_145_),
    .B(_144_),
    .C(_147_),
    .Y(\u_cpu.bufreg.i_en )
);

NAND3X1 _3265_ (
    .A(_2154__bF$buf4),
    .B(_2062__bF$buf3),
    .C(_1768_),
    .Y(_1767_)
);

FILL FILL_0__3725_ (
);

FILL FILL_0__3305_ (
);

AOI21X1 _2956_ (
    .A(\u_rf_if.rcnt [2]),
    .B(_1690_),
    .C(_612_),
    .Y(_488_)
);

OR2X2 _2536_ (
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(\u_cpu.bufreg.data [30]),
    .Y(_981_)
);

FILL FILL_0__4683_ (
);

FILL FILL_1__4424_ (
);

NOR2X1 _3494_ (
    .A(\u_rf_if.read_buf1 [20]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .Y(_351_)
);

NAND3X1 _3074_ (
    .A(_2062__bF$buf2),
    .B(_1715__bF$buf0),
    .C(_1757_),
    .Y(_1629_)
);

NAND2X1 _4699_ (
    .A(_1880_),
    .B(_1883_),
    .Y(_1998_)
);

INVX1 _4279_ (
    .A(\u_cpu.bufreg2.dlo [21]),
    .Y(_1248_)
);

FILL FILL_0__4319_ (
);

INVX1 _2765_ (
    .A(\u_rf_if.o_waddr [0]),
    .Y(_195_)
);

NAND3X1 _2345_ (
    .A(_1315__bF$buf2),
    .B(_1355_),
    .C(_1303__bF$buf0),
    .Y(_1356_)
);

FILL FILL_0__4072_ (
);

FILL FILL145050x86550 (
);

FILL FILL_0__2805_ (
);

FILL FILL_1__4233_ (
);

OAI21X1 _4088_ (
    .A(_892__bF$buf4),
    .B(_945_),
    .C(_947_),
    .Y(_883_)
);

FILL FILL_0__3343_ (
);

FILL FILL_0__4548_ (
);

NOR2X1 _2994_ (
    .A(_743_),
    .B(_742_),
    .Y(_504_)
);

NAND2X1 _2574_ (
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_842_)
);

DFFPOSX1 _3779_ (
    .D(_762_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.state [0])
);

OAI21X1 _3359_ (
    .A(_18__bF$buf1),
    .B(_2094_),
    .C(\u_rf_if.read_buf1 [29]),
    .Y(_2093_)
);

FILL FILL_0__2614_ (
);

OAI21X1 _4720_ (
    .A(_1944_),
    .B(_1983__bF$buf3),
    .C(_2010_),
    .Y(_1844_)
);

AOI22X1 _4300_ (
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [16]),
    .C(_1172__bF$buf3),
    .D(_1263_),
    .Y(_1264_)
);

FILL FILL_0__3819_ (
);

FILL FILL_1__4462_ (
);

FILL FILL_1__4042_ (
);

CLKBUF1 CLKBUF1_insert60 (
    .A(clk_sys_hier0_bF$buf1),
    .Y(clk_sys_bF$buf25)
);

CLKBUF1 CLKBUF1_insert61 (
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf24)
);

CLKBUF1 CLKBUF1_insert62 (
    .A(clk_sys_hier0_bF$buf4),
    .Y(clk_sys_bF$buf23)
);

CLKBUF1 CLKBUF1_insert63 (
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf22)
);

CLKBUF1 CLKBUF1_insert64 (
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf21)
);

CLKBUF1 CLKBUF1_insert65 (
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf20)
);

CLKBUF1 CLKBUF1_insert66 (
    .A(clk_sys_hier0_bF$buf5),
    .Y(clk_sys_bF$buf19)
);

CLKBUF1 CLKBUF1_insert67 (
    .A(clk_sys_hier0_bF$buf0),
    .Y(clk_sys_bF$buf18)
);

CLKBUF1 CLKBUF1_insert68 (
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf17)
);

CLKBUF1 CLKBUF1_insert69 (
    .A(clk_sys_hier0_bF$buf2),
    .Y(clk_sys_bF$buf16)
);

FILL FILL_1__3313_ (
);

OAI21X1 _2383_ (
    .A(_1316__bF$buf0),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [12]),
    .Y(_1325_)
);

INVX1 _3588_ (
    .A(\u_rf_if.wdata0_next_phase ),
    .Y(_482_)
);

NAND2X1 _3168_ (
    .A(_1707_),
    .B(_1700_),
    .Y(_1695_)
);

FILL FILL_0__3628_ (
);

FILL FILL_0__3208_ (
);

FILL FILL_1__4271_ (
);

FILL FILL_0__3381_ (
);

DFFPOSX1 _2859_ (
    .D(_536_),
    .CLK(clk_sys_bF$buf12),
    .Q(\u_rf_if.rreg0_latched [4])
);

INVX1 _2439_ (
    .A(\u_mem_serial.active_we ),
    .Y(_1079_)
);

OAI21X1 _3800_ (
    .A(_393_),
    .B(_392_),
    .C(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.decode.co_rd_op )
);

FILL FILL_0__4586_ (
);

DFFPOSX1 _2192_ (
    .D(_749_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.shift_rx [12])
);

OAI21X1 _3397_ (
    .A(_25_),
    .B(_16_),
    .C(_21_),
    .Y(_12_)
);

FILL FILL_0__2232_ (
);

FILL FILL_0__3857_ (
);

FILL FILL_1__4080_ (
);

FILL FILL_1__2813_ (
);

NAND2X1 _2668_ (
    .A(\u_rf_serial.last_req_key [2]),
    .B(_229_),
    .Y(_278_)
);

AOI21X1 _2248_ (
    .A(_1429_),
    .B(_1430_),
    .C(rst_bF$buf3),
    .Y(_778_)
);

FILL FILL_0__4395_ (
);

FILL FILL_1_BUFX2_insert221 (
);

FILL FILL_1_BUFX2_insert225 (
);

FILL FILL_1_BUFX2_insert229 (
);

FILL FILL_0__2708_ (
);

DFFSR _4814_ (
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1852_),
    .CLK(clk_sys_bF$buf36),
    .Q(ibus_pending_rdt[3])
);

FILL FILL_1__3771_ (
);

FILL FILL_1__3351_ (
);

FILL FILL_1__4556_ (
);

FILL FILL_0__3246_ (
);

FILL FILL_1__2622_ (
);

DFFPOSX1 _2897_ (
    .D(_574_),
    .CLK(clk_sys_bF$buf18),
    .Q(\u_rf_if.read_buf1 [4])
);

OAI21X1 _2477_ (
    .A(_1031_),
    .B(_1040_),
    .C(_803_),
    .Y(_1041_)
);

FILL FILL_0__2517_ (
);

OAI21X1 _4623_ (
    .A(_1877__bF$buf2),
    .B(_1946_),
    .C(_1947_),
    .Y(\u_cpu.decode.i_wb_rdt [10])
);

OAI21X1 _4203_ (
    .A(_1182_),
    .B(_1164__bF$buf4),
    .C(_1184_),
    .Y(_1101_)
);

FILL FILL145050x18150 (
);

FILL FILL_0__2270_ (
);

FILL FILL_1__3636_ (
);

OAI21X1 _2286_ (
    .A(_1314_),
    .B(_1313_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_1404_)
);

FILL FILL_0__2746_ (
);

DFFSR _4852_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1865_),
    .CLK(clk_sys_bF$buf20),
    .Q(rf_read_reg0[2])
);

INVX1 _4432_ (
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1548_)
);

INVX1 _4012_ (
    .A(\u_cpu.bufreg.c_r ),
    .Y(_896_)
);

FILL FILL_1__4594_ (
);

FILL FILL_0__3284_ (
);

AND2X2 _3703_ (
    .A(_161_),
    .B(\u_cpu.state.ibus_cyc ),
    .Y(\u_cpu.o_ibus_cyc )
);

FILL FILL_0__2555_ (
);

OAI21X1 _4661_ (
    .A(_1970_),
    .B(rf_rreq_bF$buf5),
    .C(_1971_),
    .Y(rf_read_reg0_to_if[2])
);

NAND3X1 _4241_ (
    .A(_1136_),
    .B(_1140_),
    .C(_1215_),
    .Y(_1216_)
);

MUX2X1 _3932_ (
    .A(\u_cpu.decode.i_wb_rdt [13]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .S(rf_rreq_bF$buf7),
    .Y(_701_)
);

INVX1 _3512_ (
    .A(\u_rf_if.read_buf1 [26]),
    .Y(_394_)
);

FILL FILL_0__4298_ (
);

NAND3X1 _4717_ (
    .A(\u_mem_serial.shift_rx [12]),
    .B(mem_ibus_ack_bF$buf1),
    .C(_1984__bF$buf1),
    .Y(_2009_)
);

FILL FILL_0__2784_ (
);

OAI21X1 _4470_ (
    .A(_1530__bF$buf4),
    .B(_1570_),
    .C(_1571_),
    .Y(_1495_)
);

INVX1 _4050_ (
    .A(\u_cpu.bufreg.data [30]),
    .Y(_922_)
);

FILL FILL_0__3569_ (
);

FILL FILL_0__3149_ (
);

NAND2X1 _3741_ (
    .A(\u_cpu.state.ibus_cyc ),
    .B(_184_),
    .Y(_185_)
);

NAND2X1 _3321_ (
    .A(_1_),
    .B(_2092_),
    .Y(_1811_)
);

MUX2X1 _4526_ (
    .A(ibus_pending_rdt[6]),
    .B(\u_mem_serial.shift_rx [6]),
    .S(ibus_pending_ack_bF$buf1),
    .Y(_1880_)
);

NAND2X1 _4106_ (
    .A(\u_cpu.bufreg.data [13]),
    .B(_892__bF$buf3),
    .Y(_959_)
);

FILL FILL_0__2593_ (
);

FILL FILL_0__2173_ (
);

FILL FILL_1__3959_ (
);

FILL FILL_1__3119_ (
);

DFFPOSX1 _2189_ (
    .D(_771_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_mem_serial.bit_count [2])
);

NAND2X1 _3970_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(_688_),
    .Y(_727_)
);

NAND2X1 _3550_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_484__bF$buf0),
    .Y(_451_)
);

NAND3X1 _3130_ (
    .A(_1807_),
    .B(_1715__bF$buf0),
    .C(_2099_),
    .Y(_1669_)
);

FILL FILL145050x129750 (
);

FILL FILL_0__2649_ (
);

NAND3X1 _4755_ (
    .A(rf_read_reg1[1]),
    .B(_1962_),
    .C(_1895__bF$buf0),
    .Y(_2032_)
);

OAI21X1 _4335_ (
    .A(_1287_),
    .B(_1164__bF$buf2),
    .C(_1289_),
    .Y(_1128_)
);

NOR2X1 _2821_ (
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .Y(_78_)
);

OR2X2 _2401_ (
    .A(_1308_),
    .B(\u_mem_serial.clk_sys_prev ),
    .Y(_1309_)
);

FILL FILL_0__3187_ (
);

OAI21X1 _3606_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_2074_),
    .C(_2073_),
    .Y(\u_cpu.mem_if.o_wb_sel [1])
);

FILL FILL_1_BUFX2_insert191 (
);

FILL FILL_1_BUFX2_insert198 (
);

FILL FILL_0__2458_ (
);

INVX1 _4564_ (
    .A(ibus_pending_rdt[18]),
    .Y(_1908_)
);

INVX1 _4144_ (
    .A(\u_cpu.bufreg.i_init ),
    .Y(_1132_)
);

DFFPOSX1 _2630_ (
    .D(_62_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_rf_serial.req_seen )
);

AOI21X1 _2210_ (
    .A(_1456_),
    .B(_1457_),
    .C(rst_bF$buf3),
    .Y(_789_)
);

OAI21X1 _3835_ (
    .A(rf_rreq_bF$buf0),
    .B(_372_),
    .C(_406_),
    .Y(_358_)
);

OAI21X1 _3415_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .B(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .C(_32__bF$buf2),
    .Y(_28_)
);

FILL FILL_1__3157_ (
);

FILL FILL_0__2687_ (
);

NAND3X1 _4793_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [24]),
    .C(_1984__bF$buf2),
    .Y(_2054_)
);

NAND2X1 _4373_ (
    .A(_1502_),
    .B(_1503_),
    .Y(_1504_)
);

FILL FILL_0__4413_ (
);

FILL FILL_0_CLKBUF1_insert250 (
);

FILL FILL_1__2428_ (
);

NAND2X1 _3644_ (
    .A(_2129_),
    .B(_2131_),
    .Y(_2132_)
);

AOI21X1 _3224_ (
    .A(_1740_),
    .B(_1739_),
    .C(rst_bF$buf7),
    .Y(_572_)
);

DFFSR _4849_ (
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1868_),
    .CLK(clk_sys_bF$buf23),
    .Q(ibus_pending_rdt[30])
);

OAI22X1 _4429_ (
    .A(_1546_),
    .B(_1531_),
    .C(_1544_),
    .D(_1535_),
    .Y(_1479_)
);

NAND3X1 _4009_ (
    .A(\u_cpu.bufreg.c_r ),
    .B(\u_cpu.bufreg.i_rs1_en ),
    .C(rdata0[0]),
    .Y(_893_)
);

BUFX2 BUFX2_insert240 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf4)
);

BUFX2 BUFX2_insert241 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf3)
);

BUFX2 BUFX2_insert242 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf2)
);

BUFX2 BUFX2_insert243 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf1)
);

BUFX2 BUFX2_insert244 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf0)
);

FILL FILL_0__2496_ (
);

AOI21X1 _4182_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .C(\u_cpu.bufreg.i_shift_op ),
    .Y(_1167_)
);

DFFPOSX1 _2915_ (
    .D(_494_),
    .CLK(clk_sys_bF$buf40),
    .Q(\u_rf_if.rreg1_latched [4])
);

FILL FILL_0__4222_ (
);

FILL FILL_1__2657_ (
);

INVX1 _3873_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_654_)
);

OAI21X1 _3453_ (
    .A(\u_rf_if.read_buf0 [26]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_311_)
);

OAI21X1 _3033_ (
    .A(raddr[7]),
    .B(_1697_),
    .C(_32__bF$buf4),
    .Y(_1601_)
);

OAI21X1 _4658_ (
    .A(_1877__bF$buf3),
    .B(_1968_),
    .C(_1969_),
    .Y(\u_cpu.decode.i_wb_rdt [31])
);

INVX1 _4238_ (
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_1213_)
);

FILL FILL_1__3195_ (
);

FILL FILL_0__3913_ (
);

OAI21X1 _2724_ (
    .A(_119_),
    .B(_215__bF$buf0),
    .C(_202_),
    .Y(_225_)
);

INVX1 _2304_ (
    .A(_1389_),
    .Y(_1390_)
);

FILL FILL_0__4451_ (
);

MUX2X1 _3929_ (
    .A(\u_cpu.decode.i_wb_rdt [14]),
    .B(\u_cpu.csr_imm ),
    .S(rf_rreq_bF$buf6),
    .Y(_699_)
);

MUX2X1 _3509_ (
    .A(_383_),
    .B(_405_),
    .S(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_382_)
);

FILL FILL_1__2466_ (
);

OAI21X1 _3682_ (
    .A(\u_cpu.branch_op ),
    .B(_138_),
    .C(\u_cpu.decode.co_two_stage_op ),
    .Y(_145_)
);

NAND3X1 _3262_ (
    .A(_2154__bF$buf4),
    .B(_2099_),
    .C(_1768_),
    .Y(_1765_)
);

OAI21X1 _4467_ (
    .A(_1530__bF$buf0),
    .B(_1568_),
    .C(_1569_),
    .Y(_1494_)
);

OAI21X1 _4047_ (
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.i_init ),
    .C(_919_),
    .Y(_920_)
);

FILL FILL144450x46950 (
);

INVX1 _2953_ (
    .A(_610_),
    .Y(_487_)
);

INVX1 _2533_ (
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_984_)
);

FILL FILL_0__4260_ (
);

OAI21X1 _3738_ (
    .A(_163_),
    .B(_176_),
    .C(\u_cpu.state.init_done ),
    .Y(_183_)
);

OAI21X1 _3318_ (
    .A(_18__bF$buf3),
    .B(_1809_),
    .C(\u_rf_if.read_buf1 [23]),
    .Y(_1808_)
);

FILL FILL_1__2695_ (
);

OAI21X1 _3491_ (
    .A(\u_rf_if.read_buf1 [22]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_348_)
);

NAND3X1 _3071_ (
    .A(_1715__bF$buf0),
    .B(_1757_),
    .C(_2099_),
    .Y(_1627_)
);

NAND3X1 _4696_ (
    .A(_1879_),
    .B(\u_cpu.decode.i_wb_rdt [5]),
    .C(\u_cpu.decode.i_wb_rdt [30]),
    .Y(_1995_)
);

NOR2X1 _4276_ (
    .A(mem_dbus_ack_bF$buf0),
    .B(_1245_),
    .Y(_1246_)
);

FILL FILL_0__3951_ (
);

FILL FILL_0__3531_ (
);

FILL FILL_0__3111_ (
);

FILL FILL_0__4736_ (
);

AOI21X1 _2762_ (
    .A(_98_),
    .B(_197_),
    .C(_194_),
    .Y(_198_)
);

NAND2X1 _2342_ (
    .A(\u_mem_serial.shift_rx [3]),
    .B(_1297__bF$buf2),
    .Y(_1358_)
);

NAND2X1 _3967_ (
    .A(rreg1[0]),
    .B(_685_),
    .Y(_725_)
);

INVX1 _3547_ (
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_449_)
);

OAI21X1 _3127_ (
    .A(_426_),
    .B(_39_),
    .C(_449_),
    .Y(_1667_)
);

FILL FILL_0__2399_ (
);

NAND2X1 _4085_ (
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [21]),
    .Y(_946_)
);

INVX1 _2818_ (
    .A(_80_),
    .Y(_81_)
);

FILL FILL_1__3921_ (
);

NOR2X1 _2991_ (
    .A(_741_),
    .B(_740_),
    .Y(_503_)
);

NOR2X1 _2571_ (
    .A(\u_mem_serial.bit_count_0_bF$buf0 ),
    .B(_799_),
    .Y(_845_)
);

DFFPOSX1 _3776_ (
    .D(clk_sys_bF$buf33),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.clk_sys_prev )
);

NOR2X1 _3356_ (
    .A(_13_),
    .B(_20_),
    .Y(_2090_)
);

DFFPOSX1 _2627_ (
    .D(_68_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(_2161_)
);

AOI21X1 _2207_ (
    .A(_1458_),
    .B(_1459_),
    .C(rst_bF$buf3),
    .Y(_790_)
);

FILL FILL_0__4774_ (
);

FILL FILL_1__3730_ (
);

NAND3X1 _2380_ (
    .A(_1315__bF$buf1),
    .B(_1327_),
    .C(_1303__bF$buf3),
    .Y(_1328_)
);

NOR2X1 _3585_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_479_)
);

AOI21X1 _3165_ (
    .A(_1693_),
    .B(_1696_),
    .C(rst_bF$buf5),
    .Y(_559_)
);

FILL FILL_0__2420_ (
);

FILL FILL_0__3625_ (
);

DFFPOSX1 _2856_ (
    .D(_596_),
    .CLK(clk_sys_bF$buf24),
    .Q(\u_rf_if.read_buf1 [23])
);

OAI21X1 _2436_ (
    .A(_1047_),
    .B(_978_),
    .C(_1081_),
    .Y(_1082_)
);

FILL FILL_0__4163_ (
);

INVX1 _3394_ (
    .A(\u_rf_if.issue_chunk [2]),
    .Y(_9_)
);

OAI21X1 _4599_ (
    .A(_1877__bF$buf3),
    .B(_1930_),
    .C(_1931_),
    .Y(\u_cpu.decode.i_wb_rdt [29])
);

NAND3X1 _4179_ (
    .A(_1154_),
    .B(_1163_),
    .C(_1159_),
    .Y(_1164_)
);

FILL FILL_0__3854_ (
);

FILL FILL_0__3434_ (
);

FILL FILL_0__3014_ (
);

FILL FILL_0__4639_ (
);

NAND3X1 _2665_ (
    .A(_280_),
    .B(_275_),
    .C(_266_),
    .Y(_281_)
);

AOI21X1 _2245_ (
    .A(_1406_),
    .B(_1408_),
    .C(_1432_),
    .Y(_779_)
);

FILL FILL_0__4392_ (
);

DFFSR _4811_ (
    .R(vdd),
    .S(i_rst_n_bF$buf0),
    .D(_1855_),
    .CLK(clk_sys_bF$buf5),
    .Q(ibus_pending_rdt[0])
);

FILL FILL_0__3663_ (
);

FILL FILL_0__4028_ (
);

FILL FILL_1__3404_ (
);

DFFPOSX1 _2894_ (
    .D(_576_),
    .CLK(clk_sys_bF$buf44),
    .Q(\u_rf_if.wdata0_next [0])
);

INVX1 _2474_ (
    .A(\u_mem_serial.bit_count [5]),
    .Y(_1044_)
);

FILL FILL_1__4609_ (
);

NOR2X1 _3679_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_143_)
);

OAI21X1 _3259_ (
    .A(_18__bF$buf2),
    .B(_1764_),
    .C(\u_rf_if.read_buf1 [9]),
    .Y(_1763_)
);

OAI21X1 _4620_ (
    .A(_1877__bF$buf4),
    .B(_1944_),
    .C(_1945_),
    .Y(\u_cpu.decode.i_wb_rdt [11])
);

INVX1 _4200_ (
    .A(\u_cpu.bufreg2.dlo [4]),
    .Y(_1182_)
);

FILL FILL_0__3719_ (
);

FILL FILL_0__3892_ (
);

FILL FILL_0__3472_ (
);

FILL FILL_0__3052_ (
);

FILL FILL_0__4677_ (
);

FILL FILL145050x39750 (
);

INVX1 _2283_ (
    .A(\u_mem_serial.req_pending ),
    .Y(_1406_)
);

AOI21X1 _3488_ (
    .A(_448_),
    .B(_352_),
    .C(_346_),
    .Y(_345_)
);

NAND2X1 _3068_ (
    .A(\u_rf_if.issue_chunk [1]),
    .B(_1697_),
    .Y(_1626_)
);

FILL FILL_0__2323_ (
);

AOI21X1 _2759_ (
    .A(_200_),
    .B(_108_),
    .C(_77_),
    .Y(_2159_)
);

AOI21X1 _2339_ (
    .A(_1357_),
    .B(_1360_),
    .C(rst_bF$buf10),
    .Y(_757_)
);

NAND3X1 _3700_ (
    .A(_159_),
    .B(\u_cpu.bufreg.i_init ),
    .C(\u_cpu.bufreg.i_cnt_done ),
    .Y(_160_)
);

FILL FILL_0__4066_ (
);

FILL FILL_1__3442_ (
);

FILL FILL_1__4647_ (
);

NAND3X1 _3297_ (
    .A(_2154__bF$buf1),
    .B(_2062__bF$buf3),
    .C(_1792_),
    .Y(_1791_)
);

FILL FILL_0_BUFX2_insert231 (
);

FILL FILL_0_BUFX2_insert232 (
);

FILL FILL_0_BUFX2_insert234 (
);

FILL FILL_0_BUFX2_insert236 (
);

FILL FILL_0_BUFX2_insert238 (
);

FILL FILL_0__3337_ (
);

FILL FILL_0__3090_ (
);

NOR2X1 _2988_ (
    .A(_739_),
    .B(_738_),
    .Y(_502_)
);

OAI21X1 _2568_ (
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(_846_),
    .C(_847_),
    .Y(_848_)
);

FILL FILL_0__2608_ (
);

INVX1 _4714_ (
    .A(ibus_pending_rdt[13]),
    .Y(_2007_)
);

FILL FILL_1__3671_ (
);

FILL FILL_0__2361_ (
);

INVX1 _2797_ (
    .A(raddr[7]),
    .Y(_102_)
);

NAND2X1 _2377_ (
    .A(\u_mem_serial.shift_rx [10]),
    .B(_1297__bF$buf0),
    .Y(_1330_)
);

FILL FILL_0__2417_ (
);

OAI21X1 _4523_ (
    .A(_1876_),
    .B(_1877__bF$buf5),
    .C(_1878_),
    .Y(\u_cpu.decode.i_wb_rdt [12])
);

INVX1 _4103_ (
    .A(\u_cpu.bufreg.data [14]),
    .Y(_957_)
);

FILL FILL_1__3480_ (
);

FILL FILL_1__4685_ (
);

FILL FILL_0__3795_ (
);

FILL FILL_0__3375_ (
);

DFFPOSX1 _2186_ (
    .D(_782_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [23])
);

FILL FILL_0__2646_ (
);

NAND3X1 _4752_ (
    .A(rf_read_reg1[2]),
    .B(_1962_),
    .C(_1895__bF$buf3),
    .Y(_2030_)
);

INVX1 _4332_ (
    .A(\u_cpu.bufreg2.dlo [9]),
    .Y(_1287_)
);

NOR2X1 _3603_ (
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .Y(\u_cpu.mem_if.o_wb_sel [0])
);

FILL FILL_1_BUFX2_insert160 (
);

FILL FILL_1_BUFX2_insert164 (
);

FILL FILL_1_BUFX2_insert168 (
);

DFFSR _4808_ (
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1856_),
    .CLK(clk_sys_bF$buf20),
    .Q(rf_read_reg1[3])
);

FILL FILL_0__2455_ (
);

INVX1 _4561_ (
    .A(\u_mem_serial.shift_rx [5]),
    .Y(_1906_)
);

DFFPOSX1 _4141_ (
    .D(_877_),
    .CLK(clk_sys_bF$buf6),
    .Q(\u_cpu.bufreg.data [24])
);

FILL FILL_0__4601_ (
);

DFFPOSX1 _3832_ (
    .D(_776_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_rx [26])
);

OAI21X1 _3412_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .B(\u_rf_if.stream_active ),
    .C(_32__bF$buf2),
    .Y(_26_)
);

OAI21X1 _4617_ (
    .A(_1877__bF$buf2),
    .B(_1942_),
    .C(_1943_),
    .Y(\u_cpu.decode.i_wb_rdt [19])
);

FILL FILL_0__2684_ (
);

OAI21X1 _4790_ (
    .A(_1936_),
    .B(_1983__bF$buf4),
    .C(_2052_),
    .Y(_1872_)
);

NAND3X1 _4370_ (
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .B(\u_cpu.ctrl.i_pc_rel ),
    .C(\u_cpu.ctrl.pc ),
    .Y(_1501_)
);

NAND2X1 _3641_ (
    .A(rdata0[0]),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2129_)
);

AOI21X1 _3221_ (
    .A(_433_),
    .B(_1738_),
    .C(_1737_),
    .Y(_571_)
);

DFFSR _4846_ (
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1871_),
    .CLK(clk_sys_bF$buf1),
    .Q(ibus_pending_rdt[27])
);

INVX1 _4426_ (
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_1545_)
);

DFFPOSX1 _4006_ (
    .D(_641_),
    .CLK(clk_sys_bF$buf45),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

BUFX2 BUFX2_insert210 (
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf0 )
);

BUFX2 BUFX2_insert211 (
    .A(_665_),
    .Y(_665__bF$buf3)
);

BUFX2 BUFX2_insert212 (
    .A(_665_),
    .Y(_665__bF$buf2)
);

BUFX2 BUFX2_insert213 (
    .A(_665_),
    .Y(_665__bF$buf1)
);

BUFX2 BUFX2_insert214 (
    .A(_665_),
    .Y(_665__bF$buf0)
);

BUFX2 BUFX2_insert215 (
    .A(_1983_),
    .Y(_1983__bF$buf4)
);

BUFX2 BUFX2_insert216 (
    .A(_1983_),
    .Y(_1983__bF$buf3)
);

BUFX2 BUFX2_insert217 (
    .A(_1983_),
    .Y(_1983__bF$buf2)
);

BUFX2 BUFX2_insert218 (
    .A(_1983_),
    .Y(_1983__bF$buf1)
);

BUFX2 BUFX2_insert219 (
    .A(_1983_),
    .Y(_1983__bF$buf0)
);

FILL FILL_0__2493_ (
);

DFFPOSX1 _2912_ (
    .D(_566_),
    .CLK(clk_sys_bF$buf44),
    .Q(\u_rf_if.o_waddr [3])
);

FILL FILL_0__3698_ (
);

FILL FILL_0__3278_ (
);

FILL FILL_1__2234_ (
);

FILL FILL_1__3859_ (
);

DFFPOSX1 _3870_ (
    .D(_370_),
    .CLK(clk_sys_bF$buf30),
    .Q(\u_cpu.decode.opcode [0])
);

NOR2X1 _3450_ (
    .A(\u_rf_if.read_buf0 [28]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_308_)
);

OAI21X1 _3030_ (
    .A(\u_rf_if.rreg0_latched [2]),
    .B(\u_rf_if.issue_sel_bF$buf0 ),
    .C(_1600_),
    .Y(_1599_)
);

FILL FILL_0__2969_ (
);

OR2X2 _4655_ (
    .A(current_wdata0_next_hint),
    .B(rf_wdata0_next),
    .Y(rf_wdata0_next_to_if)
);

AOI22X1 _4235_ (
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [29]),
    .C(_1198_),
    .D(_1210_),
    .Y(_1211_)
);

FILL FILL_1__4397_ (
);

AOI21X1 _2721_ (
    .A(_215__bF$buf2),
    .B(_226_),
    .C(rst_bF$buf4),
    .Y(_62_)
);

OAI21X1 _2301_ (
    .A(_1316__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [29]),
    .Y(_1392_)
);

MUX2X1 _3926_ (
    .A(\u_cpu.decode.i_wb_rdt [15]),
    .B(rreg0[1]),
    .S(rf_rreq_bF$buf6),
    .Y(_697_)
);

NOR2X1 _3506_ (
    .A(\u_rf_if.read_buf1 [31]),
    .B(_446__bF$buf2),
    .Y(_379_)
);

FILL FILL_1__3248_ (
);

FILL FILL_0__2778_ (
);

FILL FILL_0__2358_ (
);

OAI21X1 _4464_ (
    .A(_1530__bF$buf2),
    .B(_1566_),
    .C(_1567_),
    .Y(_1493_)
);

INVX1 _4044_ (
    .A(\u_cpu.alu.i_cnt0 ),
    .Y(_917_)
);

FILL FILL_1__2519_ (
);

OAI21X1 _2950_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1755_),
    .C(_32__bF$buf2),
    .Y(_607_)
);

AOI21X1 _2530_ (
    .A(_982_),
    .B(_986_),
    .C(_808_),
    .Y(_987_)
);

FILL FILL145050x115350 (
);

NOR2X1 _3735_ (
    .A(rst_bF$buf7),
    .B(_157_),
    .Y(_181_)
);

AOI21X1 _3315_ (
    .A(_1808_),
    .B(_1806_),
    .C(rst_bF$buf6),
    .Y(_596_)
);

FILL FILL_1__2272_ (
);

NOR2X1 _4693_ (
    .A(_1991_),
    .B(_1992_),
    .Y(_1835_)
);

FILL FILL_0__2167_ (
);

OAI21X1 _4273_ (
    .A(_1206_),
    .B(_1243_),
    .C(_1240_),
    .Y(_1112_)
);

FILL FILL_0__4313_ (
);

FILL FILL_1__2748_ (
);

NAND2X1 _3964_ (
    .A(rreg1[1]),
    .B(_685_),
    .Y(_723_)
);

INVX8 _3544_ (
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_446_)
);

OAI21X1 _3124_ (
    .A(_1717__bF$buf3),
    .B(_1803_),
    .C(\u_rf_if.read_buf0 [21]),
    .Y(_1665_)
);

NAND3X1 _4749_ (
    .A(rf_read_reg1[3]),
    .B(_1962_),
    .C(_1895__bF$buf3),
    .Y(_2028_)
);

NOR2X1 _4329_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(_1281_),
    .Y(_1285_)
);

FILL FILL_1__3286_ (
);

FILL FILL_0__2396_ (
);

NAND2X1 _4082_ (
    .A(\u_cpu.bufreg.data [21]),
    .B(_892__bF$buf4),
    .Y(_944_)
);

INVX1 _2815_ (
    .A(\u_rf_serial.tx_state [1]),
    .Y(_84_)
);

FILL FILL_0__4542_ (
);

FILL FILL_1__2557_ (
);

INVX1 _3773_ (
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_378_)
);

NAND3X1 _3353_ (
    .A(_2154__bF$buf1),
    .B(_10__bF$buf2),
    .C(_2088_),
    .Y(_2071_)
);

NAND2X1 _4558_ (
    .A(ibus_pending_ack_bF$buf2),
    .B(_1903_),
    .Y(_1904_)
);

DFFPOSX1 _4138_ (
    .D(_880_),
    .CLK(clk_sys_bF$buf6),
    .Q(\u_cpu.bufreg.data [22])
);

FILL FILL_0__3813_ (
);

DFFPOSX1 _2624_ (
    .D(_59_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_rf_serial.last_req_key [5])
);

AOI21X1 _2204_ (
    .A(_1460_),
    .B(_1461_),
    .C(rst_bF$buf3),
    .Y(_791_)
);

OAI21X1 _3829_ (
    .A(_403_),
    .B(_404_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.decode.co_two_stage_op )
);

INVX1 _3409_ (
    .A(\u_rf_if.issue_idx [5]),
    .Y(_24_)
);

FILL FILL_1__2786_ (
);

AOI21X1 _3582_ (
    .A(_482_),
    .B(_478_),
    .C(_477_),
    .Y(_476_)
);

NOR2X1 _3162_ (
    .A(_1691_),
    .B(_1692_),
    .Y(_558_)
);

NAND3X1 _4787_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [27]),
    .C(_1984__bF$buf0),
    .Y(_2051_)
);

DFFPOSX1 _4367_ (
    .D(_1115_),
    .CLK(clk_sys_bF$buf28),
    .Q(\u_cpu.bufreg2.dlo [20])
);

FILL FILL_0__3202_ (
);

FILL FILL_0__4407_ (
);

DFFPOSX1 _2853_ (
    .D(_490_),
    .CLK(clk_sys_bF$buf44),
    .Q(\u_rf_if.wdata0_r [0])
);

OR2X2 _2433_ (
    .A(_1045_),
    .B(_1083_),
    .Y(_1085_)
);

FILL FILL_0_BUFX2_insert1 (
);

FILL FILL_0_BUFX2_insert3 (
);

FILL FILL_0_BUFX2_insert4 (
);

FILL FILL_0_BUFX2_insert6 (
);

FILL FILL_0_BUFX2_insert8 (
);

FILL FILL_0__4580_ (
);

NAND3X1 _3638_ (
    .A(\u_cpu.alu.i_rd_sel [0]),
    .B(_2125_),
    .C(_2120_),
    .Y(_2126_)
);

AND2X2 _3218_ (
    .A(_1735_),
    .B(_32__bF$buf0),
    .Y(_570_)
);

FILL FILL_1__2595_ (
);

FILL FILL_1__4321_ (
);

INVX1 _3391_ (
    .A(_7_),
    .Y(_6_)
);

BUFX2 BUFX2_insert180 (
    .A(_32_),
    .Y(_32__bF$buf0)
);

BUFX2 BUFX2_insert181 (
    .A(_1164_),
    .Y(_1164__bF$buf4)
);

BUFX2 BUFX2_insert182 (
    .A(_1164_),
    .Y(_1164__bF$buf3)
);

BUFX2 BUFX2_insert183 (
    .A(_1164_),
    .Y(_1164__bF$buf2)
);

BUFX2 BUFX2_insert184 (
    .A(_1164_),
    .Y(_1164__bF$buf1)
);

BUFX2 BUFX2_insert185 (
    .A(_1164_),
    .Y(_1164__bF$buf0)
);

BUFX2 BUFX2_insert186 (
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf3 )
);

BUFX2 BUFX2_insert187 (
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf2 )
);

BUFX2 BUFX2_insert188 (
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf1 )
);

BUFX2 BUFX2_insert189 (
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf0 )
);

OAI21X1 _4596_ (
    .A(ibus_pending_ack_bF$buf2),
    .B(_1928_),
    .C(_1929_),
    .Y(\u_cpu.decode.i_wb_rdt [30])
);

INVX1 _4176_ (
    .A(\u_cpu.alu.i_en ),
    .Y(_1161_)
);

DFFPOSX1 _2909_ (
    .D(_524_),
    .CLK(clk_sys_bF$buf18),
    .Q(\u_rf_if.read_buf0 [4])
);

FILL FILL_0__4216_ (
);

NOR2X1 _2662_ (
    .A(_206_),
    .B(_205_),
    .Y(_283_)
);

AOI21X1 _2242_ (
    .A(_1433_),
    .B(_1434_),
    .C(rst_bF$buf10),
    .Y(_780_)
);

DFFPOSX1 _3867_ (
    .D(_784_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(mem_dbus_ack)
);

OAI21X1 _3447_ (
    .A(\u_rf_if.read_buf0 [30]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_305_)
);

NAND2X1 _3027_ (
    .A(\u_rf_if.issue_sel_bF$buf0 ),
    .B(_1719_),
    .Y(_1597_)
);

FILL FILL_0__3907_ (
);

FILL FILL144450x32550 (
);

FILL FILL_0__2299_ (
);

FILL FILL_0__3240_ (
);

OAI21X1 _2718_ (
    .A(ren_bF$buf1),
    .B(_121_),
    .C(_228_),
    .Y(_229_)
);

FILL FILL_0__4445_ (
);

FILL FILL_0__4025_ (
);

FILL FILL_1__3821_ (
);

DFFPOSX1 _2891_ (
    .D(_578_),
    .CLK(clk_sys_bF$buf39),
    .Q(\u_rf_if.read_buf1 [6])
);

OAI21X1 _2471_ (
    .A(_1006_),
    .B(_1042_),
    .C(_1046_),
    .Y(_1047_)
);

NAND3X1 _3676_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .C(_140_),
    .Y(_141_)
);

OAI21X1 _3256_ (
    .A(_18__bF$buf2),
    .B(_1764_),
    .C(\u_rf_if.read_buf1 [8]),
    .Y(_1761_)
);

FILL FILL_0_BUFX2_insert86 (
);

FILL FILL_0_BUFX2_insert88 (
);

DFFPOSX1 _2947_ (
    .D(_547_),
    .CLK(clk_sys_bF$buf21),
    .Q(\u_rf_if.read_buf0 [22])
);

OAI22X1 _2527_ (
    .A(_806_),
    .B(_989_),
    .C(_807_),
    .D(_988_),
    .Y(_990_)
);

FILL FILL_0__4254_ (
);

FILL FILL_1__3210_ (
);

OAI21X1 _2280_ (
    .A(_1406_),
    .B(_1408_),
    .C(\u_mem_serial.active_we ),
    .Y(_1409_)
);

INVX1 _3485_ (
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_343_)
);

NOR2X1 _3065_ (
    .A(_22_),
    .B(_1624_),
    .Y(_1623_)
);

FILL FILL_0__2740_ (
);

FILL FILL_0__2320_ (
);

FILL FILL145050x93750 (
);

FILL FILL_0__3945_ (
);

FILL FILL_0__3525_ (
);

NOR2X1 _2756_ (
    .A(rst_bF$buf4),
    .B(_201_),
    .Y(_52_)
);

INVX1 _2336_ (
    .A(_1362_),
    .Y(_1363_)
);

FILL FILL_0__4483_ (
);

FILL FILL_0__4063_ (
);

NAND3X1 _3294_ (
    .A(_2154__bF$buf1),
    .B(_2099_),
    .C(_1792_),
    .Y(_1789_)
);

FILL FILL_0_BUFX2_insert200 (
);

FILL FILL_0_BUFX2_insert202 (
);

FILL FILL_0_BUFX2_insert204 (
);

FILL FILL_0_BUFX2_insert206 (
);

FILL FILL_0_BUFX2_insert208 (
);

DFFPOSX1 _4499_ (
    .D(_1656_),
    .CLK(clk_sys_bF$buf7),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

INVX1 _4079_ (
    .A(\u_cpu.bufreg.data [22]),
    .Y(_942_)
);

FILL FILL_1__2710_ (
);

FILL FILL_0__4539_ (
);

OAI21X1 _2985_ (
    .A(rf_wreq),
    .B(_1695_),
    .C(_32__bF$buf0),
    .Y(_735_)
);

AOI21X1 _2565_ (
    .A(_809_),
    .B(_839_),
    .C(_850_),
    .Y(_851_)
);

FILL FILL_0__4292_ (
);

FILL FILL_0__2605_ (
);

OAI21X1 _4711_ (
    .A(_1899_),
    .B(_1983__bF$buf2),
    .C(_2005_),
    .Y(_1840_)
);

FILL FILL_0__3563_ (
);

FILL FILL_0__4768_ (
);

BUFX2 BUFX2_insert90 (
    .A(ren),
    .Y(ren_bF$buf0)
);

BUFX2 BUFX2_insert91 (
    .A(_1297_),
    .Y(_1297__bF$buf4)
);

BUFX2 BUFX2_insert92 (
    .A(_1297_),
    .Y(_1297__bF$buf3)
);

BUFX2 BUFX2_insert93 (
    .A(_1297_),
    .Y(_1297__bF$buf2)
);

BUFX2 BUFX2_insert94 (
    .A(_1297_),
    .Y(_1297__bF$buf1)
);

BUFX2 BUFX2_insert95 (
    .A(_1297_),
    .Y(_1297__bF$buf0)
);

BUFX2 BUFX2_insert96 (
    .A(_1315_),
    .Y(_1315__bF$buf3)
);

BUFX2 BUFX2_insert97 (
    .A(_1315_),
    .Y(_1315__bF$buf2)
);

BUFX2 BUFX2_insert98 (
    .A(_1315_),
    .Y(_1315__bF$buf1)
);

BUFX2 BUFX2_insert99 (
    .A(_1315_),
    .Y(_1315__bF$buf0)
);

NOR2X1 _2794_ (
    .A(\u_rf_serial.tx_state [0]),
    .B(_84_),
    .Y(_105_)
);

AOI21X1 _2374_ (
    .A(_1329_),
    .B(_1332_),
    .C(rst_bF$buf10),
    .Y(_750_)
);

DFFPOSX1 _3999_ (
    .D(_648_),
    .CLK(clk_sys_bF$buf3),
    .Q(rreg1[0])
);

OAI21X1 _3579_ (
    .A(\u_rf_if.wdata0_r [0]),
    .B(_476_),
    .C(_474_),
    .Y(_473_)
);

OAI21X1 _3159_ (
    .A(_1690_),
    .B(_1689_),
    .C(_44_),
    .Y(_1688_)
);

INVX1 _4520_ (
    .A(ibus_pending_rdt[12]),
    .Y(_1876_)
);

OAI21X1 _4100_ (
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_954_),
    .C(_955_),
    .Y(_887_)
);

FILL FILL_0__3619_ (
);

FILL FILL_0__4157_ (
);

FILL FILL_1__3533_ (
);

BUFX2 _2183_ (
    .A(gnd),
    .Y(o_gpio_oe[2])
);

FILL FILL_1__4738_ (
);

NAND2X1 _3388_ (
    .A(_4_),
    .B(_23_),
    .Y(_3_)
);

FILL FILL_0__2223_ (
);

FILL FILL_0__3848_ (
);

OAI21X1 _2659_ (
    .A(_167_),
    .B(_215__bF$buf3),
    .C(_202_),
    .Y(_285_)
);

AND2X2 _2239_ (
    .A(_1436_),
    .B(_1310_),
    .Y(_781_)
);

NOR2X1 _3600_ (
    .A(\u_cpu.alu.i_sub ),
    .B(_1823_),
    .Y(rf_wdata0_next)
);

FILL FILL_0__4386_ (
);

FILL FILL_1_BUFX2_insert130 (
);

FILL FILL_1_BUFX2_insert134 (
);

DFFPOSX1 _4805_ (
    .D(_752_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [9])
);

INVX1 _3197_ (
    .A(\u_rf_if.rreg1_latched [1]),
    .Y(_1719_)
);

FILL FILL_0__3657_ (
);

FILL FILL_0__3237_ (
);

FILL FILL145050x25350 (
);

DFFPOSX1 _2888_ (
    .D(_580_),
    .CLK(clk_sys_bF$buf39),
    .Q(\u_rf_if.read_buf1 [7])
);

AOI22X1 _2468_ (
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_795_),
    .C(_845_),
    .D(\u_cpu.bufreg2.dlo [17]),
    .Y(_1050_)
);

FILL FILL_0__4195_ (
);

FILL FILL_0__2508_ (
);

OAI21X1 _4614_ (
    .A(_1877__bF$buf2),
    .B(_1940_),
    .C(_1941_),
    .Y(\u_cpu.decode.i_wb_rdt [24])
);

FILL FILL_1__3571_ (
);

FILL FILL_1__4776_ (
);

FILL FILL_0__2261_ (
);

AOI22X1 _2697_ (
    .A(_246_),
    .B(_245_),
    .C(_247_),
    .D(_248_),
    .Y(_249_)
);

AOI21X1 _2277_ (
    .A(_1411_),
    .B(_1409_),
    .C(rst_bF$buf7),
    .Y(_768_)
);

FILL FILL_0__2737_ (
);

DFFSR _4843_ (
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1874_),
    .CLK(clk_sys_bF$buf15),
    .Q(ibus_pending_rdt[24])
);

OAI22X1 _4423_ (
    .A(_1543_),
    .B(_1531_),
    .C(_1542_),
    .D(_1535_),
    .Y(_1476_)
);

DFFPOSX1 _4003_ (
    .D(_644_),
    .CLK(clk_sys_bF$buf23),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

FILL FILL_1__4165_ (
);

FILL FILL_0__3275_ (
);

FILL FILL_1__3016_ (
);

FILL FILL_0__2546_ (
);

INVX1 _4652_ (
    .A(rf_read_reg0[4]),
    .Y(_1966_)
);

AOI21X1 _4232_ (
    .A(_1133_),
    .B(_1207_),
    .C(mem_dbus_ack_bF$buf4),
    .Y(_1208_)
);

FILL FILL_0_BUFX2_insert170 (
);

FILL FILL_0_BUFX2_insert172 (
);

FILL FILL_0_BUFX2_insert174 (
);

FILL FILL_0_BUFX2_insert175 (
);

FILL FILL_0_BUFX2_insert177 (
);

FILL FILL_0_BUFX2_insert179 (
);

MUX2X1 _3923_ (
    .A(\u_cpu.decode.i_wb_rdt [16]),
    .B(rreg0[2]),
    .S(rf_rreq_bF$buf6),
    .Y(_695_)
);

OAI21X1 _3503_ (
    .A(_448_),
    .B(_374_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_364_)
);

NAND3X1 _4708_ (
    .A(\u_mem_serial.shift_rx [16]),
    .B(mem_ibus_ack_bF$buf3),
    .C(_1984__bF$buf3),
    .Y(_2004_)
);

FILL FILL_0__2775_ (
);

OAI21X1 _4461_ (
    .A(_1530__bF$buf3),
    .B(_1564_),
    .C(_1565_),
    .Y(_1492_)
);

NAND2X1 _4041_ (
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [3]),
    .Y(_915_)
);

INVX1 _3732_ (
    .A(\u_cpu.bne_or_bge ),
    .Y(_178_)
);

AOI21X1 _3312_ (
    .A(_1805_),
    .B(_1804_),
    .C(rst_bF$buf6),
    .Y(_595_)
);

DFFPOSX1 _4517_ (
    .D(_1488_),
    .CLK(clk_sys_bF$buf9),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

FILL FILL_1__3894_ (
);

FILL FILL_1__3054_ (
);

FILL FILL_0__2584_ (
);

OAI21X1 _4690_ (
    .A(_1908_),
    .B(_1983__bF$buf2),
    .C(_1990_),
    .Y(_1834_)
);

OAI21X1 _4270_ (
    .A(_1130_),
    .B(_1133_),
    .C(\u_cpu.bufreg.i_shamt [1]),
    .Y(_1241_)
);

FILL FILL_0__3789_ (
);

FILL FILL145050x136950 (
);

FILL FILL_0__4730_ (
);

FILL FILL_1__2325_ (
);

NAND2X1 _3961_ (
    .A(rreg1[2]),
    .B(_685_),
    .Y(_721_)
);

NOR2X1 _3541_ (
    .A(\u_rf_if.read_buf1 [15]),
    .B(_446__bF$buf1),
    .Y(_443_)
);

OAI21X1 _3121_ (
    .A(_1717__bF$buf3),
    .B(_1803_),
    .C(\u_rf_if.read_buf0 [20]),
    .Y(_1663_)
);

INVX1 _4746_ (
    .A(ibus_pending_rdt[0]),
    .Y(_2026_)
);

AOI22X1 _4326_ (
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [11]),
    .C(_1172__bF$buf2),
    .D(_1282_),
    .Y(_1283_)
);

FILL FILL_1__4068_ (
);

INVX1 _2812_ (
    .A(\u_rf_serial.tx_state [2]),
    .Y(_87_)
);

FILL FILL_0__3178_ (
);

FILL FILL_1__2974_ (
);

FILL FILL_1__3339_ (
);

FILL FILL_1__4700_ (
);

NAND2X1 _3770_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_375_)
);

NAND3X1 _3350_ (
    .A(rdata[0]),
    .B(_2090_),
    .C(_2101_),
    .Y(_2069_)
);

FILL FILL_0__2449_ (
);

NAND3X1 _4555_ (
    .A(_1894_),
    .B(\u_cpu.decode.i_wb_rdt [15]),
    .C(_1897_),
    .Y(_1902_)
);

DFFPOSX1 _4135_ (
    .D(_883_),
    .CLK(clk_sys_bF$buf11),
    .Q(\u_cpu.bufreg.data [19])
);

FILL FILL_1__3092_ (
);

FILL FILL_0__3810_ (
);

NOR2X1 _2621_ (
    .A(\u_mem_serial.bit_count_0_bF$buf0 ),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_795_)
);

AOI21X1 _2201_ (
    .A(_1463_),
    .B(_1418_),
    .C(rst_bF$buf5),
    .Y(_792_)
);

NOR2X1 _3826_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.dbus_en )
);

NOR2X1 _3406_ (
    .A(\u_rf_if.issue_chunk [1]),
    .B(\u_rf_if.issue_chunk [2]),
    .Y(_21_)
);

FILL FILL_1__2363_ (
);

FILL FILL144150x10950 (
);

FILL FILL_0__2678_ (
);

OAI21X1 _4784_ (
    .A(_1930_),
    .B(_1983__bF$buf4),
    .C(_2049_),
    .Y(_1869_)
);

DFFPOSX1 _4364_ (
    .D(_1118_),
    .CLK(clk_sys_bF$buf4),
    .Q(\u_cpu.bufreg2.dlo [17])
);

DFFPOSX1 _2850_ (
    .D(_599_),
    .CLK(clk_sys_bF$buf10),
    .Q(\u_rf_if.read_buf1 [26])
);

AOI22X1 _2430_ (
    .A(_840_),
    .B(\u_mem_serial.active_ibus_bF$buf0 ),
    .C(\u_mem_serial.active_we ),
    .D(_845_),
    .Y(_1088_)
);

NAND2X1 _3635_ (
    .A(\u_cpu.alu.i_sub ),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2123_)
);

OAI21X1 _3215_ (
    .A(\u_cpu.o_wen0 ),
    .B(_484__bF$buf3),
    .C(_32__bF$buf4),
    .Y(_1733_)
);

FILL FILL_1__3377_ (
);

BUFX2 BUFX2_insert150 (
    .A(_1984_),
    .Y(_1984__bF$buf1)
);

BUFX2 BUFX2_insert151 (
    .A(_1984_),
    .Y(_1984__bF$buf0)
);

FILL FILL_0__2487_ (
);

OAI21X1 _4593_ (
    .A(_1877__bF$buf0),
    .B(_1926_),
    .C(_1927_),
    .Y(\u_cpu.decode.i_wb_rdt [23])
);

OAI21X1 _4173_ (
    .A(_1156_),
    .B(_1157_),
    .C(_1155_),
    .Y(_1158_)
);

DFFPOSX1 _2906_ (
    .D(_488_),
    .CLK(clk_sys_bF$buf27),
    .Q(\u_rf_if.rcnt [2])
);

DFFPOSX1 _3864_ (
    .D(_363_),
    .CLK(clk_sys_bF$buf31),
    .Q(\u_cpu.decode.co_ebreak )
);

NOR2X1 _3444_ (
    .A(_303_),
    .B(_309_),
    .Y(_302_)
);

AOI21X1 _3024_ (
    .A(_1697_),
    .B(_1596_),
    .C(_1595_),
    .Y(_514_)
);

INVX1 _4649_ (
    .A(rf_read_reg1[4]),
    .Y(_1964_)
);

OAI21X1 _4229_ (
    .A(_1131_),
    .B(_1201_),
    .C(_1205_),
    .Y(_1106_)
);

FILL FILL_0__3904_ (
);

NAND2X1 _2715_ (
    .A(_207_),
    .B(_205_),
    .Y(_231_)
);

NAND2X1 _3673_ (
    .A(\u_cpu.decode.co_two_stage_op ),
    .B(_138_),
    .Y(_139_)
);

NAND2X1 _3253_ (
    .A(_1810_),
    .B(_2152__bF$buf1),
    .Y(_1759_)
);

OAI21X1 _4458_ (
    .A(_1530__bF$buf1),
    .B(_1562_),
    .C(_1563_),
    .Y(_1491_)
);

NAND2X1 _4038_ (
    .A(\u_cpu.bufreg.data [3]),
    .B(_892__bF$buf3),
    .Y(_913_)
);

FILL FILL_0__3713_ (
);

DFFPOSX1 _2944_ (
    .D(_516_),
    .CLK(clk_sys_bF$buf17),
    .Q(raddr[7])
);

NAND2X1 _2524_ (
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(_992_),
    .Y(_993_)
);

NAND2X1 _3729_ (
    .A(\u_cpu.bufreg.i_init ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .Y(_175_)
);

NOR3X1 _3309_ (
    .A(_5_),
    .B(_2091_),
    .C(_2089_),
    .Y(_1801_)
);

INVX1 _3482_ (
    .A(\u_rf_if.read_buf0 [2]),
    .Y(_340_)
);

OAI21X1 _3062_ (
    .A(_1717__bF$buf3),
    .B(_1749_),
    .C(\u_rf_if.read_buf0 [5]),
    .Y(_1621_)
);

OAI21X1 _4687_ (
    .A(_1942_),
    .B(_1983__bF$buf3),
    .C(_1989_),
    .Y(_1832_)
);

NAND3X1 _4267_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(_1210_),
    .C(_1198_),
    .Y(_1239_)
);

FILL FILL_0__3942_ (
);

FILL FILL_0__3522_ (
);

FILL FILL_0__3102_ (
);

FILL FILL_0__4727_ (
);

FILL FILL_0__4307_ (
);

NOR2X1 _2753_ (
    .A(\u_rf_serial.tx_state [3]),
    .B(_88_),
    .Y(_204_)
);

OAI21X1 _2333_ (
    .A(_1316__bF$buf1),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [2]),
    .Y(_1365_)
);

NAND2X1 _3958_ (
    .A(rreg1[3]),
    .B(_685_),
    .Y(_719_)
);

NOR2X1 _3538_ (
    .A(_448_),
    .B(_441_),
    .Y(_440_)
);

OAI21X1 _3118_ (
    .A(_1717__bF$buf3),
    .B(_1794_),
    .C(\u_rf_if.read_buf0 [19]),
    .Y(_1661_)
);

OAI21X1 _3291_ (
    .A(_18__bF$buf4),
    .B(_1788_),
    .C(\u_rf_if.read_buf1 [17]),
    .Y(_1787_)
);

DFFPOSX1 _4496_ (
    .D(_1484_),
    .CLK(clk_sys_bF$buf35),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

AOI22X1 _4076_ (
    .A(_916_),
    .B(_920_),
    .C(_938_),
    .D(_940_),
    .Y(_878_)
);

FILL FILL_0__3751_ (
);

AND2X2 _2809_ (
    .A(_88_),
    .B(_89_),
    .Y(_90_)
);

AOI21X1 _2982_ (
    .A(\u_rf_if.write_wait [3]),
    .B(_1703_),
    .C(_734_),
    .Y(_625_)
);

INVX1 _2562_ (
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_854_)
);

NAND3X1 _3767_ (
    .A(\u_cpu.decode.co_mem_signed ),
    .B(_371_),
    .C(_372_),
    .Y(_373_)
);

AOI21X1 _3347_ (
    .A(_2067_),
    .B(_2070_),
    .C(rst_bF$buf9),
    .Y(_601_)
);

FILL FILL_1__4030_ (
);

FILL FILL_0__3980_ (
);

FILL FILL_0__3560_ (
);

FILL FILL_0__3140_ (
);

INVX4 _2618_ (
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .Y(_798_)
);

FILL FILL_0__4765_ (
);

FILL FILL_1__3301_ (
);

OAI21X1 _2791_ (
    .A(_107_),
    .B(_96_),
    .C(_83_),
    .Y(_108_)
);

INVX1 _2371_ (
    .A(_1334_),
    .Y(_1335_)
);

DFFPOSX1 _3996_ (
    .D(_651_),
    .CLK(clk_sys_bF$buf27),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1])
);

NAND2X1 _3576_ (
    .A(\u_rf_if.wdata1_r [0]),
    .B(_471_),
    .Y(_470_)
);

NAND3X1 _3156_ (
    .A(_10__bF$buf0),
    .B(_1715__bF$buf2),
    .C(_2068_),
    .Y(_1686_)
);

FILL FILL_0__2411_ (
);

DFFPOSX1 _2847_ (
    .D(_539_),
    .CLK(clk_sys_bF$buf21),
    .Q(\u_rf_if.read_buf0 [15])
);

INVX1 _2427_ (
    .A(\u_cpu.mem_if.o_wb_sel [1]),
    .Y(_1091_)
);

FILL FILL_0__4154_ (
);

FILL FILL_1__2169_ (
);

BUFX2 _2180_ (
    .A(gnd),
    .Y(o_gpio_oe[5])
);

NAND2X1 _3385_ (
    .A(_10__bF$buf3),
    .B(_0_),
    .Y(_2162_)
);

FILL FILL_0__3425_ (
);

FILL FILL_0__3005_ (
);

FILL FILL_1__2801_ (
);

NAND2X1 _2656_ (
    .A(_98_),
    .B(_210_),
    .Y(_287_)
);

AOI21X1 _2236_ (
    .A(_1437_),
    .B(_1438_),
    .C(rst_bF$buf10),
    .Y(_782_)
);

FILL FILL_1_BUFX2_insert103 (
);

FILL FILL_1_BUFX2_insert107 (
);

DFFPOSX1 _4802_ (
    .D(_1860_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(clk_div[2])
);

FILL FILL_1__4544_ (
);

NAND3X1 _3194_ (
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.prefetch_active ),
    .C(_19_),
    .Y(_1717_)
);

NAND2X1 _4399_ (
    .A(\u_cpu.ctrl.i_jal_or_jalr ),
    .B(_1527_),
    .Y(_1528_)
);

FILL FILL_1__2610_ (
);

FILL FILL_0__4439_ (
);

FILL FILL_0__4019_ (
);

DFFPOSX1 _2885_ (
    .D(_606_),
    .CLK(clk_sys_bF$buf29),
    .Q(\u_rf_if.stream_cnt [2])
);

AOI22X1 _2465_ (
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(\u_cpu.bufreg2.dlo [22]),
    .D(_1048_),
    .Y(_1053_)
);

FILL FILL_0__4192_ (
);

OAI21X1 _4611_ (
    .A(_1877__bF$buf1),
    .B(_1938_),
    .C(_1939_),
    .Y(\u_cpu.decode.i_wb_rdt [25])
);

FILL FILL145050x46950 (
);

FILL FILL_0__3883_ (
);

FILL FILL_0__3463_ (
);

FILL FILL_0__3043_ (
);

FILL FILL_0__4668_ (
);

NAND2X1 _2694_ (
    .A(ren_bF$buf4),
    .B(raddr[5]),
    .Y(_252_)
);

AOI22X1 _2274_ (
    .A(_853_),
    .B(_1297__bF$buf4),
    .C(_1316__bF$buf4),
    .D(\u_mem_serial.bit_count [3]),
    .Y(_1413_)
);

FILL FILL_1__4409_ (
);

NAND3X1 _3899_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(\u_cpu.decode.co_immdec_ctrl [1]),
    .C(_675_),
    .Y(_676_)
);

MUX2X1 _3479_ (
    .A(_341_),
    .B(_338_),
    .S(_445_),
    .Y(_337_)
);

OAI21X1 _3059_ (
    .A(_1717__bF$buf3),
    .B(_1749_),
    .C(\u_rf_if.read_buf0 [4]),
    .Y(_1619_)
);

FILL FILL144750x28950 (
);

DFFPOSX1 _4840_ (
    .D(_1826_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(clk_div[3])
);

FILL FILL_0__2314_ (
);

INVX1 _4420_ (
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_1542_)
);

DFFPOSX1 _4000_ (
    .D(_647_),
    .CLK(clk_sys_bF$buf3),
    .Q(rreg1[1])
);

FILL FILL_1__4582_ (
);

FILL FILL_0__3692_ (
);

FILL FILL_0__4477_ (
);

FILL FILL_0__4057_ (
);

FILL FILL_1__4218_ (
);

AOI21X1 _3288_ (
    .A(_1785_),
    .B(_1787_),
    .C(rst_bF$buf9),
    .Y(_590_)
);

FILL FILL_0__2963_ (
);

FILL FILL_0_BUFX2_insert141 (
);

FILL FILL_0_BUFX2_insert143 (
);

FILL FILL_0_BUFX2_insert145 (
);

FILL FILL_0_BUFX2_insert147 (
);

FILL FILL_0_BUFX2_insert149 (
);

FILL FILL_0__3328_ (
);

FILL FILL_0__3081_ (
);

FILL FILL_1__3909_ (
);

AND2X2 _2979_ (
    .A(_1703_),
    .B(_624_),
    .Y(_623_)
);

NAND3X1 _2559_ (
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(_856_),
    .C(_855_),
    .Y(_857_)
);

MUX2X1 _3920_ (
    .A(\u_cpu.decode.i_wb_rdt [17]),
    .B(rreg0[3]),
    .S(rf_rreq_bF$buf4),
    .Y(_693_)
);

NAND2X1 _3500_ (
    .A(\u_rf_if.read_buf1 [17]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_357_)
);

OAI21X1 _4705_ (
    .A(_1922_),
    .B(_1983__bF$buf0),
    .C(_2002_),
    .Y(_1837_)
);

FILL FILL_1__4447_ (
);

OAI21X1 _3097_ (
    .A(rf_read_reg0_to_if[4]),
    .B(_1722_),
    .C(_32__bF$buf0),
    .Y(_1645_)
);

FILL FILL_0__2352_ (
);

OAI21X1 _2788_ (
    .A(_91_),
    .B(raddr[5]),
    .C(_110_),
    .Y(_111_)
);

OAI21X1 _2368_ (
    .A(_1316__bF$buf3),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [9]),
    .Y(_1337_)
);

FILL FILL_0__4095_ (
);

FILL FILL_0__2828_ (
);

DFFPOSX1 _4514_ (
    .D(_1476_),
    .CLK(clk_sys_bF$buf19),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

FILL FILL_1__4256_ (
);

FILL FILL_0__3786_ (
);

FILL FILL_0__3366_ (
);

FILL FILL_1__3947_ (
);

FILL FILL_1__3107_ (
);

AOI21X1 _2597_ (
    .A(_809_),
    .B(_815_),
    .C(_818_),
    .Y(_819_)
);

BUFX2 _2177_ (
    .A(gnd),
    .Y(o_gpio[0])
);

INVX1 _4743_ (
    .A(ibus_pending_rdt[1]),
    .Y(_2024_)
);

FILL FILL_0__2217_ (
);

OAI21X1 _4323_ (
    .A(_1278_),
    .B(_1164__bF$buf3),
    .C(_1280_),
    .Y(_1125_)
);

FILL FILL_1__4485_ (
);

FILL FILL_0__2390_ (
);

FILL FILL_1__2971_ (
);

endmodule
