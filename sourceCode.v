/* 
 * VERILOG CODE FOR A FREQUENCY DIVIDER CIRCUIT THAT OUTPUTS 3 DIFFERENT FREQUENCIES FROM SINGLE CLOCK
 * CLOCK 1 : 250 Khz
 * CLOCK 2 : 100 Khz
 * CLOCK 3 : 50 Khz

 * STUDENT : DALI Fethi Abdellatif
 * COUNTRY : ALGERIA
 * HDL : VERILOG
 * SOFTWARE : ModelSim
 * DATE : 11/30/2024 15:13 PM

*/

module code(clock_in, reset);

	parameter maxCounter_1 = 3, maxCounter_2 = 1, maxCounter_3 = 4, one = 1, zero = 0;
	input wire clock_in, reset;
	reg clockOne, clockTwo, clockThree;
	
	reg[maxCounter_1 : zero] counterTwo;	
	reg[maxCounter_2 : zero] counterOne;
	reg[maxCounter_3 : zero] counterThree;

	always @(posedge clock_in or posedge reset) begin		// GENERATE FREQUENCY OF 250 Khz
		if(reset) begin
			clockOne <= zero;
			counterOne <= zero;
		end
		else if(counterOne < 2) begin
			counterOne <= counterOne + one;
			clockOne <= 1;
		end
		else if(counterOne < 3) begin
			counterOne <= counterOne + one;
			clockOne <= zero;
		end
		else
			counterOne <= zero;
	end

	always @(posedge clock_in or posedge reset) begin   // GENERATE FREQUENCY OF 100 Khz
		if(reset) begin
			clockTwo <= zero;
			counterTwo <= zero;
		end
		else if(counterTwo < 5) begin
			counterTwo <= counterTwo + one;
			clockTwo <= 1;
		end
		else if(counterTwo < 9) begin
			counterTwo <= counterTwo + one;
			clockTwo <= zero;
		end
		else
			counterTwo <= zero;
	end
	always @(posedge clock_in or posedge reset) begin   // GENERATE FREQUENCY OF 50 Khz
		if(reset) begin
			clockThree <= zero;
			counterThree <= zero;
		end
		else if(counterThree < 10) begin
			counterThree <= counterThree + one;
			clockThree <= 1;
		end
		else if(counterThree < 19) begin
			counterThree <= counterThree + one;
			clockThree <= zero;
		end
		else
			counterThree <= zero;
	end
endmodule