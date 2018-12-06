library ieee;
use ieee.std_logic_1164.all;

entity sddtd_tb is 
end sddtd_tb;

architecture tb of sddtd_tb is 

component seven_dash_digit_tube_decoder is 
port(
        lt_n, rbi_n: in std_logic;
        bi_rbo_n: inout std_logic;
        d: in std_logic_vector(3 downto 0);
        o: out std_logic_vector(0 to 6)
);
end component seven_dash_digit_tube_decoder;

signal lt_n_t: std_logic;
signal rbi_n_t: std_logic;
signal bi_rbo_n_t: std_logic;
signal d_t: std_logic_vector(3 downto 0);
signal o_t: std_logic_vector(0 to 6);

begin
	u_sddtd: seven_dash_digit_tube_decoder port map(
		lt_n_t, rbi_n_t, bi_rbo_n_t, d_t, o_t
	);

	process
	begin
		bi_rbo_n_t <= '1';
		lt_n_t <= '1';
		rbi_n_t <= '1';
		d_t <= "0000";
		wait for 10 ns;
		
		rbi_n_t <= '0';
		wait for 10 ns;

		d_t <= "0001";
                wait for 10 ns;		
		    
                d_t <= "0010";
                wait for 10 ns;
                    
                d_t <= "0011";
                wait for 10 ns;
                    
                d_t <= "0100";
                wait for 10 ns;
                    
                d_t <= "0101";
                wait for 10 ns;
                    
                d_t <= "0110";
                wait for 10 ns;
                    
                d_t <= "0111";
                wait for 10 ns;
                    
                d_t <= "1000";
                wait for 10 ns;
                    
                d_t <= "1001";
                wait for 10 ns;

		d_t <= "1010";
                wait for 10 ns;

                d_t <= "1011";
                wait for 10 ns;

                d_t <= "1100";
                wait for 10 ns;

                d_t <= "1101";
                wait for 10 ns;

                d_t <= "1110";
                wait for 10 ns;

                d_t <= "1111";
                wait for 10 ns;

                --bi_rbo_n_t <= null;
		lt_n_t <= '0';
		wait for 10 ns;
		
		bi_rbo_n_t <= '0';
		wait for 10 ns;

		wait;
	end process;
end tb;

configuration cfg_tb of sddtd_tb is
	for tb
	end for;
end cfg_tb;
