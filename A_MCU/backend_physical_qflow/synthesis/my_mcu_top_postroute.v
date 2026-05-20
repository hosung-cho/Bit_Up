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

wire [4:1] rf_read_reg0_to_if ;
wire o_mem_sck ;
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
wire \u_cpu.alu.add_cy_r  ;
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
wire [0:0] \u_rf_if.wdata0_r  ;
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
wire [5:4] \u_rf_if.issue_idx  ;
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
wire [2:1] _1097_ ;
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
wire [6:3] \u_cpu.bufreg2.dhi  ;
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
wire \u_cpu.csr_imm  ;
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
wire [0:0] \u_rf_if.wdata0_next  ;
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
wire \u_cpu.ctrl.pc_plus_offset_cy_r_w  ;
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
wire [0:0] _1070_ ;
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
wire gnd = 1'b0 ;
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
wire [6:6] \u_cpu.bufreg2.cnt_next  ;
wire _659_ ;
wire _239_ ;
wire _1081_ ;
wire _888_ ;
wire _468_ ;
wire _697_ ;
wire _277_ ;
wire \u_rf_if.stream_active_bF$buf4  ;
wire \u_cpu.ctrl.pc  ;
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
wire [4:4] \u_cpu.immdec.gen_immdec_w_eq_1.imm11_7  ;
wire _597_ ;
wire _177_ ;
wire vdd = 1'b1 ;
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
wire \u_cpu.o_wdata0  ;
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
wire [3:0] \u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20  ;
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

AOI21X1 _1677_ (
    .A(_1037_),
    .B(_810_),
    .C(_1038_),
    .Y(_769_)
);

NOR2X1 _1257_ (
    .A(_499_),
    .B(_486_),
    .Y(_485_)
);

NAND2X1 _1486_ (
    .A(\u_rf_if.last_req_key [4]),
    .B(_884_),
    .Y(_886_)
);

INVX1 _1295_ (
    .A(\u_rf_if.stream_cnt [1]),
    .Y(_454_)
);

DFFPOSX1 _2521_ (
    .D(_788_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [15])
);

INVX1 _2101_ (
    .A(\u_cpu.bufreg.data [22]),
    .Y(_241_)
);

AOI21X1 _1389_ (
    .A(_459__bF$buf2),
    .B(_380_),
    .C(_379_),
    .Y(_832_)
);

DFFPOSX1 _2330_ (
    .D(_831_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [29])
);

NAND2X1 _1601_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_983_),
    .Y(_984_)
);

INVX1 _1198_ (
    .A(_543_),
    .Y(_542_)
);

NAND2X1 _1830_ (
    .A(_554_),
    .B(_26_),
    .Y(_27_)
);

OAI21X1 _1410_ (
    .A(_366_),
    .B(_459__bF$buf6),
    .C(_365_),
    .Y(_825_)
);

BUFX2 BUFX2_insert31 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf6 )
);

BUFX2 BUFX2_insert32 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf5 )
);

BUFX2 BUFX2_insert33 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf4 )
);

BUFX2 BUFX2_insert34 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf3 )
);

BUFX2 BUFX2_insert35 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf2 )
);

BUFX2 BUFX2_insert36 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf1 )
);

BUFX2 BUFX2_insert37 (
    .A(\u_rf_if.stream_active ),
    .Y(\u_rf_if.stream_active_bF$buf0 )
);

BUFX2 BUFX2_insert38 (
    .A(_23_),
    .Y(_23__bF$buf4)
);

BUFX2 BUFX2_insert39 (
    .A(_23_),
    .Y(_23__bF$buf3)
);

DFFPOSX1 _2424_ (
    .D(_718_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [30])
);

NOR2X1 _2004_ (
    .A(_171_),
    .B(_161_),
    .Y(_172_)
);

MUX2X1 _2233_ (
    .A(_322_),
    .B(_323_),
    .S(_124__bF$buf3),
    .Y(_626_)
);

AOI22X1 _1924_ (
    .A(_117_),
    .B(_109_),
    .C(_108_),
    .D(_110_),
    .Y(_118_)
);

NAND2X1 _1504_ (
    .A(\u_rf_if.last_req_key [9]),
    .B(_877_),
    .Y(_904_)
);

DFFPOSX1 _2462_ (
    .D(_750_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.o_waddr [0])
);

INVX1 _2042_ (
    .A(rf_read_reg1_to_if[0]),
    .Y(_199_)
);

NAND2X1 _1733_ (
    .A(_526_),
    .B(_1076_),
    .Y(_1077_)
);

NOR2X1 _1313_ (
    .A(\u_mem_serial.shift_reg [15]),
    .B(_459__bF$buf5),
    .Y(_441_)
);

DFFPOSX1 _2518_ (
    .D(_738_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.prefetch_active )
);

AOI21X1 _2271_ (
    .A(_49_),
    .B(_46_),
    .C(_125_),
    .Y(_602_)
);

INVX1 _1962_ (
    .A(_457_),
    .Y(_144_)
);

OAI21X1 _1542_ (
    .A(\u_rf_if.shift_rx [0]),
    .B(_939_),
    .C(i_rst_n_bF$buf0),
    .Y(_940_)
);

DFFPOSX1 _2327_ (
    .D(_829_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [1])
);

AOI22X1 _2080_ (
    .A(_220_),
    .B(_181_),
    .C(_227_),
    .D(_228_),
    .Y(_684_)
);

AOI21X1 _1771_ (
    .A(_1105_),
    .B(_935_),
    .C(_941_),
    .Y(_739_)
);

OAI21X1 _1351_ (
    .A(_489__bF$buf4),
    .B(_410_),
    .C(_413_),
    .Y(_409_)
);

OAI21X1 _2136_ (
    .A(_550_),
    .B(_24_),
    .C(_254_),
    .Y(_255_)
);

INVX1 _1827_ (
    .A(_23__bF$buf1),
    .Y(_24_)
);

OAI21X1 _1407_ (
    .A(_368_),
    .B(_459__bF$buf1),
    .C(_367_),
    .Y(_826_)
);

INVX1 _1580_ (
    .A(\u_rf_if.read_buf0 [9]),
    .Y(_968_)
);

INVX2 _1160_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_580_)
);

DFFPOSX1 _2365_ (
    .D(i_clk_sys_ext_bF$buf2),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.clk_sys_prev )
);

INVX1 _1636_ (
    .A(\u_rf_if.read_buf0 [23]),
    .Y(_1010_)
);

NOR2X1 _1216_ (
    .A(_583_),
    .B(_525_),
    .Y(\u_rf_if.rtrig0 )
);

NOR2X1 _2174_ (
    .A(_557_),
    .B(_281_),
    .Y(_282_)
);

NOR2X1 _1865_ (
    .A(_594_),
    .B(_945_),
    .Y(_62_)
);

OAI21X1 _1445_ (
    .A(_344_),
    .B(_348_),
    .C(_597_),
    .Y(_814_)
);

OAI21X1 _1674_ (
    .A(_591_),
    .B(_1034_),
    .C(_1036_),
    .Y(_770_)
);

INVX2 _1254_ (
    .A(_489__bF$buf3),
    .Y(_488_)
);

DFFPOSX1 _2459_ (
    .D(_617_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [10])
);

INVX1 _2039_ (
    .A(rf_read_reg1_to_if[1]),
    .Y(_197_)
);

FILL FILL95250x7350 (
);

NOR2X1 _1483_ (
    .A(_882_),
    .B(_881_),
    .Y(_883_)
);

INVX1 _2268_ (
    .A(\u_cpu.ctrl.o_ibus_adr [29]),
    .Y(_337_)
);

NOR2X1 _1959_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_587_),
    .Y(_142_)
);

OAI21X1 _1539_ (
    .A(_494_),
    .B(_488_),
    .C(_465_),
    .Y(_806_)
);

NOR2X1 _1292_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.ready_pulse ),
    .Y(_457_)
);

DFFPOSX1 _2497_ (
    .D(_770_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(raddr[3])
);

OAI21X1 _2077_ (
    .A(_221_),
    .B(_222_),
    .C(_225_),
    .Y(_226_)
);

NOR2X1 _1768_ (
    .A(_1102_),
    .B(_1103_),
    .Y(_740_)
);

INVX1 _1348_ (
    .A(\u_cpu.bufreg.data [6]),
    .Y(_412_)
);

MUX2X1 _1997_ (
    .A(_1101_),
    .B(_166_),
    .S(_161_),
    .Y(_705_)
);

NAND2X1 _1577_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_965_),
    .Y(_966_)
);

INVX1 _1157_ (
    .A(\u_rf_if.rcnt [0]),
    .Y(_583_)
);

AOI21X1 _1386_ (
    .A(_459__bF$buf2),
    .B(_382_),
    .C(_381_),
    .Y(_833_)
);

NOR2X1 _1195_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .B(\u_cpu.bufreg.i_shamt [1]),
    .Y(_545_)
);

DFFPOSX1 _2421_ (
    .D(_716_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.stream_cnt [1])
);

AOI21X1 _2001_ (
    .A(_167_),
    .B(_161_),
    .C(_169_),
    .Y(_704_)
);

AOI21X1 _1289_ (
    .A(_485_),
    .B(_460_),
    .C(_463_),
    .Y(_459_)
);

INVX1 _2230_ (
    .A(\u_cpu.ctrl.o_ibus_adr [20]),
    .Y(_322_)
);

OR2X2 _1921_ (
    .A(_112_),
    .B(_114_),
    .Y(_115_)
);

NOR2X1 _1501_ (
    .A(\u_rf_if.last_req_key [8]),
    .B(_520_),
    .Y(_901_)
);

NOR2X1 _1730_ (
    .A(_875_),
    .B(_524_),
    .Y(_1074_)
);

AOI21X1 _1310_ (
    .A(_459__bF$buf4),
    .B(_444_),
    .C(_446_),
    .Y(_846_)
);

DFFPOSX1 _2515_ (
    .D(_740_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.launch_pending )
);

DFFPOSX1 _2324_ (
    .D(_654_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg.data [0])
);

MUX2X1 _2133_ (
    .A(_430_),
    .B(_436_),
    .S(_23__bF$buf4),
    .Y(_655_)
);

NOR2X1 _1824_ (
    .A(_581_),
    .B(_552_),
    .Y(_21_)
);

OAI21X1 _1404_ (
    .A(_370_),
    .B(_459__bF$buf6),
    .C(_369_),
    .Y(_827_)
);

DFFPOSX1 _2362_ (
    .D(_853_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.active_ibus )
);

NAND2X1 _1633_ (
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_1007_),
    .Y(_1008_)
);

NAND2X1 _1213_ (
    .A(_528_),
    .B(_533_),
    .Y(_527_)
);

DFFPOSX1 _2418_ (
    .D(_604_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [29])
);

AOI21X1 _2171_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_553_),
    .Y(_279_)
);

FILL FILL95250x86550 (
);

NOR2X1 _1862_ (
    .A(_58_),
    .B(_57_),
    .Y(_59_)
);

NOR2X1 _1442_ (
    .A(\u_mem_serial.bit_count [2]),
    .B(_469_),
    .Y(_343_)
);

MUX2X1 _2227_ (
    .A(_319_),
    .B(_320_),
    .S(_124__bF$buf4),
    .Y(_629_)
);

INVX1 _1918_ (
    .A(_111_),
    .Y(_112_)
);

OAI21X1 _1671_ (
    .A(_1033_),
    .B(_1034_),
    .C(_1035_),
    .Y(_772_)
);

AND2X2 _1251_ (
    .A(_492_),
    .B(_504_),
    .Y(_491_)
);

DFFPOSX1 _2456_ (
    .D(_747_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.issue_chunk [0])
);

INVX1 _2036_ (
    .A(rf_read_reg1_to_if[2]),
    .Y(_195_)
);

OAI21X1 _1727_ (
    .A(_1067_),
    .B(_583_),
    .C(_1071_),
    .Y(_1072_)
);

NOR2X1 _1307_ (
    .A(\u_mem_serial.shift_reg [0]),
    .B(_459__bF$buf4),
    .Y(_446_)
);

NOR2X1 _1480_ (
    .A(\u_rf_if.tx_state [0]),
    .B(_879_),
    .Y(_880_)
);

INVX1 _2265_ (
    .A(\u_cpu.ctrl.o_ibus_adr [30]),
    .Y(_335_)
);

OAI21X1 _1956_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(_532_),
    .C(_139_),
    .Y(_720_)
);

INVX4 _1536_ (
    .A(_935_),
    .Y(_936_)
);

DFFPOSX1 _2494_ (
    .D(_767_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(raddr[6])
);

AOI21X1 _2074_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(\u_cpu.decode.opcode [2]),
    .C(\u_cpu.decode.opcode [1]),
    .Y(_223_)
);

MUX2X1 _1765_ (
    .A(_1101_),
    .B(_1037_),
    .S(mem_ibus_ack_bF$buf1),
    .Y(_742_)
);

MUX2X1 _1345_ (
    .A(_415_),
    .B(_420_),
    .S(_459__bF$buf0),
    .Y(_840_)
);

MUX2X1 _1994_ (
    .A(\u_mem_serial.shift_reg [16]),
    .B(rf_read_reg0_to_if[2]),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_165_)
);

OAI21X1 _1574_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [8]),
    .C(_963_),
    .Y(_964_)
);

NAND2X1 _1154_ (
    .A(_594_),
    .B(_587_),
    .Y(_586_)
);

FILL FILL95250x18150 (
);

DFFPOSX1 _2359_ (
    .D(_851_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [14])
);

AOI21X1 _1383_ (
    .A(_459__bF$buf2),
    .B(_384_),
    .C(_383_),
    .Y(_834_)
);

AOI21X1 _2168_ (
    .A(_1086_),
    .B(_582_),
    .C(_1089_),
    .Y(_644_)
);

INVX1 _1859_ (
    .A(_55_),
    .Y(_56_)
);

NAND2X1 _1439_ (
    .A(_346_),
    .B(_347_),
    .Y(_345_)
);

INVX1 _1192_ (
    .A(_549_),
    .Y(_548_)
);

DFFPOSX1 _2397_ (
    .D(_695_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_read_reg1_to_if[3])
);

INVX1 _1668_ (
    .A(\u_rf_if.issue_chunk [1]),
    .Y(_1033_)
);

NOR2X1 _1248_ (
    .A(_495_),
    .B(_499_),
    .Y(_494_)
);

NAND2X1 _1897_ (
    .A(_868_),
    .B(_922_),
    .Y(_93_)
);

NOR2X1 _1477_ (
    .A(_875_),
    .B(_876_),
    .Y(_877_)
);

OAI22X1 _1286_ (
    .A(_486_),
    .B(_467_),
    .C(_498_),
    .D(_462_),
    .Y(_852_)
);

DFFPOSX1 _2512_ (
    .D(_783_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [20])
);

DFFPOSX1 _2321_ (
    .D(_826_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [4])
);

INVX1 _1189_ (
    .A(\u_cpu.bufreg2.dhi [6]),
    .Y(_551_)
);

MUX2X1 _2130_ (
    .A(_412_),
    .B(_418_),
    .S(_23__bF$buf1),
    .Y(_658_)
);

INVX1 _1821_ (
    .A(\u_cpu.bufreg.data [0]),
    .Y(_18_)
);

OAI21X1 _1401_ (
    .A(_372_),
    .B(_459__bF$buf5),
    .C(_371_),
    .Y(_828_)
);

FILL FILL94950x72150 (
);

OAI21X1 _1630_ (
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.read_buf0 [22]),
    .C(_1005_),
    .Y(_1006_)
);

NAND2X1 _1210_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_580_),
    .Y(_530_)
);

DFFPOSX1 _2415_ (
    .D(_713_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.branch_op )
);

INVX1 _2224_ (
    .A(\u_cpu.ctrl.o_ibus_adr [23]),
    .Y(_319_)
);

NAND2X1 _1915_ (
    .A(_580_),
    .B(_579_),
    .Y(_109_)
);

DFFPOSX1 _2453_ (
    .D(_614_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.o_ibus_adr [7])
);

OAI21X1 _2033_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_192_),
    .C(_158_),
    .Y(_193_)
);

NOR2X1 _1724_ (
    .A(_1067_),
    .B(_583_),
    .Y(_1068_)
);

OAI21X1 _1304_ (
    .A(_483_),
    .B(_448_),
    .C(_465_),
    .Y(_848_)
);

DFFPOSX1 _2509_ (
    .D(_742_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.issue_reg [0])
);

AOI21X1 _2262_ (
    .A(_332_),
    .B(_124__bF$buf1),
    .C(_333_),
    .Y(_607_)
);

AOI21X1 _1953_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(_368_),
    .C(_138_),
    .Y(_722_)
);

AND2X2 _1533_ (
    .A(_890_),
    .B(_932_),
    .Y(_933_)
);

DFFPOSX1 _2318_ (
    .D(_650_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.bufreg.c_r )
);

DFFPOSX1 _2491_ (
    .D(_765_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.tx_state [1])
);

INVX1 _2071_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .Y(_220_)
);

AOI21X1 _1762_ (
    .A(_1095_),
    .B(\u_rf_if.issue_chunk [3]),
    .C(\u_rf_if.issue_idx [4]),
    .Y(_1100_)
);

INVX1 _1342_ (
    .A(\u_cpu.ctrl.o_ibus_adr [5]),
    .Y(_417_)
);

MUX2X1 _2127_ (
    .A(_394_),
    .B(_400_),
    .S(_23__bF$buf4),
    .Y(_661_)
);

NAND2X1 _1818_ (
    .A(_572_),
    .B(_573_),
    .Y(_15_)
);

INVX1 _1991_ (
    .A(rf_read_reg0_to_if[2]),
    .Y(_163_)
);

MUX2X1 _1571_ (
    .A(_961_),
    .B(_956_),
    .S(_586__bF$buf2),
    .Y(_798_)
);

NOR2X1 _1151_ (
    .A(\u_rf_if.issue_chunk [1]),
    .B(\u_rf_if.issue_chunk [0]),
    .Y(_589_)
);

DFFPOSX1 _2356_ (
    .D(_663_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [10])
);

FILL FILL95250x72150 (
);

MUX2X1 _1627_ (
    .A(_1003_),
    .B(_998_),
    .S(_586__bF$buf4),
    .Y(_784_)
);

NAND2X1 _1207_ (
    .A(_555_),
    .B(_534_),
    .Y(_533_)
);

AOI21X1 _1380_ (
    .A(_459__bF$buf4),
    .B(_385_),
    .C(_390_),
    .Y(_835_)
);

NAND2X1 _2165_ (
    .A(_275_),
    .B(_526_),
    .Y(_646_)
);

AND2X2 _1856_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_53_)
);

AOI21X1 _1436_ (
    .A(_348_),
    .B(_497_),
    .C(_466_),
    .Y(_347_)
);

DFFPOSX1 _2394_ (
    .D(_692_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_read_reg1_to_if[0])
);

AOI21X1 _1665_ (
    .A(_586__bF$buf3),
    .B(_1030_),
    .C(_1031_),
    .Y(_774_)
);

INVX1 _1245_ (
    .A(\u_mem_serial.bit_count [0]),
    .Y(_497_)
);

NAND2X1 _1894_ (
    .A(_7_),
    .B(\u_cpu.o_wdata0 ),
    .Y(_90_)
);

AOI21X1 _1474_ (
    .A(_865_),
    .B(_873_),
    .C(_874_),
    .Y(_808_)
);

INVX1 _2259_ (
    .A(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_332_)
);

AOI21X1 _1283_ (
    .A(_476_),
    .B(_490_),
    .C(\u_mem_serial.state [1]),
    .Y(_464_)
);

DFFPOSX1 _2488_ (
    .D(_630_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [23])
);

AOI22X1 _2068_ (
    .A(_214_),
    .B(_161_),
    .C(_218_),
    .D(_217_),
    .Y(_686_)
);

NOR2X1 _1759_ (
    .A(_1095_),
    .B(_1098_),
    .Y(_745_)
);

INVX1 _1339_ (
    .A(\u_mem_serial.shift_reg [20]),
    .Y(_420_)
);

DFFPOSX1 _2297_ (
    .D(_815_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.bit_count [1])
);

OAI21X1 _1988_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(_160_),
    .C(_158_),
    .Y(_161_)
);

INVX1 _1568_ (
    .A(\u_rf_if.read_buf0 [6]),
    .Y(_959_)
);

INVX2 _1148_ (
    .A(_593_),
    .Y(_592_)
);

INVX1 _1797_ (
    .A(_1113_),
    .Y(_1131_)
);

INVX1 _1377_ (
    .A(\u_cpu.ctrl.o_ibus_adr [10]),
    .Y(_387_)
);

INVX2 _1186_ (
    .A(\u_cpu.decode.opcode [2]),
    .Y(_554_)
);

FILL FILL94950x93750 (
);

DFFPOSX1 _2412_ (
    .D(_710_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.bufreg.i_sh_signed )
);

MUX2X1 _2221_ (
    .A(_315_),
    .B(_317_),
    .S(_124__bF$buf2),
    .Y(_632_)
);

NOR2X1 _1912_ (
    .A(_11_),
    .B(_562_),
    .Y(_106_)
);

DFFPOSX1 _2450_ (
    .D(_613_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [6])
);

MUX2X1 _2030_ (
    .A(_189_),
    .B(_190_),
    .S(_181_),
    .Y(_696_)
);

NOR2X1 _1721_ (
    .A(\u_rf_if.write_wait [0]),
    .B(_1066_),
    .Y(_753_)
);

AOI21X1 _1301_ (
    .A(_449_),
    .B(\u_rf_if.stream_cnt [4]),
    .C(_457_),
    .Y(_850_)
);

DFFPOSX1 _2506_ (
    .D(_778_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [25])
);

OAI21X1 _1950_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_81_),
    .C(_137_),
    .Y(_724_)
);

NAND2X1 _1530_ (
    .A(\u_rf_if.last_req_key [7]),
    .B(_513_),
    .Y(_930_)
);

