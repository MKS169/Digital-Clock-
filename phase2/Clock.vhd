library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Clock is
	port(CLOCK_50   : in std_logic;
		  KEY   		 : in std_logic_vector(3 downto 0);
		  HEX7, HEX6, HEX5, HEX4, HEX3, HEX2, LEDG : out std_logic_vector(6 downto 0));
end Clock;

architecture Behavioral of Clock is
	
	signal sec, min, hour : std_logic_vector(7 downto 0);
	signal s_clk, s_key0, s_key1, s_key2, s_key3: std_logic;
	signal s_en, s_LongOut2, s_LongOut1, s_LongOut0 : std_logic_vector(1 downto 0);
	signal s_bcdMSs, s_bcdLSs, s_bcdMSm, s_bcdLSm, s_bcdMSh, s_bcdLSh : std_logic_vector(7 downto 0);
	signal s_MHour, s_LHour, s_MMin, s_LMin, s_MSec, s_LSec, s_clk2: std_logic_vector(6 downto 0);
	type state is (setup, run);
	signal s_state : state := run;
	type state2 is (clc0, clc1, clc2);
	signal PS, NS : state2 := clc0;
	
begin
db0: entity work.DebounceUnit(Behavioral)
			port map(refCLK => CLOCK_50,
						dirtyIn => KEY(0),
						pulsedOut => s_key0);

db1: entity work.DebounceUnit(Behavioral)
			port map(refCLK => CLOCK_50,
						dirtyIn => KEY(1),
						pulsedOut => s_key1);

db2: entity work.DebounceUnit(Behavioral)
			port map(refCLK => CLOCK_50,
						dirtyIn => KEY(2),
						pulsedOut => s_key2);
						
db3: entity work.DebounceUnit(Behavioral)
			port map(refCLK => CLOCK_50,
						dirtyIn => KEY(3),
						pulsedOut => s_key3);						
				
freqDiv: entity work.freqDivider(Behavioral)
				generic map(DIV_FACTOR => 50E6)	-- fout is 50E6 / 50E6 = 1Hz = 1sec
				port map(clkIn		=> CLOCK_50,
							clkOut2  => s_clk2,
							clkOut	=> s_clk);

pressKEY0: entity work.press(Behavioral)
				port map(clk		=> CLOCK_50,
							pressed	=> s_key0,
							pulseOut => s_LongOut0);

pressKEY1: entity work.press(Behavioral)
				port map(clk		=> CLOCK_50,
							pressed	=> s_key1,
							pulseOut => s_LongOut1);

pressKEY2: entity work.press(Behavioral)
				port map(clk		=> CLOCK_50,
							pressed	=> s_key2,
							pulseOut => s_LongOut2);
						
leds: entity work.VerifyLeds(Behavioral)
			port map(keys => KEY,
						ledg => LEDG(6 downto 0));
						
workClock: entity work.workClock(Behavioral)
					port map(start 	=>	not s_key2,
								clk		=>	s_clk,
								keys		=>	not KEY,
								outSec	=> sec,
								outMin	=> min,
								outH	=> hour);
		
bin2BCD: entity work.Bin2BCD(Behavioral)
				port map(binIn  => sec,
							binIn1 => min,
							binIn2 => hour,
							bcdMS  => s_bcdMSs,
							bcdLS  => s_bcdLSs,
							bcdMS1 => s_bcdMSm,
							bcdLS1 => s_bcdLSm,
							bcdMS2 => s_bcdMSh,
							bcdLS2 => s_bcdLSh);
							
disp3 : entity work.Bin7SegDecoder(Behavioral) --secsMS
	port map(binInput => s_bcdMSs(3 downto 0),
				decOut_n => s_MSec);
				
disp2 : entity work.Bin7SegDecoder(Behavioral) --secsLS
	port map(binInput => s_bcdLSs(3 downto 0),
				decOut_n => s_LSec);
				
disp5 : entity work.Bin7SegDecoder(Behavioral) --minsMS
	port map(binInput => s_bcdMSm(3 downto 0),
				decOut_n => s_MMin);
				
disp4 : entity work.Bin7SegDecoder(Behavioral) --minsLS
	port map(binInput => s_bcdLSm(3 downto 0),
				decOut_n => s_LMin);
	
disp7 : entity work.Bin7SegDecoder(Behavioral) --hoursMS
	port map(binInput => s_bcdMSh(3 downto 0),
				decOut_n => s_MHour);
				
disp6 : entity work.Bin7SegDecoder(Behavioral) --hoursLS
	port map(binInput => s_bcdLSh(3 downto 0),
				decOut_n => s_LHour);
	
	HEX7(6 downto 0) <= s_MHour;
	HEX6(6 downto 0) <= s_LHour;
	HEX5(6 downto 0) <= s_MMin;
	HEX4(6 downto 0) <= s_LMin;
	HEX3(6 downto 0) <= s_MSec;
	HEX2(6 downto 0) <= s_LSec;
end Behavioral;