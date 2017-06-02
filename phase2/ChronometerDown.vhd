library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ChronometerDown is
	port(CLOCK_50 : in std_logic;
	
		  --KEYS to control functions
		  
		  KEY : in std_logic_vector(3 downto 0);
		  
		  -- KEY(0) to stop chronometer
        -- KEY(1) to save lap/reset chronometer
        -- Keys are all active low
		  
		  SW : in std_logic_vector(3 downto 0);
		  
		  --Time Displays
        HEX0 : out std_logic_vector(6 downto 0); -- CS
        HEX1 : out std_logic_vector(6 downto 0); -- CS
        HEX2 : out std_logic_vector(6 downto 0); -- S
        HEX3 : out std_logic_vector(6 downto 0); -- S
        HEX4 : out std_logic_vector(6 downto 0); -- M
        HEX5 : out std_logic_vector(6 downto 0); -- M
		  HEX6 : out std_logic_vector(6 downto 0); -- Lap
        HEX7 : out std_logic_vector(6 downto 0); -- Lap
		  
		  --LEDs to test if keys are pressed
		  LEDG : out std_logic_vector(6 downto 0));
end ChronometerDown;

architecture Behavioral of ChronometerDown is
	
	signal press : integer range 0 to 3 := 0;
	signal sec, min, s_sec, s_min : integer range 0 to 60 := 59;
	signal hour, s_hour : integer range 0 to 99 := 99;
	signal clk, clk3, clk5, setMin, setSec, setHour : std_logic := '0';
	signal h2BCD1, h2BCD, m2BCD1, m2BCD, s2BCD1, s2BCD, h2Dis1, h2Dis, m2Dis1, m2Dis, s2Dis1, s2Dis : std_logic_vector(7 downto 0);
	signal db_KEY0, db_KEY1, db_KEY3 : std_logic;
	