DFFPOSX1 _2315_ (
    .D(_823_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [7])
);

DFFPOSX1 _2544_ (
    .D(_806_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.state [0])
);

MUX2X1 _2124_ (
    .A(_251_),
    .B(_252_),
    .S(_23__bF$buf2),
    .Y(_664_)
);

NAND2X1 _1815_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_11_),
    .Y(_12_)
);

DFFPOSX1 _2353_ (
    .D(\u_cpu.o_wdata0 ),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.wdata0_next [0])
);

INVX1 _1624_ (
    .A(\u_rf_if.read_buf0 [20]),
    .Y(_1001_)
);

OAI21X1 _1204_ (
    .A(_551_),
    .B(_547_),
    .C(_537_),
    .Y(_536_)
);

DFFPOSX1 _2409_ (
    .D(_707_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_read_reg0_to_if[2])
);

FILL FILL95250x93750 (
);

OR2X2 _2162_ (
    .A(_1068_),
    .B(_273_),
    .Y(_274_)
);

NAND2X1 _1853_ (
    .A(_48_),
    .B(_39_),
    .Y(_50_)
);

NAND3X1 _1433_ (
    .A(\u_mem_serial.shift_reg [12]),
    .B(_489__bF$buf2),
    .C(_459__bF$buf3),
    .Y(_349_)
);

INVX1 _2218_ (
    .A(\u_cpu.ctrl.o_ibus_adr [27]),
    .Y(_316_)
);

DFFPOSX1 _2391_ (
    .D(_689_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(rf_wreg0_to_if[1])
);

AOI21X1 _1909_ (
    .A(_564_),
    .B(\u_cpu.state.cnt_r [3]),
    .C(\u_rf_if.ready_pulse ),
    .Y(_104_)
);

AOI22X1 _1662_ (
    .A(_1025_),
    .B(_585_),
    .C(_1029_),
    .D(_1028_),
    .Y(_775_)
);

NOR2X1 _1242_ (
    .A(\u_mem_serial.bit_count [5]),
    .B(_501_),
    .Y(_500_)
);

DFFPOSX1 _2447_ (
    .D(_743_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.issue_idx [4])
);

MUX2X1 _2027_ (
    .A(_187_),
    .B(_188_),
    .S(_181_),
    .Y(_697_)
);

OAI21X1 _1718_ (
    .A(ren),
    .B(_935_),
    .C(i_rst_n_bF$buf3),
    .Y(_1065_)
);

NAND3X1 _1891_ (
    .A(_80_),
    .B(_87_),
    .C(_61_),
    .Y(_88_)
);

INVX1 _1471_ (
    .A(_871_),
    .Y(_872_)
);

MUX2X1 _2256_ (
    .A(_417_),
    .B(_423_),
    .S(_124__bF$buf1),
    .Y(_611_)
);

NAND2X1 _1947_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_reg [13]),
    .Y(_136_)
);

AND2X2 _1527_ (
    .A(_926_),
    .B(_906_),
    .Y(_927_)
);

INVX1 _1280_ (
    .A(_468_),
    .Y(_467_)
);

DFFPOSX1 _2485_ (
    .D(_762_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [0])
);

OAI21X1 _2065_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_cpu.branch_op ),
    .C(_215_),
    .Y(_216_)
);

NOR2X1 _1756_ (
    .A(_590_),
    .B(_1094_),
    .Y(_1095_)
);

MUX2X1 _1336_ (
    .A(_424_),
    .B(_423_),
    .S(_474_),
    .Y(_422_)
);

DFFPOSX1 _2294_ (
    .D(_641_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg2.dhi [4])
);

INVX1 _1985_ (
    .A(_157_),
    .Y(_158_)
);

NAND2X1 _1565_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_956_),
    .Y(_957_)
);

MUX2X1 _1145_ (
    .A(_595_),
    .B(_596_),
    .S(mem_ibus_ack_bF$buf1),
    .Y(_859_)
);

NOR2X1 _1794_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(_567_),
    .Y(_1130_)
);

NOR2X1 _1374_ (
    .A(\u_mem_serial.shift_reg [25]),
    .B(_459__bF$buf4),
    .Y(_390_)
);

MUX2X1 _2159_ (
    .A(_272_),
    .B(_257_),
    .S(_23__bF$buf1),
    .Y(_649_)
);

INVX2 _1183_ (
    .A(_558_),
    .Y(_557_)
);

DFFPOSX1 _2388_ (
    .D(_686_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_read_reg0_to_if[4])
);

FILL FILL95550x68550 (
);

MUX2X1 _1659_ (
    .A(_1027_),
    .B(_1022_),
    .S(_586__bF$buf3),
    .Y(_776_)
);

INVX1 _1239_ (
    .A(\u_mem_serial.bit_count [3]),
    .Y(_503_)
);

NOR2X1 _2197_ (
    .A(_546_),
    .B(_545_),
    .Y(_301_)
);

AND2X2 _1888_ (
    .A(_84_),
    .B(_81_),
    .Y(_85_)
);

INVX1 _1468_ (
    .A(\u_rf_if.tx_state [4]),
    .Y(_869_)
);

INVX1 _1697_ (
    .A(_1045_),
    .Y(_1053_)
);

NOR2X1 _1277_ (
    .A(\u_mem_serial.bit_count [0]),
    .B(\u_mem_serial.bit_count [1]),
    .Y(_470_)
);

DFFPOSX1 _2503_ (
    .D(_776_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [27])
);

DFFPOSX1 _2312_ (
    .D(_850_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.stream_active )
);

DFFPOSX1 _2541_ (
    .D(_634_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg2.cnt_next [6])
);

INVX1 _2121_ (
    .A(\u_cpu.bufreg.data [12]),
    .Y(_251_)
);

OAI21X1 _1812_ (
    .A(_3_),
    .B(_7_),
    .C(_8_),
    .Y(_9_)
);

DFFPOSX1 _2350_ (
    .D(_660_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.bufreg.data [7])
);

NAND2X1 _1621_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_998_),
    .Y(_999_)
);

INVX1 _1201_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .Y(_539_)
);

DFFPOSX1 _2406_ (
    .D(_704_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3])
);

NAND2X1 _1850_ (
    .A(_40_),
    .B(_45_),
    .Y(_47_)
);

NAND3X1 _1430_ (
    .A(\u_mem_serial.shift_reg [11]),
    .B(_489__bF$buf2),
    .C(_459__bF$buf3),
    .Y(_351_)
);

NOR2X1 _2215_ (
    .A(\u_cpu.bufreg2.cnt_next [6]),
    .B(_284_),
    .Y(_314_)
);

AOI21X1 _1906_ (
    .A(_101_),
    .B(_96_),
    .C(_1054_),
    .Y(_102_)
);

DFFPOSX1 _2444_ (
    .D(_1070_[0]),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.state.o_cnt [2])
);

MUX2X1 _2024_ (
    .A(_185_),
    .B(_186_),
    .S(_181_),
    .Y(_698_)
);

AOI21X1 _1715_ (
    .A(_521_),
    .B(_936_),
    .C(_1063_),
    .Y(_756_)
);

MUX2X1 _2253_ (
    .A(_399_),
    .B(_405_),
    .S(_124__bF$buf0),
    .Y(_614_)
);

AOI21X1 _1944_ (
    .A(_523_),
    .B(_133_),
    .C(_130_),
    .Y(_134_)
);

NAND2X1 _1524_ (
    .A(\u_rf_if.last_req_key [0]),
    .B(_921_),
    .Y(_924_)
);

DFFPOSX1 _2309_ (
    .D(_820_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [10])
);

DFFPOSX1 _2482_ (
    .D(_761_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [1])
);

AOI21X1 _2062_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_482_),
    .C(_213_),
    .Y(_687_)
);

OAI21X1 _1753_ (
    .A(\u_rf_if.issue_chunk [1]),
    .B(_810_),
    .C(_1088_),
    .Y(_1093_)
);

NAND2X1 _1333_ (
    .A(_432_),
    .B(_489__bF$buf3),
    .Y(_425_)
);

DFFPOSX1 _2538_ (
    .D(_803_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_rf_if.read_buf0 [0])
);

MUX2X1 _2118_ (
    .A(_248_),
    .B(_249_),
    .S(_23__bF$buf2),
    .Y(_667_)
);

DFFPOSX1 _2291_ (
    .D(_720_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.decode.opcode [0])
);

OAI21X1 _1809_ (
    .A(_1124_),
    .B(_5_),
    .C(_1120_),
    .Y(_6_)
);

AOI21X1 _1982_ (
    .A(_1049_),
    .B(_907_),
    .C(_1102_),
    .Y(_709_)
);

OAI21X1 _1562_ (
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.read_buf0 [5]),
    .C(_954_),
    .Y(_955_)
);

BUFX2 _1142_ (
    .A(_0_),
    .Y(o_mem_mosi)
);

DFFPOSX1 _2347_ (
    .D(_843_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_reg [17])
);

OAI21X1 _1618_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.read_buf0 [19]),
    .C(_996_),
    .Y(_997_)
);

NOR2X1 _1791_ (
    .A(_1128_),
    .B(_569_),
    .Y(_1070_[0])
);

MUX2X1 _1371_ (
    .A(_394_),
    .B(_393_),
    .S(_474_),
    .Y(_392_)
);

AOI21X1 _2156_ (
    .A(_262_),
    .B(_267_),
    .C(_24_),
    .Y(_650_)
);

OR2X2 _1847_ (
    .A(_28_),
    .B(_43_),
    .Y(_44_)
);

NAND3X1 _1427_ (
    .A(\u_mem_serial.shift_reg [10]),
    .B(_489__bF$buf2),
    .C(_459__bF$buf3),
    .Y(_353_)
);

OR2X2 _1180_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(\u_cpu.state.cnt_r [1]),
    .Y(_560_)
);

DFFPOSX1 _2385_ (
    .D(_683_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_read_reg1_to_if[4])
);

INVX1 _1656_ (
    .A(\u_rf_if.read_buf0 [28]),
    .Y(_1025_)
);

INVX1 _1236_ (
    .A(_507_),
    .Y(_506_)
);

OAI21X1 _2194_ (
    .A(_295_),
    .B(_547_),
    .C(_283_),
    .Y(_299_)
);

OAI21X1 _1885_ (
    .A(_594_),
    .B(_945_),
    .C(_67_),
    .Y(_82_)
);

INVX1 _1465_ (
    .A(\u_rf_if.tx_state [1]),
    .Y(_866_)
);

NOR2X1 _1694_ (
    .A(_1048_),
    .B(_1050_),
    .Y(_764_)
);

OAI21X1 _1274_ (
    .A(_475_),
    .B(_472_),
    .C(_477_),
    .Y(_854_)
);

DFFPOSX1 _2479_ (
    .D(_626_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [19])
);

AOI22X1 _2059_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_204_),
    .D(rf_wreg0_to_if[0]),
    .Y(_212_)
);

DFFPOSX1 _2288_ (
    .D(_811_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.bit_count [5])
);

OAI21X1 _1979_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_41_),
    .C(_154_),
    .Y(_711_)
);

OAI21X1 _1559_ (
    .A(_585_),
    .B(_952_),
    .C(_949_),
    .Y(_801_)
);

BUFX2 _1139_ (
    .A(_1111_),
    .Y(o_rf_mosi)
);

DFFPOSX1 _2500_ (
    .D(_773_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(raddr[0])
);

INVX1 _2097_ (
    .A(\u_cpu.bufreg.data [24]),
    .Y(_239_)
);

OAI21X1 _1788_ (
    .A(_1123_),
    .B(_1126_),
    .C(\u_rf_if.wdata0_next_phase ),
    .Y(_1127_)
);

NAND2X1 _1368_ (
    .A(_402_),
    .B(_489__bF$buf4),
    .Y(_395_)
);

FILL FILL95550x54150 (
);

NAND2X1 _1597_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_980_),
    .Y(_981_)
);

NOR2X1 _1177_ (
    .A(_574_),
    .B(_564_),
    .Y(_563_)
);

DFFPOSX1 _2403_ (
    .D(_701_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0])
);

MUX2X1 _2212_ (
    .A(_313_),
    .B(_306_),
    .S(_284_),
    .Y(_637_)
);

OAI21X1 _1903_ (
    .A(\u_rf_if.tx_state [0]),
    .B(_895_),
    .C(_1043_),
    .Y(_99_)
);

DFFPOSX1 _2441_ (
    .D(_731_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.state.cnt_r [0])
);

MUX2X1 _2021_ (
    .A(_183_),
    .B(_184_),
    .S(_181_),
    .Y(_699_)
);

OAI21X1 _1712_ (
    .A(\u_rf_if.last_req_key [5]),
    .B(_936_),
    .C(i_rst_n_bF$buf3),
    .Y(_1062_)
);

MUX2X1 _2250_ (
    .A(_331_),
    .B(_387_),
    .S(_124__bF$buf0),
    .Y(_617_)
);

NOR2X1 _1941_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(rf_wreg0_to_if[1]),
    .Y(_131_)
);

OAI21X1 _1521_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(ren),
    .C(_920_),
    .Y(_921_)
);

DFFPOSX1 _2306_ (
    .D(_733_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.issue_idx [5])
);

AOI21X1 _1750_ (
    .A(_1084_),
    .B(_1090_),
    .C(_1089_),
    .Y(_747_)
);

OAI21X1 _1330_ (
    .A(_489__bF$buf3),
    .B(_428_),
    .C(_431_),
    .Y(_427_)
);

DFFPOSX1 _2535_ (
    .D(_800_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.read_buf0 [3])
);

INVX1 _2115_ (
    .A(\u_cpu.bufreg.data [15]),
    .Y(_248_)
);

INVX1 _1806_ (
    .A(\u_rf_if.wdata0_r [0]),
    .Y(_3_)
);

DFFPOSX1 _2344_ (
    .D(_840_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_reg [20])
);

MUX2X1 _1615_ (
    .A(_994_),
    .B(_989_),
    .S(_586__bF$buf1),
    .Y(_787_)
);

AND2X2 _2153_ (
    .A(_267_),
    .B(_268_),
    .Y(_269_)
);

INVX1 _1844_ (
    .A(\u_cpu.decode.co_ebreak ),
    .Y(_41_)
);

NAND3X1 _1424_ (
    .A(\u_mem_serial.shift_reg [9]),
    .B(_489__bF$buf2),
    .C(_459__bF$buf1),
    .Y(_355_)
);

OAI21X1 _2209_ (
    .A(_557_),
    .B(_281_),
    .C(_311_),
    .Y(_312_)
);

DFFPOSX1 _2382_ (
    .D(_680_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [27])
);

NAND2X1 _1653_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_1022_),
    .Y(_1023_)
);

OAI21X1 _1233_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_509_),
    .C(_584_),
    .Y(_858_)
);

DFFPOSX1 _2438_ (
    .D(\u_cpu.state.cnt_r [2]),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.state.cnt_r [3])
);

MUX2X1 _2018_ (
    .A(_179_),
    .B(_182_),
    .S(_181_),
    .Y(_700_)
);

INVX1 _2191_ (
    .A(_544_),
    .Y(_296_)
);

AOI21X1 _1709_ (
    .A(_891_),
    .B(_935_),
    .C(_1060_),
    .Y(_759_)
);

NOR2X1 _1882_ (
    .A(_78_),
    .B(_67_),
    .Y(_79_)
);

NOR2X1 _1462_ (
    .A(raddr[7]),
    .B(_810_),
    .Y(_864_)
);

MUX2X1 _2247_ (
    .A(_329_),
    .B(_330_),
    .S(_124__bF$buf2),
    .Y(_619_)
);

NOR2X1 _1938_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_1108_),
    .Y(_128_)
);

INVX1 _1518_ (
    .A(\u_rf_if.last_req_key [0]),
    .Y(_918_)
);

INVX1 _1691_ (
    .A(_1047_),
    .Y(_1048_)
);

NAND2X1 _1271_ (
    .A(i_rst_n_bF$buf0),
    .B(\u_cpu.state.ibus_cyc ),
    .Y(_474_)
);

DFFPOSX1 _2476_ (
    .D(_758_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_if.last_req_key [4])
);

NAND2X1 _2056_ (
    .A(rf_wreg0_to_if[1]),
    .B(_204_),
    .Y(_210_)
);

FILL FILL95250x32550 (
);

NAND2X1 _1747_ (
    .A(_1085_),
    .B(_1087_),
    .Y(_1088_)
);

INVX1 _1327_ (
    .A(\u_cpu.bufreg.data [3]),
    .Y(_430_)
);

DFFPOSX1 _2285_ (
    .D(_809_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(raddr[7])
);

OAI21X1 _1976_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_580_),
    .C(_152_),
    .Y(_712_)
);

INVX1 _1556_ (
    .A(\u_rf_if.read_buf0 [4]),
    .Y(_950_)
);

MUX2X1 _2094_ (
    .A(_236_),
    .B(_237_),
    .S(_23__bF$buf0),
    .Y(_679_)
);

NOR2X1 _1785_ (
    .A(_1071_),
    .B(_1123_),
    .Y(_1124_)
);

OAI21X1 _1365_ (
    .A(_489__bF$buf4),
    .B(_398_),
    .C(_401_),
    .Y(_397_)
);

FILL FILL95550x75750 (
);

OAI21X1 _1594_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(\u_rf_if.read_buf0 [13]),
    .C(_978_),
    .Y(_979_)
);

INVX1 _1174_ (
    .A(_567_),
    .Y(_566_)
);

DFFPOSX1 _2379_ (
    .D(_677_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [24])
);

OAI21X1 _2188_ (
    .A(_282_),
    .B(_292_),
    .C(_293_),
    .Y(_294_)
);

INVX1 _1879_ (
    .A(_75_),
    .Y(_76_)
);

INVX2 _1459_ (
    .A(\u_rf_if.prefetch_active ),
    .Y(_862_)
);

DFFPOSX1 _2400_ (
    .D(_698_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2])
);

NAND2X1 _1688_ (
    .A(_1044_),
    .B(_942_),
    .Y(_1045_)
);

OAI21X1 _1268_ (
    .A(_478_),
    .B(_480_),
    .C(\u_mem_serial.req_pending ),
    .Y(_477_)
);

NAND2X1 _1900_ (
    .A(_868_),
    .B(_884_),
    .Y(_96_)
);

OR2X2 _1497_ (
    .A(_520_),
    .B(raddr[1]),
    .Y(_897_)
);

DFFPOSX1 _2303_ (
    .D(_737_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.wdata0_next_phase )
);

DFFPOSX1 _2532_ (
    .D(\u_cpu.state.cnt_r [0]),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.state.cnt_r [1])
);

MUX2X1 _2112_ (
    .A(_245_),
    .B(_246_),
    .S(_23__bF$buf2),
    .Y(_670_)
);

NAND3X1 _1803_ (
    .A(_1043_),
    .B(_1135_),
    .C(_1136_),
    .Y(_1114_)
);

DFFPOSX1 _2341_ (
    .D(_837_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_reg [23])
);

INVX1 _1612_ (
    .A(\u_rf_if.read_buf0 [17]),
    .Y(_992_)
);

NAND2X1 _2150_ (
    .A(_262_),
    .B(_265_),
    .Y(_266_)
);

CLKBUF1 CLKBUF1_insert20 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf2)
);

CLKBUF1 CLKBUF1_insert21 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf1)
);

CLKBUF1 CLKBUF1_insert22 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf0)
);

CLKBUF1 CLKBUF1_insert23 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf7)
);

CLKBUF1 CLKBUF1_insert24 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf6)
);

CLKBUF1 CLKBUF1_insert25 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf5)
);

CLKBUF1 CLKBUF1_insert26 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf4)
);

CLKBUF1 CLKBUF1_insert27 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf3)
);

CLKBUF1 CLKBUF1_insert28 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf2)
);

CLKBUF1 CLKBUF1_insert29 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf1)
);

AND2X2 _1841_ (
    .A(_13_),
    .B(_37_),
    .Y(_38_)
);

NAND3X1 _1421_ (
    .A(\u_mem_serial.shift_reg [8]),
    .B(_489__bF$buf2),
    .C(_459__bF$buf1),
    .Y(_357_)
);

OAI21X1 _2206_ (
    .A(_545_),
    .B(_308_),
    .C(_547_),
    .Y(_309_)
);

OAI21X1 _1650_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(\u_rf_if.read_buf0 [27]),
    .C(_1020_),
    .Y(_1021_)
);

INVX1 _1230_ (
    .A(\u_rf_if.shift_rx [1]),
    .Y(_511_)
);

DFFPOSX1 _2435_ (
    .D(_729_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.state.init_done )
);

NAND2X1 _2015_ (
    .A(_43_),
    .B(_138_),
    .Y(_180_)
);

OAI21X1 _1706_ (
    .A(_913_),
    .B(_935_),
    .C(i_rst_n_bF$buf1),
    .Y(_1059_)
);

INVX1 _2244_ (
    .A(\u_cpu.ctrl.o_ibus_adr [13]),
    .Y(_329_)
);

OAI21X1 _1935_ (
    .A(_123_),
    .B(_125_),
    .C(_126_),
    .Y(_728_)
);

NAND2X1 _1515_ (
    .A(\u_rf_if.last_req_key [2]),
    .B(_912_),
    .Y(_915_)
);

DFFPOSX1 _2473_ (
    .D(_623_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [16])
);

NAND2X1 _2053_ (
    .A(rf_wreg0_to_if[2]),
    .B(_204_),
    .Y(_208_)
);

NOR2X1 _1744_ (
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_1085_)
);

MUX2X1 _1324_ (
    .A(_433_),
    .B(_438_),
    .S(_459__bF$buf4),
    .Y(_843_)
);

DFFPOSX1 _2529_ (
    .D(_795_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [8])
);

INVX1 _2109_ (
    .A(\u_cpu.bufreg.data [18]),
    .Y(_245_)
);

DFFPOSX1 _2282_ (
    .D(_807_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [9])
);

