// Code your testbench here
// or browse Examples
module dff_synr_tb();
  logic [7:0]D;
  logic clk;
  logic reset;
  logic [7:0]Q;
  
  //Instantiate RTL
  dff_synr DFFSR(.*);
  
  //Drive Stimulus
  initial begin
    clk=1'b1;
    for (int i=0;i<50; i++) begin
      D=$urandom_range(0, 8'hFF);
      reset=$random%2;
      #5;
    end
  end
  
  //Generate Clock
  always #5 clk=~clk;
  
  //Dump files
  initial begin
    $dumpfile("dff_synr_tb.vcd");
    $dumpvars(0, dff_synr_tb);
    $monitor($time, " D=%h, clk = %b, reset=%b, Q=%h", D, clk, reset, Q);
  end             
  
endmodule
