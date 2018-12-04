library ieee;
use ieee.std_logic_1164.all;

entity seven_dash_digit_tube_decoder is 
port(
	--lt_n, bi_rbo_n, rbi_n: in std_logic;
	d: in std_logic_vector(3 downto 0);
	o: out std_logic_vector(0 to 6)	
);
end entity seven_dash_digit_tube_decoder;

architecture sddtd_func of seven_dash_digit_tube_decoder is
begin
	--process
	o(0) <= '1' when d = "0000" or d = "0010" or d = "0011" or d = "0111" or d = "1000" or d = "1001" else '0';
	o(1) <= '0' when d = "0101" or d = "0110" else '1';
	o(2) <= '0' when d = "0010" else '1';
	o(3) <= '0' when d = "0001" or d = "0100" or d = "0111" or d = "1001" else '1';
	o(4) <= '1' when d = "0000" or d = "0010" or d = "0110" or d = "1000" else '0';
	o(5) <= '0' when d = "0001" or d = "0010" or d = "0011" or d = "0111" else '1';
	o(6) <= '0' when d = "0000" or d = "0001" or d = "0111" else '1';	
	--end process
end architecture sddtd_func;
