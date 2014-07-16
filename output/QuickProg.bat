@copy ..\build\pixi.bin .\pixi.bin /y
@copy ..\build\pixi.bit .\pixi.bit /y
@C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\promgen -w -p mcs -o pixi -s 512K -u 0000 pixi.bit -spi
@C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\impact -batch impact_cmd.cmd
@pause