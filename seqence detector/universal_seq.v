module universal_seq
(
	input xin,
	input [2:0]inp_seq,
	input clk,
	input reset,
	input start1,
	input start2,
	output reg y

);

reg [2:0]seq;
assign seq=inp_seq;
reg [1:0]state;
reg [1:0]next_state;

parameter S0= 2'b00;
parameter S1= 2'b01;
parameter S2= 2'b10;
parameter S3= 2'b11;
parameter star=3'b000;

always @(posedge clk,negedge reset)
	if (reset==0)
		seq <= star;
	else
		begin
		seq<=inp_seq;
	        case(seq)
	2'b000: begin
always @(posedge clk,negedge reset)
	begin
	if (reset==0)
		state <= S0;
	else
		state<=next_state;
		end
always @(state,xin)
begin
	case(state)
	
	S0: if(~xin) next_state<=S1; else next_state<=S0;
	S1: if(~xin) next_state<=S2; else next_state<=S0;
	S2: if(~xin) next_state<=S1; else next_state<=S0;


	endcase
end
	
always @(state,xin)
	case( state )
	
	S0: if(~xin) y=0; else y=0;
	S1: if(~xin) y=0; else y=0;
	S2: if(~xin) y=1; else y=0;


	endcase
end			
			
	3'b001:begin
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
end

	3'b010:begin
always @(posedge clk,negedge reset)
	if (reset==0)
		state <= S0;
	else
		state<=next_state;
		
always @(state,xin)
	case(state)
	
	S0: if(~xin) next_state<=S1; else next_state<=S0;
	S1: if(xin) next_state<=S2; else next_state<=S0;
	S2: if(~xin) next_state<=S1; else next_state<=S0;


	endcase
	
always @(state,xin)
	case( state )
	
	S0: if(~xin) y=0; else y=0;
	S1: if(~xin) y=0; else y=0;
	S2: if(~xin) y=1; else y=0;


	endcase
end
	
	3'b011:begin
always @(posedge clk,negedge reset)
	if (reset==0)
		state <= S0;
	else
		state<=next_state;
		
always @(state,xin)
	case(state)
	
	S0: if(~xin) next_state<=S1; else next_state<=S0;
	S1: if(xin) next_state<=S2; else next_state<=S0;
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
end
	
	3'b100:begin
always @(posedge clk,negedge reset)
	if (reset==0)
		state <= S0;
	else
		state<=next_state;
		
always @(state,xin)
	case(state)
	
	S0: if(xin) next_state<=S1; else next_state<=S0;
	S1: if(~xin) next_state<=S2; else next_state<=S1;
	S2: if(~xin) next_state<=S3; else next_state<=S1;
	S3: if(~xin) next_state<=S0; else next_state<=S1;

	endcase
	
always @(state,xin)
	case( state )
	
	S0: if(~xin) y=0; else y=0;
	S1: if(~xin) y=0; else y=0;
	S2: if(~xin) y=1; else y=0;
	S3: if(~xin) y=0; else y=0;

	endcase
end
	
	3'b101:begin
always @(posedge clk,negedge reset)
	if (reset==0)
		state <= S0;
	else
		state<=next_state;
		
always @(state,xin)
	case(state)
	
	S0: if(xin) next_state<=S1; else next_state<=S0;
	S1: if(~xin) next_state<=S2; else next_state<=S1;
	S2: if(xin) next_state<=S1; else next_state<=S0;


	endcase
	
always @(state,xin)
	case( state )
	
	S0: if(~xin) y=0; else y=0;
	S1: if(~xin) y=0; else y=0;
	S2: if(xin) y=1; else y=0;


	endcase
end
	
	3'b110:begin
always @(posedge clk,negedge reset)
	if (reset==0)
		state <= S0;
	else
		state<=next_state;
		
always @(state,xin)
	case(state)
	
	S0: if(xin) next_state<=S1; else next_state<=S0;
	S1: if(xin) next_state<=S2; else next_state<=S0;
	S2: if(~xin) next_state<=S3; else next_state<=S1;
	S3: if(xin) next_state<=S1; else next_state<=S0;

	endcase
	
always @(state,xin)
	case( state )
	
	S0: if(~xin) y=0; else y=0;
	S1: if(~xin) y=0; else y=0;
	S2: if(~xin) y=1; else y=0;
	S3: if(~xin) y=0; else y=0;

	endcase
end
	
	3'b111:begin
always @(posedge clk,negedge reset)
	if (reset==0)
		state <= S0;
	else
		state<=next_state;
		
always @(state,xin)
	case(state)
	
	S0: if(xin) next_state<=S1; else next_state<=S0;
	S1: if(xin) next_state<=S2; else next_state<=S0;
	S2: if(xin) next_state<=S1; else next_state<=S0;


	endcase
	
always @(state,xin)
	case( state )
	
	S0: if(xin) y=0; else y=0;
	S1: if(xin) y=0; else y=0;
	S2: if(xin) y=1; else y=0;
endcase

end	
endcase
end

endmodule