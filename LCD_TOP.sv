`timescale 1ns / 1ps
/**
 * Module: lcd_controller
 * Description: LCD controller with debounced button inputs
 */
module lcd_controller (
    input  logic        clk,              // System clock
    input  logic [7:0]  data_in,          // 8-bit data input from switches
    input  logic        enter_letter,     // Button to enter the current letter
    input  logic        finish_word,      // Button to finish the current word
    input  logic        clear_display,    // Button to clear LCD screen
    input  logic        complete_input,   // Button to signal input completion
    output logic [7:0]  lcd_data,         // Data output to LCD
    output logic        db_enter_letter,  // Debounced enter_letter signal
    output logic        db_finish_word,   // Debounced finish_word signal
    output logic        db_clear_display, // Debounced clear_display signal
    output logic        db_complete_input // Debounced complete_input signal
);

    // Instantiate button debouncers
    dbounce letter_debouncer (
        .clk    (clk),
        .sig_in (enter_letter),
        .db_out (db_enter_letter)
    );
    
    dbounce word_debouncer (
        .clk    (clk),
        .sig_in (finish_word),
        .db_out (db_finish_word)
    );
    
    dbounce clear_debouncer (
        .clk    (clk),
        .sig_in (clear_display),
        .db_out (db_clear_display)
    );
    
    dbounce done_debouncer (
        .clk    (clk),
        .sig_in (complete_input),
        .db_out (db_complete_input)
    );

    // Connect input data directly to LCD data output
    assign lcd_data = data_in;

endmodule : lcd_controller
