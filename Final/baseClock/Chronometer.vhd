library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Chronometer is
	port(CLOCK_50 : in std_logic;
			enable : in std_logic_vector(1 downto 0);
		  --KEYS to control functions
		  
		  KEY : in std_logic_vector(1 downto 0);
		  
		  -- KEY(0) to stop chronometer
        -- KEY(1) to save lap/reset chronometer
        -- Keys are all active low
		  
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
end Chronometer;

architecture Behavioral of Chronometer is
	
	signal svcs,cs, lap, press, count : integer range 0 to 99 := 0;
	signal svsec, svmin, sec, min : integer range 0 to 60 := 0;	
	signal set : integer;
	signal clk, clk100, stop, long : std_logic;
	signal cs2BCD1, cs2BCD, m2BCD1, m2BCD, s2BCD1, s2BCD, svcs2BCD1, svcs2BCD, svm2BCD1, svm2BCD,
	svs2BCD1, svs2BCD, cs2Dis1, cs2Dis, m2Dis1, m2Dis, s2Dis1, s2Dis, svcs2Dis1, svcs2Dis, 
	svm2Dis1, svm2Dis, svs2Dis1, svs2Dis, msLap, lsLap, msLap2Dis, lsLap2Dis : std_logic_vector(7 downto 0);
	signal db_KEY1, db_KEY0 : std_logic;
	
begin
		
		--Convert minutes, seconds and centiseconds to 7Segments
		--Begin
		bin2BCD: entity work.Bin2BCD(Behavioral)
						port map(binIn  => std_logic_vector(to_unsigned(sec,8)),
									binIn1 => std_logic_vector(to_unsigned(min,8)),
									binIn2 => std_logic_vector(to_unsigned(cs,8)),
									bcdMS  => s2BCD1,	--Most Significant Second Digit
									bcdLS  => s2BCD,	--Least Significant Second Digit
									bcdMS1 => m2BCD1,	--Most Significant Minute Digit
									bcdLS1 => m2BCD,	--Least Significant Minute Digit
									bcdMS2 => cs2BCD1,	--Most Significant CentiSecond Digit
									bcdLS2 => cs2BCD);	--Least Significant CentiSecond Digit
									
		b7segH2 : entity work.Bin7SegDecoder(Behavioral) --Most Significant CentiSecond Digit
						port map(binInput => cs2BCD1(3 downto 0),
									decOut_n => cs2Dis1(6 downto 0));
						
		b7segL2 : entity work.Bin7SegDecoder(Behavioral) --Least Significant CentiSecond Digit
						port map(binInput => cs2BCD(3 downto 0),
									decOut_n => cs2Dis(6 downto 0));
		
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
		--End
		
		
		--Convert saved values to 7Segements
		--Begin
		bin2BCD2: entity work.Bin2BCD(Behavioral)
						port map(binIn  => std_logic_vector(to_unsigned(svsec,8)),
									binIn1 => std_logic_vector(to_unsigned(svmin,8)),
									binIn2 => std_logic_vector(to_unsigned(svcs,8)),
									bcdMS  => svs2BCD1,	--Most Significant SavedSecond Digit
									bcdLS  => svs2BCD,	--Least Significant SavedSecond Digit
									bcdMS1 => svm2BCD1,	--Most Significant SavedMinute Digit
									bcdLS1 => svm2BCD,	--Least Significant SavedMinute Digit
									bcdMS2 => svcs2BCD1,	--Most Significant SavedCentiSecond Digit
									bcdLS2 => svcs2BCD);	--Least Significant SavedCentiSecond Digit
									
		b7segH5 : entity work.Bin7SegDecoder(Behavioral) --Most Significant Saved CentiSecond Digit
						port map(binInput => svcs2BCD1(3 downto 0),
									decOut_n => svcs2Dis1(6 downto 0));
						
		b7segL5 : entity work.Bin7SegDecoder(Behavioral) --Least Significant Saved CentiSecond Digit
						port map(binInput => svcs2BCD(3 downto 0),
									decOut_n => svcs2Dis(6 downto 0));
		
		b7segH4 : entity work.Bin7SegDecoder(Behavioral) --Most Significant Saved Second Digit
						port map(binInput => svs2BCD1(3 downto 0),
									decOut_n =>	svs2Dis1(6 downto 0));
				
		b7segL4 : entity work.Bin7SegDecoder(Behavioral) --Least Significant Saved Second Digit
						port map(binInput => svs2BCD(3 downto 0),
									decOut_n => svs2Dis(6 downto 0));
						
		b7segH3 : entity work.Bin7SegDecoder(Behavioral) --Most Significant Saved Minute Digit
						port map(binInput => svm2BCD1(3 downto 0),
									decOut_n => svm2Dis1(6 downto 0));
						
		b7segL3 : entity work.Bin7SegDecoder(Behavioral) --Least Significant Saved Minute Digit
						port map(binInput => svm2BCD(3 downto 0),
									decOut_n => svm2Dis(6 downto 0));
		--End 
		
		--Convert lap values to 7Segements
		--Begin
		bin2BCD3: entity work.Bin2BCD1(Behavioral)
						port map(binIn  => std_logic_vector(to_unsigned(lap,8)),
									binIn1  => (others => '-'), 
									bcdMS  => msLap,	--Most Significant Lap Digit
									bcdLS  => lsLap);	--Least Significant Lap Digit
									
		b7segH6 : entity work.Bin7SegDecoder(Behavioral) --Most Significant Lap Digit
						port map(binInput => msLap(3 downto 0),
									decOut_n => msLap2Dis(6 downto 0));
						
		b7segL6 : entity work.Bin7SegDecoder(Behavioral) --Least Significant Lap Digit
						port map(binInput => lsLap(3 downto 0),
									decOut_n => lsLap2Dis(6 downto 0));
		--End
		
		--Frequency Dividers
		--Begin
		freqDiv: entity work.freqDivider(Behavioral) 	--Generate Clock with 1Hz frequency
						generic map(DIV_FACTOR => 50E6)
						port map(clkIn => CLOCK_50,
									clkOut => clk);
		
		freqDiv2: entity work.freqDivider(Behavioral) 	--Generate Clock with 100Hz frequency
						generic map(DIV_FACTOR => 50E4)
						port map(clkIn => CLOCK_50,
									clkOut => clk100);
		--End
		
		--Debounce Units for Keys
		--Begin
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
		--End
		
	process(db_KEY0)
	begin
		
		--Stop the chronometer when KEY(0) is clicked
		if(db_KEY0 = '1') then

			if(stop = '1') then
				stop <= '0';

			else
				stop <= '1';
				
			end if;
			
		end if;

	end process;
	
	--Start MM:SS:CS counter	
	process(clk100)
	begin	
		
		--Set once every centisecond
		if(enable = "01") then
			if(rising_edge(clk)) then
				if(db_KEY1 = '1') then
			
					lap <= lap + 1;		--Increment Lap Value
					
					if(lap > 99) then
						lap <= 1;
					end if;
					
					press <= press + 1;	--Detect if KEY(1) is press 3 seconds
				
					if(press >= 3) then
						press <= 3;
						lap <=0;
					end if;
				else
					press <= 0;
				end if;
			end if;
			if(rising_edge(clk100)) then	
				
				if(db_KEY1 = '1') then
					set <= 300;
					
				else
					set <= set - 1;
					if(set <= 0) then
						set <= 0;
					end if;
				end if;
				
				if(stop = '0') then		--Chronometer counting
					cs <= cs + 1;
					
					if(db_KEY1 = '1') then
						svcs <= cs;
						svsec <= sec;
						svmin <= min;
					end if;
					
				elsif(stop = '1') then	--Chronometer stopped
					
					if(press = 3) then	--If KEY(1) has long press the chronometer is reseted
						cs <= 0;
						sec <= 0;
						min <= 0;
					
					else
						cs <= cs;
					
					end if;
				end if;
				
				if(cs = 99) then
					cs <= 0;
					sec <= sec + 1;
					
					if(sec = 59) then
						sec <= 0;
						min <= min + 1;
						
						if(min = 59) then
							min <= 0;
						end if;
					end if;
				end if;
			end if;
			--End MM:SS:CS counter
			
			--When KEY(1) is short pressed a "lap" is saved
			--They blink with frequency = 1Hz
		
			--Minutes, Seconds, Centiseconds	
			if(set > 0 and press < 3) then
				if(clk = '1') then
					HEX5 <= "1111111";
					HEX4 <= "1111111";
					HEX3 <= "1111111";
					HEX2 <= "1111111";
					HEX1 <= "1111111";
					HEX0 <= "1111111";
				else
					HEX5 <= svm2Dis1(6 downto 0); --Most Significant Saved Minute Digit
					HEX4 <= svm2Dis(6 downto 0); --Least Significant Saved Minute Digit
					HEX3 <= svs2Dis1(6 downto 0); --Most Significant Saved Second Digit
					HEX2 <= svs2Dis(6 downto 0); --Least Significant Saved Second Digit
					HEX1 <= svcs2Dis1(6 downto 0); --Most Significant Saved CentiSecond Digit
					HEX0 <= svcs2Dis(6 downto 0); --Least Significant Saved CentiSecond Digit
				end if;
				
			else
				HEX5 <= m2Dis1(6 downto 0); --Most Significant Minute Digit
				HEX4 <= m2Dis(6 downto 0); --Least Significant Minute Digit
				HEX3 <= s2Dis1(6 downto 0); --Most Significant Second Digit
				HEX2 <= s2Dis(6 downto 0); --Least Significant Second Digit
				HEX1 <= cs2Dis1(6 downto 0); --Most Significant CentiSecond Digit
				HEX0 <= cs2Dis(6 downto 0); --Least Significant CentiSecond Digit
			
			
			
			HEX7 <= msLap2Dis(6 downto 0);  --Most Significant Lap Digit
			HEX6 <= lsLap2Dis(6 downto 0);  --Least Significant Lap Digit
			end if;
		end if;
	end process;
	
	LEDG(0) <= db_KEY0; --On if key(0) is pressed after debounce
	LEDG(2) <= db_KEY1; --On if key(1) is pressed after debounce	

end Behavioral;