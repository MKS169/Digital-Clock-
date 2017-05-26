library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock is
	port(CLOCK_50   : in std_logic;
		  KEY   		 : in std_logic_vector(3 downto 0);
		  HEX7, HEX6, HEX5, HEX4, HEX3, HEX2 : out std_logic_vector(7 downto 0));
end Clock;

architecture Behavioral of Clock is

	signal sec   : integer := 0;
	signal min   : integer := 0;
	signal hour  : integer := 0;
	signal s_clk : std_logic;
	signal s_bcdMS, s_bcdLS, s_bcdMS1, s_bcdLS1, s_bcdMS2, s_bcdLS2 : std_logic_vector(7 downto 0);
	
begin
freqDiv: entity work.freqDivider(Behavioral)
				generic map(DIV_FACTOR => 50E6)	-- fout is 50E6 / 50E6 = 1Hz = 1sec
				port map(clkIn		=> CLOCK_50,
							clkOut	=> s_clk);
							
	process(s_clk)
	begin
		if(rising_edge(s_clk)) then
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
				hour = 0;
			end if;
		end if;
	end process;
	
bin2BCD: entity work.Bin2BCD(Behavioral)
				port map(binIn  => std_logic_vector(to_unsigned(sec,8)),
							binIn1 => std_logic_vector(to_unsigned(min,8)),
							binIn2 => std_logic_vector(to_unsigned(hour,8)),
							bcdMS  => s_bcdMS,
							bcdLS  => s_bcdLS,
							bcdMS1 => s_bcdMS1,
							bcdLS1 => s_bcdLS1,
							bcdMS2 => s_bcdMS2,
							bcdLS2 => s_bcdLS2);
							
b7segH : entity work.Bin7SegDecoder(Behavioral) --secsMS
	port map(binInput => s_bcDMS(3 downto 0),
				decOut_n => HEX3(6 downto 0));
				
b7segL : entity work.Bin7SegDecoder(Behavioral) --secsLS
	port map(binInput => s_bcDLS(3 downto 0),
				decOut_n => HEX2(6 downto 0));
				
b7segH1 : entity work.Bin7SegDecoder(Behavioral) --minsMS
	port map(binInput => s_bcDMS1(3 downto 0),
				decOut_n => HEX5(6 downto 0));
				
b7segL1 : entity work.Bin7SegDecoder(Behavioral) --minsLS
	port map(binInput => s_bcDLS1(3 downto 0),
				decOut_n => HEX4(6 downto 0));
	
b7segH2 : entity work.Bin7SegDecoder(Behavioral) --hoursMS
	port map(binInput => s_bcDMS2(3 downto 0),
				decOut_n => HEX7(6 downto 0));
				
b7segL2 : entity work.Bin7SegDecoder(Behavioral) --hoursLS
	port map(binInput => s_bcDLS2(3 downto 0),
				decOut_n => HEX6(6 downto 0));
				
end Behavioral;