module seq_001r
(
	input xin,
	input clk,
	input reset,
	output reg y

);

reg [1:0]state;
reg [1:0]next_state;

parameter S0= 2'b00;
parameter S1= 2'b01;
parameter S2= 2'b10;
parameter S3= 2'b11;


always @(posedge clk,negedge reset)
	if (reset==0)
		state <= S0;
	else
		state<=next_state;
		
always @(state,xin)
	case(state)
	
	S0: if(~xin) next_state<=S1; else next_state<=S0;
	S1: if(~xin) next_state<=S2; else next_state<=S0;
	S2: if(xin) next_state<=S3; else next_state<=S1;
	S3: if(~xin) next_state<=S1; else next_state<=S0;

	endcase
	
always @(state,xin)
	case( state )
	
	S0: if(~xin) y=0; else y=0;
	S1: if(~xin) y=0; else y=0;
	S2: if(xin) y=1; else y=0;
	S3: if(~xin) y=0; else y=0;

	endcase
endmodule