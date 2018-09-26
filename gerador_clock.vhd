-- clock : clock simetrico com periodo T
-- pisca : clock simetrico com periodo 4T

entity gerador_clock is
port (
	signal clock : in bit;
	signal pisca : out bit
);
end entity gerador_clock;

architecture c_gerador_clock of gerador_clock is

signal blink : bit := '0';

begin

pisca <= blink;

clock1: process (clock)

variable contador1 : integer range 0 to 10 := 0;

begin

	if clock='0' and clock'event then
	
		if contador1<3 then
			contador1:=contador1+1;
		else
			contador1:=0;
			blink<=not blink;
		end if;		
	end if;
end process clock1;

end;