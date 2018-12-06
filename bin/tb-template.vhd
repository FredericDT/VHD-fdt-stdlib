-- auto generated tb by fdt
-- 
library ieee;
use ieee.std_logic_1164.all;

entity u_tb is 
end u_tb;

architecture tb of u_tb is 

component <entity_name> is
<ports_section>	
end component;

<signals_section>

begin
	u_tb_t: <entity_name> port map(
		<ports_names>
	);

	process
	begin

		<test_cases>

		wait;
	end process;
end tb;

configuration cfg_tb of u_tb is
	for tb
	end for;
end cfg_tb;