NOR2X1 _1973_ (
    .A(_151_),
    .B(_150_),
    .Y(_714_)
);

FILL FILL94950x3750 (
);

NOR2X1 _1553_ (
    .A(\u_rf_if.read_buf0 [1]),
    .B(_586__bF$buf4),
    .Y(_948_)
);

DFFPOSX1 _2338_ (
    .D(_651_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.state.i_ctrl_misalign )
);

INVX1 _2091_ (
    .A(\u_cpu.bufreg.data [27]),
    .Y(_236_)
);

NAND2X1 _1609_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_989_),
    .Y(_990_)
);

NOR2X1 _1782_ (
    .A(\u_rf_if.o_waddr [1]),
    .B(\u_rf_if.o_waddr [0]),
    .Y(_1121_)
);

INVX1 _1362_ (
    .A(\u_cpu.bufreg.data [8]),
    .Y(_400_)
);

INVX1 _2147_ (
    .A(\u_cpu.bufreg.c_r ),
    .Y(_263_)
);

NAND2X1 _1838_ (
    .A(_34_),
    .B(_565_),
    .Y(_35_)
);

NAND3X1 _1418_ (
    .A(\u_mem_serial.shift_reg [7]),
    .B(_489__bF$buf2),
    .C(_459__bF$buf1),
    .Y(_359_)
);

MUX2X1 _1591_ (
    .A(_976_),
    .B(_971_),
    .S(_586__bF$buf1),
    .Y(_793_)
);

NOR2X1 _1171_ (
    .A(_571_),
    .B(_570_),
    .Y(_569_)
);

DFFPOSX1 _2376_ (
    .D(_674_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [21])
);

MUX2X1 _1647_ (
    .A(_1018_),
    .B(_1013_),
    .S(_586__bF$buf0),
    .Y(_779_)
);

AND2X2 _1227_ (
    .A(_520_),
    .B(rf_wreg0_to_if[3]),
    .Y(_514_)
);

OAI21X1 _2185_ (
    .A(_541_),
    .B(_290_),
    .C(_547_),
    .Y(_291_)
);

OR2X2 _1876_ (
    .A(_72_),
    .B(_66_),
    .Y(_73_)
);

INVX1 _1456_ (
    .A(\u_mem_serial.bit_count [5]),
    .Y(_860_)
);

NOR2X1 _1685_ (
    .A(_942_),
    .B(_868_),
    .Y(_1043_)
);

INVX1 _1265_ (
    .A(_481_),
    .Y(_480_)
);

NOR2X1 _1494_ (
    .A(_891_),
    .B(_893_),
    .Y(_894_)
);

OAI21X1 _2279_ (
    .A(_557_),
    .B(_118_),
    .C(_341_),
    .Y(_598_)
);

BUFX2 BUFX2_insert0 (
    .A(_124_),
    .Y(_124__bF$buf4)
);

BUFX2 BUFX2_insert1 (
    .A(_124_),
    .Y(_124__bF$buf3)
);

BUFX2 BUFX2_insert2 (
    .A(_124_),
    .Y(_124__bF$buf2)
);

BUFX2 BUFX2_insert3 (
    .A(_124_),
    .Y(_124__bF$buf1)
);

BUFX2 BUFX2_insert4 (
    .A(_124_),
    .Y(_124__bF$buf0)
);

BUFX2 BUFX2_insert5 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf3)
);

BUFX2 BUFX2_insert6 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf2)
);

BUFX2 BUFX2_insert7 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf1)
);

BUFX2 BUFX2_insert8 (
    .A(i_rst_n),
    .Y(i_rst_n_bF$buf0)
);

INVX1 _2088_ (
    .A(\u_cpu.bufreg.data [28]),
    .Y(_234_)
);

FILL FILL95550x61350 (
);

FILL FILL95550x28950 (
);

AND2X2 _1779_ (
    .A(_577_),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_1118_)
);

MUX2X1 _1359_ (
    .A(_403_),
    .B(_408_),
    .S(_459__bF$buf0),
    .Y(_838_)
);

DFFPOSX1 _2300_ (
    .D(_600_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [31])
);

INVX1 _1588_ (
    .A(\u_rf_if.read_buf0 [11]),
    .Y(_974_)
);

INVX1 _1168_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .Y(_572_)
);

NAND2X1 _1800_ (
    .A(ren),
    .B(_868_),
    .Y(_1134_)
);

NAND3X1 _1397_ (
    .A(\u_mem_serial.shift_reg [0]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf4),
    .Y(_373_)
);

INVX1 _2203_ (
    .A(\u_cpu.bufreg.i_shamt [0]),
    .Y(_306_)
);

DFFPOSX1 _2432_ (
    .D(_607_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.ctrl.pc )
);

NOR2X1 _2012_ (
    .A(_177_),
    .B(_161_),
    .Y(_178_)
);

INVX1 _1703_ (
    .A(_898_),
    .Y(_1057_)
);

MUX2X1 _2241_ (
    .A(_326_),
    .B(_327_),
    .S(_124__bF$buf2),
    .Y(_622_)
);

NOR2X1 _1932_ (
    .A(_557_),
    .B(_550_),
    .Y(_124_)
);

OAI21X1 _1512_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(ren),
    .C(_911_),
    .Y(_912_)
);

DFFPOSX1 _2470_ (
    .D(_755_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_if.last_req_key [7])
);

NAND2X1 _2050_ (
    .A(rf_wreg0_to_if[3]),
    .B(_204_),
    .Y(_206_)
);

OAI21X1 _1741_ (
    .A(\u_rf_if.o_waddr [2]),
    .B(_1079_),
    .C(_526_),
    .Y(_1083_)
);

INVX1 _1321_ (
    .A(\u_cpu.ctrl.o_ibus_adr [2]),
    .Y(_435_)
);

DFFPOSX1 _2526_ (
    .D(_792_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.read_buf0 [11])
);

MUX2X1 _2106_ (
    .A(_242_),
    .B(_243_),
    .S(_23__bF$buf3),
    .Y(_673_)
);

OAI21X1 _1970_ (
    .A(_456_),
    .B(_144_),
    .C(_149_),
    .Y(_715_)
);

MUX2X1 _1550_ (
    .A(\u_rf_if.read_buf0 [1]),
    .B(\u_rf_if.read_buf0 [2]),
    .S(\u_rf_if.stream_active_bF$buf6 ),
    .Y(_946_)
);

DFFPOSX1 _2335_ (
    .D(_659_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [6])
);

OAI21X1 _1606_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [16]),
    .C(_987_),
    .Y(_988_)
);

OAI21X1 _2144_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_26_),
    .C(_259_),
    .Y(_260_)
);

INVX1 _1835_ (
    .A(_31_),
    .Y(_32_)
);

NAND3X1 _1415_ (
    .A(\u_mem_serial.shift_reg [6]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf6),
    .Y(_361_)
);

DFFPOSX1 _2373_ (
    .D(_1097_[2]),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg2.i_bytecnt [1])
);

INVX1 _1644_ (
    .A(\u_rf_if.read_buf0 [25]),
    .Y(_1016_)
);

AND2X2 _1224_ (
    .A(_521_),
    .B(_518_),
    .Y(_517_)
);

DFFPOSX1 _2429_ (
    .D(_724_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.bne_or_bge )
);

AOI21X1 _2009_ (
    .A(_173_),
    .B(_161_),
    .C(_175_),
    .Y(_702_)
);

OAI21X1 _2182_ (
    .A(_282_),
    .B(_288_),
    .C(_287_),
    .Y(_642_)
);

NOR2X1 _1873_ (
    .A(\u_cpu.branch_op ),
    .B(_1117_),
    .Y(_70_)
);

NOR2X1 _1453_ (
    .A(\u_mem_serial.bit_count [4]),
    .B(_741_),
    .Y(_855_)
);

INVX1 _2238_ (
    .A(\u_cpu.ctrl.o_ibus_adr [16]),
    .Y(_326_)
);

OAI21X1 _1929_ (
    .A(_105_),
    .B(_565_),
    .C(_122_),
    .Y(_730_)
);

INVX1 _1509_ (
    .A(\u_rf_if.last_req_key [2]),
    .Y(_909_)
);

AOI21X1 _1682_ (
    .A(_1040_),
    .B(_810_),
    .C(_1041_),
    .Y(_767_)
);

INVX1 _1262_ (
    .A(\u_mem_serial.shift_reg [31]),
    .Y(_482_)
);

DFFPOSX1 _2467_ (
    .D(_620_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [13])
);

INVX1 _2047_ (
    .A(_202_),
    .Y(_203_)
);

OAI21X1 _1738_ (
    .A(\u_rf_if.o_waddr [1]),
    .B(_1080_),
    .C(_526_),
    .Y(_1081_)
);

INVX1 _1318_ (
    .A(\u_mem_serial.shift_reg [17]),
    .Y(_438_)
);

INVX1 _1491_ (
    .A(\u_rf_if.last_req_key [3]),
    .Y(_891_)
);

OAI22X1 _2276_ (
    .A(_336_),
    .B(_124__bF$buf3),
    .C(_340_),
    .D(_339_),
    .Y(_600_)
);

INVX1 _1967_ (
    .A(_451_),
    .Y(_147_)
);

NAND2X1 _1547_ (
    .A(\u_rf_if.tx_state [4]),
    .B(_943_),
    .Y(_944_)
);

AOI22X1 _2085_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(\u_mem_serial.shift_reg [11]),
    .C(_203_),
    .D(_230_),
    .Y(_232_)
);

INVX1 _1776_ (
    .A(\u_cpu.bufreg.i_sh_signed ),
    .Y(_1115_)
);

INVX1 _1356_ (
    .A(\u_cpu.ctrl.o_ibus_adr [7]),
    .Y(_405_)
);

FILL FILL95550x82950 (
);

NAND2X1 _1585_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_971_),
    .Y(_972_)
);

OAI21X1 _1165_ (
    .A(_578_),
    .B(_576_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_575_)
);

NOR2X1 _1394_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(_459__bF$buf3),
    .Y(_375_)
);

NAND3X1 _2179_ (
    .A(_569_),
    .B(_280_),
    .C(_548_),
    .Y(_286_)
);

AOI21X1 _1679_ (
    .A(_596_),
    .B(_810_),
    .C(_1039_),
    .Y(_768_)
);

OAI22X1 _1259_ (
    .A(_506_),
    .B(_484_),
    .C(_582_),
    .D(_491_),
    .Y(_857_)
);

OAI21X1 _2200_ (
    .A(_295_),
    .B(_547_),
    .C(_282_),
    .Y(_304_)
);

OR2X2 _1488_ (
    .A(_515_),
    .B(\u_rf_if.last_req_key [5]),
    .Y(_888_)
);

FILL FILL95550x14550 (
);

OAI21X1 _1700_ (
    .A(_922_),
    .B(_935_),
    .C(i_rst_n_bF$buf2),
    .Y(_1055_)
);

INVX1 _1297_ (
    .A(_453_),
    .Y(_452_)
);

DFFPOSX1 _2523_ (
    .D(_789_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [14])
);

INVX1 _2103_ (
    .A(\u_cpu.bufreg.data [21]),
    .Y(_242_)
);

DFFPOSX1 _2332_ (
    .D(_832_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [28])
);

MUX2X1 _1603_ (
    .A(_985_),
    .B(_980_),
    .S(_586__bF$buf1),
    .Y(_790_)
);

MUX2X1 _2141_ (
    .A(_256_),
    .B(_235_),
    .S(_23__bF$buf1),
    .Y(_652_)
);

NAND2X1 _1832_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .B(_28_),
    .Y(_29_)
);

NAND3X1 _1412_ (
    .A(\u_mem_serial.shift_reg [5]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf6),
    .Y(_363_)
);

BUFX2 BUFX2_insert50 (
    .A(_489_),
    .Y(_489__bF$buf3)
);

BUFX2 BUFX2_insert51 (
    .A(_489_),
    .Y(_489__bF$buf2)
);

BUFX2 BUFX2_insert52 (
    .A(_489_),
    .Y(_489__bF$buf1)
);

BUFX2 BUFX2_insert53 (
    .A(_489_),
    .Y(_489__bF$buf0)
);

BUFX2 BUFX2_insert54 (
    .A(_459_),
    .Y(_459__bF$buf6)
);

BUFX2 BUFX2_insert55 (
    .A(_459_),
    .Y(_459__bF$buf5)
);

BUFX2 BUFX2_insert56 (
    .A(_459_),
    .Y(_459__bF$buf4)
);

BUFX2 BUFX2_insert57 (
    .A(_459_),
    .Y(_459__bF$buf3)
);

BUFX2 BUFX2_insert58 (
    .A(_459_),
    .Y(_459__bF$buf2)
);

BUFX2 BUFX2_insert59 (
    .A(_459_),
    .Y(_459__bF$buf1)
);

DFFPOSX1 _2370_ (
    .D(_669_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [16])
);

NAND2X1 _1641_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1013_),
    .Y(_1014_)
);

INVX2 _1221_ (
    .A(ren),
    .Y(_520_)
);

DFFPOSX1 _2426_ (
    .D(_721_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.decode.opcode [1])
);

INVX1 _2006_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1]),
    .Y(_173_)
);

NAND2X1 _1870_ (
    .A(_1108_),
    .B(_36_),
    .Y(_67_)
);

OAI21X1 _1450_ (
    .A(_503_),
    .B(_348_),
    .C(_735_),
    .Y(_813_)
);

MUX2X1 _2235_ (
    .A(_323_),
    .B(_324_),
    .S(_124__bF$buf3),
    .Y(_625_)
);

OR2X2 _1926_ (
    .A(_118_),
    .B(\u_cpu.bne_or_bge ),
    .Y(_120_)
);

AOI21X1 _1506_ (
    .A(_904_),
    .B(_905_),
    .C(_903_),
    .Y(_906_)
);

DFFPOSX1 _2464_ (
    .D(_752_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.rcnt [0])
);

NOR2X1 _2044_ (
    .A(_200_),
    .B(_193_),
    .Y(_201_)
);

INVX1 _1735_ (
    .A(\u_rf_if.o_waddr [1]),
    .Y(_1078_)
);

INVX1 _1315_ (
    .A(\u_mem_serial.shift_reg [16]),
    .Y(_440_)
);

NOR2X1 _2273_ (
    .A(_338_),
    .B(_125_),
    .Y(_601_)
);

FILL FILL95550x7350 (
);

NAND2X1 _1964_ (
    .A(_455_),
    .B(_454_),
    .Y(_145_)
);

INVX1 _1544_ (
    .A(i_rst_n_bF$buf0),
    .Y(_941_)
);

DFFPOSX1 _2329_ (
    .D(_656_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.bufreg.data [3])
);

NOR2X1 _2082_ (
    .A(mem_ibus_ack_bF$buf2),
    .B(_189_),
    .Y(_230_)
);

OAI21X1 _1773_ (
    .A(_583_),
    .B(_525_),
    .C(\u_rf_if.wen0_r ),
    .Y(_1106_)
);

INVX1 _1353_ (
    .A(\u_mem_serial.shift_reg [22]),
    .Y(_408_)
);

INVX1 _2138_ (
    .A(\u_cpu.bufreg.data [30]),
    .Y(_256_)
);

INVX1 _1829_ (
    .A(\u_cpu.decode.opcode [1]),
    .Y(_26_)
);

NAND3X1 _1409_ (
    .A(\u_mem_serial.shift_reg [4]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf6),
    .Y(_365_)
);

OAI21X1 _1582_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [10]),
    .C(_969_),
    .Y(_970_)
);

NOR2X1 _1162_ (
    .A(_580_),
    .B(_579_),
    .Y(_578_)
);

DFFPOSX1 _2367_ (
    .D(_858_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [31])
);

OAI21X1 _1638_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(\u_rf_if.read_buf0 [24]),
    .C(_1011_),
    .Y(_1012_)
);

INVX1 _1218_ (
    .A(rf_wreg0_to_if[2]),
    .Y(_523_)
);

NOR2X1 _1391_ (
    .A(\u_mem_serial.shift_reg [29]),
    .B(_459__bF$buf2),
    .Y(_377_)
);

OAI21X1 _2176_ (
    .A(_552_),
    .B(_548_),
    .C(_283_),
    .Y(_284_)
);

INVX1 _1867_ (
    .A(\u_cpu.alu.add_cy_r ),
    .Y(_64_)
);

INVX1 _1447_ (
    .A(_719_),
    .Y(_732_)
);

NOR2X1 _1676_ (
    .A(raddr[4]),
    .B(_810_),
    .Y(_1038_)
);

INVX1 _1256_ (
    .A(_487_),
    .Y(_486_)
);

OR2X2 _1485_ (
    .A(_884_),
    .B(\u_rf_if.last_req_key [4]),
    .Y(_885_)
);

INVX1 _1294_ (
    .A(\u_rf_if.stream_cnt [0]),
    .Y(_455_)
);

DFFPOSX1 _2499_ (
    .D(_772_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(raddr[1])
);

AOI21X1 _2079_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_reg [30]),
    .C(_181_),
    .Y(_228_)
);

OAI21X1 _1999_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_1101_),
    .C(_152_),
    .Y(_168_)
);

MUX2X1 _1579_ (
    .A(_967_),
    .B(_962_),
    .S(_586__bF$buf0),
    .Y(_796_)
);

INVX1 _1159_ (
    .A(\u_cpu.state.init_done ),
    .Y(_581_)
);

DFFPOSX1 _2520_ (
    .D(\u_cpu.state.cnt_r [1]),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.state.cnt_r [2])
);

MUX2X1 _2100_ (
    .A(_239_),
    .B(_240_),
    .S(_23__bF$buf3),
    .Y(_676_)
);

NOR2X1 _1388_ (
    .A(\u_mem_serial.shift_reg [28]),
    .B(_459__bF$buf2),
    .Y(_379_)
);

FILL FILL94650x93750 (
);

INVX1 _1600_ (
    .A(\u_rf_if.read_buf0 [14]),
    .Y(_983_)
);

NOR2X1 _1197_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .B(_544_),
    .Y(_543_)
);

DFFPOSX1 _2423_ (
    .D(_717_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.stream_cnt [0])
);

OAI21X1 _2003_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_167_),
    .C(_136_),
    .Y(_171_)
);

INVX1 _2232_ (
    .A(\u_cpu.ctrl.o_ibus_adr [19]),
    .Y(_323_)
);

NAND2X1 _1923_ (
    .A(_116_),
    .B(_115_),
    .Y(_117_)
);

OAI21X1 _1503_ (
    .A(\u_rf_if.last_req_key [1]),
    .B(_898_),
    .C(_902_),
    .Y(_903_)
);

DFFPOSX1 _2461_ (
    .D(_618_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [11])
);

MUX2X1 _2041_ (
    .A(_197_),
    .B(_198_),
    .S(_193_),
    .Y(_693_)
);

NAND2X1 _1732_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(_1074_),
    .Y(_1076_)
);

AOI22X1 _1312_ (
    .A(\u_mem_serial.shift_reg [14]),
    .B(_489__bF$buf1),
    .C(_443_),
    .D(\u_cpu.ctrl.pc ),
    .Y(_442_)
);

DFFPOSX1 _2517_ (
    .D(_786_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_rf_if.read_buf0 [17])
);

MUX2X1 _2270_ (
    .A(_337_),
    .B(_334_),
    .S(_124__bF$buf4),
    .Y(_603_)
);

NAND3X1 _1961_ (
    .A(_140_),
    .B(_141_),
    .C(_143_),
    .Y(_718_)
);

INVX1 _1541_ (
    .A(_938_),
    .Y(_939_)
);

DFFPOSX1 _2326_ (
    .D(_655_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.bufreg.data [2])
);

OAI21X1 _1770_ (
    .A(_879_),
    .B(_1104_),
    .C(_1113_),
    .Y(_1105_)
);

MUX2X1 _1350_ (
    .A(_412_),
    .B(_411_),
    .S(_474_),
    .Y(_410_)
);

NAND3X1 _2135_ (
    .A(_560_),
    .B(_16_),
    .C(_550_),
    .Y(_254_)
);

NAND2X1 _1826_ (
    .A(_20_),
    .B(_22_),
    .Y(_23_)
);

NAND3X1 _1406_ (
    .A(\u_mem_serial.shift_reg [3]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf6),
    .Y(_367_)
);

DFFPOSX1 _2364_ (
    .D(_854_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.req_pending )
);

MUX2X1 _1635_ (
    .A(_1009_),
    .B(_1004_),
    .S(_586__bF$buf3),
    .Y(_782_)
);

NAND2X1 _1215_ (
    .A(_582_),
    .B(_526_),
    .Y(_525_)
);

AOI22X1 _2173_ (
    .A(_278_),
    .B(_279_),
    .C(_550_),
    .D(_280_),
    .Y(_281_)
);

INVX1 _1864_ (
    .A(_25_),
    .Y(_61_)
);

OAI21X1 _1444_ (
    .A(_342_),
    .B(_343_),
    .C(_489__bF$buf3),
    .Y(_597_)
);

MUX2X1 _2229_ (
    .A(_320_),
    .B(_321_),
    .S(_124__bF$buf4),
    .Y(_628_)
);

OAI21X1 _1673_ (
    .A(_862_),
    .B(_592_),
    .C(raddr[3]),
    .Y(_1036_)
);

NOR2X1 _1253_ (
    .A(\u_mem_serial.state [1]),
    .B(_490_),
    .Y(_489_)
);

DFFPOSX1 _2458_ (
    .D(_748_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.o_waddr [2])
);

MUX2X1 _2038_ (
    .A(_195_),
    .B(_196_),
    .S(_193_),
    .Y(_694_)
);

NOR2X1 _1729_ (
    .A(_1073_),
    .B(_525_),
    .Y(_751_)
);

NAND3X1 _1309_ (
    .A(i_mem_miso),
    .B(_445_),
    .C(_487_),
    .Y(_444_)
);

