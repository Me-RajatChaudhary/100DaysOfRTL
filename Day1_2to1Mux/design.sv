module mux2to1(in1,in2,sel,out);
  input in1,in2,sel;
  output reg out;
  assign out = (sel==0)?in1:in2;
endmodule
