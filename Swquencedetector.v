module detector(input a,input clk,input reset,output reg i);
  parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
  reg [1:0]state,next_state;
  always@ (posedge clk,negedge reset)begin
    if(reset==0)begin
      state<=S0; 
    end else begin
      state<=next_state;
    end
  end
  always@(*) begin
    case (state)
      S0:begin 
        if (a==0) next_state=S0;
        else next_state=S1; 
      end
      S1:begin
        if (a==0) next_state=S0;
        else next_state=S2; 
      end
      S2:begin
        if (a==0) next_state=S0;
        else next_state=S3; 
      end
      S3:begin 
        next_state=S0; 
      end
    endcase
  end
  always@(*) begin
    i=((next_state==S3)&&(a==1));
  end
endmodule
      
   
  
  
  