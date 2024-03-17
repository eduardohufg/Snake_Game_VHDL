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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "02/26/2024 10:40:43"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CONTADOR24BITS IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	START : IN std_logic;
	O : BUFFER std_logic
	);
END CONTADOR24BITS;

ARCHITECTURE structure OF CONTADOR24BITS IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_START : std_logic;
SIGNAL ww_O : std_logic;
SIGNAL \O~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \START~input_o\ : std_logic;
SIGNAL \Q[0]~5_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \Q[23]~2_combout\ : std_logic;
SIGNAL \Q[1]~10_combout\ : std_logic;
SIGNAL \Q[2]~9_combout\ : std_logic;
SIGNAL \Q[3]~6_combout\ : std_logic;
SIGNAL \Q[3]~8_combout\ : std_logic;
SIGNAL \Q[4]~7_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Q[5]~14_combout\ : std_logic;
SIGNAL \Q[6]~11_combout\ : std_logic;
SIGNAL \Q[6]~13_combout\ : std_logic;
SIGNAL \Q[7]~12_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Q[8]~4_combout\ : std_logic;
SIGNAL \Q[9]~3_combout\ : std_logic;
SIGNAL \Q[10]~0_combout\ : std_logic;
SIGNAL \Q[10]~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Q[11]~19_combout\ : std_logic;
SIGNAL \Q[12]~18_combout\ : std_logic;
SIGNAL \Q[13]~15_combout\ : std_logic;
SIGNAL \Q[13]~17_combout\ : std_logic;
SIGNAL \Q[14]~16_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Q[15]~27_combout\ : std_logic;
SIGNAL \Q[15]~30_combout\ : std_logic;
SIGNAL \Q[16]~29_combout\ : std_logic;
SIGNAL \Q[17]~28_combout\ : std_logic;
SIGNAL \Q[18]~20_combout\ : std_logic;
SIGNAL \Q[18]~21_combout\ : std_logic;
SIGNAL \Q[18]~26_combout\ : std_logic;
SIGNAL \Q[19]~25_combout\ : std_logic;
SIGNAL \Q[20]~24_combout\ : std_logic;
SIGNAL \Q[21]~22_combout\ : std_logic;
SIGNAL \Q[21]~23_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Q[22]~32_combout\ : std_logic;
SIGNAL \Q[23]~31_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL Q : std_logic_vector(23 DOWNTO 0);
SIGNAL \ALT_INV_Q[23]~2_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_START <= START;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Q[23]~2_combout\ <= NOT \Q[23]~2_combout\;

\O~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~8_combout\,
	devoe => ww_devoe,
	o => \O~output_o\);

\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

\START~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_START,
	o => \START~input_o\);

\Q[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[0]~5_combout\ = Q(0) $ (\START~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(0),
	datad => \START~input_o\,
	combout => \Q[0]~5_combout\);

\RST~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

\Q[23]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[23]~2_combout\ = (\START~input_o\ & !\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \START~input_o\,
	datad => \RST~input_o\,
	combout => \Q[23]~2_combout\);

\Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[0]~5_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(0));

