rot.v Example taken from the arachne-PRN project

Testing the whole open source fpga toolchain

http://www.clifford.at/icestorm/

yosys -p "synth_ice40 -blif rot.blif" rot.v
arachne-pnr -d 1k -p rot.pcf rot.blif -o rot.txt
icepack rot.txt rot.bin

-- If the fpga board is connected, then upload it!
iceprog rot.bin

Everything works except iceprog (I do not have already the fpga board)


