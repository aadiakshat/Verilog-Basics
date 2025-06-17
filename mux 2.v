
module mux(s,a,b,y);
  output reg y;
  input s,a,b;
  always@(s,a,b)
    case (s)
      1'b0:y=a;
      1'b1:y=b;
    endcase
endmodule