library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity gery_8_add_minus_counter is
port (
	y: in std_logic;
	reset: in std_logic;
	clk: in std_logic;
	en: in std_logic;
	o: out std_logic_vector(2 downto 0)
);
end entity;

architecture gery_8_add_minus_counter_func of gery_8_add_minus_counter is
begin
	process(clk)
	variable count: std_logic_vector(2 downto 0) := "000";
	begin
		if (en = '1' and clk'event and clk = '1') then
			if (reset = '1') then
				count := "000";
			elsif y = '1' then
				count := count + 1;
			else
				count := count - 1;
			end if;

		end if;
	
		o <= std_logic_vector(shift_right(unsigned(count), 1)) xor count;

	end process;
end architecture;
