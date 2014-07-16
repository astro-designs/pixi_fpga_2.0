setMode -bs
setCable -p auto
Identify -inferir 
identifyMPM

assignFile -p 1 -file pixi.bit
attachFlash -position 1 -spi M25P40
assignFileToAttachedFlash -position 1 -file pixi.mcs
ReadIdcode -p 1 

Program -p 1
ReadStatusRegister -p 1
Program -p 1 -dataWidth 1 -spionly -e -v -loadfpga
ReadStatusRegister -p 1
quit