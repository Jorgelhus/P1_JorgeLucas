-- PRIMEIRA PROVA DE SISTEMAS DIGITAIS - 19/09/2018
--
-- NOME : 
--
-- O ESTADO SEGUE dis2 -> disp1-> disp0
-- FICA FIXO COM NUMEROS NAO PRIMOS
-- PISCA COM NUMEROS PRIMOS
--

entity p1 is
port (
	signal clock : in bit;
	signal controle : in bit;
	signal disp2, disp1, disp0 : out bit_vector (6 downto 0)
);
end entity p1;

architecture c_p1 of p1 is


-- Inicio dos componentes

-- gerador_clock
component gerador_clock is
port (
	signal clock : in bit;
	signal pisca : out bit
);
end component gerador_clock;

-- gerador_pwm
component gerador_pwm is
port (
	signal clock : in bit;
	signal pwm1, pwm2 : out bit
);
end component gerador_pwm;

-- maquina_estado
component maquina_estado is
port (
	signal pwm1 : in bit;
	signal controle : in bit;
	signal estado : out bit_vector (3 downto 0);
	signal tipo : out bit
);
end component maquina_estado;

-- cont_display
component cont_display is
port (
	signal pwm2 : in bit;
	signal pisca : in bit;
	signal estado : in bit_vector (3 downto 0);
	signal tipo : in bit;
	signal num2, num1, num0 : out bit_vector (3 downto 0);
	signal en2, en1, en0 : out bit
);
end component cont_display;

-- conv_7seg
component conv_7seg is
port (
	signal en : in bit;
	signal dado : in bit_vector (3 downto 0);
	signal display : out bit_vector (6 downto 0)
);
end component conv_7seg;

-- Final dos componentes
signal pisca : bit;
signal pwm1, pwm2 : bit;
signal estado : bit_vector (3 downto 0);
signal tipo: bit;
signal en2, en1, en0 : bit;
signal num2, num1, num0 : bit_vector (3 downto 0);

begin

xgerador_clock : gerador_clock port map (clock, pisca);
xgerador_pwm : gerador_pwm port map (clock, pwm1, pwm2);
xmaquina_estado : maquina_estado port map (pwm1, controle, estado, tipo);
xcont_display : cont_display port map (pwm2, pisca, estado, tipo, num2, num1, num0, en2, en1, en0);

xconv_7seg0 : conv_7seg port map (en2, num2, disp2);
xconv_7seg1 : conv_7seg port map (en1, num1, disp1);
xconv_7seg2 : conv_7seg port map (en0, num0, disp0);



end architecture c_p1;