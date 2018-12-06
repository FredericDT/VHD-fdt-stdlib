-- auto generated tb by fdt
-- 
library ieee;
use ieee.std_logic_1164.all;

entity u_tb is 
end u_tb;

architecture tb of u_tb is 

component eight_three_prior_encoder is
port (
	ei: in std_logic;
	i: in std_logic_vector(7 downto 0);
	a: out std_logic_vector(0 to 2);
	gs, eo: out std_logic
);	
end component;

signal ei_t: std_logic;
signal i_t: std_logic_vector(7 downto 0);
signal a_t: std_logic_vector(0 to 2);
signal eo_t: std_logic;


begin
	u_tb_t: eight_three_prior_encoder port map(
		ei_t, i_t, a_t, eo_t
	);

	process
	begin

		ei_t <= '0';
i_t <= "00000000";
wait for 10 ns;

ei_t <= '0';
i_t <= "00000001";
wait for 10 ns;

ei_t <= '0';
i_t <= "00000010";
wait for 10 ns;

ei_t <= '0';
i_t <= "00000011";
wait for 10 ns;

ei_t <= '0';
i_t <= "00000100";
wait for 10 ns;

ei_t <= '0';
i_t <= "00000101";
wait for 10 ns;

ei_t <= '0';
i_t <= "00000110";
wait for 10 ns;

ei_t <= '0';
i_t <= "00000111";
wait for 10 ns;

ei_t <= '0';
i_t <= "00001000";
wait for 10 ns;

ei_t <= '0';
i_t <= "00001001";
wait for 10 ns;

ei_t <= '0';
i_t <= "00001010";
wait for 10 ns;

ei_t <= '0';
i_t <= "00001011";
wait for 10 ns;

ei_t <= '0';
i_t <= "00001100";
wait for 10 ns;

ei_t <= '0';
i_t <= "00001101";
wait for 10 ns;

ei_t <= '0';
i_t <= "00001110";
wait for 10 ns;

ei_t <= '0';
i_t <= "00001111";
wait for 10 ns;

ei_t <= '0';
i_t <= "00010000";
wait for 10 ns;

ei_t <= '0';
i_t <= "00010001";
wait for 10 ns;

ei_t <= '0';
i_t <= "00010010";
wait for 10 ns;

ei_t <= '0';
i_t <= "00010011";
wait for 10 ns;

ei_t <= '0';
i_t <= "00010100";
wait for 10 ns;

ei_t <= '0';
i_t <= "00010101";
wait for 10 ns;

ei_t <= '0';
i_t <= "00010110";
wait for 10 ns;

ei_t <= '0';
i_t <= "00010111";
wait for 10 ns;

ei_t <= '0';
i_t <= "00011000";
wait for 10 ns;

ei_t <= '0';
i_t <= "00011001";
wait for 10 ns;

ei_t <= '0';
i_t <= "00011010";
wait for 10 ns;

ei_t <= '0';
i_t <= "00011011";
wait for 10 ns;

ei_t <= '0';
i_t <= "00011100";
wait for 10 ns;

ei_t <= '0';
i_t <= "00011101";
wait for 10 ns;

ei_t <= '0';
i_t <= "00011110";
wait for 10 ns;

ei_t <= '0';
i_t <= "00011111";
wait for 10 ns;

ei_t <= '0';
i_t <= "00100000";
wait for 10 ns;

ei_t <= '0';
i_t <= "00100001";
wait for 10 ns;

ei_t <= '0';
i_t <= "00100010";
wait for 10 ns;

ei_t <= '0';
i_t <= "00100011";
wait for 10 ns;

ei_t <= '0';
i_t <= "00100100";
wait for 10 ns;

ei_t <= '0';
i_t <= "00100101";
wait for 10 ns;

ei_t <= '0';
i_t <= "00100110";
wait for 10 ns;

ei_t <= '0';
i_t <= "00100111";
wait for 10 ns;

ei_t <= '0';
i_t <= "00101000";
wait for 10 ns;

ei_t <= '0';
i_t <= "00101001";
wait for 10 ns;

ei_t <= '0';
i_t <= "00101010";
wait for 10 ns;

ei_t <= '0';
i_t <= "00101011";
wait for 10 ns;

ei_t <= '0';
i_t <= "00101100";
wait for 10 ns;

ei_t <= '0';
i_t <= "00101101";
wait for 10 ns;

ei_t <= '0';
i_t <= "00101110";
wait for 10 ns;

ei_t <= '0';
i_t <= "00101111";
wait for 10 ns;

ei_t <= '0';
i_t <= "00110000";
wait for 10 ns;

ei_t <= '0';
i_t <= "00110001";
wait for 10 ns;

ei_t <= '0';
i_t <= "00110010";
wait for 10 ns;

ei_t <= '0';
i_t <= "00110011";
wait for 10 ns;

ei_t <= '0';
i_t <= "00110100";
wait for 10 ns;

ei_t <= '0';
i_t <= "00110101";
wait for 10 ns;

ei_t <= '0';
i_t <= "00110110";
wait for 10 ns;

