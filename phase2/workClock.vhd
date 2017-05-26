library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity workClock is
port(start : in std_logic;
	  clk   : in std_logic;
	  keys  : in std_logic_vector(3 downto 0);
	  outSec, outMin, outH : out std_logic_vector(7 downto 0));
end workClock;

architecture Behavioral of workClock is

	signal sec, min, hour, count : integer := 0;

begin
	process(start)
	begin			
		if(rising_edge(clk)) then
			if(start = '1') then
				sec <= sec + 1;
				if(sec = 59) then
					sec <= 0;
					min <= min + 1;
				end if;
				if(min = 59) then
					min <= 0;
					hour <= hour + 1;
				end if;
				if(hour = 23) then
					hour <= 0;
				end if;
			end if;
		end if;
			if(keys(1)='1') then
				hour <= hour - 1;
			elsif(keys(0)='1') then
				hour <= hour + 1;
			end if;
	end process;
					
	outSec <= std_logic_vector(to_unsigned(sec, 8));
	outMin <= std_logic_vector(to_unsigned(min, 8));
	outH <= std_logic_vector(to_unsigned(hour, 8));
end Behavioral;