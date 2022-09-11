// Code your testbench here
// or browse Examples
module day4_tb;
  logic [7:0] a_i;
  logic [7:0] b_i;
  logic [2:0] op_i;
  logic [7:0] alu_o;
  
  //Instantiate RTL
  day4_alu ALU(.*);
  
  //Drive Stimulus
  initial begin
    for (int i=0; i<8; i++) begin
      a_i = $urandom_range(0, 8'hFF);
      b_i = $urandom_range(0, 8'hFF);
      op_i = 3'(i);
      #5;
    end
  end
  
  //File dumps
  initial begin
    $dumpfile("alu.vcd");
    $dumpvars(0, day4_tb);
  end
  
  
endmodule
