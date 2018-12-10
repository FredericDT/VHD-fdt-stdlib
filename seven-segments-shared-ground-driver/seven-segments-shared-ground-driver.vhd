library ieee;
use ieee.std_logic_1164.all;

entity seven_segments_shared_ground_driver is
	port (
	lt: in std_logic;
	db: in std_logic_vector(3 downto 0);
	bi: in std_logic;
	bio: out std_logic;
	segout: out std_logic_vector(6 downto 0)
	     );
end entity;

architecture seven_segments_shared_ground_driver_func of seven_segments_shared_ground_driver is
begin
	process(lt, db, bi)
	begin
		if lt = '0' then 
			bio <= '1';
			if bi = '1' then
				segout <= "1111111";
			else 
				segout <= "0000000";
			end if;
		else 
			if bi = '0' and db = "0000" then
				segout <= "0000000";
				bio <= '0';
			end if;
			bio <= '1';
			case db is
				when "0000" => segout <= "0111111";
				when "0001" => segout <= "0000110";
				when "0010" => segout <= "1011011";
				when "0011" => segout <= "1001111";
				when "0100" => segout <= "1100110";
				when "0101" => segout <= "1101101";
				when "0110" => segout <= "1111100";
				when "0111" => segout <= "0000111";
				when "1000" => segout <= "1111111";
				when "1001" => segout <= "1100111";
				when others => segout <= "0000000";
			end case;
		end if;
	end process;
end architecture;
