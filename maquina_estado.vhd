-- controle = 0
-- sequencia ciclica : ... 0 3 5 6 9 12 15 0 ...
--
-- controle = 1
-- sequencia ciclica : ... 0 1 2 4 7 8 10 11 13 14 0 ...
--
-- estado = numero primo -> tipo = 1
-- estado = nao primo -> tipo = 0
--
-- funciona na borda de descida de pwm1

entity maquina_estado is
port (
	signal pwm1 : in bit;
	signal controle : in bit;
	signal estado : out bit_vector (3 downto 0);
	signal tipo : out bit
);
end entity maquina_estado;

architecture c_maquina_estado of maquina_estado is

signal est_aux : bit_vector (3 downto 0) := "0000";
signal tipo_aux : bit;

begin

tipo  <= tipo_aux;
estado <= est_aux;

estados_tipos: process (pwm1)

begin

if pwm1='0' and pwm1'event then
	   if controle = '0' then 
		case est_aux is
			when "0000" => est_aux<="0011"; --0 VAI PRA 3
			               tipo_aux<='1';--TIPO 1
			when "0001" => est_aux<="0011"; --1 VAI PRA 3
			               tipo_aux<='1';--TIPO 1
			when "0010" => est_aux<="0011"; --2 VAI PRA 3
			               tipo_aux<='1';--TIPO 1
			when "0011" => est_aux<="0101"; --3 VAI PRA 5
			               tipo_aux<='1';--TIPO 1
			when "0100" => est_aux<="0101"; --4 VAI PRA 5
			               tipo_aux<='1';--TIPO 1
			when "0101" => est_aux<="0110"; --5 VAI PRA 6
			               tipo_aux<='0';--TIPO 0
			when "0110" => est_aux<="1001"; --6 VAI PRA 9
			               tipo_aux<='0';--TIPO 0
			when "0111" => est_aux<="1001"; --7 VAI PRA 9
			               tipo_aux<='0'; --TIPO 0
			when "1000" => est_aux<="1001"; --8 VAI PRA 9
			               tipo_aux<='0';	--TIPO 0		
			when "1001" => est_aux<="1100"; --9 VAI PRA 12
			               tipo_aux<='0'; --TIPO 0
			when "1010" => est_aux<="1100"; --10 VAI PRA 12
			               tipo_aux<='0'; --TIPO 0
			when "1011" => est_aux<="1100"; --11 VAI PRA 12
			               tipo_aux<='0'; --TIPO 0
			when "1100" => est_aux<="1111"; --12 VAI PRA 15
			               tipo_aux<='0'; --TIPO 0		
			when "1101" => est_aux<="1111"; --13 VAI PRA 15
			               tipo_aux<='0'; --TIPO 0				
			when "1110" => est_aux<="1111"; --14 VAI PRA 15
			               tipo_aux<='0'; --TIPO 0	
			when "1111" => est_aux<="0000"; --15 VAI PRA 0
			               tipo_aux<='0'; --TIPO 0
			end case;
	
end if;

		if controle='1' then
			case est_aux is
			when "0000" => est_aux<="0001"; --0 VAI PRA 1
			               tipo_aux<='0'; --TIPO 0
			when "0001" => est_aux<="0010"; --1 VAI PRA 2
			               tipo_aux<='1'; --TIPO 1
			when "0010" => est_aux<="0100"; --2 VAI PRA 4
			               tipo_aux<='0'; --TIPO 0
			when "0011" => est_aux<="0100"; --3 VAI PRA 4
			               tipo_aux<='0'; --TIPO 0
			when "0100" => est_aux<="0111"; --4 VAI PRA 7
			               tipo_aux<='1'; --TIPO 1
			when "0101" => est_aux<="0111"; --5 VAI PRA 7
			               tipo_aux<='1'; --TIPO 1
			when "0110" => est_aux<="0111"; --6 VAI PRA 7
			               tipo_aux<='1'; --TIPO 1
			when "0111" => est_aux<="1000"; --7 VAI PRA 8
			               tipo_aux<='0'; --TIPO 0
			when "1000" => est_aux<="1010"; --8 VAI PRA 10
			               tipo_aux<='0'; --TIPO 0			
			when "1001" => est_aux<="1010"; --9 VAI PRA 10
			               tipo_aux<='0'; -- TIPO 0
			when "1010" => est_aux<="1011"; --10 VAI PRA 11
			               tipo_aux<='1'; --TIPO 1
			when "1011" => est_aux<="1101"; --11 VAI PRA 13
			               tipo_aux<='1'; --TIPO 1
			when "1100" => est_aux<="1101"; --12 VAI PRA 13
			               tipo_aux<='1'; --TIPO 1		
			when "1101" => est_aux<="1110"; --13 VAI PRA 14
			               tipo_aux<='0';	--TIPO 0			
			when "1110" => est_aux<="0000"; --14 VAI PRA 0
			               tipo_aux<='0'; --TIPO 0	
			when "1111" => est_aux<="0000"; --15 VAI PRA 0
			               tipo_aux<='0';	--TIPO 0

		end case;
		end if;
	end if;
end process estados_tipos;

end architecture c_maquina_estado;