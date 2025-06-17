
module jff(j,k,reset,clk,q);
  input j,k,reset,clk;
  output reg q;
  initial q = 1'b0;
  always@(negedge clk,negedge reset)begin
    if(reset==0)
      q<=1'b0;
    else begin   
      case({j,k})
        2'b00: q<=q;
        2'b01: q<=1'b0;
        2'b10: q<=1'b1;
        2'b11: q<=!q;
      endcase
    end
  end
endmodule
module bc(input clk,input reset,output wire [2:0]y);
  supply1 vcc;
  wire z,q1,q2,q3;
  assign z = reset & (!(y[2] & y[1] & y[0]));
  jff f1(.j(vcc),.k(vcc),.reset(z),.clk(clk),.q(y[0]));
  jff f2(.j(vcc),.k(vcc),.reset(z),.clk(y[0]),.q(y[1]));
  jff f3(.j(vcc),.k(vcc),.reset(z),.clk(y[1]),.q(y[2]));
endmodule
  
                      
  
  
      
  
    
 