library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mod_60_counter is
port(
	clk: in std_logic;
	pset: in std_logic_vector(5 downto 0);
	co: out std_logic;
	clr_n: in std_logic;
	load_n: in std_logic;
	qout: out std_logic_vector(5 downto 0)
);
end entity mod_60_counter;

architecture mod_60_counter_func of mod_60_counter is
	signal counter: std_logic_vector(5 downto 0);
begin
	process(clk, clr_n)
	begin
		if clr_n = '0' then
			counter <= "000000";
		elsif (clk'event and clk = '1') then
			if load_n = '0' then
				counter <= pset;
			else
				if counter = 60 then
					counter <= "000000";
				else
					counter <= counter + 1;
				end if;
			end if;
		end if;
		qout <= counter;
	end process;
	co <= '1' when ieee.std_logic_unsigned."="(counter, "111100") else '0';
end architecture;

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

library ieee;

use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity fdt is
port(
	clk, clr_n : in std_logic;
	co : out std_logic;
	led_low : out std_logic_vector(6 downto 0);
	led_high : out std_logic_vector(3 downto 0)
);
end entity;

architecture fdt_f of fdt is
	component mod_60_counter is
	port(
        	clk: in std_logic;
        	pset: in std_logic_vector(5 downto 0);
        	co: out std_logic;
        	clr_n: in std_logic;
        	load_n: in std_logic;
        	qout: out std_logic_vector(5 downto 0)
	);
	end component;

	component seven_segments_shared_ground_driver is
        port (
        	lt: in std_logic;
        	db: in std_logic_vector(3 downto 0);
        	bi: in std_logic;
        	bio: out std_logic;
        	segout: out std_logic_vector(6 downto 0)
        );
	end component;

	signal bio : std_logic;
	signal db : std_logic_vector(5 downto 0);

	signal db_l : std_logic_vector(3 downto 0);
begin
	m60c : mod_60_counter port map (
		clk, "000000", co, clr_n, '1', db
	);

	sssgd : seven_segments_shared_ground_driver port map (
		'1', db_l, '1', bio, led_low
	);

	process(clk, clr_n)
		variable c : std_logic_vector(5 downto 0);
		variable h : std_logic_vector(3 downto 0);
		variable limit : integer;
	begin
		limit := 0;
		c := db;
		h := "0000";

		while limit <= 10 and c >= 10 loop
			h := h + 1;
			c := c - 10;
			limit := limit + 1;
		end loop;
		
		db_l <= c(3) & c(2) & c(1) & c(0);
		led_high <= h;
	
	end process;
end architecture;
