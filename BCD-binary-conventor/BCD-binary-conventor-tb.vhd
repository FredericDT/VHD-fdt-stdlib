library ieee;
use ieee.std_logic_1164.all;

entity u_tb is 
end u_tb;

architecture tb of u_tb is 

component bcd_binary_conventor is
port(
	i: in std_logic_vector(3 downto 0);
	o: out std_logic_vector(3 downto 0)
);	
end component;

signal i_t: std_logic_vector(3 downto 0);
signal o_t: std_logic_vector(3 downto 0);


begin
	u_tb_t: bcd_binary_conventor port map(
		i_t, o_t
	);

	process
	begin

		i_t <= "0000";
wait for 10 ns;

i_t <= "0001";
wait for 10 ns;

i_t <= "0010";
wait for 10 ns;

i_t <= "0011";
wait for 10 ns;

i_t <= "0100";
wait for 10 ns;

i_t <= "0101";
wait for 10 ns;

i_t <= "0110";
wait for 10 ns;

i_t <= "0111";
wait for 10 ns;

i_t <= "1000";
wait for 10 ns;

i_t <= "1001";
wait for 10 ns;

i_t <= "1010";
wait for 10 ns;

i_t <= "1011";
wait for 10 ns;

i_t <= "1100";
wait for 10 ns;

i_t <= "1101";
wait for 10 ns;

i_t <= "1110";
wait for 10 ns;

i_t <= "1111";
wait for 10 ns;



		wait;
	end process;
end tb;

configuration cfg_tb of u_tb is
	for tb
	end for;
end cfg_tb;
