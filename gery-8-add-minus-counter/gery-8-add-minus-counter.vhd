library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity gery_8_add_minus_counter is
port (
	add_minus_func: in std_logic;
	reset: in std_logic;
	clk: in std_logic;
	o: out std_logic_vector(2 downto 0)
);
end entity;

architecture gery_8_add_minus_counter_func of gery_8_add_minus_counter is
begin
	process(clk)
	variable count: std_logic_vector(2 downto 0);
	begin
		if (clk'event and clk = '1') then
			if (reset = '1') then
				count := "000";
			elsif add_minus_func = '1' then
				count := count + 1;
			else
				count := count - 1;
			end if;

		end if;
		o(2) <= count(2);
		o(1) <= count(1) xor count(2);
		o(0) <= count(0) xor count(2) xor count(1);
	end process;
end architecture;
