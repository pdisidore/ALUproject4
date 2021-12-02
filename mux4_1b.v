// 4:1 mux 
// File: mux4_1b.v 
// Don M. Gruenbacher 
// Phillip Disidore  

`timescale 100 ns / 1 ns 
/*
<param> = select (chooses the operation)
<param> = x (4b a input on the project outline)
<param> = y (4b b input on the project outline)
<param> = f (8b output)
*/
module mux4_1b(select, x, y, f);           
	input [1:0] select; 
	input [3:0] x; 
	input [3:0] y;
	output f[7:0]; 


	assign f = (select == 2'b00) ? x+y                        //+
		: (select == 2'b01) ? x-y                         //-
		: (select == 2'b10) ? x*y                         //*
		:  x; // Extra x covers other input combinations


endmodule 
