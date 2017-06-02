library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity AlarmSet is
	generic(max : integer := 0);
	port(clk   : in std_logic;
		  sin   : in std_logic;
		  sout  : in std_logic;
		  count : out integer);
end AlarmSet;

architecture Behavioral of AlarmSet is

signal s_count : integer := 0;

begin

	process(clk)
	begin
		if(s_count >= 0 and s_count <= max) then
			if(rising_edge(clk)) then
				if(sin = '1' and s_count >= 0) then
					s_count <= s_count - 1;
					if(s_count = 0) then
						s_count <= max;
					end if;
				elsif(sout = '1' and s_count <= max) then
					s_count <= s_count + 1;
					if(s_count = max) then
						s_count <= 0;
					end if;
				end if;
			end if;
		end if;
	end process;
	count <= s_count;
	
end Behavioral;