NOR2X1 _1482_ (
    .A(\u_rf_if.last_req_key [6]),
    .B(_521_),
    .Y(_882_)
);

MUX2X1 _2267_ (
    .A(_336_),
    .B(_335_),
    .S(_124__bF$buf3),
    .Y(_605_)
);

NAND2X1 _1958_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [31]),
    .Y(_141_)
);

AOI21X1 _1538_ (
    .A(_878_),
    .B(_936_),
    .C(_937_),
    .Y(_807_)
);

OAI21X1 _1291_ (
    .A(_461_),
    .B(_459__bF$buf5),
    .C(_458_),
    .Y(_851_)
);

DFFPOSX1 _2496_ (
    .D(_769_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(raddr[4])
);

OAI21X1 _2076_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .B(_223_),
    .C(_224_),
    .Y(_225_)
);

OAI21X1 _1767_ (
    .A(\u_rf_if.tx_state [0]),
    .B(_879_),
    .C(\u_rf_if.launch_pending ),
    .Y(_1103_)
);

NAND2X1 _1347_ (
    .A(_420_),
    .B(_489__bF$buf4),
    .Y(_413_)
);

MUX2X1 _1996_ (
    .A(\u_mem_serial.shift_reg [15]),
    .B(rf_read_reg0_to_if[1]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_166_)
);

INVX1 _1576_ (
    .A(\u_rf_if.read_buf0 [8]),
    .Y(_965_)
);

NAND2X1 _1156_ (
    .A(\u_rf_if.read_buf0 [31]),
    .B(_585_),
    .Y(_584_)
);

NOR2X1 _1385_ (
    .A(\u_mem_serial.shift_reg [27]),
    .B(_459__bF$buf2),
    .Y(_381_)
);

INVX1 _1194_ (
    .A(\u_cpu.bufreg.i_shamt [2]),
    .Y(_546_)
);

DFFPOSX1 _2399_ (
    .D(_697_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1])
);

NAND3X1 _1899_ (
    .A(_1048_),
    .B(_93_),
    .C(_94_),
    .Y(_95_)
);

NAND2X1 _1479_ (
    .A(_866_),
    .B(_872_),
    .Y(_879_)
);

DFFPOSX1 _2420_ (
    .D(_605_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [30])
);

NOR2X1 _2000_ (
    .A(_168_),
    .B(_161_),
    .Y(_169_)
);

INVX1 _1288_ (
    .A(\u_mem_serial.bit_count [1]),
    .Y(_460_)
);

NAND2X1 _1920_ (
    .A(_113_),
    .B(_84_),
    .Y(_114_)
);

NOR2X1 _1500_ (
    .A(ren),
    .B(_899_),
    .Y(_900_)
);

DFFPOSX1 _2514_ (
    .D(_857_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(mem_ibus_ack)
);

DFFPOSX1 _2323_ (
    .D(_827_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [3])
);

MUX2X1 _2132_ (
    .A(_424_),
    .B(_430_),
    .S(_23__bF$buf4),
    .Y(_656_)
);

NAND2X1 _1823_ (
    .A(_575_),
    .B(_19_),
    .Y(_20_)
);

NAND3X1 _1403_ (
    .A(\u_mem_serial.shift_reg [2]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf6),
    .Y(_369_)
);

DFFPOSX1 _2361_ (
    .D(_852_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.bit_count [6])
);

INVX1 _1632_ (
    .A(\u_rf_if.read_buf0 [22]),
    .Y(_1007_)
);

OAI21X1 _1212_ (
    .A(\u_cpu.branch_op ),
    .B(_529_),
    .C(_563_),
    .Y(_528_)
);

DFFPOSX1 _2417_ (
    .D(_714_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.stream_cnt [3])
);

OAI21X1 _2170_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .B(\u_cpu.state.i_ctrl_misalign ),
    .C(_277_),
    .Y(_278_)
);

AOI21X1 _1861_ (
    .A(_16_),
    .B(\u_cpu.state.cnt_r [2]),
    .C(_55_),
    .Y(_58_)
);

INVX1 _1441_ (
    .A(\u_mem_serial.bit_count [2]),
    .Y(_344_)
);

INVX1 _2226_ (
    .A(\u_cpu.ctrl.o_ibus_adr [22]),
    .Y(_320_)
);

OAI21X1 _1917_ (
    .A(_66_),
    .B(_72_),
    .C(_63_),
    .Y(_111_)
);

OAI21X1 _1670_ (
    .A(_862_),
    .B(_592_),
    .C(raddr[1]),
    .Y(_1035_)
);

OAI21X1 _1250_ (
    .A(_506_),
    .B(_493_),
    .C(\u_mem_serial.state [0]),
    .Y(_492_)
);

DFFPOSX1 _2455_ (
    .D(_615_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [8])
);

MUX2X1 _2035_ (
    .A(_191_),
    .B(_194_),
    .S(_193_),
    .Y(_695_)
);

INVX1 _1726_ (
    .A(\u_rf_if.rcnt [2]),
    .Y(_1071_)
);

OAI21X1 _1306_ (
    .A(_482_),
    .B(_459__bF$buf5),
    .C(_447_),
    .Y(_847_)
);

MUX2X1 _2264_ (
    .A(_334_),
    .B(_316_),
    .S(_124__bF$buf4),
    .Y(_606_)
);

NAND2X1 _1955_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(\u_mem_serial.shift_reg [2]),
    .Y(_139_)
);

NAND2X1 _1535_ (
    .A(_880_),
    .B(_934_),
    .Y(_935_)
);

DFFPOSX1 _2493_ (
    .D(_766_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.tx_state [0])
);

NAND2X1 _2073_ (
    .A(\u_cpu.branch_op ),
    .B(_532_),
    .Y(_222_)
);

INVX1 _1764_ (
    .A(\u_cpu.csr_imm ),
    .Y(_1101_)
);

OAI21X1 _1344_ (
    .A(_489__bF$buf4),
    .B(_416_),
    .C(_419_),
    .Y(_415_)
);

MUX2X1 _2129_ (
    .A(_406_),
    .B(_412_),
    .S(_23__bF$buf4),
    .Y(_659_)
);

MUX2X1 _1993_ (
    .A(_163_),
    .B(_164_),
    .S(_161_),
    .Y(_707_)
);

NAND2X1 _1573_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_962_),
    .Y(_963_)
);

OAI21X1 _1153_ (
    .A(_592_),
    .B(_588_),
    .C(\u_rf_if.prefetch_active ),
    .Y(_587_)
);

DFFPOSX1 _2358_ (
    .D(_664_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [11])
);

NAND2X1 _1629_ (
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_1004_),
    .Y(_1005_)
);

NAND2X1 _1209_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(_532_),
    .Y(_531_)
);

NOR2X1 _1382_ (
    .A(\u_mem_serial.shift_reg [26]),
    .B(_459__bF$buf2),
    .Y(_383_)
);

AOI21X1 _2167_ (
    .A(\u_rf_if.stream_cnt [4]),
    .B(_150_),
    .C(_276_),
    .Y(_645_)
);

NOR2X1 _1858_ (
    .A(_54_),
    .B(_53_),
    .Y(_55_)
);

NOR2X1 _1438_ (
    .A(_460_),
    .B(_496_),
    .Y(_346_)
);

OAI21X1 _1191_ (
    .A(_580_),
    .B(_564_),
    .C(_550_),
    .Y(_549_)
);

DFFPOSX1 _2396_ (
    .D(_694_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_read_reg1_to_if[2])
);

MUX2X1 _1667_ (
    .A(_1032_),
    .B(_919_),
    .S(_810_),
    .Y(_773_)
);

NAND2X1 _1247_ (
    .A(_498_),
    .B(_496_),
    .Y(_495_)
);

AOI21X1 _1896_ (
    .A(_90_),
    .B(_91_),
    .C(_10_),
    .Y(_92_)
);

INVX1 _1476_ (
    .A(\u_rf_if.rtrig1 ),
    .Y(_876_)
);

OAI21X1 _1285_ (
    .A(_467_),
    .B(_463_),
    .C(_465_),
    .Y(_462_)
);

FILL FILL95250x54150 (
);

DFFPOSX1 _2299_ (
    .D(_816_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.bit_count [0])
);

DFFPOSX1 _2511_ (
    .D(_782_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [21])
);

NAND2X1 _1799_ (
    .A(_942_),
    .B(_877_),
    .Y(_1133_)
);

OAI21X1 _1379_ (
    .A(_489__bF$buf0),
    .B(_386_),
    .C(_389_),
    .Y(_385_)
);

DFFPOSX1 _2320_ (
    .D(_652_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [29])
);

INVX2 _1188_ (
    .A(_553_),
    .Y(_552_)
);

NAND2X1 _1820_ (
    .A(\u_cpu.state.cnt_r [0]),
    .B(_16_),
    .Y(_17_)
);

NAND3X1 _1400_ (
    .A(\u_mem_serial.shift_reg [1]),
    .B(_489__bF$buf5),
    .C(_459__bF$buf6),
    .Y(_371_)
);

DFFPOSX1 _2414_ (
    .D(_712_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.bufreg.i_right_shift_op )
);

MUX2X1 _2223_ (
    .A(_317_),
    .B(_318_),
    .S(_124__bF$buf2),
    .Y(_631_)
);

NAND2X1 _1914_ (
    .A(_107_),
    .B(_17_),
    .Y(_108_)
);

DFFPOSX1 _2452_ (
    .D(\u_rf_if.wdata0_next [0]),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.wdata0_r [0])
);

OAI21X1 _2032_ (
    .A(_11_),
    .B(_554_),
    .C(_128_),
    .Y(_192_)
);

INVX1 _1723_ (
    .A(\u_rf_if.rcnt [1]),
    .Y(_1067_)
);

AOI21X1 _1303_ (
    .A(_493_),
    .B(\u_mem_serial.state [0]),
    .C(\u_mem_serial.state [1]),
    .Y(_448_)
);

DFFPOSX1 _2508_ (
    .D(_780_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [23])
);

NOR2X1 _2261_ (
    .A(\u_cpu.ctrl.pc ),
    .B(_124__bF$buf1),
    .Y(_333_)
);

NOR2X1 _1952_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_cpu.decode.opcode [2]),
    .Y(_138_)
);

NOR2X1 _1532_ (
    .A(_928_),
    .B(_931_),
    .Y(_932_)
);

DFFPOSX1 _2317_ (
    .D(_824_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_reg [6])
);

DFFPOSX1 _2490_ (
    .D(_631_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [24])
);

OAI21X1 _2070_ (
    .A(_557_),
    .B(_215_),
    .C(_219_),
    .Y(_685_)
);

AOI21X1 _1761_ (
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1095_),
    .C(_1099_),
    .Y(_744_)
);

INVX1 _1341_ (
    .A(\u_cpu.bufreg.data [5]),
    .Y(_418_)
);

MUX2X1 _2126_ (
    .A(_388_),
    .B(_394_),
    .S(_23__bF$buf1),
    .Y(_662_)
);

INVX1 _1817_ (
    .A(_13_),
    .Y(_14_)
);

MUX2X1 _1990_ (
    .A(_156_),
    .B(_162_),
    .S(_161_),
    .Y(_708_)
);

OAI21X1 _1570_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(\u_rf_if.read_buf0 [7]),
    .C(_960_),
    .Y(_961_)
);

INVX1 _1150_ (
    .A(\u_rf_if.issue_chunk [2]),
    .Y(_590_)
);

DFFPOSX1 _2355_ (
    .D(_848_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(_1110_)
);

OAI21X1 _1626_ (
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.read_buf0 [21]),
    .C(_1002_),
    .Y(_1003_)
);

AOI21X1 _1206_ (
    .A(_535_),
    .B(\u_cpu.bufreg.i_right_shift_op ),
    .C(_552_),
    .Y(_534_)
);

NAND2X1 _2164_ (
    .A(\u_rf_if.write_wait [1]),
    .B(\u_rf_if.write_wait [0]),
    .Y(_275_)
);

NAND2X1 _1855_ (
    .A(\u_cpu.state.cnt_r [2]),
    .B(_16_),
    .Y(_52_)
);

INVX2 _1435_ (
    .A(_463_),
    .Y(_348_)
);

DFFPOSX1 _2393_ (
    .D(_691_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(rf_wreg0_to_if[3])
);

NOR2X1 _1664_ (
    .A(\u_rf_if.read_buf0 [29]),
    .B(_586__bF$buf3),
    .Y(_1031_)
);

INVX1 _1244_ (
    .A(\u_mem_serial.bit_count [6]),
    .Y(_498_)
);

DFFPOSX1 _2449_ (
    .D(_744_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.issue_chunk [3])
);

MUX2X1 _2029_ (
    .A(\u_mem_serial.shift_reg [25]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_190_)
);

OAI21X1 _1893_ (
    .A(_14_),
    .B(_51_),
    .C(_89_),
    .Y(\u_cpu.o_wdata0 )
);

OAI21X1 _1473_ (
    .A(\u_rf_if.shift_rx [1]),
    .B(_873_),
    .C(i_rst_n_bF$buf0),
    .Y(_874_)
);

MUX2X1 _2258_ (
    .A(_429_),
    .B(_435_),
    .S(_124__bF$buf1),
    .Y(_609_)
);

NAND2X1 _1949_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(\u_mem_serial.shift_reg [12]),
    .Y(_137_)
);

OR2X2 _1529_ (
    .A(_513_),
    .B(\u_rf_if.last_req_key [7]),
    .Y(_929_)
);

INVX1 _1282_ (
    .A(_466_),
    .Y(_465_)
);

DFFPOSX1 _2487_ (
    .D(_763_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.tx_state [3])
);

AOI21X1 _2067_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_reg [19]),
    .C(_161_),
    .Y(_218_)
);

OAI21X1 _1758_ (
    .A(\u_rf_if.issue_chunk [2]),
    .B(_1096_),
    .C(_1088_),
    .Y(_1098_)
);

MUX2X1 _1338_ (
    .A(_421_),
    .B(_426_),
    .S(_459__bF$buf0),
    .Y(_841_)
);

DFFPOSX1 _2296_ (
    .D(_642_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg2.dhi [5])
);

OAI21X1 _1987_ (
    .A(_580_),
    .B(_32_),
    .C(_159_),
    .Y(_160_)
);

MUX2X1 _1567_ (
    .A(_958_),
    .B(_950_),
    .S(_586__bF$buf2),
    .Y(_799_)
);

NOR2X1 _1147_ (
    .A(\u_rf_if.issue_idx [5]),
    .B(\u_rf_if.issue_idx [4]),
    .Y(_593_)
);

FILL FILL94950x150 (
);

AND2X2 _1796_ (
    .A(_1088_),
    .B(\u_rf_if.issue_idx [5]),
    .Y(_733_)
);

INVX1 _1376_ (
    .A(\u_cpu.bufreg.data [10]),
    .Y(_388_)
);

OAI21X1 _1185_ (
    .A(_581_),
    .B(_556_),
    .C(_562_),
    .Y(_555_)
);

NOR2X1 _2199_ (
    .A(_546_),
    .B(_547_),
    .Y(_303_)
);

DFFPOSX1 _2411_ (
    .D(_709_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.req_seen )
);

AND2X2 _1699_ (
    .A(_1051_),
    .B(_1054_),
    .Y(_763_)
);

NOR2X1 _1279_ (
    .A(_469_),
    .B(_499_),
    .Y(_468_)
);

INVX1 _2220_ (
    .A(\u_cpu.ctrl.o_ibus_adr [25]),
    .Y(_317_)
);

INVX1 _1911_ (
    .A(\u_cpu.ctrl.i_jump ),
    .Y(_105_)
);

NAND2X1 _1720_ (
    .A(\u_rf_if.write_wait [1]),
    .B(_526_),
    .Y(_1066_)
);

NOR2X1 _1300_ (
    .A(_594_),
    .B(_450_),
    .Y(_449_)
);

DFFPOSX1 _2505_ (
    .D(_847_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [31])
);

DFFPOSX1 _2314_ (
    .D(_648_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_rf_if.ready_pulse )
);

DFFPOSX1 _2543_ (
    .D(_635_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.issue_reg [3])
);

INVX1 _2123_ (
    .A(\u_cpu.bufreg.data [11]),
    .Y(_252_)
);

INVX2 _1814_ (
    .A(\u_cpu.branch_op ),
    .Y(_11_)
);

DFFPOSX1 _2352_ (
    .D(_661_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.bufreg.data [8])
);

MUX2X1 _1623_ (
    .A(_1000_),
    .B(_995_),
    .S(_586__bF$buf4),
    .Y(_785_)
);

NAND3X1 _1203_ (
    .A(_540_),
    .B(_538_),
    .C(_547_),
    .Y(_537_)
);

DFFPOSX1 _2408_ (
    .D(_706_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(rf_read_reg0_to_if[1])
);

NOR2X1 _2161_ (
    .A(\u_rf_if.rcnt [1]),
    .B(\u_rf_if.rcnt [0]),
    .Y(_273_)
);

OR2X2 _1852_ (
    .A(_39_),
    .B(_48_),
    .Y(_49_)
);

INVX1 _1432_ (
    .A(\u_mem_serial.shift_reg [13]),
    .Y(_350_)
);

INVX1 _2217_ (
    .A(\u_cpu.ctrl.o_ibus_adr [26]),
    .Y(_315_)
);

DFFPOSX1 _2390_ (
    .D(_688_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(rf_wreg0_to_if[0])
);

AOI21X1 _1908_ (
    .A(_103_),
    .B(_2_),
    .C(_1131_),
    .Y(_1111_)
);

AOI21X1 _1661_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [29]),
    .C(_585_),
    .Y(_1029_)
);

NAND2X1 _1241_ (
    .A(_503_),
    .B(_502_),
    .Y(_501_)
);

DFFPOSX1 _2446_ (
    .D(_611_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.o_ibus_adr [4])
);

MUX2X1 _2026_ (
    .A(\u_mem_serial.shift_reg [26]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_188_)
);

AOI21X1 _1717_ (
    .A(_513_),
    .B(_936_),
    .C(_1064_),
    .Y(_755_)
);

AOI22X1 _1890_ (
    .A(\u_cpu.alu.cmp_r ),
    .B(_86_),
    .C(_85_),
    .D(\u_cpu.bufreg.i_right_shift_op ),
    .Y(_87_)
);

NAND2X1 _1470_ (
    .A(_869_),
    .B(_870_),
    .Y(_871_)
);

MUX2X1 _2255_ (
    .A(_411_),
    .B(_417_),
    .S(_124__bF$buf0),
    .Y(_612_)
);

OAI21X1 _1946_ (
    .A(_125_),
    .B(_135_),
    .C(_1106_),
    .Y(_726_)
);

NOR2X1 _1526_ (
    .A(_925_),
    .B(_916_),
    .Y(_926_)
);

FILL FILL94950x61350 (
);

DFFPOSX1 _2484_ (
    .D(_628_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [21])
);

NAND2X1 _2064_ (
    .A(_582_),
    .B(_34_),
    .Y(_215_)
);

NAND2X1 _1755_ (
    .A(_1091_),
    .B(_810_),
    .Y(_1094_)
);

INVX1 _1335_ (
    .A(\u_cpu.ctrl.o_ibus_adr [4]),
    .Y(_423_)
);

DFFPOSX1 _2293_ (
    .D(_813_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.bit_count [3])
);

NOR2X1 _1984_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(_558_),
    .Y(_157_)
);

INVX1 _1564_ (
    .A(\u_rf_if.read_buf0 [5]),
    .Y(_956_)
);

INVX1 _1144_ (
    .A(rf_read_reg0_to_if[1]),
    .Y(_595_)
);

DFFPOSX1 _2349_ (
    .D(_845_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [15])
);

NOR2X1 _1793_ (
    .A(_1129_),
    .B(_567_),
    .Y(_1097_[1])
);

MUX2X1 _1373_ (
    .A(_391_),
    .B(_396_),
    .S(_459__bF$buf0),
    .Y(_836_)
);

AOI21X1 _2158_ (
    .A(_574_),
    .B(_271_),
    .C(_269_),
    .Y(_272_)
);

OR2X2 _1849_ (
    .A(_45_),
    .B(_40_),
    .Y(_46_)
);

INVX1 _1429_ (
    .A(\u_mem_serial.shift_reg [12]),
    .Y(_352_)
);

NAND2X1 _1182_ (
    .A(_561_),
    .B(_559_),
    .Y(_558_)
);

DFFPOSX1 _2387_ (
    .D(_685_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 )
);

OAI21X1 _1658_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [29]),
    .C(_1026_),
    .Y(_1027_)
);

OAI21X1 _1238_ (
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_505_),
    .C(\u_mem_serial.state [1]),
    .Y(_504_)
);

NAND2X1 _2196_ (
    .A(_298_),
    .B(_300_),
    .Y(_640_)
);

NOR2X1 _1887_ (
    .A(_79_),
    .B(_83_),
    .Y(_84_)
);

NOR2X1 _1467_ (
    .A(_866_),
    .B(_867_),
    .Y(_868_)
);

INVX1 _1696_ (
    .A(\u_rf_if.tx_state [3]),
    .Y(_1052_)
);

OAI21X1 _1276_ (
    .A(_471_),
    .B(_472_),
    .C(_508_),
    .Y(_853_)
);

FILL FILL95250x61350 (
);

DFFPOSX1 _2502_ (
    .D(_775_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [28])
);

INVX1 _2099_ (
    .A(\u_cpu.bufreg.data [23]),
    .Y(_240_)
);

DFFPOSX1 _2311_ (
    .D(_821_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [9])
);

FILL FILL95250x3750 (
);

MUX2X1 _1599_ (
    .A(_982_),
    .B(_977_),
    .S(_586__bF$buf1),
    .Y(_791_)
);

INVX1 _1179_ (
    .A(\u_cpu.state.cnt_r [2]),
    .Y(_561_)
);

DFFPOSX1 _2540_ (
    .D(_804_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.tx_state [4])
);

