//-- inversor test bench
module inv_tb;

reg clk = 0;
wire B;

inv G1 (
  .A (clk),
  .B (B)
);

initial begin
     $dumpfile("inv_test.vcd");
     $dumpvars(0,inv_tb);

     # 500 $finish;
end

initial begin
  clk = 0;
end

  always #1 clk = !clk;

endmodule


