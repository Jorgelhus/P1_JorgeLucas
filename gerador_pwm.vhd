-- clock_in : clock simetrico com periodo T
-- pwm1 : tempo total de 12T e tempo alto de 3T
-- pwm2 : tempo total de 12T e tempo alto de 6T

entity gerador_pwm is
port (
	signal clock : in bit;
	signal pwm1, pwm2 : out bit
);
end entity gerador_pwm;

architecture c_gerador_pwm of gerador_pwm is

signal aux1, aux2 : bit :='1';

begin

pwm1<=aux1;
pwm2<=aux2;

pwm: process (clock)

variable contador : integer range 0 to 12 := 0;
begin
	if clock='0' and clock'event then
		if contador<11 then
			contador:=contador+1;
			
			if contador=3 then aux1<='0'; end if;
			if contador=6 then aux2<='0'; end if;
--clocks com intervalos de inicio definidos em 3 e 6.
		else
			contador:=0;
			aux1<='1';
			aux2<='1';
		end if;
	end if;
end process pwm;



end architecture c_gerador_pwm;