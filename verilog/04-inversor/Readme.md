For simulating the NOT gate:

$ iverilog inv.v inv_tb.v -o inv
$ gtkware inv_test.vcd

Select the signals clk and B form the inv_tb


For sintetizing:

$ yosys -p "synth_ice40 -blif inv.blif" inv.v
$ arachne-pnr -d 1k -p inv.pcf inv.blif -o inv.txt
$ icepack inv.txt inv.bin
