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
-- Generated on "03/06/2024 12:32:09"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          MESTADOSVSYNC
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY MESTADOSVSYNC_vhd_vec_tst IS
END MESTADOSVSYNC_vhd_vec_tst;
ARCHITECTURE MESTADOSVSYNC_arch OF MESTADOSVSYNC_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL cuenta : STD_LOGIC_VECTOR(9 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL START : STD_LOGIC;
SIGNAL VA : STD_LOGIC;
SIGNAL VSYNC : STD_LOGIC;
COMPONENT MESTADOSVSYNC
	PORT (
	CLK : IN STD_LOGIC;
	cuenta : IN STD_LOGIC_VECTOR(9 DOWNTO 0);
	RST : IN STD_LOGIC;
	START : IN STD_LOGIC;
	VA : BUFFER STD_LOGIC;
	VSYNC : BUFFER STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : MESTADOSVSYNC
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	cuenta => cuenta,
	RST => RST,
	START => START,
	VA => VA,
	VSYNC => VSYNC
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 5000 ps;
	CLK <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- cuenta[9]
t_prcs_cuenta_9: PROCESS
BEGIN
	cuenta(9) <= '0';
WAIT;
END PROCESS t_prcs_cuenta_9;
-- cuenta[8]
t_prcs_cuenta_8: PROCESS
BEGIN
	cuenta(8) <= '0';
WAIT;
END PROCESS t_prcs_cuenta_8;
-- cuenta[7]
t_prcs_cuenta_7: PROCESS
BEGIN
	cuenta(7) <= '0';
WAIT;
END PROCESS t_prcs_cuenta_7;
-- cuenta[6]
t_prcs_cuenta_6: PROCESS
BEGIN
	cuenta(6) <= '0';
	WAIT FOR 640000 ps;
	cuenta(6) <= '1';
WAIT;
END PROCESS t_prcs_cuenta_6;
-- cuenta[5]
t_prcs_cuenta_5: PROCESS
BEGIN
	cuenta(5) <= '0';
	WAIT FOR 320000 ps;
	cuenta(5) <= '1';
	WAIT FOR 320000 ps;
	cuenta(5) <= '0';
	WAIT FOR 320000 ps;
	cuenta(5) <= '1';
WAIT;
END PROCESS t_prcs_cuenta_5;
-- cuenta[4]
t_prcs_cuenta_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		cuenta(4) <= '0';
		WAIT FOR 160000 ps;
		cuenta(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	cuenta(4) <= '0';
WAIT;
END PROCESS t_prcs_cuenta_4;
-- cuenta[3]
t_prcs_cuenta_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		cuenta(3) <= '0';
		WAIT FOR 80000 ps;
		cuenta(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	cuenta(3) <= '0';
WAIT;
END PROCESS t_prcs_cuenta_3;
-- cuenta[2]
t_prcs_cuenta_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		cuenta(2) <= '0';
		WAIT FOR 40000 ps;
		cuenta(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	cuenta(2) <= '0';
WAIT;
END PROCESS t_prcs_cuenta_2;
-- cuenta[1]
t_prcs_cuenta_1: PROCESS
BEGIN
LOOP
	cuenta(1) <= '0';
	WAIT FOR 20000 ps;
	cuenta(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_cuenta_1;
-- cuenta[0]
t_prcs_cuenta_0: PROCESS
BEGIN
LOOP
	cuenta(0) <= '0';
	WAIT FOR 10000 ps;
	cuenta(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_cuenta_0;

-- RST
t_prcs_RST: PROCESS
BEGIN
	RST <= '0';
WAIT;
END PROCESS t_prcs_RST;

-- START
t_prcs_START: PROCESS
BEGIN
	START <= '1';
WAIT;
END PROCESS t_prcs_START;
END MESTADOSVSYNC_arch;
