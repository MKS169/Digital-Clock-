library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity LongPress is
port(clk  : in std_logic;
	  en   : in std_logic;
	  outP : out std_logic);
end LongPress;

architecture Behavioral of LongPress is

	signal s_count : integer := 0;
	signal s_clk, start : std_logic;
	signal s_clk2 : std_logic_vector(6 downto 0);
	
begin

freqDiv: entity work.freqDivider(Behavioral)
				generic map(DIV_FACTOR => 50E6) --freq 1hz = 1sec
				port map(clkIn   => clk,
							clkOut2 => s_clk2,
							clkOut  => s_clk);
							
	process(s_clk)
	begin
		if(rising_edge(s_clk)) then
			if(en = '1') then
				s_count <= s_count + 1;
				if(s_count >= 3) then
					outP <= '1';
				else
					outP <= '0';
				end if;
			else
				s_count <= 0;
			end if;
		end if;
	end process;

end Behavioral;