@echo off
REM Vivado setup path may need local adjustment.
call C:\Xilinx\Vivado\2024.2\settings64.bat

echo Vivado Tcl Batch mode simulation starts...
call vivado -mode batch -source run_sim.tcl -notrace

echo.
echo =========================================
echo [Cleanup] Remove unnecessary Vivado temp files
echo =========================================
if exist .Xil rmdir /S /Q .Xil
del /Q vivado*.jou vivado*.log >nul 2>&1

echo [Cleanup] done
@REM pause