ei_t <= '0';
i_t <= "00110111";
wait for 10 ns;

ei_t <= '0';
i_t <= "00111000";
wait for 10 ns;

ei_t <= '0';
i_t <= "00111001";
wait for 10 ns;

ei_t <= '0';
i_t <= "00111010";
wait for 10 ns;

ei_t <= '0';
i_t <= "00111011";
wait for 10 ns;

ei_t <= '0';
i_t <= "00111100";
wait for 10 ns;

ei_t <= '0';
i_t <= "00111101";
wait for 10 ns;

ei_t <= '0';
i_t <= "00111110";
wait for 10 ns;

ei_t <= '0';
i_t <= "00111111";
wait for 10 ns;

ei_t <= '0';
i_t <= "01000000";
wait for 10 ns;

ei_t <= '0';
i_t <= "01000001";
wait for 10 ns;

ei_t <= '0';
i_t <= "01000010";
wait for 10 ns;

ei_t <= '0';
i_t <= "01000011";
wait for 10 ns;

ei_t <= '0';
i_t <= "01000100";
wait for 10 ns;

ei_t <= '0';
i_t <= "01000101";
wait for 10 ns;

ei_t <= '0';
i_t <= "01000110";
wait for 10 ns;

ei_t <= '0';
i_t <= "01000111";
wait for 10 ns;

ei_t <= '0';
i_t <= "01001000";
wait for 10 ns;

ei_t <= '0';
i_t <= "01001001";
wait for 10 ns;

ei_t <= '0';
i_t <= "01001010";
wait for 10 ns;

ei_t <= '0';
i_t <= "01001011";
wait for 10 ns;

ei_t <= '0';
i_t <= "01001100";
wait for 10 ns;

ei_t <= '0';
i_t <= "01001101";
wait for 10 ns;

ei_t <= '0';
i_t <= "01001110";
wait for 10 ns;

ei_t <= '0';
i_t <= "01001111";
wait for 10 ns;

ei_t <= '0';
i_t <= "01010000";
wait for 10 ns;

ei_t <= '0';
i_t <= "01010001";
wait for 10 ns;

ei_t <= '0';
i_t <= "01010010";
wait for 10 ns;

ei_t <= '0';
i_t <= "01010011";
wait for 10 ns;

ei_t <= '0';
i_t <= "01010100";
wait for 10 ns;

ei_t <= '0';
i_t <= "01010101";
wait for 10 ns;

ei_t <= '0';
i_t <= "01010110";
wait for 10 ns;

ei_t <= '0';
i_t <= "01010111";
wait for 10 ns;

ei_t <= '0';
i_t <= "01011000";
wait for 10 ns;

ei_t <= '0';
i_t <= "01011001";
wait for 10 ns;

ei_t <= '0';
i_t <= "01011010";
wait for 10 ns;

ei_t <= '0';
i_t <= "01011011";
wait for 10 ns;

ei_t <= '0';
i_t <= "01011100";
wait for 10 ns;

ei_t <= '0';
i_t <= "01011101";
wait for 10 ns;

ei_t <= '0';
i_t <= "01011110";
wait for 10 ns;

ei_t <= '0';
i_t <= "01011111";
wait for 10 ns;

ei_t <= '0';
i_t <= "01100000";
wait for 10 ns;

ei_t <= '0';
i_t <= "01100001";
wait for 10 ns;

ei_t <= '0';
i_t <= "01100010";
wait for 10 ns;

ei_t <= '0';
i_t <= "01100011";
wait for 10 ns;

ei_t <= '0';
i_t <= "01100100";
wait for 10 ns;

ei_t <= '0';
i_t <= "01100101";
wait for 10 ns;

ei_t <= '0';
i_t <= "01100110";
wait for 10 ns;

ei_t <= '0';
i_t <= "01100111";
wait for 10 ns;

ei_t <= '0';
i_t <= "01101000";
wait for 10 ns;

ei_t <= '0';
i_t <= "01101001";
wait for 10 ns;

ei_t <= '0';
i_t <= "01101010";
wait for 10 ns;

ei_t <= '0';
i_t <= "01101011";
wait for 10 ns;

ei_t <= '0';
i_t <= "01101100";
wait for 10 ns;

ei_t <= '0';
i_t <= "01101101";
wait for 10 ns;

ei_t <= '0';
i_t <= "01101110";
wait for 10 ns;

ei_t <= '0';
i_t <= "01101111";
wait for 10 ns;

ei_t <= '0';
i_t <= "01110000";
wait for 10 ns;

ei_t <= '0';
i_t <= "01110001";
wait for 10 ns;

ei_t <= '0';
i_t <= "01110010";
wait for 10 ns;

ei_t <= '0';
i_t <= "01110011";
wait for 10 ns;

ei_t <= '0';
i_t <= "01110100";
wait for 10 ns;

ei_t <= '0';
i_t <= "01110101";
wait for 10 ns;

ei_t <= '0';
i_t <= "01110110";
wait for 10 ns;

ei_t <= '0';
i_t <= "01110111";
wait for 10 ns;

ei_t <= '0';
i_t <= "01111000";
wait for 10 ns;

