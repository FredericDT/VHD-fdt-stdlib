library ieee;
use ieee.std_logic_1164.all;

entity sddtd_tb is 
end sddtd_tb;

architecture tb of sddtd_tb is 

component seven_dash_digit_tube_decoder is 
port(
        d: in std_logic_vector(3 downto 0);
        o: out std_logic_vector(0 to 6)
);
end component seven_dash_digit_tube_decoder;

signal d_t: std_logic_vector(3 downto 0);
signal o_t: std_logic_vector(0 to 6);

begin
	u_sddtd: seven_dash_digit_tube_decoder port map(
		d_t, o_t
	);

	process
		variable err_cnt: integer := 0;

	begin
	-- case 1
		d_t <= "0000";
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

		wait;
	end process;
end tb;

configuration cfg_tb of sddtd_tb is
	for tb
	end for;
end cfg_tb;
