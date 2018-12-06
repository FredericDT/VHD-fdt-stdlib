library ieee;
use ieee.std_logic_1164.all;

entity u_tb is 
end u_tb;

architecture tb of u_tb is 

component eight_three_prior_encoder is
port (
        ei: in std_logic;
        i: in std_logic_vector(7 downto 0); 
        a: out std_logic_vector(0 to 2); 
        gs, eo: out std_logic
);	
end component;

signal ei_t, gs_t, eo_t: std_logic;
signal i_t: std_logic_vector(7 downto 0);
signal a_t: std_logic_vector(0 to 2);

begin
	u_tb_t: eight_three_prior_encoder port map(
		ei_t, i_t, a_t, gs_t, eo_t
	);

	process
	begin
		ei_t <= '1';
		i_t <= "11111111";
                wait for 10 ns;

		ei_t <= '0';
		wait for 10 ns;

		i_t <= "00000000";
		wait for 10 ns;

		i_t <= "00000001";
		wait for 10 ns;

		i_t <= "00000011";
                wait for 10 ns;

                i_t <= "00000111";
                wait for 10 ns;

                i_t <= "00001111";
                wait for 10 ns;

                i_t <= "00011111";
                wait for 10 ns;

                i_t <= "00111111";
                wait for 10 ns;

                i_t <= "01111111";
                wait for 10 ns;

		wait;
	end process;
end tb;

configuration cfg_tb of u_tb is
	for tb
	end for;
end cfg_tb;
