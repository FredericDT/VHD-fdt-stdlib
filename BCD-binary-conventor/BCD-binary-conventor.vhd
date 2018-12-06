library ieee;
use ieee.std_logic_1164.all;

entity bcd_binary_conventor is
port(
	i: in std_logic_vector(3 downto 0);
	o: out std_logic_vector(3 downto 0)
);
end entity bcd_binary_conventor;

architecture bcd_binary_conventor_func of bcd_binary_conventor is
begin
	process(i)
	begin
		o <= i;
		if i(3) = '1' then
			if not (i(2) = '0' and i(1) = '0') then
				o <= "0000";
			end if;
		end if;
	end process;
end architecture bcd_binary_conventor_func;