ei_t <= '0';
i_t <= "01111001";
wait for 10 ns;

ei_t <= '0';
i_t <= "01111010";
wait for 10 ns;

ei_t <= '0';
i_t <= "01111011";
wait for 10 ns;

ei_t <= '0';
i_t <= "01111100";
wait for 10 ns;

ei_t <= '0';
i_t <= "01111101";
wait for 10 ns;

ei_t <= '0';
i_t <= "01111110";
wait for 10 ns;

ei_t <= '0';
i_t <= "01111111";
wait for 10 ns;

ei_t <= '0';
i_t <= "10000000";
wait for 10 ns;

ei_t <= '0';
i_t <= "10000001";
wait for 10 ns;

ei_t <= '0';
i_t <= "10000010";
wait for 10 ns;

ei_t <= '0';
i_t <= "10000011";
wait for 10 ns;

ei_t <= '0';
i_t <= "10000100";
wait for 10 ns;

ei_t <= '0';
i_t <= "10000101";
wait for 10 ns;

ei_t <= '0';
i_t <= "10000110";
wait for 10 ns;

ei_t <= '0';
i_t <= "10000111";
wait for 10 ns;

ei_t <= '0';
i_t <= "10001000";
wait for 10 ns;

ei_t <= '0';
i_t <= "10001001";
wait for 10 ns;

ei_t <= '0';
i_t <= "10001010";
wait for 10 ns;

ei_t <= '0';
i_t <= "10001011";
wait for 10 ns;

ei_t <= '0';
i_t <= "10001100";
wait for 10 ns;

ei_t <= '0';
i_t <= "10001101";
wait for 10 ns;

ei_t <= '0';
i_t <= "10001110";
wait for 10 ns;

ei_t <= '0';
i_t <= "10001111";
wait for 10 ns;

ei_t <= '0';
i_t <= "10010000";
wait for 10 ns;

ei_t <= '0';
i_t <= "10010001";
wait for 10 ns;

ei_t <= '0';
i_t <= "10010010";
wait for 10 ns;

ei_t <= '0';
i_t <= "10010011";
wait for 10 ns;

ei_t <= '0';
i_t <= "10010100";
wait for 10 ns;

ei_t <= '0';
i_t <= "10010101";
wait for 10 ns;

ei_t <= '0';
i_t <= "10010110";
wait for 10 ns;

ei_t <= '0';
i_t <= "10010111";
wait for 10 ns;

ei_t <= '0';
i_t <= "10011000";
wait for 10 ns;

ei_t <= '0';
i_t <= "10011001";
wait for 10 ns;

ei_t <= '0';
i_t <= "10011010";
wait for 10 ns;

ei_t <= '0';
i_t <= "10011011";
wait for 10 ns;

ei_t <= '0';
i_t <= "10011100";
wait for 10 ns;

ei_t <= '0';
i_t <= "10011101";
wait for 10 ns;

ei_t <= '0';
i_t <= "10011110";
wait for 10 ns;

ei_t <= '0';
i_t <= "10011111";
wait for 10 ns;

ei_t <= '0';
i_t <= "10100000";
wait for 10 ns;

ei_t <= '0';
i_t <= "10100001";
wait for 10 ns;

ei_t <= '0';
i_t <= "10100010";
wait for 10 ns;

ei_t <= '0';
i_t <= "10100011";
wait for 10 ns;

ei_t <= '0';
i_t <= "10100100";
wait for 10 ns;

ei_t <= '0';
i_t <= "10100101";
wait for 10 ns;

ei_t <= '0';
i_t <= "10100110";
wait for 10 ns;

ei_t <= '0';
i_t <= "10100111";
wait for 10 ns;

ei_t <= '0';
i_t <= "10101000";
wait for 10 ns;

ei_t <= '0';
i_t <= "10101001";
wait for 10 ns;

ei_t <= '0';
i_t <= "10101010";
wait for 10 ns;

ei_t <= '0';
i_t <= "10101011";
wait for 10 ns;

ei_t <= '0';
i_t <= "10101100";
wait for 10 ns;

ei_t <= '0';
i_t <= "10101101";
wait for 10 ns;

ei_t <= '0';
i_t <= "10101110";
wait for 10 ns;

ei_t <= '0';
i_t <= "10101111";
wait for 10 ns;

ei_t <= '0';
i_t <= "10110000";
wait for 10 ns;

ei_t <= '0';
i_t <= "10110001";
wait for 10 ns;

ei_t <= '0';
i_t <= "10110010";
wait for 10 ns;

ei_t <= '0';
i_t <= "10110011";
wait for 10 ns;

ei_t <= '0';
i_t <= "10110100";
wait for 10 ns;

ei_t <= '0';
i_t <= "10110101";
wait for 10 ns;

ei_t <= '0';
i_t <= "10110110";
wait for 10 ns;

ei_t <= '0';
i_t <= "10110111";
wait for 10 ns;

ei_t <= '0';
i_t <= "10111000";
wait for 10 ns;

ei_t <= '0';
i_t <= "10111001";
wait for 10 ns;

