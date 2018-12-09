library ieee;

use ieee.std_logic_1164.all;

entity finte_machine_p164_21 is
port (
	k: in std_logic;
	clk: in std_logic;
	o: out std_logic_vector(1 downto 0)
);
end entity;
architecture finte_machine_p164_21_func of finte_machine_p164_21 is
	type state is (s0, s1, s2, s3);
	signal s: state;
begin
	process(clk)
	begin
		if (clk'event and clk = '1') then
			case s is
				when s0 =>
					if k = '0' then
						s <= s1;
					end if;
				when s1 =>
					if k = '1' then
						s <= s2;
					end if;
				when s2 =>
					if k = '0' then
						s <= s3;
					end if;
				when s3 =>
					if k = '1' then
						s <= s0;
					end if;
			end case;	
		end if;
	end process;
	o <= "00" when s = s0 else "01" when s = s1 else "10" when s = s2 else "11";
end architecture;