\Q[1]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[1]~10_combout\ = Q(1) $ (((Q(0) & \START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(1),
	datac => Q(0),
	datad => \START~input_o\,
	combout => \Q[1]~10_combout\);

\Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[1]~10_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(1));

\Q[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[2]~9_combout\ = Q(2) $ (((Q(0) & (Q(1) & \START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(2),
	datab => Q(0),
	datac => Q(1),
	datad => \START~input_o\,
	combout => \Q[2]~9_combout\);

\Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[2]~9_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(2));

\Q[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~6_combout\ = (Q(0) & (Q(2) & (Q(1) & \START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => Q(2),
	datac => Q(1),
	datad => \START~input_o\,
	combout => \Q[3]~6_combout\);

\Q[3]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[3]~8_combout\ = Q(3) $ (\Q[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(3),
	datad => \Q[3]~6_combout\,
	combout => \Q[3]~8_combout\);

\Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[3]~8_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(3));

\Q[4]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[4]~7_combout\ = Q(4) $ (((Q(3) & \Q[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(4),
	datac => Q(3),
	datad => \Q[3]~6_combout\,
	combout => \Q[4]~7_combout\);

\Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[4]~7_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(4));

\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (Q(4) & (Q(3) & (Q(2) & Q(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(4),
	datab => Q(3),
	datac => Q(2),
	datad => Q(1),
	combout => \Equal0~1_combout\);

\Q[5]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[5]~14_combout\ = Q(5) $ (((Q(0) & (\Equal0~1_combout\ & \START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(5),
	datab => Q(0),
	datac => \Equal0~1_combout\,
	datad => \START~input_o\,
	combout => \Q[5]~14_combout\);

\Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[5]~14_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(5));

\Q[6]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[6]~11_combout\ = (Q(0) & (\Equal0~1_combout\ & (Q(5) & \START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \Equal0~1_combout\,
	datac => Q(5),
	datad => \START~input_o\,
	combout => \Q[6]~11_combout\);

\Q[6]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[6]~13_combout\ = Q(6) $ (\Q[6]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(6),
	datad => \Q[6]~11_combout\,
	combout => \Q[6]~13_combout\);

\Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[6]~13_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(6));

\Q[7]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[7]~12_combout\ = Q(7) $ (((Q(6) & \Q[6]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(7),
	datac => Q(6),
	datad => \Q[6]~11_combout\,
	combout => \Q[7]~12_combout\);

\Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[7]~12_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(7));

\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (Q(7) & (Q(6) & Q(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(7),
	datab => Q(6),
	datac => Q(5),
	combout => \Equal0~2_combout\);

\Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (Q(0) & (\Equal0~1_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(0),
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

\Q[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[8]~4_combout\ = Q(8) $ (((\Equal0~3_combout\ & \START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(8),
	datac => \Equal0~3_combout\,
	datad => \START~input_o\,
	combout => \Q[8]~4_combout\);

\Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[8]~4_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(8));

\Q[9]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[9]~3_combout\ = Q(9) $ (((Q(8) & (\Equal0~3_combout\ & \START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(9),
	datab => Q(8),
	datac => \Equal0~3_combout\,
	datad => \START~input_o\,
	combout => \Q[9]~3_combout\);

\Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[9]~3_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(9));

\Q[10]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[10]~0_combout\ = (Q(9) & (Q(8) & (\Equal0~3_combout\ & \START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(9),
	datab => Q(8),
	datac => \Equal0~3_combout\,
	datad => \START~input_o\,
	combout => \Q[10]~0_combout\);

\Q[10]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[10]~1_combout\ = Q(10) $ (\Q[10]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(10),
	datad => \Q[10]~0_combout\,
	combout => \Q[10]~1_combout\);

\Q[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[10]~1_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(10));

\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (Q(10) & (Q(9) & Q(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(10),
	datab => Q(9),
	datac => Q(8),
	combout => \Equal0~0_combout\);

\Q[11]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[11]~19_combout\ = Q(11) $ (((Q(10) & \Q[10]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(11),
	datac => Q(10),
	datad => \Q[10]~0_combout\,
	combout => \Q[11]~19_combout\);

\Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[11]~19_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(11));

\Q[12]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[12]~18_combout\ = Q(12) $ (((Q(10) & (Q(11) & \Q[10]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(12),
	datab => Q(10),
	datac => Q(11),
	datad => \Q[10]~0_combout\,
	combout => \Q[12]~18_combout\);

\Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[12]~18_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(12));

\Q[13]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[13]~15_combout\ = (Q(10) & (Q(12) & (Q(11) & \Q[10]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(10),
	datab => Q(12),
	datac => Q(11),
	datad => \Q[10]~0_combout\,
	combout => \Q[13]~15_combout\);

\Q[13]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[13]~17_combout\ = Q(13) $ (\Q[13]~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(13),
	datad => \Q[13]~15_combout\,
	combout => \Q[13]~17_combout\);

\Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[13]~17_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(13));

\Q[14]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[14]~16_combout\ = Q(14) $ (((Q(13) & \Q[13]~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(14),
	datac => Q(13),
	datad => \Q[13]~15_combout\,
	combout => \Q[14]~16_combout\);

\Q[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[14]~16_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(14));

\Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (Q(14) & (Q(13) & (Q(12) & Q(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(14),
	datab => Q(13),
	datac => Q(12),
	datad => Q(11),
	combout => \Equal0~4_combout\);

\Q[15]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[15]~27_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~4_combout\ & \START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \START~input_o\,
	combout => \Q[15]~27_combout\);

\Q[15]~30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[15]~30_combout\ = Q(15) $ (\Q[15]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(15),
	datad => \Q[15]~27_combout\,
	combout => \Q[15]~30_combout\);

\Q[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[15]~30_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(15));

\Q[16]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[16]~29_combout\ = Q(16) $ (((Q(15) & \Q[15]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(16),
	datac => Q(15),
	datad => \Q[15]~27_combout\,
	combout => \Q[16]~29_combout\);

\Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[16]~29_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(16));

\Q[17]~28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[17]~28_combout\ = Q(17) $ (((Q(16) & (Q(15) & \Q[15]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(17),
	datab => Q(16),
	datac => Q(15),
	datad => \Q[15]~27_combout\,
	combout => \Q[17]~28_combout\);

\Q[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[17]~28_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(17));

\Q[18]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[18]~20_combout\ = (Q(17) & (Q(16) & (Q(15) & \START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(17),
	datab => Q(16),
	datac => Q(15),
	datad => \START~input_o\,
	combout => \Q[18]~20_combout\);

\Q[18]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[18]~21_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~4_combout\ & \Q[18]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \Q[18]~20_combout\,
	combout => \Q[18]~21_combout\);

\Q[18]~26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[18]~26_combout\ = Q(18) $ (\Q[18]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(18),
	datad => \Q[18]~21_combout\,
	combout => \Q[18]~26_combout\);

\Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[18]~26_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(18));

\Q[19]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[19]~25_combout\ = Q(19) $ (((Q(18) & \Q[18]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(19),
	datac => Q(18),
	datad => \Q[18]~21_combout\,
	combout => \Q[19]~25_combout\);

\Q[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[19]~25_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(19));

\Q[20]~24\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[20]~24_combout\ = Q(20) $ (((Q(19) & (Q(18) & \Q[18]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(20),
	datab => Q(19),
	datac => Q(18),
	datad => \Q[18]~21_combout\,
	combout => \Q[20]~24_combout\);

\Q[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[20]~24_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(20));

\Q[21]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[21]~22_combout\ = (Q(20) & (Q(19) & (Q(18) & \Q[18]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(20),
	datab => Q(19),
	datac => Q(18),
	datad => \Q[18]~21_combout\,
	combout => \Q[21]~22_combout\);

\Q[21]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[21]~23_combout\ = Q(21) $ (\Q[21]~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => Q(21),
	datad => \Q[21]~22_combout\,
	combout => \Q[21]~23_combout\);

\Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[21]~23_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(21));

\Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (Q(21) & (Q(20) & (Q(19) & Q(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(21),
	datab => Q(20),
	datac => Q(19),
	datad => Q(18),
	combout => \Equal0~5_combout\);

\Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (\Equal0~5_combout\ & (Q(17) & (Q(16) & Q(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => Q(17),
	datac => Q(16),
	datad => Q(15),
	combout => \Equal0~6_combout\);

\Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\Equal0~0_combout\ & (\Equal0~3_combout\ & (\Equal0~4_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~3_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~7_combout\);

\Q[22]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[22]~32_combout\ = Q(22) $ (((\Equal0~7_combout\ & \START~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => Q(22),
	datac => \Equal0~7_combout\,
	datad => \START~input_o\,
	combout => \Q[22]~32_combout\);

\Q[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[22]~32_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(22));

\Q[23]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Q[23]~31_combout\ = Q(23) $ (((\Equal0~7_combout\ & (Q(22) & \START~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => Q(23),
	datab => \Equal0~7_combout\,
	datac => Q(22),
	datad => \START~input_o\,
	combout => \Q[23]~31_combout\);

\Q[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \Q[23]~31_combout\,
	clrn => \ALT_INV_Q[23]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => Q(23));

\Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (Q(23) & Q(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => Q(23),
	datac => Q(22),
	combout => \Equal0~8_combout\);

ww_O <= \O~output_o\;
END structure;