MUX2X1 _2120_ (
    .A(_249_),
    .B(_250_),
    .S(_23__bF$buf2),
    .Y(_666_)
);

AOI21X1 _1811_ (
    .A(_7_),
    .B(\u_rf_if.wdata0_next [0]),
    .C(_867_),
    .Y(_8_)
);

INVX1 _1620_ (
    .A(\u_rf_if.read_buf0 [19]),
    .Y(_998_)
);

NAND2X1 _1200_ (
    .A(\u_cpu.bufreg2.dhi [5]),
    .B(_541_),
    .Y(_540_)
);

DFFPOSX1 _2405_ (
    .D(_703_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2])
);

MUX2X1 _2214_ (
    .A(_156_),
    .B(_863_),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_635_)
);

AOI21X1 _1905_ (
    .A(_97_),
    .B(_942_),
    .C(_100_),
    .Y(_101_)
);

DFFPOSX1 _2443_ (
    .D(_739_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(_1113_)
);

MUX2X1 _2023_ (
    .A(\u_mem_serial.shift_reg [27]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_186_)
);

OAI21X1 _1714_ (
    .A(\u_rf_if.last_req_key [6]),
    .B(_936_),
    .C(i_rst_n_bF$buf1),
    .Y(_1063_)
);

MUX2X1 _2252_ (
    .A(_393_),
    .B(_399_),
    .S(_124__bF$buf0),
    .Y(_615_)
);

AND2X2 _1943_ (
    .A(_131_),
    .B(_132_),
    .Y(_133_)
);

NAND2X1 _1523_ (
    .A(_918_),
    .B(_922_),
    .Y(_923_)
);

DFFPOSX1 _2308_ (
    .D(_645_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.stream_cnt [4])
);

DFFPOSX1 _2481_ (
    .D(_627_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [20])
);

NOR2X1 _2061_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_213_)
);

FILL FILL94950x82950 (
);

OR2X2 _1752_ (
    .A(_1091_),
    .B(_589_),
    .Y(_1092_)
);

INVX1 _1332_ (
    .A(\u_mem_serial.shift_reg [19]),
    .Y(_426_)
);

DFFPOSX1 _2537_ (
    .D(_802_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [1])
);

INVX1 _2117_ (
    .A(\u_cpu.bufreg.data [14]),
    .Y(_249_)
);

DFFPOSX1 _2290_ (
    .D(_812_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.bit_count [4])
);

INVX1 _1808_ (
    .A(_4_),
    .Y(_5_)
);

OAI21X1 _1981_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(_1115_),
    .C(_155_),
    .Y(_710_)
);

NAND2X1 _1561_ (
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_950_),
    .Y(_954_)
);

BUFX2 _1141_ (
    .A(_1109_),
    .Y(o_mem_sck)
);

DFFPOSX1 _2346_ (
    .D(_842_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [18])
);

NAND2X1 _1617_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_995_),
    .Y(_996_)
);

NOR2X1 _1790_ (
    .A(\u_cpu.state.cnt_r [3]),
    .B(\u_cpu.state.o_cnt [2]),
    .Y(_1128_)
);

INVX1 _1370_ (
    .A(\u_cpu.ctrl.o_ibus_adr [9]),
    .Y(_393_)
);

MUX2X1 _2155_ (
    .A(_270_),
    .B(_253_),
    .S(_255_),
    .Y(_651_)
);

NOR2X1 _1846_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_43_)
);

INVX1 _1426_ (
    .A(\u_mem_serial.shift_reg [11]),
    .Y(_354_)
);

DFFPOSX1 _2384_ (
    .D(_682_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4])
);

MUX2X1 _1655_ (
    .A(_1024_),
    .B(_1019_),
    .S(_586__bF$buf0),
    .Y(_777_)
);

NOR2X1 _1235_ (
    .A(\u_mem_serial.state [1]),
    .B(_508_),
    .Y(_507_)
);

OAI21X1 _2193_ (
    .A(_543_),
    .B(_297_),
    .C(_547_),
    .Y(_298_)
);

FILL FILL94950x14550 (
);

INVX1 _1884_ (
    .A(\u_cpu.bne_or_bge ),
    .Y(_81_)
);

INVX1 _1464_ (
    .A(i_rf_miso),
    .Y(_865_)
);

MUX2X1 _2249_ (
    .A(_330_),
    .B(_331_),
    .S(_124__bF$buf2),
    .Y(_618_)
);

FILL FILL95250x150 (
);

OAI21X1 _1693_ (
    .A(_1049_),
    .B(_934_),
    .C(i_rst_n_bF$buf2),
    .Y(_1050_)
);

INVX1 _1273_ (
    .A(_473_),
    .Y(_472_)
);

DFFPOSX1 _2478_ (
    .D(_759_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [3])
);

NAND2X1 _2058_ (
    .A(rf_wreg0_to_if[1]),
    .B(_582_),
    .Y(_211_)
);

OAI21X1 _1749_ (
    .A(_862_),
    .B(_592_),
    .C(\u_rf_if.issue_chunk [0]),
    .Y(_1090_)
);

MUX2X1 _1329_ (
    .A(_430_),
    .B(_429_),
    .S(_474_),
    .Y(_428_)
);

FILL FILL95250x82950 (
);

DFFPOSX1 _2287_ (
    .D(_638_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.bufreg.i_shamt [1])
);

INVX1 _1978_ (
    .A(_153_),
    .Y(_154_)
);

OAI21X1 _1558_ (
    .A(_594_),
    .B(\u_rf_if.read_buf0 [3]),
    .C(_951_),
    .Y(_952_)
);

BUFX2 _1138_ (
    .A(_1112_),
    .Y(o_rf_sck)
);

MUX2X1 _2096_ (
    .A(_237_),
    .B(_238_),
    .S(_23__bF$buf4),
    .Y(_678_)
);

INVX1 _1787_ (
    .A(_1107_),
    .Y(_1126_)
);

INVX1 _1367_ (
    .A(\u_mem_serial.shift_reg [24]),
    .Y(_396_)
);

INVX1 _1596_ (
    .A(\u_rf_if.read_buf0 [13]),
    .Y(_980_)
);

INVX1 _1176_ (
    .A(_565_),
    .Y(_564_)
);

DFFPOSX1 _2402_ (
    .D(_700_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4])
);

FILL FILL95250x14550 (
);

AOI21X1 _2211_ (
    .A(_306_),
    .B(_547_),
    .C(_311_),
    .Y(_313_)
);

NOR2X1 _1902_ (
    .A(_867_),
    .B(_913_),
    .Y(_98_)
);

INVX1 _1499_ (
    .A(\u_rf_if.last_req_key [8]),
    .Y(_899_)
);

DFFPOSX1 _2440_ (
    .D(_1097_[1]),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.bufreg2.i_bytecnt [0])
);

MUX2X1 _2020_ (
    .A(\u_mem_serial.shift_reg [28]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_184_)
);

AOI21X1 _1711_ (
    .A(_518_),
    .B(_936_),
    .C(_1061_),
    .Y(_758_)
);

FILL FILL95550x90150 (
);

FILL FILL95550x57750 (
);

AOI21X1 _1940_ (
    .A(_129_),
    .B(_12_),
    .C(\u_cpu.decode.opcode [2]),
    .Y(_130_)
);

NAND2X1 _1520_ (
    .A(ren),
    .B(_919_),
    .Y(_920_)
);

DFFPOSX1 _2305_ (
    .D(_598_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.alu.cmp_r )
);

DFFPOSX1 _2534_ (
    .D(_799_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [4])
);

MUX2X1 _2114_ (
    .A(_246_),
    .B(_247_),
    .S(_23__bF$buf0),
    .Y(_669_)
);

NAND3X1 _1805_ (
    .A(_1046_),
    .B(_1132_),
    .C(_1_),
    .Y(_2_)
);

DFFPOSX1 _2343_ (
    .D(_839_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_reg [21])
);

OAI21X1 _1614_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.read_buf0 [18]),
    .C(_993_),
    .Y(_994_)
);

AOI21X1 _2152_ (
    .A(_261_),
    .B(_266_),
    .C(_574_),
    .Y(_268_)
);

INVX1 _1843_ (
    .A(\u_cpu.ctrl.pc_plus_offset_cy_r_w ),
    .Y(_40_)
);

INVX1 _1423_ (
    .A(\u_mem_serial.shift_reg [10]),
    .Y(_356_)
);

NOR2X1 _2208_ (
    .A(_307_),
    .B(_547_),
    .Y(_311_)
);

DFFPOSX1 _2381_ (
    .D(_679_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [26])
);

INVX1 _1652_ (
    .A(\u_rf_if.read_buf0 [27]),
    .Y(_1022_)
);

NAND2X1 _1232_ (
    .A(_510_),
    .B(_512_),
    .Y(_509_)
);

DFFPOSX1 _2437_ (
    .D(_608_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.o_ibus_adr [1])
);

MUX2X1 _2017_ (
    .A(\u_mem_serial.shift_reg [29]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5]),
    .S(mem_ibus_ack_bF$buf2),
    .Y(_182_)
);

INVX1 _2190_ (
    .A(\u_cpu.bufreg2.dhi [3]),
    .Y(_295_)
);

OAI21X1 _1708_ (
    .A(_895_),
    .B(_935_),
    .C(i_rst_n_bF$buf2),
    .Y(_1060_)
);

INVX1 _1881_ (
    .A(_62_),
    .Y(_78_)
);

INVX1 _1461_ (
    .A(\u_rf_if.issue_reg [3]),
    .Y(_863_)
);

INVX1 _2246_ (
    .A(\u_cpu.ctrl.o_ibus_adr [12]),
    .Y(_330_)
);

AOI21X1 _1937_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(_1082_),
    .C(_127_),
    .Y(_727_)
);

INVX1 _1517_ (
    .A(\u_rf_if.launch_pending ),
    .Y(_917_)
);

NAND2X1 _1690_ (
    .A(_1046_),
    .B(_1045_),
    .Y(_1047_)
);

NAND2X1 _1270_ (
    .A(_476_),
    .B(_479_),
    .Y(_475_)
);

DFFPOSX1 _2475_ (
    .D(_624_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [17])
);

MUX2X1 _2055_ (
    .A(\u_mem_serial.shift_reg [8]),
    .B(rf_wreg0_to_if[2]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_209_)
);

NOR2X1 _1746_ (
    .A(\u_rf_if.prefetch_active ),
    .B(_1086_),
    .Y(_1087_)
);

NAND2X1 _1326_ (
    .A(_438_),
    .B(_489__bF$buf3),
    .Y(_431_)
);

DFFPOSX1 _2284_ (
    .D(_808_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.shift_rx [1])
);

NAND2X1 _1975_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_reg [14]),
    .Y(_152_)
);

NAND2X1 _1555_ (
    .A(\u_rf_if.read_buf0 [2]),
    .B(_585_),
    .Y(_949_)
);

INVX1 _2093_ (
    .A(\u_cpu.bufreg.data [26]),
    .Y(_237_)
);

NAND2X1 _1784_ (
    .A(_1121_),
    .B(_1122_),
    .Y(_1123_)
);

MUX2X1 _1364_ (
    .A(_400_),
    .B(_399_),
    .S(_474_),
    .Y(_398_)
);

OAI21X1 _2149_ (
    .A(_264_),
    .B(_78_),
    .C(_263_),
    .Y(_265_)
);

NAND2X1 _1593_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_977_),
    .Y(_978_)
);

NOR2X1 _1173_ (
    .A(_572_),
    .B(_568_),
    .Y(_567_)
);

DFFPOSX1 _2378_ (
    .D(_676_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [23])
);

NAND2X1 _1649_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1019_),
    .Y(_1020_)
);

NAND3X1 _1229_ (
    .A(_515_),
    .B(_513_),
    .C(_517_),
    .Y(_512_)
);

OAI21X1 _2187_ (
    .A(_539_),
    .B(_547_),
    .C(_282_),
    .Y(_293_)
);

NAND2X1 _1878_ (
    .A(_74_),
    .B(_73_),
    .Y(_75_)
);

OAI21X1 _1458_ (
    .A(_860_),
    .B(_855_),
    .C(_861_),
    .Y(_811_)
);

INVX1 _1687_ (
    .A(\u_rf_if.tx_state [2]),
    .Y(_1044_)
);

INVX1 _1267_ (
    .A(_479_),
    .Y(_478_)
);

NOR2X1 _1496_ (
    .A(\u_rf_if.last_req_key [3]),
    .B(_895_),
    .Y(_896_)
);

DFFPOSX1 _2302_ (
    .D(_644_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_rf_if.pending_read )
);

DFFPOSX1 _2531_ (
    .D(_797_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [6])
);

INVX1 _2111_ (
    .A(\u_cpu.bufreg.data [17]),
    .Y(_246_)
);

NAND2X1 _1802_ (
    .A(_866_),
    .B(_521_),
    .Y(_1136_)
);

INVX1 _1399_ (
    .A(\u_mem_serial.shift_reg [2]),
    .Y(_372_)
);

DFFPOSX1 _2340_ (
    .D(_836_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_reg [24])
);

MUX2X1 _1611_ (
    .A(_991_),
    .B(_986_),
    .S(_586__bF$buf2),
    .Y(_788_)
);

CLKBUF1 CLKBUF1_insert10 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf12)
);

CLKBUF1 CLKBUF1_insert11 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf11)
);

CLKBUF1 CLKBUF1_insert12 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf10)
);

CLKBUF1 CLKBUF1_insert13 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf9)
);

CLKBUF1 CLKBUF1_insert14 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf8)
);

CLKBUF1 CLKBUF1_insert15 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf7)
);

CLKBUF1 CLKBUF1_insert16 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf6)
);

CLKBUF1 CLKBUF1_insert17 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf5)
);

CLKBUF1 CLKBUF1_insert18 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf4)
);

CLKBUF1 CLKBUF1_insert19 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf3)
);

OAI21X1 _1840_ (
    .A(_572_),
    .B(_570_),
    .C(_573_),
    .Y(_37_)
);

INVX1 _1420_ (
    .A(\u_mem_serial.shift_reg [9]),
    .Y(_358_)
);

NOR2X1 _2205_ (
    .A(_306_),
    .B(_307_),
    .Y(_308_)
);

FILL FILL95550x43350 (
);

DFFPOSX1 _2434_ (
    .D(_728_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_cpu.state.ibus_cyc )
);

INVX1 _2014_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [4]),
    .Y(_179_)
);

AOI21X1 _1705_ (
    .A(_1056_),
    .B(_935_),
    .C(_1058_),
    .Y(_761_)
);

MUX2X1 _2243_ (
    .A(_327_),
    .B(_328_),
    .S(_124__bF$buf2),
    .Y(_621_)
);

AOI21X1 _1934_ (
    .A(_123_),
    .B(\u_cpu.state.ibus_cyc ),
    .C(_941_),
    .Y(_126_)
);

NAND2X1 _1514_ (
    .A(_909_),
    .B(_913_),
    .Y(_914_)
);

DFFPOSX1 _2472_ (
    .D(_756_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.last_req_key [6])
);

MUX2X1 _2052_ (
    .A(\u_mem_serial.shift_reg [9]),
    .B(rf_wreg0_to_if[3]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_207_)
);

NAND2X1 _1743_ (
    .A(_1032_),
    .B(_810_),
    .Y(_1084_)
);

OAI21X1 _1323_ (
    .A(_489__bF$buf3),
    .B(_434_),
    .C(_437_),
    .Y(_433_)
);

DFFPOSX1 _2528_ (
    .D(_794_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [9])
);

MUX2X1 _2108_ (
    .A(_243_),
    .B(_244_),
    .S(_23__bF$buf3),
    .Y(_672_)
);

DFFPOSX1 _2281_ (
    .D(_636_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.issue_reg [2])
);

AOI21X1 _1972_ (
    .A(_451_),
    .B(\u_rf_if.stream_active_bF$buf0 ),
    .C(\u_rf_if.stream_cnt [3]),
    .Y(_151_)
);

MUX2X1 _1552_ (
    .A(\u_rf_if.read_buf0 [2]),
    .B(\u_rf_if.read_buf0 [3]),
    .S(\u_rf_if.stream_active_bF$buf4 ),
    .Y(_947_)
);

DFFPOSX1 _2337_ (
    .D(_835_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [25])
);

MUX2X1 _2090_ (
    .A(_235_),
    .B(_234_),
    .S(_23__bF$buf0),
    .Y(_681_)
);

INVX1 _1608_ (
    .A(\u_rf_if.read_buf0 [16]),
    .Y(_989_)
);

NOR2X1 _1781_ (
    .A(_1117_),
    .B(_1119_),
    .Y(_1120_)
);

NAND2X1 _1361_ (
    .A(_408_),
    .B(_489__bF$buf0),
    .Y(_401_)
);

NAND3X1 _2146_ (
    .A(\u_cpu.bufreg.c_r ),
    .B(_258_),
    .C(_62_),
    .Y(_262_)
);

INVX1 _1837_ (
    .A(_33_),
    .Y(_34_)
);

INVX1 _1417_ (
    .A(\u_mem_serial.shift_reg [8]),
    .Y(_360_)
);

OAI21X1 _1590_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [12]),
    .C(_975_),
    .Y(_976_)
);

INVX1 _1170_ (
    .A(\u_cpu.state.o_cnt [2]),
    .Y(_570_)
);

DFFPOSX1 _2375_ (
    .D(_673_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [20])
);

OAI21X1 _1646_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(\u_rf_if.read_buf0 [26]),
    .C(_1017_),
    .Y(_1018_)
);

AOI22X1 _1226_ (
    .A(ren),
    .B(raddr[5]),
    .C(_524_),
    .D(_516_),
    .Y(_515_)
);

NOR2X1 _2184_ (
    .A(_289_),
    .B(_543_),
    .Y(_290_)
);

NAND2X1 _1875_ (
    .A(_71_),
    .B(_69_),
    .Y(_72_)
);

NAND2X1 _1455_ (
    .A(_736_),
    .B(_856_),
    .Y(_812_)
);

NOR2X1 _1684_ (
    .A(\u_rf_if.tx_state [0]),
    .B(_1042_),
    .Y(_766_)
);

NOR2X1 _1264_ (
    .A(\u_mem_serial.clk_sys_prev ),
    .B(_505_),
    .Y(_481_)
);

DFFPOSX1 _2469_ (
    .D(_621_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [14])
);

MUX2X1 _2049_ (
    .A(\u_mem_serial.shift_reg [10]),
    .B(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .S(mem_ibus_ack_bF$buf0),
    .Y(_205_)
);

OAI21X1 _1493_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(ren),
    .C(_892_),
    .Y(_893_)
);

NAND2X1 _2278_ (
    .A(\u_cpu.alu.cmp_r ),
    .B(_557_),
    .Y(_341_)
);

NAND3X1 _1969_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_148_),
    .C(_147_),
    .Y(_149_)
);

INVX1 _1549_ (
    .A(\u_rf_if.read_buf0 [0]),
    .Y(_945_)
);

NAND2X1 _2087_ (
    .A(_232_),
    .B(_233_),
    .Y(_682_)
);

OAI21X1 _1778_ (
    .A(_1108_),
    .B(_1115_),
    .C(_1116_),
    .Y(_1117_)
);

OAI21X1 _1358_ (
    .A(_489__bF$buf0),
    .B(_404_),
    .C(_407_),
    .Y(_403_)
);

MUX2X1 _1587_ (
    .A(_973_),
    .B(_968_),
    .S(_586__bF$buf2),
    .Y(_794_)
);

INVX1 _1167_ (
    .A(\u_cpu.bufreg2.i_bytecnt [1]),
    .Y(_573_)
);

INVX1 _1396_ (
    .A(\u_mem_serial.shift_reg [1]),
    .Y(_374_)
);

NAND2X1 _2202_ (
    .A(_302_),
    .B(_305_),
    .Y(_639_)
);

DFFPOSX1 _2431_ (
    .D(_726_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.wen0_r )
);

OAI21X1 _2011_ (
    .A(mem_ibus_ack_bF$buf0),
    .B(_173_),
    .C(_154_),
    .Y(_177_)
);

FILL FILL95550x64950 (
);

INVX1 _1702_ (
    .A(\u_rf_if.last_req_key [1]),
    .Y(_1056_)
);

NAND2X1 _1299_ (
    .A(\u_rf_if.stream_cnt [3]),
    .B(_451_),
    .Y(_450_)
);

INVX1 _2240_ (
    .A(\u_cpu.ctrl.o_ibus_adr [15]),
    .Y(_327_)
);

NOR2X1 _1931_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(_565_),
    .Y(_123_)
);

NAND2X1 _1511_ (
    .A(ren),
    .B(_910_),
    .Y(_911_)
);

AND2X2 _1740_ (
    .A(_1079_),
    .B(\u_rf_if.o_waddr [2]),
    .Y(_1082_)
);

INVX1 _1320_ (
    .A(\u_cpu.bufreg.data [2]),
    .Y(_436_)
);

DFFPOSX1 _2525_ (
    .D(_791_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.read_buf0 [12])
);

INVX1 _2105_ (
    .A(\u_cpu.bufreg.data [20]),
    .Y(_243_)
);

FILL FILL95550x150 (
);

DFFPOSX1 _2334_ (
    .D(_833_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [27])
);

NAND2X1 _1605_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_986_),
    .Y(_987_)
);

NOR2X1 _2143_ (
    .A(_258_),
    .B(_17_),
    .Y(_259_)
);

NOR2X1 _1834_ (
    .A(_11_),
    .B(_554_),
    .Y(_31_)
);

INVX1 _1414_ (
    .A(\u_mem_serial.shift_reg [7]),
    .Y(_362_)
);

DFFPOSX1 _2372_ (
    .D(_671_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [18])
);

MUX2X1 _1643_ (
    .A(_1015_),
    .B(_1010_),
    .S(_586__bF$buf0),
    .Y(_780_)
);

AOI22X1 _1223_ (
    .A(ren),
    .B(raddr[4]),
    .C(_524_),
    .D(_519_),
    .Y(_518_)
);

