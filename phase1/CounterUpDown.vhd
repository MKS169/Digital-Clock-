library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity CounterUpDown is
	port(clk   : in std_logic;
		  sin   : in std_logic;
		  sout  : in std_logic;
		  openC : in std_logic;
		  count : out std_logic_vector(7 downto 0));
end CounterUpDown;

architecture Behavioral of CounterUpDown is

signal s_count : integer := 99;

begin
	
	process(clk)
	begin
		if(s_count >= 0 and s_count <=99) then
			if(rising_edge(clk)) then
				if(sin = '1' and openC = '1' and s_count /= 0) then
					s_count <= s_count-1;
				elsif(sout = '1' and s_count /= 99) then
					s_count <= s_count+1;
				end if;
			end if;
		end if;
	end process;
	count <= std_logic_vector(to_signed(s_count, 8));
	
end Behavioral;