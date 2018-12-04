library ieee;
use ieee.std_logic_1164.all;
--use ieee.std_logic_arith.all;

entity ted_tb is 
end ted_tb;

architecture tb of ted_tb is 

component three_eight_decoder is 
port(
	a0, a1, a2, e1, e2_n, e3_n: in std_logic;
	y0, y1, y2, y3, y4, y5, y6, y7: out std_logic
);
end component;

signal a0_t, a1_t, a2_t, e1_t, e2_n_t, e3_n_t, y0_t, y1_t, y2_t, y3_t, y4_t, y5_t, y6_t, y7_t: std_logic;

begin
	u_ted: three_eight_decoder port map(
		a0_t, a1_t, a2_t, e1_t, e2_n_t, e3_n_t, y0_t, y1_t, y2_t, y3_t, y4_t, y5_t, y6_t, y7_t
	);

	process
		variable err_cnt: integer := 0;

	begin
	-- case 1
		a0_t <= '0';
		a1_t <= '0';
		a2_t <= '0';
		e1_t <= '0';
		e2_n_t <= '0';
		e2_n_t <= '0';

		wait for 10 ns;
		
		e1_t <= '1';

		wait for 10 ns;

		a0_t <= '1';

		wait for 10 ns;

		a0_t <= '0';
		a1_t <= '1';

		wait for 10 ns;

		a0_t <= '1';

		wait for 10 ns;

		a2_t <= '1';
		a0_t <= '0';
		a1_t <= '0';

		wait for 10 ns;

		a0_t <= '1';

                wait for 10 ns;

                a0_t <= '0';
                a1_t <= '1';

                wait for 10 ns;

                a0_t <= '1';

                wait for 10 ns;

		wait;
	end process;
end tb;

configuration cfg_tb of ted_tb is
	for tb
	end for;
end cfg_tb;
