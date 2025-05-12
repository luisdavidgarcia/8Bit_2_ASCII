## This file is a general .xdc for the Basys3 rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project

## Clock signal
set_property PACKAGE_PIN W5 [get_ports {sysclk}]							
	set_property IOSTANDARD LVCMOS33 [get_ports {sysclk}]
	create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {sysclk}]
 
## Switches
set_property PACKAGE_PIN V17 [get_ports {data_in[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_in[0]}]
set_property PACKAGE_PIN V16 [get_ports {data_in[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_in[1]}]
set_property PACKAGE_PIN W16 [get_ports {data_in[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_in[2]}]
set_property PACKAGE_PIN W17 [get_ports {data_in[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_in[3]}]
set_property PACKAGE_PIN W15 [get_ports {data_in[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_in[4]}]
set_property PACKAGE_PIN V15 [get_ports {data_in[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_in[5]}]
set_property PACKAGE_PIN W14 [get_ports {data_in[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_in[6]}]
set_property PACKAGE_PIN W13 [get_ports {data_in[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {data_in[7]}]
 	
##Buttons
set_property PACKAGE_PIN U18 [get_ports {clear_display}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {clear_display}]
set_property PACKAGE_PIN T18 [get_ports {finish_word}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {finish_word}]
set_property PACKAGE_PIN W19 [get_ports {complete_input}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {complete_input}]
set_property PACKAGE_PIN T17 [get_ports {enter_letter}]						
	set_property IOSTANDARD LVCMOS33 [get_ports {enter_letter}]
 
##Pmod Header JA
##Sch name = JA1
set_property PACKAGE_PIN J1 [get_ports {lcd_data[0]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[0]}]
##Sch name = JA2
set_property PACKAGE_PIN L2 [get_ports {lcd_data[1]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[1]}]
##Sch name = JA3
set_property PACKAGE_PIN J2 [get_ports {lcd_data[2]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[2]}]
#Sch name = JA4
set_property PACKAGE_PIN G2 [get_ports {lcd_data[3]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[3]}]
#Sch name = JA7
set_property PACKAGE_PIN H1 [get_ports {lcd_data[4]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[4]}]
#Sch name = JA8
set_property PACKAGE_PIN K2 [get_ports {lcd_data[5]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[5]}]
#Sch name = JA9
set_property PACKAGE_PIN H2 [get_ports {lcd_data[6]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[6]}]
#Sch name = JA10
set_property PACKAGE_PIN G3 [get_ports {lcd_data[7]}]					
	set_property IOSTANDARD LVCMOS33 [get_ports {lcd_data[7]}]

##Pmod Header JXADC
#Sch name = XA1_P
set_property PACKAGE_PIN J3 [get_ports {db_clear_display}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {db_clear_display}]
#Sch name = XA2_P
set_property PACKAGE_PIN L3 [get_ports {db_finish_word}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {db_finish_word}]
#Sch name = XA3_P
set_property PACKAGE_PIN M2 [get_ports {db_enter_letter}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {db_enter_letter}]
##Sch name = XA4_P
set_property PACKAGE_PIN N2 [get_ports {db_complete_input}]				
	set_property IOSTANDARD LVCMOS33 [get_ports {db_complete_input}]
