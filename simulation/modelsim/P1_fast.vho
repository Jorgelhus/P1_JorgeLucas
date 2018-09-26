-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/19/2018 18:20:53"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	p1 IS
    PORT (
	clock : IN std_logic;
	controle : IN std_logic;
	disp2 : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	disp1 : OUT STD.STANDARD.bit_vector(6 DOWNTO 0);
	disp0 : OUT STD.STANDARD.bit_vector(6 DOWNTO 0)
	);
END p1;

-- Design Ports Information
-- disp2[0]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[2]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[3]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[4]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[5]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp2[6]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[0]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[1]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[2]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[3]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[4]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[5]	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp1[6]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[0]	=>  Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[1]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[2]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[4]	=>  Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[5]	=>  Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- disp0[6]	=>  Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- controle	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF p1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_controle : std_logic;
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp0 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xgerador_pwm|aux1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xgerador_pwm|aux2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xgerador_pwm|aux2~regout\ : std_logic;
SIGNAL \xgerador_pwm|aux1~regout\ : std_logic;
SIGNAL \xgerador_pwm|pwm:contador[3]~regout\ : std_logic;
SIGNAL \xgerador_pwm|pwm:contador[1]~regout\ : std_logic;
SIGNAL \xgerador_pwm|pwm:contador[2]~regout\ : std_logic;
SIGNAL \xgerador_pwm|pwm:contador[0]~regout\ : std_logic;
SIGNAL \xgerador_pwm|aux2~0_combout\ : std_logic;
SIGNAL \xgerador_pwm|LessThan0~0_combout\ : std_logic;
SIGNAL \xgerador_pwm|aux2~1_combout\ : std_logic;
SIGNAL \xgerador_pwm|aux1~0_combout\ : std_logic;
SIGNAL \xgerador_pwm|aux1~1_combout\ : std_logic;
SIGNAL \xgerador_pwm|contador~0_combout\ : std_logic;
SIGNAL \xgerador_pwm|contador~1_combout\ : std_logic;
SIGNAL \xgerador_pwm|contador~2_combout\ : std_logic;
SIGNAL \xgerador_pwm|contador~3_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \clock~clkctrl_outclk\ : std_logic;
SIGNAL \xgerador_pwm|aux1~clkctrl_outclk\ : std_logic;
SIGNAL \xgerador_pwm|aux2~clkctrl_outclk\ : std_logic;
SIGNAL \xgerador_clock|clock1:contador1[0]~0_combout\ : std_logic;
SIGNAL \xgerador_clock|clock1:contador1[0]~regout\ : std_logic;
SIGNAL \xgerador_clock|contador1~0_combout\ : std_logic;
SIGNAL \xgerador_clock|clock1:contador1[1]~regout\ : std_logic;
SIGNAL \xgerador_clock|blink~0_combout\ : std_logic;
SIGNAL \xgerador_clock|blink~regout\ : std_logic;
SIGNAL \controle~combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux2~0_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux2~1_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux1~0_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux1~1_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux3~1_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux3~0_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux3~2_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux0~0_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux0~1_combout\ : std_logic;
SIGNAL \xconv_7seg0|Mux6~0_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux4~0_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux4~1_combout\ : std_logic;
SIGNAL \xmaquina_estado|Mux4~2_combout\ : std_logic;
SIGNAL \xmaquina_estado|tipo_aux~regout\ : std_logic;
SIGNAL \xcont_display|tipo2~regout\ : std_logic;
SIGNAL \xconv_7seg0|display[0]~0_combout\ : std_logic;
SIGNAL \xconv_7seg0|Mux5~0_combout\ : std_logic;
SIGNAL \xconv_7seg0|display[1]~1_combout\ : std_logic;
SIGNAL \xconv_7seg0|Mux4~0_combout\ : std_logic;
SIGNAL \xconv_7seg0|display[2]~2_combout\ : std_logic;
SIGNAL \xconv_7seg0|Mux3~0_combout\ : std_logic;
SIGNAL \xconv_7seg0|display[3]~3_combout\ : std_logic;
SIGNAL \xconv_7seg0|Mux2~0_combout\ : std_logic;
SIGNAL \xconv_7seg0|display[4]~4_combout\ : std_logic;
SIGNAL \xconv_7seg0|Mux1~0_combout\ : std_logic;
SIGNAL \xconv_7seg0|display[5]~5_combout\ : std_logic;
SIGNAL \xconv_7seg0|Mux0~0_combout\ : std_logic;
SIGNAL \xconv_7seg0|display[6]~6_combout\ : std_logic;
SIGNAL \xconv_7seg1|Mux6~0_combout\ : std_logic;
SIGNAL \xcont_display|tipo1~regout\ : std_logic;
SIGNAL \xconv_7seg1|display[0]~0_combout\ : std_logic;
SIGNAL \xconv_7seg1|Mux5~0_combout\ : std_logic;
SIGNAL \xconv_7seg1|display[1]~1_combout\ : std_logic;
SIGNAL \xconv_7seg1|Mux4~0_combout\ : std_logic;
SIGNAL \xconv_7seg1|display[2]~2_combout\ : std_logic;
SIGNAL \xconv_7seg1|Mux3~0_combout\ : std_logic;
SIGNAL \xconv_7seg1|display[3]~3_combout\ : std_logic;
SIGNAL \xconv_7seg1|Mux2~0_combout\ : std_logic;
SIGNAL \xconv_7seg1|display[4]~4_combout\ : std_logic;
SIGNAL \xconv_7seg1|Mux1~0_combout\ : std_logic;
SIGNAL \xconv_7seg1|display[5]~5_combout\ : std_logic;
SIGNAL \xconv_7seg1|Mux0~0_combout\ : std_logic;
SIGNAL \xconv_7seg1|display[6]~6_combout\ : std_logic;
SIGNAL \xconv_7seg2|Mux6~0_combout\ : std_logic;
SIGNAL \xcont_display|tipo0~regout\ : std_logic;
SIGNAL \xconv_7seg2|display[0]~0_combout\ : std_logic;
SIGNAL \xconv_7seg2|Mux5~0_combout\ : std_logic;
SIGNAL \xconv_7seg2|display[1]~1_combout\ : std_logic;
SIGNAL \xconv_7seg2|Mux4~0_combout\ : std_logic;
SIGNAL \xconv_7seg2|display[2]~2_combout\ : std_logic;
SIGNAL \xconv_7seg2|Mux3~0_combout\ : std_logic;
SIGNAL \xconv_7seg2|display[3]~3_combout\ : std_logic;
SIGNAL \xconv_7seg2|Mux2~0_combout\ : std_logic;
SIGNAL \xconv_7seg2|display[4]~4_combout\ : std_logic;
SIGNAL \xconv_7seg2|Mux1~0_combout\ : std_logic;
SIGNAL \xconv_7seg2|display[5]~5_combout\ : std_logic;
SIGNAL \xconv_7seg2|Mux0~0_combout\ : std_logic;
SIGNAL \xconv_7seg2|display[6]~6_combout\ : std_logic;
SIGNAL \xmaquina_estado|est_aux\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xcont_display|aux2\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xcont_display|aux1\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \xcont_display|aux0\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_clock~clkctrl_outclk\ : std_logic;

