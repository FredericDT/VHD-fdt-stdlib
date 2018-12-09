library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity bcd_mod_10_counter is
port(
	clk: in std_logic;
	pset: in std_logic_vector(3 downto 0);
	co: out std_logic;
	clr_n: in std_logic;
	load_n: in std_logic;
	qout: out std_logic_vector(3 downto 0)
);
end entity bcd_mod_10_counter;

architecture bcd_mod_10_counter_func of bcd_mod_10_counter_func is
	signal counter: unsigned(3 downto 0);
begin
	process(clk, clr_n)
	begin
		if clr_n = '0' then
			counter <= "0000";
		elsif (clk'event and clk = '1') then
			if load_n = '0' then
				counter <= pset;
			else
				if counter = 9 then
					counter <= "0000";
				else
					counter <= counter + 1;
				end if;
			end if;
		end if;
		qout <= counter;
	end process;
	co <= '1' when counter = "1001" else '0';
end architecture bcd_mod_10_counter_func;
