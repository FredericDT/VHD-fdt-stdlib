-- auto generated tb by fdt
-- 
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity u_tb is 
end u_tb;

architecture tb of u_tb is 

component gery_8_add_minus_counter is
port (
        y: in std_logic;
        reset: in std_logic;
        clk: in std_logic;
	en: in std_logic;
        o: out std_logic_vector(2 downto 0)
);
end component;

signal y_t: std_logic;
signal reset_t: std_logic;
signal clk_t: std_logic;
signal en_t: std_logic;
signal o_t: std_logic_vector(2 downto 0);

begin
	u_tb_t: gery_8_add_minus_counter port map(
		y_t, reset_t, clk_t, en, o_t
	);

	process
	begin
		en_t <= '1';
		y_t <= '1';
		reset_t <= '1';
		clk_t <= '0';
		clk_t <= '1';
		wait for 10 ns;
		reset_t <= '0';
		for i in 0 to 100 loop
			clk_t <= '1';
			wait for 10 ns;
			clk_t <= '0';
			wait for 10 ns; 
		end loop;
		wait;
	end process;
end tb;

configuration cfg_tb of u_tb is
	for tb
	end for;
end cfg_tb;
