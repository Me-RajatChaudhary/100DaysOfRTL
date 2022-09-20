// Code your testbench here
// or browse Examples
module tb_day7;
  
  logic clk;
  logic reset;
  logic [3:0] lfsr_o;
  
  day7 Day7(.*);
  
  always begin
    clk =1'b1;
    #5;
    clk =1'b0;
    #5;
  end
  
  initial begin
    reset <=1'b0;
    @(posedge clk);
    reset <=1'b1;
    for(int i=0; i<32; i++) 
      @(posedge clk);
    $finish();
  end
  
  initial begin
    $dumpfile("lfsr.vcd");
    $dumpvars(0, tb_day7);
  end  
  
endmodule
