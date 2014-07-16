@Echo Press any key to continue to generate the PiXi prom file
@Echo or press Ctrl-C to exit.
@pause

@copy ..\build\pixi.bin .\pixi.bin /y
@copy ..\build\pixi.bit .\pixi.bit /y
@C:\Xilinx\14.7\ISE_DS\ISE\bin\nt64\promgen -w -p mcs -o pixi -s 512K -u 0000 pixi.bit -spi
@pause
