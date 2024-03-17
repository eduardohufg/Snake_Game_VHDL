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

-- DATE "03/07/2024 10:07:50"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	CONTMOD525 IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	O : BUFFER std_logic_vector(9 DOWNTO 0)
	);
END CONTMOD525;

-- Design Ports Information
-- O[0]	=>  Location: PIN_W4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[1]	=>  Location: PIN_W3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[4]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[5]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[6]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[7]	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[8]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- O[9]	=>  Location: PIN_AA2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF CONTMOD525 IS
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
SIGNAL ww_O : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \O[0]~output_o\ : std_logic;
SIGNAL \O[1]~output_o\ : std_logic;
SIGNAL \O[2]~output_o\ : std_logic;
SIGNAL \O[3]~output_o\ : std_logic;
SIGNAL \O[4]~output_o\ : std_logic;
SIGNAL \O[5]~output_o\ : std_logic;
SIGNAL \O[6]~output_o\ : std_logic;
SIGNAL \O[7]~output_o\ : std_logic;
SIGNAL \O[8]~output_o\ : std_logic;
SIGNAL \O[9]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \I0|Q[0]~10_combout\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \I0|Q[1]~0_combout\ : std_logic;
SIGNAL \I0|Q[2]~1_combout\ : std_logic;
SIGNAL \I0|Q[3]~2_combout\ : std_logic;
SIGNAL \I0|I0|I3|Cout~combout\ : std_logic;
SIGNAL \I0|Q[4]~3_combout\ : std_logic;
SIGNAL \I0|Q[5]~4_combout\ : std_logic;
SIGNAL \I0|Q[6]~5_combout\ : std_logic;
SIGNAL \I0|I0|I6|Cout~combout\ : std_logic;
SIGNAL \I0|Q[7]~6_combout\ : std_logic;
SIGNAL \I0|Q[8]~7_combout\ : std_logic;
SIGNAL \I0|Q[9]~8_combout\ : std_logic;
SIGNAL \I0|Q[9]~9_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \R~0_combout\ : std_logic;
SIGNAL \I0|Q\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_R~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
O <= ww_O;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_R~0_combout\ <= NOT \R~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y24_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X9_Y0_N30
\O[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(0),
	devoe => ww_devoe,
	o => \O[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\O[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(1),
	devoe => ww_devoe,
	o => \O[1]~output_o\);

-- Location: IOOBUF_X6_Y0_N16
\O[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(2),
	devoe => ww_devoe,
	o => \O[2]~output_o\);

-- Location: IOOBUF_X6_Y0_N30
\O[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(3),
	devoe => ww_devoe,
	o => \O[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\O[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(4),
	devoe => ww_devoe,
	o => \O[4]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\O[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(5),
	devoe => ww_devoe,
	o => \O[5]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\O[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(6),
	devoe => ww_devoe,
	o => \O[6]~output_o\);

-- Location: IOOBUF_X6_Y0_N23
\O[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(7),
	devoe => ww_devoe,
	o => \O[7]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\O[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(8),
	devoe => ww_devoe,
	o => \O[8]~output_o\);

-- Location: IOOBUF_X6_Y0_N2
\O[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \I0|Q\(9),
	devoe => ww_devoe,
	o => \O[9]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
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

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X9_Y1_N0
\I0|Q[0]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[0]~10_combout\ = !\I0|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|Q\(0),
	combout => \I0|Q[0]~10_combout\);

-- Location: IOIBUF_X9_Y0_N15
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

-- Location: LCCOMB_X9_Y1_N2
\I0|Q[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[1]~0_combout\ = \I0|Q\(0) $ (\I0|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(0),
	datac => \I0|Q\(1),
	combout => \I0|Q[1]~0_combout\);

-- Location: FF_X9_Y1_N3
\I0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[1]~0_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(1));

-- Location: LCCOMB_X9_Y1_N12
\I0|Q[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[2]~1_combout\ = \I0|Q\(2) $ (((\I0|Q\(0) & \I0|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(0),
	datab => \I0|Q\(1),
	datac => \I0|Q\(2),
	combout => \I0|Q[2]~1_combout\);

-- Location: FF_X9_Y1_N13
\I0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[2]~1_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(2));

-- Location: LCCOMB_X9_Y1_N22
\I0|Q[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[3]~2_combout\ = \I0|Q\(3) $ (((\I0|Q\(0) & (\I0|Q\(1) & \I0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(0),
	datab => \I0|Q\(1),
	datac => \I0|Q\(3),
	datad => \I0|Q\(2),
	combout => \I0|Q[3]~2_combout\);

-- Location: FF_X9_Y1_N23
\I0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[3]~2_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(3));

-- Location: LCCOMB_X9_Y1_N28
\I0|I0|I3|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|I3|Cout~combout\ = (\I0|Q\(2) & (\I0|Q\(1) & (\I0|Q\(3) & \I0|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(2),
	datab => \I0|Q\(1),
	datac => \I0|Q\(3),
	datad => \I0|Q\(0),
	combout => \I0|I0|I3|Cout~combout\);

-- Location: LCCOMB_X9_Y1_N20
\I0|Q[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[4]~3_combout\ = \I0|Q\(4) $ (\I0|I0|I3|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|Q\(4),
	datad => \I0|I0|I3|Cout~combout\,
	combout => \I0|Q[4]~3_combout\);

-- Location: FF_X9_Y1_N21
\I0|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[4]~3_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(4));

-- Location: LCCOMB_X9_Y1_N30
\I0|Q[5]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[5]~4_combout\ = \I0|Q\(5) $ (((\I0|Q\(4) & \I0|I0|I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(4),
	datac => \I0|Q\(5),
	datad => \I0|I0|I3|Cout~combout\,
	combout => \I0|Q[5]~4_combout\);

-- Location: FF_X9_Y1_N31
\I0|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[5]~4_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(5));

-- Location: LCCOMB_X9_Y1_N16
\I0|Q[6]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[6]~5_combout\ = \I0|Q\(6) $ (((\I0|Q\(5) & (\I0|Q\(4) & \I0|I0|I3|Cout~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(5),
	datab => \I0|Q\(4),
	datac => \I0|Q\(6),
	datad => \I0|I0|I3|Cout~combout\,
	combout => \I0|Q[6]~5_combout\);

-- Location: FF_X9_Y1_N17
\I0|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[6]~5_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(6));

-- Location: LCCOMB_X9_Y1_N10
\I0|I0|I6|Cout\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|I0|I6|Cout~combout\ = (\I0|Q\(4) & (\I0|Q\(6) & (\I0|Q\(5) & \I0|I0|I3|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(4),
	datab => \I0|Q\(6),
	datac => \I0|Q\(5),
	datad => \I0|I0|I3|Cout~combout\,
	combout => \I0|I0|I6|Cout~combout\);

-- Location: LCCOMB_X9_Y1_N26
\I0|Q[7]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[7]~6_combout\ = \I0|Q\(7) $ (\I0|I0|I6|Cout~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I0|Q\(7),
	datad => \I0|I0|I6|Cout~combout\,
	combout => \I0|Q[7]~6_combout\);

-- Location: FF_X9_Y1_N27
\I0|Q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[7]~6_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(7));

-- Location: LCCOMB_X9_Y1_N24
\I0|Q[8]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[8]~7_combout\ = \I0|Q\(8) $ (((\I0|Q\(7) & \I0|I0|I6|Cout~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|Q\(7),
	datac => \I0|Q\(8),
	datad => \I0|I0|I6|Cout~combout\,
	combout => \I0|Q[8]~7_combout\);

-- Location: FF_X9_Y1_N25
\I0|Q[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[8]~7_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(8));

-- Location: LCCOMB_X10_Y1_N4
\I0|Q[9]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[9]~8_combout\ = (((!\I0|Q\(5)) # (!\I0|Q\(8))) # (!\I0|Q\(4))) # (!\I0|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(6),
	datab => \I0|Q\(4),
	datac => \I0|Q\(8),
	datad => \I0|Q\(5),
	combout => \I0|Q[9]~8_combout\);

-- Location: LCCOMB_X9_Y1_N6
\I0|Q[9]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \I0|Q[9]~9_combout\ = \I0|Q\(9) $ (((\I0|Q\(7) & (\I0|I0|I3|Cout~combout\ & !\I0|Q[9]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(7),
	datab => \I0|I0|I3|Cout~combout\,
	datac => \I0|Q\(9),
	datad => \I0|Q[9]~8_combout\,
	combout => \I0|Q[9]~9_combout\);

-- Location: FF_X9_Y1_N7
\I0|Q[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[9]~9_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(9));

-- Location: LCCOMB_X9_Y1_N8
\Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (\I0|Q\(9) & (!\I0|Q\(6) & (!\I0|Q\(7) & !\I0|Q\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(9),
	datab => \I0|Q\(6),
	datac => \I0|Q\(7),
	datad => \I0|Q\(8),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X9_Y1_N4
\Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\I0|Q\(0) & !\I0|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I0|Q\(0),
	datad => \I0|Q\(1),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X9_Y1_N18
\Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\I0|Q\(3) & (!\I0|Q\(4) & (!\I0|Q\(5) & \I0|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I0|Q\(3),
	datab => \I0|Q\(4),
	datac => \I0|Q\(5),
	datad => \I0|Q\(2),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X9_Y1_N14
\R~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \R~0_combout\ = (\RST~input_o\) # ((\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \R~0_combout\);

-- Location: FF_X9_Y1_N1
\I0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \I0|Q[0]~10_combout\,
	clrn => \ALT_INV_R~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \I0|Q\(0));

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_O(0) <= \O[0]~output_o\;

ww_O(1) <= \O[1]~output_o\;

ww_O(2) <= \O[2]~output_o\;

ww_O(3) <= \O[3]~output_o\;

ww_O(4) <= \O[4]~output_o\;

ww_O(5) <= \O[5]~output_o\;

ww_O(6) <= \O[6]~output_o\;

ww_O(7) <= \O[7]~output_o\;

ww_O(8) <= \O[8]~output_o\;

ww_O(9) <= \O[9]~output_o\;
END structure;