BEGIN

ww_clock <= clock;
ww_controle <= controle;
disp2 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_disp2);
disp1 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_disp1);
disp0 <= IEEE.STD_LOGIC_1164.TO_BITVECTOR(ww_disp0);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clock~combout\);

\xgerador_pwm|aux1~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \xgerador_pwm|aux1~regout\);

\xgerador_pwm|aux2~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \xgerador_pwm|aux2~regout\);
\ALT_INV_clock~clkctrl_outclk\ <= NOT \clock~clkctrl_outclk\;

-- Location: LCFF_X23_Y35_N13
\xcont_display|aux0[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|aux1\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux0\(0));

-- Location: LCFF_X34_Y1_N13
\xgerador_pwm|aux2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_pwm|aux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_pwm|aux2~regout\);

-- Location: LCFF_X34_Y1_N17
\xgerador_pwm|aux1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_pwm|aux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_pwm|aux1~regout\);

-- Location: LCFF_X34_Y1_N21
\xgerador_pwm|pwm:contador[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_pwm|contador~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_pwm|pwm:contador[3]~regout\);

-- Location: LCFF_X34_Y1_N25
\xgerador_pwm|pwm:contador[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_pwm|contador~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_pwm|pwm:contador[1]~regout\);

-- Location: LCFF_X34_Y1_N29
\xgerador_pwm|pwm:contador[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_pwm|contador~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_pwm|pwm:contador[2]~regout\);

-- Location: LCFF_X34_Y1_N11
\xgerador_pwm|pwm:contador[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_pwm|contador~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_pwm|pwm:contador[0]~regout\);

-- Location: LCCOMB_X34_Y1_N18
\xgerador_pwm|aux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|aux2~0_combout\ = (\xgerador_pwm|pwm:contador[1]~regout\) # (((\xgerador_pwm|pwm:contador[3]~regout\) # (!\xgerador_pwm|pwm:contador[0]~regout\)) # (!\xgerador_pwm|pwm:contador[2]~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_pwm|pwm:contador[1]~regout\,
	datab => \xgerador_pwm|pwm:contador[2]~regout\,
	datac => \xgerador_pwm|pwm:contador[3]~regout\,
	datad => \xgerador_pwm|pwm:contador[0]~regout\,
	combout => \xgerador_pwm|aux2~0_combout\);

