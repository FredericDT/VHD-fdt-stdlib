library ieee;
use ieee.std_logic_1164.all;

entity eight_three_prior_encoder is
port (
	ei: in std_logic;
	i: in std_logic_vector(7 downto 0);
	a: out std_logic_vector(0 to 2);
	gs, eo: out std_logic
);
end entity eight_three_prior_encoder;

architecture eight_three_prior_encoder_func of eight_three_prior_encoder is
begin
	process(ei, i)
	begin
		gs <= '0';
		eo <= '1';
		if ei = '1' then 
			a <= "111";
			gs <= '1';
		else
			if i(7) = '0' then
				a <= "000";
			elsif i(6) = '0' then
				a <= "001";
			elsif i(5) = '0' then
				a <= "010";
			elsif i(4) = '0' then
				a  <= "011";
			elsif i(3) = '0' then
				a <= "100";
			elsif i(2) = '0' then
				a <= "101";
			elsif i(1) = '0' then
				a <= "110";
			else
				a <= "111";
				if i(0) = '1' then 
					gs <= '1';
					eo <= '0';
				end if;
			end if;
		end if;
			
	end process;
end architecture eight_three_prior_encoder_func;