ei_t <= '0';
i_t <= "10111010";
wait for 10 ns;

ei_t <= '0';
i_t <= "10111011";
wait for 10 ns;

ei_t <= '0';
i_t <= "10111100";
wait for 10 ns;

ei_t <= '0';
i_t <= "10111101";
wait for 10 ns;

ei_t <= '0';
i_t <= "10111110";
wait for 10 ns;

ei_t <= '0';
i_t <= "10111111";
wait for 10 ns;

ei_t <= '0';
i_t <= "11000000";
wait for 10 ns;

ei_t <= '0';
i_t <= "11000001";
wait for 10 ns;

ei_t <= '0';
i_t <= "11000010";
wait for 10 ns;

ei_t <= '0';
i_t <= "11000011";
wait for 10 ns;

ei_t <= '0';
i_t <= "11000100";
wait for 10 ns;

ei_t <= '0';
i_t <= "11000101";
wait for 10 ns;

ei_t <= '0';
i_t <= "11000110";
wait for 10 ns;

ei_t <= '0';
i_t <= "11000111";
wait for 10 ns;

ei_t <= '0';
i_t <= "11001000";
wait for 10 ns;

ei_t <= '0';
i_t <= "11001001";
wait for 10 ns;

ei_t <= '0';
i_t <= "11001010";
wait for 10 ns;

ei_t <= '0';
i_t <= "11001011";
wait for 10 ns;

ei_t <= '0';
i_t <= "11001100";
wait for 10 ns;

ei_t <= '0';
i_t <= "11001101";
wait for 10 ns;

ei_t <= '0';
i_t <= "11001110";
wait for 10 ns;

ei_t <= '0';
i_t <= "11001111";
wait for 10 ns;

ei_t <= '0';
i_t <= "11010000";
wait for 10 ns;

ei_t <= '0';
i_t <= "11010001";
wait for 10 ns;

ei_t <= '0';
i_t <= "11010010";
wait for 10 ns;

ei_t <= '0';
i_t <= "11010011";
wait for 10 ns;

ei_t <= '0';
i_t <= "11010100";
wait for 10 ns;

ei_t <= '0';
i_t <= "11010101";
wait for 10 ns;

ei_t <= '0';
i_t <= "11010110";
wait for 10 ns;

ei_t <= '0';
i_t <= "11010111";
wait for 10 ns;

ei_t <= '0';
i_t <= "11011000";
wait for 10 ns;

ei_t <= '0';
i_t <= "11011001";
wait for 10 ns;

ei_t <= '0';
i_t <= "11011010";
wait for 10 ns;

ei_t <= '0';
i_t <= "11011011";
wait for 10 ns;

ei_t <= '0';
i_t <= "11011100";
wait for 10 ns;

ei_t <= '0';
i_t <= "11011101";
wait for 10 ns;

ei_t <= '0';
i_t <= "11011110";
wait for 10 ns;

ei_t <= '0';
i_t <= "11011111";
wait for 10 ns;

ei_t <= '0';
i_t <= "11100000";
wait for 10 ns;

ei_t <= '0';
i_t <= "11100001";
wait for 10 ns;

ei_t <= '0';
i_t <= "11100010";
wait for 10 ns;

ei_t <= '0';
i_t <= "11100011";
wait for 10 ns;

ei_t <= '0';
i_t <= "11100100";
wait for 10 ns;

ei_t <= '0';
i_t <= "11100101";
wait for 10 ns;

ei_t <= '0';
i_t <= "11100110";
wait for 10 ns;

ei_t <= '0';
i_t <= "11100111";
wait for 10 ns;

ei_t <= '0';
i_t <= "11101000";
wait for 10 ns;

ei_t <= '0';
i_t <= "11101001";
wait for 10 ns;

ei_t <= '0';
i_t <= "11101010";
wait for 10 ns;

ei_t <= '0';
i_t <= "11101011";
wait for 10 ns;

ei_t <= '0';
i_t <= "11101100";
wait for 10 ns;

ei_t <= '0';
i_t <= "11101101";
wait for 10 ns;

ei_t <= '0';
i_t <= "11101110";
wait for 10 ns;

ei_t <= '0';
i_t <= "11101111";
wait for 10 ns;

ei_t <= '0';
i_t <= "11110000";
wait for 10 ns;

ei_t <= '0';
i_t <= "11110001";
wait for 10 ns;

ei_t <= '0';
i_t <= "11110010";
wait for 10 ns;

ei_t <= '0';
i_t <= "11110011";
wait for 10 ns;

ei_t <= '0';
i_t <= "11110100";
wait for 10 ns;

ei_t <= '0';
i_t <= "11110101";
wait for 10 ns;

ei_t <= '0';
i_t <= "11110110";
wait for 10 ns;

ei_t <= '0';
i_t <= "11110111";
wait for 10 ns;

ei_t <= '0';
i_t <= "11111000";
wait for 10 ns;

ei_t <= '0';
i_t <= "11111001";
wait for 10 ns;

ei_t <= '0';
i_t <= "11111010";
wait for 10 ns;

ei_t <= '0';
i_t <= "11111011";
wait for 10 ns;

