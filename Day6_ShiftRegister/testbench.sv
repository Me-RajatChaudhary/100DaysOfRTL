// Code your testbench here
// or browse Examples
module tb_sr;
  logic clk, reset, D, out;
  
  shift_register SR1(.*);
  
  initial begin clk = 1'b1;
    #4 D=1;
    #4 D=0;
    #4 D=1;
    #4 D=0;
    #4 D=1;
  end
  always #2 clk = ~clk;
  
  initial begin
    $dumpfile("sr.vcd");
    $dumpvars(0, tb_sr);
    $monitor($time, " out=%d", out);
    #50 $finish;
  end
  
  
endmodule
