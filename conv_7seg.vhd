-- Converte numero hexadecimal para ser mostrado
-- num display de 7 segmentos: 0 - ON; 1 - OFF;
-- en = 1 : Funcionamento normal
-- en = 0 : Display todo apagado [1111111]
-- Tabela:
-- 0 - 0000 - 1000000 -  64
-- 1 - 0001 - 1111001 - 121 
-- 2 - 0010 - 0100100 -  36
-- 3 - 0011 - 0110000 -  48
-- 4 - 0100 - 0011001 -  25
-- 5 - 0101 - 0010010 -  18
-- 6 - 0110 - 0000010 -   2
-- 7 - 0111 - 1111000 - 120
-- 8 - 1000 - 0000000 -   0
-- 9 - 1001 - 0010000 -  16
-- A - 1010 - 0001000 -   8
-- b - 1011 - 0000011 -   3
-- C - 1100 - 1000110 -  70
-- d - 1101 - 0100001 -  33
-- E - 1110 - 0000110 -   6
-- F - 1111 - 0001110 -  14
-- X - xxxx - 1111111 - 127

-- X: todo display apagado - en=0

entity conv_7seg is
port (
	signal en : in bit;
	signal dado : in bit_vector (3 downto 0);
	signal display : out bit_vector (6 downto 0)
);
end entity conv_7seg;

architecture c_conv_7seg of conv_7seg is

signal aux : bit_vector (6 downto 0);

begin

display <= aux when en='1' else
				"1111111";

with dado select
	aux <=   "1000000" when "0000", -- 0
				"1111001" when "0001", -- 1
				"0100100" when "0010", -- 2
				"0110000" when "0011", -- 3
				"0011001" when "0100", -- 4
				"0010010" when "0101", -- 5
				"0000010" when "0110", -- 6
				"1111000" when "0111", -- 7
				"0000000" when "1000", -- 8
				"0010000" when "1001", -- 9
				"0001000" when "1010", -- A
				"0000011" when "1011", -- b
				"1000110" when "1100", -- C
				"0100001" when "1101", -- d
				"0000110" when "1110", -- E
				"0001110" when "1111"; -- F
				 
end architecture c_conv_7seg;