ei_t <= '0';
i_t <= "11111100";
wait for 10 ns;

ei_t <= '0';
i_t <= "11111101";
wait for 10 ns;

ei_t <= '0';
i_t <= "11111110";
wait for 10 ns;

ei_t <= '0';
i_t <= "11111111";
wait for 10 ns;

ei_t <= '1';
i_t <= "00000000";
wait for 10 ns;

ei_t <= '1';
i_t <= "00000001";
wait for 10 ns;

ei_t <= '1';
i_t <= "00000010";
wait for 10 ns;

ei_t <= '1';
i_t <= "00000011";
wait for 10 ns;

ei_t <= '1';
i_t <= "00000100";
wait for 10 ns;

ei_t <= '1';
i_t <= "00000101";
wait for 10 ns;

ei_t <= '1';
i_t <= "00000110";
wait for 10 ns;

ei_t <= '1';
i_t <= "00000111";
wait for 10 ns;

ei_t <= '1';
i_t <= "00001000";
wait for 10 ns;

ei_t <= '1';
i_t <= "00001001";
wait for 10 ns;

ei_t <= '1';
i_t <= "00001010";
wait for 10 ns;

ei_t <= '1';
i_t <= "00001011";
wait for 10 ns;

ei_t <= '1';
i_t <= "00001100";
wait for 10 ns;

ei_t <= '1';
i_t <= "00001101";
wait for 10 ns;

ei_t <= '1';
i_t <= "00001110";
wait for 10 ns;

ei_t <= '1';
i_t <= "00001111";
wait for 10 ns;

ei_t <= '1';
i_t <= "00010000";
wait for 10 ns;

ei_t <= '1';
i_t <= "00010001";
wait for 10 ns;

ei_t <= '1';
i_t <= "00010010";
wait for 10 ns;

ei_t <= '1';
i_t <= "00010011";
wait for 10 ns;

ei_t <= '1';
i_t <= "00010100";
wait for 10 ns;

ei_t <= '1';
i_t <= "00010101";
wait for 10 ns;

ei_t <= '1';
i_t <= "00010110";
wait for 10 ns;

ei_t <= '1';
i_t <= "00010111";
wait for 10 ns;

ei_t <= '1';
i_t <= "00011000";
wait for 10 ns;

ei_t <= '1';
i_t <= "00011001";
wait for 10 ns;

ei_t <= '1';
i_t <= "00011010";
wait for 10 ns;

ei_t <= '1';
i_t <= "00011011";
wait for 10 ns;

ei_t <= '1';
i_t <= "00011100";
wait for 10 ns;

ei_t <= '1';
i_t <= "00011101";
wait for 10 ns;

ei_t <= '1';
i_t <= "00011110";
wait for 10 ns;

ei_t <= '1';
i_t <= "00011111";
wait for 10 ns;

ei_t <= '1';
i_t <= "00100000";
wait for 10 ns;

ei_t <= '1';
i_t <= "00100001";
wait for 10 ns;

ei_t <= '1';
i_t <= "00100010";
wait for 10 ns;

ei_t <= '1';
i_t <= "00100011";
wait for 10 ns;

ei_t <= '1';
i_t <= "00100100";
wait for 10 ns;

ei_t <= '1';
i_t <= "00100101";
wait for 10 ns;

ei_t <= '1';
i_t <= "00100110";
wait for 10 ns;

ei_t <= '1';
i_t <= "00100111";
wait for 10 ns;

ei_t <= '1';
i_t <= "00101000";
wait for 10 ns;

ei_t <= '1';
i_t <= "00101001";
wait for 10 ns;

ei_t <= '1';
i_t <= "00101010";
wait for 10 ns;

ei_t <= '1';
i_t <= "00101011";
wait for 10 ns;

ei_t <= '1';
i_t <= "00101100";
wait for 10 ns;

ei_t <= '1';
i_t <= "00101101";
wait for 10 ns;

ei_t <= '1';
i_t <= "00101110";
wait for 10 ns;

ei_t <= '1';
i_t <= "00101111";
wait for 10 ns;

ei_t <= '1';
i_t <= "00110000";
wait for 10 ns;

ei_t <= '1';
i_t <= "00110001";
wait for 10 ns;

ei_t <= '1';
i_t <= "00110010";
wait for 10 ns;

ei_t <= '1';
i_t <= "00110011";
wait for 10 ns;

ei_t <= '1';
i_t <= "00110100";
wait for 10 ns;

ei_t <= '1';
i_t <= "00110101";
wait for 10 ns;

ei_t <= '1';
i_t <= "00110110";
wait for 10 ns;

ei_t <= '1';
i_t <= "00110111";
wait for 10 ns;

ei_t <= '1';
i_t <= "00111000";
wait for 10 ns;

ei_t <= '1';
i_t <= "00111001";
wait for 10 ns;

ei_t <= '1';
i_t <= "00111010";
wait for 10 ns;

ei_t <= '1';
i_t <= "00111011";
wait for 10 ns;

ei_t <= '1';
i_t <= "00111100";
wait for 10 ns;

