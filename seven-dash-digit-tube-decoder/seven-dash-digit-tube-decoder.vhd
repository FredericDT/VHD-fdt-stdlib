library ieee;
use ieee.std_logic_1164.all;

entity seven_dash_digit_tube_decoder is 
port(
	lt_n, rbi_n: in std_logic;
	bi_rbo_n: inout std_logic;
	d: in std_logic_vector(3 downto 0);
	o: out std_logic_vector(0 to 6)	
);
end entity seven_dash_digit_tube_decoder;

architecture sddtd_func of seven_dash_digit_tube_decoder is
begin
	process
	begin
		if (bi_rbo_n = '1' and lt_n = '1') then
			if rbi_n = '1' and d = "0000" then
				o <= "1111110";
			elsif d = "0001" then
				o <= "0110000";
			elsif d = "0010" then
				o <= "1101101";
			elsif d = "0011" then 
				o <= "1111001";
			elsif d = "0100" then 
				o <= "0110011";
			elsif d = "0101" then
				o <= "1011011";
			elsif d = "0110" then 
				o <= "0011111";
			elsif d = "0111" then
				o <= "1110000";
			elsif d = "1000" then
				o <= "1111111";
			elsif d = "1001" then
				o <= "1110011";
			elsif d = "1010" then
				o <= "0001101";
			elsif d = "1011" then
				o <= "0011001";
			elsif d = "1100" then
				o <= "0110011";
			elsif d = "1101" then
				o <= "1001011";
			elsif d = "1110" then
				o <= "0001111";
			elsif d = "1111" then
				o <= "0110000";
			end if;
		elsif bi_rbo_n = '0' or (lt_n = '1' and rbi_n = '0') then
			o <= "0000000";
		elsif lt_n <= '0' then
			o <= "1111111";
			bi_rbo_n <= '1';
		end if;
	--o(0) <= '1' when d = "0000" or d = "0010" or d = "0011" or d = "0111" or d = "1000" or d = "1001" else '0';
	--o(1) <= '0' when d = "0101" or d = "0110" else '1';
	--o(2) <= '0' when d = "0010" else '1';
	--o(3) <= '0' when d = "0001" or d = "0100" or d = "0111" or d = "1001" else '1';
	--o(4) <= '1' when d = "0000" or d = "0010" or d = "0110" or d = "1000" else '0';
	--o(5) <= '0' when d = "0001" or d = "0010" or d = "0011" or d = "0111" else '1';
	--o(6) <= '0' when d = "0000" or d = "0001" or d = "0111" else '1';	
	end process;
end architecture sddtd_func;
