-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "02/26/2024 10:40:42"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          CONTADOR24BITS
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY CONTADOR24BITS_vhd_vec_tst IS
END CONTADOR24BITS_vhd_vec_tst;
ARCHITECTURE CONTADOR24BITS_arch OF CONTADOR24BITS_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL O : STD_LOGIC;
SIGNAL RST : STD_LOGIC;
SIGNAL START : STD_LOGIC;
COMPONENT CONTADOR24BITS
	PORT (
	CLK : IN STD_LOGIC;
	O : BUFFER STD_LOGIC;
	RST : IN STD_LOGIC;
	START : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : CONTADOR24BITS
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	O => O,
	RST => RST,
	START => START
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 1 ps;
	CLK <= '1';
	WAIT FOR 1 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '1';
WAIT;
END PROCESS t_prcs_RST;

-- START
t_prcs_START: PROCESS
BEGIN
	START <= '0';
	WAIT FOR 10000 ps;
	START <= '1';
WAIT;
END PROCESS t_prcs_START;
END CONTADOR24BITS_arch;
