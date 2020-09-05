module TB();

  reg clc, Res, S;
  reg [3:0] Y;
  wire [3:0] Out;


	FtypeD U1(clc, Y, Res, S, Out);


initial begin
	clc=0;
	forever #1 clc = ~clc;
end
  initial begin
	#5
	$display("Ejercicio 5 ");
    $display("  R    T  clc   S");
    $display("------------");
    $monitor("%b %b %b %b", Out, Y, clc, S);

	#1 S = 1; Y = 4'b1100;
	#1 S = 1; Y = 4'b1100;
	#1 S = 0; Y = 4'b1100;
	#1 S = 0; Y = 4'b1100;
       Res = 0; Y = 4'b0000;
    #1 Res = 0; Y = 4'b1100;
    #1 Res = 0; Y = 4'b1111;
	#1 Res = 0; Y = 4'b1111;
	#1 Res = 0; Y = 4'b0011;
	#1 Res = 0; Y = 4'b0011;
	#1 Res = 0; Y = 4'b1111;
	#1 Res = 1; Y = 4'b1111;
	#1 Res = 0; Y = 4'b1100;

  end
	initial
    #20 $finish;
  initial begin
    $dumpfile("Ejercicio5_tb.vcd");
    $dumpvars(0, TB);
  end
endmodule