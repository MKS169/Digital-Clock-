library ieee;
use ieee.std_logic_1164.all;

entity timer is
	port( clk 		: in std_logic;
			start 	: in std_logic;
			pulseOut : out std_logic);
end timer;

architecture Behavioral of timer is

	signal s_count : natural := 0;

begin		
		
		process(clk)
		begin
			if(rising_edge(clk)) then
				if(start = '1') then
					s_count <= s_count +1;
					if(s_count >= 3 and start = '0') then
						pulseout <= '1';
					elsif(s_count < 3 and start = '0') then
						pulseOut <= '0';
					end if;
				else
					s_count <= 0;
				end if;
			end if;
		end process;
end Behavioral;