ei_t <= '1';
i_t <= "00111101";
wait for 10 ns;

ei_t <= '1';
i_t <= "00111110";
wait for 10 ns;

ei_t <= '1';
i_t <= "00111111";
wait for 10 ns;

ei_t <= '1';
i_t <= "01000000";
wait for 10 ns;

ei_t <= '1';
i_t <= "01000001";
wait for 10 ns;

ei_t <= '1';
i_t <= "01000010";
wait for 10 ns;

ei_t <= '1';
i_t <= "01000011";
wait for 10 ns;

ei_t <= '1';
i_t <= "01000100";
wait for 10 ns;

ei_t <= '1';
i_t <= "01000101";
wait for 10 ns;

ei_t <= '1';
i_t <= "01000110";
wait for 10 ns;

ei_t <= '1';
i_t <= "01000111";
wait for 10 ns;

ei_t <= '1';
i_t <= "01001000";
wait for 10 ns;

ei_t <= '1';
i_t <= "01001001";
wait for 10 ns;

ei_t <= '1';
i_t <= "01001010";
wait for 10 ns;

ei_t <= '1';
i_t <= "01001011";
wait for 10 ns;

ei_t <= '1';
i_t <= "01001100";
wait for 10 ns;

ei_t <= '1';
i_t <= "01001101";
wait for 10 ns;

ei_t <= '1';
i_t <= "01001110";
wait for 10 ns;

ei_t <= '1';
i_t <= "01001111";
wait for 10 ns;

ei_t <= '1';
i_t <= "01010000";
wait for 10 ns;

ei_t <= '1';
i_t <= "01010001";
wait for 10 ns;

ei_t <= '1';
i_t <= "01010010";
wait for 10 ns;

ei_t <= '1';
i_t <= "01010011";
wait for 10 ns;

ei_t <= '1';
i_t <= "01010100";
wait for 10 ns;

ei_t <= '1';
i_t <= "01010101";
wait for 10 ns;

ei_t <= '1';
i_t <= "01010110";
wait for 10 ns;

ei_t <= '1';
i_t <= "01010111";
wait for 10 ns;

ei_t <= '1';
i_t <= "01011000";
wait for 10 ns;

ei_t <= '1';
i_t <= "01011001";
wait for 10 ns;

ei_t <= '1';
i_t <= "01011010";
wait for 10 ns;

ei_t <= '1';
i_t <= "01011011";
wait for 10 ns;

ei_t <= '1';
i_t <= "01011100";
wait for 10 ns;

ei_t <= '1';
i_t <= "01011101";
wait for 10 ns;

ei_t <= '1';
i_t <= "01011110";
wait for 10 ns;

ei_t <= '1';
i_t <= "01011111";
wait for 10 ns;

ei_t <= '1';
i_t <= "01100000";
wait for 10 ns;

ei_t <= '1';
i_t <= "01100001";
wait for 10 ns;

ei_t <= '1';
i_t <= "01100010";
wait for 10 ns;

ei_t <= '1';
i_t <= "01100011";
wait for 10 ns;

ei_t <= '1';
i_t <= "01100100";
wait for 10 ns;

ei_t <= '1';
i_t <= "01100101";
wait for 10 ns;

ei_t <= '1';
i_t <= "01100110";
wait for 10 ns;

ei_t <= '1';
i_t <= "01100111";
wait for 10 ns;

ei_t <= '1';
i_t <= "01101000";
wait for 10 ns;

ei_t <= '1';
i_t <= "01101001";
wait for 10 ns;

ei_t <= '1';
i_t <= "01101010";
wait for 10 ns;

ei_t <= '1';
i_t <= "01101011";
wait for 10 ns;

ei_t <= '1';
i_t <= "01101100";
wait for 10 ns;

ei_t <= '1';
i_t <= "01101101";
wait for 10 ns;

ei_t <= '1';
i_t <= "01101110";
wait for 10 ns;

ei_t <= '1';
i_t <= "01101111";
wait for 10 ns;

ei_t <= '1';
i_t <= "01110000";
wait for 10 ns;

ei_t <= '1';
i_t <= "01110001";
wait for 10 ns;

ei_t <= '1';
i_t <= "01110010";
wait for 10 ns;

ei_t <= '1';
i_t <= "01110011";
wait for 10 ns;

ei_t <= '1';
i_t <= "01110100";
wait for 10 ns;

ei_t <= '1';
i_t <= "01110101";
wait for 10 ns;

ei_t <= '1';
i_t <= "01110110";
wait for 10 ns;

ei_t <= '1';
i_t <= "01110111";
wait for 10 ns;

ei_t <= '1';
i_t <= "01111000";
wait for 10 ns;

ei_t <= '1';
i_t <= "01111001";
wait for 10 ns;

ei_t <= '1';
i_t <= "01111010";
wait for 10 ns;

ei_t <= '1';
i_t <= "01111011";
wait for 10 ns;

ei_t <= '1';
i_t <= "01111100";
wait for 10 ns;

ei_t <= '1';
i_t <= "01111101";
wait for 10 ns;

ei_t <= '1';
i_t <= "01111110";
wait for 10 ns;