begin
		
		--Begin Convert minutes, seconds and centiseconds to 7Segments
		bin2BCD: entity work.Bin2BCD(Behavioral)
						port map(binIn  => std_logic_vector(to_unsigned(sec,8)),
									binIn1 => std_logic_vector(to_unsigned(min,8)),
									binIn2 => std_logic_vector(to_unsigned(hour,8)),
									bcdMS  => s2BCD1,	--Most Significant Second Digit
									bcdLS  => s2BCD,	--Least Significant Second Digit
									bcdMS1 => m2BCD1,	--Most Significant Minute Digit
									bcdLS1 => m2BCD,	--Least Significant Minute Digit
									bcdMS2 => h2BCD1,	--Most Significant Hour Digit
									bcdLS2 => h2BCD);	--Least Significant Hour Digit
									
		b7segH2 : entity work.Bin7SegDecoder(Behavioral) --Most Significant Hour Digit
						port map(binInput => h2BCD1(3 downto 0),
									decOut_n => h2Dis1(6 downto 0));
						
		b7segL2 : entity work.Bin7SegDecoder(Behavioral) --Least Significant Hour Digit
						port map(binInput => h2BCD(3 downto 0),
									decOut_n => h2Dis(6 downto 0));
		
		b7segH1 : entity work.Bin7SegDecoder(Behavioral) --Most Significant Second Digit
						port map(binInput => s2BCD1(3 downto 0),
									decOut_n =>	s2Dis1(6 downto 0));
				
		b7segL1 : entity work.Bin7SegDecoder(Behavioral) --Least Significant Second Digit
						port map(binInput => s2BCD(3 downto 0),
									decOut_n => s2Dis(6 downto 0));
						
		b7segH : entity work.Bin7SegDecoder(Behavioral) --Most Significant Minute Digit
						port map(binInput => m2BCD1(3 downto 0),
									decOut_n => m2Dis1(6 downto 0));
						
		b7segL : entity work.Bin7SegDecoder(Behavioral) --Least Significant Minute Digit
						port map(binInput => m2BCD(3 downto 0),
									decOut_n => m2Dis(6 downto 0));
		--End Convert minutes, seconds and centiseconds to 7Segments
		
		--Frequency Dividers
		freqDiv: entity work.freqDivider(Behavioral) 	--Generate Clock with 1Hz frequency
						generic map(DIV_FACTOR => 50E6)
						port map(clkIn => CLOCK_50,
									clkOut => clk);
		
		freqDiv2: entity work.freqDivider(Behavioral) 	--Generate Clock with 3Hz frequency
						generic map(DIV_FACTOR => 15E6)
						port map(clkIn => CLOCK_50,
									clkOut => clk3);
		
		freqDiv3: entity work.freqDivider(Behavioral) 	--Generate Clock with 5Hz frequency
						generic map(DIV_FACTOR => 10E6)
						port map(clkIn => CLOCK_50,
									clkOut => clk5);
		
		--Debounce Units
		db0: entity work.debouncer(v1) 						--Debounce for KEY(0)
					generic map(clock_frequency => 50.0E6,
									window_duration => 0.0)
					port map(clock => CLOCK_50,
								dirty => not KEY(0),
								clean => db_KEY0);
								
		db1: entity work.debouncer(v1) 						--Debounce for KEY(1)
					generic map(clock_frequency => 50.0E6,
									window_duration => 0.0)
					port map(clock => CLOCK_50,
								dirty => not KEY(1),
								clean => db_KEY1);
		
		db3: entity work.debouncer(v1) 						--Debounce for KEY(3)
					generic map(clock_frequency => 50.0E6,
									window_duration => 0.0)
					port map(clock => CLOCK_50,
								dirty => not KEY(3),
								clean => db_KEY3);
		
	
	--Seconds
	setSecs: entity work.Set(Behavioral)
						generic map(max => 59)
						port map(clk => clk5,
									sin => db_KEY1 and setSec,
									sout => db_KEY0 and setSec,
									count => s_sec);
	
	--Minutes
	setMins: entity work.Set(Behavioral)
						generic map(max => 59)
						port map(clk => clk5,
									sin => db_KEY1 and setMin,
									sout => db_KEY0 and setMin,
									count => s_min);
									
	--Hours
	setHours: entity work.Set(Behavioral)
						generic map(max => 99)
						port map(clk => clk5,
									sin => db_KEY1 and setHour,
									sout => db_KEY0 and setHour,
									count => s_hour);
	
	
	--Process to set seconds, minutes or hours
	--Begin
	process(clk3)
	begin
		--Set Hours(setHour = '1') or Minutes(setMin = '1') or Seconds(setSec = '1')
		if(rising_edge(clk3)) then
			if(db_KEY3 = '1' and SW(0) = '1') then
				
				if(setHour = '1') then
					setMin <= '1';
					setHour <= '0';
					setSec <= '0';
				elsif(setMin = '1') then
					setSec <= '1';
					setMin <= '0';
					setHour <= '0';
				else
					setHour <= '1';
					setMin <= '0';
					setSec <= '0';
				end if;
					
			elsif(SW(0) = '0') then
				setHour <= '0';
				setMin <= '0';
				setSec <= '0';
			end if;
		end if;
	end process;	
	--End	
	
	--Start HH:MM:SS counter	
	process(clk)
	begin	
		
		--Set once every centisecond
		
		if(rising_edge(clk)) then	
			
			if(SW(0) = '1') then	
				sec <= s_sec;
				min <= s_min;
				hour <= s_hour;
			else
			
				sec <= sec - 1;
				if(sec = 0) then
					sec <= 59;
					min <= min - 1;
						
					if(min = 0) then
						min <= 59;
						hour <= hour - 1;
						if(hour = 0) then
							hour <= s_hour;
							min <= s_min;
							sec <= s_sec;
						end if;
					end if;
				end if;
			end if;
		end if;
		--End HH:MM:SS counter
		
		--They blink with frequency = 1Hz
	
		--Hours
		if(SW(0) = '1' and clk = '1' and setHour = '1') then
			HEX7 <= "1111111";
			HEX6 <= "1111111";
		else
			HEX7 <= h2Dis1(6 downto 0); --Most Significant Hour Digit
			HEX6 <= h2Dis(6 downto 0);  --Least Significant Hour Digit
		end if;
		
		--Minutes
		if(SW(0) = '1' and clk = '1' and setMin = '1') then
			HEX5 <= "1111111";
			HEX4 <= "1111111";
		else
			HEX5 <= m2Dis1(6 downto 0); --Most Significant Minute Digit
			HEX4 <= m2Dis(6 downto 0); --Least Significant Minute Digit
		end if;
		
		--Seconds
		if(SW(0) = '1' and clk = '1' and setSec = '1') then
			HEX3 <= "1111111";
			HEX2 <= "1111111";
		else
			HEX3 <= s2Dis1(6 downto 0); --Most Significant Second Digit
			HEX2 <= s2Dis(6 downto 0); --Least Significant Second Digit
		end if;
		HEX1 <= "1111111";
		HEX0 <= "1111111";
	end process;
	
	LEDG(0) <= db_KEY0; --On if key(0) is pressed after debounce
	LEDG(2) <= db_KEY1; --On if key(1) is pressed after debounce	

end Behavioral;