DFFPOSX1 _2428_ (
    .D(_723_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.bufreg2.i_op_b_sel )
);

NOR2X1 _2008_ (
    .A(_174_),
    .B(_161_),
    .Y(_175_)
);

OAI21X1 _2181_ (
    .A(_552_),
    .B(_548_),
    .C(\u_cpu.bufreg2.dhi [5]),
    .Y(_288_)
);

OAI21X1 _1872_ (
    .A(\u_cpu.branch_op ),
    .B(_1117_),
    .C(_68_),
    .Y(_69_)
);

NAND2X1 _1452_ (
    .A(_732_),
    .B(_348_),
    .Y(_741_)
);

MUX2X1 _2237_ (
    .A(_324_),
    .B(_325_),
    .S(_124__bF$buf3),
    .Y(_624_)
);

OAI21X1 _1928_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_121_),
    .C(_106_),
    .Y(_122_)
);

AOI21X1 _1508_ (
    .A(_898_),
    .B(\u_rf_if.last_req_key [1]),
    .C(_907_),
    .Y(_908_)
);

NOR2X1 _1681_ (
    .A(raddr[6]),
    .B(_810_),
    .Y(_1041_)
);

NOR2X1 _1261_ (
    .A(i_clk_fast_bF$buf4),
    .B(_483_),
    .Y(_1109_)
);

DFFPOSX1 _2466_ (
    .D(_753_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.write_wait [0])
);

NAND2X1 _2046_ (
    .A(_558_),
    .B(_130_),
    .Y(_202_)
);

INVX1 _1737_ (
    .A(_1076_),
    .Y(_1080_)
);

MUX2X1 _1317_ (
    .A(_439_),
    .B(_440_),
    .S(_459__bF$buf5),
    .Y(_844_)
);

AOI21X1 _1490_ (
    .A(_885_),
    .B(_886_),
    .C(_889_),
    .Y(_890_)
);

OAI21X1 _2275_ (
    .A(\u_cpu.ctrl.i_jump ),
    .B(_59_),
    .C(_124__bF$buf0),
    .Y(_340_)
);

OAI21X1 _1966_ (
    .A(_454_),
    .B(_144_),
    .C(_146_),
    .Y(_716_)
);

NAND2X1 _1546_ (
    .A(_870_),
    .B(_942_),
    .Y(_943_)
);

MUX2X1 _2084_ (
    .A(_229_),
    .B(_231_),
    .S(_193_),
    .Y(_683_)
);

INVX1 _1775_ (
    .A(\u_cpu.bufreg2.i_op_b_sel ),
    .Y(_1108_)
);

INVX1 _1355_ (
    .A(\u_cpu.bufreg.data [7]),
    .Y(_406_)
);

INVX1 _1584_ (
    .A(\u_rf_if.read_buf0 [10]),
    .Y(_971_)
);

OAI21X1 _1164_ (
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .C(_577_),
    .Y(_576_)
);

DFFPOSX1 _2369_ (
    .D(_668_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [15])
);

AOI21X1 _1393_ (
    .A(\u_mem_serial.shift_reg [29]),
    .B(_489__bF$buf2),
    .C(_443_),
    .Y(_376_)
);

OAI21X1 _2178_ (
    .A(_551_),
    .B(_284_),
    .C(_285_),
    .Y(_643_)
);

NAND2X1 _1869_ (
    .A(_65_),
    .B(_63_),
    .Y(_66_)
);

OAI21X1 _1449_ (
    .A(_734_),
    .B(_732_),
    .C(_489__bF$buf3),
    .Y(_735_)
);

NOR2X1 _1678_ (
    .A(raddr[5]),
    .B(_810_),
    .Y(_1039_)
);

NAND2X1 _1258_ (
    .A(_496_),
    .B(_485_),
    .Y(_484_)
);

NAND2X1 _1487_ (
    .A(\u_rf_if.last_req_key [5]),
    .B(_515_),
    .Y(_887_)
);

NOR2X1 _1296_ (
    .A(_455_),
    .B(_454_),
    .Y(_453_)
);

DFFPOSX1 _2522_ (
    .D(_603_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [28])
);

MUX2X1 _2102_ (
    .A(_240_),
    .B(_241_),
    .S(_23__bF$buf3),
    .Y(_675_)
);

DFFPOSX1 _2331_ (
    .D(_657_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.bufreg.data [4])
);

OAI21X1 _1602_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(\u_rf_if.read_buf0 [15]),
    .C(_984_),
    .Y(_985_)
);

NOR2X1 _1199_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_542_),
    .Y(_541_)
);

MUX2X1 _2140_ (
    .A(_257_),
    .B(_256_),
    .S(_23__bF$buf1),
    .Y(_653_)
);

NOR2X1 _1831_ (
    .A(\u_cpu.decode.opcode [0]),
    .B(_27_),
    .Y(_28_)
);

INVX1 _1411_ (
    .A(\u_mem_serial.shift_reg [6]),
    .Y(_364_)
);

BUFX2 BUFX2_insert40 (
    .A(_23_),
    .Y(_23__bF$buf2)
);

BUFX2 BUFX2_insert41 (
    .A(_23_),
    .Y(_23__bF$buf1)
);

BUFX2 BUFX2_insert42 (
    .A(_23_),
    .Y(_23__bF$buf0)
);

BUFX2 BUFX2_insert43 (
    .A(_586_),
    .Y(_586__bF$buf4)
);

BUFX2 BUFX2_insert44 (
    .A(_586_),
    .Y(_586__bF$buf3)
);

BUFX2 BUFX2_insert45 (
    .A(_586_),
    .Y(_586__bF$buf2)
);

BUFX2 BUFX2_insert46 (
    .A(_586_),
    .Y(_586__bF$buf1)
);

BUFX2 BUFX2_insert47 (
    .A(_586_),
    .Y(_586__bF$buf0)
);

BUFX2 BUFX2_insert48 (
    .A(_489_),
    .Y(_489__bF$buf5)
);

BUFX2 BUFX2_insert49 (
    .A(_489_),
    .Y(_489__bF$buf4)
);

FILL FILL95550x50550 (
);

INVX1 _1640_ (
    .A(\u_rf_if.read_buf0 [24]),
    .Y(_1013_)
);

AOI22X1 _1220_ (
    .A(ren),
    .B(raddr[6]),
    .C(_524_),
    .D(_522_),
    .Y(_521_)
);

DFFPOSX1 _2425_ (
    .D(_647_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.rcnt [1])
);

AOI21X1 _2005_ (
    .A(_170_),
    .B(_161_),
    .C(_172_),
    .Y(_703_)
);

INVX1 _2234_ (
    .A(\u_cpu.ctrl.o_ibus_adr [18]),
    .Y(_324_)
);

NAND2X1 _1925_ (
    .A(\u_cpu.bne_or_bge ),
    .B(_118_),
    .Y(_119_)
);

OR2X2 _1505_ (
    .A(_877_),
    .B(\u_rf_if.last_req_key [9]),
    .Y(_905_)
);

DFFPOSX1 _2463_ (
    .D(_751_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.rcnt [2])
);

OAI21X1 _2043_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(_197_),
    .C(_154_),
    .Y(_200_)
);

NOR2X1 _1734_ (
    .A(_1075_),
    .B(_1077_),
    .Y(_750_)
);

AOI21X1 _1314_ (
    .A(_459__bF$buf5),
    .B(_442_),
    .C(_441_),
    .Y(_845_)
);

DFFPOSX1 _2519_ (
    .D(_787_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [16])
);

NOR2X1 _2272_ (
    .A(_53_),
    .B(_57_),
    .Y(_338_)
);

MUX2X1 _1963_ (
    .A(_144_),
    .B(_594_),
    .S(\u_rf_if.stream_cnt [0]),
    .Y(_717_)
);

AOI21X1 _1543_ (
    .A(_865_),
    .B(_939_),
    .C(_940_),
    .Y(_805_)
);

DFFPOSX1 _2328_ (
    .D(_830_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [30])
);

INVX1 _2081_ (
    .A(rf_read_reg1_to_if[4]),
    .Y(_229_)
);

OAI21X1 _1772_ (
    .A(_862_),
    .B(_592_),
    .C(_1088_),
    .Y(_738_)
);

MUX2X1 _1352_ (
    .A(_409_),
    .B(_414_),
    .S(_459__bF$buf0),
    .Y(_839_)
);

MUX2X1 _2137_ (
    .A(_253_),
    .B(_18_),
    .S(_255_),
    .Y(_654_)
);

NOR2X1 _1828_ (
    .A(_18_),
    .B(_24_),
    .Y(_25_)
);

INVX1 _1408_ (
    .A(\u_mem_serial.shift_reg [5]),
    .Y(_366_)
);

NAND2X1 _1581_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_968_),
    .Y(_969_)
);

INVX1 _1161_ (
    .A(\u_cpu.decode.co_mem_word ),
    .Y(_579_)
);

DFFPOSX1 _2366_ (
    .D(_667_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [14])
);

NAND2X1 _1637_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1010_),
    .Y(_1011_)
);

INVX2 _1217_ (
    .A(\u_rf_if.rtrig0 ),
    .Y(_524_)
);

NOR2X1 _1390_ (
    .A(\u_mem_serial.shift_reg [28]),
    .B(_488_),
    .Y(_378_)
);

INVX1 _2175_ (
    .A(_282_),
    .Y(_283_)
);

NAND2X1 _1866_ (
    .A(\u_cpu.alu.add_cy_r ),
    .B(_62_),
    .Y(_63_)
);

NAND2X1 _1446_ (
    .A(_503_),
    .B(_343_),
    .Y(_719_)
);

INVX1 _1675_ (
    .A(\u_rf_if.issue_reg [0]),
    .Y(_1037_)
);

NOR2X1 _1255_ (
    .A(\u_mem_serial.bit_count [6]),
    .B(_488_),
    .Y(_487_)
);

INVX1 _1484_ (
    .A(_518_),
    .Y(_884_)
);

MUX2X1 _2269_ (
    .A(_335_),
    .B(_337_),
    .S(_124__bF$buf3),
    .Y(_604_)
);

INVX1 _1293_ (
    .A(\u_rf_if.stream_cnt [2]),
    .Y(_456_)
);

DFFPOSX1 _2498_ (
    .D(_771_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(raddr[2])
);

NAND2X1 _2078_ (
    .A(_582_),
    .B(_226_),
    .Y(_227_)
);

NOR2X1 _1769_ (
    .A(_1049_),
    .B(_934_),
    .Y(_1104_)
);

INVX1 _1349_ (
    .A(\u_cpu.ctrl.o_ibus_adr [6]),
    .Y(_411_)
);

INVX1 _1998_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [3]),
    .Y(_167_)
);

OAI21X1 _1578_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [9]),
    .C(_966_),
    .Y(_967_)
);

INVX2 _1158_ (
    .A(mem_ibus_ack_bF$buf4),
    .Y(_582_)
);

NOR2X1 _1387_ (
    .A(\u_mem_serial.shift_reg [27]),
    .B(_488_),
    .Y(_380_)
);

NAND2X1 _1196_ (
    .A(_546_),
    .B(_545_),
    .Y(_544_)
);

DFFPOSX1 _2422_ (
    .D(_606_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [27])
);

INVX1 _2002_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [2]),
    .Y(_170_)
);

MUX2X1 _2231_ (
    .A(_321_),
    .B(_322_),
    .S(_124__bF$buf4),
    .Y(_627_)
);

NAND2X1 _1922_ (
    .A(_114_),
    .B(_112_),
    .Y(_116_)
);

NOR2X1 _1502_ (
    .A(_900_),
    .B(_901_),
    .Y(_902_)
);

DFFPOSX1 _2460_ (
    .D(_749_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.o_waddr [1])
);

MUX2X1 _2040_ (
    .A(\u_mem_serial.shift_reg [21]),
    .B(rf_read_reg1_to_if[2]),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_198_)
);

NOR2X1 _1731_ (
    .A(\u_rf_if.o_waddr [0]),
    .B(_1074_),
    .Y(_1075_)
);

NOR2X1 _1311_ (
    .A(_474_),
    .B(_489__bF$buf1),
    .Y(_443_)
);

DFFPOSX1 _2516_ (
    .D(_785_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_rf_if.read_buf0 [18])
);

NAND3X1 _1960_ (
    .A(\u_rf_if.shift_rx [0]),
    .B(_142_),
    .C(_512_),
    .Y(_143_)
);

NAND3X1 _1540_ (
    .A(\u_rf_if.tx_state [1]),
    .B(_867_),
    .C(_872_),
    .Y(_938_)
);

DFFPOSX1 _2325_ (
    .D(_828_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [2])
);

INVX1 _2134_ (
    .A(\u_cpu.state.i_ctrl_misalign ),
    .Y(_253_)
);

OAI21X1 _1825_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_536_),
    .C(_21_),
    .Y(_22_)
);

INVX1 _1405_ (
    .A(\u_mem_serial.shift_reg [4]),
    .Y(_368_)
);

DFFPOSX1 _2363_ (
    .D(_666_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [13])
);

OAI21X1 _1634_ (
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(\u_rf_if.read_buf0 [23]),
    .C(_1008_),
    .Y(_1009_)
);

INVX2 _1214_ (
    .A(_527_),
    .Y(_526_)
);

DFFPOSX1 _2419_ (
    .D(_715_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.stream_cnt [2])
);

NOR2X1 _2172_ (
    .A(_15_),
    .B(_552_),
    .Y(_280_)
);

NOR2X1 _1863_ (
    .A(_11_),
    .B(_532_),
    .Y(_60_)
);

NOR2X1 _1443_ (
    .A(_344_),
    .B(_470_),
    .Y(_342_)
);

INVX1 _2228_ (
    .A(\u_cpu.ctrl.o_ibus_adr [21]),
    .Y(_321_)
);

OAI21X1 _1919_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(\u_cpu.bne_or_bge ),
    .C(\u_cpu.decode.co_mem_word ),
    .Y(_113_)
);

MUX2X1 _1672_ (
    .A(_590_),
    .B(_910_),
    .S(_810_),
    .Y(_771_)
);

INVX1 _1252_ (
    .A(\u_mem_serial.state [0]),
    .Y(_490_)
);

DFFPOSX1 _2457_ (
    .D(_616_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [9])
);

MUX2X1 _2037_ (
    .A(\u_mem_serial.shift_reg [22]),
    .B(rf_read_reg1_to_if[3]),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_196_)
);

NAND2X1 _1728_ (
    .A(_1072_),
    .B(_1069_),
    .Y(_1073_)
);

OAI21X1 _1308_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_501_),
    .C(\u_mem_serial.bit_count [5]),
    .Y(_445_)
);

AND2X2 _1481_ (
    .A(_521_),
    .B(\u_rf_if.last_req_key [6]),
    .Y(_881_)
);

INVX1 _2266_ (
    .A(\u_cpu.ctrl.o_ibus_adr [31]),
    .Y(_336_)
);

NAND3X1 _1957_ (
    .A(_594_),
    .B(\u_rf_if.read_buf0 [30]),
    .C(_587_),
    .Y(_140_)
);

OAI21X1 _1537_ (
    .A(\u_rf_if.last_req_key [9]),
    .B(_936_),
    .C(i_rst_n_bF$buf1),
    .Y(_937_)
);

NAND3X1 _1290_ (
    .A(\u_mem_serial.shift_reg [13]),
    .B(_489__bF$buf1),
    .C(_459__bF$buf5),
    .Y(_458_)
);

DFFPOSX1 _2495_ (
    .D(_768_),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(raddr[5])
);

AOI22X1 _2075_ (
    .A(\u_cpu.branch_op ),
    .B(_532_),
    .C(_33_),
    .D(_223_),
    .Y(_224_)
);

OAI21X1 _1766_ (
    .A(ren),
    .B(_877_),
    .C(i_rst_n_bF$buf3),
    .Y(_1102_)
);

INVX1 _1346_ (
    .A(\u_mem_serial.shift_reg [21]),
    .Y(_414_)
);

MUX2X1 _1995_ (
    .A(_595_),
    .B(_165_),
    .S(_161_),
    .Y(_706_)
);

MUX2X1 _1575_ (
    .A(_964_),
    .B(_959_),
    .S(_586__bF$buf2),
    .Y(_797_)
);

INVX2 _1155_ (
    .A(_586__bF$buf3),
    .Y(_585_)
);

NOR2X1 _1384_ (
    .A(\u_mem_serial.shift_reg [26]),
    .B(_488_),
    .Y(_382_)
);

NOR2X1 _2169_ (
    .A(_572_),
    .B(_18_),
    .Y(_277_)
);

NOR2X1 _1193_ (
    .A(_552_),
    .B(_548_),
    .Y(_547_)
);

DFFPOSX1 _2398_ (
    .D(_696_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0])
);

INVX1 _1669_ (
    .A(_810_),
    .Y(_1034_)
);

INVX1 _1249_ (
    .A(_494_),
    .Y(_493_)
);

NAND2X1 _1898_ (
    .A(_942_),
    .B(_1057_),
    .Y(_94_)
);

INVX1 _1478_ (
    .A(_877_),
    .Y(_878_)
);

INVX1 _1287_ (
    .A(\u_mem_serial.shift_reg [14]),
    .Y(_461_)
);

DFFPOSX1 _2513_ (
    .D(_784_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [19])
);

DFFPOSX1 _2322_ (
    .D(_653_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [30])
);

MUX2X1 _2131_ (
    .A(_418_),
    .B(_424_),
    .S(_23__bF$buf4),
    .Y(_657_)
);

AOI21X1 _1822_ (
    .A(\u_cpu.state.init_done ),
    .B(_11_),
    .C(_557_),
    .Y(_19_)
);

INVX1 _1402_ (
    .A(\u_mem_serial.shift_reg [3]),
    .Y(_370_)
);

DFFPOSX1 _2360_ (
    .D(_665_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [12])
);

MUX2X1 _1631_ (
    .A(_1006_),
    .B(_1001_),
    .S(_586__bF$buf4),
    .Y(_783_)
);

NOR2X1 _1211_ (
    .A(_531_),
    .B(_530_),
    .Y(_529_)
);

DFFPOSX1 _2416_ (
    .D(_602_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.pc_plus_offset_cy_r_w )
);

NOR2X1 _1860_ (
    .A(_56_),
    .B(_52_),
    .Y(_57_)
);

OAI21X1 _1440_ (
    .A(_488_),
    .B(_469_),
    .C(_345_),
    .Y(_815_)
);

MUX2X1 _2225_ (
    .A(_318_),
    .B(_319_),
    .S(_124__bF$buf4),
    .Y(_630_)
);

NOR2X1 _1916_ (
    .A(_109_),
    .B(_76_),
    .Y(_110_)
);

DFFPOSX1 _2454_ (
    .D(_746_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.issue_chunk [1])
);

MUX2X1 _2034_ (
    .A(\u_mem_serial.shift_reg [23]),
    .B(rf_read_reg1_to_if[4]),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_194_)
);

FILL FILL94650x82950 (
);

NAND2X1 _1725_ (
    .A(\u_rf_if.rcnt [2]),
    .B(_1068_),
    .Y(_1069_)
);

NAND3X1 _1305_ (
    .A(\u_mem_serial.shift_reg [30]),
    .B(_489__bF$buf1),
    .C(_459__bF$buf5),
    .Y(_447_)
);

INVX1 _2263_ (
    .A(\u_cpu.ctrl.o_ibus_adr [28]),
    .Y(_334_)
);

FILL FILL95550x79350 (
);

MUX2X1 _1954_ (
    .A(_370_),
    .B(_26_),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_721_)
);

AOI22X1 _1534_ (
    .A(_520_),
    .B(_878_),
    .C(_933_),
    .D(_883_),
    .Y(_934_)
);

DFFPOSX1 _2319_ (
    .D(_825_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [5])
);

DFFPOSX1 _2492_ (
    .D(_632_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [25])
);

INVX1 _2072_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_221_)
);

NOR2X1 _1763_ (
    .A(_1089_),
    .B(_1100_),
    .Y(_743_)
);

MUX2X1 _1343_ (
    .A(_418_),
    .B(_417_),
    .S(_474_),
    .Y(_416_)
);

MUX2X1 _2128_ (
    .A(_400_),
    .B(_406_),
    .S(_23__bF$buf4),
    .Y(_660_)
);

NOR2X1 _1819_ (
    .A(\u_cpu.state.o_cnt [2]),
    .B(_15_),
    .Y(_16_)
);

MUX2X1 _1992_ (
    .A(\u_mem_serial.shift_reg [17]),
    .B(rf_read_reg0_to_if[3]),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_164_)
);

INVX1 _1572_ (
    .A(\u_rf_if.read_buf0 [7]),
    .Y(_962_)
);

NAND3X1 _1152_ (
    .A(_591_),
    .B(_590_),
    .C(_589_),
    .Y(_588_)
);

DFFPOSX1 _2357_ (
    .D(_849_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.state [1])
);

INVX1 _1628_ (
    .A(\u_rf_if.read_buf0 [21]),
    .Y(_1004_)
);

INVX2 _1208_ (
    .A(\u_cpu.decode.opcode [0]),
    .Y(_532_)
);

NOR2X1 _1381_ (
    .A(\u_mem_serial.shift_reg [25]),
    .B(_488_),
    .Y(_384_)
);

NOR2X1 _2166_ (
    .A(\u_rf_if.stream_cnt [4]),
    .B(_449_),
    .Y(_276_)
);

NOR2X1 _1857_ (
    .A(\u_cpu.ctrl.pc ),
    .B(\u_cpu.ctrl.pc_plus_4_cy_r_w ),
    .Y(_54_)
);

OAI21X1 _1437_ (
    .A(_497_),
    .B(_348_),
    .C(_347_),
    .Y(_816_)
);

INVX1 _1190_ (
    .A(_574_),
    .Y(_550_)
);

DFFPOSX1 _2395_ (
    .D(_693_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_read_reg1_to_if[1])
);