ei_t <= '1';
i_t <= "01111111";
wait for 10 ns;

ei_t <= '1';
i_t <= "10000000";
wait for 10 ns;

ei_t <= '1';
i_t <= "10000001";
wait for 10 ns;

ei_t <= '1';
i_t <= "10000010";
wait for 10 ns;

ei_t <= '1';
i_t <= "10000011";
wait for 10 ns;

ei_t <= '1';
i_t <= "10000100";
wait for 10 ns;

ei_t <= '1';
i_t <= "10000101";
wait for 10 ns;

ei_t <= '1';
i_t <= "10000110";
wait for 10 ns;

ei_t <= '1';
i_t <= "10000111";
wait for 10 ns;

ei_t <= '1';
i_t <= "10001000";
wait for 10 ns;

ei_t <= '1';
i_t <= "10001001";
wait for 10 ns;

ei_t <= '1';
i_t <= "10001010";
wait for 10 ns;

ei_t <= '1';
i_t <= "10001011";
wait for 10 ns;

ei_t <= '1';
i_t <= "10001100";
wait for 10 ns;

ei_t <= '1';
i_t <= "10001101";
wait for 10 ns;

ei_t <= '1';
i_t <= "10001110";
wait for 10 ns;

ei_t <= '1';
i_t <= "10001111";
wait for 10 ns;

ei_t <= '1';
i_t <= "10010000";
wait for 10 ns;

ei_t <= '1';
i_t <= "10010001";
wait for 10 ns;

ei_t <= '1';
i_t <= "10010010";
wait for 10 ns;

ei_t <= '1';
i_t <= "10010011";
wait for 10 ns;

ei_t <= '1';
i_t <= "10010100";
wait for 10 ns;

ei_t <= '1';
i_t <= "10010101";
wait for 10 ns;

ei_t <= '1';
i_t <= "10010110";
wait for 10 ns;

ei_t <= '1';
i_t <= "10010111";
wait for 10 ns;

ei_t <= '1';
i_t <= "10011000";
wait for 10 ns;

ei_t <= '1';
i_t <= "10011001";
wait for 10 ns;

ei_t <= '1';
i_t <= "10011010";
wait for 10 ns;

ei_t <= '1';
i_t <= "10011011";
wait for 10 ns;

ei_t <= '1';
i_t <= "10011100";
wait for 10 ns;

ei_t <= '1';
i_t <= "10011101";
wait for 10 ns;

ei_t <= '1';
i_t <= "10011110";
wait for 10 ns;

ei_t <= '1';
i_t <= "10011111";
wait for 10 ns;

ei_t <= '1';
i_t <= "10100000";
wait for 10 ns;

ei_t <= '1';
i_t <= "10100001";
wait for 10 ns;

ei_t <= '1';
i_t <= "10100010";
wait for 10 ns;

ei_t <= '1';
i_t <= "10100011";
wait for 10 ns;

ei_t <= '1';
i_t <= "10100100";
wait for 10 ns;

ei_t <= '1';
i_t <= "10100101";
wait for 10 ns;

ei_t <= '1';
i_t <= "10100110";
wait for 10 ns;

ei_t <= '1';
i_t <= "10100111";
wait for 10 ns;

ei_t <= '1';
i_t <= "10101000";
wait for 10 ns;

ei_t <= '1';
i_t <= "10101001";
wait for 10 ns;

ei_t <= '1';
i_t <= "10101010";
wait for 10 ns;

ei_t <= '1';
i_t <= "10101011";
wait for 10 ns;

ei_t <= '1';
i_t <= "10101100";
wait for 10 ns;

ei_t <= '1';
i_t <= "10101101";
wait for 10 ns;

ei_t <= '1';
i_t <= "10101110";
wait for 10 ns;

ei_t <= '1';
i_t <= "10101111";
wait for 10 ns;

ei_t <= '1';
i_t <= "10110000";
wait for 10 ns;

ei_t <= '1';
i_t <= "10110001";
wait for 10 ns;

ei_t <= '1';
i_t <= "10110010";
wait for 10 ns;

ei_t <= '1';
i_t <= "10110011";
wait for 10 ns;

ei_t <= '1';
i_t <= "10110100";
wait for 10 ns;

ei_t <= '1';
i_t <= "10110101";
wait for 10 ns;

ei_t <= '1';
i_t <= "10110110";
wait for 10 ns;

ei_t <= '1';
i_t <= "10110111";
wait for 10 ns;

ei_t <= '1';
i_t <= "10111000";
wait for 10 ns;

ei_t <= '1';
i_t <= "10111001";
wait for 10 ns;

ei_t <= '1';
i_t <= "10111010";
wait for 10 ns;

ei_t <= '1';
i_t <= "10111011";
wait for 10 ns;

ei_t <= '1';
i_t <= "10111100";
wait for 10 ns;

ei_t <= '1';
i_t <= "10111101";
wait for 10 ns;

ei_t <= '1';
i_t <= "10111110";
wait for 10 ns;

ei_t <= '1';
i_t <= "10111111";
wait for 10 ns;