-- Location: LCCOMB_X34_Y1_N22
\xgerador_pwm|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|LessThan0~0_combout\ = ((!\xgerador_pwm|pwm:contador[2]~regout\ & ((!\xgerador_pwm|pwm:contador[0]~regout\) # (!\xgerador_pwm|pwm:contador[1]~regout\)))) # (!\xgerador_pwm|pwm:contador[3]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_pwm|pwm:contador[1]~regout\,
	datab => \xgerador_pwm|pwm:contador[2]~regout\,
	datac => \xgerador_pwm|pwm:contador[3]~regout\,
	datad => \xgerador_pwm|pwm:contador[0]~regout\,
	combout => \xgerador_pwm|LessThan0~0_combout\);

-- Location: LCCOMB_X34_Y1_N12
\xgerador_pwm|aux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|aux2~1_combout\ = (\xgerador_pwm|LessThan0~0_combout\ & ((\xgerador_pwm|aux2~regout\) # (!\xgerador_pwm|aux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_pwm|aux2~0_combout\,
	datac => \xgerador_pwm|aux2~regout\,
	datad => \xgerador_pwm|LessThan0~0_combout\,
	combout => \xgerador_pwm|aux2~1_combout\);

-- Location: LCCOMB_X34_Y1_N26
\xgerador_pwm|aux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|aux1~0_combout\ = (\xgerador_pwm|pwm:contador[3]~regout\) # ((\xgerador_pwm|pwm:contador[2]~regout\) # ((\xgerador_pwm|pwm:contador[0]~regout\) # (!\xgerador_pwm|pwm:contador[1]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_pwm|pwm:contador[3]~regout\,
	datab => \xgerador_pwm|pwm:contador[2]~regout\,
	datac => \xgerador_pwm|pwm:contador[1]~regout\,
	datad => \xgerador_pwm|pwm:contador[0]~regout\,
	combout => \xgerador_pwm|aux1~0_combout\);

-- Location: LCCOMB_X34_Y1_N16
\xgerador_pwm|aux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|aux1~1_combout\ = (\xgerador_pwm|LessThan0~0_combout\ & ((\xgerador_pwm|aux1~regout\) # (!\xgerador_pwm|aux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_pwm|aux1~0_combout\,
	datac => \xgerador_pwm|aux1~regout\,
	datad => \xgerador_pwm|LessThan0~0_combout\,
	combout => \xgerador_pwm|aux1~1_combout\);

-- Location: LCCOMB_X34_Y1_N20
\xgerador_pwm|contador~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|contador~0_combout\ = (\xgerador_pwm|pwm:contador[2]~regout\ & (\xgerador_pwm|pwm:contador[0]~regout\ & (!\xgerador_pwm|pwm:contador[3]~regout\ & \xgerador_pwm|pwm:contador[1]~regout\))) # (!\xgerador_pwm|pwm:contador[2]~regout\ & 
-- (\xgerador_pwm|pwm:contador[3]~regout\ & ((!\xgerador_pwm|pwm:contador[1]~regout\) # (!\xgerador_pwm|pwm:contador[0]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_pwm|pwm:contador[2]~regout\,
	datab => \xgerador_pwm|pwm:contador[0]~regout\,
	datac => \xgerador_pwm|pwm:contador[3]~regout\,
	datad => \xgerador_pwm|pwm:contador[1]~regout\,
	combout => \xgerador_pwm|contador~0_combout\);

-- Location: LCCOMB_X34_Y1_N24
\xgerador_pwm|contador~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|contador~1_combout\ = (\xgerador_pwm|pwm:contador[2]~regout\ & (!\xgerador_pwm|pwm:contador[3]~regout\ & (\xgerador_pwm|pwm:contador[0]~regout\ $ (\xgerador_pwm|pwm:contador[1]~regout\)))) # (!\xgerador_pwm|pwm:contador[2]~regout\ & 
-- (\xgerador_pwm|pwm:contador[0]~regout\ $ ((\xgerador_pwm|pwm:contador[1]~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_pwm|pwm:contador[2]~regout\,
	datab => \xgerador_pwm|pwm:contador[0]~regout\,
	datac => \xgerador_pwm|pwm:contador[1]~regout\,
	datad => \xgerador_pwm|pwm:contador[3]~regout\,
	combout => \xgerador_pwm|contador~1_combout\);

-- Location: LCCOMB_X34_Y1_N28
\xgerador_pwm|contador~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|contador~2_combout\ = (!\xgerador_pwm|pwm:contador[3]~regout\ & (\xgerador_pwm|pwm:contador[2]~regout\ $ (((\xgerador_pwm|pwm:contador[1]~regout\ & \xgerador_pwm|pwm:contador[0]~regout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_pwm|pwm:contador[1]~regout\,
	datab => \xgerador_pwm|pwm:contador[0]~regout\,
	datac => \xgerador_pwm|pwm:contador[2]~regout\,
	datad => \xgerador_pwm|pwm:contador[3]~regout\,
	combout => \xgerador_pwm|contador~2_combout\);

-- Location: LCCOMB_X34_Y1_N10
\xgerador_pwm|contador~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_pwm|contador~3_combout\ = (!\xgerador_pwm|pwm:contador[0]~regout\ & ((!\xgerador_pwm|pwm:contador[3]~regout\) # (!\xgerador_pwm|pwm:contador[2]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_pwm|pwm:contador[2]~regout\,
	datac => \xgerador_pwm|pwm:contador[0]~regout\,
	datad => \xgerador_pwm|pwm:contador[3]~regout\,
	combout => \xgerador_pwm|contador~3_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: CLKCTRL_G3
\clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~clkctrl_outclk\);

-- Location: CLKCTRL_G14
\xgerador_pwm|aux1~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \xgerador_pwm|aux1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \xgerador_pwm|aux1~clkctrl_outclk\);

-- Location: CLKCTRL_G15
\xgerador_pwm|aux2~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \xgerador_pwm|aux2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \xgerador_pwm|aux2~clkctrl_outclk\);

-- Location: LCCOMB_X20_Y35_N12
\xgerador_clock|clock1:contador1[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_clock|clock1:contador1[0]~0_combout\ = !\xgerador_clock|clock1:contador1[0]~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xgerador_clock|clock1:contador1[0]~regout\,
	combout => \xgerador_clock|clock1:contador1[0]~0_combout\);

-- Location: LCFF_X20_Y35_N13
\xgerador_clock|clock1:contador1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_clock|clock1:contador1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_clock|clock1:contador1[0]~regout\);

-- Location: LCCOMB_X20_Y35_N22
\xgerador_clock|contador1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_clock|contador1~0_combout\ = \xgerador_clock|clock1:contador1[1]~regout\ $ (\xgerador_clock|clock1:contador1[0]~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \xgerador_clock|clock1:contador1[1]~regout\,
	datad => \xgerador_clock|clock1:contador1[0]~regout\,
	combout => \xgerador_clock|contador1~0_combout\);

-- Location: LCFF_X20_Y35_N23
\xgerador_clock|clock1:contador1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_clock|contador1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_clock|clock1:contador1[1]~regout\);

-- Location: LCCOMB_X20_Y35_N24
\xgerador_clock|blink~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xgerador_clock|blink~0_combout\ = \xgerador_clock|blink~regout\ $ (((\xgerador_clock|clock1:contador1[1]~regout\ & \xgerador_clock|clock1:contador1[0]~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_clock|clock1:contador1[1]~regout\,
	datac => \xgerador_clock|blink~regout\,
	datad => \xgerador_clock|clock1:contador1[0]~regout\,
	combout => \xgerador_clock|blink~0_combout\);

-- Location: LCFF_X20_Y35_N25
\xgerador_clock|blink\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~clkctrl_outclk\,
	datain => \xgerador_clock|blink~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xgerador_clock|blink~regout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\controle~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_controle,
	combout => \controle~combout\);

-- Location: LCCOMB_X23_Y35_N2
\xmaquina_estado|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux2~0_combout\ = (\controle~combout\ & (!\xmaquina_estado|est_aux\(0) & !\xmaquina_estado|est_aux\(3))) # (!\controle~combout\ & ((\xmaquina_estado|est_aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xmaquina_estado|est_aux\(0),
	datac => \controle~combout\,
	datad => \xmaquina_estado|est_aux\(3),
	combout => \xmaquina_estado|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y35_N24
\xmaquina_estado|Mux2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux2~1_combout\ = (\xmaquina_estado|est_aux\(0) & (!\xmaquina_estado|est_aux\(1) & ((\xmaquina_estado|est_aux\(2)) # (!\xmaquina_estado|Mux2~0_combout\)))) # (!\xmaquina_estado|est_aux\(0) & (\xmaquina_estado|est_aux\(2) $ 
-- (((!\xmaquina_estado|Mux2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xmaquina_estado|est_aux\(2),
	datab => \xmaquina_estado|est_aux\(0),
	datac => \xmaquina_estado|est_aux\(1),
	datad => \xmaquina_estado|Mux2~0_combout\,
	combout => \xmaquina_estado|Mux2~1_combout\);

-- Location: LCFF_X23_Y35_N25
\xmaquina_estado|est_aux[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux1~clkctrl_outclk\,
	datain => \xmaquina_estado|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xmaquina_estado|est_aux\(1));

-- Location: LCCOMB_X23_Y35_N28
\xmaquina_estado|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux1~0_combout\ = (\controle~combout\ & (\xmaquina_estado|est_aux\(1) & !\xmaquina_estado|est_aux\(3))) # (!\controle~combout\ & ((\xmaquina_estado|est_aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle~combout\,
	datac => \xmaquina_estado|est_aux\(1),
	datad => \xmaquina_estado|est_aux\(3),
	combout => \xmaquina_estado|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y35_N14
\xmaquina_estado|Mux1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux1~1_combout\ = (\xmaquina_estado|est_aux\(1) & ((\xmaquina_estado|est_aux\(0) & (!\xmaquina_estado|est_aux\(2))) # (!\xmaquina_estado|est_aux\(0) & ((\xmaquina_estado|Mux1~0_combout\))))) # (!\xmaquina_estado|est_aux\(1) & 
-- ((\xmaquina_estado|est_aux\(2)) # ((\xmaquina_estado|est_aux\(0) & \xmaquina_estado|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xmaquina_estado|est_aux\(1),
	datab => \xmaquina_estado|est_aux\(0),
	datac => \xmaquina_estado|est_aux\(2),
	datad => \xmaquina_estado|Mux1~0_combout\,
	combout => \xmaquina_estado|Mux1~1_combout\);

-- Location: LCFF_X23_Y35_N15
\xmaquina_estado|est_aux[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux1~clkctrl_outclk\,
	datain => \xmaquina_estado|Mux1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xmaquina_estado|est_aux\(2));

-- Location: LCCOMB_X23_Y35_N22
\xmaquina_estado|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux3~1_combout\ = (\controle~combout\ & ((\xmaquina_estado|est_aux\(2) & (\xmaquina_estado|est_aux\(1) & \xmaquina_estado|est_aux\(3))) # (!\xmaquina_estado|est_aux\(2) & (\xmaquina_estado|est_aux\(1) $ (\xmaquina_estado|est_aux\(3)))))) 
-- # (!\controle~combout\ & (!\xmaquina_estado|est_aux\(2) & (\xmaquina_estado|est_aux\(1) & \xmaquina_estado|est_aux\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle~combout\,
	datab => \xmaquina_estado|est_aux\(2),
	datac => \xmaquina_estado|est_aux\(1),
	datad => \xmaquina_estado|est_aux\(3),
	combout => \xmaquina_estado|Mux3~1_combout\);

-- Location: LCCOMB_X23_Y35_N10
\xmaquina_estado|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux3~0_combout\ = (\controle~combout\ & ((\xmaquina_estado|est_aux\(1) & ((\xmaquina_estado|est_aux\(2)) # (!\xmaquina_estado|est_aux\(3)))) # (!\xmaquina_estado|est_aux\(1) & ((\xmaquina_estado|est_aux\(3)) # 
-- (!\xmaquina_estado|est_aux\(2)))))) # (!\controle~combout\ & (\xmaquina_estado|est_aux\(3) $ (((!\xmaquina_estado|est_aux\(1) & \xmaquina_estado|est_aux\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011110011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xmaquina_estado|est_aux\(1),
	datab => \controle~combout\,
	datac => \xmaquina_estado|est_aux\(2),
	datad => \xmaquina_estado|est_aux\(3),
	combout => \xmaquina_estado|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y35_N18
\xmaquina_estado|Mux3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux3~2_combout\ = (\xmaquina_estado|est_aux\(0) & ((!\xmaquina_estado|Mux3~0_combout\))) # (!\xmaquina_estado|est_aux\(0) & (!\xmaquina_estado|Mux3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xmaquina_estado|Mux3~1_combout\,
	datac => \xmaquina_estado|est_aux\(0),
	datad => \xmaquina_estado|Mux3~0_combout\,
	combout => \xmaquina_estado|Mux3~2_combout\);

-- Location: LCFF_X23_Y35_N19
\xmaquina_estado|est_aux[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux1~clkctrl_outclk\,
	datain => \xmaquina_estado|Mux3~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xmaquina_estado|est_aux\(0));

-- Location: LCCOMB_X23_Y35_N12
\xmaquina_estado|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux0~0_combout\ = (\xmaquina_estado|est_aux\(2) & \xmaquina_estado|est_aux\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xmaquina_estado|est_aux\(2),
	datad => \xmaquina_estado|est_aux\(1),
	combout => \xmaquina_estado|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y35_N0
\xmaquina_estado|Mux0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux0~1_combout\ = (\xmaquina_estado|Mux0~0_combout\ & ((\xmaquina_estado|est_aux\(0) & ((!\xmaquina_estado|est_aux\(3)))) # (!\xmaquina_estado|est_aux\(0) & (!\controle~combout\)))) # (!\xmaquina_estado|Mux0~0_combout\ & 
-- (((\xmaquina_estado|est_aux\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle~combout\,
	datab => \xmaquina_estado|est_aux\(0),
	datac => \xmaquina_estado|est_aux\(3),
	datad => \xmaquina_estado|Mux0~0_combout\,
	combout => \xmaquina_estado|Mux0~1_combout\);

-- Location: LCFF_X23_Y35_N1
\xmaquina_estado|est_aux[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux1~clkctrl_outclk\,
	datain => \xmaquina_estado|Mux0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xmaquina_estado|est_aux\(3));

-- Location: LCFF_X22_Y35_N21
\xcont_display|aux2[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xmaquina_estado|est_aux\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux2\(3));

-- Location: LCFF_X23_Y35_N11
\xcont_display|aux2[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xmaquina_estado|est_aux\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux2\(2));

-- Location: LCFF_X23_Y35_N21
\xcont_display|aux2[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xmaquina_estado|est_aux\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux2\(0));

-- Location: LCCOMB_X22_Y35_N30
\xconv_7seg0|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|Mux6~0_combout\ = (\xcont_display|aux2\(3) & (\xcont_display|aux2\(0) & (\xcont_display|aux2\(1) $ (\xcont_display|aux2\(2))))) # (!\xcont_display|aux2\(3) & (!\xcont_display|aux2\(1) & (\xcont_display|aux2\(2) $ (\xcont_display|aux2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux2\(1),
	datab => \xcont_display|aux2\(3),
	datac => \xcont_display|aux2\(2),
	datad => \xcont_display|aux2\(0),
	combout => \xconv_7seg0|Mux6~0_combout\);

-- Location: LCCOMB_X23_Y35_N16
\xmaquina_estado|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux4~0_combout\ = (\controle~combout\ & ((\xmaquina_estado|est_aux\(1) & ((!\xmaquina_estado|est_aux\(2)))) # (!\xmaquina_estado|est_aux\(1) & (!\xmaquina_estado|est_aux\(0) & \xmaquina_estado|est_aux\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle~combout\,
	datab => \xmaquina_estado|est_aux\(0),
	datac => \xmaquina_estado|est_aux\(1),
	datad => \xmaquina_estado|est_aux\(2),
	combout => \xmaquina_estado|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y35_N6
\xmaquina_estado|Mux4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux4~1_combout\ = (\controle~combout\ & ((\xmaquina_estado|est_aux\(0) & ((\xmaquina_estado|est_aux\(1)))) # (!\xmaquina_estado|est_aux\(0) & (!\xmaquina_estado|est_aux\(2))))) # (!\controle~combout\ & (\xmaquina_estado|est_aux\(2) & 
-- ((\xmaquina_estado|est_aux\(1)) # (\xmaquina_estado|est_aux\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \controle~combout\,
	datab => \xmaquina_estado|est_aux\(2),
	datac => \xmaquina_estado|est_aux\(1),
	datad => \xmaquina_estado|est_aux\(0),
	combout => \xmaquina_estado|Mux4~1_combout\);

-- Location: LCCOMB_X23_Y35_N26
\xmaquina_estado|Mux4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \xmaquina_estado|Mux4~2_combout\ = (\xmaquina_estado|est_aux\(3) & (\xmaquina_estado|Mux4~0_combout\)) # (!\xmaquina_estado|est_aux\(3) & ((!\xmaquina_estado|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xmaquina_estado|est_aux\(3),
	datac => \xmaquina_estado|Mux4~0_combout\,
	datad => \xmaquina_estado|Mux4~1_combout\,
	combout => \xmaquina_estado|Mux4~2_combout\);

-- Location: LCFF_X23_Y35_N27
\xmaquina_estado|tipo_aux\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux1~clkctrl_outclk\,
	datain => \xmaquina_estado|Mux4~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xmaquina_estado|tipo_aux~regout\);

-- Location: LCFF_X22_Y35_N5
\xcont_display|tipo2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xmaquina_estado|tipo_aux~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|tipo2~regout\);

-- Location: LCCOMB_X22_Y35_N28
\xconv_7seg0|display[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|display[0]~0_combout\ = ((\xconv_7seg0|Mux6~0_combout\) # (!\xcont_display|tipo2~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datab => \xconv_7seg0|Mux6~0_combout\,
	datad => \xcont_display|tipo2~regout\,
	combout => \xconv_7seg0|display[0]~0_combout\);

-- Location: LCFF_X23_Y35_N23
\xcont_display|aux2[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xmaquina_estado|est_aux\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux2\(1));

-- Location: LCCOMB_X22_Y35_N18
\xconv_7seg0|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|Mux5~0_combout\ = (\xcont_display|aux2\(1) & ((\xcont_display|aux2\(0) & ((\xcont_display|aux2\(3)))) # (!\xcont_display|aux2\(0) & (\xcont_display|aux2\(2))))) # (!\xcont_display|aux2\(1) & (\xcont_display|aux2\(2) & (\xcont_display|aux2\(0) 
-- $ (\xcont_display|aux2\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux2\(2),
	datab => \xcont_display|aux2\(0),
	datac => \xcont_display|aux2\(1),
	datad => \xcont_display|aux2\(3),
	combout => \xconv_7seg0|Mux5~0_combout\);

-- Location: LCCOMB_X22_Y35_N22
\xconv_7seg0|display[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|display[1]~1_combout\ = ((\xconv_7seg0|Mux5~0_combout\) # (!\xcont_display|tipo2~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datab => \xconv_7seg0|Mux5~0_combout\,
	datad => \xcont_display|tipo2~regout\,
	combout => \xconv_7seg0|display[1]~1_combout\);

-- Location: LCCOMB_X23_Y35_N8
\xconv_7seg0|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|Mux4~0_combout\ = (\xcont_display|aux2\(3) & (\xcont_display|aux2\(2) & ((\xcont_display|aux2\(1)) # (!\xcont_display|aux2\(0))))) # (!\xcont_display|aux2\(3) & (!\xcont_display|aux2\(0) & (\xcont_display|aux2\(1) & 
-- !\xcont_display|aux2\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux2\(0),
	datab => \xcont_display|aux2\(3),
	datac => \xcont_display|aux2\(1),
	datad => \xcont_display|aux2\(2),
	combout => \xconv_7seg0|Mux4~0_combout\);

-- Location: LCCOMB_X24_Y35_N0
\xconv_7seg0|display[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|display[2]~2_combout\ = ((\xconv_7seg0|Mux4~0_combout\) # (!\xcont_display|tipo2~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_clock|blink~regout\,
	datac => \xcont_display|tipo2~regout\,
	datad => \xconv_7seg0|Mux4~0_combout\,
	combout => \xconv_7seg0|display[2]~2_combout\);

-- Location: LCCOMB_X22_Y35_N20
\xconv_7seg0|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|Mux3~0_combout\ = (\xcont_display|aux2\(1) & ((\xcont_display|aux2\(0) & ((\xcont_display|aux2\(2)))) # (!\xcont_display|aux2\(0) & (\xcont_display|aux2\(3) & !\xcont_display|aux2\(2))))) # (!\xcont_display|aux2\(1) & 
-- (!\xcont_display|aux2\(3) & (\xcont_display|aux2\(0) $ (\xcont_display|aux2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux2\(1),
	datab => \xcont_display|aux2\(0),
	datac => \xcont_display|aux2\(3),
	datad => \xcont_display|aux2\(2),
	combout => \xconv_7seg0|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y35_N22
\xconv_7seg0|display[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|display[3]~3_combout\ = (\xconv_7seg0|Mux3~0_combout\) # ((!\xcont_display|tipo2~regout\) # (!\xgerador_clock|blink~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xconv_7seg0|Mux3~0_combout\,
	datab => \xgerador_clock|blink~regout\,
	datac => \xcont_display|tipo2~regout\,
	combout => \xconv_7seg0|display[3]~3_combout\);

-- Location: LCCOMB_X23_Y35_N4
\xconv_7seg0|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|Mux2~0_combout\ = (\xcont_display|aux2\(1) & (!\xcont_display|aux2\(3) & (\xcont_display|aux2\(0)))) # (!\xcont_display|aux2\(1) & ((\xcont_display|aux2\(2) & (!\xcont_display|aux2\(3))) # (!\xcont_display|aux2\(2) & 
-- ((\xcont_display|aux2\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux2\(1),
	datab => \xcont_display|aux2\(3),
	datac => \xcont_display|aux2\(0),
	datad => \xcont_display|aux2\(2),
	combout => \xconv_7seg0|Mux2~0_combout\);

-- Location: LCCOMB_X24_Y35_N12
\xconv_7seg0|display[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|display[4]~4_combout\ = ((\xconv_7seg0|Mux2~0_combout\) # (!\xcont_display|tipo2~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_clock|blink~regout\,
	datac => \xcont_display|tipo2~regout\,
	datad => \xconv_7seg0|Mux2~0_combout\,
	combout => \xconv_7seg0|display[4]~4_combout\);

-- Location: LCCOMB_X22_Y35_N2
\xconv_7seg0|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|Mux1~0_combout\ = (\xcont_display|aux2\(2) & (\xcont_display|aux2\(0) & (\xcont_display|aux2\(3) $ (\xcont_display|aux2\(1))))) # (!\xcont_display|aux2\(2) & (!\xcont_display|aux2\(3) & ((\xcont_display|aux2\(1)) # 
-- (\xcont_display|aux2\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux2\(2),
	datab => \xcont_display|aux2\(3),
	datac => \xcont_display|aux2\(1),
	datad => \xcont_display|aux2\(0),
	combout => \xconv_7seg0|Mux1~0_combout\);

-- Location: LCCOMB_X22_Y35_N12
\xconv_7seg0|display[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|display[5]~5_combout\ = ((\xconv_7seg0|Mux1~0_combout\) # (!\xcont_display|tipo2~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datab => \xconv_7seg0|Mux1~0_combout\,
	datad => \xcont_display|tipo2~regout\,
	combout => \xconv_7seg0|display[5]~5_combout\);

-- Location: LCCOMB_X23_Y35_N20
\xconv_7seg0|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|Mux0~0_combout\ = (\xcont_display|aux2\(0) & ((\xcont_display|aux2\(3)) # (\xcont_display|aux2\(1) $ (\xcont_display|aux2\(2))))) # (!\xcont_display|aux2\(0) & ((\xcont_display|aux2\(1)) # (\xcont_display|aux2\(3) $ 
-- (\xcont_display|aux2\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux2\(1),
	datab => \xcont_display|aux2\(3),
	datac => \xcont_display|aux2\(0),
	datad => \xcont_display|aux2\(2),
	combout => \xconv_7seg0|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y35_N10
\xconv_7seg0|display[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg0|display[6]~6_combout\ = ((!\xcont_display|tipo2~regout\) # (!\xgerador_clock|blink~regout\)) # (!\xconv_7seg0|Mux0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xconv_7seg0|Mux0~0_combout\,
	datab => \xgerador_clock|blink~regout\,
	datac => \xcont_display|tipo2~regout\,
	combout => \xconv_7seg0|display[6]~6_combout\);

-- Location: LCFF_X22_Y35_N17
\xcont_display|aux1[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|aux2\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux1\(3));

-- Location: LCFF_X23_Y35_N9
\xcont_display|aux1[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|aux2\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux1\(1));

-- Location: LCFF_X23_Y35_N5
\xcont_display|aux1[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|aux2\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux1\(0));

-- Location: LCCOMB_X22_Y35_N14
\xconv_7seg1|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|Mux6~0_combout\ = (\xcont_display|aux1\(2) & (!\xcont_display|aux1\(1) & (\xcont_display|aux1\(3) $ (!\xcont_display|aux1\(0))))) # (!\xcont_display|aux1\(2) & (\xcont_display|aux1\(0) & (\xcont_display|aux1\(3) $ 
-- (!\xcont_display|aux1\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux1\(2),
	datab => \xcont_display|aux1\(3),
	datac => \xcont_display|aux1\(1),
	datad => \xcont_display|aux1\(0),
	combout => \xconv_7seg1|Mux6~0_combout\);

-- Location: LCFF_X22_Y35_N25
\xcont_display|tipo1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|tipo2~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|tipo1~regout\);

-- Location: LCCOMB_X21_Y35_N0
\xconv_7seg1|display[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|display[0]~0_combout\ = ((\xconv_7seg1|Mux6~0_combout\) # (!\xcont_display|tipo1~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_clock|blink~regout\,
	datac => \xconv_7seg1|Mux6~0_combout\,
	datad => \xcont_display|tipo1~regout\,
	combout => \xconv_7seg1|display[0]~0_combout\);

-- Location: LCCOMB_X23_Y35_N30
\xconv_7seg1|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|Mux5~0_combout\ = (\xcont_display|aux1\(1) & ((\xcont_display|aux1\(0) & ((\xcont_display|aux1\(3)))) # (!\xcont_display|aux1\(0) & (\xcont_display|aux1\(2))))) # (!\xcont_display|aux1\(1) & (\xcont_display|aux1\(2) & (\xcont_display|aux1\(0) 
-- $ (\xcont_display|aux1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux1\(2),
	datab => \xcont_display|aux1\(0),
	datac => \xcont_display|aux1\(1),
	datad => \xcont_display|aux1\(3),
	combout => \xconv_7seg1|Mux5~0_combout\);

-- Location: LCCOMB_X24_Y35_N16
\xconv_7seg1|display[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|display[1]~1_combout\ = ((\xconv_7seg1|Mux5~0_combout\) # (!\xcont_display|tipo1~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_clock|blink~regout\,
	datac => \xcont_display|tipo1~regout\,
	datad => \xconv_7seg1|Mux5~0_combout\,
	combout => \xconv_7seg1|display[1]~1_combout\);

-- Location: LCCOMB_X22_Y35_N26
\xconv_7seg1|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|Mux4~0_combout\ = (\xcont_display|aux1\(2) & (\xcont_display|aux1\(3) & ((\xcont_display|aux1\(1)) # (!\xcont_display|aux1\(0))))) # (!\xcont_display|aux1\(2) & (!\xcont_display|aux1\(3) & (\xcont_display|aux1\(1) & 
-- !\xcont_display|aux1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux1\(2),
	datab => \xcont_display|aux1\(3),
	datac => \xcont_display|aux1\(1),
	datad => \xcont_display|aux1\(0),
	combout => \xconv_7seg1|Mux4~0_combout\);

-- Location: LCCOMB_X22_Y35_N24
\xconv_7seg1|display[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|display[2]~2_combout\ = ((\xconv_7seg1|Mux4~0_combout\) # (!\xcont_display|tipo1~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datac => \xcont_display|tipo1~regout\,
	datad => \xconv_7seg1|Mux4~0_combout\,
	combout => \xconv_7seg1|display[2]~2_combout\);

-- Location: LCCOMB_X22_Y35_N0
\xconv_7seg1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|Mux3~0_combout\ = (\xcont_display|aux1\(1) & ((\xcont_display|aux1\(2) & ((\xcont_display|aux1\(0)))) # (!\xcont_display|aux1\(2) & (\xcont_display|aux1\(3) & !\xcont_display|aux1\(0))))) # (!\xcont_display|aux1\(1) & 
-- (!\xcont_display|aux1\(3) & (\xcont_display|aux1\(2) $ (\xcont_display|aux1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux1\(2),
	datab => \xcont_display|aux1\(3),
	datac => \xcont_display|aux1\(1),
	datad => \xcont_display|aux1\(0),
	combout => \xconv_7seg1|Mux3~0_combout\);

-- Location: LCCOMB_X22_Y35_N6
\xconv_7seg1|display[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|display[3]~3_combout\ = ((\xconv_7seg1|Mux3~0_combout\) # (!\xcont_display|tipo1~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datab => \xcont_display|tipo1~regout\,
	datad => \xconv_7seg1|Mux3~0_combout\,
	combout => \xconv_7seg1|display[3]~3_combout\);

-- Location: LCCOMB_X22_Y35_N8
\xconv_7seg1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|Mux2~0_combout\ = (\xcont_display|aux1\(1) & (((!\xcont_display|aux1\(3) & \xcont_display|aux1\(0))))) # (!\xcont_display|aux1\(1) & ((\xcont_display|aux1\(2) & (!\xcont_display|aux1\(3))) # (!\xcont_display|aux1\(2) & 
-- ((\xcont_display|aux1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux1\(2),
	datab => \xcont_display|aux1\(3),
	datac => \xcont_display|aux1\(1),
	datad => \xcont_display|aux1\(0),
	combout => \xconv_7seg1|Mux2~0_combout\);

-- Location: LCCOMB_X21_Y35_N10
\xconv_7seg1|display[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|display[4]~4_combout\ = ((\xconv_7seg1|Mux2~0_combout\) # (!\xcont_display|tipo1~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_clock|blink~regout\,
	datac => \xconv_7seg1|Mux2~0_combout\,
	datad => \xcont_display|tipo1~regout\,
	combout => \xconv_7seg1|display[4]~4_combout\);

-- Location: LCCOMB_X22_Y35_N10
\xconv_7seg1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|Mux1~0_combout\ = (\xcont_display|aux1\(2) & (\xcont_display|aux1\(0) & (\xcont_display|aux1\(3) $ (\xcont_display|aux1\(1))))) # (!\xcont_display|aux1\(2) & (!\xcont_display|aux1\(3) & ((\xcont_display|aux1\(1)) # 
-- (\xcont_display|aux1\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux1\(2),
	datab => \xcont_display|aux1\(3),
	datac => \xcont_display|aux1\(1),
	datad => \xcont_display|aux1\(0),
	combout => \xconv_7seg1|Mux1~0_combout\);

-- Location: LCCOMB_X21_Y35_N4
\xconv_7seg1|display[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|display[5]~5_combout\ = ((\xconv_7seg1|Mux1~0_combout\) # (!\xcont_display|tipo1~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xgerador_clock|blink~regout\,
	datac => \xconv_7seg1|Mux1~0_combout\,
	datad => \xcont_display|tipo1~regout\,
	combout => \xconv_7seg1|display[5]~5_combout\);

-- Location: LCCOMB_X22_Y35_N16
\xconv_7seg1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|Mux0~0_combout\ = (\xcont_display|aux1\(0) & ((\xcont_display|aux1\(3)) # (\xcont_display|aux1\(2) $ (\xcont_display|aux1\(1))))) # (!\xcont_display|aux1\(0) & ((\xcont_display|aux1\(1)) # (\xcont_display|aux1\(2) $ 
-- (\xcont_display|aux1\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux1\(2),
	datab => \xcont_display|aux1\(1),
	datac => \xcont_display|aux1\(3),
	datad => \xcont_display|aux1\(0),
	combout => \xconv_7seg1|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y35_N4
\xconv_7seg1|display[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg1|display[6]~6_combout\ = ((!\xconv_7seg1|Mux0~0_combout\) # (!\xcont_display|tipo1~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datab => \xcont_display|tipo1~regout\,
	datad => \xconv_7seg1|Mux0~0_combout\,
	combout => \xconv_7seg1|display[6]~6_combout\);

-- Location: LCFF_X22_Y35_N31
\xcont_display|aux1[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|aux2\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux1\(2));

-- Location: LCFF_X22_Y35_N23
\xcont_display|aux0[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|aux1\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux0\(2));

-- Location: LCFF_X22_Y35_N13
\xcont_display|aux0[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|aux1\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux0\(3));

-- Location: LCFF_X23_Y35_N31
\xcont_display|aux0[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|aux1\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|aux0\(1));

-- Location: LCCOMB_X20_Y35_N26
\xconv_7seg2|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|Mux6~0_combout\ = (\xcont_display|aux0\(2) & (!\xcont_display|aux0\(1) & (\xcont_display|aux0\(0) $ (!\xcont_display|aux0\(3))))) # (!\xcont_display|aux0\(2) & (\xcont_display|aux0\(0) & (\xcont_display|aux0\(3) $ 
-- (!\xcont_display|aux0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux0\(0),
	datab => \xcont_display|aux0\(2),
	datac => \xcont_display|aux0\(3),
	datad => \xcont_display|aux0\(1),
	combout => \xconv_7seg2|Mux6~0_combout\);

-- Location: LCFF_X22_Y35_N29
\xcont_display|tipo0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \xgerador_pwm|aux2~clkctrl_outclk\,
	sdata => \xcont_display|tipo1~regout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \xcont_display|tipo0~regout\);

-- Location: LCCOMB_X20_Y35_N0
\xconv_7seg2|display[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|display[0]~0_combout\ = (\xconv_7seg2|Mux6~0_combout\) # ((!\xcont_display|tipo0~regout\) # (!\xgerador_clock|blink~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xconv_7seg2|Mux6~0_combout\,
	datac => \xgerador_clock|blink~regout\,
	datad => \xcont_display|tipo0~regout\,
	combout => \xconv_7seg2|display[0]~0_combout\);

-- Location: LCCOMB_X20_Y35_N6
\xconv_7seg2|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|Mux5~0_combout\ = (\xcont_display|aux0\(3) & ((\xcont_display|aux0\(0) & ((\xcont_display|aux0\(1)))) # (!\xcont_display|aux0\(0) & (\xcont_display|aux0\(2))))) # (!\xcont_display|aux0\(3) & (\xcont_display|aux0\(2) & (\xcont_display|aux0\(0) 
-- $ (\xcont_display|aux0\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux0\(0),
	datab => \xcont_display|aux0\(2),
	datac => \xcont_display|aux0\(3),
	datad => \xcont_display|aux0\(1),
	combout => \xconv_7seg2|Mux5~0_combout\);

-- Location: LCCOMB_X20_Y35_N4
\xconv_7seg2|display[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|display[1]~1_combout\ = (\xconv_7seg2|Mux5~0_combout\) # ((!\xcont_display|tipo0~regout\) # (!\xgerador_clock|blink~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xconv_7seg2|Mux5~0_combout\,
	datac => \xgerador_clock|blink~regout\,
	datad => \xcont_display|tipo0~regout\,
	combout => \xconv_7seg2|display[1]~1_combout\);

-- Location: LCCOMB_X20_Y35_N30
\xconv_7seg2|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|Mux4~0_combout\ = (\xcont_display|aux0\(2) & (\xcont_display|aux0\(3) & ((\xcont_display|aux0\(1)) # (!\xcont_display|aux0\(0))))) # (!\xcont_display|aux0\(2) & (!\xcont_display|aux0\(0) & (!\xcont_display|aux0\(3) & 
-- \xcont_display|aux0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux0\(0),
	datab => \xcont_display|aux0\(2),
	datac => \xcont_display|aux0\(3),
	datad => \xcont_display|aux0\(1),
	combout => \xconv_7seg2|Mux4~0_combout\);

-- Location: LCCOMB_X20_Y35_N28
\xconv_7seg2|display[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|display[2]~2_combout\ = (\xconv_7seg2|Mux4~0_combout\) # ((!\xcont_display|tipo0~regout\) # (!\xgerador_clock|blink~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \xconv_7seg2|Mux4~0_combout\,
	datac => \xgerador_clock|blink~regout\,
	datad => \xcont_display|tipo0~regout\,
	combout => \xconv_7seg2|display[2]~2_combout\);

-- Location: LCCOMB_X20_Y35_N14
\xconv_7seg2|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|Mux3~0_combout\ = (\xcont_display|aux0\(1) & ((\xcont_display|aux0\(0) & (\xcont_display|aux0\(2))) # (!\xcont_display|aux0\(0) & (!\xcont_display|aux0\(2) & \xcont_display|aux0\(3))))) # (!\xcont_display|aux0\(1) & (!\xcont_display|aux0\(3) 
-- & (\xcont_display|aux0\(0) $ (\xcont_display|aux0\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux0\(0),
	datab => \xcont_display|aux0\(2),
	datac => \xcont_display|aux0\(3),
	datad => \xcont_display|aux0\(1),
	combout => \xconv_7seg2|Mux3~0_combout\);

-- Location: LCCOMB_X21_Y35_N18
\xconv_7seg2|display[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|display[3]~3_combout\ = (\xconv_7seg2|Mux3~0_combout\) # ((!\xcont_display|tipo0~regout\) # (!\xgerador_clock|blink~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xconv_7seg2|Mux3~0_combout\,
	datab => \xgerador_clock|blink~regout\,
	datad => \xcont_display|tipo0~regout\,
	combout => \xconv_7seg2|display[3]~3_combout\);

-- Location: LCCOMB_X20_Y35_N20
\xconv_7seg2|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|Mux2~0_combout\ = (\xcont_display|aux0\(1) & (\xcont_display|aux0\(0) & ((!\xcont_display|aux0\(3))))) # (!\xcont_display|aux0\(1) & ((\xcont_display|aux0\(2) & ((!\xcont_display|aux0\(3)))) # (!\xcont_display|aux0\(2) & 
-- (\xcont_display|aux0\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux0\(0),
	datab => \xcont_display|aux0\(2),
	datac => \xcont_display|aux0\(3),
	datad => \xcont_display|aux0\(1),
	combout => \xconv_7seg2|Mux2~0_combout\);

-- Location: LCCOMB_X20_Y35_N18
\xconv_7seg2|display[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|display[4]~4_combout\ = ((\xconv_7seg2|Mux2~0_combout\) # (!\xcont_display|tipo0~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datac => \xconv_7seg2|Mux2~0_combout\,
	datad => \xcont_display|tipo0~regout\,
	combout => \xconv_7seg2|display[4]~4_combout\);

-- Location: LCCOMB_X20_Y35_N8
\xconv_7seg2|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|Mux1~0_combout\ = (\xcont_display|aux0\(0) & (\xcont_display|aux0\(3) $ (((\xcont_display|aux0\(1)) # (!\xcont_display|aux0\(2)))))) # (!\xcont_display|aux0\(0) & (!\xcont_display|aux0\(2) & (!\xcont_display|aux0\(3) & 
-- \xcont_display|aux0\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux0\(0),
	datab => \xcont_display|aux0\(2),
	datac => \xcont_display|aux0\(3),
	datad => \xcont_display|aux0\(1),
	combout => \xconv_7seg2|Mux1~0_combout\);

-- Location: LCCOMB_X20_Y35_N2
\xconv_7seg2|display[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|display[5]~5_combout\ = ((\xconv_7seg2|Mux1~0_combout\) # (!\xcont_display|tipo0~regout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datac => \xconv_7seg2|Mux1~0_combout\,
	datad => \xcont_display|tipo0~regout\,
	combout => \xconv_7seg2|display[5]~5_combout\);

-- Location: LCCOMB_X20_Y35_N16
\xconv_7seg2|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|Mux0~0_combout\ = (\xcont_display|aux0\(0) & ((\xcont_display|aux0\(3)) # (\xcont_display|aux0\(2) $ (\xcont_display|aux0\(1))))) # (!\xcont_display|aux0\(0) & ((\xcont_display|aux0\(1)) # (\xcont_display|aux0\(2) $ 
-- (\xcont_display|aux0\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xcont_display|aux0\(0),
	datab => \xcont_display|aux0\(2),
	datac => \xcont_display|aux0\(3),
	datad => \xcont_display|aux0\(1),
	combout => \xconv_7seg2|Mux0~0_combout\);

-- Location: LCCOMB_X20_Y35_N10
\xconv_7seg2|display[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \xconv_7seg2|display[6]~6_combout\ = ((!\xcont_display|tipo0~regout\) # (!\xconv_7seg2|Mux0~0_combout\)) # (!\xgerador_clock|blink~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \xgerador_clock|blink~regout\,
	datac => \xconv_7seg2|Mux0~0_combout\,
	datad => \xcont_display|tipo0~regout\,
	combout => \xconv_7seg2|display[6]~6_combout\);

-- Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg0|display[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(0));

-- Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg0|display[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(1));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg0|display[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(2));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg0|display[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg0|display[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(4));

-- Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg0|display[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(5));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp2[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg0|display[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp2(6));

-- Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg1|display[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(0));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg1|display[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(1));

-- Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg1|display[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(2));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg1|display[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(3));

-- Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg1|display[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(4));

-- Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg1|display[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(5));

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp1[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg1|display[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp1(6));

-- Location: PIN_E10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg2|display[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg2|display[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(1));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg2|display[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(2));

-- Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg2|display[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(3));

-- Location: PIN_A9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg2|display[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(4));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg2|display[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(5));

-- Location: PIN_B9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\disp0[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \xconv_7seg2|display[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_disp0(6));
END structure;