INVX1 _1666_ (
    .A(\u_rf_if.issue_chunk [0]),
    .Y(_1032_)
);

NOR2X1 _1246_ (
    .A(\u_mem_serial.bit_count [1]),
    .B(_497_),
    .Y(_496_)
);

AOI21X1 _1895_ (
    .A(_6_),
    .B(\u_rf_if.wdata0_next [0]),
    .C(\u_rf_if.tx_state [0]),
    .Y(_91_)
);

INVX1 _1475_ (
    .A(\u_rf_if.wen0_r ),
    .Y(_875_)
);

FILL FILL94950x57750 (
);

OAI21X1 _1284_ (
    .A(\u_mem_serial.state [0]),
    .B(_473_),
    .C(_464_),
    .Y(_463_)
);

DFFPOSX1 _2489_ (
    .D(_764_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.tx_state [2])
);

AOI22X1 _2069_ (
    .A(mem_ibus_ack_bF$buf6),
    .B(\u_mem_serial.shift_reg [7]),
    .C(_157_),
    .D(\u_cpu.immdec.gen_immdec_w_eq_1.imm7 ),
    .Y(_219_)
);

DFFPOSX1 _2298_ (
    .D(_643_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg2.dhi [6])
);

MUX2X1 _1989_ (
    .A(\u_mem_serial.shift_reg [18]),
    .B(rf_read_reg0_to_if[4]),
    .S(mem_ibus_ack_bF$buf4),
    .Y(_162_)
);

NAND2X1 _1569_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(_959_),
    .Y(_960_)
);

INVX1 _1149_ (
    .A(\u_rf_if.issue_chunk [3]),
    .Y(_591_)
);

DFFPOSX1 _2510_ (
    .D(_781_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [22])
);

NOR2X1 _1798_ (
    .A(_1052_),
    .B(_1053_),
    .Y(_1132_)
);

MUX2X1 _1378_ (
    .A(_388_),
    .B(_387_),
    .S(_474_),
    .Y(_386_)
);

NOR2X1 _1187_ (
    .A(\u_cpu.decode.co_mem_word ),
    .B(_554_),
    .Y(_553_)
);

DFFPOSX1 _2413_ (
    .D(_711_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.decode.co_ebreak )
);

INVX1 _2222_ (
    .A(\u_cpu.ctrl.o_ibus_adr [24]),
    .Y(_318_)
);

FILL FILL95250x57750 (
);

INVX1 _1913_ (
    .A(\u_cpu.alu.cmp_r ),
    .Y(_107_)
);

DFFPOSX1 _2451_ (
    .D(_745_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.issue_chunk [2])
);

INVX1 _2031_ (
    .A(rf_read_reg1_to_if[3]),
    .Y(_191_)
);

NOR2X1 _1722_ (
    .A(\u_rf_if.rcnt [0]),
    .B(_525_),
    .Y(_752_)
);

OAI21X1 _1302_ (
    .A(\u_mem_serial.state [0]),
    .B(_504_),
    .C(_484_),
    .Y(_849_)
);

DFFPOSX1 _2507_ (
    .D(_779_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [24])
);

MUX2X1 _2260_ (
    .A(_435_),
    .B(_332_),
    .S(_124__bF$buf1),
    .Y(_608_)
);

MUX2X1 _1951_ (
    .A(_366_),
    .B(_1108_),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_723_)
);

NAND2X1 _1531_ (
    .A(_930_),
    .B(_929_),
    .Y(_931_)
);

DFFPOSX1 _2316_ (
    .D(_649_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.bufreg.data [31])
);

OAI21X1 _1760_ (
    .A(\u_rf_if.issue_chunk [3]),
    .B(_1095_),
    .C(_1088_),
    .Y(_1099_)
);

NAND2X1 _1340_ (
    .A(_426_),
    .B(_489__bF$buf4),
    .Y(_419_)
);

MUX2X1 _2125_ (
    .A(_252_),
    .B(_388_),
    .S(_23__bF$buf2),
    .Y(_663_)
);

NOR2X1 _1816_ (
    .A(_554_),
    .B(_12_),
    .Y(_13_)
);

DFFPOSX1 _2354_ (
    .D(_662_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.bufreg.data [9])
);

NAND2X1 _1625_ (
    .A(\u_rf_if.stream_active_bF$buf4 ),
    .B(_1001_),
    .Y(_1002_)
);

INVX1 _1205_ (
    .A(_536_),
    .Y(_535_)
);

OAI21X1 _2163_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_274_),
    .C(_526_),
    .Y(_647_)
);

NAND3X1 _1854_ (
    .A(_17_),
    .B(_50_),
    .C(_49_),
    .Y(_51_)
);

OAI21X1 _1434_ (
    .A(_350_),
    .B(_459__bF$buf3),
    .C(_349_),
    .Y(_817_)
);

MUX2X1 _2219_ (
    .A(_316_),
    .B(_315_),
    .S(_124__bF$buf4),
    .Y(_633_)
);

DFFPOSX1 _2392_ (
    .D(_690_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_wreg0_to_if[2])
);

MUX2X1 _1663_ (
    .A(\u_rf_if.read_buf0 [30]),
    .B(\u_rf_if.read_buf0 [31]),
    .S(\u_rf_if.stream_active_bF$buf1 ),
    .Y(_1030_)
);

INVX1 _1243_ (
    .A(_500_),
    .Y(_499_)
);

DFFPOSX1 _2448_ (
    .D(_612_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.o_ibus_adr [5])
);

INVX1 _2028_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [0]),
    .Y(_189_)
);

AOI21X1 _1719_ (
    .A(_899_),
    .B(_935_),
    .C(_1065_),
    .Y(_754_)
);

AOI22X1 _1892_ (
    .A(_59_),
    .B(_60_),
    .C(_88_),
    .D(_1118_),
    .Y(_89_)
);

AND2X2 _1472_ (
    .A(_872_),
    .B(_868_),
    .Y(_873_)
);

MUX2X1 _2257_ (
    .A(_423_),
    .B(_429_),
    .S(_124__bF$buf1),
    .Y(_610_)
);

OAI21X1 _1948_ (
    .A(mem_ibus_ack_bF$buf5),
    .B(_579_),
    .C(_136_),
    .Y(_725_)
);

OAI21X1 _1528_ (
    .A(_894_),
    .B(_896_),
    .C(_927_),
    .Y(_928_)
);

NOR2X1 _1281_ (
    .A(_471_),
    .B(_472_),
    .Y(_466_)
);

DFFPOSX1 _2486_ (
    .D(_629_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_cpu.ctrl.o_ibus_adr [22])
);

OAI21X1 _2066_ (
    .A(\u_cpu.branch_op ),
    .B(rf_read_reg1_to_if[0]),
    .C(_216_),
    .Y(_217_)
);

INVX1 _1757_ (
    .A(_1094_),
    .Y(_1096_)
);

OAI21X1 _1337_ (
    .A(_489__bF$buf0),
    .B(_422_),
    .C(_425_),
    .Y(_421_)
);

DFFPOSX1 _2295_ (
    .D(_814_),
    .CLK(i_clk_fast_bF$buf6),
    .Q(\u_mem_serial.bit_count [2])
);

OAI21X1 _1986_ (
    .A(\u_cpu.decode.opcode [2]),
    .B(\u_cpu.decode.opcode [1]),
    .C(_531_),
    .Y(_159_)
);

OAI21X1 _1566_ (
    .A(\u_rf_if.stream_active_bF$buf3 ),
    .B(\u_rf_if.read_buf0 [6]),
    .C(_957_),
    .Y(_958_)
);

INVX2 _1146_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .Y(_594_)
);

NOR2X1 _1795_ (
    .A(_1130_),
    .B(_565_),
    .Y(_1097_[2])
);

NAND2X1 _1375_ (
    .A(_396_),
    .B(_489__bF$buf0),
    .Y(_389_)
);

FILL FILL95550x3750 (
);

NAND2X1 _1184_ (
    .A(\u_cpu.bufreg.i_right_shift_op ),
    .B(_557_),
    .Y(_556_)
);

DFFPOSX1 _2389_ (
    .D(_687_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 )
);

FILL FILL94950x43350 (
);

OAI21X1 _2198_ (
    .A(_296_),
    .B(_301_),
    .C(_547_),
    .Y(_302_)
);

NOR2X1 _1889_ (
    .A(_530_),
    .B(_17_),
    .Y(_86_)
);

NOR2X1 _1469_ (
    .A(\u_rf_if.tx_state [3]),
    .B(\u_rf_if.tx_state [2]),
    .Y(_870_)
);

DFFPOSX1 _2410_ (
    .D(_708_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(rf_read_reg0_to_if[3])
);

OAI21X1 _1698_ (
    .A(_1052_),
    .B(_1053_),
    .C(_943_),
    .Y(_1054_)
);

INVX1 _1278_ (
    .A(_470_),
    .Y(_469_)
);

NAND2X1 _1910_ (
    .A(_104_),
    .B(_526_),
    .Y(_731_)
);

DFFPOSX1 _2504_ (
    .D(_777_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [26])
);

DFFPOSX1 _2313_ (
    .D(_822_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [8])
);

DFFPOSX1 _2542_ (
    .D(_805_),
    .CLK(i_clk_fast_bF$buf5),
    .Q(\u_rf_if.shift_rx [0])
);

MUX2X1 _2122_ (
    .A(_250_),
    .B(_251_),
    .S(_23__bF$buf2),
    .Y(_665_)
);

NAND3X1 _1813_ (
    .A(_1043_),
    .B(_9_),
    .C(_524_),
    .Y(_10_)
);

DFFPOSX1 _2351_ (
    .D(_846_),
    .CLK(i_clk_fast_bF$buf4),
    .Q(\u_mem_serial.shift_reg [0])
);

OAI21X1 _1622_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(\u_rf_if.read_buf0 [20]),
    .C(_999_),
    .Y(_1000_)
);

OAI21X1 _1202_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .B(_542_),
    .C(_539_),
    .Y(_538_)
);

FILL FILL95250x43350 (
);

DFFPOSX1 _2407_ (
    .D(_705_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.csr_imm )
);

NOR2X1 _2160_ (
    .A(_862_),
    .B(_593_),
    .Y(_648_)
);

NAND2X1 _1851_ (
    .A(_47_),
    .B(_46_),
    .Y(_48_)
);

OAI21X1 _1431_ (
    .A(_352_),
    .B(_459__bF$buf3),
    .C(_351_),
    .Y(_818_)
);

AOI21X1 _2216_ (
    .A(_67_),
    .B(_284_),
    .C(_314_),
    .Y(_634_)
);

OAI21X1 _1907_ (
    .A(_95_),
    .B(_92_),
    .C(_102_),
    .Y(_103_)
);

NAND2X1 _1660_ (
    .A(\u_rf_if.read_buf0 [30]),
    .B(_594_),
    .Y(_1028_)
);

NOR2X1 _1240_ (
    .A(\u_mem_serial.bit_count [4]),
    .B(\u_mem_serial.bit_count [2]),
    .Y(_502_)
);

DFFPOSX1 _2445_ (
    .D(_601_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.pc_plus_4_cy_r_w )
);

INVX1 _2025_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [1]),
    .Y(_187_)
);

OAI21X1 _1716_ (
    .A(\u_rf_if.last_req_key [7]),
    .B(_936_),
    .C(i_rst_n_bF$buf3),
    .Y(_1064_)
);

FILL FILL95550x86550 (
);

MUX2X1 _2254_ (
    .A(_405_),
    .B(_411_),
    .S(_124__bF$buf0),
    .Y(_613_)
);

NAND2X1 _1945_ (
    .A(_134_),
    .B(\u_rf_if.rtrig0 ),
    .Y(_135_)
);

NAND3X1 _1525_ (
    .A(_917_),
    .B(_924_),
    .C(_923_),
    .Y(_925_)
);

DFFPOSX1 _2483_ (
    .D(\u_rf_if.rtrig0 ),
    .CLK(i_clk_sys_ext_bF$buf7),
    .Q(\u_rf_if.rtrig1 )
);

INVX1 _2063_ (
    .A(rf_read_reg0_to_if[4]),
    .Y(_214_)
);

AOI21X1 _1754_ (
    .A(_810_),
    .B(_1092_),
    .C(_1093_),
    .Y(_746_)
);

INVX1 _1334_ (
    .A(\u_cpu.bufreg.data [4]),
    .Y(_424_)
);

DFFPOSX1 _2539_ (
    .D(_633_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [26])
);

INVX1 _2119_ (
    .A(\u_cpu.bufreg.data [13]),
    .Y(_250_)
);

DFFPOSX1 _2292_ (
    .D(_640_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg2.dhi [3])
);

INVX1 _1983_ (
    .A(rf_read_reg0_to_if[3]),
    .Y(_156_)
);

OAI21X1 _1563_ (
    .A(_585_),
    .B(_955_),
    .C(_953_),
    .Y(_800_)
);

INVX1 _1143_ (
    .A(\u_rf_if.issue_reg [1]),
    .Y(_596_)
);

DFFPOSX1 _2348_ (
    .D(_844_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [16])
);

MUX2X1 _1619_ (
    .A(_997_),
    .B(_992_),
    .S(_586__bF$buf1),
    .Y(_786_)
);

NOR2X1 _1792_ (
    .A(\u_cpu.bufreg2.i_bytecnt [0]),
    .B(_569_),
    .Y(_1129_)
);

OAI21X1 _1372_ (
    .A(_489__bF$buf4),
    .B(_392_),
    .C(_395_),
    .Y(_391_)
);

NOR2X1 _2157_ (
    .A(_1115_),
    .B(_257_),
    .Y(_271_)
);

OAI21X1 _1848_ (
    .A(_42_),
    .B(_44_),
    .C(\u_cpu.ctrl.pc ),
    .Y(_45_)
);

OAI21X1 _1428_ (
    .A(_354_),
    .B(_459__bF$buf3),
    .C(_353_),
    .Y(_819_)
);

NOR2X1 _1181_ (
    .A(\u_cpu.state.cnt_r [3]),
    .B(_560_),
    .Y(_559_)
);

FILL FILL95550x18150 (
);

DFFPOSX1 _2386_ (
    .D(_684_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [5])
);

NAND2X1 _1657_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(_1025_),
    .Y(_1026_)
);

INVX1 _1237_ (
    .A(i_clk_sys_ext_bF$buf4),
    .Y(_505_)
);

OAI21X1 _2195_ (
    .A(_283_),
    .B(_292_),
    .C(_299_),
    .Y(_300_)
);

INVX1 _1886_ (
    .A(_82_),
    .Y(_83_)
);

INVX1 _1466_ (
    .A(\u_rf_if.tx_state [0]),
    .Y(_867_)
);

FILL FILL94950x64950 (
);

INVX1 _1695_ (
    .A(_1050_),
    .Y(_1051_)
);

NAND2X1 _1275_ (
    .A(\u_mem_serial.req_pending ),
    .B(_479_),
    .Y(_471_)
);

DFFPOSX1 _2289_ (
    .D(_639_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_cpu.bufreg.i_shamt [2])
);

DFFPOSX1 _2501_ (
    .D(_774_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [29])
);

MUX2X1 _2098_ (
    .A(_238_),
    .B(_239_),
    .S(_23__bF$buf0),
    .Y(_677_)
);

AOI21X1 _1789_ (
    .A(_1127_),
    .B(_1125_),
    .C(_527_),
    .Y(_737_)
);

INVX1 _1369_ (
    .A(\u_cpu.bufreg.data [9]),
    .Y(_394_)
);

DFFPOSX1 _2310_ (
    .D(_599_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.alu.add_cy_r )
);

OAI21X1 _1598_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [14]),
    .C(_981_),
    .Y(_982_)
);

INVX1 _1178_ (
    .A(_563_),
    .Y(_562_)
);

INVX1 _1810_ (
    .A(_6_),
    .Y(_7_)
);

DFFPOSX1 _2404_ (
    .D(_702_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [1])
);

FILL FILL95250x64950 (
);

MUX2X1 _2213_ (
    .A(_163_),
    .B(_1040_),
    .S(mem_ibus_ack_bF$buf6),
    .Y(_636_)
);

OAI21X1 _1904_ (
    .A(_98_),
    .B(_99_),
    .C(_1047_),
    .Y(_100_)
);

DFFPOSX1 _2442_ (
    .D(_610_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.o_ibus_adr [3])
);

INVX1 _2022_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [2]),
    .Y(_185_)
);

AOI21X1 _1713_ (
    .A(_515_),
    .B(_936_),
    .C(_1062_),
    .Y(_757_)
);

MUX2X1 _2251_ (
    .A(_387_),
    .B(_393_),
    .S(_124__bF$buf0),
    .Y(_616_)
);

NOR2X1 _1942_ (
    .A(rf_wreg0_to_if[3]),
    .B(rf_wreg0_to_if[0]),
    .Y(_132_)
);

INVX1 _1522_ (
    .A(_921_),
    .Y(_922_)
);

DFFPOSX1 _2307_ (
    .D(_819_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [11])
);

DFFPOSX1 _2480_ (
    .D(_760_),
    .CLK(i_clk_fast_bF$buf1),
    .Q(\u_rf_if.last_req_key [2])
);

OAI21X1 _2060_ (
    .A(_202_),
    .B(_211_),
    .C(_212_),
    .Y(_688_)
);

NOR2X1 _1751_ (
    .A(_1033_),
    .B(_1032_),
    .Y(_1091_)
);

MUX2X1 _1331_ (
    .A(_427_),
    .B(_432_),
    .S(_459__bF$buf0),
    .Y(_842_)
);

DFFPOSX1 _2536_ (
    .D(_801_),
    .CLK(i_clk_sys_ext_bF$buf0),
    .Q(\u_rf_if.read_buf0 [2])
);

MUX2X1 _2116_ (
    .A(_247_),
    .B(_248_),
    .S(_23__bF$buf0),
    .Y(_668_)
);

NAND2X1 _1807_ (
    .A(\u_rf_if.wdata0_next_phase ),
    .B(_1123_),
    .Y(_4_)
);

NAND2X1 _1980_ (
    .A(mem_ibus_ack_bF$buf3),
    .B(\u_mem_serial.shift_reg [30]),
    .Y(_155_)
);

NAND2X1 _1560_ (
    .A(\u_rf_if.read_buf0 [3]),
    .B(_585_),
    .Y(_953_)
);

BUFX2 _1140_ (
    .A(_1110_),
    .Y(o_mem_sync)
);

DFFPOSX1 _2345_ (
    .D(_841_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_reg [19])
);

INVX1 _1616_ (
    .A(\u_rf_if.read_buf0 [18]),
    .Y(_995_)
);

AOI21X1 _2154_ (
    .A(\u_cpu.bufreg.data [2]),
    .B(_574_),
    .C(_269_),
    .Y(_270_)
);

OAI22X1 _1845_ (
    .A(_532_),
    .B(_26_),
    .C(_41_),
    .D(_32_),
    .Y(_42_)
);

OAI21X1 _1425_ (
    .A(_356_),
    .B(_459__bF$buf1),
    .C(_355_),
    .Y(_820_)
);

DFFPOSX1 _2383_ (
    .D(_681_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.bufreg.data [28])
);

FILL FILL95550x72150 (
);

OAI21X1 _1654_ (
    .A(\u_rf_if.stream_active_bF$buf1 ),
    .B(\u_rf_if.read_buf0 [28]),
    .C(_1023_),
    .Y(_1024_)
);

INVX1 _1234_ (
    .A(\u_mem_serial.active_ibus ),
    .Y(_508_)
);

DFFPOSX1 _2439_ (
    .D(_609_),
    .CLK(i_clk_sys_ext_bF$buf4),
    .Q(\u_cpu.ctrl.o_ibus_adr [2])
);

INVX1 _2019_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3]),
    .Y(_183_)
);

NOR2X1 _2192_ (
    .A(_295_),
    .B(_296_),
    .Y(_297_)
);

AOI22X1 _1883_ (
    .A(_578_),
    .B(_79_),
    .C(_76_),
    .D(_77_),
    .Y(_80_)
);

AOI21X1 _1463_ (
    .A(_863_),
    .B(_810_),
    .C(_864_),
    .Y(_809_)
);

INVX1 _2248_ (
    .A(\u_cpu.ctrl.o_ibus_adr [11]),
    .Y(_331_)
);

INVX1 _1939_ (
    .A(_128_),
    .Y(_129_)
);

INVX1 _1519_ (
    .A(raddr[0]),
    .Y(_919_)
);

INVX1 _1692_ (
    .A(_880_),
    .Y(_1049_)
);

NOR2X1 _1272_ (
    .A(_474_),
    .B(_480_),
    .Y(_473_)
);

DFFPOSX1 _2477_ (
    .D(_625_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [18])
);

OAI21X1 _2057_ (
    .A(_204_),
    .B(_209_),
    .C(_210_),
    .Y(_689_)
);

INVX1 _1748_ (
    .A(_1088_),
    .Y(_1089_)
);

INVX1 _1328_ (
    .A(\u_cpu.ctrl.o_ibus_adr [3]),
    .Y(_429_)
);

