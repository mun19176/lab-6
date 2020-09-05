module FliptypeD(input logic clock, input logic [3:0]D, input logic Res, input logic S, output [3:0]Out);
reg Out;


	always @(posedge clock or	posedge Res)
		if (Res)begin
		Out <= 4'b0000;
	end else if (S)begin
		Out <= 4'b1111;
	end else begin
		Out <= D;
	end
	
endmodule

