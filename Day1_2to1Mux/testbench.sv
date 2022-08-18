module muxtest2to1;
  reg A; reg B; reg S; wire Y;
  mux2to1 M21(.in1(A), .in2(B), .sel(S), .out(Y));
  
  initial
    begin
      $dumpfile("muxtest2to1.vcd");
      $dumpvars(0,muxtest2to1);
      $monitor($time, " A=%b, B=%b, S=%b, Y=%b", A,B,S,Y);
      #5 A=1'b0;B=1'b1;S=1'b0;
      #5 A=1'b1;B=1'b0;S=1'b1;
      #5 A=1'b1;B=1'b0;S=1'b0;
    end
endmodule
