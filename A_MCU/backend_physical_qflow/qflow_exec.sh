#!/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow
#-------------------------------------------

# /usr/local/share/qflow/scripts/yosys.sh ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow/source/my_mcu_top.v || exit 1
# /usr/local/share/qflow/scripts/graywolf.sh -d ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/qrouter.sh ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/vesta.sh  -d ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/magic_db.sh ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/magic_drc.sh ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
/usr/local/share/qflow/scripts/netgen_lvs.sh ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/magic_gds.sh ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/cleanup.sh -p ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
# /usr/local/share/qflow/scripts/magic_view.sh ~/Ho/MPW/MPW_workspace/Bit_Up/A_MCU/backend_physical_qflow my_mcu_top || exit 1
