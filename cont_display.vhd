-- A cada borda de descida de pwm2,
-- desloca:
-- estado -> num2 -> num1 -> num0
-- en_tipo -> en2 -> en1 -> en0
-- en_tipo de acordo com tipo:
-- 0 : en_tipo = 1 (fixo)
-- 1 : en_tipo = pisca (piscando)
--

entity cont_display is
port (
	signal pwm2 : in bit;
	signal pisca : in bit;
	signal estado : in bit_vector (3 downto 0);
	signal tipo : in bit;
	signal num2, num1, num0 : out bit_vector (3 downto 0);
	signal en2, en1, en0 : out bit
);
end entity cont_display;

architecture c_cont_display of cont_display is

signal aux2, aux1, aux0 : bit_vector (3 downto 0) := "0000";

signal tipo2, tipo1, tipo0 : bit :='0' ;

begin

num2 <= aux2;
num1 <= aux1;
num0 <= aux0;

en2 <=   '1' when tipo2='0' else
		   pisca when tipo2='1';
		
en1 <=   '1' when tipo1='0' else
		   pisca when tipo1='1';
		
en0 <=   '1' when tipo0='0' else
		   pisca when tipo0='1';
			
controlador: process (pwm2)

variable vnum2, vnum1, vnum0 : bit_vector (3 downto 0) := "0000";

variable vtipo2, vtipo1, vtipo0 : bit :='0' ;

begin

if pwm2='0' and pwm2'event then 

vnum0 := vnum1;
vnum1 := vnum2;
vnum2 := estado;

vtipo0 := vtipo1;
vtipo1 := vtipo2;
vtipo2 := tipo;

aux2 <= vnum2;
aux1 <= vnum1;
aux0 <= vnum0;

tipo2 <= vtipo2;
tipo1 <= vtipo1;
tipo0 <= vtipo0;

end if;
end process controlador;

end architecture c_cont_display;