DFFPOSX1 _2286_ (
    .D(_810_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(ren)
);

NOR2X1 _1977_ (
    .A(_582_),
    .B(_420_),
    .Y(_153_)
);

NAND2X1 _1557_ (
    .A(_594_),
    .B(_950_),
    .Y(_951_)
);

BUFX2 _1137_ (
    .A(_1113_),
    .Y(o_rf_sync)
);

INVX1 _2095_ (
    .A(\u_cpu.bufreg.data [25]),
    .Y(_238_)
);

NAND3X1 _1786_ (
    .A(_1120_),
    .B(_1124_),
    .C(_1107_),
    .Y(_1125_)
);

MUX2X1 _1366_ (
    .A(_397_),
    .B(_402_),
    .S(_459__bF$buf0),
    .Y(_837_)
);

MUX2X1 _1595_ (
    .A(_979_),
    .B(_974_),
    .S(_586__bF$buf1),
    .Y(_792_)
);

NOR2X1 _1175_ (
    .A(_573_),
    .B(_566_),
    .Y(_565_)
);

NAND2X1 _2189_ (
    .A(_291_),
    .B(_294_),
    .Y(_641_)
);

DFFPOSX1 _2401_ (
    .D(_699_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_cpu.immdec.gen_immdec_w_eq_1.imm30_25 [3])
);

OAI21X1 _1689_ (
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .C(\u_rf_if.tx_state [2]),
    .Y(_1046_)
);

INVX1 _1269_ (
    .A(\u_mem_serial.req_pending ),
    .Y(_476_)
);

NAND3X1 _2210_ (
    .A(_309_),
    .B(_310_),
    .C(_312_),
    .Y(_638_)
);

INVX1 _1901_ (
    .A(_515_),
    .Y(_97_)
);

OAI21X1 _1498_ (
    .A(\u_rf_if.o_waddr [1]),
    .B(ren),
    .C(_897_),
    .Y(_898_)
);

OAI21X1 _1710_ (
    .A(\u_rf_if.last_req_key [4]),
    .B(_936_),
    .C(i_rst_n_bF$buf3),
    .Y(_1061_)
);

DFFPOSX1 _2304_ (
    .D(_818_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_mem_serial.shift_reg [12])
);

DFFPOSX1 _2533_ (
    .D(_798_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [5])
);

INVX1 _2113_ (
    .A(\u_cpu.bufreg.data [16]),
    .Y(_247_)
);

NAND3X1 _1804_ (
    .A(_1133_),
    .B(_1134_),
    .C(_1114_),
    .Y(_1_)
);

DFFPOSX1 _2342_ (
    .D(_838_),
    .CLK(i_clk_fast_bF$buf7),
    .Q(\u_mem_serial.shift_reg [22])
);

NAND2X1 _1613_ (
    .A(\u_rf_if.stream_active_bF$buf6 ),
    .B(_992_),
    .Y(_993_)
);

OR2X2 _2151_ (
    .A(_261_),
    .B(_266_),
    .Y(_267_)
);

CLKBUF1 CLKBUF1_insert30 (
    .A(i_clk_fast),
    .Y(i_clk_fast_bF$buf0)
);

AOI22X1 _1842_ (
    .A(_36_),
    .B(_38_),
    .C(_25_),
    .D(_14_),
    .Y(_39_)
);

OAI21X1 _1422_ (
    .A(_358_),
    .B(_459__bF$buf1),
    .C(_357_),
    .Y(_821_)
);

NAND2X1 _2207_ (
    .A(_282_),
    .B(_303_),
    .Y(_310_)
);

DFFPOSX1 _2380_ (
    .D(_678_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [25])
);

MUX2X1 _1651_ (
    .A(_1021_),
    .B(_1016_),
    .S(_586__bF$buf0),
    .Y(_778_)
);

NOR2X1 _1231_ (
    .A(_511_),
    .B(_587_),
    .Y(_510_)
);

DFFPOSX1 _2436_ (
    .D(_730_),
    .CLK(i_clk_sys_ext_bF$buf9),
    .Q(\u_cpu.ctrl.i_jump )
);

OAI21X1 _2016_ (
    .A(_532_),
    .B(_180_),
    .C(_158_),
    .Y(_181_)
);

FILL FILL95550x93750 (
);

AOI21X1 _1707_ (
    .A(_909_),
    .B(_935_),
    .C(_1059_),
    .Y(_760_)
);

AND2X2 _1880_ (
    .A(_1116_),
    .B(_580_),
    .Y(_77_)
);

NOR2X1 _1460_ (
    .A(_862_),
    .B(_592_),
    .Y(_810_)
);

MUX2X1 _2245_ (
    .A(_328_),
    .B(_329_),
    .S(_124__bF$buf2),
    .Y(_620_)
);

OAI21X1 _1936_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(_1082_),
    .C(_526_),
    .Y(_127_)
);

NAND3X1 _1516_ (
    .A(_914_),
    .B(_915_),
    .C(_908_),
    .Y(_916_)
);

DFFPOSX1 _2474_ (
    .D(_757_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_if.last_req_key [5])
);

OAI21X1 _2054_ (
    .A(_204_),
    .B(_207_),
    .C(_208_),
    .Y(_690_)
);

INVX1 _1745_ (
    .A(\u_rf_if.pending_read ),
    .Y(_1086_)
);

INVX1 _1325_ (
    .A(\u_mem_serial.shift_reg [18]),
    .Y(_432_)
);

DFFPOSX1 _2283_ (
    .D(_637_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_cpu.bufreg.i_shamt [0])
);

MUX2X1 _1974_ (
    .A(_364_),
    .B(_11_),
    .S(mem_ibus_ack_bF$buf3),
    .Y(_713_)
);

AOI21X1 _1554_ (
    .A(_586__bF$buf4),
    .B(_947_),
    .C(_948_),
    .Y(_802_)
);

DFFPOSX1 _2339_ (
    .D(_646_),
    .CLK(i_clk_sys_ext_bF$buf11),
    .Q(\u_rf_if.write_wait [1])
);

MUX2X1 _2092_ (
    .A(_234_),
    .B(_236_),
    .S(_23__bF$buf0),
    .Y(_680_)
);

NOR2X1 _1783_ (
    .A(\u_rf_if.o_waddr [3]),
    .B(\u_rf_if.o_waddr [2]),
    .Y(_1122_)
);

INVX1 _1363_ (
    .A(\u_cpu.ctrl.o_ibus_adr [8]),
    .Y(_399_)
);

INVX1 _2148_ (
    .A(_258_),
    .Y(_264_)
);

FILL FILL95550x25350 (
);

OAI21X1 _1839_ (
    .A(_565_),
    .B(_30_),
    .C(_35_),
    .Y(_36_)
);

OAI21X1 _1419_ (
    .A(_360_),
    .B(_459__bF$buf1),
    .C(_359_),
    .Y(_822_)
);

INVX1 _1592_ (
    .A(\u_rf_if.read_buf0 [12]),
    .Y(_977_)
);

INVX1 _1172_ (
    .A(_569_),
    .Y(_568_)
);

DFFPOSX1 _2377_ (
    .D(_675_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [22])
);

INVX1 _1648_ (
    .A(\u_rf_if.read_buf0 [26]),
    .Y(_1019_)
);

AOI22X1 _1228_ (
    .A(ren),
    .B(raddr[7]),
    .C(_524_),
    .D(_514_),
    .Y(_513_)
);

NOR2X1 _2186_ (
    .A(_289_),
    .B(_547_),
    .Y(_292_)
);

NAND2X1 _1877_ (
    .A(_66_),
    .B(_72_),
    .Y(_74_)
);

INVX1 _1457_ (
    .A(_462_),
    .Y(_861_)
);

NOR2X1 _1686_ (
    .A(_1043_),
    .B(_1042_),
    .Y(_765_)
);

NOR2X1 _1266_ (
    .A(\u_mem_serial.state [1]),
    .B(\u_mem_serial.state [0]),
    .Y(_479_)
);

INVX1 _1495_ (
    .A(_893_),
    .Y(_895_)
);

INVX1 _2089_ (
    .A(\u_cpu.bufreg.data [29]),
    .Y(_235_)
);

DFFPOSX1 _2301_ (
    .D(_817_),
    .CLK(i_clk_fast_bF$buf2),
    .Q(\u_mem_serial.shift_reg [13])
);

NAND2X1 _1589_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(_974_),
    .Y(_975_)
);

INVX1 _1169_ (
    .A(\u_cpu.state.cnt_r [3]),
    .Y(_571_)
);

DFFPOSX1 _2530_ (
    .D(_796_),
    .CLK(i_clk_sys_ext_bF$buf12),
    .Q(\u_rf_if.read_buf0 [7])
);

MUX2X1 _2110_ (
    .A(_244_),
    .B(_245_),
    .S(_23__bF$buf3),
    .Y(_671_)
);

NAND2X1 _1801_ (
    .A(_867_),
    .B(_513_),
    .Y(_1135_)
);

OAI21X1 _1398_ (
    .A(_374_),
    .B(_459__bF$buf4),
    .C(_373_),
    .Y(_829_)
);

OAI21X1 _1610_ (
    .A(\u_rf_if.stream_active_bF$buf5 ),
    .B(\u_rf_if.read_buf0 [17]),
    .C(_990_),
    .Y(_991_)
);

INVX1 _2204_ (
    .A(\u_cpu.bufreg.i_shamt [1]),
    .Y(_307_)
);

DFFPOSX1 _2433_ (
    .D(_727_),
    .CLK(i_clk_sys_ext_bF$buf6),
    .Q(\u_rf_if.o_waddr [3])
);

AOI21X1 _2013_ (
    .A(_176_),
    .B(_161_),
    .C(_178_),
    .Y(_701_)
);

OAI21X1 _1704_ (
    .A(_1057_),
    .B(_935_),
    .C(i_rst_n_bF$buf2),
    .Y(_1058_)
);

INVX1 _2242_ (
    .A(\u_cpu.ctrl.o_ibus_adr [14]),
    .Y(_328_)
);

INVX1 _1933_ (
    .A(_124__bF$buf1),
    .Y(_125_)
);

INVX1 _1513_ (
    .A(_912_),
    .Y(_913_)
);

DFFPOSX1 _2471_ (
    .D(_622_),
    .CLK(i_clk_sys_ext_bF$buf13),
    .Q(\u_cpu.ctrl.o_ibus_adr [15])
);

OAI21X1 _2051_ (
    .A(_204_),
    .B(_205_),
    .C(_206_),
    .Y(_691_)
);

NOR2X1 _1742_ (
    .A(_1083_),
    .B(_1082_),
    .Y(_748_)
);

MUX2X1 _1322_ (
    .A(_436_),
    .B(_435_),
    .S(_474_),
    .Y(_434_)
);

DFFPOSX1 _2527_ (
    .D(_793_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.read_buf0 [10])
);

INVX1 _2107_ (
    .A(\u_cpu.bufreg.data [19]),
    .Y(_244_)
);

NOR2X1 _2280_ (
    .A(i_clk_fast_bF$buf5),
    .B(_1131_),
    .Y(_1112_)
);

AOI21X1 _1971_ (
    .A(_450_),
    .B(\u_rf_if.stream_active_bF$buf0 ),
    .C(_457_),
    .Y(_150_)
);

MUX2X1 _1551_ (
    .A(_946_),
    .B(_945_),
    .S(_586__bF$buf4),
    .Y(_803_)
);

DFFPOSX1 _2336_ (
    .D(_834_),
    .CLK(i_clk_fast_bF$buf3),
    .Q(\u_mem_serial.shift_reg [26])
);

MUX2X1 _1607_ (
    .A(_988_),
    .B(_983_),
    .S(_586__bF$buf2),
    .Y(_789_)
);

NAND2X1 _1780_ (
    .A(_580_),
    .B(_1118_),
    .Y(_1119_)
);

INVX1 _1360_ (
    .A(\u_mem_serial.shift_reg [23]),
    .Y(_402_)
);

NAND3X1 _2145_ (
    .A(_554_),
    .B(_260_),
    .C(_36_),
    .Y(_261_)
);

OAI21X1 _1836_ (
    .A(_580_),
    .B(_32_),
    .C(\u_cpu.immdec.gen_immdec_w_eq_1.imm31 ),
    .Y(_33_)
);

OAI21X1 _1416_ (
    .A(_362_),
    .B(_459__bF$buf1),
    .C(_361_),
    .Y(_823_)
);

FILL FILL95550x46950 (
);

DFFPOSX1 _2374_ (
    .D(_672_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [19])
);

NAND2X1 _1645_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(_1016_),
    .Y(_1017_)
);

AND2X2 _1225_ (
    .A(_520_),
    .B(rf_wreg0_to_if[1]),
    .Y(_516_)
);

INVX1 _2183_ (
    .A(\u_cpu.bufreg2.dhi [4]),
    .Y(_289_)
);

NAND2X1 _1874_ (
    .A(_70_),
    .B(_67_),
    .Y(_71_)
);

NOR2X1 _1454_ (
    .A(_466_),
    .B(_855_),
    .Y(_856_)
);

MUX2X1 _2239_ (
    .A(_325_),
    .B(_326_),
    .S(_124__bF$buf3),
    .Y(_623_)
);

OAI21X1 _1683_ (
    .A(\u_rf_if.tx_state [0]),
    .B(_879_),
    .C(i_rst_n_bF$buf1),
    .Y(_1042_)
);

NOR2X1 _1263_ (
    .A(_483_),
    .B(_482_),
    .Y(_0_)
);

DFFPOSX1 _2468_ (
    .D(_754_),
    .CLK(i_clk_fast_bF$buf0),
    .Q(\u_rf_if.last_req_key [8])
);

NOR2X1 _2048_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_203_),
    .Y(_204_)
);

NOR2X1 _1739_ (
    .A(_1079_),
    .B(_1081_),
    .Y(_749_)
);

NAND2X1 _1319_ (
    .A(_440_),
    .B(_489__bF$buf1),
    .Y(_437_)
);

OR2X2 _1492_ (
    .A(_520_),
    .B(raddr[3]),
    .Y(_892_)
);

MUX2X1 _2277_ (
    .A(_112_),
    .B(_70_),
    .S(_558_),
    .Y(_599_)
);

FILL FILL94650x3750 (
);

OAI21X1 _1968_ (
    .A(_455_),
    .B(_454_),
    .C(_456_),
    .Y(_148_)
);

NOR2X1 _1548_ (
    .A(_941_),
    .B(_944_),
    .Y(_804_)
);

NAND2X1 _2086_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm11_7 [4]),
    .B(_204_),
    .Y(_233_)
);

NOR2X1 _1777_ (
    .A(\u_cpu.bne_or_bge ),
    .B(\u_cpu.decode.co_mem_word ),
    .Y(_1116_)
);

MUX2X1 _1357_ (
    .A(_406_),
    .B(_405_),
    .S(_474_),
    .Y(_404_)
);

OAI21X1 _1586_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(\u_rf_if.read_buf0 [11]),
    .C(_972_),
    .Y(_973_)
);

NAND2X1 _1166_ (
    .A(_581_),
    .B(_575_),
    .Y(_574_)
);

CLKBUF1 CLKBUF1_insert9 (
    .A(i_clk_sys_ext),
    .Y(i_clk_sys_ext_bF$buf13)
);

AOI21X1 _1395_ (
    .A(_459__bF$buf3),
    .B(_376_),
    .C(_375_),
    .Y(_830_)
);

OAI21X1 _2201_ (
    .A(_282_),
    .B(_303_),
    .C(_304_),
    .Y(_305_)
);

NAND2X1 _1489_ (
    .A(_887_),
    .B(_888_),
    .Y(_889_)
);

DFFPOSX1 _2430_ (
    .D(_725_),
    .CLK(i_clk_sys_ext_bF$buf10),
    .Q(\u_cpu.decode.co_mem_word )
);

INVX1 _2010_ (
    .A(\u_cpu.immdec.gen_immdec_w_eq_1.imm19_12_20 [0]),
    .Y(_176_)
);

AOI21X1 _1701_ (
    .A(_918_),
    .B(_935_),
    .C(_1055_),
    .Y(_762_)
);

NOR2X1 _1298_ (
    .A(_456_),
    .B(_452_),
    .Y(_451_)
);

OAI21X1 _1930_ (
    .A(_581_),
    .B(_565_),
    .C(_562_),
    .Y(_729_)
);

INVX1 _1510_ (
    .A(raddr[2]),
    .Y(_910_)
);

DFFPOSX1 _2524_ (
    .D(_790_),
    .CLK(i_clk_sys_ext_bF$buf5),
    .Q(\u_rf_if.read_buf0 [13])
);

MUX2X1 _2104_ (
    .A(_241_),
    .B(_242_),
    .S(_23__bF$buf3),
    .Y(_674_)
);

DFFPOSX1 _2333_ (
    .D(_658_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [5])
);

INVX1 _1604_ (
    .A(\u_rf_if.read_buf0 [15]),
    .Y(_986_)
);

OAI21X1 _2142_ (
    .A(\u_cpu.decode.opcode [1]),
    .B(_532_),
    .C(\u_cpu.branch_op ),
    .Y(_258_)
);

MUX2X1 _1833_ (
    .A(rf_read_reg1_to_if[0]),
    .B(rf_wreg0_to_if[0]),
    .S(_29_),
    .Y(_30_)
);

OAI21X1 _1413_ (
    .A(_364_),
    .B(_459__bF$buf4),
    .C(_363_),
    .Y(_824_)
);

BUFX2 BUFX2_insert60 (
    .A(_459_),
    .Y(_459__bF$buf0)
);

BUFX2 BUFX2_insert61 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf6)
);

BUFX2 BUFX2_insert62 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf5)
);

BUFX2 BUFX2_insert63 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf4)
);

BUFX2 BUFX2_insert64 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf3)
);

BUFX2 BUFX2_insert65 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf2)
);

BUFX2 BUFX2_insert66 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf1)
);

BUFX2 BUFX2_insert67 (
    .A(mem_ibus_ack),
    .Y(mem_ibus_ack_bF$buf0)
);

DFFPOSX1 _2371_ (
    .D(_670_),
    .CLK(i_clk_sys_ext_bF$buf2),
    .Q(\u_cpu.bufreg.data [17])
);

OAI21X1 _1642_ (
    .A(\u_rf_if.stream_active_bF$buf2 ),
    .B(\u_rf_if.read_buf0 [25]),
    .C(_1014_),
    .Y(_1015_)
);

AND2X2 _1222_ (
    .A(_520_),
    .B(rf_wreg0_to_if[0]),
    .Y(_519_)
);

DFFPOSX1 _2427_ (
    .D(_722_),
    .CLK(i_clk_sys_ext_bF$buf3),
    .Q(\u_cpu.decode.opcode [2])
);

OAI21X1 _2007_ (
    .A(mem_ibus_ack_bF$buf1),
    .B(_170_),
    .C(_137_),
    .Y(_174_)
);

NAND3X1 _2180_ (
    .A(_284_),
    .B(_286_),
    .C(_536_),
    .Y(_287_)
);

INVX1 _1871_ (
    .A(_67_),
    .Y(_68_)
);

OAI21X1 _1451_ (
    .A(_719_),
    .B(_463_),
    .C(\u_mem_serial.bit_count [4]),
    .Y(_736_)
);

INVX1 _2236_ (
    .A(\u_cpu.ctrl.o_ibus_adr [17]),
    .Y(_325_)
);

NAND2X1 _1927_ (
    .A(_119_),
    .B(_120_),
    .Y(_121_)
);

INVX1 _1507_ (
    .A(\u_rf_if.req_seen ),
    .Y(_907_)
);

INVX1 _1680_ (
    .A(\u_rf_if.issue_reg [2]),
    .Y(_1040_)
);

INVX1 _1260_ (
    .A(_1110_),
    .Y(_483_)
);

DFFPOSX1 _2465_ (
    .D(_619_),
    .CLK(i_clk_sys_ext_bF$buf8),
    .Q(\u_cpu.ctrl.o_ibus_adr [12])
);

AOI21X1 _2045_ (
    .A(_199_),
    .B(_193_),
    .C(_201_),
    .Y(_692_)
);

NOR2X1 _1736_ (
    .A(_1078_),
    .B(_1076_),
    .Y(_1079_)
);

AOI22X1 _1316_ (
    .A(\u_mem_serial.shift_reg [15]),
    .B(_489__bF$buf1),
    .C(_443_),
    .D(\u_cpu.ctrl.o_ibus_adr [1]),
    .Y(_439_)
);

AND2X2 _2274_ (
    .A(_51_),
    .B(\u_cpu.ctrl.i_jump ),
    .Y(_339_)
);

NAND3X1 _1965_ (
    .A(\u_rf_if.stream_active_bF$buf0 ),
    .B(_145_),
    .C(_452_),
    .Y(_146_)
);

NOR2X1 _1545_ (
    .A(\u_rf_if.tx_state [1]),
    .B(\u_rf_if.tx_state [0]),
    .Y(_942_)
);

AOI21X1 _2083_ (
    .A(mem_ibus_ack_bF$buf4),
    .B(\u_mem_serial.shift_reg [24]),
    .C(_230_),
    .Y(_231_)
);

FILL FILL95550x32550 (
);

NOR2X1 _1774_ (
    .A(_876_),
    .B(_1106_),
    .Y(_1107_)
);

NAND2X1 _1354_ (
    .A(_414_),
    .B(_489__bF$buf0),
    .Y(_407_)
);

INVX1 _2139_ (
    .A(\u_cpu.bufreg.data [31]),
    .Y(_257_)
);

MUX2X1 _1583_ (
    .A(_970_),
    .B(_965_),
    .S(_586__bF$buf0),
    .Y(_795_)
);

NOR2X1 _1163_ (
    .A(\u_cpu.branch_op ),
    .B(\u_cpu.decode.opcode [0]),
    .Y(_577_)
);

DFFPOSX1 _2368_ (
    .D(_859_),
    .CLK(i_clk_sys_ext_bF$buf1),
    .Q(\u_rf_if.issue_reg [1])
);

MUX2X1 _1639_ (
    .A(_1012_),
    .B(_1007_),
    .S(_586__bF$buf3),
    .Y(_781_)
);

NOR2X1 _1219_ (
    .A(ren),
    .B(_523_),
    .Y(_522_)
);

AOI21X1 _1392_ (
    .A(_459__bF$buf2),
    .B(_378_),
    .C(_377_),
    .Y(_831_)
);

OAI21X1 _2177_ (
    .A(_282_),
    .B(_547_),
    .C(\u_cpu.bufreg2.cnt_next [6]),
    .Y(_285_)
);

OAI21X1 _1868_ (
    .A(_594_),
    .B(_945_),
    .C(_64_),
    .Y(_65_)
);

NOR2X1 _1448_ (
    .A(_503_),
    .B(_343_),
    .Y(_734_)
);

endmodule
