`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/19/2021 11:28:54 AM
// Design Name: 
// Module Name: Testing_Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module LCD_TOP(
    input [7:0] sw,
    input sysclk,
    input next_letter, //to enter the letters for the word
    input next_word, //if user is done with their word 
    input clear, //to clear LCD screen
    input done,
    output [7:0] d,
    output debounced_next_letter, debounced_next_word, debounced_clear, debounced_done,
    output [7:0] seg,
    output [3:0] an
);

//Clock does not change one just has to quickly press the button 
//and not have their finger linger
//logic sysclk2;
//ClkDiv2  #(3) ClkDiv2 (.CLK(sysclk), .SCLK(sysclk2));

logic [7:0] sseg_val, sseg_val2;

DBounce DBounce0( .clk (sysclk), .sig_in(next_letter), .DB_out(debounced_next_letter) );
DBounce DBounce1( .clk (sysclk), .sig_in(next_word), .DB_out(debounced_next_word) );
DBounce DBounce2( .clk (sysclk), .sig_in(clear), .DB_out(debounced_clear) );
DBounce DBounce3( .clk (sysclk), .sig_in(done), .DB_out(debounced_done) );

//Counter #(8) Counter0( .CLK(sysclk), .CLR(debounced_clear), .EN(debounced_next_letter), .COUNT(sseg_val) );
//n_bitRegister #(8) number( .CLK(sysclk), .CLR(debounced_clear), .set(0), .D(sseg_val), .enter(debounced_next_letter), .Q(sseg_val2) ); //set is just GND

//univ_sseg univ_sseg1( .clk(sysclk), .cnt1({6'b0,sseg_val2}), .cnt2(0), .dp_en(0), .dp_sel(0), .mod_sel(0), .sign(0), .valid(1), .ssegs(seg), .disp_en(an) );


assign d = sw;

endmodule
