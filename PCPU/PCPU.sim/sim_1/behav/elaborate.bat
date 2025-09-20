@echo off
set xv_path=D:\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto b32b34ffa65e48c595d695980f1fe1ca -m64 --debug typical --relax --mt 2 -L dist_mem_gen_v8_0_10 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip --snapshot testbench_behav xil_defaultlib.testbench xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
