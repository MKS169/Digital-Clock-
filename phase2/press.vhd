library ieee;
use ieee.std_logic_1164.all;

entity press is
	port( clk 		: in std_logic;
			pressed 	: in std_logic;
			pulseOut : out std_logic_vector(1 downto 0));
end press;

architecture Behavioral of press is

	signal s_count : natural := 0;
	
begin
	process(clk)
	begin
		if(rising_edge(clk)) then
			if(pressed = '1') then
				s_count <= s_count + 1;
				if(s_count >= 3) then
					pulseOut <= "11";
				end if;
			elsif(pressed = '0') then
				s_count <= 0;
				pulseOut <= "01";
			end if;
		end if;
	end process;
end Behavioral;