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
wire _1315__bF$buf4 ;
wire _1315__bF$buf5 ;
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
wire _1688__bF$buf0 ;
wire _1688__bF$buf1 ;
wire _1688__bF$buf2 ;
wire _1688__bF$buf3 ;
wire _1688__bF$buf4 ;
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
wire _1377__bF$buf0 ;
wire _1377__bF$buf1 ;
wire _1377__bF$buf2 ;
wire _1377__bF$buf3 ;
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
wire _887__bF$buf0 ;
wire _887__bF$buf1 ;
wire _887__bF$buf2 ;
wire _887__bF$buf3 ;
wire _887__bF$buf4 ;
wire _1167__bF$buf0 ;
wire _1167__bF$buf1 ;
wire _1167__bF$buf2 ;
wire _1167__bF$buf3 ;
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
wire \u_rf_if.stream_cnt_0_bF$buf5  ;
wire _1794_ ;
wire _1374_ ;
wire _285_ ;
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
wire _914_ ;
wire _2121_ ;
wire _1812_ ;
wire _723_ ;
wire _303_ ;
wire _1686__bF$buf0 ;
wire _1686__bF$buf1 ;
wire _1686__bF$buf2 ;
wire _1686__bF$buf3 ;
wire _1686__bF$buf4 ;
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
wire i_clk_sys_ext_bF$buf20 ;
wire i_clk_sys_ext_bF$buf21 ;
wire i_clk_sys_ext_bF$buf22 ;
wire i_clk_sys_ext_bF$buf23 ;
wire i_clk_sys_ext_bF$buf24 ;
wire i_clk_sys_ext_bF$buf25 ;
wire i_clk_sys_ext_bF$buf26 ;
wire i_clk_sys_ext_bF$buf27 ;
wire i_clk_sys_ext_bF$buf28 ;
wire i_clk_sys_ext_bF$buf29 ;
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
wire _241_ ;
wire \u_mem_serial.active_we  ;
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
wire _2112_ ;
wire _1803_ ;
wire _714_ ;
wire \u_mem_serial.bit_count_0_bF$buf0  ;
wire _1612_ ;
wire _943_ ;
wire _523_ ;
wire _103_ ;
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
wire _1838_ ;
wire _1418_ ;
wire _749_ ;
wire _329_ ;
wire _1861__bF$buf0 ;
wire _1861__bF$buf1 ;
wire _1861__bF$buf2 ;
wire _1861__bF$buf3 ;
wire _1861__bF$buf4 ;
wire _1861__bF$buf5 ;
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
wire _2106_ ;
wire \u_rf_if.prefetch_active  ;
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
wire _1800__bF$buf0 ;
wire _1800__bF$buf1 ;
wire _1800__bF$buf2 ;
wire _1800__bF$buf3 ;
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
wire _2108__bF$buf0 ;
wire _2108__bF$buf1 ;
wire _2108__bF$buf2 ;
wire _1826_ ;
wire _2108__bF$buf3 ;
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
wire _1960__bF$buf0 ;
wire _1960__bF$buf1 ;
wire _1960__bF$buf2 ;
wire _1960__bF$buf3 ;
wire _1960__bF$buf4 ;
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
wire _1993_ ;
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
wire _1959__bF$buf0 ;
wire _1959__bF$buf1 ;
wire _1959__bF$buf2 ;
wire _1959__bF$buf3 ;
wire _1959__bF$buf4 ;
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
wire i_clk_sys_ext ;
wire _1720_ ;
wire _1300_ ;
wire _631_ ;
wire _211_ ;
wire _2110__bF$buf0 ;
wire _2110__bF$buf1 ;
wire _2110__bF$buf2 ;
wire _2110__bF$buf3 ;
wire _2110__bF$buf4 ;
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
wire i_clk_sys_ext_bF$buf40 ;
wire i_clk_sys_ext_bF$buf41 ;
wire i_clk_sys_ext_bF$buf42 ;
wire i_clk_sys_ext_bF$buf43 ;
wire i_clk_sys_ext_bF$buf44 ;
wire i_clk_sys_ext_bF$buf45 ;
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
wire i_clk_sys_ext_bF$buf10 ;
wire i_clk_sys_ext_bF$buf11 ;
wire i_clk_sys_ext_bF$buf12 ;
wire i_clk_sys_ext_bF$buf13 ;
wire i_clk_sys_ext_bF$buf14 ;
wire i_clk_sys_ext_bF$buf15 ;
wire i_clk_sys_ext_bF$buf16 ;
wire i_clk_sys_ext_bF$buf17 ;
wire i_clk_sys_ext_bF$buf18 ;
wire i_clk_sys_ext_bF$buf19 ;
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
wire _660__bF$buf0 ;
wire _660__bF$buf1 ;
wire _660__bF$buf2 ;
wire _660__bF$buf3 ;
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
wire _657_ ;
wire \u_cpu.o_ibus_cyc  ;
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
wire _980_ ;
wire _560_ ;
wire _140_ ;
wire _2014_ ;
wire _13__bF$buf0 ;
wire _13__bF$buf1 ;
wire _13__bF$buf2 ;
wire _13__bF$buf3 ;
wire _13__bF$buf4 ;
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
wire _1159__bF$buf0 ;
wire _1159__bF$buf1 ;
wire _1159__bF$buf2 ;
wire _1159__bF$buf3 ;
wire _1159__bF$buf4 ;
wire _5__bF$buf0 ;
wire _5__bF$buf1 ;
wire _5__bF$buf2 ;
wire _5__bF$buf3 ;
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
wire \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
wire _1834_ ;
wire _1414_ ;
wire _745_ ;
wire _325_ ;
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
wire _1381_ ;
wire [0:0] rdata0 ;
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
wire _1872__bF$buf0 ;
wire _1872__bF$buf1 ;
wire _1872__bF$buf2 ;
wire _1872__bF$buf3 ;
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
wire _1986_ ;
wire rf_rreq_bF$buf6 ;
wire _1566_ ;
wire rf_rreq_bF$buf7 ;
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
wire i_clk_sys_ext_hier0_bF$buf0 ;
wire i_clk_sys_ext_hier0_bF$buf1 ;
wire i_clk_sys_ext_hier0_bF$buf2 ;
wire i_clk_sys_ext_hier0_bF$buf3 ;
wire i_clk_sys_ext_hier0_bF$buf4 ;
wire i_clk_sys_ext_hier0_bF$buf5 ;
wire _1789_ ;
wire _1369_ ;
wire _27__bF$buf0 ;
wire _27__bF$buf1 ;
wire _27__bF$buf2 ;
wire _27__bF$buf3 ;
wire _27__bF$buf4 ;
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
wire i_clk_sys_ext_bF$buf30 ;
wire i_clk_sys_ext_bF$buf31 ;
wire i_clk_sys_ext_bF$buf32 ;
wire i_clk_sys_ext_bF$buf33 ;
wire i_clk_sys_ext_bF$buf34 ;
wire i_clk_sys_ext_bF$buf35 ;
wire i_clk_sys_ext_bF$buf36 ;
wire i_clk_sys_ext_bF$buf37 ;
wire i_clk_sys_ext_bF$buf38 ;
wire i_clk_sys_ext_bF$buf39 ;
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
wire _479__bF$buf0 ;
wire _479__bF$buf1 ;
wire _479__bF$buf2 ;
wire _479__bF$buf3 ;
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
wire \u_cpu.o_wdata0  ;
wire _2013_ ;
wire _1297__bF$buf0 ;
wire _1297__bF$buf1 ;
wire _1297__bF$buf2 ;
wire _1297__bF$buf3 ;
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
wire _1525__bF$buf0 ;
wire _1525__bF$buf1 ;
wire _1525__bF$buf2 ;
wire _1525__bF$buf3 ;
wire _1525__bF$buf4 ;
wire _1395_ ;
wire _441__bF$buf0 ;
wire _441__bF$buf1 ;
wire _441__bF$buf2 ;
wire _441__bF$buf3 ;
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
wire _650_ ;
wire _230_ ;
wire _2104_ ;
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

INVX1 _4552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[28]),
    .Y(_1926_)
);

OAI21X1 _4132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1171_),
    .B(_1159__bF$buf3),
    .C(_1173_),
    .Y(_1094_)
);

INVX4 _3823_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_659_),
    .Y(_660_)
);

OAI21X1 _3403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .B(_321_),
    .C(_320_),
    .Y(_319_)
);

OAI21X1 _4608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1926_),
    .B(_1959__bF$buf4),
    .C(_1962_),
    .Y(_1816_)
);

FILL FILL_1__3985_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3565_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1539_)
);

FILL FILL_0__4401_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert132 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert134 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert136 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert138 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_149_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_148_),
    .Y(_150_)
);

NAND3X1 _3212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_2051_),
    .C(_2108__bF$buf0),
    .Y(_1746_)
);

NAND2X1 _4417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(_1525__bF$buf0),
    .Y(_1573_)
);

FILL FILL_1__3794_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4159_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2484_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [24]),
    .C(_1874_),
    .Y(_1951_)
);

NAND3X1 _4170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1129_),
    .B(_1203_),
    .C(_1140_),
    .Y(_1204_)
);

AOI21X1 _2903_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .B(_1607_),
    .C(_611_),
    .Y(_489_)
);

FILL FILL_0__3689_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4630_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2225_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3861_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[1]),
    .B(_660__bF$buf3),
    .Y(_691_)
);

OAI22X1 _3441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_376_),
    .B(_375_),
    .C(_374_),
    .D(_372_),
    .Y(_369_)
);

AOI21X1 _3021_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1608_),
    .B(_1609_),
    .C(rst_bF$buf0),
    .Y(_527_)
);

OAI21X1 _4646_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1876_),
    .B(_1959__bF$buf1),
    .C(_1982_),
    .Y(_1834_)
);

AOI22X1 _4226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [19]),
    .C(_1167__bF$buf3),
    .D(_1250_),
    .Y(_1251_)
);

FILL FILL_1_CLKBUF1_insert163 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert167 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2712_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_85_),
    .B(_159_),
    .C(_120_),
    .Y(_162_)
);

FILL FILL_0__3498_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3078_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_683_),
    .B(_727_),
    .C(_728_),
    .Y(_647_)
);

FILL FILL_1__3239_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_173_),
    .B(\u_cpu.alu.o_cmp ),
    .Y(_174_)
);

NAND3X1 _3250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf4),
    .B(_1778_),
    .C(_2055_),
    .Y(_1775_)
);

DFFPOSX1 _4455_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1469_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

INVX1 _4035_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_949_)
);

FILL FILL_0__3710_ (
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

FILL FILL_0_BUFX2_insert29 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2941_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .B(_1793_),
    .Y(_743_)
);

INVX1 _2521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_797_),
    .Y(_832_)
);

NAND2X1 _3726_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_381_),
    .B(_366_),
    .Y(_382_)
);

AND2X2 _3306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2060_),
    .B(_2059_),
    .Y(_2058_)
);

FILL FILL_1__2263_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2998_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4684_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[3]),
    .B(_1948_),
    .C(_1872__bF$buf3),
    .Y(_2005_)
);

OAI21X1 _4264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1276_),
    .B(_1159__bF$buf1),
    .C(_1278_),
    .Y(_1121_)
);

NAND2X1 _2750_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_wen ),
    .B(\u_rf_serial.tx_state [2]),
    .Y(_86_)
);

NAND2X1 _2330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [11]),
    .B(_1297__bF$buf3),
    .Y(_1317_)
);

NAND2X1 _3955_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [11]),
    .B(_887__bF$buf3),
    .Y(_896_)
);

DFFPOSX1 _3535_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1107_),
    .CLK(i_clk_sys_ext_bF$buf17),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

NOR2X1 _3115_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .Y(_1675_)
);

FILL FILL_1__3277_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [16]),
    .B(_1861__bF$buf5),
    .Y(_1887_)
);

DFFPOSX1 _4073_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_877_),
    .CLK(i_clk_sys_ext_bF$buf26),
    .Q(\u_cpu.bufreg.data [20])
);

DFFPOSX1 _2806_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_484_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.rreg1_latched [3])
);

FILL FILL_0__4113_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3764_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.bufreg.i_shift_op )
);

INVX1 _3344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [3]),
    .Y(_17_)
);

INVX1 _4549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[29]),
    .Y(_1924_)
);

INVX1 _4129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [6]),
    .Y(_1171_)
);

FILL FILL_1__3086_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2196_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf4),
    .B(_102_),
    .Y(_268_)
);

FILL FILL_0__4342_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert30 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441_),
    .Y(_441__bF$buf0)
);

BUFX2 BUFX2_insert31 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf5 )
);

BUFX2 BUFX2_insert32 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf4 )
);

BUFX2 BUFX2_insert33 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf3 )
);

BUFX2 BUFX2_insert34 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf2 )
);

BUFX2 BUFX2_insert35 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf1 )
);

BUFX2 BUFX2_insert36 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [0]),
    .Y(\u_rf_if.stream_cnt_0_bF$buf0 )
);

BUFX2 BUFX2_insert37 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887_),
    .Y(_887__bF$buf4)
);

BUFX2 BUFX2_insert38 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887_),
    .Y(_887__bF$buf3)
);

BUFX2 BUFX2_insert39 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887_),
    .Y(_887__bF$buf2)
);

FILL FILL_1__4503_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3993_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [29]),
    .Y(_921_)
);

NAND2X1 _3573_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2079_),
    .B(_2078_),
    .Y(_2080_)
);

INVX1 _3153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .Y(_1705_)
);

OAI22X1 _4358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1537_),
    .B(_1526_),
    .C(_1533_),
    .D(_1530_),
    .Y(_1470_)
);

DFFPOSX1 _2844_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_564_),
    .CLK(i_clk_sys_ext_bF$buf24),
    .Q(\u_rf_if.wdata1_phase [1])
);

AOI21X1 _2424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1026_),
    .B(_1030_),
    .C(_808_),
    .Y(_1031_)
);

OAI22X1 _3629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_),
    .B(_136_),
    .C(_145_),
    .D(_146_),
    .Y(_147_)
);

AOI21X1 _3209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1744_),
    .B(_1745_),
    .C(rst_bF$buf3),
    .Y(_581_)
);

FILL FILL_1__2586_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_299_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_298_)
);

INVX1 _4587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(has_fetched_first_insn),
    .Y(_1949_)
);

NOR3X1 _4167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1131_),
    .C(_1167__bF$buf1),
    .Y(_1201_)
);

FILL FILL_0__4207_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2653_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_227_),
    .B(_215__bF$buf2),
    .C(_230_),
    .Y(_63_)
);

NOR2X1 _2233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf9),
    .B(_1391_),
    .Y(_769_)
);

FILL FILL_0__4380_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3858_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[2]),
    .B(_660__bF$buf3),
    .Y(_689_)
);

INVX1 _3438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [16]),
    .Y(_355_)
);

OAI21X1 _3018_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf0 ),
    .B(\u_rf_if.rreg0_latched [4]),
    .C(_1606_),
    .Y(_1605_)
);

FILL FILL_1_BUFX2_insert90 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert94 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert98 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4121_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1731_),
    .B(_1732_),
    .C(rst_bF$buf0),
    .Y(_576_)
);

NAND2X1 _4396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .B(_1548_),
    .Y(_1559_)
);

FILL FILL_0__3651_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3231_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2709_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .Y(_188_)
);

FILL FILL_0__4016_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2882_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_543_),
    .CLK(i_clk_sys_ext_bF$buf33),
    .Q(\u_rf_if.read_buf0 [23])
);

INVX1 _2462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_992_)
);

NAND3X1 _3667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_171_)
);

OAI21X1 _3247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf0),
    .B(_1774_),
    .C(\u_rf_if.read_buf1 [21]),
    .Y(_1773_)
);

FILL FILL_0__3707_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3040_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2938_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_20_),
    .B(_1668_),
    .Y(_741_)
);

NOR2X1 _2518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_810_),
    .Y(_835_)
);

FILL FILL_1__3201_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2691_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [4]),
    .Y(_203_)
);

OAI21X1 _2271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf3),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [0]),
    .Y(_1364_)
);

OAI21X1 _3896_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_680_),
    .B(_713_),
    .C(_714_),
    .Y(_640_)
);

OAI22X1 _3476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_442_),
    .B(_439_),
    .C(_438_),
    .D(_437_),
    .Y(_436_)
);

AOI21X1 _3056_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1631_),
    .B(_1632_),
    .C(rst_bF$buf6),
    .Y(_539_)
);

FILL FILL_0__2311_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2747_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .C(\u_rf_serial.tx_state [2]),
    .Y(_89_)
);

AOI21X1 _2327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1316_),
    .B(_1319_),
    .C(rst_bF$buf5),
    .Y(_747_)
);

FILL FILL_0__4474_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2489_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf0),
    .B(_5__bF$buf2),
    .C(_1806_),
    .Y(_1805_)
);

FILL FILL_0__3325_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2701_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3906_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2976_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_9_),
    .B(_1597_),
    .C(_4_),
    .Y(_1463_)
);

NAND2X1 _2556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_795_),
    .B(_796_),
    .Y(_797_)
);

BUFX2 _2136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio[2])
);

FILL FILL_1__2298_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4702_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[1]),
    .B(_1948_),
    .C(_1872__bF$buf2),
    .Y(_2017_)
);

FILL FILL_1__4024_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3094_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf3),
    .B(_2050_),
    .C(\u_rf_if.read_buf0 [28]),
    .Y(_1658_)
);

DFFPOSX1 _4299_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1115_),
    .CLK(i_clk_sys_ext_bF$buf43),
    .Q(\u_cpu.bufreg2.dlo [15])
);

FILL FILL_0__3974_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3554_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3134_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x118950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2785_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_595_),
    .CLK(i_clk_sys_ext_bF$buf15),
    .Q(\u_rf_if.read_buf1 [27])
);

NOR2X1 _2365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1083_),
    .B(_853_),
    .Y(_1090_)
);

FILL FILL_0__4092_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2405_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [18]),
    .C(_1874_),
    .Y(_1899_)
);

FILL FILL_0__4568_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4148_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.shift_rx [1]),
    .Y(_286_)
);

AOI21X1 _2174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1430_),
    .B(_1431_),
    .C(rst_bF$buf10),
    .Y(_788_)
);

FILL FILL_1__4309_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3799_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_360_),
    .CLK(i_clk_sys_ext_bF$buf30),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

OAI21X1 _3379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [17]),
    .B(_441__bF$buf1),
    .C(_440_),
    .Y(_295_)
);

FILL FILL_0__2634_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4740_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1834_),
    .CLK(i_clk_sys_ext_bF$buf29),
    .Q(ibus_pending_rdt[14])
);

OAI21X1 _4320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1507_),
    .B(\u_cpu.ctrl.i_utype ),
    .C(_1508_),
    .Y(_1509_)
);

FILL FILL_0__3839_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3419_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3592_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3172_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4538_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1782_),
    .B(_5__bF$buf1),
    .Y(_1728_)
);

FILL FILL_0__2443_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3228_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2879_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_481_),
    .CLK(i_clk_sys_ext_bF$buf36),
    .Q(\u_rf_if.stream_cnt [3])
);

NAND3X1 _2459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf0 ),
    .B(_995_),
    .C(_994_),
    .Y(_996_)
);

INVX1 _3820_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_en ),
    .Y(_657_)
);

OAI21X1 _3400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [13]),
    .B(_441__bF$buf1),
    .C(_440_),
    .Y(_316_)
);

FILL FILL_0__4186_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2919_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4605_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [29]),
    .C(_1960__bF$buf1),
    .Y(_1961_)
);

FILL FILL_1__3982_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4347_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2672_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2252_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3877_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2413_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2688_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf3),
    .B(\u_rf_if.o_wen ),
    .C(\u_rf_serial.launch_pending ),
    .Y(_206_)
);

NAND3X1 _2268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1366_),
    .C(_1303_),
    .Y(_1367_)
);

FILL FILL_0__2728_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_1525__bF$buf0),
    .Y(_1571_)
);

FILL FILL_1__4576_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2900_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27__bF$buf4),
    .B(\u_rf_if.wdata1_phase [1]),
    .Y(_487_)
);

FILL FILL_0__3266_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3427_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [10]),
    .Y(_957_)
);

FILL FILL_0__2957_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2537_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4643_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [15]),
    .C(_1960__bF$buf4),
    .Y(_1981_)
);

OAI21X1 _4223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1246_),
    .B(_1159__bF$buf4),
    .C(_1248_),
    .Y(_1110_)
);

FILL FILL_1_CLKBUF1_insert132 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2290_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert136 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3914_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_683_),
    .B(_725_),
    .C(_726_),
    .Y(_646_)
);

FILL FILL_1__2451_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2346_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4452_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1490_),
    .CLK(i_clk_sys_ext_bF$buf16),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

OAI21X1 _4032_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_946_),
    .C(\u_cpu.bufreg.i_en_bF$buf3 ),
    .Y(_947_)
);

FILL FILL_1__4194_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3723_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_379_)
);

NOR2X1 _3303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2105_),
    .B(_2056_),
    .Y(_2055_)
);

NAND2X1 _4508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [15]),
    .B(_1861__bF$buf1),
    .Y(_1897_)
);

FILL FILL_1__3465_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4681_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[0]),
    .Y(_2003_)
);

INVX1 _4261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .Y(_1276_)
);

FILL FILL_1__2736_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3952_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_888_),
    .B(_893_),
    .C(_890_),
    .Y(_894_)
);

DFFPOSX1 _3532_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_363_),
    .CLK(i_clk_sys_ext_bF$buf30),
    .Q(\u_cpu.branch_op )
);

NAND2X1 _3112_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1677_),
    .B(_1673_),
    .Y(_1672_)
);

DFFSR _4737_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1837_),
    .CLK(i_clk_sys_ext_bF$buf28),
    .Q(ibus_pending_rdt[11])
);

INVX2 _4317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_pc_en ),
    .Y(_1506_)
);

FILL FILL_0__2384_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _4490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[3]),
    .B(\u_mem_serial.shift_rx [3]),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_1885_)
);

DFFPOSX1 _4070_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_880_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [17])
);

DFFPOSX1 _2803_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_586_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf1 [18])
);

FILL FILL_0__4530_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2125_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3761_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.cond_branch ),
    .B(_381_),
    .Y(_398_)
);

NAND3X1 _3341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_19_),
    .B(_18_),
    .C(_15_),
    .Y(_14_)
);

INVX1 _4546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [30]),
    .Y(_1922_)
);

NOR2X1 _4126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1168_),
    .Y(_1169_)
);

NAND3X1 _2612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [7]),
    .B(_270_),
    .C(_103_),
    .Y(_271_)
);

FILL FILL_0__3398_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3817_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm_en ),
    .B(_649_),
    .C(\u_cpu.branch_op ),
    .Y(_654_)
);

FILL FILL_1__3139_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3990_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_919_)
);

INVX1 _3570_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2068_),
    .Y(_2077_)
);

OAI21X1 _3150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .B(_479__bF$buf2),
    .C(_27__bF$buf4),
    .Y(_1703_)
);

FILL FILL_0__2669_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_1536_)
);

FILL FILL_0__3610_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2841_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_520_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf0 [5])
);

OAI21X1 _2421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(_1032_),
    .C(_1033_),
    .Y(_1034_)
);

INVX1 _3626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .Y(_144_)
);

AOI21X1 _3206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1742_),
    .B(_1743_),
    .C(rst_bF$buf3),
    .Y(_580_)
);

FILL FILL_0__2898_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2478_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf3),
    .B(_1946_),
    .C(_1947_),
    .Y(\u_cpu.decode.i_wb_rdt [7])
);

OAI21X1 _4164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_1197_),
    .C(_1198_),
    .Y(_1199_)
);

FILL FILL_0__4624_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR3X1 _2650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.launch_pending ),
    .B(_232_),
    .C(_205_),
    .Y(_233_)
);

OAI21X1 _2230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1376_),
    .B(_809_),
    .C(_1308_),
    .Y(_1393_)
);

NAND2X1 _3855_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[3]),
    .B(_660__bF$buf1),
    .Y(_687_)
);

INVX1 _3435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [18]),
    .Y(_350_)
);

OAI21X1 _3015_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf4),
    .B(_1735_),
    .C(\u_rf_if.read_buf0 [8]),
    .Y(_1603_)
);

FILL FILL_1_BUFX2_insert60 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert63 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert67 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .B(_1548_),
    .Y(_1557_)
);

NAND2X1 _2706_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_78_),
    .B(_190_),
    .Y(_191_)
);

AND2X2 _3664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(\u_cpu.state.cnt_r [0]),
    .Y(_124_)
);

AOI21X1 _3244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1771_),
    .B(_1773_),
    .C(rst_bF$buf6),
    .Y(_589_)
);

DFFPOSX1 _4449_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1481_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

NAND2X1 _4029_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [17]),
    .B(_887__bF$buf3),
    .Y(_945_)
);

FILL FILL_0__3704_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2935_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[3]),
    .B(_1693_),
    .C(_27__bF$buf1),
    .Y(_739_)
);

OAI21X1 _2515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_810_),
    .C(_798_),
    .Y(_838_)
);

FILL FILL_0__4662_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4242_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3893_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_678_),
    .B(_711_),
    .C(_712_),
    .Y(_639_)
);

OAI21X1 _3473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [9]),
    .B(_441__bF$buf2),
    .C(_440_),
    .Y(_433_)
);

AOI21X1 _3053_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1629_),
    .B(_1630_),
    .C(rst_bF$buf4),
    .Y(_538_)
);

OAI21X1 _4678_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2000_),
    .B(_1959__bF$buf3),
    .C(_2001_),
    .Y(_1847_)
);

NOR2X1 _4258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_1270_),
    .Y(_1274_)
);

FILL FILL_0__3513_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4718_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2744_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [6]),
    .B(_91_),
    .Y(_92_)
);

INVX1 _2324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1321_),
    .Y(_1322_)
);

FILL FILL_0__4471_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3949_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.c_r ),
    .Y(_891_)
);

DFFPOSX1 _3529_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_2115_),
    .CLK(i_clk_sys_ext_bF$buf30),
    .Q(\u_cpu.alu.add_cy_r )
);

AND2X2 _3109_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1670_),
    .B(_27__bF$buf4),
    .Y(_555_)
);

FILL FILL_1__2486_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2048_),
    .B(_1804_),
    .Y(_1803_)
);

INVX1 _4487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[2]),
    .Y(_1883_)
);

DFFPOSX1 _4067_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_883_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [15])
);

FILL FILL_0__3742_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2973_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [3]),
    .Y(_1461_)
);

INVX1 _2553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .Y(_800_)
);

BUFX2 _2133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio[5])
);

NOR2X1 _3758_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_381_),
    .Y(\u_cpu.decode.co_immdec_ctrl [2])
);

INVX1 _3338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [0]),
    .Y(_11_)
);

OAI21X1 _3091_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf2),
    .B(_1802_),
    .C(\u_rf_if.read_buf0 [27]),
    .Y(_1656_)
);

DFFPOSX1 _4296_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1118_),
    .CLK(i_clk_sys_ext_bF$buf44),
    .Q(\u_cpu.bufreg2.dlo [14])
);

OR2X2 _2609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_197_),
    .B(\u_rf_serial.last_req_key [0]),
    .Y(_274_)
);

FILL FILL_0__4336_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2782_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_493_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.write_wait [1])
);

AOI22X1 _2362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_845_),
    .B(_1091_),
    .C(_1092_),
    .D(_840_),
    .Y(_1287_)
);

INVX1 _3987_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [30]),
    .Y(_917_)
);

NAND2X1 _3567_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_op_b ),
    .B(_2073_),
    .Y(_2074_)
);

INVX1 _3147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1702_),
    .Y(_1701_)
);

FILL FILL_0__3360_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2838_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_567_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.read_buf1 [2])
);

NAND2X1 _2418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1037_)
);

FILL FILL_0__4565_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3101_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_286_),
    .B(_287_),
    .C(_288_),
    .Y(_67_)
);

AOI21X1 _2171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1432_),
    .B(_1433_),
    .C(rst_bF$buf10),
    .Y(_789_)
);

OAI21X1 _3796_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.cond_branch ),
    .C(_413_),
    .Y(_365_)
);

OAI22X1 _3376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_296_),
    .B(_295_),
    .C(_51_),
    .D(_50_),
    .Y(_49_)
);

NAND2X1 _2647_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_234_),
    .B(_235_),
    .Y(_236_)
);

AOI21X1 _2227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(\u_mem_serial.bit_count_0_bF$buf3 ),
    .C(_1394_),
    .Y(_772_)
);

FILL FILL_0__4374_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_34_),
    .Y(_1726_)
);

FILL FILL_0__2440_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3645_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2601_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2876_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_546_),
    .CLK(i_clk_sys_ext_bF$buf38),
    .Q(\u_rf_if.read_buf0 [25])
);

NAND2X1 _2456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(_998_),
    .Y(_999_)
);

FILL FILL_1__2198_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf3),
    .B(mem_ibus_ack_bF$buf4),
    .Y(_1958_)
);

FILL FILL_1__4344_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1201_),
    .B(_1228_),
    .C(_1229_),
    .Y(_1105_)
);

FILL FILL_0__3454_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3034_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2685_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_90_),
    .B(_208_),
    .Y(_53_)
);

NAND2X1 _2265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1297__bF$buf2),
    .B(_1368_),
    .Y(_1369_)
);

FILL FILL_0__2305_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _4411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1548_),
    .B(\u_cpu.ctrl.o_ibus_adr [7]),
    .C(_1506_),
    .Y(_1569_)
);

FILL FILL_0__3683_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3844_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_960_)
);

FILL FILL_1__4209_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3699_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_130_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

AND2X2 _3279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2057_),
    .B(rdata[1]),
    .Y(_1800_)
);

OAI21X1 _4640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1860_),
    .B(_1959__bF$buf3),
    .C(_1979_),
    .Y(_1831_)
);

INVX1 _4220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [20]),
    .Y(_1246_)
);

FILL FILL143250x104550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4382_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3492_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3072_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3911_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_683_),
    .B(_723_),
    .C(_724_),
    .Y(_645_)
);

FILL FILL_0__4697_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3088_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(\u_rf_if.prefetch_active ),
    .Y(_1654_)
);

FILL FILL_0__2763_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3968_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3548_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3128_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2779_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_598_),
    .CLK(i_clk_sys_ext_bF$buf38),
    .Q(\u_rf_if.read_buf1 [30])
);

AOI22X1 _2359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1288_),
    .B(_796_),
    .C(_1048_),
    .D(_1289_),
    .Y(_1290_)
);

NOR2X1 _3720_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(\u_cpu.alu.i_cmp_eq )
);

OAI21X1 _3300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_2053_)
);

FILL FILL_0__4086_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf0),
    .B(ibus_pending_rdt[4]),
    .Y(_1895_)
);

FILL FILL_1__4247_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2992_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2313_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_215__bF$buf0),
    .B(_290_),
    .C(rst_bF$buf1),
    .Y(_68_)
);

AOI21X1 _2168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1434_),
    .B(_1435_),
    .C(rst_bF$buf10),
    .Y(_790_)
);

FILL FILL_0__2628_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2208_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4734_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1840_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(ibus_pending_rdt[8])
);

AOI22X1 _4314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_buf ),
    .B(_1501_),
    .C(_1502_),
    .D(\u_cpu.cnt12to31 ),
    .Y(_1503_)
);

FILL FILL_1__4476_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2800_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_530_),
    .CLK(i_clk_sys_ext_bF$buf20),
    .Q(\u_rf_if.read_buf0 [12])
);

FILL FILL_0__3586_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3166_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3327_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_966_),
    .B(_1056_),
    .C(_1057_),
    .Y(_1058_)
);

INVX1 _4543_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[2]),
    .Y(_1920_)
);

NAND3X1 _4123_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_1164_),
    .C(_1165_),
    .Y(_1166_)
);

FILL FILL_0__2190_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3814_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf4),
    .B(\u_cpu.decode.i_wb_rdt [31]),
    .Y(_652_)
);

FILL FILL_1__2351_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2246_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_1534_)
);

FILL FILL_1__4094_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_),
    .B(\u_cpu.decode.co_rd_op ),
    .Y(\u_cpu.rd_en )
);

NOR2X1 _3203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf0),
    .B(_1799_),
    .Y(_1739_)
);

FILL FILL_1__2160_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .B(_1548_),
    .Y(_1567_)
);

OAI21X1 _4581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf4),
    .B(_1944_),
    .C(_1945_),
    .Y(\u_cpu.decode.i_wb_rdt [8])
);

OAI21X1 _4161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1125_),
    .B(_1128_),
    .C(_1193_),
    .Y(_1196_)
);

FILL FILL_0__4201_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2636_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3852_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_683_),
    .Y(_685_)
);

MUX2X1 _3432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_348_),
    .B(_351_),
    .S(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_347_)
);

OAI21X1 _3012_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf0),
    .B(_1730_),
    .C(\u_rf_if.read_buf0 [7]),
    .Y(_1601_)
);

FILL FILL_1_BUFX2_insert33 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert37 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [18]),
    .C(_1960__bF$buf0),
    .Y(_1978_)
);

NOR2X1 _4217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1239_),
    .Y(_1244_)
);

FILL FILL_1__3174_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2284_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_1548_),
    .Y(_1555_)
);

OAI21X1 _2703_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_192_),
    .B(_85_),
    .C(_193_),
    .Y(_194_)
);

FILL FILL_0__4010_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3908_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_683_),
    .B(_721_),
    .C(_722_),
    .Y(_644_)
);

NOR2X1 _3661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_139_),
    .Y(\u_cpu.ctrl.i_pc_en )
);

NAND3X1 _3241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf4),
    .B(_5__bF$buf3),
    .C(_1769_),
    .Y(_1768_)
);

DFFPOSX1 _4446_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1473_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

INVX1 _4026_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [18]),
    .Y(_943_)
);

OAI21X1 _2932_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[2]),
    .B(_1693_),
    .C(_27__bF$buf1),
    .Y(_737_)
);

INVX1 _2512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_841_)
);

FILL FILL_0__3298_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3717_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_778_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.active_we )
);

FILL FILL_1__2674_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3879_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3890_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_678_),
    .B(_709_),
    .C(_710_),
    .Y(_638_)
);

OAI22X1 _3470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_434_),
    .B(_433_),
    .C(_432_),
    .D(_431_),
    .Y(_430_)
);

AOI21X1 _3050_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1627_),
    .B(_1628_),
    .C(rst_bF$buf4),
    .Y(_537_)
);

OAI21X1 _4675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1883_),
    .B(_1959__bF$buf2),
    .C(_1999_),
    .Y(_1846_)
);

AOI22X1 _4255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [13]),
    .C(_1167__bF$buf1),
    .D(_1271_),
    .Y(_1272_)
);

NAND2X1 _2741_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_94_),
    .B(_90_),
    .Y(_95_)
);

OAI21X1 _2321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [10]),
    .Y(_1324_)
);

NAND3X1 _3946_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.c_r ),
    .B(\u_cpu.bufreg.i_rs1_en ),
    .C(rdata0[0]),
    .Y(_888_)
);

INVX1 _3526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479__bF$buf1),
    .Y(_478_)
);

INVX2 _3106_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .Y(_1667_)
);

FILL FILL_0__2378_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1881_),
    .Y(\u_cpu.decode.i_wb_rdt [13])
);

DFFPOSX1 _4064_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_885_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.bufreg.data [13])
);

FILL FILL_0__4524_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4104_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2959_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2539_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2970_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[7]),
    .B(_1668_),
    .C(_27__bF$buf1),
    .Y(_1458_)
);

AND2X2 _2550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_802_),
    .B(_797_),
    .Y(_803_)
);

BUFX2 _2130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(vdd),
    .Y(o_uart_tx)
);

NAND3X1 _3755_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_396_),
    .Y(\u_cpu.decode.co_immdec_en [3])
);

NAND2X1 _3335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_9_),
    .B(_10_),
    .Y(_8_)
);

FILL FILL_0__2187_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4293_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1121_),
    .CLK(i_clk_sys_ext_bF$buf43),
    .Q(\u_cpu.bufreg2.dlo [11])
);

NAND3X1 _2606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_217_),
    .B(_93_),
    .C(_92_),
    .Y(_277_)
);

FILL FILL_1__2348_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3984_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.i_init ),
    .C(_914_),
    .Y(_915_)
);

INVX1 _3564_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_op_b ),
    .Y(_2071_)
);

NAND2X1 _3144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [3]),
    .B(_1699_),
    .Y(_1698_)
);

DFFSR _4769_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1851_),
    .CLK(i_clk_sys_ext_bF$buf18),
    .Q(rf_read_reg1[2])
);

NAND2X1 _4349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(_1525__bF$buf0),
    .Y(_1532_)
);

DFFPOSX1 _2835_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_522_),
    .CLK(i_clk_sys_ext_bF$buf41),
    .Q(ren)
);

NAND3X1 _2415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_1035_),
    .C(_1039_),
    .Y(_1040_)
);

FILL FILL_0__4142_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3793_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.decode.i_wb_rdt [30]),
    .Y(_412_)
);

OAI21X1 _3373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [21]),
    .B(_441__bF$buf3),
    .C(_440_),
    .Y(_46_)
);

OAI21X1 _4578_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf4),
    .B(_1942_),
    .C(_1943_),
    .Y(\u_cpu.decode.i_wb_rdt [9])
);

NAND2X1 _4158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [0]),
    .B(_1193_),
    .Y(_1194_)
);

FILL FILL_0__3833_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3413_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4618_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2644_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_238_),
    .B(\u_rf_serial.last_req_key [10]),
    .Y(_239_)
);

AOI21X1 _2224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1395_),
    .B(_1396_),
    .C(rst_bF$buf8),
    .Y(_773_)
);

FILL FILL_0__4371_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3849_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_680_),
    .B(_681_),
    .C(_682_),
    .Y(_625_)
);

NOR2X1 _3429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [23]),
    .B(_441__bF$buf3),
    .Y(_344_)
);

OAI21X1 _3009_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf0),
    .B(_1730_),
    .C(\u_rf_if.read_buf0 [6]),
    .Y(_1599_)
);

FILL FILL_1__2386_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_38_),
    .C(_1724_),
    .Y(_1723_)
);

NAND2X1 _4387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_1548_),
    .Y(_1553_)
);

FILL FILL_1_BUFX2_insert2 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert6 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3222_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142950x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2873_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_513_),
    .CLK(i_clk_sys_ext_bF$buf35),
    .Q(\u_rf_if.issue_chunk [3])
);

MUX2X1 _2453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .B(\u_cpu.bufreg.data [28]),
    .S(\u_mem_serial.active_ibus_bF$buf0 ),
    .Y(_1002_)
);

FILL FILL_0__4180_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_167_),
    .Y(\u_cpu.bufreg.i_cnt1 )
);

INVX1 _3238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1767_),
    .Y(_1766_)
);

FILL FILL_0__2913_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1149_),
    .B(_1226_),
    .C(_1225_),
    .Y(_1227_)
);

FILL FILL_0__3871_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2929_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[1]),
    .B(_1693_),
    .C(_27__bF$buf3),
    .Y(_735_)
);

NAND2X1 _2509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_843_),
    .B(_840_),
    .Y(_844_)
);

FILL FILL_0__4236_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3612_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2682_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(_210_),
    .Y(_211_)
);

NOR2X1 _2262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1370_),
    .B(_1371_),
    .Y(_1372_)
);

OAI21X1 _3887_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_678_),
    .B(_707_),
    .C(_708_),
    .Y(_637_)
);

AOI21X1 _3467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_428_),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_427_)
);

AOI21X1 _3047_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1625_),
    .B(_1626_),
    .C(rst_bF$buf7),
    .Y(_536_)
);

FILL FILL_0__2722_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2302_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3507_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3680_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3260_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2738_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .Y(_98_)
);

NAND3X1 _2318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1326_),
    .C(_1303_),
    .Y(_1327_)
);

FILL FILL_0__4465_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4045_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3841_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3001_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_958_),
    .B(_962_),
    .C(_808_),
    .Y(_963_)
);

FILL FILL_1__4626_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3696_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_125_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.ctrl.i_jump )
);

NAND3X1 _3276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf3),
    .B(_1800__bF$buf2),
    .C(_1798_),
    .Y(_1797_)
);

FILL FILL_0__3316_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2967_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(\u_rf_if.issue_sel_bF$buf1 ),
    .C(_1457_),
    .Y(_1456_)
);

NAND2X1 _2547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_798_),
    .Y(_806_)
);

BUFX2 _2127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2119_),
    .Y(o_mem_sync)
);

FILL FILL_0__4274_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3085_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf3),
    .B(_1686__bF$buf3),
    .C(_2106_),
    .Y(_1652_)
);

FILL FILL_0__2340_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2921_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2501_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2776_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_536_),
    .CLK(i_clk_sys_ext_bF$buf22),
    .Q(\u_rf_if.read_buf0 [17])
);

NOR2X1 _2356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1292_),
    .B(_1007_),
    .Y(_1293_)
);

FILL FILL_0__4083_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [18]),
    .B(_1861__bF$buf4),
    .Y(_1893_)
);

FILL FILL_1__4664_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4244_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4099_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1141_),
    .B(_1143_),
    .C(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1144_)
);

FILL FILL_0__3354_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4559_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3515_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_291_),
    .B(_215__bF$buf0),
    .C(_292_),
    .Y(_69_)
);

AOI21X1 _2165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1436_),
    .B(_1437_),
    .C(rst_bF$buf5),
    .Y(_791_)
);

DFFSR _4731_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1843_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(ibus_pending_rdt[5])
);

NAND2X1 _4311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1496_),
    .B(_1499_),
    .Y(_1500_)
);

FILL FILL_1__3744_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_1060_),
    .C(_1059_),
    .Y(_1061_)
);

FILL FILL_1__4109_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2102_),
    .B(_2092_),
    .C(_2103_),
    .Y(_2115_)
);

NAND3X1 _3179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf1),
    .B(_1728_),
    .C(_2055_),
    .Y(_1721_)
);

FILL FILL_0__2434_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[3]),
    .Y(_1918_)
);

OAI21X1 _4120_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1161_),
    .B(_1160_),
    .C(_1162_),
    .Y(_1163_)
);

FILL FILL_0__3639_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3392_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3811_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm_en ),
    .B(_649_),
    .Y(_650_)
);

FILL FILL_0__4597_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2663_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3448_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3028_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2679_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_78_),
    .B(_98_),
    .C(_205_),
    .Y(_213_)
);

OAI21X1 _2259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [6]),
    .B(_1314_),
    .C(_1308_),
    .Y(_1374_)
);

AND2X2 _3620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.bufreg.i_shift_op ),
    .Y(_141_)
);

OAI21X1 _3200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf3),
    .B(_1741_),
    .C(\u_rf_if.read_buf1 [10]),
    .Y(_1737_)
);

NAND2X1 _4405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .B(_1548_),
    .Y(_1565_)
);

FILL FILL_1__3362_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2892_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2472_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2213_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_965_),
    .B(_964_),
    .Y(_966_)
);

FILL FILL_0__2948_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2528_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4634_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1914_),
    .B(_1959__bF$buf3),
    .C(_1976_),
    .Y(_1828_)
);

AOI22X1 _4214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [22]),
    .C(_1167__bF$buf3),
    .D(_1241_),
    .Y(_1242_)
);

OAI21X1 _2700_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf3),
    .B(_195_),
    .C(_196_),
    .Y(_197_)
);

FILL FILL_0__3486_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3905_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_680_),
    .B(_719_),
    .C(_720_),
    .Y(_643_)
);

AOI21X1 _2297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1340_),
    .B(_1343_),
    .C(rst_bF$buf8),
    .Y(_753_)
);

FILL FILL_0__2757_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4443_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1491_),
    .CLK(i_clk_sys_ext_bF$buf39),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

OAI21X1 _4023_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(_940_),
    .C(_941_),
    .Y(_877_)
);

FILL FILL_0__3295_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3714_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_763_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.active_ibus )
);

FILL FILL_1__3036_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2986_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [3]),
    .C(_1960__bF$buf2),
    .Y(_1998_)
);

FILL FILL_0__2146_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1267_),
    .B(_1159__bF$buf3),
    .C(_1269_),
    .Y(_1118_)
);

FILL FILL_0__4712_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3943_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_636_),
    .CLK(i_clk_sys_ext_bF$buf34),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

INVX1 _3523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .Y(_475_)
);

OR2X2 _3103_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1666_),
    .B(_1665_),
    .Y(_1664_)
);

DFFSR _4728_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(vdd),
    .S(i_rst_n_bF$buf2),
    .D(_1844_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(ibus_pending_rdt[4])
);

INVX1 _4308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_1497_)
);

NAND2X1 _4481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [12]),
    .B(_1861__bF$buf3),
    .Y(_1880_)
);

DFFPOSX1 _4061_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_856_),
    .CLK(i_clk_sys_ext_bF$buf14),
    .Q(\u_cpu.bufreg.data [10])
);

NAND2X1 _3752_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_395_),
    .B(_397_),
    .Y(\u_cpu.ctrl.i_pc_rel )
);

OAI21X1 _3332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_12_),
    .B(_8_),
    .C(_6_),
    .Y(_5_)
);

INVX1 _4537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[0]),
    .Y(_1916_)
);

NOR2X1 _4117_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1160_)
);

FILL FILL_1__3074_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4699_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4290_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1124_),
    .CLK(i_clk_sys_ext_bF$buf43),
    .Q(\u_cpu.bufreg2.dlo [8])
);

AOI22X1 _2603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_276_),
    .B(_277_),
    .C(_279_),
    .D(_278_),
    .Y(_280_)
);

FILL FILL_0__3389_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4330_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3808_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_364_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

INVX1 _3981_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_cnt0 ),
    .Y(_912_)
);

NAND2X1 _3561_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(rdata0[0]),
    .Y(_2068_)
);

AND2X2 _3141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1697_),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_1695_)
);

DFFSR _4766_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1854_),
    .CLK(i_clk_sys_ext_bF$buf25),
    .Q(rf_read_reg0[3])
);

OAI22X1 _4346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1529_),
    .B(_1526_),
    .C(_1524_),
    .D(_1530_),
    .Y(_1465_)
);

DFFPOSX1 _2832_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_570_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf1 [5])
);

OAI21X1 _2412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [4]),
    .B(_797_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_1043_)
);

NAND2X1 _3617_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_137_),
    .B(_138_),
    .Y(\u_cpu.alu.i_en )
);

FILL FILL_1__2994_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3790_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf2),
    .B(_391_),
    .C(_410_),
    .Y(_362_)
);

OAI22X1 _3370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_47_),
    .B(_46_),
    .C(_45_),
    .D(_44_),
    .Y(_43_)
);

OAI21X1 _4575_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf4),
    .B(_1940_),
    .C(_1941_),
    .Y(\u_cpu.decode.i_wb_rdt [10])
);

INVX1 _4155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1162_),
    .Y(_1191_)
);

FILL FILL_0__3410_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_237_),
    .B(ren_bF$buf3),
    .C(_241_),
    .Y(_242_)
);

AOI21X1 _2221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1397_),
    .B(_1398_),
    .C(rst_bF$buf5),
    .Y(_774_)
);

OAI21X1 _3846_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.co_immdec_en [2]),
    .C(_664_),
    .Y(_680_)
);

OAI21X1 _3426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_342_),
    .C(_421_),
    .Y(_341_)
);

NOR2X1 _3006_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf1),
    .B(_1667_),
    .Y(_522_)
);

FILL FILL_1__3588_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .B(_1548_),
    .Y(_1551_)
);

DFFPOSX1 _2870_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_488_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.o_waddr [0])
);

OAI21X1 _2450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1004_),
    .B(_1001_),
    .C(_805_),
    .Y(_1005_)
);

NAND2X1 _3655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [2]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_166_)
);

NOR2X1 _3235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1767_),
    .B(_2108__bF$buf3),
    .Y(_1763_)
);

NOR2X1 _4193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1208_),
    .B(_1133_),
    .Y(_1224_)
);

OAI21X1 _2926_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[0]),
    .B(_1693_),
    .C(_27__bF$buf3),
    .Y(_733_)
);

NAND2X1 _2506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_847_)
);

FILL FILL_0__4653_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2248_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3884_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_678_),
    .B(_705_),
    .C(_706_),
    .Y(_636_)
);

OAI21X1 _3464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [2]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_424_)
);

AOI21X1 _3044_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1623_),
    .B(_1624_),
    .C(rst_bF$buf7),
    .Y(_535_)
);

NAND3X1 _4669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [4]),
    .C(_1960__bF$buf2),
    .Y(_1996_)
);

INVX1 _4249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [14]),
    .Y(_1267_)
);

FILL FILL_0__3504_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2735_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf3),
    .B(_78_),
    .C(_100_),
    .D(_98_),
    .Y(_101_)
);

NAND2X1 _2315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [8]),
    .B(_1297__bF$buf0),
    .Y(_1329_)
);

FILL FILL142650x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3693_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_123_),
    .CLK(i_clk_sys_ext_bF$buf23),
    .Q(\u_cpu.state.cnt_r [3])
);

NAND3X1 _3273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf3),
    .B(_2055_),
    .C(_1798_),
    .Y(_1795_)
);

OAI21X1 _4478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1877_),
    .Y(_1878_)
);

DFFPOSX1 _4058_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_859_),
    .CLK(i_clk_sys_ext_bF$buf14),
    .Q(\u_cpu.bufreg.data [7])
);

FILL FILL_0__3733_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2964_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .B(_1690_),
    .Y(_1454_)
);

INVX2 _2544_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_808_),
    .Y(_809_)
);

BUFX2 _2124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2122_),
    .Y(o_rf_sync)
);

FILL FILL_0__4691_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3749_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(_391_),
    .C(_394_),
    .Y(_395_)
);

NOR2X1 _3329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .B(_3_),
    .Y(_2_)
);

FILL FILL_1__2286_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4012_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3082_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2055_),
    .B(_1686__bF$buf3),
    .C(_1798_),
    .Y(_1648_)
);

FILL FILL142950x150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4287_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1095_),
    .CLK(i_clk_sys_ext_bF$buf43),
    .Q(\u_cpu.bufreg2.dlo [5])
);

FILL FILL_0__3962_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3542_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3122_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2773_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_537_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf0 [18])
);

AOI21X1 _2353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1087_),
    .B(_1295_),
    .C(_794_),
    .Y(_2117_)
);

NAND2X1 _3978_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.data [3]),
    .Y(_910_)
);

OAI21X1 _3558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2036_),
    .B(_2041_),
    .C(_2046_),
    .Y(\u_cpu.mem_if.o_rd )
);

INVX4 _3138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_rreq ),
    .Y(_1693_)
);

AND2X2 _4096_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.data [0]),
    .Y(_1141_)
);

FILL FILL_0__3771_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2829_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_523_),
    .CLK(i_clk_sys_ext_bF$buf32),
    .Q(\u_rf_if.read_buf0 [6])
);

NAND2X1 _2409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1043_),
    .B(_1045_),
    .Y(_1046_)
);

FILL FILL_0__4136_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142950x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_100_),
    .B(_215__bF$buf3),
    .C(_202_),
    .Y(_294_)
);

AOI21X1 _2162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1438_),
    .B(_1439_),
    .C(rst_bF$buf8),
    .Y(_792_)
);

NAND2X1 _3787_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.decode.i_wb_rdt [4]),
    .Y(_409_)
);

OAI21X1 _3367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_41_),
    .B(_297_),
    .C(\u_rf_if.stream_cnt [4]),
    .Y(_40_)
);

FILL FILL_0__2202_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3827_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3160_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_243_),
    .B(_244_),
    .C(_99_),
    .Y(_245_)
);

AOI21X1 _2218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1399_),
    .B(_1400_),
    .C(rst_bF$buf5),
    .Y(_775_)
);

FILL FILL_0__4365_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .B(_796_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [0]),
    .Y(_1064_)
);

FILL FILL_1__4526_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4106_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2101_),
    .Y(\u_cpu.alu.o_cmp )
);

NOR2X1 _3176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf7),
    .B(_452_),
    .Y(_571_)
);

FILL FILL_0__3216_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2867_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_551_),
    .CLK(i_clk_sys_ext_bF$buf22),
    .Q(\u_rf_if.read_buf0 [28])
);

NOR2X1 _2447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .B(_810_),
    .Y(_1008_)
);

FILL FILL_0__2907_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3970_ (
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

INVX1 _2676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [7]),
    .Y(_214_)
);

INVX2 _2256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1297__bF$buf0),
    .Y(_1376_)
);

NAND2X1 _4402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .B(_1548_),
    .Y(_1563_)
);

FILL FILL_1__4144_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3674_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3254_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2210_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x111750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4459_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4039_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3415_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(_967_),
    .C(_968_),
    .Y(_969_)
);

NAND3X1 _4631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [21]),
    .C(_1960__bF$buf0),
    .Y(_1975_)
);

INVX1 _4211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [22]),
    .Y(_1239_)
);

FILL FILL_0__3063_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3902_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_680_),
    .B(_717_),
    .C(_718_),
    .Y(_642_)
);

FILL FILL_1__3224_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1345_),
    .Y(_1346_)
);

FILL FILL142950x18150 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(_479__bF$buf3),
    .Y(_455_)
);

NAND3X1 _3079_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf1),
    .B(_1686__bF$buf0),
    .C(_1787_),
    .Y(_1646_)
);

FILL FILL_0__2334_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4440_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1486_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

OAI21X1 _4020_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf4),
    .B(_937_),
    .C(_939_),
    .Y(_876_)
);

FILL FILL_0__3959_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4182_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3711_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_787_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [19])
);

FILL FILL_0__4497_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3348_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2724_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2999_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf0),
    .B(_1720_),
    .C(\u_rf_if.read_buf0 [5]),
    .Y(_1592_)
);

DFFPOSX1 _2579_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_70_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.last_req_key [9])
);

AOI21X1 _2159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1440_),
    .B(_1441_),
    .C(rst_bF$buf8),
    .Y(_793_)
);

DFFPOSX1 _3940_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_639_),
    .CLK(i_clk_sys_ext_bF$buf28),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

OAI21X1 _3520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .B(_473_),
    .C(rf_wdata0_next_to_if),
    .Y(_472_)
);

NOR2X1 _3100_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.pending_read ),
    .Y(_1662_)
);

FILL FILL_0__2619_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4725_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_752_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [7])
);

DFFPOSX1 _4305_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1109_),
    .CLK(i_clk_sys_ext_bF$buf37),
    .Q(\u_cpu.bufreg2.dlo [21])
);

FILL FILL_1__3262_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3997_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3577_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3157_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_840_),
    .B(\u_cpu.bufreg2.dlo [4]),
    .C(\u_cpu.bufreg2.dlo [6]),
    .D(_1048_),
    .Y(_1067_)
);

FILL FILL_0__2428_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4534_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[20]),
    .Y(_1914_)
);

NOR2X1 _4114_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1127_),
    .B(_1156_),
    .Y(_1157_)
);

FILL FILL_0__2181_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_282_),
    .B(_231_),
    .C(rst_bF$buf1),
    .Y(_64_)
);

DFFPOSX1 _3805_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_354_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bne_or_bge )
);

NAND2X1 _2197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [22]),
    .B(_1377__bF$buf2),
    .Y(_1416_)
);

FILL FILL_0__2657_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4763_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1857_),
    .CLK(i_clk_sys_ext_bF$buf21),
    .Q(rf_read_reg0[0])
);

OAI21X1 _4343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1524_),
    .B(_1526_),
    .C(_1528_),
    .Y(_1464_)
);

FILL FILL_0__3195_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _3614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_136_),
    .Y(\u_cpu.bufreg.i_cnt_done )
);

FILL FILL_0__2886_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2466_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4572_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf1),
    .B(_1938_),
    .C(_1939_),
    .Y(\u_cpu.decode.i_wb_rdt [11])
);

OAI21X1 _4152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1186_),
    .B(_1159__bF$buf2),
    .C(_1188_),
    .Y(_1099_)
);

FILL FILL_0__4612_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _3843_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_676_),
    .Y(_678_)
);

AOI21X1 _3423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_407_),
    .B(_339_),
    .C(_445_),
    .Y(rdata1[0])
);

NAND2X1 _3003_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1596_),
    .Y(_1595_)
);

AOI21X1 _4628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1874_),
    .B(_1958_),
    .C(_1973_),
    .Y(_1825_)
);

OAI21X1 _4208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_1205_),
    .C(_1236_),
    .Y(_1237_)
);

FILL FILL_0__2695_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2275_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .B(_1548_),
    .Y(_1549_)
);

FILL FILL_0__4001_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2436_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3652_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_161_),
    .Y(\u_cpu.cnt0to3 )
);

OAI21X1 _3232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf3),
    .B(_1765_),
    .C(\u_rf_if.read_buf1 [18]),
    .Y(_1761_)
);

DFFPOSX1 _4437_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1477_),
    .CLK(i_clk_sys_ext_bF$buf16),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

NAND2X1 _4017_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [23]),
    .Y(_938_)
);

FILL FILL_1__4599_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_1205_),
    .C(_1193_),
    .Y(_1222_)
);

NOR2X1 _2923_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_732_),
    .B(_1671_),
    .Y(_731_)
);

NAND3X1 _2503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_844_),
    .C(_849_),
    .Y(_850_)
);

FILL FILL_0__3289_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4230_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x18150 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3708_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_370_),
    .Y(_371_)
);

OAI21X1 _3881_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_678_),
    .B(_703_),
    .C(_704_),
    .Y(_635_)
);

INVX1 _3461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .Y(_421_)
);

AOI21X1 _3041_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1622_),
    .B(_1621_),
    .C(rst_bF$buf4),
    .Y(_534_)
);

NAND3X1 _4666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [5]),
    .C(_1960__bF$buf2),
    .Y(_1994_)
);

MUX2X1 _4246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_op_b ),
    .B(\u_mem_serial.shift_rx [31]),
    .S(_1149_),
    .Y(_1265_)
);

FILL FILL_0__4706_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2732_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(_102_),
    .C(_103_),
    .Y(_104_)
);

AOI21X1 _2312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1328_),
    .B(_1331_),
    .C(rst_bF$buf9),
    .Y(_750_)
);

DFFPOSX1 _3937_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_642_),
    .CLK(i_clk_sys_ext_bF$buf34),
    .Q(rreg1[1])
);

NAND2X1 _3517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_470_),
    .B(_471_),
    .Y(_469_)
);

FILL FILL_1__2894_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2474_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3690_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_132_)
);

NAND2X1 _3270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2123_),
    .B(_1793_),
    .Y(_1792_)
);

FILL FILL_0__2369_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1873_),
    .B(rf_rreq_bF$buf5),
    .C(_1875_),
    .Y(rf_read_reg0_to_if[2])
);

DFFPOSX1 _4055_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_862_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.bufreg.data [4])
);

FILL FILL_0__3310_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4515_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2961_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .B(_1453_),
    .C(_1452_),
    .Y(_509_)
);

OAI21X1 _2541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.bufreg.data [6]),
    .C(\u_mem_serial.bit_count_0_bF$buf0 ),
    .Y(_812_)
);

OAI21X1 _3746_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_signed ),
    .B(_370_),
    .C(_393_),
    .Y(\u_cpu.decode.co_immdec_en [1])
);

INVX2 _3326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [1]),
    .Y(_2123_)
);

FILL FILL_1__3488_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2598_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4284_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1098_),
    .CLK(i_clk_sys_ext_bF$buf43),
    .Q(\u_cpu.bufreg2.dlo [2])
);

FILL FILL_0__4324_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2759_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3700_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2770_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_494_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.write_wait [2])
);

NOR2X1 _2350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1296_),
    .Y(_1297_)
);

NAND2X1 _3975_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [3]),
    .B(_887__bF$buf0),
    .Y(_908_)
);

OAI21X1 _3555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .B(_2043_),
    .C(_2037_),
    .Y(_2044_)
);

AOI21X1 _3135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .B(_1692_),
    .C(_1691_),
    .Y(_560_)
);

NAND3X1 _4093_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1132_),
    .B(_1137_),
    .C(_1138_),
    .Y(_1139_)
);

DFFPOSX1 _2826_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_501_),
    .CLK(i_clk_sys_ext_bF$buf35),
    .Q(\u_rf_if.issue_sel )
);

AOI22X1 _2406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_840_),
    .B(\u_cpu.bufreg2.dlo [16]),
    .C(\u_cpu.bufreg2.dlo [18]),
    .D(_1048_),
    .Y(_1049_)
);

CLKBUF1 CLKBUF1_insert241 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_hier0_bF$buf5)
);

CLKBUF1 CLKBUF1_insert242 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_hier0_bF$buf4)
);

CLKBUF1 CLKBUF1_insert243 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_hier0_bF$buf3)
);

CLKBUF1 CLKBUF1_insert244 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_hier0_bF$buf2)
);

CLKBUF1 CLKBUF1_insert245 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_hier0_bF$buf1)
);

CLKBUF1 CLKBUF1_insert246 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_hier0_bF$buf0)
);

FILL FILL_0__4553_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4714_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3784_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_754_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_rx [5])
);

INVX1 _3364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.ready_pulse ),
    .Y(_38_)
);

OAI21X1 _4569_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf2),
    .B(_1936_),
    .C(_1937_),
    .Y(\u_cpu.decode.i_wb_rdt [19])
);

INVX1 _4149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [1]),
    .Y(_1186_)
);

FILL FILL_0__3404_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x104550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4609_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [3]),
    .B(_119_),
    .Y(_248_)
);

AND2X2 _2215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1402_),
    .B(_1308_),
    .Y(_776_)
);

NOR2X1 _3593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_cnt0 ),
    .B(\u_cpu.alu.cmp_r ),
    .Y(_2099_)
);

NAND3X1 _3173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf1),
    .B(_2108__bF$buf2),
    .C(_1772_),
    .Y(_1718_)
);

NAND2X1 _4378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .B(_1525__bF$buf2),
    .Y(_1547_)
);

FILL FILL_0__3633_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4418_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2864_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_553_),
    .CLK(i_clk_sys_ext_bF$buf41),
    .Q(\u_rf_if.pending_read )
);

OAI21X1 _2444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .B(_810_),
    .C(_798_),
    .Y(_1011_)
);

FILL FILL_0__4591_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4171_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_163_)
);

NAND3X1 _3229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2123_),
    .B(_1812_),
    .C(_0_),
    .Y(_1759_)
);

FILL FILL_0__2904_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4332_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1218_),
    .B(_1138_),
    .C(_1131_),
    .Y(_1219_)
);

FILL FILL_0__3862_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3442_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3022_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4647_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_214_),
    .B(_215__bF$buf2),
    .C(_216_),
    .Y(_57_)
);

AOI21X1 _2253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1375_),
    .B(_1378_),
    .C(rst_bF$buf8),
    .Y(_762_)
);

OAI21X1 _3878_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660__bF$buf2),
    .B(_701_),
    .C(_702_),
    .Y(_634_)
);

NOR2X1 _3458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [5]),
    .B(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_418_)
);

AOI21X1 _3038_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1620_),
    .B(_1619_),
    .C(rst_bF$buf3),
    .Y(_533_)
);

FILL FILL_0__2713_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4561_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3251_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2729_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_101_),
    .B(_106_),
    .C(_97_),
    .Y(_107_)
);

INVX1 _2309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1333_),
    .Y(_1334_)
);

NAND2X1 _2482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_972_)
);

AOI21X1 _3687_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_158_),
    .B(_171_),
    .C(_172_),
    .Y(_130_)
);

OAI21X1 _3267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf0),
    .B(_1790_),
    .C(\u_rf_if.read_buf1 [25]),
    .Y(_1789_)
);

FILL FILL_0__2942_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2522_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3727_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2958_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[4]),
    .B(_1668_),
    .C(_27__bF$buf2),
    .Y(_1449_)
);

OAI22X1 _2538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_813_),
    .B(_814_),
    .C(_811_),
    .D(_812_),
    .Y(_815_)
);

FILL FILL_0__4685_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4265_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf2),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [4]),
    .Y(_1348_)
);

NAND2X1 _3496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen0_r ),
    .B(\u_rf_if.rtrig1 ),
    .Y(_453_)
);

NAND3X1 _3076_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf3),
    .B(_1800__bF$buf2),
    .C(_2106_),
    .Y(_1644_)
);

FILL FILL_0__2751_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3116_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2767_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_540_),
    .CLK(i_clk_sys_ext_bF$buf45),
    .Q(\u_rf_if.read_buf0 [21])
);

NAND2X1 _2347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1079_),
    .B(_1083_),
    .Y(_1300_)
);

FILL FILL142950x39750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4494_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3450_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2980_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2140_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3765_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2996_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf0),
    .B(_1720_),
    .C(\u_rf_if.read_buf0 [4]),
    .Y(_1590_)
);

DFFPOSX1 _2576_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_56_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_serial.tx_state [0])
);

DFFPOSX1 _2156_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_789_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_rx [17])
);

DFFSR _4722_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1848_),
    .CLK(i_clk_sys_ext_bF$buf29),
    .Q(ibus_pending_rdt[31])
);

DFFPOSX1 _4302_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1112_),
    .CLK(i_clk_sys_ext_bF$buf31),
    .Q(\u_cpu.bufreg2.dlo [18])
);

FILL FILL_0__4359_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1066_),
    .B(_1069_),
    .C(_853_),
    .Y(_1070_)
);

INVX1 _4531_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[0]),
    .Y(_1912_)
);

NAND3X1 _4111_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1125_),
    .B(\u_cpu.alu.i_en ),
    .C(_1153_),
    .Y(_1154_)
);

FILL FILL_0__3383_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3802_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_357_),
    .CLK(i_clk_sys_ext_bF$buf30),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

FILL FILL_0__4588_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3124_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [21]),
    .B(_1377__bF$buf2),
    .Y(_1418_)
);

NOR2X1 _3399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [15]),
    .B(_441__bF$buf0),
    .Y(_315_)
);

DFFSR _4760_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1814_),
    .CLK(i_clk_sys_ext_bF$buf18),
    .Q(rf_read_reg0[4])
);

INVX4 _4340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf2),
    .Y(_1526_)
);

FILL FILL_0__3019_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _3611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_134_),
    .Y(\u_cpu.bufreg.i_init )
);

FILL FILL_0__4397_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert240 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3773_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2463_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3668_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2624_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3829_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2899_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf1),
    .B(_467_),
    .Y(_486_)
);

NAND3X1 _2479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_966_),
    .B(_970_),
    .C(_974_),
    .Y(_975_)
);

INVX1 _3840_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_immdec_en [3]),
    .Y(_675_)
);

OAI21X1 _3420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .B(_338_),
    .C(_337_),
    .Y(_336_)
);

NOR2X1 _3000_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1663_),
    .B(_1593_),
    .Y(_521_)
);

NAND3X1 _4625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [23]),
    .C(_1960__bF$buf0),
    .Y(_1972_)
);

OAI21X1 _4205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1233_),
    .B(_1201_),
    .C(_1234_),
    .Y(_1106_)
);

FILL FILL_1__3162_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4367_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2692_ (
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

NAND3X1 _2288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1350_),
    .C(_1303_),
    .Y(_1351_)
);

FILL FILL_0__2328_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4434_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1492_),
    .CLK(i_clk_sys_ext_bF$buf16),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

NAND2X1 _4014_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [23]),
    .B(_887__bF$buf3),
    .Y(_936_)
);

FILL FILL_1__2909_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2920_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [3]),
    .B(_1674_),
    .C(_39_),
    .Y(_729_)
);

OAI21X1 _2500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(_852_),
    .C(_802_),
    .Y(_853_)
);

INVX1 _3705_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_368_),
    .Y(\u_cpu.alu.i_rd_sel [0])
);

FILL FILL_1__3867_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x72150 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [6]),
    .C(_1960__bF$buf2),
    .Y(_1992_)
);

AND2X2 _4243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1149_),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1263_)
);

FILL FILL143250x39750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4703_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3095_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3934_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_645_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2])
);

INVX1 _3514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(_466_)
);

NAND3X1 _4719_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1874_),
    .B(_1871_),
    .C(_2030_),
    .Y(_2031_)
);

FILL FILL_1__3676_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[2]),
    .Y(_1873_)
);

DFFPOSX1 _4052_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_865_),
    .CLK(i_clk_sys_ext_bF$buf23),
    .Q(\u_cpu.bufreg.data [0])
);

INVX1 _3743_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [1]),
    .Y(_391_)
);

AND2X2 _3323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_2114_),
    .Y(_2113_)
);

INVX1 _4528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [0]),
    .Y(_1910_)
);

AND2X2 _4108_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1151_)
);

FILL FILL_0__2175_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4281_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1101_),
    .CLK(i_clk_sys_ext_bF$buf44),
    .Q(\u_cpu.bufreg2.dhi [6])
);

FILL FILL_0__4321_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2336_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3972_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [4]),
    .Y(_906_)
);

AOI21X1 _3552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2040_),
    .B(_2037_),
    .C(_2038_),
    .Y(_2041_)
);

AOI21X1 _3132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .B(_1690_),
    .C(_1689_),
    .Y(_559_)
);

DFFSR _4757_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1817_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(ibus_pending_rdt[27])
);

OAI21X1 _4337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1501_),
    .B(_1505_),
    .C(_1523_),
    .Y(\u_cpu.ctrl.o_rd )
);

FILL FILL_1__4499_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4079_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4090_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .B(_1135_),
    .Y(_1136_)
);

DFFPOSX1 _2823_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_576_),
    .CLK(i_clk_sys_ext_bF$buf45),
    .Q(\u_rf_if.read_buf1 [8])
);

AOI22X1 _2403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .B(_796_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [20]),
    .Y(_1052_)
);

FILL FILL_0__3189_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_rd_mem_en ),
    .B(\u_cpu.mem_if.o_rd ),
    .C(\u_cpu.ctrl.o_rd ),
    .Y(_32_)
);

FILL FILL142350x97350 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3781_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .Y(_406_)
);

NAND2X1 _3361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_37_),
    .Y(_36_)
);

OAI21X1 _4566_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf1),
    .B(_1934_),
    .C(_1935_),
    .Y(\u_cpu.decode.i_wb_rdt [24])
);

NOR2X1 _4146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1180_),
    .Y(_1184_)
);

FILL FILL_0__3821_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [5]),
    .B(_91_),
    .Y(_251_)
);

AOI21X1 _2212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1403_),
    .B(_1404_),
    .C(rst_bF$buf10),
    .Y(_777_)
);

NAND3X1 _3837_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_667_),
    .B(_669_),
    .C(_671_),
    .Y(_672_)
);

OAI21X1 _3417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .B(_335_),
    .C(_334_),
    .Y(_333_)
);

FILL FILL_1__2374_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2069_),
    .B(_2080_),
    .C(_2068_),
    .Y(_2096_)
);

NAND3X1 _3170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf1),
    .B(_2108__bF$buf2),
    .C(_1769_),
    .Y(_1716_)
);

FILL FILL_0__2269_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1543_),
    .B(_1526_),
    .C(_1545_),
    .Y(_1479_)
);

FILL FILL_0__3210_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4415_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2861_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_555_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.write_wait [5])
);

NAND2X1 _2441_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_1014_)
);

NAND2X1 _3646_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_160_),
    .B(_158_),
    .Y(_161_)
);

NAND3X1 _3226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf0),
    .B(_0_),
    .C(_1757_),
    .Y(_1756_)
);

FILL FILL_1__2183_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1125_),
    .B(_1128_),
    .C(\u_cpu.bufreg2.dhi [4]),
    .Y(_1216_)
);

OAI21X1 _2917_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(\u_rf_if.write_wait [2]),
    .Y(_619_)
);

FILL FILL143250x150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4224_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2659_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3600_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_217_),
    .B(_215__bF$buf2),
    .C(_218_),
    .Y(_58_)
);

NAND3X1 _2250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1380_),
    .B(\u_cpu.o_ibus_cyc ),
    .C(_1372_),
    .Y(_1381_)
);

AND2X2 _3875_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf4),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .Y(_700_)
);

OAI21X1 _3455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_416_),
    .C(_421_),
    .Y(_415_)
);

AOI21X1 _3035_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1617_),
    .B(_1618_),
    .C(rst_bF$buf3),
    .Y(_532_)
);

FILL FILL_1__3197_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3915_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2726_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf0),
    .B(\u_rf_if.o_waddr [5]),
    .Y(_110_)
);

OAI21X1 _2306_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf3),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [7]),
    .Y(_1336_)
);

FILL FILL_0__4033_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142950x104550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4614_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3684_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_184_)
);

NAND3X1 _3264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf4),
    .B(_5__bF$buf3),
    .C(_1787_),
    .Y(_1786_)
);

NAND2X1 _4469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf5),
    .B(_1870_),
    .Y(_1871_)
);

DFFPOSX1 _4049_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_868_),
    .CLK(i_clk_sys_ext_bF$buf27),
    .Q(\u_cpu.bufreg.data [28])
);

FILL FILL_0__3724_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3304_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4509_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2955_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1667_),
    .C(_27__bF$buf2),
    .Y(_1447_)
);

OAI22X1 _2535_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_806_),
    .B(_816_),
    .C(_807_),
    .D(_817_),
    .Y(_818_)
);

FILL FILL_1__2697_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_452_),
    .B(_471_),
    .Y(_451_)
);

NAND3X1 _3073_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf1),
    .B(_1686__bF$buf0),
    .C(_1784_),
    .Y(_1642_)
);

NAND3X1 _4698_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1899_),
    .B(_2013_),
    .C(_2014_),
    .Y(_1854_)
);

DFFPOSX1 _4278_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1104_),
    .CLK(i_clk_sys_ext_bF$buf17),
    .Q(\u_cpu.bufreg2.dhi [3])
);

FILL FILL_0__3953_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3113_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2764_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[5]),
    .B(raddr[4]),
    .Y(_74_)
);

NAND2X1 _2344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1297__bF$buf0),
    .B(_1302_),
    .Y(_1303_)
);

OAI21X1 _3969_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_903_),
    .C(_904_),
    .Y(_860_)
);

OR2X2 _3549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(gnd),
    .Y(_2038_)
);

INVX8 _3129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf2),
    .Y(_1686_)
);

FILL FILL_1__4232_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142950x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _4087_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1133_)
);

FILL FILL_0__4547_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4127_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2993_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf0),
    .B(_1715_),
    .C(\u_rf_if.read_buf0 [3]),
    .Y(_1588_)
);

DFFPOSX1 _2573_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_65_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.last_req_key [10])
);

DFFPOSX1 _2153_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_749_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [10])
);

DFFPOSX1 _3778_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_755_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [4])
);

NAND2X1 _3358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(_34_),
    .Y(_33_)
);

FILL FILL_0__2613_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3818_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4461_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3991_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3571_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x7350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3151_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[5]),
    .Y(_254_)
);

AOI21X1 _2209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1372_),
    .B(_1405_),
    .C(_1406_),
    .Y(_778_)
);

FILL FILL_1__3312_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_966_),
    .B(_1072_),
    .C(_1071_),
    .Y(_1073_)
);

NAND3X1 _3587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_cmp_sig ),
    .B(_2085_),
    .C(_2087_),
    .Y(_2093_)
);

OAI21X1 _3167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf3),
    .B(_1715_),
    .C(\u_rf_if.read_buf1 [3]),
    .Y(_1714_)
);

FILL FILL_0__2422_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4270_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2858_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_516_),
    .CLK(i_clk_sys_ext_bF$buf21),
    .Q(\u_rf_if.read_buf0 [1])
);

INVX1 _2438_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [17]),
    .Y(_1017_)
);

FILL FILL_0__4165_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(_1376_),
    .C(_1412_),
    .Y(_1420_)
);

OAI21X1 _3396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_313_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_312_)
);

FILL FILL_0__2651_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2231_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3856_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3436_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_220_),
    .B(_215__bF$buf3),
    .C(_202_),
    .Y(_221_)
);

NAND2X1 _2247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [28]),
    .B(_1377__bF$buf1),
    .Y(_1383_)
);

FILL FILL_0__4394_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert213 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert217 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2707_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3350_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3245_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2621_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2896_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1461_),
    .B(_1693_),
    .C(_609_),
    .Y(_484_)
);

AOI21X1 _2476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_803_),
    .B(_829_),
    .C(_977_),
    .Y(_978_)
);

FILL FILL_0__2936_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2516_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1969_),
    .B(_1970_),
    .C(_1869_),
    .Y(_1971_)
);

OAI21X1 _4202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1208_),
    .B(_1131_),
    .C(_1231_),
    .Y(_1232_)
);

FILL FILL142950x25350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3894_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4259_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3635_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2285_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [2]),
    .B(_1297__bF$buf3),
    .Y(_1353_)
);

FILL FILL_0__2745_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2325_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4431_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1480_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

NOR2X1 _4011_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_909_),
    .Y(_934_)
);

FILL FILL_0__3283_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3702_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_366_)
);

FILL FILL_0__4488_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3864_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3024_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4649_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2116_),
    .B(_2053_),
    .Y(_2052_)
);

NAND3X1 _4660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [7]),
    .C(_1960__bF$buf1),
    .Y(_1990_)
);

FILL FILL_0__2134_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _4240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1142_),
    .Y(_1261_)
);

FILL FILL_0__3759_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3339_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3931_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_621_),
    .CLK(i_clk_sys_ext_bF$buf19),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

NAND2X1 _3511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_464_),
    .B(_478_),
    .Y(_463_)
);

NAND2X1 _4716_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [4]),
    .B(\u_cpu.i_ibus_rdt [0]),
    .Y(_2028_)
);

FILL FILL_0__2363_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2944_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2524_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2799_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_588_),
    .CLK(i_clk_sys_ext_bF$buf42),
    .Q(\u_rf_if.read_buf1 [20])
);

NAND3X1 _2379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_1074_),
    .C(_1075_),
    .Y(_1076_)
);

DFFPOSX1 _3740_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_758_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [1])
);

INVX8 _3320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf4),
    .Y(_2110_)
);

INVX1 _4525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [5]),
    .Y(_1908_)
);

INVX1 _4105_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .Y(_1148_)
);

FILL FILL_1__4687_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4267_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2592_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3377_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [21]),
    .Y(_1422_)
);

FILL FILL_0__2648_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4754_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1820_),
    .CLK(i_clk_sys_ext_bF$buf24),
    .Q(rf_read_reg1[4])
);

NAND3X1 _4334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1511_),
    .B(_1520_),
    .C(_1513_),
    .Y(_1521_)
);

DFFPOSX1 _2820_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_525_),
    .CLK(i_clk_sys_ext_bF$buf45),
    .Q(\u_rf_if.read_buf0 [8])
);

AOI21X1 _2400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1051_),
    .B(_1054_),
    .C(_853_),
    .Y(_1055_)
);

NAND2X1 _3605_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.rd_en ),
    .B(\u_cpu.alu.i_en ),
    .Y(_30_)
);

FILL FILL_1__2982_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert182 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert186 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3767_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2457_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4563_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf5),
    .B(_1932_),
    .C(_1933_),
    .Y(\u_cpu.decode.i_wb_rdt [25])
);

AOI22X1 _4143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [3]),
    .C(_1167__bF$buf2),
    .D(_1181_),
    .Y(_1182_)
);

FILL FILL_0__4603_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3834_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_668_),
    .Y(_669_)
);

OAI21X1 _3414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [5]),
    .B(_441__bF$buf2),
    .C(_440_),
    .Y(_330_)
);

FILL FILL_1__2371_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1934_),
    .B(_1959__bF$buf2),
    .C(_1968_),
    .Y(_1821_)
);

FILL FILL_0__2686_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_1544_)
);

FILL FILL_0_CLKBUF1_insert242 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert244 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert246 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3643_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_788_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_rx [18])
);

NOR2X1 _3223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_1807_),
    .Y(_1754_)
);

FILL FILL143250x25350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4428_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1649_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

NAND2X1 _4008_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.c_r ),
    .B(_892_),
    .Y(_931_)
);

FILL FILL_1__3385_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert230 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686_),
    .Y(_1686__bF$buf0)
);

BUFX2 BUFX2_insert231 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110_),
    .Y(_2110__bF$buf4)
);

BUFX2 BUFX2_insert232 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110_),
    .Y(_2110__bF$buf3)
);

BUFX2 BUFX2_insert233 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110_),
    .Y(_2110__bF$buf2)
);

BUFX2 BUFX2_insert234 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110_),
    .Y(_2110__bF$buf1)
);

BUFX2 BUFX2_insert235 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110_),
    .Y(_2110__bF$buf0)
);

BUFX2 BUFX2_insert236 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf4)
);

BUFX2 BUFX2_insert237 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf3)
);

BUFX2 BUFX2_insert238 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf2)
);

BUFX2 BUFX2_insert239 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf1)
);

FILL FILL_0__2495_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _4181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1149_),
    .B(\u_mem_serial.shift_rx [28]),
    .Y(_1214_)
);

OAI21X1 _2914_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(_39_),
    .Y(_617_)
);

FILL FILL_0__4641_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4221_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2236_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3872_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [12]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .S(rf_rreq_bF$buf0),
    .Y(_698_)
);

INVX1 _3452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [24]),
    .Y(_404_)
);

OAI21X1 _3032_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf3),
    .B(_1746_),
    .C(\u_rf_if.read_buf0 [12]),
    .Y(_1615_)
);

OAI21X1 _4657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1942_),
    .B(_1959__bF$buf4),
    .C(_1988_),
    .Y(_1839_)
);

AOI22X1 _4237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [16]),
    .C(_1167__bF$buf2),
    .D(_1258_),
    .Y(_1259_)
);

FILL FILL143250x3750 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2723_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf1),
    .B(raddr[4]),
    .Y(_113_)
);

NAND3X1 _2303_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1338_),
    .C(_1303_),
    .Y(_1339_)
);

DFFPOSX1 _3928_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_624_),
    .CLK(i_clk_sys_ext_bF$buf19),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

NAND2X1 _3508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(_479__bF$buf0),
    .Y(_461_)
);

INVX1 _3681_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_ready),
    .Y(_182_)
);

NOR3X1 _3261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_0_),
    .C(_1807_),
    .Y(_1784_)
);

AND2X2 _4466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.o_wen0 ),
    .B(rf_wreq),
    .Y(_1868_)
);

OAI21X1 _4046_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_895_),
    .C(_955_),
    .Y(_886_)
);

FILL FILL_0__3721_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2952_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1667_),
    .C(_27__bF$buf2),
    .Y(_1445_)
);

OAI21X1 _2532_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.bufreg.data [2]),
    .C(\u_mem_serial.bit_count_0_bF$buf0 ),
    .Y(_821_)
);

OAI21X1 _3737_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_388_),
    .B(_387_),
    .C(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.decode.co_rd_op )
);

NAND2X1 _3317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2114_),
    .B(_0_),
    .Y(_2107_)
);

FILL FILL_1__3059_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4420_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .B(_467_),
    .C(_449_),
    .Y(_448_)
);

NAND3X1 _3070_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf3),
    .B(_1686__bF$buf0),
    .C(_1778_),
    .Y(_1640_)
);

FILL FILL_0__2169_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4695_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1917_),
    .B(_2011_),
    .C(_2012_),
    .Y(_1853_)
);

OAI21X1 _4275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1168_),
    .B(_1159__bF$buf0),
    .C(_1286_),
    .Y(_1124_)
);

FILL FILL_0__4315_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2761_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(\u_rf_serial.shift_rx [0]),
    .Y(rdata[0])
);

INVX1 _2341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_bF$buf31),
    .Y(_1306_)
);

OAI21X1 _3966_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf2),
    .B(_900_),
    .C(_902_),
    .Y(_859_)
);

OAI21X1 _3546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2035_),
    .B(_2034_),
    .C(_2033_),
    .Y(\u_cpu.mem_if.o_wb_sel [3])
);

OAI21X1 _3126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf3),
    .B(_2050_),
    .C(\u_rf_if.read_buf0 [29]),
    .Y(_1684_)
);

NAND2X1 _4084_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .Y(_1130_)
);

DFFPOSX1 _2817_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_579_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.read_buf1 [11])
);

CLKBUF1 CLKBUF1_insert150 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf4),
    .Y(i_clk_sys_ext_bF$buf5)
);

CLKBUF1 CLKBUF1_insert151 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf4),
    .Y(i_clk_sys_ext_bF$buf4)
);

CLKBUF1 CLKBUF1_insert152 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf3),
    .Y(i_clk_sys_ext_bF$buf3)
);

CLKBUF1 CLKBUF1_insert153 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf1),
    .Y(i_clk_sys_ext_bF$buf2)
);

CLKBUF1 CLKBUF1_insert154 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf3),
    .Y(i_clk_sys_ext_bF$buf1)
);

CLKBUF1 CLKBUF1_insert155 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf4),
    .Y(i_clk_sys_ext_bF$buf0)
);

FILL FILL_1__3500_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2990_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf0),
    .B(_1715_),
    .C(\u_rf_if.read_buf0 [2]),
    .Y(_1586_)
);

DFFPOSX1 _2570_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_53_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_serial.tx_state [2])
);

DFFPOSX1 _2150_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_771_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.bit_count [1])
);

DFFPOSX1 _3775_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_785_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [20])
);

AOI21X1 _3355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_33_),
    .B(_36_),
    .C(_26_),
    .Y(_601_)
);

FILL FILL_1__3097_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_253_),
    .B(_256_),
    .Y(_257_)
);

NOR2X1 _2206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.req_pending ),
    .B(_1309_),
    .Y(_1409_)
);

FILL FILL_0__4353_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2082_),
    .B(_2083_),
    .C(_2090_),
    .Y(\u_cpu.alu.o_rd )
);

AOI21X1 _3164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1714_),
    .B(_1712_),
    .C(rst_bF$buf2),
    .Y(_568_)
);

OAI22X1 _4369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1534_),
    .B(_1526_),
    .C(_1535_),
    .D(_1530_),
    .Y(_1476_)
);

FILL FILL_0__3624_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4409_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2855_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_558_),
    .CLK(i_clk_sys_ext_bF$buf15),
    .Q(\u_rf_if.read_buf0 [30])
);

NAND2X1 _2435_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1019_),
    .B(_845_),
    .Y(_1020_)
);

FILL FILL_0__4582_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [24]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_309_)
);

OAI21X1 _4598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf3),
    .B(_1954_),
    .C(_1955_),
    .Y(\u_cpu.decode.i_wb_rdt [31])
);

NAND3X1 _4178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1131_),
    .B(_1135_),
    .C(_1210_),
    .Y(_1211_)
);

FILL FILL_0__3433_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3013_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_114_),
    .B(_215__bF$buf3),
    .C(_202_),
    .Y(_223_)
);

NAND2X1 _2244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [27]),
    .B(_1377__bF$buf3),
    .Y(_1385_)
);

MUX2X1 _3869_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [13]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .S(rf_rreq_bF$buf0),
    .Y(_696_)
);

INVX1 _3449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [26]),
    .Y(_389_)
);

OAI21X1 _3029_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf2),
    .B(_1741_),
    .C(\u_rf_if.read_buf0 [11]),
    .Y(_1613_)
);

FILL FILL_1__4132_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3662_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2893_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .B(_1661_),
    .C(_607_),
    .Y(_483_)
);

OR2X2 _2473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [26]),
    .Y(_981_)
);

NAND2X1 _3678_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.ibus_cyc ),
    .B(_179_),
    .Y(_180_)
);

NAND2X1 _3258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2114_),
    .B(_2048_),
    .Y(_1782_)
);

FILL FILL_0__3471_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3051_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2949_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1597_),
    .B(_1444_),
    .C(rst_bF$buf1),
    .Y(_505_)
);

OAI22X1 _2529_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_822_),
    .B(_823_),
    .C(_820_),
    .D(_821_),
    .Y(_824_)
);

FILL FILL_0__4676_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3212_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2282_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1352_),
    .B(_1355_),
    .C(rst_bF$buf10),
    .Y(_756_)
);

NAND2X1 _3487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_479__bF$buf0),
    .Y(_446_)
);

NAND3X1 _3067_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1778_),
    .B(_1686__bF$buf0),
    .C(_2055_),
    .Y(_1638_)
);

FILL FILL142950x46950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3947_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3527_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3107_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2758_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .B(\u_rf_serial.tx_state [1]),
    .Y(_78_)
);

OAI21X1 _2338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.o_dbus_cyc ),
    .B(\u_cpu.o_ibus_cyc ),
    .C(_1308_),
    .Y(_1309_)
);

OAI21X1 _3296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf1),
    .B(_2050_),
    .C(\u_rf_if.read_buf1 [29]),
    .Y(_2049_)
);

FILL FILL_0__2971_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2551_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert221 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert224 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert226 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert228 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3917_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2987_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2109_),
    .B(_1688__bF$buf3),
    .Y(_1584_)
);

DFFPOSX1 _2567_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_62_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.req_seen )
);

DFFPOSX1 _2147_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_782_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [22])
);

FILL FILL_0__2607_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4713_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1881_),
    .B(\u_cpu.decode.i_wb_rdt [5]),
    .C(\u_cpu.decode.i_wb_rdt [30]),
    .Y(_2025_)
);

FILL FILL_1__4035_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3985_ (
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

DFFPOSX1 _2796_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_531_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.rreg0_latched [4])
);

INVX1 _2376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .Y(_1079_)
);

INVX1 _4522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[1]),
    .Y(_1906_)
);

INVX1 _4102_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_imm ),
    .Y(_1146_)
);

FILL FILL_0__3794_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4159_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3955_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [20]),
    .Y(_1424_)
);

FILL FILL_0__2225_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4751_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1823_),
    .CLK(i_clk_sys_ext_bF$buf28),
    .Q(has_fetched_first_insn)
);

OAI21X1 _4331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .B(_1516_),
    .C(_1517_),
    .Y(_1518_)
);

FILL FILL_0__3183_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3602_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_2067_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.alu.cmp_r )
);

FILL FILL_0__4388_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert159 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4549_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4129_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf2),
    .B(_2055_),
    .C(_1739_),
    .Y(_1736_)
);

OAI21X1 _4560_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf5),
    .B(_1930_),
    .C(_1931_),
    .Y(\u_cpu.decode.i_wb_rdt [26])
);

OAI21X1 _4140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1177_),
    .B(_1159__bF$buf0),
    .C(_1179_),
    .Y(_1096_)
);

FILL FILL_0__3239_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3831_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_666_),
    .B(_663_),
    .S(_664_),
    .Y(_623_)
);

OAI22X1 _3411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_331_),
    .B(_330_),
    .C(_329_),
    .D(_328_),
    .Y(_327_)
);

NAND3X1 _4616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[4]),
    .B(rf_rreq_bF$buf3),
    .C(_1872__bF$buf3),
    .Y(_1967_)
);

FILL FILL_1__3993_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3573_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2263_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2424_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2699_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_98_),
    .B(_197_),
    .C(_194_),
    .Y(_198_)
);

INVX1 _2279_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1357_),
    .Y(_1358_)
);

AND2X2 _3640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(\u_cpu.state.ibus_cyc ),
    .Y(\u_cpu.o_ibus_cyc )
);

NAND2X1 _3220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf1),
    .B(_2113_),
    .Y(_1752_)
);

FILL FILL_0__2319_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4425_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1467_),
    .CLK(i_clk_sys_ext_bF$buf27),
    .Q(\u_cpu.ctrl.pc )
);

NAND2X1 _4005_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_clr_lsb ),
    .B(\u_cpu.alu.i_cnt0 ),
    .Y(_928_)
);

BUFX2 BUFX2_insert200 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf2)
);

BUFX2 BUFX2_insert201 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf1)
);

BUFX2 BUFX2_insert202 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf0)
);

BUFX2 BUFX2_insert203 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf4 )
);

BUFX2 BUFX2_insert204 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf3 )
);

FILL FILL_1__4167_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert205 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf2 )
);

BUFX2 BUFX2_insert206 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf1 )
);

BUFX2 BUFX2_insert207 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en ),
    .Y(\u_cpu.bufreg.i_en_bF$buf0 )
);

BUFX2 BUFX2_insert208 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1960_),
    .Y(_1960__bF$buf4)
);

BUFX2 BUFX2_insert209 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1960_),
    .Y(_1960__bF$buf3)
);

AOI21X1 _2911_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(_39_),
    .C(_730_),
    .Y(_492_)
);

FILL FILL_0__3277_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x46950 (
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
    .A(_1959_),
    .Y(_1959__bF$buf4)
);

BUFX2 BUFX2_insert1 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1959_),
    .Y(_1959__bF$buf3)
);

BUFX2 BUFX2_insert2 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1959_),
    .Y(_1959__bF$buf2)
);

BUFX2 BUFX2_insert3 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1959_),
    .Y(_1959__bF$buf1)
);

BUFX2 BUFX2_insert4 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1959_),
    .Y(_1959__bF$buf0)
);

BUFX2 BUFX2_insert5 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13_),
    .Y(_13__bF$buf4)
);

BUFX2 BUFX2_insert6 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13_),
    .Y(_13__bF$buf3)
);

BUFX2 BUFX2_insert7 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13_),
    .Y(_13__bF$buf2)
);

BUFX2 BUFX2_insert8 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13_),
    .Y(_13__bF$buf1)
);

BUFX2 BUFX2_insert9 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13_),
    .Y(_13__bF$buf0)
);

FILL FILL_1__3438_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4654_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [10]),
    .C(_1960__bF$buf0),
    .Y(_1987_)
);

AOI22X1 _4234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [17]),
    .C(_1167__bF$buf2),
    .D(_1256_),
    .Y(_1257_)
);

FILL FILL_0_BUFX2_insert190 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert192 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert194 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert196 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert198 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert244 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2709_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x126150 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2720_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_79_),
    .B(_111_),
    .C(_115_),
    .Y(_116_)
);

NAND2X1 _2300_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [5]),
    .B(_1297__bF$buf1),
    .Y(_1341_)
);

FILL FILL_0__3086_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3925_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_627_),
    .CLK(i_clk_sys_ext_bF$buf21),
    .Q(rreg0[3])
);

NAND2X1 _3505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .B(_479__bF$buf2),
    .Y(_459_)
);

FILL FILL_1__3247_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2357_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _4463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_1865_)
);

NAND2X1 _4043_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [13]),
    .B(_887__bF$buf1),
    .Y(_954_)
);

FILL FILL_0__4503_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3734_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_386_),
    .B(\u_cpu.bufreg.i_imm_en ),
    .Y(\u_cpu.decode.co_immdec_en [0])
);

NOR2X1 _3314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_2066_)
);

FILL FILL_1__2271_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [1]),
    .Y(_1904_)
);

FILL FILL_0__2586_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4692_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1891_),
    .B(_2009_),
    .C(_2010_),
    .Y(_1852_)
);

OAI21X1 _4272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1282_),
    .B(_1159__bF$buf4),
    .C(_1284_),
    .Y(_1123_)
);

FILL FILL_1__2747_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3963_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(\u_cpu.bufreg.data [9]),
    .Y(_901_)
);

OAI21X1 _3543_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_2034_),
    .C(_2033_),
    .Y(\u_cpu.mem_if.o_wb_sel [1])
);

NAND2X1 _3123_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479__bF$buf1),
    .B(\u_rf_if.o_wen ),
    .Y(_1682_)
);

DFFSR _4748_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1826_),
    .CLK(i_clk_sys_ext_bF$buf28),
    .Q(ibus_pending_rdt[22])
);

INVX1 _4328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1511_),
    .Y(_1515_)
);

FILL FILL_1__3285_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4081_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_init ),
    .Y(_1127_)
);

DFFPOSX1 _2814_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_491_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.o_waddr [2])
);

CLKBUF1 CLKBUF1_insert120 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf0),
    .Y(i_clk_sys_ext_bF$buf35)
);

CLKBUF1 CLKBUF1_insert121 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf0),
    .Y(i_clk_sys_ext_bF$buf34)
);

CLKBUF1 CLKBUF1_insert122 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf5),
    .Y(i_clk_sys_ext_bF$buf33)
);

CLKBUF1 CLKBUF1_insert123 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf5),
    .Y(i_clk_sys_ext_bF$buf32)
);

CLKBUF1 CLKBUF1_insert124 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf2),
    .Y(i_clk_sys_ext_bF$buf31)
);

CLKBUF1 CLKBUF1_insert125 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf3),
    .Y(i_clk_sys_ext_bF$buf30)
);

CLKBUF1 CLKBUF1_insert126 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf3),
    .Y(i_clk_sys_ext_bF$buf29)
);

CLKBUF1 CLKBUF1_insert127 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf1),
    .Y(i_clk_sys_ext_bF$buf28)
);

CLKBUF1 CLKBUF1_insert128 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf4),
    .Y(i_clk_sys_ext_bF$buf27)
);

CLKBUF1 CLKBUF1_insert129 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf2),
    .Y(i_clk_sys_ext_bF$buf26)
);

FILL FILL_0__4121_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2136_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3772_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(_367_),
    .C(_401_),
    .Y(_353_)
);

OAI21X1 _3352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .B(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .C(_27__bF$buf0),
    .Y(_23_)
);

OAI21X1 _4557_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf2),
    .B(_1928_),
    .C(_1929_),
    .Y(\u_cpu.decode.i_wb_rdt [27])
);

INVX1 _4137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [4]),
    .Y(_1177_)
);

FILL FILL_0__3812_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [1]),
    .Y(_260_)
);

OAI21X1 _2203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1312_),
    .B(_1408_),
    .C(_1296_),
    .Y(_1411_)
);

NAND2X1 _3828_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_656_),
    .B(_657_),
    .Y(_664_)
);

INVX1 _3408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [8]),
    .Y(_324_)
);

FILL FILL_1__4511_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2085_),
    .B(_2087_),
    .Y(_2088_)
);

AOI21X1 _3161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1711_),
    .B(_1710_),
    .C(rst_bF$buf2),
    .Y(_567_)
);

OAI22X1 _4366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1541_),
    .B(_1526_),
    .C(_1540_),
    .D(_1530_),
    .Y(_1474_)
);

FILL FILL_0__3201_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2852_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_489_),
    .CLK(i_clk_sys_ext_bF$buf25),
    .Q(\u_rf_if.rreg1_latched [4])
);

INVX1 _2432_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1023_)
);

NAND3X1 _3637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_154_),
    .B(\u_cpu.bufreg.i_init ),
    .C(\u_cpu.bufreg.i_cnt_done ),
    .Y(_155_)
);

NAND3X1 _3217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf3),
    .B(_1800__bF$buf2),
    .C(_1750_),
    .Y(_1749_)
);

FILL FILL_1__2594_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [26]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_306_)
);

BUFX2 BUFX2_insert170 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf4)
);

BUFX2 BUFX2_insert171 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf3)
);

BUFX2 BUFX2_insert172 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf2)
);

BUFX2 BUFX2_insert173 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf1)
);

BUFX2 BUFX2_insert174 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf0)
);

BUFX2 BUFX2_insert175 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660_),
    .Y(_660__bF$buf3)
);

BUFX2 BUFX2_insert176 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660_),
    .Y(_660__bF$buf2)
);

BUFX2 BUFX2_insert177 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660_),
    .Y(_660__bF$buf1)
);

BUFX2 BUFX2_insert178 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660_),
    .Y(_660__bF$buf0)
);

BUFX2 BUFX2_insert179 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108_),
    .Y(_2108__bF$buf3)
);

FILL FILL_0__2489_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _4595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(current_wdata0_next_hint),
    .B(rf_wdata0_next),
    .Y(rf_wdata0_next_to_if)
);

INVX1 _4175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_1208_)
);

FILL FILL_0__3850_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2908_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(_614_),
    .C(_1702_),
    .Y(_613_)
);

FILL FILL_0__4635_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4215_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_225_)
);

NAND2X1 _2241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [26]),
    .B(_1377__bF$buf1),
    .Y(_1387_)
);

MUX2X1 _3866_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [14]),
    .B(\u_cpu.csr_imm ),
    .S(rf_rreq_bF$buf4),
    .Y(_694_)
);

MUX2X1 _3446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_378_),
    .B(_400_),
    .S(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_377_)
);

OAI21X1 _3026_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf2),
    .B(_1741_),
    .C(\u_rf_if.read_buf0 [10]),
    .Y(_1611_)
);

FILL FILL_0__2701_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142950x111750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3906_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2298_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2717_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf4),
    .B(_117_),
    .C(_118_),
    .Y(_119_)
);

FILL FILL_0__4024_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2459_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3400_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2890_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_605_),
    .Y(_482_)
);

INVX1 _2470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_984_)
);

OAI21X1 _3675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_158_),
    .B(_171_),
    .C(\u_cpu.state.init_done ),
    .Y(_178_)
);

OAI21X1 _3255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf0),
    .B(_1780_),
    .C(\u_rf_if.read_buf1 [23]),
    .Y(_1779_)
);

FILL FILL_0__2930_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142350x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert71 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert73 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert75 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert77 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert79 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2946_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1443_),
    .B(_1667_),
    .C(_1442_),
    .Y(_504_)
);

OAI22X1 _2526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_806_),
    .B(_826_),
    .C(_807_),
    .D(_825_),
    .Y(_827_)
);

FILL FILL_0__4253_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [4]),
    .Y(_444_)
);

OAI21X1 _3064_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_421_),
    .B(_34_),
    .C(_444_),
    .Y(_1636_)
);

NAND3X1 _4689_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1921_),
    .B(_2007_),
    .C(_2008_),
    .Y(_1851_)
);

INVX1 _4269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [9]),
    .Y(_1282_)
);

FILL FILL_0__4309_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2755_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_80_),
    .Y(_81_)
);

INVX1 _2335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .Y(_1312_)
);

FILL FILL_0__4482_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2497_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .B(_15_),
    .Y(_1812_)
);

INVX1 _4498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[1]),
    .Y(_1890_)
);

DFFPOSX1 _4078_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_872_),
    .CLK(i_clk_sys_ext_bF$buf14),
    .Q(\u_cpu.bufreg.data [24])
);

FILL FILL_0__3333_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4538_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2984_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [0]),
    .B(_1584_),
    .C(_27__bF$buf3),
    .Y(_1582_)
);

DFFPOSX1 _2564_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_68_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(_2122_)
);

BUFX2 _2144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio_oe[2])
);

DFFPOSX1 _3769_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_776_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.state [1])
);

OAI21X1 _3349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .B(\u_rf_if.stream_active ),
    .C(_27__bF$buf0),
    .Y(_21_)
);

OAI21X1 _4710_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2021_),
    .B(_1959__bF$buf0),
    .C(_2022_),
    .Y(_1858_)
);

FILL FILL_0__3982_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4347_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert80 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf1 )
);

BUFX2 BUFX2_insert81 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf0 )
);

BUFX2 BUFX2_insert82 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1159_),
    .Y(_1159__bF$buf4)
);

BUFX2 BUFX2_insert83 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1159_),
    .Y(_1159__bF$buf3)
);

BUFX2 BUFX2_insert84 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1159_),
    .Y(_1159__bF$buf2)
);

BUFX2 BUFX2_insert85 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1159_),
    .Y(_1159__bF$buf1)
);

BUFX2 BUFX2_insert86 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1159_),
    .Y(_1159__bF$buf0)
);

BUFX2 BUFX2_insert87 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf5)
);

BUFX2 BUFX2_insert88 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf4)
);

BUFX2 BUFX2_insert89 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

DFFPOSX1 _2793_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_591_),
    .CLK(i_clk_sys_ext_bF$buf33),
    .Q(\u_rf_if.read_buf1 [23])
);

OAI21X1 _2373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1047_),
    .B(_978_),
    .C(_1081_),
    .Y(_1082_)
);

NAND2X1 _3998_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(\u_cpu.bufreg.data [27]),
    .Y(_924_)
);

NAND2X1 _3578_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rdata0[0]),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2085_)
);

AOI21X1 _3158_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_428_),
    .B(_1709_),
    .C(_1708_),
    .Y(_566_)
);

FILL FILL_0__2413_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3618_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3371_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2849_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_561_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.o_waddr [3])
);

NAND3X1 _2429_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf1 ),
    .B(_1025_),
    .C(_1024_),
    .Y(_1026_)
);

FILL FILL_0__4576_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_794_),
    .B(_1305_),
    .Y(_1426_)
);

FILL FILL_1__4317_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [28]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_303_)
);

FILL FILL_0__2642_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3427_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3007_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3180_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_215__bF$buf1),
    .B(_226_),
    .C(rst_bF$buf1),
    .Y(_62_)
);

NAND2X1 _2238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1297__bF$buf2),
    .B(_1046_),
    .Y(_1389_)
);

OAI21X1 _3196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf2),
    .B(_1735_),
    .C(\u_rf_if.read_buf1 [9]),
    .Y(_1734_)
);

FILL FILL_0__2451_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2887_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1726_),
    .C(_27__bF$buf0),
    .Y(_602_)
);

AOI21X1 _2467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_982_),
    .B(_986_),
    .C(_808_),
    .Y(_987_)
);

FILL FILL142950x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4194_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2927_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2507_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [25]),
    .C(_1960__bF$buf1),
    .Y(_1965_)
);

FILL FILL_1__4355_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2680_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3885_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3465_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3045_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2696_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_200_),
    .B(_108_),
    .C(_77_),
    .Y(_2120_)
);

OAI21X1 _2276_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf2),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [1]),
    .Y(_1360_)
);

FILL FILL_0__2736_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jump ),
    .B(_1522_),
    .C(_1527_),
    .Y(_1577_)
);

INVX1 _4002_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [24]),
    .Y(_926_)
);

FILL FILL_1__4584_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3274_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2965_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2545_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1879_),
    .B(_1959__bF$buf1),
    .C(_1985_),
    .Y(_1836_)
);

FILL FILL_0__2125_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1252_),
    .B(_1159__bF$buf2),
    .C(_1254_),
    .Y(_1112_)
);

FILL FILL_0_BUFX2_insert169 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3922_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_630_),
    .CLK(i_clk_sys_ext_bF$buf19),
    .Q(\u_cpu.csr_imm )
);

NAND2X1 _3502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_479__bF$buf3),
    .Y(_457_)
);

NAND3X1 _4707_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1913_),
    .B(_2019_),
    .C(_2020_),
    .Y(_1857_)
);

FILL FILL_1__3664_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3099_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1662_),
    .B(_1663_),
    .Y(_553_)
);

OAI21X1 _4460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1860_),
    .B(_1861__bF$buf2),
    .C(_1862_),
    .Y(\u_cpu.decode.i_wb_rdt [17])
);

INVX1 _4040_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [14]),
    .Y(_952_)
);

FILL FILL_0__3139_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _3731_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.bufreg.i_imm_en )
);

NAND2X1 _3311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf0 ),
    .B(_2064_),
    .Y(_2063_)
);

INVX1 _4516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[22]),
    .Y(_1902_)
);

FILL FILL_1__3473_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3788_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3109_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_206_),
    .B(_205_),
    .Y(_283_)
);

OAI21X1 _2179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [19]),
    .Y(_1428_)
);

NAND2X1 _3960_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [9]),
    .B(_887__bF$buf2),
    .Y(_899_)
);

NOR2X1 _3540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .Y(\u_cpu.mem_if.o_wb_sel [0])
);

NAND3X1 _3120_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .B(rf_wdata0_next_to_if),
    .C(_1680_),
    .Y(_1679_)
);

FILL FILL_0__2219_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4745_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1829_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(ibus_pending_rdt[19])
);

MUX2X1 _4325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_cnt1 ),
    .B(\u_cpu.cnt2 ),
    .S(gnd),
    .Y(_1513_)
);

FILL FILL_0__2392_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2811_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_582_),
    .CLK(i_clk_sys_ext_bF$buf38),
    .Q(\u_rf_if.read_buf1 [14])
);

OAI21X1 _4554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf0),
    .B(_1926_),
    .C(_1927_),
    .Y(\u_cpu.decode.i_wb_rdt [28])
);

NOR2X1 _4134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1171_),
    .Y(_1175_)
);

FILL FILL_1__2609_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf2),
    .B(_262_),
    .Y(_263_)
);

MUX2X1 _2200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1297__bF$buf0),
    .S(_1413_),
    .Y(_1414_)
);

OAI21X1 _3825_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_656_),
    .B(\u_cpu.decode.i_wb_rdt [19]),
    .C(_659_),
    .Y(_662_)
);

INVX1 _3405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [10]),
    .Y(_321_)
);

FILL FILL_1__3147_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_1540_)
);

FILL FILL143250x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4403_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert152 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert155 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3634_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .Y(_152_)
);

NAND3X1 _3214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf3),
    .B(_1750_),
    .C(_2055_),
    .Y(_1747_)
);

FILL FILL_1__2171_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .B(_1525__bF$buf0),
    .Y(_1574_)
);

FILL FILL_0__2486_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[4]),
    .Y(_1952_)
);

AOI22X1 _4172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [29]),
    .C(_1193_),
    .D(_1205_),
    .Y(_1206_)
);

AOI21X1 _2905_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_475_),
    .B(_615_),
    .C(_612_),
    .Y(_490_)
);

FILL FILL_0__4632_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3863_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [15]),
    .B(rreg0[1]),
    .S(rf_rreq_bF$buf1),
    .Y(_692_)
);

NOR2X1 _3443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [31]),
    .B(_441__bF$buf1),
    .Y(_374_)
);

OAI21X1 _3023_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf4),
    .B(_1735_),
    .C(\u_rf_if.read_buf0 [9]),
    .Y(_1609_)
);

NAND3X1 _4648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [13]),
    .C(_1960__bF$buf2),
    .Y(_1984_)
);

INVX1 _4228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [18]),
    .Y(_1252_)
);

FILL FILL_1__3185_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2714_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(_121_),
    .Y(_122_)
);

DFFPOSX1 _3919_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_633_),
    .CLK(i_clk_sys_ext_bF$buf33),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

NOR2X1 _3672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf8),
    .B(_152_),
    .Y(_176_)
);

AOI21X1 _3252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1779_),
    .B(_1777_),
    .C(rst_bF$buf6),
    .Y(_591_)
);

INVX1 _4457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[17]),
    .Y(_1860_)
);

OAI21X1 _4037_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_949_),
    .C(_950_),
    .Y(_882_)
);

FILL FILL_0_BUFX2_insert40 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert42 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert44 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert46 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert48 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2943_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_746_),
    .B(_745_),
    .C(_1663_),
    .Y(_503_)
);

INVX1 _2523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [4]),
    .Y(_830_)
);

FILL FILL_0__4670_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3728_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_379_),
    .B(_380_),
    .C(_383_),
    .Y(\u_cpu.alu.i_sub )
);

NOR2X1 _3308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [3]),
    .B(\u_rf_if.rreg1_latched [4]),
    .Y(_2060_)
);

INVX8 _3481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .Y(_441_)
);

OAI21X1 _3061_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf4),
    .B(_1774_),
    .C(\u_rf_if.read_buf0 [21]),
    .Y(_1634_)
);

NAND3X1 _4686_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1919_),
    .B(_2005_),
    .C(_2006_),
    .Y(_1850_)
);

NOR2X1 _4266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_1276_),
    .Y(_1280_)
);

FILL FILL_0__3521_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3101_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2752_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [1]),
    .Y(_84_)
);

INVX8 _2332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .Y(_1315_)
);

INVX1 _3957_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [10]),
    .Y(_897_)
);

NOR2X1 _3537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_sub ),
    .B(_1794_),
    .Y(rf_wdata0_next)
);

INVX1 _3117_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [4]),
    .Y(_1677_)
);

NAND3X1 _3290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf0),
    .B(_5__bF$buf2),
    .C(_1810_),
    .Y(_1809_)
);

INVX1 _4495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[21]),
    .Y(_1888_)
);

DFFPOSX1 _4075_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_875_),
    .CLK(i_clk_sys_ext_bF$buf26),
    .Q(\u_cpu.bufreg.data [22])
);

FILL FILL_0__3750_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2808_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_528_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf0 [10])
);

FILL FILL_0__4115_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2981_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[0]),
    .B(_1693_),
    .C(_27__bF$buf1),
    .Y(_1580_)
);

DFFPOSX1 _2561_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_59_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.last_req_key [5])
);

BUFX2 _2141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio_oe[5])
);

OAI21X1 _3766_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_398_),
    .B(_399_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.decode.co_two_stage_op )
);

INVX1 _3346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .Y(_19_)
);

FILL FILL_0__2601_ (
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
    .A(_257_),
    .B(_265_),
    .Y(_266_)
);

FILL FILL_0__4344_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2359_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert50 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688_),
    .Y(_1688__bF$buf3)
);

BUFX2 BUFX2_insert51 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688_),
    .Y(_1688__bF$buf2)
);

BUFX2 BUFX2_insert52 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688_),
    .Y(_1688__bF$buf1)
);

BUFX2 BUFX2_insert53 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688_),
    .Y(_1688__bF$buf0)
);

BUFX2 BUFX2_insert54 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf4)
);

BUFX2 BUFX2_insert55 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf3)
);

FILL FILL_1__3300_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert56 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf2)
);

BUFX2 BUFX2_insert57 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf1)
);

BUFX2 BUFX2_insert58 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren),
    .Y(ren_bF$buf0)
);

BUFX2 BUFX2_insert59 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800_),
    .Y(_1800__bF$buf3)
);

DFFPOSX1 _2790_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_485_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.wdata0_r [0])
);

OR2X2 _2370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1045_),
    .B(_1083_),
    .Y(_1085_)
);

NAND2X1 _3995_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [27]),
    .B(_887__bF$buf2),
    .Y(_922_)
);

NAND3X1 _3575_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_rd_sel [0]),
    .B(_2081_),
    .C(_2076_),
    .Y(_2082_)
);

AND2X2 _3155_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1706_),
    .B(_27__bF$buf3),
    .Y(_565_)
);

FILL FILL142650x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2846_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_519_),
    .CLK(i_clk_sys_ext_bF$buf32),
    .Q(\u_rf_if.read_buf0 [4])
);

NAND2X1 _2426_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(_1028_),
    .Y(_1029_)
);

OAI21X1 _3384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [30]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_300_)
);

INVX1 _4589_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[4]),
    .Y(_1950_)
);

AOI21X1 _4169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1128_),
    .B(_1202_),
    .C(mem_dbus_ack_bF$buf0),
    .Y(_1203_)
);

FILL FILL_0__3844_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4209_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf4),
    .B(_121_),
    .C(_228_),
    .Y(_229_)
);

NOR2X1 _2235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf9),
    .B(_1390_),
    .Y(_768_)
);

FILL FILL_0__4382_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2397_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf2),
    .B(_1735_),
    .C(\u_rf_if.read_buf1 [8]),
    .Y(_1732_)
);

OAI21X1 _4398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf3),
    .B(_1559_),
    .C(_1560_),
    .Y(_1487_)
);

FILL FILL_0__3233_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4018_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3814_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2884_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_542_),
    .CLK(i_clk_sys_ext_bF$buf33),
    .Q(\u_rf_if.read_buf0 [22])
);

OAI22X1 _2464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_806_),
    .B(_989_),
    .C(_807_),
    .D(_988_),
    .Y(_990_)
);

INVX1 _3669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_173_)
);

AOI21X1 _3249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1776_),
    .B(_1775_),
    .C(rst_bF$buf6),
    .Y(_590_)
);

OAI21X1 _4610_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1928_),
    .B(_1959__bF$buf2),
    .C(_1963_),
    .Y(_1817_)
);

FILL FILL_0__3042_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4247_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2693_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf1),
    .B(_201_),
    .Y(_52_)
);

NAND3X1 _2273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1362_),
    .C(_1303_),
    .Y(_1363_)
);

NAND2X1 _3898_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[2]),
    .B(_680_),
    .Y(_716_)
);

NOR2X1 _3478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [15]),
    .B(_441__bF$buf0),
    .Y(_438_)
);

OAI21X1 _3058_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf4),
    .B(_1774_),
    .C(\u_rf_if.read_buf0 [20]),
    .Y(_1632_)
);

FILL FILL_0__2313_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2749_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [2]),
    .Y(_87_)
);

INVX1 _2329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1317_),
    .Y(_1318_)
);

FILL FILL_0__4476_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3852_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4637_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4217_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rdata[0]),
    .B(_1812_),
    .C(_2057_),
    .Y(_1807_)
);

FILL FILL142350x126150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3327_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4390_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3080_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2978_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1594_),
    .B(_1579_),
    .Y(_1578_)
);

NOR2X1 _2558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .B(\u_mem_serial.bit_count [3]),
    .Y(_795_)
);

BUFX2 _2138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio[0])
);

NAND3X1 _4704_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1907_),
    .B(_2017_),
    .C(_2018_),
    .Y(_1856_)
);

OAI21X1 _3096_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1661_),
    .B(_1660_),
    .C(_39_),
    .Y(_1659_)
);

FILL FILL_0__2351_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3976_ (
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

FILL FILL_1__2932_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2512_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2787_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_594_),
    .CLK(i_clk_sys_ext_bF$buf15),
    .Q(\u_rf_if.read_buf1 [26])
);

AOI22X1 _2367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_845_),
    .B(\u_mem_serial.active_we ),
    .C(\u_mem_serial.active_ibus_bF$buf3 ),
    .D(_840_),
    .Y(_1088_)
);

FILL FILL_0__4094_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2407_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[23]),
    .Y(_1900_)
);

FILL FILL_1__3890_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4255_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2580_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2160_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2321_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_190_),
    .B(_215__bF$buf1),
    .C(_202_),
    .Y(_285_)
);

OAI21X1 _2176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [18]),
    .Y(_1430_)
);

FILL FILL_0__2636_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4742_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1832_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(ibus_pending_rdt[16])
);

AOI21X1 _4322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1510_),
    .B(_1496_),
    .C(_1506_),
    .Y(_1649_)
);

FILL FILL_1__4484_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x150 (
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

FILL FILL_1__3755_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3335_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2445_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf3),
    .B(_1924_),
    .C(_1925_),
    .Y(\u_cpu.decode.i_wb_rdt [29])
);

AOI22X1 _4131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [6]),
    .C(_1167__bF$buf1),
    .D(_1172_),
    .Y(_1173_)
);

OAI21X1 _3822_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_657_),
    .B(_658_),
    .C(_656_),
    .Y(_659_)
);

MUX2X1 _3402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_319_),
    .B(_322_),
    .S(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_318_)
);

FILL FILL_0__4188_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [28]),
    .C(_1960__bF$buf0),
    .Y(_1962_)
);

FILL FILL_0__2674_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2254_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _4360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1538_),
    .B(_1526_),
    .C(_1537_),
    .D(_1530_),
    .Y(_1471_)
);

FILL FILL_0__3879_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3459_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert121 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert123 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert125 (
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

INVX1 _3631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.o_sh_done ),
    .Y(_149_)
);

OAI21X1 _3211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf1),
    .B(_1746_),
    .C(\u_rf_if.read_buf1 [13]),
    .Y(_1745_)
);

NAND2X1 _4416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(_1548_),
    .Y(_1572_)
);

FILL FILL_1__3373_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2902_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .B(_1700_),
    .C(_1702_),
    .Y(_610_)
);

FILL FILL_0__3268_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2644_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3009_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_854_)
);

FILL FILL143250x133350 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3860_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [16]),
    .B(rreg0[2]),
    .S(rf_rreq_bF$buf7),
    .Y(_690_)
);

OAI21X1 _3440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_369_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_359_)
);

INVX1 _3020_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [4]),
    .Y(_1607_)
);

FILL FILL_0__2959_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2539_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1960__bF$buf1),
    .Y(_1982_)
);

NOR2X1 _4225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_1246_),
    .Y(_1250_)
);

FILL FILL_0__3900_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2292_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert152 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert155 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2711_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_116_),
    .B(_162_),
    .Y(_165_)
);

NAND2X1 _3916_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(_683_),
    .Y(_728_)
);

FILL FILL_0__2348_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4454_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1483_),
    .CLK(i_clk_sys_ext_bF$buf40),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

OAI21X1 _4034_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf0),
    .B(_933_),
    .C(_948_),
    .Y(_881_)
);

FILL FILL_1__2509_ (
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

FILL FILL_0_BUFX2_insert14 (
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

AOI21X1 _2940_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_744_),
    .B(_743_),
    .C(_1663_),
    .Y(_502_)
);

NAND2X1 _2520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [4]),
    .B(_832_),
    .Y(_833_)
);

INVX2 _3725_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .Y(_381_)
);

AOI22X1 _3305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2061_),
    .B(_2058_),
    .C(_2062_),
    .D(_2066_),
    .Y(_2057_)
);

FILL FILL_1__2682_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3887_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3047_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4683_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2003_),
    .B(_1959__bF$buf3),
    .C(_2004_),
    .Y(_1849_)
);

AOI22X1 _4263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [11]),
    .C(_1167__bF$buf0),
    .D(_1277_),
    .Y(_1278_)
);

INVX1 _3954_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [12]),
    .Y(_895_)
);

DFFPOSX1 _3534_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_871_),
    .CLK(i_clk_sys_ext_bF$buf26),
    .Q(\u_cpu.bufreg.data [25])
);

NAND2X1 _3114_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1676_),
    .B(_1675_),
    .Y(_1674_)
);

DFFSR _4739_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1835_),
    .CLK(i_clk_sys_ext_bF$buf29),
    .Q(ibus_pending_rdt[13])
);

NAND3X1 _4319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_utype ),
    .B(\u_cpu.cnt12to31 ),
    .C(\u_cpu.bufreg.i_imm ),
    .Y(_1508_)
);

FILL FILL_0__2386_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[16]),
    .Y(_1886_)
);

DFFPOSX1 _4072_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_878_),
    .CLK(i_clk_sys_ext_bF$buf26),
    .Q(\u_cpu.bufreg.data [19])
);

DFFPOSX1 _2805_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_585_),
    .CLK(i_clk_sys_ext_bF$buf20),
    .Q(\u_rf_if.read_buf1 [17])
);

FILL FILL_0__4532_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2967_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2547_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3763_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.dbus_en )
);

NOR2X1 _3343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(\u_rf_if.issue_chunk [2]),
    .Y(_16_)
);

OAI21X1 _4548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf1),
    .B(_1922_),
    .C(_1923_),
    .Y(\u_cpu.decode.i_wb_rdt [30])
);

OAI21X1 _4128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1148_),
    .B(_1159__bF$buf1),
    .C(_1170_),
    .Y(_1093_)
);

NAND3X1 _2614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_214_),
    .B(_267_),
    .C(_268_),
    .Y(_269_)
);

INVX2 _3819_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf4),
    .Y(_656_)
);

BUFX2 BUFX2_insert20 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479_),
    .Y(_479__bF$buf2)
);

BUFX2 BUFX2_insert21 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479_),
    .Y(_479__bF$buf1)
);

BUFX2 BUFX2_insert22 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479_),
    .Y(_479__bF$buf0)
);

BUFX2 BUFX2_insert23 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1377_),
    .Y(_1377__bF$buf3)
);

BUFX2 BUFX2_insert24 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1377_),
    .Y(_1377__bF$buf2)
);

BUFX2 BUFX2_insert25 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1377_),
    .Y(_1377__bF$buf1)
);

BUFX2 BUFX2_insert26 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1377_),
    .Y(_1377__bF$buf0)
);

BUFX2 BUFX2_insert27 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441_),
    .Y(_441__bF$buf3)
);

BUFX2 BUFX2_insert28 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441_),
    .Y(_441__bF$buf2)
);

BUFX2 BUFX2_insert29 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441_),
    .Y(_441__bF$buf1)
);

INVX1 _3992_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [28]),
    .Y(_920_)
);

NAND2X1 _3572_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_sub ),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2079_)
);

OAI21X1 _3152_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.o_wen0 ),
    .B(_479__bF$buf2),
    .C(_27__bF$buf4),
    .Y(_1704_)
);

INVX1 _4357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_1537_)
);

FILL FILL_0__3612_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2843_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_483_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.rcnt [2])
);

INVX1 _2423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_1032_)
);

FILL FILL_0__4570_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4150_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .B(_137_),
    .C(_138_),
    .Y(_146_)
);

OAI21X1 _3208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf1),
    .B(_1746_),
    .C(\u_rf_if.read_buf1 [12]),
    .Y(_1743_)
);

NOR2X1 _3381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_298_),
    .B(_304_),
    .Y(_297_)
);

INVX2 _4586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf5),
    .Y(_1948_)
);

OAI21X1 _4166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1126_),
    .B(_1196_),
    .C(_1200_),
    .Y(_1101_)
);

FILL FILL_0__3841_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3421_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3001_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4626_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2652_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_207_),
    .B(_205_),
    .Y(_231_)
);

OAI21X1 _2232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_1376_),
    .C(_1308_),
    .Y(_1392_)
);

MUX2X1 _3857_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [17]),
    .B(rreg0[3]),
    .S(rf_rreq_bF$buf1),
    .Y(_688_)
);

NAND2X1 _3437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [17]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .Y(_352_)
);

OAI21X1 _3017_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[8]),
    .B(_1668_),
    .C(_27__bF$buf2),
    .Y(_1604_)
);

FILL FILL_1__2394_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert83 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert86 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1781_),
    .B(_2108__bF$buf3),
    .Y(_1730_)
);

OAI21X1 _4395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf4),
    .B(_1557_),
    .C(_1558_),
    .Y(_1486_)
);

NAND2X1 _2708_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf1),
    .B(raddr[1]),
    .Y(_189_)
);

FILL FILL142350x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2881_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_511_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(raddr[7])
);

NAND2X1 _2461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(_992_),
    .Y(_994_)
);

NAND2X1 _3666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_init ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .Y(_170_)
);

NOR3X1 _3246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1813_),
    .C(_1811_),
    .Y(_1772_)
);

FILL FILL_0__2921_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2501_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2937_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_742_),
    .B(_741_),
    .C(_1663_),
    .Y(_501_)
);

OAI21X1 _2517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.bufreg.data [14]),
    .C(\u_mem_serial.bit_count_0_bF$buf0 ),
    .Y(_836_)
);

FILL FILL_0__4664_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4244_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2259_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3620_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2690_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [3]),
    .B(_88_),
    .Y(_204_)
);

NAND2X1 _2270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_mem_miso),
    .B(_1297__bF$buf1),
    .Y(_1365_)
);

FILL FILL_1__4405_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3895_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[3]),
    .B(_680_),
    .Y(_714_)
);

NOR2X1 _3475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_436_),
    .Y(_435_)
);

OAI21X1 _3055_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf2),
    .B(_1765_),
    .C(\u_rf_if.read_buf0 [19]),
    .Y(_1630_)
);

FILL FILL_0__2730_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3515_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _2746_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_88_),
    .B(_89_),
    .Y(_90_)
);

OAI21X1 _2326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf5),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [11]),
    .Y(_1320_)
);

FILL FILL_0__4473_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1805_),
    .B(_1808_),
    .C(rst_bF$buf7),
    .Y(_596_)
);

FILL FILL_0_BUFX2_insert100 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert102 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert104 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert106 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert109 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf2),
    .B(_1883_),
    .C(_1884_),
    .Y(\u_cpu.decode.i_wb_rdt [2])
);

DFFPOSX1 _4069_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_881_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [31])
);

FILL FILL_0__3744_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4109_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2975_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1463_),
    .B(_1595_),
    .Y(_1462_)
);

INVX4 _2555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .Y(_798_)
);

BUFX2 _2135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio[3])
);

FILL FILL142650x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4701_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1875_),
    .B(_2015_),
    .C(_2016_),
    .Y(_1855_)
);

NAND3X1 _3093_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf2),
    .B(_1686__bF$buf2),
    .C(_1806_),
    .Y(_1657_)
);

DFFPOSX1 _4298_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1116_),
    .CLK(i_clk_sys_ext_bF$buf37),
    .Q(\u_cpu.bufreg2.dlo [23])
);

FILL FILL_0__4338_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2784_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_534_),
    .CLK(i_clk_sys_ext_bF$buf15),
    .Q(\u_rf_if.read_buf0 [15])
);

INVX1 _2364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.mem_if.o_wb_sel [1]),
    .Y(_1091_)
);

OAI21X1 _3989_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf0),
    .B(_917_),
    .C(_918_),
    .Y(_866_)
);

NAND3X1 _3569_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2068_),
    .B(_2070_),
    .C(_2075_),
    .Y(_2076_)
);

AOI21X1 _3149_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_454_),
    .B(_479__bF$buf2),
    .C(_1703_),
    .Y(_562_)
);

INVX1 _4510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[3]),
    .Y(_1898_)
);

FILL FILL_1__4672_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3362_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3523_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_98_),
    .B(_210_),
    .Y(_287_)
);

OAI21X1 _2173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [17]),
    .Y(_1432_)
);

DFFPOSX1 _3798_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_361_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.decode.opcode [2])
);

NOR2X1 _3378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [19]),
    .B(_441__bF$buf3),
    .Y(_51_)
);

FILL FILL_0__2213_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142050x133350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x126150 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [4]),
    .B(_114_),
    .Y(_234_)
);

AOI21X1 _2229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf5),
    .B(_799_),
    .C(_1393_),
    .Y(_771_)
);

FILL FILL_0__4376_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3752_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4117_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf1),
    .B(_1800__bF$buf1),
    .C(_1728_),
    .Y(_1727_)
);

DFFPOSX1 _2878_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_545_),
    .CLK(i_clk_sys_ext_bF$buf38),
    .Q(\u_rf_if.read_buf1 [31])
);

OR2X2 _2458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.bufreg.data [31]),
    .Y(_997_)
);

NAND2X1 _4604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf2),
    .B(_1874_),
    .Y(_1960_)
);

FILL FILL_1__3561_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2671_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3456_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3036_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2687_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_206_),
    .Y(_207_)
);

AOI21X1 _2267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1364_),
    .B(_1367_),
    .C(rst_bF$buf5),
    .Y(_759_)
);

FILL FILL142650x18150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2307_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _4413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1506_),
    .B(_1570_),
    .C(_1569_),
    .Y(_1492_)
);

FILL FILL_1__3790_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4155_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2480_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3685_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2221_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf1 ),
    .B(_957_),
    .C(_956_),
    .Y(_958_)
);

OAI21X1 _4642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1886_),
    .B(_1959__bF$buf3),
    .C(_1980_),
    .Y(_1832_)
);

AOI22X1 _4222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [20]),
    .B(mem_dbus_ack_bF$buf6),
    .C(_1167__bF$buf3),
    .D(_1247_),
    .Y(_1248_)
);

FILL FILL_1_CLKBUF1_insert121 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert125 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert129 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3494_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3074_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(_683_),
    .Y(_726_)
);

FILL FILL_0__4699_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3235_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4451_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1471_),
    .CLK(i_clk_sys_ext_bF$buf40),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

INVX1 _4031_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_946_)
);

DFFPOSX1 _3722_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_760_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.state [0])
);

NAND3X1 _3302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf3),
    .B(_2055_),
    .C(_2106_),
    .Y(_2054_)
);

FILL FILL_0__4088_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[15]),
    .Y(_1896_)
);

FILL FILL_0__2994_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4680_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1954_),
    .B(_1959__bF$buf1),
    .C(_2002_),
    .Y(_1848_)
);

OAI21X1 _4260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1273_),
    .B(_1159__bF$buf1),
    .C(_1275_),
    .Y(_1120_)
);

FILL FILL_0__3779_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4720_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3951_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_891_),
    .B(_892_),
    .Y(_893_)
);

DFFPOSX1 _3531_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_129_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

INVX1 _3111_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1672_),
    .Y(_1671_)
);

DFFSR _4736_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1838_),
    .CLK(i_clk_sys_ext_bF$buf39),
    .Q(ibus_pending_rdt[10])
);

OAI21X1 _4316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1500_),
    .B(_1503_),
    .C(_1504_),
    .Y(_1505_)
);

DFFPOSX1 _2802_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_504_),
    .CLK(i_clk_sys_ext_bF$buf41),
    .Q(raddr[0])
);

FILL FILL_0__3588_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3168_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_796_),
    .C(_845_),
    .D(\u_cpu.bufreg.i_shamt [1]),
    .Y(_1056_)
);

OAI21X1 _3760_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_392_),
    .Y(\u_cpu.decode.co_immdec_ctrl [1])
);

NAND3X1 _3340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_20_),
    .B(\u_rf_if.prefetch_active ),
    .C(_14_),
    .Y(_13_)
);

OAI21X1 _4545_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1920_),
    .B(rf_rreq_bF$buf7),
    .C(_1921_),
    .Y(rf_read_reg1_to_if[2])
);

INVX1 _4125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .Y(_1168_)
);

FILL FILL_1__3082_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2192_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_271_),
    .B(_269_),
    .Y(_272_)
);

OR2X2 _3816_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[0]),
    .B(\u_cpu.branch_op ),
    .Y(_653_)
);

FILL FILL_1__3978_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3558_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2248_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_1535_)
);

FILL FILL_1__2409_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2840_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_566_),
    .CLK(i_clk_sys_ext_bF$buf21),
    .Q(\u_rf_if.read_buf1 [1])
);

NAND2X1 _2420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1034_),
    .B(_840_),
    .Y(_1035_)
);

NOR2X1 _3625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .B(_143_),
    .Y(\u_cpu.o_dbus_cyc )
);

NAND2X1 _3205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf1),
    .B(_1803_),
    .Y(_1741_)
);

FILL FILL_1__2582_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4583_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [7]),
    .B(_1861__bF$buf3),
    .Y(_1947_)
);

NAND2X1 _4163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [30]),
    .Y(_1198_)
);

FILL FILL_0__4203_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3854_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [18]),
    .B(rreg0[4]),
    .S(rf_rreq_bF$buf4),
    .Y(_686_)
);

NAND2X1 _3434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [19]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_349_)
);

NAND3X1 _3014_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf3),
    .B(_1686__bF$buf1),
    .C(_1784_),
    .Y(_1602_)
);

FILL FILL_1_BUFX2_insert52 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert56 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [17]),
    .B(mem_ibus_ack_bF$buf3),
    .C(_1960__bF$buf3),
    .Y(_1979_)
);

OAI21X1 _4219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1243_),
    .B(_1159__bF$buf4),
    .C(_1245_),
    .Y(_1109_)
);

FILL FILL_1__3596_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2286_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf4),
    .B(_1555_),
    .C(_1556_),
    .Y(_1485_)
);

INVX1 _2705_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_wdata [0]),
    .Y(_192_)
);

FILL FILL_0__4012_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2447_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_156_),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_123_)
);

OAI21X1 _3243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf0),
    .B(_1774_),
    .C(\u_rf_if.read_buf1 [20]),
    .Y(_1770_)
);

DFFPOSX1 _4448_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1472_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

OAI21X1 _4028_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(_943_),
    .C(_944_),
    .Y(_879_)
);

NOR2X1 _2934_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_740_),
    .B(_739_),
    .Y(_500_)
);

OAI22X1 _2514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_837_),
    .B(_838_),
    .C(_835_),
    .D(_836_),
    .Y(_839_)
);

DFFPOSX1 _3719_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_786_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(_2119_)
);

FILL FILL_1__2256_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3892_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .B(_678_),
    .Y(_712_)
);

NOR2X1 _3472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [11]),
    .B(_441__bF$buf2),
    .Y(_432_)
);

OAI21X1 _3052_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf2),
    .B(_1765_),
    .C(\u_rf_if.read_buf0 [18]),
    .Y(_1628_)
);

NAND3X1 _4677_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [1]),
    .C(_1960__bF$buf3),
    .Y(_2001_)
);

INVX1 _4257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [12]),
    .Y(_1273_)
);

NAND2X1 _2743_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf0),
    .B(raddr[6]),
    .Y(_93_)
);

NAND3X1 _2323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1322_),
    .C(_1303_),
    .Y(_1323_)
);

AOI21X1 _3948_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_clr_lsb ),
    .B(\u_cpu.alu.i_cnt0 ),
    .C(_889_),
    .Y(_890_)
);

NOR2X1 _3528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_rreq ),
    .B(rf_wreq),
    .Y(_480_)
);

INVX2 _3108_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.prefetch_active ),
    .Y(_1669_)
);

NAND2X1 _3281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf0),
    .B(_1803_),
    .Y(_1802_)
);

INVX1 _4486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1882_),
    .Y(\u_cpu.decode.i_wb_rdt [6])
);

DFFPOSX1 _4066_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_855_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [11])
);

FILL FILL_0__3321_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4526_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4106_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3902_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2972_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_1461_),
    .Y(_1460_)
);

NAND3X1 _2552_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_798_),
    .B(_799_),
    .C(_800_),
    .Y(_801_)
);

BUFX2 _2132_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio[6])
);

AOI21X1 _3757_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.cond_branch ),
    .B(\u_cpu.decode.opcode [1]),
    .C(\u_cpu.bufreg.i_rs1_en ),
    .Y(\u_cpu.bufreg.i_clr_lsb )
);

NAND2X1 _3337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_20_),
    .B(_11_),
    .Y(_10_)
);

FILL FILL_1__2294_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4020_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3090_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf2),
    .B(_1686__bF$buf3),
    .C(_1798_),
    .Y(_1655_)
);

DFFPOSX1 _4295_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1119_),
    .CLK(i_clk_sys_ext_bF$buf44),
    .Q(\u_cpu.bufreg2.dlo [13])
);

FILL FILL_0__3970_ (
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

AOI21X1 _2608_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_273_),
    .B(_274_),
    .C(_272_),
    .Y(_275_)
);

DFFPOSX1 _2781_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_597_),
    .CLK(i_clk_sys_ext_bF$buf42),
    .Q(\u_rf_if.read_buf1 [29])
);

INVX1 _2361_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.mem_if.o_wb_sel [3]),
    .Y(_1288_)
);

OAI21X1 _3986_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_911_),
    .B(_915_),
    .C(_916_),
    .Y(_865_)
);

INVX1 _3566_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_sub ),
    .Y(_2073_)
);

AOI21X1 _3146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_454_),
    .B(_1705_),
    .C(_479__bF$buf1),
    .Y(_1700_)
);

FILL FILL_0__2401_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2837_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_521_),
    .CLK(i_clk_sys_ext_bF$buf35),
    .Q(\u_rf_if.issue_idx [5])
);

OAI21X1 _2417_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(_1036_),
    .C(_1037_),
    .Y(_1038_)
);

FILL FILL_0__4144_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2590_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_210_),
    .Y(_289_)
);

OAI21X1 _2170_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [16]),
    .Y(_1434_)
);

NAND2X1 _3795_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.decode.i_wb_rdt [2]),
    .Y(_413_)
);

NAND2X1 _3375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_49_),
    .Y(_48_)
);

FILL FILL_0__2630_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2210_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3835_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3415_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2646_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [9]),
    .Y(_237_)
);

OAI21X1 _2226_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf1),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [31]),
    .Y(_1395_)
);

FILL FILL_1__4534_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_1726_),
    .Y(_1725_)
);

OAI21X1 _4389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf4),
    .B(_1553_),
    .C(_1554_),
    .Y(_1484_)
);

FILL FILL_0__3224_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2875_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_496_),
    .CLK(i_clk_sys_ext_bF$buf39),
    .Q(\u_rf_if.write_wait [4])
);

NAND3X1 _2455_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_798_),
    .B(_997_),
    .C(_999_),
    .Y(_1000_)
);

FILL FILL_0__4182_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2915_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4601_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1953_),
    .B(_1956_),
    .C(_1957_),
    .Y(_1814_)
);

NAND3X1 _4198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [2]),
    .B(_1205_),
    .C(_1193_),
    .Y(_1229_)
);

FILL FILL_0__3873_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4658_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4238_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2684_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.shift_rx [0]),
    .Y(_209_)
);

INVX1 _2264_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1305_),
    .Y(_1370_)
);

NAND2X1 _3889_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .B(_678_),
    .Y(_710_)
);

OAI21X1 _3469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_430_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_429_)
);

OAI21X1 _3049_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf3),
    .B(_1759_),
    .C(\u_rf_if.read_buf0 [17]),
    .Y(_1626_)
);

FILL FILL_0__2724_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf3),
    .B(_1567_),
    .C(_1568_),
    .Y(_1491_)
);

FILL FILL_0__3509_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4572_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4152_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3262_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x39750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142350x133350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4467_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3423_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2493_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(_960_),
    .Y(_961_)
);

FILL FILL142950x126150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3698_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_131_),
    .CLK(i_clk_sys_ext_bF$buf23),
    .Q(\u_cpu.state.o_cnt [2])
);

NAND3X1 _3278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .B(_2052_),
    .C(_0_),
    .Y(_1799_)
);

FILL FILL_0__2953_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3318_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2969_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .B(_1459_),
    .C(_1458_),
    .Y(_511_)
);

OAI21X1 _2549_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(\u_mem_serial.bit_count [1]),
    .C(\u_mem_serial.bit_count [2]),
    .Y(_804_)
);

BUFX2 _2129_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2117_),
    .Y(o_mem_mosi)
);

NAND2X1 _3910_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .B(_683_),
    .Y(_724_)
);

NOR2X1 _3087_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf4),
    .B(_1654_),
    .Y(_549_)
);

FILL FILL_0__2342_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4190_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2778_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_507_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(raddr[3])
);

NAND2X1 _2358_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .B(_966_),
    .Y(_1291_)
);

INVX1 _4504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [4]),
    .Y(_1894_)
);

FILL FILL_1__3461_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3356_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2732_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2587_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [0]),
    .Y(_291_)
);

OAI21X1 _2167_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf2),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [15]),
    .Y(_1436_)
);

DFFSR _4733_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1841_),
    .CLK(i_clk_sys_ext_bF$buf19),
    .Q(ibus_pending_rdt[7])
);

AND2X2 _4313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_utype ),
    .B(\u_cpu.bufreg.i_imm ),
    .Y(_1502_)
);

FILL FILL_1__3270_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2380_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2396_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dhi [5]),
    .C(\u_cpu.bufreg2.dhi [6]),
    .D(_1048_),
    .Y(_1059_)
);

FILL FILL_0__2436_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1918_),
    .B(rf_rreq_bF$buf5),
    .C(_1919_),
    .Y(rf_read_reg1_to_if[3])
);

INVX1 _4122_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1165_)
);

FILL FILL_0__3394_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3813_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_cnt_done ),
    .B(_648_),
    .C(_651_),
    .Y(\u_cpu.bufreg.i_imm )
);

FILL FILL_0__4599_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2665_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_1533_)
);

OAI21X1 _3622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_140_),
    .B(_139_),
    .C(_142_),
    .Y(\u_cpu.bufreg.i_en )
);

NAND3X1 _3202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf2),
    .B(_1800__bF$buf0),
    .C(_1739_),
    .Y(_1738_)
);

OAI21X1 _4407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf1),
    .B(_1565_),
    .C(_1566_),
    .Y(_1490_)
);

FILL FILL_0__2894_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2474_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [8]),
    .B(_1861__bF$buf4),
    .Y(_1945_)
);

OAI21X1 _4160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1193_),
    .B(_1195_),
    .C(_1194_),
    .Y(_1100_)
);

FILL FILL_0__4620_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3851_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [11]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .S(rf_rreq_bF$buf3),
    .Y(_684_)
);

NOR2X1 _3431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [20]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .Y(_346_)
);

NAND3X1 _3011_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf1),
    .B(_1686__bF$buf1),
    .C(_1728_),
    .Y(_1600_)
);

FILL FILL_1_BUFX2_insert21 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert25 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert29 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1936_),
    .B(_1959__bF$buf3),
    .C(_1977_),
    .Y(_1829_)
);

INVX1 _4216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [21]),
    .Y(_1243_)
);

FILL FILL_1__4378_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2702_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_195_)
);

FILL FILL_0__3488_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3068_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3907_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(_683_),
    .Y(_722_)
);

INVX1 _2299_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1341_),
    .Y(_1342_)
);

INVX2 _3660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_168_),
    .Y(\u_cpu.alu.i_cnt0 )
);

AOI21X1 _3240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1768_),
    .B(_1770_),
    .C(rst_bF$buf6),
    .Y(_588_)
);

FILL FILL_0__2759_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4445_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1485_),
    .CLK(i_clk_sys_ext_bF$buf39),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

OAI21X1 _4025_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf4),
    .B(_940_),
    .C(_942_),
    .Y(_878_)
);

FILL FILL_0__3700_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2931_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_738_),
    .B(_737_),
    .Y(_499_)
);

NAND2X1 _2511_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_842_)
);

FILL FILL_0__3297_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3716_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_762_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_rx [30])
);

FILL FILL_0__2988_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [2]),
    .C(_1960__bF$buf4),
    .Y(_1999_)
);

NOR2X1 _4254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(_1267_),
    .Y(_1271_)
);

FILL FILL_0__4714_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2309_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2740_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_95_),
    .B(_86_),
    .C(_85_),
    .Y(_96_)
);

NAND2X1 _2320_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [9]),
    .B(_1297__bF$buf0),
    .Y(_1325_)
);

INVX8 _3945_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .Y(_887_)
);

INVX1 _3525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next_phase ),
    .Y(_477_)
);

NAND2X1 _3105_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1678_),
    .B(_1671_),
    .Y(_1666_)
);

FILL FILL_1__2482_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3687_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _4483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[13]),
    .B(\u_mem_serial.shift_rx [13]),
    .S(ibus_pending_ack_bF$buf3),
    .Y(_1881_)
);

DFFPOSX1 _4063_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_886_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [12])
);

AND2X2 _3754_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_388_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.ctrl.i_utype )
);

OAI21X1 _3334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_20_),
    .B(_11_),
    .C(_16_),
    .Y(_7_)
);

OAI21X1 _4539_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1916_),
    .B(rf_rreq_bF$buf7),
    .C(_1917_),
    .Y(rf_read_reg1_to_if[0])
);

AOI21X1 _4119_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .C(\u_cpu.bufreg.i_shift_op ),
    .Y(_1162_)
);

FILL FILL_1__3496_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4292_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1122_),
    .CLK(i_clk_sys_ext_bF$buf37),
    .Q(\u_cpu.bufreg2.dlo [10])
);

NAND2X1 _2605_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [2]),
    .B(_229_),
    .Y(_278_)
);

FILL FILL_0__4332_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3983_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_912_),
    .C(_913_),
    .Y(_914_)
);

INVX1 _3563_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2069_),
    .Y(_2070_)
);

NAND3X1 _3143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [1]),
    .C(\u_rf_if.o_waddr [2]),
    .Y(_1697_)
);

DFFSR _4768_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1852_),
    .CLK(i_clk_sys_ext_bF$buf22),
    .Q(rf_read_reg1[1])
);

OAI22X1 _4348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1531_),
    .B(_1526_),
    .C(_1529_),
    .D(_1530_),
    .Y(_1466_)
);

FILL FILL_0__3603_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2834_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_569_),
    .CLK(i_clk_sys_ext_bF$buf45),
    .Q(\u_rf_if.read_buf1 [4])
);

OAI21X1 _2414_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1031_),
    .B(_1040_),
    .C(_803_),
    .Y(_1041_)
);

FILL FILL_0__4561_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(_133_),
    .C(\u_cpu.decode.co_two_stage_op ),
    .Y(_140_)
);

OAI21X1 _3792_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf2),
    .B(_381_),
    .C(_411_),
    .Y(_363_)
);

NOR2X1 _3372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [23]),
    .B(_441__bF$buf3),
    .Y(_45_)
);

NAND2X1 _4577_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [9]),
    .B(_1861__bF$buf4),
    .Y(_1943_)
);

AOI21X1 _4157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1192_),
    .B(\u_cpu.alu.i_en ),
    .C(mem_dbus_ack_bF$buf0),
    .Y(_1193_)
);

FILL FILL_0__3412_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2643_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(\u_rf_serial.last_req_key [9]),
    .C(\u_rf_serial.last_req_key [10]),
    .D(_238_),
    .Y(_240_)
);

OAI21X1 _2223_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf3),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [26]),
    .Y(_1397_)
);

NAND2X1 _3848_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[4]),
    .B(_680_),
    .Y(_682_)
);

OAI21X1 _3428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [22]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_343_)
);

NAND3X1 _3008_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686__bF$buf1),
    .B(_1728_),
    .C(_2055_),
    .Y(_1598_)
);

AND2X2 _3181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1723_),
    .B(_27__bF$buf0),
    .Y(_574_)
);

OAI21X1 _4386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf1),
    .B(_1551_),
    .C(_1552_),
    .Y(_1483_)
);

FILL FILL_0__3641_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2872_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_548_),
    .CLK(i_clk_sys_ext_bF$buf38),
    .Q(\u_rf_if.read_buf0 [31])
);

MUX2X1 _2452_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .B(\u_cpu.bufreg.data [29]),
    .S(\u_mem_serial.active_ibus_bF$buf0 ),
    .Y(_1003_)
);

NAND2X1 _3657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [1]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_167_)
);

NAND2X1 _3237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf1),
    .B(_1766_),
    .Y(_1765_)
);

FILL FILL_1__2194_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4340_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1125_),
    .B(_1128_),
    .C(\u_cpu.bufreg2.dhi [3]),
    .Y(_1226_)
);

FILL FILL_0__3450_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3030_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2928_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_736_),
    .B(_735_),
    .Y(_498_)
);

NOR2X1 _2508_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .B(_799_),
    .Y(_845_)
);

FILL FILL_0__4655_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2681_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rf_miso),
    .B(_211_),
    .C(_202_),
    .Y(_212_)
);

INVX1 _2261_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1372_),
    .Y(_1373_)
);

NAND2X1 _3886_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .B(_678_),
    .Y(_708_)
);

OAI21X1 _3466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [0]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(_427_),
    .Y(_426_)
);

OAI21X1 _3046_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf3),
    .B(_1759_),
    .C(\u_rf_if.read_buf0 [16]),
    .Y(_1624_)
);

NAND2X1 _2737_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [8]),
    .B(_91_),
    .Y(_99_)
);

AOI21X1 _2317_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1324_),
    .B(_1327_),
    .C(rst_bF$buf10),
    .Y(_749_)
);

NAND3X1 _2490_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [2]),
    .B(_798_),
    .C(_799_),
    .Y(_964_)
);

FILL FILL_1__4205_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3695_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_132_),
    .CLK(i_clk_sys_ext_bF$buf23),
    .Q(\u_cpu.state.cnt_r [2])
);

AOI21X1 _3275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1801_),
    .B(_1797_),
    .C(rst_bF$buf4),
    .Y(_595_)
);

FILL FILL142650x93750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2950_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2530_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3735_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2966_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[6]),
    .B(_1668_),
    .C(_27__bF$buf1),
    .Y(_1455_)
);

NAND2X1 _2546_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .B(_799_),
    .Y(_807_)
);

BUFX2 _2126_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2120_),
    .Y(o_rf_mosi)
);

FILL FILL_0__4693_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3084_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1652_),
    .B(_1653_),
    .C(rst_bF$buf3),
    .Y(_548_)
);

DFFPOSX1 _4289_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1093_),
    .CLK(i_clk_sys_ext_bF$buf44),
    .Q(\u_cpu.bufreg2.dlo [7])
);

FILL FILL_0__3964_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3544_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3124_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2775_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_600_),
    .CLK(i_clk_sys_ext_bF$buf32),
    .Q(\u_rf_if.stream_cnt [1])
);

NAND3X1 _2355_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1089_),
    .B(_1090_),
    .C(_1293_),
    .Y(_1294_)
);

INVX1 _4501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[18]),
    .Y(_1892_)
);

NOR2X1 _4098_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .B(_1142_),
    .Y(_1143_)
);

FILL FILL_0__3773_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4138_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2584_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf2),
    .B(_215__bF$buf1),
    .C(_202_),
    .Y(_293_)
);

OAI21X1 _2164_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf1),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [14]),
    .Y(_1438_)
);

FILL FILL142650x133350 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3789_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.decode.i_wb_rdt [3]),
    .Y(_410_)
);

NAND2X1 _3369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_43_),
    .Y(_42_)
);

FILL FILL_0__2624_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2204_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4730_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_2032_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.mem_if.signbit )
);

NAND2X1 _4310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1497_),
    .B(_1498_),
    .Y(_1499_)
);

FILL FILL_0__3829_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3162_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4367_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3323_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2393_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1058_),
    .B(_1061_),
    .C(_803_),
    .Y(_1062_)
);

NAND2X1 _3598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_sub ),
    .B(_2102_),
    .Y(_2103_)
);

AOI21X1 _3178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1722_),
    .B(_1721_),
    .C(rst_bF$buf0),
    .Y(_573_)
);

FILL FILL_0__3218_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2869_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_550_),
    .CLK(i_clk_sys_ext_bF$buf15),
    .Q(\u_rf_if.read_buf0 [27])
);

AOI22X1 _2449_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_797_),
    .B(_802_),
    .C(_991_),
    .D(_1005_),
    .Y(_1006_)
);

INVX1 _3810_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_649_)
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

FILL FILL_0__3867_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4090_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3608_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2678_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf1),
    .B(_213_),
    .Y(_55_)
);

AOI21X1 _2258_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1086_),
    .B(_1297__bF$buf2),
    .C(_1374_),
    .Y(_761_)
);

FILL FILL_0__2718_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf1),
    .B(_1563_),
    .C(_1564_),
    .Y(_1489_)
);

FILL FILL_1__3781_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3676_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3256_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2632_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3837_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2487_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [9]),
    .Y(_967_)
);

NAND3X1 _4633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [20]),
    .C(_1960__bF$buf3),
    .Y(_1976_)
);

NOR2X1 _4213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1240_),
    .Y(_1241_)
);

FILL FILL_1__3170_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3065_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3904_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[0]),
    .B(_680_),
    .Y(_720_)
);

OAI21X1 _2296_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf1),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [5]),
    .Y(_1344_)
);

FILL FILL_0__2336_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4442_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1464_),
    .CLK(i_clk_sys_ext_bF$buf27),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

NAND2X1 _4022_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [21]),
    .Y(_941_)
);

FILL FILL_1__2917_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3713_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_779_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.req_pending )
);

FILL FILL_0__4499_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4079_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3875_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[3]),
    .Y(_1997_)
);

AOI22X1 _4251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [14]),
    .C(_1167__bF$buf1),
    .D(_1268_),
    .Y(_1269_)
);

DFFPOSX1 _3942_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_637_),
    .CLK(i_clk_sys_ext_bF$buf34),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

NOR2X1 _3522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(\u_rf_if.o_waddr [3]),
    .Y(_474_)
);

AOI21X1 _3102_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1664_),
    .B(_1667_),
    .C(rst_bF$buf1),
    .Y(_554_)
);

DFFSR _4727_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1845_),
    .CLK(i_clk_sys_ext_bF$buf29),
    .Q(ibus_pending_rdt[3])
);

NAND3X1 _4307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .B(\u_cpu.ctrl.i_pc_rel ),
    .C(\u_cpu.ctrl.pc ),
    .Y(_1496_)
);

FILL FILL_1__4469_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2374_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[12]),
    .Y(_1879_)
);

DFFPOSX1 _4060_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_857_),
    .CLK(i_clk_sys_ext_bF$buf14),
    .Q(\u_cpu.bufreg.data [9])
);

FILL FILL_0__3999_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3579_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3159_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4520_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4100_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2955_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2535_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3751_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_371_),
    .B(\u_cpu.decode.co_ebreak ),
    .C(_396_),
    .Y(_397_)
);

INVX1 _3331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [2]),
    .Y(_4_)
);

OAI21X1 _4536_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf0),
    .B(_1914_),
    .C(_1915_),
    .Y(\u_cpu.decode.i_wb_rdt [20])
);

NAND3X1 _4116_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1149_),
    .B(_1158_),
    .C(_1154_),
    .Y(_1159_)
);

FILL FILL_0__2183_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2602_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_280_),
    .B(_275_),
    .C(_266_),
    .Y(_281_)
);

DFFPOSX1 _3807_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_365_),
    .CLK(i_clk_sys_ext_bF$buf30),
    .Q(\u_cpu.decode.opcode [0])
);

FILL FILL_1__2344_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2199_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf9),
    .B(_1414_),
    .Y(_780_)
);

INVX1 _3980_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_911_)
);

OAI21X1 _3560_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2036_),
    .B(_2041_),
    .C(_2047_),
    .Y(_2032_)
);

OAI21X1 _3140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1696_),
    .B(_1695_),
    .C(_1700_),
    .Y(_1694_)
);

FILL FILL_0__2659_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4765_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1855_),
    .CLK(i_clk_sys_ext_bF$buf25),
    .Q(rf_read_reg0[2])
);

INVX4 _4345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1527_),
    .Y(_1530_)
);

FILL FILL_0__3600_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2831_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_571_),
    .CLK(i_clk_sys_ext_bF$buf24),
    .Q(\u_rf_if.wdata0_next [0])
);

INVX1 _2411_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [5]),
    .Y(_1044_)
);

FILL FILL_0__3197_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [2]),
    .Y(_138_)
);

FILL FILL_1__3358_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2888_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2468_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4574_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [10]),
    .B(_1861__bF$buf4),
    .Y(_1941_)
);

AOI21X1 _4154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1189_),
    .B(_1164_),
    .C(_1161_),
    .Y(_1190_)
);

FILL FILL_0__4614_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2640_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [8]),
    .Y(_243_)
);

OAI21X1 _2220_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf2),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [25]),
    .Y(_1399_)
);

OAI21X1 _3845_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_677_),
    .B(_674_),
    .C(_679_),
    .Y(_624_)
);

AOI21X1 _3425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_347_),
    .C(_341_),
    .Y(_340_)
);

NAND2X1 _3005_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [1]),
    .B(_1668_),
    .Y(_1597_)
);

FILL FILL_1__2382_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2697_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2277_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf2),
    .B(_1549_),
    .C(_1550_),
    .Y(_1482_)
);

FILL FILL_0__4003_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3654_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_766_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [27])
);

NAND3X1 _3234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf2),
    .B(_1800__bF$buf0),
    .C(_1763_),
    .Y(_1762_)
);

DFFPOSX1 _4439_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1476_),
    .CLK(i_clk_sys_ext_bF$buf40),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

NAND2X1 _4019_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [21]),
    .B(_887__bF$buf4),
    .Y(_939_)
);

FILL FILL_1__3396_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _4192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1133_),
    .B(_1208_),
    .Y(_1223_)
);

NOR2X1 _2925_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_734_),
    .B(_733_),
    .Y(_497_)
);

OAI21X1 _2505_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(_846_),
    .C(_847_),
    .Y(_848_)
);

FILL FILL_0__4232_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2667_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x68550 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3883_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .B(_678_),
    .Y(_706_)
);

OAI21X1 _3463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_425_),
    .B(_424_),
    .C(_426_),
    .Y(_423_)
);

OAI21X1 _3043_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf1),
    .B(_1752_),
    .C(\u_rf_if.read_buf0 [15]),
    .Y(_1622_)
);

INVX1 _4668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[4]),
    .Y(_1995_)
);

OAI21X1 _4248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1265_),
    .B(_1201_),
    .C(_1266_),
    .Y(_1117_)
);

FILL FILL_0__4708_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2734_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[7]),
    .Y(_102_)
);

INVX1 _2314_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1329_),
    .Y(_1330_)
);

FILL FILL_0__4461_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4041_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3939_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_640_),
    .CLK(i_clk_sys_ext_bF$buf18),
    .Q(rreg1[3])
);

AOI21X1 _3519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_477_),
    .B(_473_),
    .C(_472_),
    .Y(_471_)
);

FILL FILL_1__4622_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3692_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_127_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.state.ibus_cyc )
);

AOI21X1 _3272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1796_),
    .B(_1795_),
    .C(rst_bF$buf4),
    .Y(_594_)
);

NAND2X1 _4477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf3),
    .B(_1876_),
    .Y(_1877_)
);

DFFPOSX1 _4057_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_860_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.bufreg.data [6])
);

FILL FILL_0__3312_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4517_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2963_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [1]),
    .B(\u_rf_if.issue_sel_bF$buf2 ),
    .C(_1454_),
    .Y(_1453_)
);

INVX2 _2543_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .Y(_810_)
);

FILL FILL_0__4270_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3748_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .C(_391_),
    .Y(_394_)
);

INVX1 _3328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2_),
    .Y(_1_)
);

AOI21X1 _3081_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1650_),
    .B(_1648_),
    .C(rst_bF$buf3),
    .Y(_547_)
);

DFFPOSX1 _4286_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1096_),
    .CLK(i_clk_sys_ext_bF$buf43),
    .Q(\u_cpu.bufreg2.dlo [4])
);

FILL FILL_0__4326_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2772_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_508_),
    .CLK(i_clk_sys_ext_bF$buf35),
    .Q(raddr[4])
);

NOR2X1 _2352_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast_bF$buf4),
    .B(_794_),
    .Y(_2118_)
);

INVX1 _3977_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [2]),
    .Y(_909_)
);

NAND3X1 _3557_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2042_),
    .B(_2045_),
    .C(_2044_),
    .Y(_2046_)
);

INVX1 _3137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [2]),
    .Y(_1692_)
);

FILL FILL_1__4660_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4240_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _4095_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1140_),
    .B(_1129_),
    .Y(\u_cpu.bufreg2.o_sh_done )
);

FILL FILL_0__3350_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2828_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_573_),
    .CLK(i_clk_sys_ext_bF$buf32),
    .Q(\u_rf_if.read_buf1 [6])
);

OAI21X1 _2408_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1006_),
    .B(_1042_),
    .C(_1046_),
    .Y(_1047_)
);

FILL FILL_0__4555_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3511_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2581_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_243_),
    .B(_215__bF$buf3),
    .C(_294_),
    .Y(_71_)
);

OAI21X1 _2161_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf1),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [13]),
    .Y(_1440_)
);

OAI21X1 _3786_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(_380_),
    .C(_408_),
    .Y(_360_)
);

AOI21X1 _3366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_40_),
    .B(_310_),
    .C(_445_),
    .Y(rdata0[0])
);

FILL FILL_0__2621_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3406_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2637_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [8]),
    .B(_100_),
    .Y(_246_)
);

NAND3X1 _2217_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1296_),
    .C(_1307_),
    .Y(_1401_)
);

AOI22X1 _2390_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [1]),
    .C(\u_cpu.bufreg2.dlo [2]),
    .D(_1048_),
    .Y(_1065_)
);

AOI22X1 _3595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2091_),
    .B(_2100_),
    .C(_2097_),
    .D(_2095_),
    .Y(_2101_)
);

NAND3X1 _3175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2048_),
    .B(_2051_),
    .C(_2108__bF$buf1),
    .Y(_1720_)
);

FILL FILL_0__2430_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3635_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2866_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_552_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.rcnt [1])
);

OAI21X1 _2446_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [18]),
    .C(\u_mem_serial.bit_count_0_bF$buf1 ),
    .Y(_1009_)
);

FILL FILL_0__4593_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4173_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2906_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1149_),
    .B(\u_mem_serial.shift_rx [27]),
    .C(_1220_),
    .Y(_1221_)
);

FILL FILL_0__3864_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3444_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3024_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4649_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3605_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2675_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_205_),
    .B(_206_),
    .Y(_215_)
);

NOR2X1 _2255_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1376_),
    .B(_1302_),
    .Y(_1377_)
);

FILL FILL_0__2715_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf3),
    .B(_1561_),
    .C(_1562_),
    .Y(_1488_)
);

FILL FILL142950x133350 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2484_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_969_),
    .B(_845_),
    .Y(_970_)
);

AOI21X1 _3689_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_160_),
    .B(_184_),
    .C(_186_),
    .Y(_131_)
);

NOR2X1 _3269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_4_),
    .B(_1792_),
    .Y(_1791_)
);

FILL FILL_0__2944_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2524_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1902_),
    .B(_1959__bF$buf2),
    .C(_1974_),
    .Y(_1826_)
);

OAI21X1 _4210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1201_),
    .B(_1238_),
    .C(_1235_),
    .Y(_1107_)
);

FILL FILL_0__3482_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3901_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[1]),
    .B(_680_),
    .Y(_718_)
);

FILL FILL_0__4687_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4267_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2293_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1346_),
    .C(_1303_),
    .Y(_1347_)
);

FILL FILL_1__4008_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_456_),
    .B(_479__bF$buf3),
    .C(_455_),
    .Y(\u_rf_if.o_waddr [4])
);

AOI21X1 _3078_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1646_),
    .B(_1647_),
    .C(rst_bF$buf3),
    .Y(_546_)
);

FILL FILL_0__2753_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3118_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3291_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2769_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_539_),
    .CLK(i_clk_sys_ext_bF$buf42),
    .Q(\u_rf_if.read_buf0 [20])
);

NOR2X1 _2349_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [4]),
    .B(_852_),
    .Y(_1298_)
);

INVX1 _3710_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_373_)
);

FILL FILL_0__4496_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3032_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2982_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2142_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3767_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2998_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf3),
    .B(_1686__bF$buf4),
    .C(_1772_),
    .Y(_1591_)
);

DFFPOSX1 _2578_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_57_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.last_req_key [7])
);

DFFPOSX1 _2158_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_773_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [31])
);

DFFSR _4724_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1846_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(ibus_pending_rdt[2])
);

DFFPOSX1 _4304_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1110_),
    .CLK(i_clk_sys_ext_bF$buf37),
    .Q(\u_cpu.bufreg2.dlo [20])
);

FILL FILL_0__2371_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2532_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3737_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2387_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [7]),
    .B(_796_),
    .C(_845_),
    .D(\u_cpu.bufreg2.dlo [5]),
    .Y(_1068_)
);

OAI21X1 _4533_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1912_),
    .B(rf_rreq_bF$buf7),
    .C(_1913_),
    .Y(rf_read_reg0_to_if[0])
);

INVX1 _4113_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_en ),
    .Y(_1156_)
);

FILL FILL_1__3070_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4695_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3385_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3804_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_784_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_rx [21])
);

FILL FILL_1__3966_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3546_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2196_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1415_),
    .B(_1416_),
    .C(rst_bF$buf10),
    .Y(_781_)
);

FILL FILL_0__2236_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4762_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1858_),
    .CLK(i_clk_sys_ext_bF$buf29),
    .Q(ibus_pending_rdt[30])
);

NAND2X1 _4342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(_1527_),
    .Y(_1528_)
);

NAND3X1 _3613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .C(_135_),
    .Y(_136_)
);

FILL FILL_1__2990_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4399_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [11]),
    .B(_1861__bF$buf1),
    .Y(_1939_)
);

AOI22X1 _4151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [1]),
    .C(_1167__bF$buf2),
    .D(_1187_),
    .Y(_1188_)
);

FILL FILL_0__4611_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2206_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3842_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_656_),
    .B(\u_cpu.decode.i_wb_rdt [30]),
    .C(_676_),
    .Y(_677_)
);

INVX1 _3422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_338_)
);

NOR2X1 _3002_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_17_),
    .B(_1595_),
    .Y(_1594_)
);

INVX1 _4627_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .Y(_1973_)
);

OAI21X1 _4207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1125_),
    .B(_1128_),
    .C(\u_cpu.bufreg.i_shamt [1]),
    .Y(_1236_)
);

FILL FILL_1__3584_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142950x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2694_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _4380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf7),
    .Y(_1548_)
);

FILL FILL_0__3479_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3059_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4420_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(_164_),
    .Y(\u_cpu.bufreg2.i_cnt7 )
);

NAND3X1 _3231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf2),
    .B(_2055_),
    .C(_1763_),
    .Y(_1760_)
);

DFFPOSX1 _4436_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1651_),
    .CLK(i_clk_sys_ext_bF$buf23),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

INVX1 _4016_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [22]),
    .Y(_937_)
);

FILL FILL_1__4178_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2922_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreq),
    .B(_1666_),
    .C(_27__bF$buf4),
    .Y(_730_)
);

AOI21X1 _2502_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_809_),
    .B(_839_),
    .C(_850_),
    .Y(_851_)
);

NAND2X1 _3707_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_370_)
);

FILL FILL_1__2244_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3880_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .B(_678_),
    .Y(_704_)
);

NOR2X1 _3460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [4]),
    .B(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_420_)
);

OAI21X1 _3040_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf1),
    .B(_1752_),
    .C(\u_rf_if.read_buf0 [14]),
    .Y(_1620_)
);

INVX1 _4665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[5]),
    .Y(_1993_)
);

OAI21X1 _4245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1240_),
    .B(_1159__bF$buf2),
    .C(_1264_),
    .Y(_1116_)
);

FILL FILL_0__3500_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2731_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_84_),
    .Y(_105_)
);

OAI21X1 _2311_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf5),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [8]),
    .Y(_1332_)
);

FILL FILL_0__3097_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3936_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_643_),
    .CLK(i_clk_sys_ext_bF$buf33),
    .Q(rreg1[0])
);

OAI21X1 _3516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_r [0]),
    .B(_471_),
    .C(_469_),
    .Y(_468_)
);

FILL FILL_1__3258_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [17]),
    .B(_1871_),
    .C(_1874_),
    .Y(_1875_)
);

DFFPOSX1 _4054_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_863_),
    .CLK(i_clk_sys_ext_bF$buf27),
    .Q(\u_cpu.bufreg.data [3])
);

NAND2X1 _2960_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .B(_1581_),
    .Y(_1451_)
);

NOR2X1 _2540_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.bufreg.data [7]),
    .Y(_813_)
);

OAI21X1 _3745_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_392_),
    .Y(_393_)
);

NAND2X1 _3325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2123_),
    .B(_18_),
    .Y(_2116_)
);

FILL FILL_1__2282_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2177_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4283_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1099_),
    .CLK(i_clk_sys_ext_bF$buf31),
    .Q(\u_cpu.bufreg2.dlo [1])
);

OAI21X1 _3974_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_906_),
    .C(_907_),
    .Y(_862_)
);

INVX1 _3554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_2043_)
);

INVX1 _3134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [1]),
    .Y(_1690_)
);

DFFSR _4759_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1815_),
    .CLK(i_clk_sys_ext_bF$buf29),
    .Q(ibus_pending_rdt[29])
);

NOR2X1 _4339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf7),
    .B(\u_cpu.ctrl.i_pc_en ),
    .Y(_1525_)
);

AND2X2 _4092_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1133_),
    .B(_1134_),
    .Y(_1138_)
);

DFFPOSX1 _2825_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_575_),
    .CLK(i_clk_sys_ext_bF$buf32),
    .Q(\u_rf_if.read_buf1 [7])
);

AOI22X1 _2405_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .B(_796_),
    .C(_845_),
    .D(\u_cpu.bufreg2.dlo [17]),
    .Y(_1050_)
);

FILL FILL_0__4132_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3783_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_792_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [14])
);

NAND2X1 _3363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_39_),
    .B(_38_),
    .Y(rf_ready)
);

NAND2X1 _4568_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [19]),
    .B(_1861__bF$buf2),
    .Y(_1937_)
);

OAI21X1 _4148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1183_),
    .B(_1159__bF$buf0),
    .C(_1185_),
    .Y(_1098_)
);

FILL FILL_0__3823_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2634_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_246_),
    .B(_245_),
    .C(_247_),
    .D(_248_),
    .Y(_249_)
);

OAI21X1 _2214_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [24]),
    .Y(_1403_)
);

FILL FILL_0__4361_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3839_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_672_),
    .B(_673_),
    .C(rf_rreq_bF$buf0),
    .Y(_674_)
);

INVX1 _3419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [2]),
    .Y(_335_)
);

FILL FILL142950x7350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4522_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4102_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_cmp_eq ),
    .Y(_2098_)
);

AOI21X1 _3172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1718_),
    .B(_1719_),
    .C(rst_bF$buf2),
    .Y(_570_)
);

OAI22X1 _4377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1546_),
    .B(_1526_),
    .C(_1544_),
    .D(_1530_),
    .Y(_1480_)
);

FILL FILL_0__3212_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4417_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2863_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_554_),
    .CLK(i_clk_sys_ext_bF$buf41),
    .Q(\u_rf_if.prefetch_active )
);

OAI22X1 _2443_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1010_),
    .B(_1011_),
    .C(_1008_),
    .D(_1009_),
    .Y(_1012_)
);

DFFPOSX1 _3648_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_767_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.bit_count [5])
);

OAI21X1 _3228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf1),
    .B(_1759_),
    .C(\u_rf_if.read_buf1 [17]),
    .Y(_1758_)
);

AOI21X1 _4186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1133_),
    .B(_1208_),
    .C(_1217_),
    .Y(_1218_)
);

FILL FILL_0__3021_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2919_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [3]),
    .B(_1674_),
    .C(_729_),
    .Y(_620_)
);

FILL FILL_0__4226_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2672_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [6]),
    .Y(_217_)
);

OAI21X1 _2252_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1370_),
    .B(_1371_),
    .C(\u_mem_serial.active_ibus_bF$buf3 ),
    .Y(_1379_)
);

NAND2X1 _3877_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_660__bF$buf2),
    .Y(_702_)
);

OAI21X1 _3457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [7]),
    .B(_440_),
    .C(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_417_)
);

OAI21X1 _3037_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf3),
    .B(_1746_),
    .C(\u_rf_if.read_buf0 [13]),
    .Y(_1618_)
);

FILL FILL_0__3917_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4140_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3670_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2728_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_107_),
    .B(_96_),
    .C(_83_),
    .Y(_108_)
);

NAND3X1 _2308_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1334_),
    .C(_1303_),
    .Y(_1335_)
);

FILL FILL_0__4035_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2481_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(_971_),
    .C(_972_),
    .Y(_973_)
);

AOI21X1 _3686_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_164_),
    .B(_185_),
    .C(rst_bF$buf8),
    .Y(_129_)
);

NOR2X1 _3266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_3_),
    .B(_2114_),
    .Y(_1788_)
);

FILL FILL_0__3306_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2957_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .B(_1450_),
    .C(_1449_),
    .Y(_508_)
);

MUX2X1 _2537_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .B(\u_cpu.bufreg.data [5]),
    .S(\u_mem_serial.active_ibus_bF$buf0 ),
    .Y(_816_)
);

FILL FILL_1__2279_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3220_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2290_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [3]),
    .B(_1297__bF$buf3),
    .Y(_1349_)
);

FILL FILL_1__4005_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_454_),
    .B(_479__bF$buf1),
    .C(_453_),
    .Y(\u_rf_if.o_wen )
);

AOI21X1 _3075_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1644_),
    .B(_1645_),
    .C(rst_bF$buf3),
    .Y(_545_)
);

FILL FILL_0__2330_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3955_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2766_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_487_),
    .CLK(i_clk_sys_ext_bF$buf24),
    .Q(\u_rf_if.wdata1_phase [0])
);

NOR2X1 _2346_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1300_),
    .B(_1299_),
    .Y(_1301_)
);

NAND3X1 _4089_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1132_),
    .B(_1133_),
    .C(_1134_),
    .Y(_1135_)
);

FILL FILL_0__3344_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2720_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4549_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4129_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2995_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf2),
    .B(_1686__bF$buf1),
    .C(_1769_),
    .Y(_1589_)
);

DFFPOSX1 _2575_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_52_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_serial.tx_state [4])
);

DFFPOSX1 _2155_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_750_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [9])
);

FILL FILL_0__2615_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4721_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(vdd),
    .S(i_rst_n_bF$buf5),
    .D(_1849_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(ibus_pending_rdt[0])
);

DFFPOSX1 _4301_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1113_),
    .CLK(i_clk_sys_ext_bF$buf31),
    .Q(\u_cpu.bufreg2.dlo [17])
);

FILL FILL_1__4043_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3993_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3573_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3153_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2384_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [9]),
    .C(\u_cpu.bufreg2.dlo [10]),
    .D(_1048_),
    .Y(_1071_)
);

NAND2X1 _3589_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2094_),
    .B(_2092_),
    .Y(_2095_)
);

AOI21X1 _3169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1716_),
    .B(_1717_),
    .C(rst_bF$buf0),
    .Y(_569_)
);

FILL FILL_0__2424_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_1910_),
    .C(_1911_),
    .Y(\u_cpu.i_ibus_rdt [0])
);

OAI21X1 _4110_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1151_),
    .B(_1152_),
    .C(_1150_),
    .Y(_1153_)
);

DFFPOSX1 _3801_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_358_),
    .CLK(i_clk_sys_ext_bF$buf30),
    .Q(\u_cpu.decode.co_ebreak )
);

FILL FILL142650x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4167_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2193_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1417_),
    .B(_1418_),
    .C(rst_bF$buf10),
    .Y(_782_)
);

FILL FILL_1__4328_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [14]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_314_)
);

FILL FILL_0__2653_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2233_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3858_ (
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

INVX1 _2669_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [5]),
    .Y(_219_)
);

AOI21X1 _2249_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1381_),
    .B(_1379_),
    .C(rst_bF$buf9),
    .Y(_763_)
);

NAND2X1 _3610_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_two_stage_op ),
    .B(_133_),
    .Y(_134_)
);

FILL FILL_1_BUFX2_insert232 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert236 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2709_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4557_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3247_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3408_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2898_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf1),
    .B(_470_),
    .Y(_485_)
);

OAI21X1 _2478_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_963_),
    .B(_975_),
    .C(_853_),
    .Y(_976_)
);

FILL FILL_0__2938_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2518_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1949_),
    .B(_1872__bF$buf3),
    .Y(_1823_)
);

NAND3X1 _4204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(_1205_),
    .C(_1193_),
    .Y(_1234_)
);

FILL FILL_1__3581_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2271_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3896_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2432_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2287_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1348_),
    .B(_1351_),
    .C(rst_bF$buf5),
    .Y(_755_)
);

FILL FILL_0__2747_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4433_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1479_),
    .CLK(i_clk_sys_ext_bF$buf16),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

AOI22X1 _4013_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_911_),
    .B(_915_),
    .C(_933_),
    .D(_935_),
    .Y(_873_)
);

FILL FILL_1__4595_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4175_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3285_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3704_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_signed ),
    .B(_366_),
    .C(_367_),
    .Y(_368_)
);

FILL FILL_1__3446_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2976_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[6]),
    .Y(_1991_)
);

FILL FILL_0__2136_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1260_),
    .B(_1159__bF$buf1),
    .C(_1262_),
    .Y(_1115_)
);

DFFPOSX1 _3933_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_646_),
    .CLK(i_clk_sys_ext_bF$buf28),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1])
);

NAND2X1 _3513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata1_r [0]),
    .B(_466_),
    .Y(_465_)
);

FILL FILL_1__2890_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2470_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _4718_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2028_),
    .B(_2029_),
    .Y(_2030_)
);

FILL FILL_0__2365_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX8 _4471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1872__bF$buf0),
    .Y(rf_rreq)
);

DFFPOSX1 _4051_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_866_),
    .CLK(i_clk_sys_ext_bF$buf27),
    .Q(\u_cpu.bufreg.data [29])
);

FILL FILL_0__4511_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3742_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_390_),
    .Y(\u_cpu.csr_imm_en )
);

NAND2X1 _3322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf0),
    .B(_2113_),
    .Y(_2112_)
);

OAI21X1 _4527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf1),
    .B(_1908_),
    .C(_1909_),
    .Y(\u_cpu.decode.i_wb_rdt [5])
);

OR2X2 _4107_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1150_)
);

FILL FILL_1__3484_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2594_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4280_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1102_),
    .CLK(i_clk_sys_ext_bF$buf17),
    .Q(\u_cpu.bufreg2.dhi [5])
);

FILL FILL143250x100950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3379_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2755_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3971_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf1),
    .B(_903_),
    .C(_905_),
    .Y(_861_)
);

NAND2X1 _3551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_2039_),
    .Y(_2040_)
);

NAND3X1 _3131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.prefetch_active ),
    .C(_14_),
    .Y(_1688_)
);

DFFSR _4756_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1818_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(ibus_pending_rdt[26])
);

NAND2X1 _4336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jal_or_jalr ),
    .B(_1522_),
    .Y(_1523_)
);

FILL FILL_1__3293_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2822_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_601_),
    .CLK(i_clk_sys_ext_bF$buf32),
    .Q(\u_rf_if.stream_cnt [2])
);

AOI22X1 _2402_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [21]),
    .C(\u_cpu.bufreg2.dlo [22]),
    .D(_1048_),
    .Y(_1053_)
);

NAND2X1 _3607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_rd_alu_en ),
    .B(\u_cpu.alu.o_rd ),
    .Y(_31_)
);

FILL FILL_1__2144_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4710_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3780_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.decode.co_mem_signed ),
    .C(_405_),
    .Y(_357_)
);

NOR2X1 _3360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441__bF$buf3),
    .B(_440_),
    .Y(_35_)
);

FILL FILL_0__2459_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4565_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [24]),
    .B(_1861__bF$buf1),
    .Y(_1935_)
);

INVX1 _4145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [2]),
    .Y(_1183_)
);

FILL FILL_0__3400_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4605_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2631_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf0),
    .B(raddr[5]),
    .Y(_252_)
);

NAND3X1 _2211_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.o_dbus_cyc ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .C(_1308_),
    .Y(_1405_)
);

NAND3X1 _3836_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .B(\u_cpu.decode.co_immdec_ctrl [1]),
    .C(_670_),
    .Y(_671_)
);

MUX2X1 _3416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_336_),
    .B(_333_),
    .S(_440_),
    .Y(_332_)
);

FILL FILL_0__2688_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .B(_1527_),
    .Y(_1545_)
);

DFFPOSX1 _2860_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_482_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.rcnt [0])
);

OAI21X1 _2440_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(_1013_),
    .C(_1014_),
    .Y(_1015_)
);

INVX2 _3645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_160_)
);

AOI21X1 _3225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1756_),
    .B(_1758_),
    .C(rst_bF$buf7),
    .Y(_585_)
);

FILL FILL_0__2900_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2497_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1213_),
    .B(_1215_),
    .C(_1207_),
    .Y(_1103_)
);

AND2X2 _2916_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1674_),
    .B(_619_),
    .Y(_618_)
);

FILL FILL_0__4643_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3874_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660__bF$buf0),
    .B(_698_),
    .C(_699_),
    .Y(_633_)
);

OAI22X1 _3454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_435_),
    .B(_429_),
    .C(_415_),
    .D(_422_),
    .Y(_414_)
);

OAI21X1 _3034_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0_to_if[4]),
    .B(_1693_),
    .C(_27__bF$buf3),
    .Y(_1616_)
);

OAI21X1 _4659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1944_),
    .B(_1959__bF$buf4),
    .C(_1989_),
    .Y(_1840_)
);

INVX1 _4239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .Y(_1260_)
);

OAI21X1 _2725_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(raddr[5]),
    .C(_110_),
    .Y(_111_)
);

NAND2X1 _2305_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [6]),
    .B(_1297__bF$buf1),
    .Y(_1337_)
);

AOI21X1 _3683_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_183_),
    .B(_182_),
    .C(rst_bF$buf8),
    .Y(_128_)
);

AOI21X1 _3263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1786_),
    .B(_1789_),
    .C(rst_bF$buf6),
    .Y(_593_)
);

INVX1 _4468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .Y(_1870_)
);

DFFPOSX1 _4048_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_869_),
    .CLK(i_clk_sys_ext_bF$buf14),
    .Q(\u_cpu.bufreg.data [27])
);

AOI21X1 _2954_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1448_),
    .B(_1667_),
    .C(_1447_),
    .Y(_507_)
);

AOI21X1 _2534_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_809_),
    .B(_815_),
    .C(_818_),
    .Y(_819_)
);

FILL FILL_0__4681_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4261_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3739_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_790_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [16])
);

OR2X2 _3319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .B(_12_),
    .Y(_2109_)
);

OAI21X1 _3492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next [0]),
    .B(_471_),
    .C(_451_),
    .Y(_450_)
);

AOI21X1 _3072_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1642_),
    .B(_1643_),
    .C(rst_bF$buf0),
    .Y(_544_)
);

NAND3X1 _4697_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[3]),
    .B(rf_rreq_bF$buf7),
    .C(_1872__bF$buf1),
    .Y(_2014_)
);

DFFPOSX1 _4277_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1105_),
    .CLK(i_clk_sys_ext_bF$buf17),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

FILL FILL_0__4317_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2763_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[7]),
    .B(raddr[6]),
    .Y(_75_)
);

INVX8 _2343_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1303_),
    .Y(_1304_)
);

FILL FILL_0__4490_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3968_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [7]),
    .Y(_904_)
);

INVX1 _3548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_2037_)
);

NAND3X1 _3128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686__bF$buf3),
    .B(_2055_),
    .C(_2106_),
    .Y(_1685_)
);

FILL FILL142350x10950 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4086_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_1132_)
);

FILL FILL_0__3761_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3341_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2819_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_578_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.read_buf1 [10])
);

NAND3X1 _2992_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf1),
    .B(_1686__bF$buf1),
    .C(_1713_),
    .Y(_1587_)
);

DFFPOSX1 _2572_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_54_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.shift_rx [0])
);

DFFPOSX1 _2152_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_783_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(mem_ibus_ack)
);

DFFPOSX1 _3777_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_775_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_rx [25])
);

INVX8 _3357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf7),
    .Y(_27_)
);

NAND2X1 _2628_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf0),
    .B(_254_),
    .Y(_255_)
);

OAI21X1 _2208_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1370_),
    .B(_1307_),
    .C(\u_mem_serial.req_pending ),
    .Y(_1407_)
);

FILL FILL_0__4355_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2381_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [15]),
    .B(_796_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [12]),
    .Y(_1074_)
);

AOI21X1 _3586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2075_),
    .B(_2070_),
    .C(_2077_),
    .Y(_2092_)
);

NOR2X1 _3166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1767_),
    .B(_5__bF$buf1),
    .Y(_1713_)
);

FILL FILL_0__3626_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3206_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2857_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_557_),
    .CLK(i_clk_sys_ext_bF$buf42),
    .Q(\u_rf_if.read_buf0 [29])
);

NAND2X1 _2437_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_1018_)
);

FILL FILL_0__4584_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2179_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3120_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2190_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1308_),
    .B(_1411_),
    .Y(_1421_)
);

AOI21X1 _3395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_318_),
    .C(_312_),
    .Y(_311_)
);

FILL FILL_0__3435_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3015_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2666_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_219_),
    .B(_215__bF$buf3),
    .C(_221_),
    .Y(_59_)
);

AOI21X1 _2246_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1382_),
    .B(_1383_),
    .C(rst_bF$buf5),
    .Y(_764_)
);

FILL FILL_1_BUFX2_insert201 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert205 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert209 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3664_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3825_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2895_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_rreq ),
    .B(_1701_),
    .Y(_608_)
);

INVX1 _2475_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_979_)
);

NAND3X1 _4621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [3]),
    .B(\u_rf_if.o_waddr [2]),
    .C(\u_rf_if.o_wen ),
    .Y(_1970_)
);

OAI21X1 _4201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1133_),
    .B(_1230_),
    .C(_1131_),
    .Y(_1231_)
);

FILL FILL_1__4363_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3473_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3053_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4678_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2284_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1353_),
    .Y(_1354_)
);

NAND2X1 _3489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_448_),
    .B(_478_),
    .Y(_447_)
);

AOI21X1 _3069_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1641_),
    .B(_1640_),
    .C(rst_bF$buf6),
    .Y(_543_)
);

DFFPOSX1 _4430_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1487_),
    .CLK(i_clk_sys_ext_bF$buf40),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

NAND3X1 _4010_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_init ),
    .B(_932_),
    .C(_894_),
    .Y(_933_)
);

FILL FILL_0__3949_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3109_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3701_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(\u_cpu.decode.co_mem_signed )
);

FILL FILL_1__4228_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .B(_2052_),
    .Y(_2051_)
);

FILL FILL_0__2973_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2553_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert240 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3091_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2989_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1713_),
    .B(_1686__bF$buf1),
    .C(_2055_),
    .Y(_1585_)
);

DFFPOSX1 _2569_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_69_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_serial.last_req_key [0])
);

DFFPOSX1 _2149_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_793_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [13])
);

DFFPOSX1 _3930_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_622_),
    .CLK(i_clk_sys_ext_bF$buf21),
    .Q(rreg0[4])
);

OAI21X1 _3510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_478_),
    .B(_468_),
    .C(_463_),
    .Y(\u_rf_if.o_wdata [0])
);

FILL FILL_0__2609_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _4715_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2026_),
    .B(_2024_),
    .C(\u_cpu.decode.i_wb_rdt [2]),
    .Y(_2027_)
);

FILL FILL_1__3672_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4457_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3987_ (
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

DFFPOSX1 _2798_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_492_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.write_wait [0])
);

AOI21X1 _2378_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1073_),
    .B(_1076_),
    .C(_803_),
    .Y(_1077_)
);

OAI21X1 _4524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1906_),
    .B(rf_rreq_bF$buf5),
    .C(_1907_),
    .Y(rf_read_reg0_to_if[1])
);

OAI21X1 _4104_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_1146_),
    .C(_1147_),
    .Y(\u_cpu.alu.i_op_b )
);

FILL FILL_0__2171_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3796_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2332_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3537_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2187_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [20]),
    .B(_1377__bF$buf2),
    .Y(_1423_)
);

FILL FILL_0__2227_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4753_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1821_),
    .CLK(i_clk_sys_ext_bF$buf28),
    .Q(ibus_pending_rdt[24])
);

OR2X2 _4333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1520_)
);

FILL FILL_0__3185_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR3X1 _3604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_29_)
);

FILL FILL_1_BUFX2_insert171 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert175 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert178 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3346_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4562_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [25]),
    .B(_1861__bF$buf5),
    .Y(_1933_)
);

NOR2X1 _4142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1177_),
    .Y(_1181_)
);

FILL FILL_1__2617_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3833_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_immdec_ctrl [1]),
    .Y(_668_)
);

NOR2X1 _3413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [7]),
    .B(_441__bF$buf2),
    .Y(_329_)
);

NAND3X1 _4618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [24]),
    .C(_1960__bF$buf4),
    .Y(_1968_)
);

FILL FILL_1__3155_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2265_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _4371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1536_),
    .B(_1526_),
    .C(_1543_),
    .D(_1530_),
    .Y(_1477_)
);

FILL FILL_0__4411_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _3642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_158_)
);

NAND3X1 _3222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf0),
    .B(_0_),
    .C(_1754_),
    .Y(_1753_)
);

DFFPOSX1 _4427_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1466_),
    .CLK(i_clk_sys_ext_bF$buf27),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

NAND3X1 _4007_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_rs1_en ),
    .B(rdata0[0]),
    .C(_891_),
    .Y(_930_)
);

BUFX2 BUFX2_insert220 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf0 )
);

BUFX2 BUFX2_insert221 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525_),
    .Y(_1525__bF$buf4)
);

BUFX2 BUFX2_insert222 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525_),
    .Y(_1525__bF$buf3)
);

BUFX2 BUFX2_insert223 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525_),
    .Y(_1525__bF$buf2)
);

BUFX2 BUFX2_insert224 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525_),
    .Y(_1525__bF$buf1)
);

BUFX2 BUFX2_insert225 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525_),
    .Y(_1525__bF$buf0)
);

BUFX2 BUFX2_insert226 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686_),
    .Y(_1686__bF$buf4)
);

BUFX2 BUFX2_insert227 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686_),
    .Y(_1686__bF$buf3)
);

BUFX2 BUFX2_insert228 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686_),
    .Y(_1686__bF$buf2)
);

BUFX2 BUFX2_insert229 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686_),
    .Y(_1686__bF$buf1)
);

AOI21X1 _4180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1211_),
    .B(_1212_),
    .C(mem_dbus_ack_bF$buf0),
    .Y(_1213_)
);

AOI21X1 _2913_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [0]),
    .B(\u_rf_if.write_wait [1]),
    .C(_617_),
    .Y(_616_)
);

FILL FILL_0__3279_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2655_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3871_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660__bF$buf0),
    .B(_696_),
    .C(_697_),
    .Y(_632_)
);

NAND2X1 _3451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [25]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_403_)
);

NAND3X1 _3031_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf0),
    .B(_1686__bF$buf2),
    .C(_1806_),
    .Y(_1614_)
);

NAND3X1 _4656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [9]),
    .C(_1960__bF$buf0),
    .Y(_1988_)
);

NOR2X1 _4236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(_1255_),
    .Y(_1258_)
);

FILL FILL_1__3193_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2722_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf1),
    .B(_112_),
    .C(_113_),
    .Y(_114_)
);

AOI21X1 _2302_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1336_),
    .B(_1339_),
    .C(rst_bF$buf5),
    .Y(_752_)
);

FILL FILL_0__3088_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3927_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_625_),
    .CLK(i_clk_sys_ext_bF$buf18),
    .Q(rreg1[4])
);

OAI21X1 _3507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_462_),
    .B(_479__bF$buf0),
    .C(_461_),
    .Y(\u_rf_if.o_waddr [7])
);

OAI21X1 _3680_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_179_),
    .B(_181_),
    .C(_180_),
    .Y(_127_)
);

NAND3X1 _3260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf4),
    .B(_5__bF$buf3),
    .C(_1784_),
    .Y(_1783_)
);

FILL FILL_0__2359_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1864_),
    .B(_1865_),
    .C(_1866_),
    .Y(_1867_)
);

NAND2X1 _4045_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [13]),
    .Y(_955_)
);

FILL FILL_0__3300_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4505_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2951_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1446_),
    .B(_1667_),
    .C(_1445_),
    .Y(_506_)
);

NOR2X1 _2531_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf2 ),
    .B(\u_cpu.bufreg.data [3]),
    .Y(_822_)
);

NOR2X1 _3736_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.cond_branch ),
    .Y(_388_)
);

NOR2X1 _3316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2107_),
    .B(_2108__bF$buf1),
    .Y(_2106_)
);

FILL FILL_1__3898_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2588_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4694_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[0]),
    .B(rf_rreq_bF$buf1),
    .C(_1872__bF$buf0),
    .Y(_2012_)
);

AOI22X1 _4274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [8]),
    .C(_1167__bF$buf0),
    .D(_1285_),
    .Y(_1286_)
);

AND2X2 _2760_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_76_),
    .B(\u_rf_serial.shift_rx [1]),
    .Y(rdata[1])
);

OR2X2 _2340_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1306_),
    .B(\u_mem_serial.clk_sys_prev ),
    .Y(_1307_)
);

NAND2X1 _3965_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [7]),
    .B(_887__bF$buf2),
    .Y(_902_)
);

OAI21X1 _3545_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .B(_2035_),
    .C(_2033_),
    .Y(\u_cpu.mem_if.o_wb_sel [2])
);

NAND3X1 _3125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf2),
    .B(_1686__bF$buf2),
    .C(_1810_),
    .Y(_1683_)
);

FILL FILL_0__2397_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4083_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1125_),
    .B(_1128_),
    .C(_1126_),
    .Y(_1129_)
);

DFFPOSX1 _2816_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_526_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(raddr[8])
);

CLKBUF1 CLKBUF1_insert140 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf5),
    .Y(i_clk_sys_ext_bF$buf15)
);

CLKBUF1 CLKBUF1_insert141 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf2),
    .Y(i_clk_sys_ext_bF$buf14)
);

CLKBUF1 CLKBUF1_insert142 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf3),
    .Y(i_clk_sys_ext_bF$buf13)
);

CLKBUF1 CLKBUF1_insert143 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf1),
    .Y(i_clk_sys_ext_bF$buf12)
);

CLKBUF1 CLKBUF1_insert144 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf4),
    .Y(i_clk_sys_ext_bF$buf11)
);

CLKBUF1 CLKBUF1_insert145 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf5),
    .Y(i_clk_sys_ext_bF$buf10)
);

CLKBUF1 CLKBUF1_insert146 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf0),
    .Y(i_clk_sys_ext_bF$buf9)
);

CLKBUF1 CLKBUF1_insert147 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf2),
    .Y(i_clk_sys_ext_bF$buf8)
);

FILL FILL_0__4543_ (
    .gnd(gnd),
    .vdd(vdd)
);

CLKBUF1 CLKBUF1_insert148 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf1),
    .Y(i_clk_sys_ext_bF$buf7)
);

FILL FILL_0__4123_ (
    .gnd(gnd),
    .vdd(vdd)
);

CLKBUF1 CLKBUF1_insert149 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf5),
    .Y(i_clk_sys_ext_bF$buf6)
);

FILL FILL_1__2978_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2558_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3774_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(_366_),
    .C(_402_),
    .Y(_354_)
);

NAND2X1 _3354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .B(_37_),
    .Y(_25_)
);

NAND2X1 _4559_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [26]),
    .B(_1861__bF$buf5),
    .Y(_1931_)
);

AOI22X1 _4139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [4]),
    .C(_1167__bF$buf0),
    .D(_1178_),
    .Y(_1179_)
);

FILL FILL_0__3814_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2625_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [1]),
    .B(_91_),
    .Y(_258_)
);

NAND3X1 _2205_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1305_),
    .B(_1409_),
    .C(_1408_),
    .Y(_1410_)
);

FILL FILL_1__2367_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3583_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2089_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(\u_cpu.alu.i_buf ),
    .Y(_2090_)
);

OAI21X1 _3163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf3),
    .B(_1715_),
    .C(\u_rf_if.read_buf1 [2]),
    .Y(_1711_)
);

FILL FILL143250x28950 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _4368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1542_),
    .B(_1526_),
    .C(_1541_),
    .D(_1530_),
    .Y(_1475_)
);

FILL FILL_0__3203_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2854_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_517_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.read_buf0 [2])
);

NAND3X1 _2434_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_966_),
    .B(_1016_),
    .C(_1020_),
    .Y(_1021_)
);

FILL FILL_0__4161_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf8),
    .Y(_156_)
);

OAI21X1 _3219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf4),
    .B(_1752_),
    .C(\u_rf_if.read_buf1 [15]),
    .Y(_1751_)
);

FILL FILL143250x108150 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [25]),
    .B(_441__bF$buf0),
    .C(_440_),
    .Y(_308_)
);

BUFX2 BUFX2_insert190 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1872_),
    .Y(_1872__bF$buf0)
);

BUFX2 BUFX2_insert191 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf3 )
);

BUFX2 BUFX2_insert192 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf2 )
);

BUFX2 BUFX2_insert193 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf1 )
);

BUFX2 BUFX2_insert194 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel ),
    .Y(\u_rf_if.issue_sel_bF$buf0 )
);

BUFX2 BUFX2_insert195 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf7)
);

BUFX2 BUFX2_insert196 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf6)
);

BUFX2 BUFX2_insert197 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf5)
);

BUFX2 BUFX2_insert198 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf4)
);

BUFX2 BUFX2_insert199 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq),
    .Y(rf_rreq_bF$buf3)
);

NAND2X1 _4597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [31]),
    .B(_1861__bF$buf3),
    .Y(_1955_)
);

OAI21X1 _4177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_1209_),
    .C(\u_cpu.bufreg2.dhi [4]),
    .Y(_1210_)
);

FILL FILL_0__3852_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4637_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4217_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2663_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_222_),
    .B(_215__bF$buf3),
    .C(_223_),
    .Y(_60_)
);

AOI21X1 _2243_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1384_),
    .B(_1385_),
    .C(rst_bF$buf5),
    .Y(_765_)
);

FILL FILL_0__4390_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3868_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660__bF$buf2),
    .B(_694_),
    .C(_695_),
    .Y(_631_)
);

NAND2X1 _3448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [27]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_384_)
);

NAND3X1 _3028_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf0),
    .B(_1686__bF$buf4),
    .C(_1739_),
    .Y(_1612_)
);

FILL FILL_0__2703_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3908_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3241_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2719_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [3]),
    .Y(_117_)
);

FILL FILL_0__4026_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2892_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .Y(_606_)
);

NAND3X1 _2472_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf1 ),
    .B(_981_),
    .C(_980_),
    .Y(_982_)
);

FILL FILL_1__4607_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3677_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(_172_),
    .Y(_179_)
);

INVX1 _3257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1782_),
    .Y(_1781_)
);

FILL FILL_0__2932_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2512_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert90 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3890_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert92 (
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

INVX1 _2948_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[0]),
    .Y(_1443_)
);

MUX2X1 _2528_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(gnd),
    .S(\u_mem_serial.active_ibus_bF$buf3 ),
    .Y(_825_)
);

FILL FILL142350x86550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4255_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3631_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2281_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf0),
    .B(_1304__bF$buf3),
    .C(\u_mem_serial.shift_rx [2]),
    .Y(_1356_)
);

OAI21X1 _3486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_466_),
    .B(_479__bF$buf0),
    .C(_446_),
    .Y(\u_rf_if.o_waddr [8])
);

AOI21X1 _3066_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1639_),
    .B(_1638_),
    .C(rst_bF$buf6),
    .Y(_542_)
);

FILL FILL_0__2741_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2321_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2902_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2757_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_78_),
    .Y(_79_)
);

OAI21X1 _2337_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1309_),
    .B(_1307_),
    .C(_1305_),
    .Y(_1310_)
);

FILL FILL_0__4484_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3860_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4645_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_16_),
    .B(_9_),
    .C(_2_),
    .Y(_2048_)
);

FILL FILL_0_BUFX2_insert211 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert213 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert215 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert217 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert219 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3755_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3335_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _2986_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf3),
    .B(\u_rf_if.read_buf0 [1]),
    .S(_1584_),
    .Y(_1583_)
);

DFFPOSX1 _2566_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_71_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_serial.last_req_key [8])
);

BUFX2 _2146_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio_oe[0])
);

NAND2X1 _4712_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1881_),
    .B(\u_cpu.decode.i_wb_rdt [12]),
    .Y(_2024_)
);

FILL FILL_1__2940_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2520_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4349_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2795_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_590_),
    .CLK(i_clk_sys_ext_bF$buf33),
    .Q(\u_rf_if.read_buf1 [22])
);

NOR2X1 _2375_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1079_),
    .B(_1046_),
    .Y(_1080_)
);

FILL FILL_0__2415_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(_1904_),
    .C(_1905_),
    .Y(\u_cpu.i_ibus_rdt [1])
);

OAI21X1 _4101_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .B(_1145_),
    .C(_1144_),
    .Y(\u_cpu.bufreg2.o_q )
);

FILL FILL_1__4683_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4263_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3373_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4578_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2184_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [19]),
    .B(_1377__bF$buf3),
    .Y(_1425_)
);

OAI22X1 _3389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_309_),
    .B(_308_),
    .C(_307_),
    .D(_306_),
    .Y(_305_)
);

FILL FILL_0__2644_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4750_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1824_),
    .CLK(i_clk_sys_ext_bF$buf16),
    .Q(ibus_pending_rdt[23])
);

NAND2X1 _4330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_cnt1 ),
    .B(gnd),
    .Y(_1517_)
);

FILL FILL_0__3429_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3009_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4492_ (
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
    .A(_2102_),
    .B(_2101_),
    .C(_2104_),
    .Y(_2067_)
);

FILL FILL_1__3763_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1737_),
    .B(_1736_),
    .C(rst_bF$buf2),
    .Y(_578_)
);

FILL FILL_0__2453_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2889_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [3]),
    .B(_37_),
    .Y(_604_)
);

NAND2X1 _2469_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf0 ),
    .B(_984_),
    .Y(_985_)
);

AOI21X1 _3830_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_650_),
    .B(_656_),
    .C(_665_),
    .Y(_666_)
);

OAI21X1 _3410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_327_),
    .C(_421_),
    .Y(_326_)
);

FILL FILL_0__4196_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2929_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2509_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1948_),
    .B(rf_read_reg1[4]),
    .C(_1872__bF$buf3),
    .Y(_1966_)
);

FILL FILL142950x82950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2682_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3887_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3467_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3047_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3628_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3208_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2698_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_90_),
    .B(_191_),
    .C(_198_),
    .Y(_199_)
);

NAND3X1 _2278_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1358_),
    .C(_1303_),
    .Y(_1359_)
);

FILL FILL_0__2738_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4424_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1482_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

OAI21X1 _4004_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(_926_),
    .C(_927_),
    .Y(_872_)
);

FILL FILL_1__3381_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2491_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2910_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .B(_1700_),
    .Y(_615_)
);

FILL FILL_1__3017_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2967_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2547_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2127_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4653_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1938_),
    .B(_1959__bF$buf2),
    .C(_1986_),
    .Y(_1837_)
);

NOR2X1 _4233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1252_),
    .Y(_1256_)
);

FILL FILL_0_BUFX2_insert180 (
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

FILL FILL_0_BUFX2_insert186 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert188 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3924_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_628_),
    .CLK(i_clk_sys_ext_bF$buf34),
    .Q(rreg0[2])
);

OAI21X1 _3504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_460_),
    .B(_479__bF$buf3),
    .C(_459_),
    .Y(\u_rf_if.o_waddr [6])
);

NAND3X1 _4709_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [30]),
    .C(_1960__bF$buf2),
    .Y(_2022_)
);

INVX1 _4462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .Y(_1864_)
);

OAI21X1 _4042_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_952_),
    .C(_953_),
    .Y(_884_)
);

OAI21X1 _3733_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.cond_branch ),
    .B(\u_cpu.branch_op ),
    .C(_385_),
    .Y(_386_)
);

OR2X2 _3313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [2]),
    .B(\u_rf_if.rreg0_latched [3]),
    .Y(_2065_)
);

FILL FILL_1__2690_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf1),
    .B(_1902_),
    .C(_1903_),
    .Y(\u_cpu.decode.i_wb_rdt [22])
);

FILL FILL_1__3055_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4691_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[1]),
    .B(rf_rreq_bF$buf7),
    .C(_1872__bF$buf1),
    .Y(_2010_)
);

AOI22X1 _4271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [9]),
    .C(_1167__bF$buf3),
    .D(_1283_),
    .Y(_1284_)
);

FILL FILL142050x108150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4311_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3962_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_900_)
);

NOR2X1 _3542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bne_or_bge ),
    .Y(_2034_)
);

OAI21X1 _3122_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_1682_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1681_)
);

DFFSR _4747_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1827_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(ibus_pending_rdt[21])
);

AND2X2 _4327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1514_),
    .B(\u_cpu.ctrl.i_pc_en ),
    .Y(_1651_)
);

FILL FILL_0__2394_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4080_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_1126_)
);

DFFPOSX1 _2813_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_581_),
    .CLK(i_clk_sys_ext_bF$buf20),
    .Q(\u_rf_if.read_buf1 [13])
);

CLKBUF1 CLKBUF1_insert110 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf5),
    .Y(i_clk_sys_ext_bF$buf45)
);

CLKBUF1 CLKBUF1_insert111 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf2),
    .Y(i_clk_sys_ext_bF$buf44)
);

CLKBUF1 CLKBUF1_insert112 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf2),
    .Y(i_clk_sys_ext_bF$buf43)
);

CLKBUF1 CLKBUF1_insert113 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf5),
    .Y(i_clk_sys_ext_bF$buf42)
);

CLKBUF1 CLKBUF1_insert114 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf0),
    .Y(i_clk_sys_ext_bF$buf41)
);

CLKBUF1 CLKBUF1_insert115 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf4),
    .Y(i_clk_sys_ext_bF$buf40)
);

CLKBUF1 CLKBUF1_insert116 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf4),
    .Y(i_clk_sys_ext_bF$buf39)
);

CLKBUF1 CLKBUF1_insert117 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf5),
    .Y(i_clk_sys_ext_bF$buf38)
);

CLKBUF1 CLKBUF1_insert118 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf2),
    .Y(i_clk_sys_ext_bF$buf37)
);

FILL FILL_0__4540_ (
    .gnd(gnd),
    .vdd(vdd)
);

CLKBUF1 CLKBUF1_insert119 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf3),
    .Y(i_clk_sys_ext_bF$buf36)
);

FILL FILL_1__2555_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3771_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [13]),
    .B(rf_rreq_bF$buf2),
    .Y(_401_)
);

AOI21X1 _3351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_25_),
    .B(_24_),
    .C(_23_),
    .Y(_600_)
);

NAND2X1 _4556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [27]),
    .B(_1861__bF$buf2),
    .Y(_1929_)
);

OAI21X1 _4136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1174_),
    .B(_1159__bF$buf1),
    .C(_1176_),
    .Y(_1095_)
);

FILL FILL_1__3093_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2622_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(_188_),
    .Y(_261_)
);

OAI21X1 _2202_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1368_),
    .C(_1411_),
    .Y(_1412_)
);

INVX1 _3827_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_663_)
);

NAND2X1 _3407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [9]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_323_)
);

FILL FILL_1__3989_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3569_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2086_),
    .B(_2071_),
    .Y(_2087_)
);

NAND2X1 _3160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2105_),
    .B(_2110__bF$buf4),
    .Y(_1709_)
);

FILL FILL_0__2259_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_1541_)
);

FILL FILL_0__3620_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4405_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x82950 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2851_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_560_),
    .CLK(i_clk_sys_ext_bF$buf25),
    .Q(\u_rf_if.rreg1_latched [2])
);

NAND2X1 _2431_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(_1023_),
    .Y(_1024_)
);

NAND2X1 _3636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_152_),
    .B(_153_),
    .Y(_154_)
);

AOI21X1 _3216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1751_),
    .B(_1749_),
    .C(rst_bF$buf4),
    .Y(_583_)
);

BUFX2 BUFX2_insert168 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf6)
);

BUFX2 BUFX2_insert169 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack),
    .Y(mem_dbus_ack_bF$buf5)
);

OAI21X1 _4594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1952_),
    .B(rf_rreq_bF$buf7),
    .C(_1953_),
    .Y(rf_read_reg0_to_if[4])
);

NAND3X1 _4174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_1205_),
    .C(_1193_),
    .Y(_1207_)
);

AOI21X1 _2907_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .B(_614_),
    .C(_613_),
    .Y(_491_)
);

FILL FILL_0__4634_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2229_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x129750 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2660_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_224_),
    .B(_215__bF$buf2),
    .C(_225_),
    .Y(_61_)
);

AOI21X1 _2240_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1386_),
    .B(_1387_),
    .C(rst_bF$buf5),
    .Y(_766_)
);

OAI21X1 _3865_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660__bF$buf3),
    .B(_692_),
    .C(_693_),
    .Y(_630_)
);

NOR2X1 _3445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [28]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .Y(_376_)
);

NAND3X1 _3025_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686__bF$buf4),
    .B(_2055_),
    .C(_1739_),
    .Y(_1610_)
);

NAND2X1 _2716_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .B(_105_),
    .Y(_120_)
);

OAI22X1 _3674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_169_),
    .B(_172_),
    .C(_177_),
    .D(_170_),
    .Y(_125_)
);

AOI21X1 _3254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2109_),
    .B(_6_),
    .C(_1782_),
    .Y(_1778_)
);

NAND2X1 _4459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [17]),
    .B(_1861__bF$buf5),
    .Y(_1862_)
);

OAI21X1 _4039_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf1),
    .B(_949_),
    .C(_951_),
    .Y(_883_)
);

FILL FILL_0_BUFX2_insert60 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert63 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert65 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert67 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert69 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2945_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1669_),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_746_)
);

AOI21X1 _2525_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_809_),
    .B(_824_),
    .C(_827_),
    .Y(_828_)
);

FILL FILL_0__4672_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2267_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4413_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX4 _3483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_443_)
);

NAND2X1 _3063_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27__bF$buf0),
    .B(_1636_),
    .Y(_1635_)
);

NAND3X1 _4688_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[2]),
    .B(rf_rreq_bF$buf7),
    .C(_1872__bF$buf1),
    .Y(_2008_)
);

OAI21X1 _4268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1279_),
    .B(_1159__bF$buf4),
    .C(_1281_),
    .Y(_1122_)
);

FILL FILL_0__3523_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3103_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2754_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [2]),
    .B(_79_),
    .C(\u_rf_serial.tx_state [3]),
    .Y(_82_)
);

OAI21X1 _2334_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.req_pending ),
    .B(\u_mem_serial.state [0]),
    .C(_1312_),
    .Y(_1313_)
);

OAI21X1 _3959_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_897_),
    .C(_898_),
    .Y(_856_)
);

DFFPOSX1 _3539_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_769_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.bit_count [3])
);

AOI21X1 _3119_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1679_),
    .B(_1681_),
    .C(_1701_),
    .Y(_556_)
);

NAND3X1 _3292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rdata[1]),
    .B(_1812_),
    .C(_2057_),
    .Y(_1811_)
);

OAI21X1 _4497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf0),
    .B(_1888_),
    .C(_1889_),
    .Y(\u_cpu.decode.i_wb_rdt [21])
);

DFFPOSX1 _4077_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_993_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.bufreg.c_r )
);

FILL FILL_0__3752_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4117_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3913_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2983_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2056_),
    .B(_1584_),
    .C(_1582_),
    .Y(_515_)
);

DFFPOSX1 _2563_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_60_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.last_req_key [4])
);

BUFX2 _2143_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio_oe[3])
);

OAI21X1 _3768_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(\u_cpu.alu.i_cmp_sig )
);

AOI21X1 _3348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_22_),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .C(_21_),
    .Y(_599_)
);

FILL FILL_0__2603_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4031_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3561_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3141_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2619_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_260_),
    .B(_263_),
    .C(_261_),
    .Y(_264_)
);

BUFX2 BUFX2_insert70 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1297_),
    .Y(_1297__bF$buf1)
);

BUFX2 BUFX2_insert71 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1297_),
    .Y(_1297__bF$buf0)
);

BUFX2 BUFX2_insert72 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315_),
    .Y(_1315__bF$buf5)
);

BUFX2 BUFX2_insert73 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315_),
    .Y(_1315__bF$buf4)
);

BUFX2 BUFX2_insert74 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315_),
    .Y(_1315__bF$buf3)
);

BUFX2 BUFX2_insert75 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315_),
    .Y(_1315__bF$buf2)
);

BUFX2 BUFX2_insert76 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315_),
    .Y(_1315__bF$buf1)
);

BUFX2 BUFX2_insert77 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315_),
    .Y(_1315__bF$buf0)
);

BUFX2 BUFX2_insert78 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf3 )
);

BUFX2 BUFX2_insert79 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [0]),
    .Y(\u_mem_serial.bit_count_0_bF$buf2 )
);

DFFPOSX1 _2792_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_532_),
    .CLK(i_clk_sys_ext_bF$buf20),
    .Q(\u_rf_if.read_buf0 [13])
);

INVX1 _2372_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [6]),
    .Y(_1083_)
);

FILL FILL_1__4507_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3997_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [26]),
    .Y(_923_)
);

INVX1 _3577_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_2084_)
);

OAI21X1 _3157_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2109_),
    .B(_13__bF$buf0),
    .C(\u_rf_if.read_buf1 [0]),
    .Y(_1707_)
);

FILL FILL_0__3790_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2848_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_499_),
    .CLK(i_clk_sys_ext_bF$buf25),
    .Q(\u_rf_if.rreg0_latched [2])
);

OR2X2 _2428_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [23]),
    .Y(_1027_)
);

FILL FILL_0__4155_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3951_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2181_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(_1368_),
    .C(_1426_),
    .Y(_1427_)
);

OAI21X1 _3386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [29]),
    .B(_441__bF$buf1),
    .C(_440_),
    .Y(_302_)
);

FILL FILL_0__2221_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3846_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2657_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [2]),
    .Y(_227_)
);

AOI21X1 _2237_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1389_),
    .B(_1388_),
    .C(rst_bF$buf9),
    .Y(_767_)
);

FILL FILL_0__4384_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4545_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4125_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf1),
    .B(_2108__bF$buf2),
    .C(_1787_),
    .Y(_1733_)
);

FILL FILL_0__3655_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3235_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142350x39750 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2886_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_604_),
    .B(_603_),
    .C(_602_),
    .Y(_481_)
);

MUX2X1 _2466_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .B(\u_cpu.bufreg.data [24]),
    .S(\u_mem_serial.active_ibus_bF$buf0 ),
    .Y(_988_)
);

OAI21X1 _4612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1930_),
    .B(_1959__bF$buf3),
    .C(_1964_),
    .Y(_1818_)
);

FILL FILL_0__3044_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2420_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4249_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2695_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast_bF$buf1),
    .B(_77_),
    .Y(_2121_)
);

NAND2X1 _2275_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [0]),
    .B(_1297__bF$buf1),
    .Y(_1361_)
);

FILL FILL_0__2315_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _4421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1504_),
    .B(_1510_),
    .C(_1575_),
    .Y(_1576_)
);

OAI21X1 _4001_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf4),
    .B(_923_),
    .C(_925_),
    .Y(_871_)
);

FILL FILL_1__4163_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4478_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1809_),
    .B(_2049_),
    .C(rst_bF$buf6),
    .Y(_597_)
);

NAND3X1 _4650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [12]),
    .C(_1960__bF$buf3),
    .Y(_1985_)
);

AOI22X1 _4230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [18]),
    .C(_1167__bF$buf2),
    .D(_1253_),
    .Y(_1254_)
);

FILL FILL_0_BUFX2_insert157 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert159 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3329_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2705_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3082_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3921_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_631_),
    .CLK(i_clk_sys_ext_bF$buf36),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

OAI21X1 _3501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_458_),
    .B(_479__bF$buf3),
    .C(_457_),
    .Y(\u_rf_if.o_waddr [5])
);

NAND3X1 _4706_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm ),
    .B(rf_rreq_bF$buf1),
    .C(_1872__bF$buf0),
    .Y(_2020_)
);

FILL FILL_1__3243_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4028_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3098_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [1]),
    .Y(_1661_)
);

FILL FILL_0__2353_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3978_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3558_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2789_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_593_),
    .CLK(i_clk_sys_ext_bF$buf42),
    .Q(\u_rf_if.read_buf1 [25])
);

NAND2X1 _2369_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1084_),
    .B(_1085_),
    .Y(_1086_)
);

DFFPOSX1 _3730_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(i_clk_sys_ext_bF$buf31),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.clk_sys_prev )
);

NOR2X1 _3310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2065_),
    .B(_2063_),
    .Y(_2062_)
);

FILL FILL_0__4096_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2409_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf0),
    .B(_1900_),
    .C(_1901_),
    .Y(\u_cpu.decode.i_wb_rdt [23])
);

FILL FILL_0__2582_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2162_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3367_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2743_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2598_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [10]),
    .B(_283_),
    .C(_202_),
    .Y(_284_)
);

NAND2X1 _2178_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [18]),
    .B(_1377__bF$buf3),
    .Y(_1429_)
);

FILL FILL_0__2638_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4744_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf4),
    .S(vdd),
    .D(_1830_),
    .CLK(i_clk_sys_ext_bF$buf39),
    .Q(ibus_pending_rdt[18])
);

NOR2X1 _4324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1512_)
);

FILL FILL_1__3281_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2810_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_503_),
    .CLK(i_clk_sys_ext_bF$buf35),
    .Q(\u_rf_if.issue_chunk [1])
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

FILL FILL_0__2447_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [28]),
    .B(_1861__bF$buf0),
    .Y(_1927_)
);

INVX1 _4133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [5]),
    .Y(_1174_)
);

NAND2X1 _3824_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[4]),
    .B(_660__bF$buf1),
    .Y(_661_)
);

NAND2X1 _3404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [11]),
    .B(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .Y(_320_)
);

NAND3X1 _4609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [27]),
    .C(_1960__bF$buf4),
    .Y(_1963_)
);

FILL FILL_0__2676_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2256_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _4362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1539_),
    .B(_1526_),
    .C(_1538_),
    .D(_1530_),
    .Y(_1472_)
);

FILL FILL_0_CLKBUF1_insert140 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert142 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2417_ (
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

FILL FILL_0_CLKBUF1_insert148 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142350x108150 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_150_),
    .B(_147_),
    .Y(_151_)
);

AOI21X1 _3213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1748_),
    .B(_1747_),
    .C(rst_bF$buf4),
    .Y(_582_)
);

FILL FILL_1__2590_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1506_),
    .B(_1572_),
    .C(_1573_),
    .Y(_1494_)
);

OAI21X1 _4591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1950_),
    .B(rf_rreq_bF$buf3),
    .C(_1951_),
    .Y(rf_read_reg1_to_if[4])
);

INVX2 _4171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1131_),
    .Y(_1205_)
);

OAI21X1 _2904_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[4]),
    .B(_1693_),
    .C(_27__bF$buf1),
    .Y(_611_)
);

FILL FILL_0__4211_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3862_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660__bF$buf3),
    .B(_690_),
    .C(_691_),
    .Y(_629_)
);

OAI21X1 _3442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [30]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_372_)
);

NAND3X1 _3022_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf3),
    .B(_1686__bF$buf4),
    .C(_1787_),
    .Y(_1608_)
);

INVX1 _4647_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[13]),
    .Y(_1983_)
);

OAI21X1 _4227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1249_),
    .B(_1159__bF$buf2),
    .C(_1251_),
    .Y(_1111_)
);

FILL FILL_0__3902_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2294_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2713_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(raddr[2]),
    .C(_122_),
    .Y(_159_)
);

FILL FILL_0__4020_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3918_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_634_),
    .CLK(i_clk_sys_ext_bF$buf19),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

FILL FILL_1__2455_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.o_cmp ),
    .B(_173_),
    .C(\u_cpu.cond_branch ),
    .Y(_175_)
);

OAI21X1 _3251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf0),
    .B(_1780_),
    .C(\u_rf_if.read_buf1 [22]),
    .Y(_1776_)
);

DFFPOSX1 _4456_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1493_),
    .CLK(i_clk_sys_ext_bF$buf39),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

NAND2X1 _4036_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [17]),
    .Y(_950_)
);

FILL FILL_1__4198_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert31 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert33 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert35 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert37 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2942_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1669_),
    .C(\u_rf_if.issue_chunk [0]),
    .Y(_744_)
);

OAI21X1 _2522_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .B(_801_),
    .C(_830_),
    .Y(_831_)
);

NOR2X1 _3727_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(_382_),
    .Y(_383_)
);

NOR2X1 _3307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(\u_rf_if.rreg1_latched [2]),
    .Y(_2059_)
);

FILL FILL_1__3469_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX4 _3480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_440_)
);

NAND3X1 _3060_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf3),
    .B(_1686__bF$buf0),
    .C(_1772_),
    .Y(_1633_)
);

FILL FILL_0__2999_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4685_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg1[3]),
    .B(rf_rreq_bF$buf5),
    .C(_1872__bF$buf3),
    .Y(_2006_)
);

INVX1 _4265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [10]),
    .Y(_1279_)
);

NAND2X1 _2751_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_84_),
    .Y(_85_)
);

OAI21X1 _2331_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf2),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [12]),
    .Y(_1316_)
);

OAI21X1 _3956_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf3),
    .B(_895_),
    .C(_896_),
    .Y(_855_)
);

DFFPOSX1 _3536_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1468_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

INVX1 _3116_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [2]),
    .Y(_1676_)
);

FILL FILL_1__2493_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2388_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf5),
    .B(_1886_),
    .C(_1887_),
    .Y(\u_cpu.decode.i_wb_rdt [16])
);

DFFPOSX1 _4074_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_876_),
    .CLK(i_clk_sys_ext_bF$buf26),
    .Q(\u_cpu.bufreg.data [21])
);

DFFPOSX1 _2807_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_584_),
    .CLK(i_clk_sys_ext_bF$buf22),
    .Q(\u_rf_if.read_buf1 [16])
);

FILL FILL_0__4534_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2129_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3910_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2980_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .B(_1581_),
    .C(_1580_),
    .Y(_514_)
);

DFFPOSX1 _2560_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_67_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.shift_rx [1])
);

BUFX2 _2140_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio_oe[6])
);

MUX2X1 _3765_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_signed ),
    .B(\u_cpu.bne_or_bge ),
    .S(\u_cpu.decode.co_mem_word ),
    .Y(_399_)
);

NOR2X1 _3345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_18_)
);

OR2X2 _2616_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf4),
    .B(\u_rf_if.o_waddr [7]),
    .Y(_267_)
);

BUFX2 BUFX2_insert40 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887_),
    .Y(_887__bF$buf1)
);

BUFX2 BUFX2_insert41 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887_),
    .Y(_887__bF$buf0)
);

BUFX2 BUFX2_insert42 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf6 )
);

BUFX2 BUFX2_insert43 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf5 )
);

BUFX2 BUFX2_insert44 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf4 )
);

BUFX2 BUFX2_insert45 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf3 )
);

BUFX2 BUFX2_insert46 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf2 )
);

BUFX2 BUFX2_insert47 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf1 )
);

BUFX2 BUFX2_insert48 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus ),
    .Y(\u_mem_serial.active_ibus_bF$buf0 )
);

BUFX2 BUFX2_insert49 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688_),
    .Y(_1688__bF$buf4)
);

OAI21X1 _3994_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(_920_),
    .C(_921_),
    .Y(_868_)
);

OAI21X1 _3574_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2077_),
    .B(_2069_),
    .C(_2080_),
    .Y(_2081_)
);

AND2X2 _3154_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27__bF$buf4),
    .B(gnd),
    .Y(_564_)
);

INVX1 _4359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_1538_)
);

FILL FILL_0__3614_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x115350 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2845_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_563_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.wen0_r )
);

NAND3X1 _2425_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_798_),
    .B(_1027_),
    .C(_1029_),
    .Y(_1030_)
);

FILL FILL_0__4572_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4152_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2167_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4313_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _3383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_303_),
    .B(_302_),
    .C(_301_),
    .D(_300_),
    .Y(_299_)
);

AOI21X1 _4588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1872__bF$buf1),
    .B(_1949_),
    .C(_1948_),
    .Y(\u_rf_if.i_rreq )
);

AND2X2 _4168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shift_op ),
    .B(\u_cpu.bufreg2.i_cnt7 ),
    .Y(_1202_)
);

FILL FILL_0__3423_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3003_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4628_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2654_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_229_),
    .B(_215__bF$buf0),
    .C(_202_),
    .Y(_230_)
);

AOI22X1 _2234_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_853_),
    .B(_1297__bF$buf2),
    .C(_1315__bF$buf5),
    .D(\u_mem_serial.bit_count [3]),
    .Y(_1391_)
);

OAI21X1 _3859_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660__bF$buf3),
    .B(_688_),
    .C(_689_),
    .Y(_628_)
);

AOI21X1 _3439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_377_),
    .C(_359_),
    .Y(_356_)
);

NAND2X1 _3019_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf0 ),
    .B(_1607_),
    .Y(_1606_)
);

NAND3X1 _3192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf1),
    .B(_2108__bF$buf2),
    .C(_1784_),
    .Y(_1731_)
);

NAND2X1 _4397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .B(_1525__bF$buf3),
    .Y(_1560_)
);

DFFPOSX1 _2883_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_495_),
    .CLK(i_clk_sys_ext_bF$buf39),
    .Q(\u_rf_if.write_wait [3])
);

OAI21X1 _2463_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_990_),
    .B(_987_),
    .C(_966_),
    .Y(_991_)
);

FILL FILL_0__4190_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_158_),
    .B(_171_),
    .C(_156_),
    .Y(_172_)
);

NAND3X1 _3248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2048_),
    .B(_2051_),
    .C(_5__bF$buf2),
    .Y(_1774_)
);

FILL FILL_0__2923_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2503_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4351_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3881_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3461_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2939_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1669_),
    .C(\u_rf_if.issue_sel_bF$buf2 ),
    .Y(_742_)
);

NAND2X1 _2519_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_831_),
    .B(_833_),
    .Y(_834_)
);

FILL FILL_0__4666_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX2 _2692_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf1),
    .Y(_202_)
);

AOI21X1 _2272_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1360_),
    .B(_1363_),
    .C(rst_bF$buf5),
    .Y(_758_)
);

MUX2X1 _3897_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [22]),
    .B(rreg1[3]),
    .S(rf_rreq_bF$buf5),
    .Y(_715_)
);

OAI21X1 _3477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [14]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf2 ),
    .Y(_437_)
);

NAND3X1 _3057_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf3),
    .B(_1686__bF$buf0),
    .C(_1769_),
    .Y(_1631_)
);

FILL FILL_0__2732_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3517_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4580_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3270_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2748_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_87_),
    .B(_78_),
    .Y(_88_)
);

NAND3X1 _2328_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1318_),
    .C(_1303_),
    .Y(_1319_)
);

FILL FILL_1__3431_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR3X1 _3286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2123_),
    .B(_4_),
    .C(_1807_),
    .Y(_1806_)
);

FILL FILL_0__2961_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2541_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3746_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2977_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1663_),
    .B(_1578_),
    .Y(_513_)
);

NOR2X1 _2557_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_796_)
);

BUFX2 _2137_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio[1])
);

NAND3X1 _4703_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[1]),
    .B(rf_rreq_bF$buf1),
    .C(_1872__bF$buf0),
    .Y(_2018_)
);

FILL FILL_1__3660_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3095_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1659_),
    .B(_27__bF$buf4),
    .Y(_552_)
);

DFFPOSX1 _2786_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_506_),
    .CLK(i_clk_sys_ext_bF$buf41),
    .Q(raddr[2])
);

NAND2X1 _2366_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_1088_),
    .Y(_1089_)
);

FILL FILL142950x100950 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1898_),
    .B(rf_rreq_bF$buf5),
    .C(_1899_),
    .Y(rf_read_reg0_to_if[3])
);

FILL FILL_0__3364_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3105_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2595_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_260_),
    .B(_215__bF$buf1),
    .C(_285_),
    .Y(_66_)
);

NAND2X1 _2175_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [17]),
    .B(_1377__bF$buf2),
    .Y(_1431_)
);

FILL FILL_0__2215_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4741_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1833_),
    .CLK(i_clk_sys_ext_bF$buf28),
    .Q(ibus_pending_rdt[15])
);

NAND3X1 _4321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1496_),
    .B(_1499_),
    .C(_1509_),
    .Y(_1510_)
);

FILL FILL_0__4378_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf2),
    .B(_1730_),
    .C(\u_rf_if.read_buf1 [7]),
    .Y(_1729_)
);

NAND2X1 _4550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [29]),
    .B(_1861__bF$buf3),
    .Y(_1925_)
);

NOR2X1 _4130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf0),
    .B(_1148_),
    .Y(_1172_)
);

FILL FILL_0__3649_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3229_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2605_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3821_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_immdec_en [1]),
    .Y(_658_)
);

NOR2X1 _3401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [12]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_317_)
);

OAI21X1 _4606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1924_),
    .B(_1959__bF$buf1),
    .C(_1961_),
    .Y(_1815_)
);

FILL FILL_1__3143_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3458_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3038_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert111 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert113 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert115 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert117 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert119 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2689_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_203_),
    .B(_204_),
    .Y(_205_)
);

INVX1 _2269_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1365_),
    .Y(_1366_)
);

INVX1 _3630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shift_op ),
    .Y(_148_)
);

NAND3X1 _3210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf0),
    .B(_2108__bF$buf0),
    .C(_1810_),
    .Y(_1744_)
);

FILL FILL_0__2309_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1525__bF$buf0),
    .B(_1570_),
    .C(_1571_),
    .Y(_1493_)
);

BUFX2 BUFX2_insert100 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf9)
);

BUFX2 BUFX2_insert101 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf8)
);

BUFX2 BUFX2_insert102 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf7)
);

BUFX2 BUFX2_insert103 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf6)
);

BUFX2 BUFX2_insert104 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf5)
);

BUFX2 BUFX2_insert105 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf4)
);

BUFX2 BUFX2_insert106 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf3)
);

BUFX2 BUFX2_insert107 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf2)
);

BUFX2 BUFX2_insert108 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf1)
);

BUFX2 BUFX2_insert109 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf0)
);

FILL FILL_0__2482_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2901_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .B(_1700_),
    .C(_610_),
    .Y(_488_)
);

FILL FILL_0__3687_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3848_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2498_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(_854_),
    .Y(_956_)
);

OAI21X1 _4644_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1896_),
    .B(_1959__bF$buf2),
    .C(_1981_),
    .Y(_1833_)
);

INVX1 _4224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [19]),
    .Y(_1249_)
);

FILL FILL_1__4386_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert140 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert144 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert148 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2710_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_97_),
    .B(_165_),
    .Y(_187_)
);

FILL FILL_0__3496_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3076_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3915_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_656_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .C(_665_),
    .Y(_727_)
);

FILL FILL_1__3657_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4453_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1470_),
    .CLK(i_clk_sys_ext_bF$buf40),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

NAND2X1 _4033_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [31]),
    .B(_947_),
    .Y(_948_)
);

INVX1 _3724_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_380_)
);

NAND2X1 _3304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rdata[0]),
    .B(_2057_),
    .Y(_2056_)
);

OAI21X1 _4509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf1),
    .B(_1896_),
    .C(_1897_),
    .Y(\u_cpu.decode.i_wb_rdt [15])
);

FILL FILL142650x108150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2996_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4682_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [0]),
    .C(_1960__bF$buf3),
    .Y(_2004_)
);

NOR2X1 _4262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_1273_),
    .Y(_1277_)
);

FILL FILL_1__2317_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3953_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_894_),
    .B(_888_),
    .C(_887__bF$buf0),
    .Y(_993_)
);

DFFPOSX1 _3533_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_635_),
    .CLK(i_clk_sys_ext_bF$buf34),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

NOR2X1 _3113_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [3]),
    .B(_1674_),
    .Y(_1673_)
);

DFFSR _4738_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf0),
    .S(vdd),
    .D(_1836_),
    .CLK(i_clk_sys_ext_bF$buf29),
    .Q(ibus_pending_rdt[12])
);

INVX1 _4318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_buf ),
    .Y(_1507_)
);

INVX1 _4491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1885_),
    .Y(\u_cpu.decode.i_wb_rdt [3])
);

DFFPOSX1 _4071_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_879_),
    .CLK(i_clk_sys_ext_bF$buf26),
    .Q(\u_cpu.bufreg.data [18])
);

DFFPOSX1 _2804_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_529_),
    .CLK(i_clk_sys_ext_bF$buf15),
    .Q(\u_rf_if.read_buf0 [11])
);

FILL FILL_0__4111_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3762_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(_398_),
    .Y(\u_cpu.decode.co_rd_alu_en )
);

AND2X2 _3342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_16_),
    .B(_17_),
    .Y(_15_)
);

NAND2X1 _4547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf1),
    .B(ibus_pending_rdt[30]),
    .Y(_1923_)
);

AOI22X1 _4127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf5),
    .B(\u_mem_serial.shift_rx [7]),
    .C(_1167__bF$buf0),
    .D(_1169_),
    .Y(_1170_)
);

FILL FILL_0__2194_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2613_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf4),
    .B(raddr[7]),
    .Y(_270_)
);

FILL FILL_0__4340_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3818_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_654_),
    .B(_653_),
    .C(rf_rreq_bF$buf4),
    .Y(_655_)
);

FILL FILL_1__2355_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert10 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1304_),
    .Y(_1304__bF$buf4)
);

BUFX2 BUFX2_insert11 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1304_),
    .Y(_1304__bF$buf3)
);

BUFX2 BUFX2_insert12 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1304_),
    .Y(_1304__bF$buf2)
);

BUFX2 BUFX2_insert13 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1304_),
    .Y(_1304__bF$buf1)
);

BUFX2 BUFX2_insert14 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1304_),
    .Y(_1304__bF$buf0)
);

BUFX2 BUFX2_insert15 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_215_),
    .Y(_215__bF$buf3)
);

BUFX2 BUFX2_insert16 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_215_),
    .Y(_215__bF$buf2)
);

BUFX2 BUFX2_insert17 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_215_),
    .Y(_215__bF$buf1)
);

BUFX2 BUFX2_insert18 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_215_),
    .Y(_215__bF$buf0)
);

BUFX2 BUFX2_insert19 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_479_),
    .Y(_479__bF$buf3)
);

OAI21X1 _3991_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_917_),
    .C(_919_),
    .Y(_867_)
);

OR2X2 _3571_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_sub ),
    .B(\u_cpu.alu.i_op_b ),
    .Y(_2078_)
);

AOI21X1 _3151_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1705_),
    .B(_479__bF$buf2),
    .C(_1704_),
    .Y(_563_)
);

OAI22X1 _4356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1535_),
    .B(_1526_),
    .C(_1536_),
    .D(_1530_),
    .Y(_1469_)
);

FILL FILL_1__4098_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2842_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_565_),
    .CLK(i_clk_sys_ext_bF$buf33),
    .Q(\u_rf_if.read_buf1 [0])
);

NAND2X1 _2422_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1033_)
);

INVX1 _3627_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_145_)
);

NAND3X1 _3207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf0),
    .B(_2108__bF$buf0),
    .C(_1806_),
    .Y(_1742_)
);

FILL FILL_1__2164_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3369_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x136950 (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [16]),
    .B(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .Y(_296_)
);

INVX8 _4585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n_bF$buf5),
    .Y(rst)
);

OAI21X1 _4165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1131_),
    .B(_1159__bF$buf3),
    .C(_1199_),
    .Y(_1200_)
);

FILL FILL_0__4205_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2651_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf3),
    .B(\u_rf_if.o_wen ),
    .Y(_232_)
);

AOI21X1 _2231_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf5),
    .B(_800_),
    .C(_1392_),
    .Y(_770_)
);

OAI21X1 _3856_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_660__bF$buf1),
    .B(_686_),
    .C(_687_),
    .Y(_627_)
);

OAI21X1 _3436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf2 ),
    .B(_355_),
    .C(_352_),
    .Y(_351_)
);

AOI21X1 _3016_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .B(_1605_),
    .C(_1604_),
    .Y(_526_)
);

FILL FILL_1_BUFX2_insert71 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert75 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert79 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3178_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2288_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .B(_1525__bF$buf4),
    .Y(_1558_)
);

OAI21X1 _2707_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf2),
    .B(_188_),
    .C(_189_),
    .Y(_190_)
);

FILL FILL_0__4014_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3810_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2880_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_544_),
    .CLK(i_clk_sys_ext_bF$buf42),
    .Q(\u_rf_if.read_buf0 [24])
);

OR2X2 _2460_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf3 ),
    .B(\u_cpu.bufreg.data [30]),
    .Y(_995_)
);

INVX1 _3665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_169_)
);

NAND3X1 _3245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf4),
    .B(_5__bF$buf3),
    .C(_1772_),
    .Y(_1771_)
);

NOR2X1 _2936_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [3]),
    .Y(_740_)
);

NOR2X1 _2516_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.bufreg.data [15]),
    .Y(_837_)
);

FILL FILL_1__2678_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3894_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [23]),
    .B(rreg1[4]),
    .S(rf_rreq_bF$buf5),
    .Y(_713_)
);

NOR2X1 _3474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [8]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_434_)
);

NAND3X1 _3054_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf0),
    .B(_1686__bF$buf4),
    .C(_1763_),
    .Y(_1629_)
);

NAND3X1 _4679_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_rx [31]),
    .C(_1960__bF$buf1),
    .Y(_2002_)
);

AOI22X1 _4259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [12]),
    .C(_1167__bF$buf1),
    .D(_1274_),
    .Y(_1275_)
);

INVX2 _2745_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf1),
    .Y(_91_)
);

NAND2X1 _2325_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [10]),
    .B(_1297__bF$buf3),
    .Y(_1321_)
);

FILL FILL_1__4213_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .B(_2052_),
    .Y(_1804_)
);

NAND2X1 _4488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [2]),
    .B(_1861__bF$buf2),
    .Y(_1884_)
);

DFFPOSX1 _4068_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_882_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [16])
);

FILL FILL_0__3323_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4528_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2974_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1462_),
    .B(_1663_),
    .Y(_512_)
);

INVX2 _2554_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .Y(_799_)
);

BUFX2 _2134_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio[4])
);

NOR2X1 _3759_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .Y(\u_cpu.decode.co_rd_mem_en )
);

NAND2X1 _3339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_17_),
    .B(_16_),
    .Y(_12_)
);

NAND3X1 _4700_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rreg0[2]),
    .B(rf_rreq_bF$buf7),
    .C(_1872__bF$buf1),
    .Y(_2016_)
);

AOI21X1 _3092_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1657_),
    .B(_1658_),
    .C(rst_bF$buf7),
    .Y(_551_)
);

DFFPOSX1 _4297_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1117_),
    .CLK(i_clk_sys_ext_bF$buf44),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

FILL FILL_0__3972_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3552_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3132_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2783_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_596_),
    .CLK(i_clk_sys_ext_bF$buf22),
    .Q(\u_rf_if.read_buf1 [28])
);

INVX1 _2363_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.mem_if.o_wb_sel [0]),
    .Y(_1092_)
);

FILL FILL_0__4090_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3988_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [29]),
    .B(_887__bF$buf0),
    .Y(_918_)
);

NAND2X1 _3568_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2072_),
    .B(_2074_),
    .Y(_2075_)
);

NOR2X1 _3148_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreq),
    .B(rst_bF$buf7),
    .Y(_1702_)
);

FILL FILL_0__2403_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3608_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4251_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3781_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2839_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_500_),
    .CLK(i_clk_sys_ext_bF$buf25),
    .Q(\u_rf_if.rreg0_latched [3])
);

INVX1 _2419_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [21]),
    .Y(_1036_)
);

FILL FILL_0__4566_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4146_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2592_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rf_miso),
    .B(_287_),
    .C(_202_),
    .Y(_288_)
);

NAND2X1 _2172_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [16]),
    .B(_1377__bF$buf3),
    .Y(_1433_)
);

DFFPOSX1 _3797_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_362_),
    .CLK(i_clk_sys_ext_bF$buf30),
    .Q(\u_cpu.decode.opcode [1])
);

OAI21X1 _3377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [18]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_50_)
);

FILL FILL_0__2632_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3837_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3417_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4480_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3590_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3170_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2648_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_114_),
    .B(\u_rf_serial.last_req_key [4]),
    .Y(_235_)
);

OAI21X1 _2228_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf3 ),
    .B(_1297__bF$buf2),
    .C(_1308_),
    .Y(_1394_)
);

FILL FILL_1__3331_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1729_),
    .B(_1727_),
    .C(rst_bF$buf0),
    .Y(_575_)
);

FILL FILL_0__3226_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2877_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_512_),
    .CLK(i_clk_sys_ext_bF$buf35),
    .Q(\u_rf_if.issue_chunk [2])
);

INVX1 _2457_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_998_)
);

FILL FILL_0__4184_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2917_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1870_),
    .B(_1874_),
    .C(_1958_),
    .Y(_1959_)
);

FILL FILL_0__2250_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3875_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3616_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2686_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_207_),
    .B(_205_),
    .C(_202_),
    .Y(_208_)
);

NAND3X1 _2266_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(_1083_),
    .C(_1299_),
    .Y(_1368_)
);

FILL FILL_0__2726_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .B(_1548_),
    .Y(_1570_)
);

FILL FILL_0__3264_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2640_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4469_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3005_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2495_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [11]),
    .Y(_959_)
);

FILL FILL_0__2955_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2535_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [16]),
    .C(_1960__bF$buf3),
    .Y(_1980_)
);

NOR2X1 _4221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(_1243_),
    .Y(_1247_)
);

FILL FILL_1_CLKBUF1_insert113 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_CLKBUF1_insert117 (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3912_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [8]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .S(rf_rreq_bF$buf3),
    .Y(_725_)
);

AOI21X1 _3089_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1656_),
    .B(_1655_),
    .C(rst_bF$buf4),
    .Y(_550_)
);

FILL FILL_0__2764_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2344_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4450_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1484_),
    .CLK(i_clk_sys_ext_bF$buf40),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

OAI21X1 _4030_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf3),
    .B(_943_),
    .C(_945_),
    .Y(_880_)
);

FILL FILL_1__2925_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2505_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3721_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_367_),
    .Y(\u_cpu.state.i_alu_rd_sel1 )
);

AOI21X1 _3301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2054_),
    .B(_2111_),
    .C(rst_bF$buf3),
    .Y(_598_)
);

OAI21X1 _4506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf0),
    .B(_1894_),
    .C(_1895_),
    .Y(\u_cpu.decode.i_wb_rdt [4])
);

FILL FILL_1__3883_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4668_ (
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
    .A(_85_),
    .B(_289_),
    .C(_2122_),
    .Y(_290_)
);

NAND2X1 _2169_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [15]),
    .B(_1377__bF$buf3),
    .Y(_1435_)
);

NAND2X1 _3950_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_rs1_en ),
    .B(rdata0[0]),
    .Y(_892_)
);

NAND2X1 _3530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_31_),
    .B(_32_),
    .Y(\u_cpu.o_wdata0 )
);

OAI21X1 _3110_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1678_),
    .B(_1671_),
    .C(_39_),
    .Y(_1670_)
);

DFFSR _4735_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1839_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(ibus_pending_rdt[9])
);

AOI21X1 _4315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1500_),
    .B(_1503_),
    .C(\u_cpu.alu.i_cnt0 ),
    .Y(_1504_)
);

FILL FILL_0__2382_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2801_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_587_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf1 [19])
);

FILL FILL_1__2963_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2543_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3748_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2398_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_840_),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .C(\u_cpu.bufreg.i_shamt [2]),
    .D(_1048_),
    .Y(_1057_)
);

FILL FILL_0__2438_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4544_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [22]),
    .C(_1874_),
    .Y(_1921_)
);

AOI21X1 _4124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1163_),
    .B(_1166_),
    .C(_1156_),
    .Y(_1167_)
);

NAND2X1 _2610_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [0]),
    .B(_197_),
    .Y(_273_)
);

FILL FILL_0__3396_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3815_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf4),
    .B(_649_),
    .C(_652_),
    .Y(_621_)
);

FILL FILL142650x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2667_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _4353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1533_),
    .B(_1526_),
    .C(_1534_),
    .D(_1530_),
    .Y(_1468_)
);

FILL FILL142950x108150 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .B(\u_cpu.dbus_en ),
    .C(_139_),
    .Y(_143_)
);

OAI21X1 _3204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf3),
    .B(_1741_),
    .C(\u_rf_if.read_buf1 [11]),
    .Y(_1740_)
);

NAND2X1 _4409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .B(_1525__bF$buf3),
    .Y(_1568_)
);

FILL FILL_1__3786_ (
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

INVX1 _4582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[7]),
    .Y(_1946_)
);

INVX1 _4162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_1197_)
);

FILL FILL_0__4622_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2217_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3853_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_683_),
    .B(_684_),
    .C(_685_),
    .Y(_626_)
);

OAI21X1 _3433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .B(_350_),
    .C(_349_),
    .Y(_348_)
);

AOI21X1 _3013_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1602_),
    .B(_1603_),
    .C(rst_bF$buf0),
    .Y(_525_)
);

FILL FILL_1__2390_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert40 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert44 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert48 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1892_),
    .B(_1959__bF$buf4),
    .C(_1978_),
    .Y(_1830_)
);

AOI22X1 _4218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf6),
    .B(\u_mem_serial.shift_rx [21]),
    .C(_1167__bF$buf3),
    .D(_1244_),
    .Y(_1245_)
);

NAND2X1 _4391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .B(_1525__bF$buf4),
    .Y(_1556_)
);

NAND2X1 _2704_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_wdata [1]),
    .B(_105_),
    .Y(_193_)
);

MUX2X1 _3909_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [9]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .S(rf_rreq_bF$buf3),
    .Y(_723_)
);

FILL FILL142950x97350 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_160_),
    .B(_163_),
    .C(_158_),
    .Y(\u_cpu.cnt12to31 )
);

NOR3X1 _3242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2123_),
    .B(\u_rf_if.issue_chunk [2]),
    .C(_1807_),
    .Y(_1769_)
);

DFFPOSX1 _4447_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1495_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

NAND2X1 _4027_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [19]),
    .Y(_944_)
);

FILL FILL_0__3702_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2933_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [2]),
    .Y(_738_)
);

NOR2X1 _2513_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [1]),
    .B(_798_),
    .Y(_840_)
);

FILL FILL_0__4660_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4240_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3718_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_761_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.bit_count [6])
);

FILL FILL_1__4401_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3891_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(rf_rreq_bF$buf3),
    .Y(_711_)
);

OAI21X1 _3471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [10]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf3 ),
    .Y(_431_)
);

NAND3X1 _3051_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2055_),
    .B(_1686__bF$buf4),
    .C(_1763_),
    .Y(_1627_)
);

INVX1 _4676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[1]),
    .Y(_2000_)
);

OAI21X1 _4256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1270_),
    .B(_1159__bF$buf3),
    .C(_1272_),
    .Y(_1119_)
);

FILL FILL_0__3511_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4716_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2742_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_93_),
    .B(_92_),
    .Y(_94_)
);

AOI21X1 _2322_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1320_),
    .B(_1323_),
    .C(rst_bF$buf9),
    .Y(_748_)
);

NAND2X1 _3947_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(\u_cpu.bufreg.i_imm ),
    .Y(_889_)
);

NAND2X1 _3527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(_480_),
    .Y(_479_)
);

NOR2X1 _3107_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1669_),
    .Y(_1668_)
);

FILL FILL_1__4630_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf4),
    .B(_1802_),
    .C(\u_rf_if.read_buf1 [27]),
    .Y(_1801_)
);

MUX2X1 _4485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[6]),
    .B(\u_mem_serial.shift_rx [6]),
    .S(ibus_pending_ack_bF$buf0),
    .Y(_1882_)
);

DFFPOSX1 _4065_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_884_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.bufreg.data [14])
);

FILL FILL_0__3320_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2971_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [3]),
    .B(\u_rf_if.issue_sel_bF$buf1 ),
    .C(_1460_),
    .Y(_1459_)
);

NAND2X1 _2551_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count [3]),
    .B(_801_),
    .Y(_802_)
);

BUFX2 _2131_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio[7])
);

OAI21X1 _3756_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [1]),
    .B(\u_cpu.cond_branch ),
    .C(\u_cpu.branch_op ),
    .Y(\u_cpu.bufreg.i_rs1_en )
);

NAND2X1 _3336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf2 ),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_9_)
);

FILL FILL_1__3078_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4294_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1120_),
    .CLK(i_clk_sys_ext_bF$buf44),
    .Q(\u_cpu.bufreg2.dlo [12])
);

NAND2X1 _2607_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [6]),
    .B(_94_),
    .Y(_276_)
);

FILL FILL_0__4334_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3710_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x122550 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2780_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_535_),
    .CLK(i_clk_sys_ext_bF$buf22),
    .Q(\u_rf_if.read_buf0 [16])
);

INVX1 _2360_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.mem_if.o_wb_sel [2]),
    .Y(_1289_)
);

NAND2X1 _3985_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .B(_915_),
    .Y(_916_)
);

NAND2X1 _3565_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_sub ),
    .B(_2071_),
    .Y(_2072_)
);

INVX1 _3145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1700_),
    .Y(_1699_)
);

FILL FILL_0__3605_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2836_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_568_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.read_buf1 [3])
);

NAND2X1 _2416_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1038_),
    .B(_845_),
    .Y(_1039_)
);

FILL FILL_0__4563_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3794_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf2),
    .B(_379_),
    .C(_412_),
    .Y(_364_)
);

NOR2X1 _3374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [20]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .Y(_47_)
);

INVX1 _4579_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[8]),
    .Y(_1944_)
);

MUX2X1 _4159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [0]),
    .B(\u_cpu.bufreg2.dlo [1]),
    .S(mem_dbus_ack_bF$buf5),
    .Y(_1195_)
);

INVX1 _2645_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_wen ),
    .Y(_238_)
);

NAND2X1 _2225_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [30]),
    .B(_1377__bF$buf1),
    .Y(_1396_)
);

FILL FILL_0__4372_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4113_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_444_),
    .B(_1725_),
    .C(\u_rf_if.stream_active ),
    .Y(_1724_)
);

NAND2X1 _4388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .B(_1525__bF$buf4),
    .Y(_1554_)
);

FILL FILL_0__4008_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2874_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_547_),
    .CLK(i_clk_sys_ext_bF$buf15),
    .Q(\u_rf_if.read_buf0 [26])
);

AOI21X1 _2454_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_996_),
    .B(_1000_),
    .C(_808_),
    .Y(_1001_)
);

NAND2X1 _3659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.cnt0to3 ),
    .Y(_168_)
);

NAND3X1 _3239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .B(_2052_),
    .C(_2048_),
    .Y(_1767_)
);

NAND3X1 _4600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1948_),
    .B(rf_read_reg0[4]),
    .C(_1872__bF$buf2),
    .Y(_1957_)
);

OAI21X1 _4197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1149_),
    .B(\u_mem_serial.shift_rx [26]),
    .C(_1227_),
    .Y(_1228_)
);

FILL FILL_0__3452_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3032_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x97350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4657_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2683_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [4]),
    .B(_81_),
    .Y(_210_)
);

OAI21X1 _2263_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.req_pending ),
    .B(_1370_),
    .C(_1310_),
    .Y(_1371_)
);

MUX2X1 _3888_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(rf_rreq_bF$buf1),
    .Y(_709_)
);

INVX1 _3468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [1]),
    .Y(_428_)
);

NAND3X1 _3048_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1686__bF$buf2),
    .C(_1757_),
    .Y(_1625_)
);

INVX1 _2739_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_90_),
    .Y(_97_)
);

INVX1 _2319_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1325_),
    .Y(_1326_)
);

NAND3X1 _2492_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_798_),
    .B(_959_),
    .C(_961_),
    .Y(_962_)
);

DFFPOSX1 _3697_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_124_),
    .CLK(i_clk_sys_ext_bF$buf23),
    .Q(\u_cpu.state.cnt_r [1])
);

NOR2X1 _3277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1799_),
    .B(_2108__bF$buf1),
    .Y(_1798_)
);

FILL FILL_0__2952_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2532_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3737_ (
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

NAND2X1 _2968_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf1 ),
    .B(_1692_),
    .Y(_1457_)
);

NAND2X1 _2548_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_804_),
    .B(_801_),
    .Y(_805_)
);

BUFX2 _2128_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2118_),
    .Y(o_mem_sck)
);

FILL FILL_0__4695_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3651_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3231_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4016_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3086_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf1),
    .B(_2112_),
    .C(\u_rf_if.read_buf0 [31]),
    .Y(_1653_)
);

FILL FILL_0__2761_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3966_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3546_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3126_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2777_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_599_),
    .CLK(i_clk_sys_ext_bF$buf36),
    .Q(\u_rf_if.stream_cnt [0])
);

AOI21X1 _2357_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1287_),
    .B(_1290_),
    .C(_1291_),
    .Y(_1292_)
);

OAI21X1 _4503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf4),
    .B(_1892_),
    .C(_1893_),
    .Y(\u_cpu.decode.i_wb_rdt [18])
);

FILL FILL_1__3040_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2990_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142350x32550 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2586_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_197_),
    .B(_215__bF$buf0),
    .C(_202_),
    .Y(_292_)
);

NAND2X1 _2166_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [14]),
    .B(_1377__bF$buf0),
    .Y(_1437_)
);

FILL FILL_0__2626_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2206_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4732_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf2),
    .S(vdd),
    .D(_1842_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(ibus_pending_rdt[6])
);

INVX1 _4312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_utype ),
    .Y(_1501_)
);

FILL FILL_0__3584_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3164_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4369_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2395_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_796_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dhi [4]),
    .Y(_1060_)
);

NAND3X1 _4541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [23]),
    .C(_1874_),
    .Y(_1919_)
);

INVX1 _4121_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_1164_)
);

NAND2X1 _3812_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_cnt_done ),
    .B(_650_),
    .Y(_651_)
);

FILL FILL_0__4178_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3974_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3554_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2244_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4770_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1850_),
    .CLK(i_clk_sys_ext_bF$buf18),
    .Q(rf_read_reg1[3])
);

OAI21X1 _4350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1531_),
    .B(_1530_),
    .C(_1532_),
    .Y(_1467_)
);

FILL FILL143250x7350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3869_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2405_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.o_sh_done ),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_141_),
    .Y(_142_)
);

AOI21X1 _3201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1740_),
    .B(_1738_),
    .C(rst_bF$buf2),
    .Y(_579_)
);

NAND2X1 _4406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .B(_1525__bF$buf1),
    .Y(_1566_)
);

FILL FILL142950x129750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4568_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4148_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3678_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3258_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3419_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2489_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.bit_count_0_bF$buf2 ),
    .B(\u_mem_serial.bit_count [1]),
    .C(_800_),
    .Y(_965_)
);

OAI21X1 _3850_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.co_immdec_en [0]),
    .C(_664_),
    .Y(_683_)
);

OAI21X1 _3430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [21]),
    .B(_441__bF$buf0),
    .C(_440_),
    .Y(_345_)
);

AOI21X1 _3010_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1601_),
    .B(_1600_),
    .C(rst_bF$buf0),
    .Y(_524_)
);

FILL FILL_1_BUFX2_insert10 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert14 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert17 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_rx [19]),
    .C(_1960__bF$buf3),
    .Y(_1977_)
);

OAI21X1 _4215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1239_),
    .B(_1159__bF$buf4),
    .C(_1242_),
    .Y(_1108_)
);

FILL FILL_1__3592_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2282_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2701_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf2),
    .B(raddr[0]),
    .Y(_196_)
);

FILL FILL_0__3067_ (
    .gnd(gnd),
    .vdd(vdd)
);

MUX2X1 _3906_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [10]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .S(rf_rreq_bF$buf3),
    .Y(_721_)
);

FILL FILL_1__2443_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2298_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1342_),
    .C(_1303_),
    .Y(_1343_)
);

FILL FILL_0__2338_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4444_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1474_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

NAND2X1 _4024_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [19]),
    .B(_887__bF$buf4),
    .Y(_942_)
);

FILL FILL_1__4186_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2930_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [1]),
    .Y(_736_)
);

OAI21X1 _2510_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(_841_),
    .C(_842_),
    .Y(_843_)
);

DFFPOSX1 _3715_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_777_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [24])
);

FILL FILL_1__2252_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1997_),
    .B(_1959__bF$buf0),
    .C(_1998_),
    .Y(_1845_)
);

INVX1 _4253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [13]),
    .Y(_1270_)
);

FILL FILL_1__2728_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3944_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(\u_cpu.bufreg.data [0]),
    .Y(\u_cpu.alu.i_buf )
);

INVX1 _3524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .Y(_476_)
);

NAND2X1 _3104_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.pending_read ),
    .B(_1669_),
    .Y(_1665_)
);

DFFPOSX1 _4729_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_541_),
    .CLK(i_clk_sys_ext_bF$buf36),
    .Q(\u_rf_if.stream_cnt [4])
);

NAND2X1 _4309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_pc_rel ),
    .B(\u_cpu.ctrl.pc ),
    .Y(_1498_)
);

FILL FILL_1__3266_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2376_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861__bF$buf3),
    .B(_1879_),
    .C(_1880_),
    .Y(\u_cpu.decode.i_wb_rdt [12])
);

DFFPOSX1 _4062_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_873_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

FILL FILL_0__4522_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4102_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3753_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.cond_branch ),
    .B(_381_),
    .Y(\u_cpu.ctrl.i_jal_or_jalr )
);

AOI22X1 _3333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [3]),
    .B(_7_),
    .C(_15_),
    .D(_18_),
    .Y(_6_)
);

FILL FILL_1__2290_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [20]),
    .C(_1874_),
    .Y(_1917_)
);

NAND2X1 _4118_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1161_)
);

FILL FILL_0__2185_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4291_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1123_),
    .CLK(i_clk_sys_ext_bF$buf37),
    .Q(\u_cpu.bufreg2.dlo [9])
);

NAND2X1 _2604_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_227_),
    .B(_159_),
    .Y(_279_)
);

MUX2X1 _3809_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .B(rreg1[0]),
    .S(\u_cpu.decode.co_immdec_ctrl [0]),
    .Y(_648_)
);

INVX1 _3982_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_cnt1 ),
    .Y(_913_)
);

NOR2X1 _3562_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.add_cy_r ),
    .B(rdata0[0]),
    .Y(_2069_)
);

NOR2X1 _3142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [3]),
    .B(_1697_),
    .Y(_1696_)
);

DFFSR _4767_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1853_),
    .CLK(i_clk_sys_ext_bF$buf18),
    .Q(rf_read_reg1[0])
);

INVX1 _4347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_1531_)
);

DFFPOSX1 _2833_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_490_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.o_waddr [1])
);

OAI21X1 _2413_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1022_),
    .B(_1041_),
    .C(_1007_),
    .Y(_1042_)
);

FILL FILL_0__3199_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4140_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_en ),
    .Y(_139_)
);

NAND2X1 _3791_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.decode.i_wb_rdt [6]),
    .Y(_411_)
);

OAI21X1 _3371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [22]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf0 ),
    .Y(_44_)
);

INVX1 _4576_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[9]),
    .Y(_1942_)
);

OAI21X1 _4156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1191_),
    .B(_1190_),
    .C(_1166_),
    .Y(_1192_)
);

FILL FILL_0__3831_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4616_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2642_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.req_seen ),
    .B(_240_),
    .C(_239_),
    .Y(_241_)
);

NAND2X1 _2222_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [25]),
    .B(_1377__bF$buf1),
    .Y(_1398_)
);

MUX2X1 _3847_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [24]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .S(rf_rreq_bF$buf3),
    .Y(_681_)
);

OAI22X1 _3427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_346_),
    .B(_345_),
    .C(_344_),
    .D(_343_),
    .Y(_342_)
);

AOI21X1 _3007_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1599_),
    .B(_1598_),
    .C(rst_bF$buf0),
    .Y(_523_)
);

FILL FILL_1__4530_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf2),
    .B(_1730_),
    .C(\u_rf_if.read_buf1 [6]),
    .Y(_1722_)
);

FILL FILL_0__2699_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2279_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .B(_1525__bF$buf2),
    .Y(_1552_)
);

FILL FILL_0__3220_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4005_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2871_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_549_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.ready_pulse )
);

OAI22X1 _2451_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_806_),
    .B(_1003_),
    .C(_807_),
    .D(_1002_),
    .Y(_1004_)
);

INVX1 _3656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_166_),
    .Y(\u_cpu.cnt2 )
);

OAI21X1 _3236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf3),
    .B(_1765_),
    .C(\u_rf_if.read_buf1 [19]),
    .Y(_1764_)
);

FILL FILL_0__2911_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1224_),
    .B(_1223_),
    .C(_1131_),
    .Y(_1225_)
);

NOR2X1 _2927_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.i_rreq ),
    .B(\u_rf_if.rreg0_latched [0]),
    .Y(_734_)
);

INVX1 _2507_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [13]),
    .Y(_846_)
);

FILL FILL_0__4234_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2680_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_209_),
    .B(_211_),
    .C(_212_),
    .Y(_54_)
);

AOI21X1 _2260_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1369_),
    .B(_1373_),
    .C(rst_bF$buf9),
    .Y(_760_)
);

MUX2X1 _3885_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(rf_rreq_bF$buf1),
    .Y(_707_)
);

NOR2X1 _3465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [3]),
    .B(_441__bF$buf2),
    .Y(_425_)
);

NAND3X1 _3045_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1686__bF$buf2),
    .C(_1754_),
    .Y(_1623_)
);

FILL FILL_0__2720_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2300_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2736_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_91_),
    .B(_73_),
    .C(_99_),
    .Y(_100_)
);

OAI21X1 _2316_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [9]),
    .Y(_1328_)
);

FILL FILL_0__4463_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4043_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2898_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2478_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3694_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_126_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.state.init_done )
);

OAI21X1 _3274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf4),
    .B(_1802_),
    .C(\u_rf_if.read_buf1 [26]),
    .Y(_1796_)
);

INVX1 _4479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1878_),
    .Y(\u_cpu.decode.i_wb_rdt [14])
);

DFFPOSX1 _4059_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_858_),
    .CLK(i_clk_sys_ext_bF$buf14),
    .Q(\u_cpu.bufreg.data [8])
);

FILL FILL_0__3314_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4519_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2965_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .B(_1456_),
    .C(_1455_),
    .Y(_510_)
);

NAND2X1 _2545_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_806_),
    .B(_807_),
    .Y(_808_)
);

BUFX2 _2125_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2121_),
    .Y(o_rf_sck)
);

FILL FILL_0__4272_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3083_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf1),
    .B(_1802_),
    .C(\u_rf_if.read_buf0 [26]),
    .Y(_1650_)
);

DFFPOSX1 _4288_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1094_),
    .CLK(i_clk_sys_ext_bF$buf44),
    .Q(\u_cpu.bufreg2.dlo [6])
);

FILL FILL_0__4328_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3704_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2774_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_486_),
    .CLK(i_clk_sys_ext_bF$buf24),
    .Q(\u_rf_if.wdata1_r [0])
);

OR2X2 _2354_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1294_),
    .B(_1046_),
    .Y(_1295_)
);

FILL FILL_0__4081_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3979_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf3 ),
    .B(_909_),
    .C(_910_),
    .Y(_864_)
);

NAND3X1 _3559_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.mem_if.signbit ),
    .B(_2042_),
    .C(_2044_),
    .Y(_2047_)
);

AOI21X1 _3139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1698_),
    .B(_1694_),
    .C(_1701_),
    .Y(_561_)
);

OAI21X1 _4500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1890_),
    .B(rf_rreq_bF$buf5),
    .C(_1891_),
    .Y(rf_read_reg1_to_if[1])
);

INVX1 _4097_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [16]),
    .Y(_1142_)
);

FILL FILL_0__3352_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4557_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2583_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_237_),
    .B(_215__bF$buf1),
    .C(_293_),
    .Y(_70_)
);

NAND2X1 _2163_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [13]),
    .B(_1377__bF$buf1),
    .Y(_1439_)
);

FILL FILL_1__4718_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3788_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf2),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_409_),
    .Y(_361_)
);

AOI21X1 _3368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_48_),
    .B(_42_),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_41_)
);

FILL FILL_0__3408_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3581_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2639_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf1),
    .B(raddr[8]),
    .Y(_244_)
);

NAND2X1 _2219_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [24]),
    .B(_1377__bF$buf0),
    .Y(_1400_)
);

OAI21X1 _2392_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1055_),
    .B(_1062_),
    .C(_1007_),
    .Y(_1063_)
);

INVX1 _3597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_en ),
    .Y(_2102_)
);

NOR2X1 _3177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf7),
    .B(_479__bF$buf1),
    .Y(_572_)
);

FILL FILL_0__2432_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3637_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3390_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2868_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_514_),
    .CLK(i_clk_sys_ext_bF$buf25),
    .Q(\u_rf_if.rreg1_latched [0])
);

AND2X2 _2448_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_833_),
    .B(_831_),
    .Y(_1007_)
);

FILL FILL_0__4595_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4175_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4336_ (
    .gnd(gnd),
    .vdd(vdd)
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

NOR2X1 _2677_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [0]),
    .B(_208_),
    .Y(_56_)
);

OAI21X1 _2257_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf1),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [30]),
    .Y(_1375_)
);

FILL FILL_0__2717_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4403_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .B(_1525__bF$buf1),
    .Y(_1564_)
);

FILL FILL_0__2890_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2470_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2486_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf5 ),
    .B(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_968_)
);

FILL FILL_0__2946_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2526_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4632_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1888_),
    .B(_1959__bF$buf4),
    .C(_1975_),
    .Y(_1827_)
);

INVX1 _4212_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [23]),
    .Y(_1240_)
);

FILL FILL_1__4374_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3484_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3903_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_656_),
    .B(rreg1[1]),
    .C(_700_),
    .Y(_719_)
);

FILL FILL_1__2440_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4689_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3645_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2295_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [4]),
    .B(_1297__bF$buf1),
    .Y(_1345_)
);

FILL FILL_0__2755_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4441_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1475_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

INVX1 _4021_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [20]),
    .Y(_940_)
);

FILL FILL_0__3293_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3712_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_764_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [29])
);

FILL FILL_1__3454_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2984_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4670_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1995_),
    .B(_1959__bF$buf0),
    .C(_1996_),
    .Y(_1844_)
);

FILL FILL_0__2144_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _4250_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_1260_),
    .Y(_1268_)
);

FILL FILL_0__4710_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2305_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3941_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_638_),
    .CLK(i_clk_sys_ext_bF$buf34),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

NAND3X1 _3521_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_476_),
    .B(_475_),
    .C(_474_),
    .Y(_473_)
);

OAI21X1 _3101_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1665_),
    .B(_1666_),
    .C(_27__bF$buf2),
    .Y(_1663_)
);

DFFPOSX1 _4726_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_58_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.last_req_key [6])
);

DFFPOSX1 _4306_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1108_),
    .CLK(i_clk_sys_ext_bF$buf37),
    .Q(\u_cpu.bufreg2.dlo [22])
);

FILL FILL_1__3683_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2389_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_966_),
    .B(_1064_),
    .C(_1065_),
    .Y(_1066_)
);

NOR2X1 _3750_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_396_)
);

AOI21X1 _3330_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .B(\u_rf_if.issue_chunk [0]),
    .C(\u_rf_if.issue_chunk [1]),
    .Y(_3_)
);

NAND2X1 _4535_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [20]),
    .B(_1861__bF$buf0),
    .Y(_1915_)
);

NAND3X1 _4115_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shift_op ),
    .B(_1155_),
    .C(_1157_),
    .Y(_1158_)
);

FILL FILL_1__3492_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2601_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_250_),
    .B(_281_),
    .C(_233_),
    .Y(_282_)
);

FILL FILL142350x122550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3387_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3806_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_353_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.decode.co_mem_word )
);

FILL FILL142950x115350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3128_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2198_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [23]),
    .Y(_1415_)
);

FILL FILL_0__2238_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4764_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1856_),
    .CLK(i_clk_sys_ext_bF$buf22),
    .Q(rf_read_reg0[1])
);

INVX1 _4344_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_1529_)
);

FILL FILL_1__4086_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2830_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_572_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_rf_if.rtrig1 )
);

NAND3X1 _2410_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_830_),
    .B(_1044_),
    .C(_832_),
    .Y(_1045_)
);

NOR2X1 _3615_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_137_)
);

INVX1 _4573_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[10]),
    .Y(_1940_)
);

INVX1 _4153_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_1189_)
);

FILL FILL_1__2628_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3844_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .B(_678_),
    .Y(_679_)
);

OAI21X1 _3424_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_356_),
    .B(_340_),
    .C(\u_rf_if.stream_cnt [4]),
    .Y(_339_)
);

NOR2X1 _3004_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_9_),
    .B(_1597_),
    .Y(_1596_)
);

NAND3X1 _4629_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [22]),
    .C(_1960__bF$buf4),
    .Y(_1974_)
);

MUX2X1 _4209_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1237_),
    .B(\u_mem_serial.shift_rx [24]),
    .S(_1149_),
    .Y(_1238_)
);

FILL FILL_1__3166_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4382_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .B(_1525__bF$buf2),
    .Y(_1550_)
);

FILL FILL_0__4422_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3653_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_791_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_rx [15])
);

AOI21X1 _3233_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1762_),
    .B(_1764_),
    .C(rst_bF$buf2),
    .Y(_587_)
);

FILL FILL_1__2190_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4438_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1494_),
    .CLK(i_clk_sys_ext_bF$buf16),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

OAI21X1 _4018_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(_937_),
    .C(_938_),
    .Y(_875_)
);

OAI21X1 _4191_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1201_),
    .B(_1221_),
    .C(_1222_),
    .Y(_1104_)
);

OAI21X1 _2924_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1677_),
    .B(_1673_),
    .C(_39_),
    .Y(_732_)
);

NAND2X1 _2504_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_848_),
    .B(_845_),
    .Y(_849_)
);

FILL FILL_0__4651_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3709_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_765_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [28])
);

MUX2X1 _3882_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(rf_rreq_bF$buf1),
    .Y(_705_)
);

NOR2X1 _3462_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_423_),
    .Y(_422_)
);

NAND3X1 _3042_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf2),
    .B(_1686__bF$buf3),
    .C(_1750_),
    .Y(_1621_)
);

OAI21X1 _4667_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1993_),
    .B(_1959__bF$buf0),
    .C(_1994_),
    .Y(_1843_)
);

NAND3X1 _4247_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_1205_),
    .C(_1193_),
    .Y(_1266_)
);

FILL FILL_0__3502_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2733_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [7]),
    .B(_91_),
    .Y(_103_)
);

NAND3X1 _2313_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1330_),
    .C(_1303_),
    .Y(_1331_)
);

FILL FILL_0__3099_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3938_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_641_),
    .CLK(i_clk_sys_ext_bF$buf18),
    .Q(rreg1[2])
);

INVX1 _3518_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata0_next [0]),
    .Y(_470_)
);

FILL FILL_1__4201_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3691_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_128_),
    .CLK(i_clk_sys_ext_bF$buf23),
    .Q(\u_cpu.state.cnt_r [0])
);

INVX1 _3271_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_8_),
    .Y(_1793_)
);

INVX1 _4476_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[14]),
    .Y(_1876_)
);

DFFPOSX1 _4056_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_861_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.bufreg.data [5])
);

FILL FILL_0__3731_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2962_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[5]),
    .B(_1668_),
    .C(_27__bF$buf2),
    .Y(_1452_)
);

NOR2X1 _2542_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .B(_810_),
    .Y(_811_)
);

OAI21X1 _3747_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_381_),
    .B(\u_cpu.bufreg.i_imm_en ),
    .C(_387_),
    .Y(\u_cpu.decode.co_immdec_en [2])
);

NAND2X1 _3327_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_7_),
    .B(_1_),
    .Y(_0_)
);

OAI21X1 _3080_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf1),
    .B(_1790_),
    .C(\u_rf_if.read_buf0 [25]),
    .Y(_1647_)
);

FILL FILL_0__2179_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4285_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1097_),
    .CLK(i_clk_sys_ext_bF$buf43),
    .Q(\u_cpu.bufreg2.dlo [3])
);

FILL FILL_0__3540_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3120_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2771_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_538_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.read_buf0 [19])
);

INVX1 _2351_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [0]),
    .Y(_1296_)
);

OAI21X1 _3976_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf0),
    .B(_906_),
    .C(_908_),
    .Y(_863_)
);

AND2X2 _3556_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.mem_if.signbit ),
    .B(\u_cpu.decode.co_mem_signed ),
    .Y(_2045_)
);

OAI21X1 _3136_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[2]),
    .B(_1693_),
    .C(_27__bF$buf3),
    .Y(_1691_)
);

NAND3X1 _4094_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1131_),
    .B(_1136_),
    .C(_1139_),
    .Y(_1140_)
);

DFFPOSX1 _2827_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_574_),
    .CLK(i_clk_sys_ext_bF$buf36),
    .Q(\u_rf_if.stream_active )
);

NOR2X1 _2407_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_798_),
    .B(_799_),
    .Y(_1048_)
);

FILL FILL142950x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4134_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2580_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_109_),
    .B(_208_),
    .Y(_72_)
);

NAND2X1 _2160_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [12]),
    .B(_1377__bF$buf0),
    .Y(_1441_)
);

NAND2X1 _3785_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.decode.i_wb_rdt [5]),
    .Y(_408_)
);

INVX2 _3365_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_wreq),
    .Y(_39_)
);

FILL FILL_0__2200_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3825_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _2636_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_119_),
    .B(\u_rf_serial.last_req_key [3]),
    .Y(_247_)
);

OAI21X1 _2216_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1376_),
    .B(_1368_),
    .C(_1401_),
    .Y(_1402_)
);

FILL FILL_0__4363_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2378_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3594_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2098_),
    .B(_2099_),
    .Y(_2100_)
);

OAI21X1 _3174_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf3),
    .B(_1720_),
    .C(\u_rf_if.read_buf1 [5]),
    .Y(_1719_)
);

OAI21X1 _4379_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1546_),
    .B(_1530_),
    .C(_1547_),
    .Y(_1481_)
);

FILL FILL_0__3214_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2865_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_497_),
    .CLK(i_clk_sys_ext_bF$buf35),
    .Q(\u_rf_if.rreg0_latched [0])
);

NOR2X1 _2445_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [19]),
    .Y(_1010_)
);

FILL FILL_1__2187_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4188_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1149_),
    .B(_1216_),
    .C(_1219_),
    .Y(_1220_)
);

FILL FILL_0__4228_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2674_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_104_),
    .B(_215__bF$buf2),
    .C(_202_),
    .Y(_216_)
);

NAND2X1 _2254_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [29]),
    .B(_1377__bF$buf0),
    .Y(_1378_)
);

MUX2X1 _3879_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(rf_rreq_bF$buf4),
    .Y(_703_)
);

OAI21X1 _3459_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [6]),
    .B(_440_),
    .C(_441__bF$buf2),
    .Y(_419_)
);

NAND3X1 _3039_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1686__bF$buf3),
    .B(_1750_),
    .C(_2055_),
    .Y(_1619_)
);

NAND2X1 _4400_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .B(_1525__bF$buf3),
    .Y(_1562_)
);

FILL FILL_0__3672_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3252_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4457_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4037_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3833_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2483_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [8]),
    .Y(_971_)
);

FILL FILL_1__4618_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3688_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_160_),
    .B(_184_),
    .C(_156_),
    .Y(_186_)
);

NAND2X1 _3268_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf0),
    .B(_1791_),
    .Y(_1790_)
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

OAI21X1 _2959_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [0]),
    .B(\u_rf_if.issue_sel_bF$buf0 ),
    .C(_1451_),
    .Y(_1450_)
);

OAI21X1 _2539_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .B(_810_),
    .C(_798_),
    .Y(_814_)
);

MUX2X1 _3900_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.i_wb_rdt [21]),
    .B(rreg1[2]),
    .S(rf_rreq_bF$buf3),
    .Y(_717_)
);

AOI21X1 _2292_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1344_),
    .B(_1347_),
    .C(rst_bF$buf8),
    .Y(_754_)
);

INVX1 _3497_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wen1_r ),
    .Y(_454_)
);

OAI21X1 _3077_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf4),
    .B(_2112_),
    .C(\u_rf_if.read_buf1 [31]),
    .Y(_1645_)
);

FILL FILL_0__2332_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3957_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3537_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2913_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2768_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_509_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(raddr[5])
);

AND2X2 _2348_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1298_),
    .B(_1044_),
    .Y(_1299_)
);

FILL FILL_1__3871_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4236_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3346_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2302_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3507_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2997_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1591_),
    .B(_1592_),
    .C(rst_bF$buf2),
    .Y(_520_)
);

DFFPOSX1 _2577_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_66_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.last_req_key [1])
);

DFFPOSX1 _2157_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_751_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_rx [8])
);

FILL FILL_0__2617_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4723_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(vdd),
    .S(i_rst_n_bF$buf5),
    .D(_1847_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(ibus_pending_rdt[1])
);

DFFPOSX1 _4303_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1111_),
    .CLK(i_clk_sys_ext_bF$buf31),
    .Q(\u_cpu.bufreg2.dlo [19])
);

FILL FILL_1__3680_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x36150 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4465_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3995_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3575_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3155_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3316_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2386_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_1068_),
    .C(_1067_),
    .Y(_1069_)
);

FILL FILL_0__2426_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4532_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [15]),
    .C(_1874_),
    .Y(_1913_)
);

NOR2X1 _4112_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1155_)
);

FILL FILL_1__4274_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3803_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_753_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_rx [6])
);

FILL FILL_1__2340_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4589_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4169_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2195_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf4),
    .B(_1304__bF$buf2),
    .C(\u_mem_serial.shift_rx [22]),
    .Y(_1417_)
);

FILL FILL142650x82950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2655_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4761_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1859_),
    .CLK(i_clk_sys_ext_bF$buf19),
    .Q(current_wdata0_next_hint)
);

NOR2X1 _4341_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf5),
    .B(_1506_),
    .Y(_1527_)
);

FILL FILL_1__4083_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142950x136950 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3193_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3612_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.state.cnt_r [3]),
    .Y(_135_)
);

FILL FILL_1__3354_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4570_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[11]),
    .Y(_1938_)
);

NOR2X1 _4150_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1183_),
    .Y(_1187_)
);

FILL FILL_0__3249_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3841_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_657_),
    .B(_675_),
    .C(_656_),
    .Y(_676_)
);

NAND2X1 _3421_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [1]),
    .B(\u_rf_if.stream_cnt_0_bF$buf3 ),
    .Y(_337_)
);

NOR2X1 _3001_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1594_),
    .Y(_1593_)
);

OAI21X1 _4626_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1900_),
    .B(_1959__bF$buf4),
    .C(_1972_),
    .Y(_1824_)
);

NAND3X1 _4206_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(_1205_),
    .C(_1193_),
    .Y(_1235_)
);

FILL FILL_0__2273_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3898_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3639_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142650x122550 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2289_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1349_),
    .Y(_1350_)
);

NAND2X1 _3650_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_163_),
    .B(_135_),
    .Y(_164_)
);

AOI21X1 _3230_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1760_),
    .B(_1761_),
    .C(rst_bF$buf2),
    .Y(_586_)
);

FILL FILL_0__2749_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4435_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1478_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

OAI21X1 _4015_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf3),
    .B(_926_),
    .C(_936_),
    .Y(_874_)
);

FILL FILL_1__3392_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2921_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_731_),
    .B(_730_),
    .Y(_496_)
);

NAND2X1 _2501_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_799_),
    .B(_795_),
    .Y(_852_)
);

FILL FILL_0__3287_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3706_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_780_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(mem_dbus_ack)
);

FILL FILL_1__2663_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3028_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2978_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2558_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4664_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1991_),
    .B(_1959__bF$buf0),
    .C(_1992_),
    .Y(_1842_)
);

FILL FILL_0__2138_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _4244_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [23]),
    .C(_1167__bF$buf3),
    .D(_1263_),
    .Y(_1264_)
);

FILL FILL_0__4704_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2730_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_105_),
    .B(_104_),
    .Y(_106_)
);

NAND2X1 _2310_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [7]),
    .B(_1297__bF$buf3),
    .Y(_1333_)
);

DFFPOSX1 _3935_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_644_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3])
);

INVX1 _3515_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.wdata1_phase [0]),
    .Y(_467_)
);

FILL FILL_0__2367_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _4473_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1867_),
    .B(_1868_),
    .C(rf_write_drain_busy),
    .Y(_1874_)
);

DFFPOSX1 _4053_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_864_),
    .CLK(i_clk_sys_ext_bF$buf27),
    .Q(\u_cpu.bufreg.data [2])
);

FILL FILL_0__4513_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2948_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2528_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3744_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(_391_),
    .Y(_392_)
);

OAI21X1 _3324_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2123_),
    .B(_9_),
    .C(_2116_),
    .Y(_2114_)
);

NAND2X1 _4529_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(ibus_pending_rdt[0]),
    .Y(_1911_)
);

AND2X2 _4109_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [0]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_1152_)
);

FILL FILL_0__2596_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _4282_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1100_),
    .CLK(i_clk_sys_ext_bF$buf17),
    .Q(\u_cpu.bufreg2.dlo [0])
);

NAND2X1 _3973_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf2 ),
    .B(\u_cpu.bufreg.data [5]),
    .Y(_907_)
);

NOR2X1 _3553_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .B(gnd),
    .Y(_2042_)
);

OAI21X1 _3133_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[1]),
    .B(_1693_),
    .C(_27__bF$buf3),
    .Y(_1689_)
);

DFFSR _4758_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1816_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(ibus_pending_rdt[28])
);

INVX1 _4338_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_1524_)
);

INVX1 _4091_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_1137_)
);

DFFPOSX1 _2824_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_524_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.read_buf0 [7])
);

NAND3X1 _2404_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_966_),
    .B(_1050_),
    .C(_1049_),
    .Y(_1051_)
);

FILL FILL_0__4551_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3609_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.init_done ),
    .B(gnd),
    .Y(_133_)
);

FILL FILL_1__2986_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3782_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf0),
    .B(_373_),
    .C(_406_),
    .Y(_358_)
);

NOR2X1 _3362_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_37_)
);

INVX1 _4567_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[19]),
    .Y(_1936_)
);

AOI22X1 _4147_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [2]),
    .C(_1167__bF$buf2),
    .D(_1184_),
    .Y(_1185_)
);

FILL FILL142950x57750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3402_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4607_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2633_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_236_),
    .B(_242_),
    .C(_249_),
    .Y(_250_)
);

NAND2X1 _2213_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [23]),
    .B(_1377__bF$buf2),
    .Y(_1404_)
);

NAND2X1 _3838_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_immdec_ctrl [2]),
    .B(_663_),
    .Y(_673_)
);

NAND2X1 _3418_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [3]),
    .B(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .Y(_334_)
);

AOI21X1 _3591_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2096_),
    .B(_2093_),
    .C(\u_cpu.alu.i_cmp_eq ),
    .Y(_2097_)
);

OAI21X1 _3171_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf2),
    .B(_1720_),
    .C(\u_rf_if.read_buf1 [4]),
    .Y(_1717_)
);

INVX1 _4376_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_1546_)
);

FILL FILL_0__3631_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2862_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_515_),
    .CLK(i_clk_sys_ext_bF$buf21),
    .Q(\u_rf_if.read_buf0 [0])
);

INVX1 _2442_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [16]),
    .Y(_1013_)
);

DFFPOSX1 _3647_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_781_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_rx [23])
);

NOR2X1 _3227_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1788_),
    .B(_1811_),
    .Y(_1757_)
);

FILL FILL_0__2902_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2499_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4185_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_1217_)
);

FILL FILL_0__3860_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3440_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2918_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_620_),
    .B(_730_),
    .Y(_495_)
);

FILL FILL_0__4645_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2671_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_94_),
    .B(_215__bF$buf0),
    .C(_202_),
    .Y(_218_)
);

INVX1 _2251_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.o_dbus_cyc ),
    .Y(_1380_)
);

AOI21X1 _3876_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_656_),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .C(_700_),
    .Y(_701_)
);

OAI22X1 _3456_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_420_),
    .B(_419_),
    .C(_418_),
    .D(_417_),
    .Y(_416_)
);

NAND3X1 _3036_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf0),
    .B(_1686__bF$buf2),
    .C(_1810_),
    .Y(_1617_)
);

FILL FILL_0__2711_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2727_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_83_),
    .Y(_109_)
);

AOI21X1 _2307_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1332_),
    .B(_1335_),
    .C(rst_bF$buf9),
    .Y(_751_)
);

NAND2X1 _2480_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_973_),
    .B(_840_),
    .Y(_974_)
);

OAI21X1 _3685_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_160_),
    .B(_184_),
    .C(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_185_)
);

NOR3X1 _3265_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_1788_),
    .C(_1811_),
    .Y(_1787_)
);

FILL FILL_0__2940_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2520_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2956_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[3]),
    .Y(_1448_)
);

MUX2X1 _2536_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .B(\u_cpu.bufreg.data [4]),
    .S(\u_mem_serial.active_ibus_bF$buf0 ),
    .Y(_817_)
);

FILL FILL_0__4683_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4263_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3494_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.o_wdata0 ),
    .Y(_452_)
);

OAI21X1 _3074_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf4),
    .B(_1790_),
    .C(\u_rf_if.read_buf0 [24]),
    .Y(_1643_)
);

NAND3X1 _4699_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[2]),
    .B(_1948_),
    .C(_1872__bF$buf2),
    .Y(_2015_)
);

DFFPOSX1 _4279_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1103_),
    .CLK(i_clk_sys_ext_bF$buf17),
    .Q(\u_cpu.bufreg2.dhi [4])
);

FILL FILL_0__3114_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4319_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2765_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[8]),
    .Y(_73_)
);

OAI21X1 _2345_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1044_),
    .B(_1298_),
    .C(_1301_),
    .Y(_1302_)
);

FILL FILL_0__4492_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4653_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _4088_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(\u_cpu.bufreg.i_shamt [2]),
    .Y(_1134_)
);

FILL FILL_0__3763_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3343_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3504_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2994_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1589_),
    .B(_1590_),
    .C(rst_bF$buf2),
    .Y(_519_)
);

DFFPOSX1 _2574_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_55_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_serial.tx_state [1])
);

DFFPOSX1 _2154_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_772_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.bit_count [0])
);

NAND2X1 _3779_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf0),
    .B(\u_cpu.decode.i_wb_rdt [14]),
    .Y(_405_)
);

NAND2X1 _3359_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_35_),
    .Y(_34_)
);

OAI21X1 _4720_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2027_),
    .B(_2031_),
    .C(_2023_),
    .Y(_1859_)
);

DFFPOSX1 _4300_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1114_),
    .CLK(i_clk_sys_ext_bF$buf31),
    .Q(\u_cpu.bufreg2.dlo [16])
);

FILL FILL_0__4357_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x57750 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3733_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI22X1 _2383_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [11]),
    .B(_796_),
    .C(_840_),
    .D(\u_cpu.bufreg2.dlo [8]),
    .Y(_1072_)
);

INVX1 _3588_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2093_),
    .Y(_2094_)
);

NAND2X1 _3168_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108__bF$buf3),
    .B(_1766_),
    .Y(_1715_)
);

FILL FILL_0__3628_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3208_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4691_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3381_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2859_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_556_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.wdata0_next_phase )
);

NAND2X1 _2439_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1015_),
    .B(_840_),
    .Y(_1016_)
);

DFFPOSX1 _3800_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_774_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [26])
);

FILL FILL_0__4586_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3962_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3542_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2192_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf1),
    .Y(_1419_)
);

OAI22X1 _3397_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_317_),
    .B(_316_),
    .C(_315_),
    .D(_314_),
    .Y(_313_)
);

FILL FILL_0__3017_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2668_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_111_),
    .Y(_220_)
);

OAI21X1 _2248_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf3),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [29]),
    .Y(_1382_)
);

FILL FILL_0__4395_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert221 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert224 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert228 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4136_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2461_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3666_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2202_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2897_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1_to_if[3]),
    .B(_1693_),
    .C(_27__bF$buf1),
    .Y(_609_)
);

OAI21X1 _2477_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_851_),
    .B(_976_),
    .C(_834_),
    .Y(_977_)
);

OAI21X1 _4623_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1863_),
    .B(_1971_),
    .C(_1869_),
    .Y(_1822_)
);

MUX2X1 _4203_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1232_),
    .B(\u_mem_serial.shift_rx [25]),
    .S(_1149_),
    .Y(_1233_)
);

FILL FILL_0__2690_ (
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

FILL FILL_1__3216_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2286_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf2),
    .B(_1304__bF$buf4),
    .C(\u_mem_serial.shift_rx [3]),
    .Y(_1352_)
);

DFFPOSX1 _4432_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1488_),
    .CLK(i_clk_sys_ext_bF$buf40),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

NOR2X1 _4012_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_934_),
    .B(_915_),
    .Y(_935_)
);

INVX1 _3703_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_367_)
);

FILL FILL_1__2240_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2975_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2555_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4661_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1946_),
    .B(_1959__bF$buf1),
    .C(_1990_),
    .Y(_1841_)
);

AOI22X1 _4241_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [15]),
    .C(_1167__bF$buf0),
    .D(_1261_),
    .Y(_1262_)
);

FILL FILL_0__4701_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3093_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3932_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_647_),
    .CLK(i_clk_sys_ext_bF$buf19),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0])
);

OAI21X1 _3512_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_467_),
    .B(_466_),
    .C(_465_),
    .Y(_464_)
);

NAND3X1 _4717_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1882_),
    .B(_1885_),
    .C(\u_cpu.i_ibus_rdt [1]),
    .Y(_2029_)
);

FILL FILL_1__3254_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4039_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4470_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1863_),
    .B(_1871_),
    .C(_1869_),
    .Y(_1872_)
);

DFFPOSX1 _4050_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_867_),
    .CLK(i_clk_sys_ext_bF$buf37),
    .Q(\u_cpu.bufreg.data [30])
);

FILL FILL_0__3989_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3569_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3149_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3741_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_371_),
    .Y(_390_)
);

OAI21X1 _3321_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf4),
    .B(_2112_),
    .C(\u_rf_if.read_buf1 [30]),
    .Y(_2111_)
);

NAND2X1 _4526_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf1),
    .B(ibus_pending_rdt[5]),
    .Y(_1909_)
);

INVX2 _4106_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf3),
    .Y(_1149_)
);

FILL FILL_1__3063_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142950x122550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2173_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3959_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2189_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1420_),
    .B(_1419_),
    .C(_1421_),
    .Y(_783_)
);

NAND2X1 _3970_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [5]),
    .B(_887__bF$buf1),
    .Y(_905_)
);

INVX1 _3550_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bne_or_bge ),
    .Y(_2039_)
);

OAI21X1 _3130_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf1),
    .B(_2112_),
    .C(\u_rf_if.read_buf0 [30]),
    .Y(_1687_)
);

FILL FILL_0__2649_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2229_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4755_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1819_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(ibus_pending_rdt[25])
);

NAND2X1 _4335_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1521_),
    .B(_1519_),
    .Y(_1522_)
);

DFFPOSX1 _2821_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_577_),
    .CLK(i_clk_sys_ext_bF$buf32),
    .Q(\u_rf_if.read_buf1 [9])
);

NAND3X1 _2401_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_805_),
    .B(_1052_),
    .C(_1053_),
    .Y(_1054_)
);

FILL FILL_0__3187_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3606_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_29_),
    .B(_28_),
    .C(_30_),
    .Y(\u_cpu.o_wen0 )
);

FILL FILL_1_BUFX2_insert190 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert194 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert198 (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4564_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[24]),
    .Y(_1934_)
);

OAI21X1 _4144_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1180_),
    .B(_1159__bF$buf0),
    .C(_1182_),
    .Y(_1097_)
);

NAND3X1 _2630_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [5]),
    .B(_252_),
    .C(_251_),
    .Y(_253_)
);

OAI21X1 _2210_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_we ),
    .B(_1372_),
    .C(_1308_),
    .Y(_1406_)
);

INVX1 _3835_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm_en ),
    .Y(_670_)
);

NOR2X1 _3415_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [4]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .Y(_331_)
);

FILL FILL_1__3997_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3577_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2267_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _4373_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1544_),
    .B(_1526_),
    .C(_1542_),
    .D(_1530_),
    .Y(_1478_)
);

FILL FILL_0__4413_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2428_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3644_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_768_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.bit_count [4])
);

OAI21X1 _3224_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf1),
    .B(_1759_),
    .C(\u_rf_if.read_buf1 [16]),
    .Y(_1755_)
);

DFFPOSX1 _4429_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1465_),
    .CLK(i_clk_sys_ext_bF$buf16),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

NAND3X1 _4009_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_931_),
    .B(_930_),
    .C(_929_),
    .Y(_932_)
);

BUFX2 BUFX2_insert240 (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf0)
);

OAI21X1 _4182_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1131_),
    .B(_1159__bF$buf3),
    .C(_1214_),
    .Y(_1215_)
);

AOI21X1 _2915_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_39_),
    .B(_618_),
    .C(_730_),
    .Y(_494_)
);

NAND2X1 _3873_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .B(_660__bF$buf0),
    .Y(_699_)
);

NAND2X1 _3453_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_444_),
    .B(_414_),
    .Y(_407_)
);

AOI21X1 _3033_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1693_),
    .B(_2064_),
    .C(_1616_),
    .Y(_531_)
);

NAND3X1 _4658_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [8]),
    .C(_1960__bF$buf4),
    .Y(_1989_)
);

OAI21X1 _4238_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1142_),
    .B(_1159__bF$buf0),
    .C(_1259_),
    .Y(_1114_)
);

FILL FILL_0__3913_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2724_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [4]),
    .Y(_112_)
);

INVX1 _2304_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1337_),
    .Y(_1338_)
);

FILL FILL_0__4031_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3929_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_623_),
    .CLK(i_clk_sys_ext_bF$buf36),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

INVX1 _3509_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(_462_)
);

FILL FILL_1__2886_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2466_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3682_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_158_),
    .B(_157_),
    .C(\u_cpu.state.cnt_r [3]),
    .Y(_183_)
);

OAI21X1 _3262_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf2),
    .B(_1790_),
    .C(\u_rf_if.read_buf1 [24]),
    .Y(_1785_)
);

NAND2X1 _4467_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1868_),
    .B(_1867_),
    .Y(_1869_)
);

DFFPOSX1 _4047_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_870_),
    .CLK(i_clk_sys_ext_bF$buf14),
    .Q(\u_cpu.bufreg.data [26])
);

FILL FILL_0__3302_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4507_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2953_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[2]),
    .Y(_1446_)
);

NOR2X1 _2533_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .B(_810_),
    .Y(_820_)
);

FILL FILL_0__4680_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3738_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_759_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_rx [0])
);

AND2X2 _3318_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2109_),
    .B(_6_),
    .Y(_2108_)
);

FILL FILL_1__2275_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4001_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3491_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .B(\u_rf_if.wdata1_phase [1]),
    .Y(_449_)
);

OAI21X1 _3071_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf4),
    .B(_1780_),
    .C(\u_rf_if.read_buf0 [23]),
    .Y(_1641_)
);

NAND3X1 _4696_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[3]),
    .B(_1948_),
    .C(_1872__bF$buf3),
    .Y(_2013_)
);

DFFPOSX1 _4276_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1106_),
    .CLK(i_clk_sys_ext_bF$buf17),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

FILL FILL_0__3951_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3111_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2762_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_73_),
    .B(_74_),
    .C(_75_),
    .Y(_76_)
);

NOR2X1 _2342_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .Y(_1305_)
);

INVX1 _3967_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [6]),
    .Y(_903_)
);

INVX1 _3547_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.o_q ),
    .Y(_2036_)
);

AOI21X1 _3127_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1685_),
    .B(_1687_),
    .C(rst_bF$buf3),
    .Y(_558_)
);

FILL FILL142950x43350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3289_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2399_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _4085_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1130_),
    .B(\u_cpu.bufreg.i_init ),
    .C(_1125_),
    .Y(_1131_)
);

DFFPOSX1 _2818_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_502_),
    .CLK(i_clk_sys_ext_bF$buf41),
    .Q(\u_rf_if.issue_chunk [0])
);

CLKBUF1 CLKBUF1_insert160 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

CLKBUF1 CLKBUF1_insert161 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert162 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert163 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert164 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert165 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert166 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

CLKBUF1 CLKBUF1_insert167 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

FILL FILL_0__4545_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4125_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2991_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1588_),
    .B(_1587_),
    .C(rst_bF$buf2),
    .Y(_518_)
);

DFFPOSX1 _2571_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_64_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.launch_pending )
);

DFFPOSX1 _2151_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_748_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [11])
);

FILL FILL_1__4706_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3776_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_756_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [3])
);

OAI21X1 _3356_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_35_),
    .C(_27__bF$buf0),
    .Y(_26_)
);

FILL FILL_0__2611_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3816_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2627_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_219_),
    .B(_110_),
    .C(_255_),
    .Y(_256_)
);

INVX1 _2207_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1307_),
    .Y(_1408_)
);

AOI22X1 _2380_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_845_),
    .B(\u_cpu.bufreg2.dlo [13]),
    .C(\u_cpu.bufreg2.dlo [14]),
    .D(_1048_),
    .Y(_1075_)
);

FILL FILL_1__4515_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3585_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2081_),
    .B(_2076_),
    .Y(_2091_)
);

NAND3X1 _3165_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf2),
    .B(_1800__bF$buf1),
    .C(_1713_),
    .Y(_1712_)
);

FILL FILL_0__2420_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3205_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2856_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_498_),
    .CLK(i_clk_sys_ext_bF$buf20),
    .Q(\u_rf_if.rreg0_latched [1])
);

OAI21X1 _2436_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(_1017_),
    .C(_1018_),
    .Y(_1019_)
);

FILL FILL_0__4163_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2598_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4324_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3394_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_325_),
    .B(_311_),
    .C(_444_),
    .Y(_310_)
);

NAND3X1 _4599_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf1),
    .B(rreg0[4]),
    .C(_1872__bF$buf0),
    .Y(_1956_)
);

OAI21X1 _4179_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1125_),
    .B(_1128_),
    .C(_1137_),
    .Y(_1212_)
);

FILL FILL_0__3854_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4639_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4219_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2665_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [4]),
    .Y(_222_)
);

OAI21X1 _2245_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf3),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [28]),
    .Y(_1384_)
);

FILL FILL_0__4392_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2705_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4553_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3243_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4028_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3404_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2894_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [2]),
    .B(_1661_),
    .C(_608_),
    .Y(_607_)
);

NAND2X1 _2474_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf1 ),
    .B(_979_),
    .Y(_980_)
);

AOI21X1 _3679_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_en ),
    .B(_134_),
    .C(rst_bF$buf8),
    .Y(_181_)
);

AOI21X1 _3259_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1783_),
    .B(_1785_),
    .C(rst_bF$buf0),
    .Y(_592_)
);

FILL FILL_0__2934_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2514_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4620_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [0]),
    .B(\u_rf_if.o_waddr [1]),
    .Y(_1969_)
);

AND2X2 _4200_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shamt [1]),
    .B(\u_cpu.bufreg.i_shamt [0]),
    .Y(_1230_)
);

FILL FILL_0__3892_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4257_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2283_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1314_),
    .B(_1354_),
    .C(_1303_),
    .Y(_1355_)
);

OAI21X1 _3488_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_478_),
    .B(_450_),
    .C(_447_),
    .Y(\u_rf_if.o_wdata [1])
);

OAI21X1 _3068_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1688__bF$buf4),
    .B(_1780_),
    .C(\u_rf_if.read_buf0 [22]),
    .Y(_1639_)
);

FILL FILL_0__2743_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2323_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4591_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4171_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3281_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2759_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2122_),
    .Y(_77_)
);

INVX2 _2339_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf9),
    .Y(_1308_)
);

INVX2 _3700_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.opcode [0]),
    .Y(\u_cpu.cond_branch )
);

FILL FILL_0__4486_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3442_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3297_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_0_),
    .B(_2051_),
    .C(_5__bF$buf2),
    .Y(_2050_)
);

FILL FILL_0__2132_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert230 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert232 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert234 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert236 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert238 (
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

FILL FILL143250x43350 (
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

AOI21X1 _2988_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1586_),
    .B(_1585_),
    .C(rst_bF$buf2),
    .Y(_517_)
);

DFFPOSX1 _2568_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_63_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_serial.last_req_key [2])
);

DFFPOSX1 _2148_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_770_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_mem_serial.bit_count [2])
);

NAND2X1 _4714_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1878_),
    .B(_2025_),
    .Y(_2026_)
);

FILL FILL142350x7350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2361_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3727_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2797_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_589_),
    .CLK(i_clk_sys_ext_bF$buf42),
    .Q(\u_rf_if.read_buf1 [21])
);

OAI21X1 _2377_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1070_),
    .B(_1077_),
    .C(_834_),
    .Y(_1078_)
);

FILL FILL_0__2417_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4523_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [16]),
    .C(_1874_),
    .Y(_1907_)
);

NAND2X1 _4103_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rdata1[0]),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_1147_)
);

FILL FILL_0__2590_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3375_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2751_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3116_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2186_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1422_),
    .B(_1423_),
    .C(rst_bF$buf10),
    .Y(_784_)
);

FILL FILL_0__2646_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4752_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf1),
    .S(vdd),
    .D(_1822_),
    .CLK(i_clk_sys_ext_bF$buf24),
    .Q(rf_write_drain_busy)
);

OAI21X1 _4332_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1515_),
    .B(_1512_),
    .C(_1518_),
    .Y(_1519_)
);

NOR2X1 _3603_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [1]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [0]),
    .Y(_28_)
);

FILL FILL_1__2140_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2455_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4561_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[25]),
    .Y(_1932_)
);

INVX1 _4141_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [3]),
    .Y(_1180_)
);

FILL FILL_0__4601_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _3832_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_immdec_ctrl [2]),
    .Y(_667_)
);

OAI21X1 _3412_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [6]),
    .B(\u_rf_if.stream_cnt_0_bF$buf1 ),
    .C(\u_rf_if.stream_cnt_1_bF$buf1 ),
    .Y(_328_)
);

FILL FILL_0__4198_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4617_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1951_),
    .B(_1966_),
    .C(_1967_),
    .Y(_1820_)
);

FILL FILL_1__4359_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2684_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4370_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_1543_)
);

FILL FILL_0__3469_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3049_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3641_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.o_cnt [2]),
    .B(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_157_)
);

AOI21X1 _3221_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1753_),
    .B(_1755_),
    .C(rst_bF$buf7),
    .Y(_584_)
);

DFFPOSX1 _4426_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_1489_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

NAND3X1 _4006_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_imm_en ),
    .B(\u_cpu.bufreg.i_imm ),
    .C(_928_),
    .Y(_929_)
);

BUFX2 BUFX2_insert210 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1960_),
    .Y(_1960__bF$buf2)
);

BUFX2 BUFX2_insert211 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1960_),
    .Y(_1960__bF$buf1)
);

BUFX2 BUFX2_insert212 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1960_),
    .Y(_1960__bF$buf0)
);

BUFX2 BUFX2_insert213 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5_),
    .Y(_5__bF$buf3)
);

BUFX2 BUFX2_insert214 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5_),
    .Y(_5__bF$buf2)
);

BUFX2 BUFX2_insert215 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5_),
    .Y(_5__bF$buf1)
);

BUFX2 BUFX2_insert216 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5_),
    .Y(_5__bF$buf0)
);

BUFX2 BUFX2_insert217 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf3 )
);

BUFX2 BUFX2_insert218 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf2 )
);

BUFX2 BUFX2_insert219 (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [1]),
    .Y(\u_rf_if.stream_cnt_1_bF$buf1 )
);

FILL FILL_0__2493_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2912_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_616_),
    .B(_730_),
    .Y(_493_)
);

NAND2X1 _3870_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .B(_660__bF$buf0),
    .Y(_697_)
);

OAI21X1 _3450_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .B(_404_),
    .C(_403_),
    .Y(_400_)
);

AOI21X1 _3030_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1614_),
    .B(_1615_),
    .C(rst_bF$buf3),
    .Y(_530_)
);

FILL FILL_0__2969_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2549_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2129_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4655_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1940_),
    .B(_1959__bF$buf4),
    .C(_1987_),
    .Y(_1838_)
);

OAI21X1 _4235_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1255_),
    .B(_1159__bF$buf2),
    .C(_1257_),
    .Y(_1113_)
);

FILL FILL_0__3910_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4397_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2721_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_98_),
    .B(_114_),
    .Y(_115_)
);

OAI21X1 _2301_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf1),
    .B(_1304__bF$buf1),
    .C(\u_mem_serial.shift_rx [6]),
    .Y(_1340_)
);

DFFPOSX1 _3926_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_626_),
    .CLK(i_clk_sys_ext_bF$buf24),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

INVX1 _3506_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(_460_)
);

FILL FILL_1__2463_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3668_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _4464_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [3]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [2]),
    .Y(_1866_)
);

OAI21X1 _4044_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf1),
    .B(_952_),
    .C(_954_),
    .Y(_885_)
);

OAI21X1 _2950_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_idx [5]),
    .B(_1669_),
    .C(raddr[1]),
    .Y(_1444_)
);

OAI21X1 _2530_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .B(_810_),
    .C(_798_),
    .Y(_823_)
);

INVX1 _3735_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_385_),
    .Y(_387_)
);

INVX1 _3315_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2109_),
    .Y(_2105_)
);

FILL FILL_1__3477_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2167_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4693_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[0]),
    .B(_1948_),
    .C(_1872__bF$buf1),
    .Y(_2011_)
);

NOR2X1 _4273_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_1282_),
    .Y(_1285_)
);

FILL FILL_0__4313_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2328_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3964_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_900_),
    .C(_901_),
    .Y(_858_)
);

INVX1 _3544_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_2035_)
);

AOI21X1 _3124_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1683_),
    .B(_1684_),
    .C(rst_bF$buf6),
    .Y(_557_)
);

DFFSR _4749_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf3),
    .S(vdd),
    .D(_1825_),
    .CLK(i_clk_sys_ext_bF$buf34),
    .Q(ibus_pending_ack)
);

INVX1 _4329_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.cnt2 ),
    .Y(_1516_)
);

AOI21X1 _4082_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bufreg.i_cnt_done ),
    .C(_1127_),
    .Y(_1128_)
);

DFFPOSX1 _2815_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_580_),
    .CLK(i_clk_sys_ext_bF$buf20),
    .Q(\u_rf_if.read_buf1 [12])
);

CLKBUF1 CLKBUF1_insert130 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf1),
    .Y(i_clk_sys_ext_bF$buf25)
);

FILL FILL142950x64950 (
    .gnd(gnd),
    .vdd(vdd)
);

CLKBUF1 CLKBUF1_insert131 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf1),
    .Y(i_clk_sys_ext_bF$buf24)
);

CLKBUF1 CLKBUF1_insert132 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf3),
    .Y(i_clk_sys_ext_bF$buf23)
);

CLKBUF1 CLKBUF1_insert133 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf0),
    .Y(i_clk_sys_ext_bF$buf22)
);

CLKBUF1 CLKBUF1_insert134 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf0),
    .Y(i_clk_sys_ext_bF$buf21)
);

CLKBUF1 CLKBUF1_insert135 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf0),
    .Y(i_clk_sys_ext_bF$buf20)
);

CLKBUF1 CLKBUF1_insert136 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf3),
    .Y(i_clk_sys_ext_bF$buf19)
);

CLKBUF1 CLKBUF1_insert137 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf1),
    .Y(i_clk_sys_ext_bF$buf18)
);

CLKBUF1 CLKBUF1_insert138 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf2),
    .Y(i_clk_sys_ext_bF$buf17)
);

FILL FILL_0__4542_ (
    .gnd(gnd),
    .vdd(vdd)
);

CLKBUF1 CLKBUF1_insert139 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_clk_sys_ext_hier0_bF$buf4),
    .Y(i_clk_sys_ext_bF$buf16)
);

NAND2X1 _3773_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf6),
    .B(\u_cpu.decode.i_wb_rdt [12]),
    .Y(_402_)
);

OAI21X1 _3353_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_441__bF$buf3),
    .B(_440_),
    .C(\u_rf_if.stream_active ),
    .Y(_24_)
);

INVX1 _4558_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[26]),
    .Y(_1930_)
);

NOR2X1 _4138_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(_1174_),
    .Y(_1178_)
);

NAND3X1 _2624_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [1]),
    .B(_189_),
    .C(_258_),
    .Y(_259_)
);

AOI21X1 _2204_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1410_),
    .B(_1407_),
    .C(rst_bF$buf9),
    .Y(_779_)
);

FILL FILL_0__4351_ (
    .gnd(gnd),
    .vdd(vdd)
);

AND2X2 _3829_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_rreq_bF$buf4),
    .B(\u_cpu.decode.i_wb_rdt [7]),
    .Y(_665_)
);

AOI21X1 _3409_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_443_),
    .B(_332_),
    .C(_326_),
    .Y(_325_)
);

OAI22X1 _3582_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2084_),
    .B(_2085_),
    .C(\u_cpu.bne_or_bge ),
    .D(_2088_),
    .Y(_2089_)
);

NAND3X1 _3162_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf2),
    .B(_1713_),
    .C(_2055_),
    .Y(_1710_)
);

INVX1 _4367_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_1542_)
);

FILL FILL_0__3622_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4407_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2853_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_559_),
    .CLK(i_clk_sys_ext_bF$buf20),
    .Q(\u_rf_if.rreg1_latched [1])
);

AOI21X1 _2433_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_809_),
    .B(_1012_),
    .C(_1021_),
    .Y(_1022_)
);

FILL FILL_0_BUFX2_insert0 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert2 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert4 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert6 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4580_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert8 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _3638_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_144_),
    .B(_155_),
    .C(_151_),
    .Y(rf_wreq)
);

NOR2X1 _3218_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf0),
    .B(_2107_),
    .Y(_1750_)
);

FILL FILL_1__2175_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4321_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3391_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [27]),
    .B(_441__bF$buf0),
    .Y(_307_)
);

BUFX2 BUFX2_insert180 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108_),
    .Y(_2108__bF$buf2)
);

BUFX2 BUFX2_insert181 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108_),
    .Y(_2108__bF$buf1)
);

BUFX2 BUFX2_insert182 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2108_),
    .Y(_2108__bF$buf0)
);

BUFX2 BUFX2_insert183 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1167_),
    .Y(_1167__bF$buf3)
);

BUFX2 BUFX2_insert184 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1167_),
    .Y(_1167__bF$buf2)
);

BUFX2 BUFX2_insert185 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1167_),
    .Y(_1167__bF$buf1)
);

BUFX2 BUFX2_insert186 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1167_),
    .Y(_1167__bF$buf0)
);

BUFX2 BUFX2_insert187 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1872_),
    .Y(_1872__bF$buf3)
);

BUFX2 BUFX2_insert188 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1872_),
    .Y(_1872__bF$buf2)
);

BUFX2 BUFX2_insert189 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1872_),
    .Y(_1872__bF$buf1)
);

INVX1 _4596_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[31]),
    .Y(_1954_)
);

NAND2X1 _4176_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1208_),
    .B(_1133_),
    .Y(_1209_)
);

FILL FILL_0__3431_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3011_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2909_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_475_),
    .B(_615_),
    .Y(_614_)
);

INVX1 _2662_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.last_req_key [3]),
    .Y(_224_)
);

OAI21X1 _2242_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1315__bF$buf3),
    .B(_1304__bF$buf0),
    .C(\u_mem_serial.shift_rx [27]),
    .Y(_1386_)
);

NAND2X1 _3867_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .B(_660__bF$buf2),
    .Y(_695_)
);

OAI21X1 _3447_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf0 ),
    .B(_389_),
    .C(_384_),
    .Y(_378_)
);

AOI21X1 _3027_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1613_),
    .B(_1612_),
    .C(rst_bF$buf4),
    .Y(_529_)
);

FILL FILL_1__3189_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3660_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2718_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf0),
    .B(raddr[3]),
    .Y(_118_)
);

FILL FILL_1__3821_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2891_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_606_),
    .B(_608_),
    .Y(_605_)
);

OR2X2 _2471_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf6 ),
    .B(\u_cpu.bufreg.data [27]),
    .Y(_983_)
);

AOI21X1 _3676_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_170_),
    .B(_178_),
    .C(rst_bF$buf8),
    .Y(_126_)
);

NAND2X1 _3256_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_5__bF$buf1),
    .B(_1781_),
    .Y(_1780_)
);

FILL FILL_0_BUFX2_insert81 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert83 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert86 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert88 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2947_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_chunk [0]),
    .B(_1667_),
    .C(_27__bF$buf2),
    .Y(_1442_)
);

MUX2X1 _2527_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .B(gnd),
    .S(\u_mem_serial.active_ibus_bF$buf2 ),
    .Y(_826_)
);

FILL FILL_0__4674_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2280_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [1]),
    .B(_1297__bF$buf3),
    .Y(_1357_)
);

INVX1 _3485_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_active ),
    .Y(_445_)
);

NAND2X1 _3065_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [4]),
    .B(_37_),
    .Y(_1637_)
);

FILL FILL_0__2740_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3945_ (
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

NOR2X1 _2756_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_serial.tx_state [3]),
    .B(\u_rf_serial.tx_state [2]),
    .Y(_80_)
);

INVX1 _2336_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1310_),
    .Y(_1311_)
);

FILL FILL_1__4224_ (
    .gnd(gnd),
    .vdd(vdd)
);

OR2X2 _3294_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2114_),
    .B(_3_),
    .Y(_1813_)
);

FILL FILL_0_BUFX2_insert201 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert203 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert205 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert207 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_BUFX2_insert209 (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4499_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [21]),
    .C(_1874_),
    .Y(_1891_)
);

INVX2 _4079_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_shift_op ),
    .Y(_1125_)
);

FILL FILL_0__4119_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _2985_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst_bF$buf6),
    .B(_1583_),
    .Y(_516_)
);

DFFPOSX1 _2565_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_61_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_rf_serial.last_req_key [3])
);

BUFX2 _2145_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio_oe[1])
);

FILL FILL_0__2605_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4711_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(current_wdata0_next_hint),
    .B(_1872__bF$buf0),
    .Y(_2023_)
);

FILL FILL143250x64950 (
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
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert91 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert92 (
    .gnd(gnd),
    .vdd(vdd),
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

BUFX2 BUFX2_insert93 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861_),
    .Y(_1861__bF$buf5)
);

BUFX2 BUFX2_insert94 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861_),
    .Y(_1861__bF$buf4)
);

FILL FILL_1__3724_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert95 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861_),
    .Y(_1861__bF$buf3)
);

FILL FILL_1__3304_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert96 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861_),
    .Y(_1861__bF$buf2)
);

BUFX2 BUFX2_insert97 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861_),
    .Y(_1861__bF$buf1)
);

BUFX2 BUFX2_insert98 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1861_),
    .Y(_1861__bF$buf0)
);

BUFX2 BUFX2_insert99 (
    .gnd(gnd),
    .vdd(vdd),
    .A(rst),
    .Y(rst_bF$buf10)
);

DFFPOSX1 _2794_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_505_),
    .CLK(i_clk_sys_ext_bF$buf41),
    .Q(raddr[1])
);

NAND3X1 _2374_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1080_),
    .B(_1063_),
    .C(_1078_),
    .Y(_1081_)
);

OAI21X1 _3999_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf0 ),
    .B(_923_),
    .C(_924_),
    .Y(_870_)
);

INVX1 _3579_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rdata0[0]),
    .Y(_2086_)
);

OAI21X1 _3159_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800__bF$buf3),
    .B(_1709_),
    .C(_27__bF$buf0),
    .Y(_1708_)
);

NAND2X1 _4520_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf2),
    .B(ibus_pending_rdt[1]),
    .Y(_1905_)
);

MUX2X1 _4100_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [8]),
    .B(\u_cpu.bufreg2.dlo [0]),
    .S(\u_cpu.bufreg.data [0]),
    .Y(_1145_)
);

FILL FILL_0__3792_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4157_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2183_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1424_),
    .B(_1425_),
    .C(rst_bF$buf10),
    .Y(_785_)
);

NOR2X1 _3388_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt [2]),
    .B(_305_),
    .Y(_304_)
);

FILL FILL_0__2223_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3848_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2659_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf2),
    .B(\u_rf_if.o_wen ),
    .C(\u_rf_serial.req_seen ),
    .Y(_226_)
);

OAI21X1 _2239_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1313_),
    .B(_1311_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_1388_)
);

NAND2X1 _3600_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.cmp_r ),
    .B(_2102_),
    .Y(_2104_)
);

FILL FILL_0__4386_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3197_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_6_),
    .B(_1791_),
    .Y(_1735_)
);

FILL FILL_0__3657_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3237_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2613_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3818_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2888_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_421_),
    .B(_34_),
    .C(\u_rf_if.stream_active ),
    .Y(_603_)
);

NAND3X1 _2468_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_798_),
    .B(_983_),
    .C(_985_),
    .Y(_986_)
);

OAI21X1 _4614_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1932_),
    .B(_1959__bF$buf1),
    .C(_1965_),
    .Y(_1819_)
);

FILL FILL_1__3151_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2261_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _2697_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_109_),
    .B(_187_),
    .C(_199_),
    .Y(_200_)
);

AOI21X1 _2277_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1356_),
    .B(_1359_),
    .C(rst_bF$buf10),
    .Y(_757_)
);

FILL FILL_0__2317_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _4423_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1577_),
    .B(_1576_),
    .C(_1574_),
    .Y(_1495_)
);

NAND2X1 _4003_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [25]),
    .Y(_927_)
);

FILL FILL_0__3275_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2651_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3856_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4652_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_rx [11]),
    .C(_1960__bF$buf4),
    .Y(_1986_)
);

INVX1 _4232_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.dlo [17]),
    .Y(_1255_)
);

FILL FILL_0_BUFX2_insert171 (
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

FILL FILL_0_BUFX2_insert178 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3084_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3923_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_629_),
    .CLK(i_clk_sys_ext_bF$buf21),
    .Q(rreg0[1])
);

INVX1 _3503_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(_458_)
);

INVX1 _4708_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[30]),
    .Y(_2021_)
);

FILL FILL_0__2355_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4461_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_write_drain_busy),
    .Y(_1863_)
);

NAND2X1 _4041_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf1 ),
    .B(\u_cpu.bufreg.data [15]),
    .Y(_953_)
);

FILL FILL_0__4501_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2936_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2516_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3732_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(\u_cpu.cond_branch ),
    .Y(_385_)
);

INVX1 _3312_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg0_latched [4]),
    .Y(_2064_)
);

FILL FILL_0__4098_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _4517_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [22]),
    .B(_1861__bF$buf1),
    .Y(_1903_)
);

FILL FILL_1__3894_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4259_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2584_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2164_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4690_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[1]),
    .B(_1948_),
    .C(_1872__bF$buf2),
    .Y(_2009_)
);

NOR2X1 _4270_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(_1279_),
    .Y(_1283_)
);

FILL FILL_0__3369_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2325_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL142350x54150 (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3961_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf2),
    .B(_897_),
    .C(_899_),
    .Y(_857_)
);

INVX1 _3541_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_2033_)
);

NOR2X1 _3121_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_473_),
    .B(_1682_),
    .Y(_1680_)
);

DFFSR _4746_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1828_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(ibus_pending_rdt[20])
);

OAI21X1 _4326_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1512_),
    .B(_1513_),
    .C(_1511_),
    .Y(_1514_)
);

FILL FILL_1__4488_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2812_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_527_),
    .CLK(i_clk_sys_ext_bF$buf45),
    .Q(\u_rf_if.read_buf0 [9])
);

FILL FILL_0__3598_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3178_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3759_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3339_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3770_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_757_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_rx [2])
);

INVX1 _3350_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_37_),
    .Y(_22_)
);

FILL FILL_0__2449_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4555_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_rdt[27]),
    .Y(_1928_)
);

AOI22X1 _4135_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf1),
    .B(\u_mem_serial.shift_rx [5]),
    .C(_1167__bF$buf1),
    .D(_1175_),
    .Y(_1176_)
);

FILL FILL_0__3810_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2621_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(raddr[1]),
    .Y(_262_)
);

OAI21X1 _2201_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_810_),
    .B(_1296_),
    .C(_1412_),
    .Y(_1413_)
);

OAI21X1 _3826_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_662_),
    .B(_655_),
    .C(_661_),
    .Y(_622_)
);

OAI21X1 _3406_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.stream_cnt_0_bF$buf4 ),
    .B(_324_),
    .C(_323_),
    .Y(_322_)
);

FILL FILL_1__2363_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2678_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI22X1 _4364_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1540_),
    .B(_1526_),
    .C(_1539_),
    .D(_1530_),
    .Y(_1473_)
);

FILL FILL_0_CLKBUF1_insert161 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert163 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert165 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0_CLKBUF1_insert167 (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2850_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_518_),
    .CLK(i_clk_sys_ext_bF$buf45),
    .Q(\u_rf_if.read_buf0 [3])
);

OR2X2 _2430_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.active_ibus_bF$buf4 ),
    .B(\u_cpu.bufreg.data [22]),
    .Y(_1025_)
);

NAND2X1 _3635_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.state.i_alu_rd_sel1 ),
    .B(\u_cpu.decode.co_rd_alu_en ),
    .Y(_153_)
);

OAI21X1 _3215_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf4),
    .B(_1752_),
    .C(\u_rf_if.read_buf1 [14]),
    .Y(_1748_)
);

FILL FILL142650x97350 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3377_ (
    .gnd(gnd),
    .vdd(vdd)
);

BUFX2 BUFX2_insert156 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf3)
);

BUFX2 BUFX2_insert157 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf2)
);

BUFX2 BUFX2_insert158 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf1)
);

BUFX2 BUFX2_insert159 (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack),
    .Y(ibus_pending_ack_bF$buf0)
);

NAND3X1 _4593_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1871_),
    .B(\u_cpu.decode.i_wb_rdt [19]),
    .C(_1874_),
    .Y(_1953_)
);

AOI22X1 _4173_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1137_),
    .B(_1201_),
    .C(_1206_),
    .D(_1204_),
    .Y(_1102_)
);

OAI21X1 _2906_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_475_),
    .B(_615_),
    .C(_1702_),
    .Y(_612_)
);

FILL FILL_0__4213_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3864_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.csr_imm ),
    .B(_660__bF$buf1),
    .Y(_693_)
);

OAI21X1 _3444_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [29]),
    .B(_441__bF$buf1),
    .C(_440_),
    .Y(_375_)
);

AOI21X1 _3024_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1611_),
    .B(_1610_),
    .C(rst_bF$buf4),
    .Y(_528_)
);

OAI21X1 _4649_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1983_),
    .B(_1959__bF$buf0),
    .C(_1984_),
    .Y(_1835_)
);

NOR2X1 _4229_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf2),
    .B(_1249_),
    .Y(_1253_)
);

FILL FILL_0__3904_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2296_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2715_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.o_waddr [2]),
    .Y(_121_)
);

FILL FILL_0__4022_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4603_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3673_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_175_),
    .B(_174_),
    .C(_176_),
    .Y(_177_)
);

NAND3X1 _3253_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2110__bF$buf4),
    .B(_1800__bF$buf3),
    .C(_1778_),
    .Y(_1777_)
);

INVX8 _4458_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ibus_pending_ack_bF$buf3),
    .Y(_1861_)
);

NAND2X1 _4038_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [15]),
    .B(_887__bF$buf1),
    .Y(_951_)
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

NAND2X1 _2944_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1668_),
    .B(_1788_),
    .Y(_745_)
);

MUX2X1 _2524_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_819_),
    .B(_828_),
    .S(_805_),
    .Y(_829_)
);

FILL FILL_0__4251_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _3729_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_747_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_rx [12])
);

NOR2X1 _3309_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [0]),
    .B(\u_rf_if.rreg1_latched [1]),
    .Y(_2061_)
);

FILL FILL_1__2686_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR2X1 _3482_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [12]),
    .B(\u_rf_if.stream_cnt_0_bF$buf5 ),
    .Y(_442_)
);

AOI21X1 _3062_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1724_),
    .B(_1637_),
    .C(_1635_),
    .Y(_541_)
);

NAND3X1 _4687_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg1[2]),
    .B(_1948_),
    .C(_1872__bF$buf2),
    .Y(_2007_)
);

AOI22X1 _4267_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_dbus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [10]),
    .C(_1167__bF$buf0),
    .D(_1280_),
    .Y(_1281_)
);

FILL FILL142950x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4307_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2753_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_79_),
    .B(_81_),
    .C(_82_),
    .Y(_83_)
);

NOR2X1 _2333_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1313_),
    .B(_1311_),
    .Y(_1314_)
);

FILL FILL_0__4480_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _3958_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.i_en_bF$buf4 ),
    .B(\u_cpu.bufreg.data [11]),
    .Y(_898_)
);

NAND2X1 _3538_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_rd_sel [0]),
    .B(\u_cpu.decode.co_rd_alu_en ),
    .Y(_1794_)
);

INVX1 _3118_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.write_wait [5]),
    .Y(_1678_)
);

FILL FILL_1__4641_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4221_ (
    .gnd(gnd),
    .vdd(vdd)
);

NOR3X1 _3291_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2048_),
    .B(_1813_),
    .C(_1811_),
    .Y(_1810_)
);

NAND2X1 _4496_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [21]),
    .B(_1861__bF$buf0),
    .Y(_1889_)
);

DFFPOSX1 _4076_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_874_),
    .CLK(i_clk_sys_ext_bF$buf26),
    .Q(\u_cpu.bufreg.data [23])
);

FILL FILL_0__3331_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2809_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_583_),
    .CLK(i_clk_sys_ext_bF$buf38),
    .Q(\u_rf_if.read_buf1 [15])
);

FILL FILL_0__4536_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _2982_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rreg1_latched [0]),
    .Y(_1581_)
);

DFFPOSX1 _2562_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_72_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_serial.tx_state [3])
);

BUFX2 _2142_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio_oe[4])
);

NOR2X1 _3767_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_385_),
    .B(_392_),
    .Y(\u_cpu.decode.co_immdec_ctrl [0])
);

INVX1 _3347_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.issue_sel_bF$buf3 ),
    .Y(_20_)
);

FILL FILL_0__3980_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2618_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_259_),
    .B(_264_),
    .Y(_265_)
);

BUFX2 BUFX2_insert60 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800_),
    .Y(_1800__bF$buf2)
);

BUFX2 BUFX2_insert61 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800_),
    .Y(_1800__bF$buf1)
);

BUFX2 BUFX2_insert62 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1800_),
    .Y(_1800__bF$buf0)
);

BUFX2 BUFX2_insert63 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_),
    .Y(_27__bF$buf4)
);

BUFX2 BUFX2_insert64 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_),
    .Y(_27__bF$buf3)
);

BUFX2 BUFX2_insert65 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_),
    .Y(_27__bF$buf2)
);

BUFX2 BUFX2_insert66 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_),
    .Y(_27__bF$buf1)
);

BUFX2 BUFX2_insert67 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_27_),
    .Y(_27__bF$buf0)
);

BUFX2 BUFX2_insert68 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1297_),
    .Y(_1297__bF$buf3)
);

BUFX2 BUFX2_insert69 (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1297_),
    .Y(_1297__bF$buf2)
);

DFFPOSX1 _2791_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_592_),
    .CLK(i_clk_sys_ext_bF$buf45),
    .Q(\u_rf_if.read_buf1 [24])
);

NAND2X1 _2371_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1083_),
    .B(_1045_),
    .Y(_1084_)
);

OAI21X1 _3996_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_887__bF$buf2),
    .B(_920_),
    .C(_922_),
    .Y(_869_)
);

NAND3X1 _3576_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.alu.i_cnt0 ),
    .B(\u_cpu.alu.cmp_r ),
    .C(\u_cpu.state.i_alu_rd_sel1 ),
    .Y(_2083_)
);

OAI21X1 _3156_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2056_),
    .B(_1709_),
    .C(_1707_),
    .Y(_1706_)
);

FILL FILL_0__2411_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3616_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2847_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_562_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.wen1_r )
);

INVX1 _2427_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_1028_)
);

FILL FILL_0__4574_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2180_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1427_),
    .B(_1373_),
    .C(rst_bF$buf9),
    .Y(_786_)
);

NOR2X1 _3385_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf0 [31]),
    .B(_441__bF$buf0),
    .Y(_301_)
);

FILL FILL_0__2640_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3425_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3005_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND2X1 _2656_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(ren_bF$buf4),
    .B(raddr[2]),
    .Y(_228_)
);

AOI22X1 _2236_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1007_),
    .B(_1297__bF$buf2),
    .C(_1315__bF$buf5),
    .D(\u_mem_serial.bit_count [4]),
    .Y(_1390_)
);

FILL FILL_1_BUFX2_insert102 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert106 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1_BUFX2_insert109 (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _3194_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1733_),
    .B(_1734_),
    .C(rst_bF$buf0),
    .Y(_577_)
);

NAND2X1 _4399_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .B(_1548_),
    .Y(_1561_)
);

DFFPOSX1 _2885_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_510_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(raddr[6])
);

MUX2X1 _2465_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .B(\u_cpu.bufreg.data [25]),
    .S(\u_mem_serial.active_ibus_bF$buf1 ),
    .Y(_989_)
);

FILL FILL_0__4192_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2925_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2505_ (
    .gnd(gnd),
    .vdd(vdd)
);

NAND3X1 _4611_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_rx [26]),
    .C(_1960__bF$buf1),
    .Y(_1964_)
);

FILL FILL_0__3883_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3463_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__4668_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3624_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _2694_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_81_),
    .B(_79_),
    .C(\u_rf_serial.tx_state [4]),
    .Y(_201_)
);

INVX1 _2274_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1361_),
    .Y(_1362_)
);

FILL FILL_1__4409_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3899_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_680_),
    .B(_715_),
    .C(_716_),
    .Y(_641_)
);

OAI21X1 _3479_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.read_buf1 [13]),
    .B(_441__bF$buf1),
    .C(_440_),
    .Y(_439_)
);

AOI21X1 _3059_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1633_),
    .B(_1634_),
    .C(rst_bF$buf6),
    .Y(_540_)
);

FILL FILL_0__2734_ (
    .gnd(gnd),
    .vdd(vdd)
);

INVX1 _4420_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_1575_)
);

NAND2X1 _4000_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.bufreg.data [25]),
    .B(_887__bF$buf4),
    .Y(_925_)
);

FILL FILL_0__3519_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3272_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL143250x50550 (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3013_ (
    .gnd(gnd),
    .vdd(vdd)
);

OAI21X1 _3288_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_13__bF$buf1),
    .B(_2050_),
    .C(\u_rf_if.read_buf1 [28]),
    .Y(_1808_)
);

FILL FILL_0__2963_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__2543_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3748_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2979_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1596_),
    .B(\u_rf_if.issue_chunk [2]),
    .C(\u_rf_if.issue_chunk [3]),
    .Y(_1579_)
);

INVX1 _2559_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_2119_),
    .Y(_794_)
);

BUFX2 _2139_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(o_gpio_oe[7])
);

DFFPOSX1 _3920_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_632_),
    .CLK(i_clk_sys_ext_bF$buf36),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

INVX1 _3500_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(gnd),
    .Y(_456_)
);

NAND3X1 _4705_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(rf_read_reg0[0]),
    .B(_1948_),
    .C(_1872__bF$buf2),
    .Y(_2019_)
);

OAI21X1 _3097_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_rf_if.rcnt [0]),
    .B(\u_rf_if.rcnt [1]),
    .C(_480_),
    .Y(_1660_)
);

FILL FILL_0__3137_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFPOSX1 _2788_ (
    .gnd(gnd),
    .vdd(vdd),
    .D(_533_),
    .CLK(i_clk_sys_ext_bF$buf38),
    .Q(\u_rf_if.read_buf0 [14])
);

NAND2X1 _2368_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1086_),
    .B(_1082_),
    .Y(_1087_)
);

NAND2X1 _4514_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_mem_serial.shift_rx [23]),
    .B(_1861__bF$buf0),
    .Y(_1901_)
);

FILL FILL_1__3051_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__4676_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3786_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_0__3366_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3947_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__3527_ (
    .gnd(gnd),
    .vdd(vdd)
);

AOI21X1 _2597_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_238_),
    .B(_283_),
    .C(_284_),
    .Y(_65_)
);

AOI21X1 _2177_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(_1428_),
    .B(_1429_),
    .C(rst_bF$buf10),
    .Y(_787_)
);

FILL FILL_0__2217_ (
    .gnd(gnd),
    .vdd(vdd)
);

DFFSR _4743_ (
    .gnd(gnd),
    .vdd(vdd),
    .R(i_rst_n_bF$buf5),
    .S(vdd),
    .D(_1831_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(ibus_pending_rdt[17])
);

NAND2X1 _4323_ (
    .gnd(gnd),
    .vdd(vdd),
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_1511_)
);

FILL FILL_0__2390_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2971_ (
    .gnd(gnd),
    .vdd(vdd)
);

FILL FILL_1__2551_ (
    .gnd(gnd),
    .vdd(vdd)
);

endmodule