ei_t <= '1';
i_t <= "11000000";
wait for 10 ns;

ei_t <= '1';
i_t <= "11000001";
wait for 10 ns;

ei_t <= '1';
i_t <= "11000010";
wait for 10 ns;

ei_t <= '1';
i_t <= "11000011";
wait for 10 ns;

ei_t <= '1';
i_t <= "11000100";
wait for 10 ns;

ei_t <= '1';
i_t <= "11000101";
wait for 10 ns;

ei_t <= '1';
i_t <= "11000110";
wait for 10 ns;

ei_t <= '1';
i_t <= "11000111";
wait for 10 ns;

ei_t <= '1';
i_t <= "11001000";
wait for 10 ns;

ei_t <= '1';
i_t <= "11001001";
wait for 10 ns;

ei_t <= '1';
i_t <= "11001010";
wait for 10 ns;

ei_t <= '1';
i_t <= "11001011";
wait for 10 ns;

ei_t <= '1';
i_t <= "11001100";
wait for 10 ns;

ei_t <= '1';
i_t <= "11001101";
wait for 10 ns;

ei_t <= '1';
i_t <= "11001110";
wait for 10 ns;

ei_t <= '1';
i_t <= "11001111";
wait for 10 ns;

ei_t <= '1';
i_t <= "11010000";
wait for 10 ns;

ei_t <= '1';
i_t <= "11010001";
wait for 10 ns;

ei_t <= '1';
i_t <= "11010010";
wait for 10 ns;

ei_t <= '1';
i_t <= "11010011";
wait for 10 ns;

ei_t <= '1';
i_t <= "11010100";
wait for 10 ns;

ei_t <= '1';
i_t <= "11010101";
wait for 10 ns;

ei_t <= '1';
i_t <= "11010110";
wait for 10 ns;

ei_t <= '1';
i_t <= "11010111";
wait for 10 ns;

ei_t <= '1';
i_t <= "11011000";
wait for 10 ns;

ei_t <= '1';
i_t <= "11011001";
wait for 10 ns;

ei_t <= '1';
i_t <= "11011010";
wait for 10 ns;

ei_t <= '1';
i_t <= "11011011";
wait for 10 ns;

ei_t <= '1';
i_t <= "11011100";
wait for 10 ns;

ei_t <= '1';
i_t <= "11011101";
wait for 10 ns;

ei_t <= '1';
i_t <= "11011110";
wait for 10 ns;

ei_t <= '1';
i_t <= "11011111";
wait for 10 ns;

ei_t <= '1';
i_t <= "11100000";
wait for 10 ns;

ei_t <= '1';
i_t <= "11100001";
wait for 10 ns;

ei_t <= '1';
i_t <= "11100010";
wait for 10 ns;

ei_t <= '1';
i_t <= "11100011";
wait for 10 ns;

ei_t <= '1';
i_t <= "11100100";
wait for 10 ns;

ei_t <= '1';
i_t <= "11100101";
wait for 10 ns;

ei_t <= '1';
i_t <= "11100110";
wait for 10 ns;

ei_t <= '1';
i_t <= "11100111";
wait for 10 ns;

ei_t <= '1';
i_t <= "11101000";
wait for 10 ns;

ei_t <= '1';
i_t <= "11101001";
wait for 10 ns;

ei_t <= '1';
i_t <= "11101010";
wait for 10 ns;

ei_t <= '1';
i_t <= "11101011";
wait for 10 ns;

ei_t <= '1';
i_t <= "11101100";
wait for 10 ns;

ei_t <= '1';
i_t <= "11101101";
wait for 10 ns;

ei_t <= '1';
i_t <= "11101110";
wait for 10 ns;

ei_t <= '1';
i_t <= "11101111";
wait for 10 ns;

ei_t <= '1';
i_t <= "11110000";
wait for 10 ns;

ei_t <= '1';
i_t <= "11110001";
wait for 10 ns;

ei_t <= '1';
i_t <= "11110010";
wait for 10 ns;

ei_t <= '1';
i_t <= "11110011";
wait for 10 ns;

ei_t <= '1';
i_t <= "11110100";
wait for 10 ns;

ei_t <= '1';
i_t <= "11110101";
wait for 10 ns;

ei_t <= '1';
i_t <= "11110110";
wait for 10 ns;

ei_t <= '1';
i_t <= "11110111";
wait for 10 ns;

ei_t <= '1';
i_t <= "11111000";
wait for 10 ns;

ei_t <= '1';
i_t <= "11111001";
wait for 10 ns;

ei_t <= '1';
i_t <= "11111010";
wait for 10 ns;

ei_t <= '1';
i_t <= "11111011";
wait for 10 ns;

ei_t <= '1';
i_t <= "11111100";
wait for 10 ns;

ei_t <= '1';
i_t <= "11111101";
wait for 10 ns;

ei_t <= '1';
i_t <= "11111110";
wait for 10 ns;

ei_t <= '1';
i_t <= "11111111";
wait for 10 ns;



		wait;
	end process;
end tb;

configuration cfg_tb of u_tb is
	for tb
	end for;
end cfg_tb;
