library ieee;
use ieee.std_logic_1164.all;

entity three_eight_decoder is
port(
        a0, a1, a2, e1, e2_n, e3_n: in std_logic;
        y0, y1, y2, y3, y4, y5, y6, y7: out std_logic
);
end three_eight_decoder;
architecture ted_func of three_eight_decoder is
begin
	y0 <= not e1 or e2_n or e3_n or a2 or a1 or a0;
	y1 <= not e1 or e2_n or e3_n or a2 or a1 or not a0;
	y2 <= not e1 or e2_n or e3_n or a2 or not a1 or a0;
	y3 <= not e1 or e2_n or e3_n or a2 or not a1 or not a0;
	y4 <= not e1 or e2_n or e3_n or not a2 or a1 or a0;
	y5 <= not e1 or e2_n or e3_n or not a2 or a1 or not a0;
	y6 <= not e1 or e2_n or e3_n or not a2 or not a1 or a0;
	y7 <= not e1 or e2_n or e3_n or not a2 or not a1 or not a0;
end architecture ted_func;
