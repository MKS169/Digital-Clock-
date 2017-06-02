library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;				--increment decrement shit

entity Alarm is
	port(CLOCK_50 : in std_logic;
			enable : in std_logic_vector(1 downto 0);
		  --KEYS and SW to control functions
		  
		  KEY : in std_logic_vector(3 downto 0);
		  
		  -- KEY(0) to increment current selection
        -- KEY(1) to decrement current selection
        -- KEY(3) to select hours, minutes or seconds
        -- Keys are all active low
		  
		  SW	: in std_logic_vector(3 downto 0);
		  
		  --SW(0) to enable adjust mode
		  --SW(1) to switch between 12h-24h 
		  
		  --Time Displays
        HEX0 : out std_logic_vector(6 downto 0); -- F/N
        HEX1 : out std_logic_vector(6 downto 0); -- F/O
        HEX2 : out std_logic_vector(6 downto 0); -- O/Empty
       -- HEX3 : out std_logic_vector(6 downto 0); -- Empty
        HEX4 : out std_logic_vector(6 downto 0); -- M
        HEX5 : out std_logic_vector(6 downto 0); -- M
        HEX6 : out std_logic_vector(6 downto 0); -- H
        HEX7 : out std_logic_vector(6 downto 0); -- H
		  
		  --LEDs to test if keys are pressed
		  LEDG : out std_logic_vector(8 downto 0);
		  
		  --Audio
		  i2c_sclk : inout std_logic;
		  i2c_sdat : inout std_logic;
		  aud_xck     : out std_logic;
		  aud_bclk    : in  std_logic;
		  aud_adclrck : in  std_logic;
		  aud_adcdat  : in  std_logic;
		  aud_dacdat  : out std_logic);
end Alarm;

architecture Behavioral of Alarm is
	
	signal press, press1 : integer range 0 to 3 := 0;
	signal sec, min, a_sec, a_min : integer range 0 to 60 := 0;
	signal hour, a_hour : integer range 0 to 23 := 0;
	signal clk, clk3, clk5, setMin, setHour, al_bip, bipClk : std_logic;
	signal h2BCD1, h2BCD, m2BCD1, m2BCD, s2BCD1, s2BCD, h2Dis1, h2Dis, m2Dis1, m2Dis, s2Dis1, s2Dis,
	a_h2BCD1, a_h2BCD, a_m2BCD1, a_m2BCD, a_h2Dis1, a_h2Dis, a_m2Dis1, a_m2Dis : std_logic_vector(7 downto 0);
	signal db_KEY0, db_KEY1, db_KEY3 : std_logic;
	
begin
	
	--Convert Hours and Minutes of Alarm to 7 segments
	--Begin
		a_bin2BCD: entity work.Bin2BCD1(Behavioral)
						port map(binIn  => std_logic_vector(to_unsigned(a_min,8)),
									binIn1 => std_logic_vector(to_unsigned(a_hour,8)),
									bcdMS  => a_m2BCD1,	--Most Significant Minute Digit
									bcdLS  => a_m2BCD,	--Least Significant Minute Digit
									bcdMS1 => a_h2BCD1,	--Most Significant Hour Digit
									bcdLS1 => a_h2BCD);	--Least Significant Hour Digit
		
		a_b7segH1 : entity work.Bin7SegDecoder(Behavioral) --Most Significant Alarm Minute Digit
						port map(binInput => a_m2BCD1(3 downto 0),
									decOut_n => a_m2Dis1(6 downto 0));
						
		a_b7segL1 : entity work.Bin7SegDecoder(Behavioral) --Least Significant Alarm Minute Digit
						port map(binInput => a_m2BCD(3 downto 0),
									decOut_n => a_m2Dis(6 downto 0));
	
		a_b7segH2 : entity work.Bin7SegDecoder(Behavioral) --Most Significant Alarm Hour Digit
						port map(binInput => a_h2BCD1(3 downto 0),
									decOut_n => a_h2Dis1(6 downto 0));
						
		a_b7segL2 : entity work.Bin7SegDecoder(Behavioral) --Least Significant Alarm Hour Digit
						port map(binInput => a_h2BCD(3 downto 0),
									decOut_n => a_h2Dis(6 downto 0));
	--End
	
	--Frequency Dividers
	--Begin
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
	--End
	
	--Debounce Units for KEYs
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
							
		db3: entity work.debouncer(v1) 						--Debounce for KEY(2)
					generic map(clock_frequency => 50.0E6,
									window_duration => 0.0)
					port map(clock => CLOCK_50,
								dirty => not KEY(3),
								clean => db_KEY3);
	--End
	
	--Set Alarm
	--Begin
	--Minutes
	almsetMin: entity work.Set(Behavioral)
						generic map(max => 59)
						port map(clk => clk5,
									sin => db_KEY1 and setMin,
									sout => db_KEY0 and setMin,
									count => a_min);
									
	--Hours
	almsetHour: entity work.Set(Behavioral)
						generic map(max => 23)
						port map(clk => clk5,
									sin => db_KEY1 and setHour,
									sout => db_KEY0 and setHour,
									count => a_hour);
	--End
	
	--Clock
	clkIn: entity work.Clock(Behavioral)
					port map(CLOCK_50 => CLOCK_50,
								KEY => KEY,
								SW(0) => '0',
								SW(1) => '0',
								enable => "00",
								secOut => sec,
								minOut => min,
								hourOut => hour);
								
	--Audio
	audio: entity work.audio_tl(v1)
					port map(clock_50 => clock_50,
								enable => bipClk,
								i2c_sclk => i2c_sclk,
								i2c_sdat => i2c_sdat,
								aud_xck    => aud_xck,
								aud_bclk    => aud_bclk,
								aud_adclrck => aud_adclrck,
								aud_adcdat  => aud_adcdat,
								aud_dacdat  => aud_dacdat);
	
	--Process to set minutes or hours
	--Begin
	process(clk3)
	begin
		--Set Hours(cur_sel = 1) or Minutes(cur_sel = 2)
		if(rising_edge(clk3)) then
			
			if(db_KEY3 = '1' and SW(0) = '1') then
				
				if(setHour = '1') then
					setMin <= '1';
					setHour <= '0';
				else
					setMin <= '0';
					setHour <= '1';
				end if;
					
			elsif(SW(0) = '0') then
				setHour <= '0';
				setMin <= '0';
			end if;
		end if;
	end process;	
	--End	

	--Process to Start HH:MM:SS counter and display the clock	
	--Begin
	process(clk5)
	begin
		if(enable = "11") then
			if(rising_edge(clk5)) then
				if(a_min = min and a_hour = hour) then
					al_bip <= '1';
					bipClk <= '1';
					
				else
					al_bip <= '0';
					bipClk <= '0';
				end if;

				if(bipClk = '1') then
					bipClk <= '0';
				else
					bipClk <= '1';
				end if;
			end if;
			
			
			--The hours and minutes of alarm are set by the user
			--They blink with frequency = 1Hz when in set mod or when alarm = clock
			
			if(SW(1) = '1') then
				--Check when alarm hits
				if(al_bip = '1' and clk = '1') then
					HEX7 <= "1111111";
					HEX6 <= "1111111";
					HEX5 <= "1111111";
					HEX4 <= "1111111";
					LEDG(8) <= '0';
				else
				
					LEDG(8) <= '1';
					HEX7 <= a_h2Dis1(6 downto 0); --Most Significant Alarm Hour Digit
					HEX6 <= a_h2Dis(6 downto 0);  --Least Significant Alarm Hour Digit
					HEX5 <= a_m2Dis1(6 downto 0); --Most Significant Alarm Minute Digit
					HEX4 <= a_m2Dis(6 downto 0); --Least Significant Alarm Minute Digit
				end if;
		
				--On
				HEX2 <= "1111111"; --Empty
				HEX1 <= "1000000"; --O
				HEX0 <= "0101011"; --N
			else
				--Alarm Hours
				if(SW(0) = '1' and clk = '1' and setHour = '1') then
					HEX7 <= "1111111";
					HEX6 <= "1111111";
				else
					HEX7 <= a_h2Dis1(6 downto 0); --Most Significant Alarm Hour Digit
					HEX6 <= a_h2Dis(6 downto 0);  --Least Significant Alarm Hour Digit
				end if;
				
				--Alarm Minutes
				if(SW(0) = '1' and clk = '1' and setMin = '1') then
					HEX5 <= "1111111";
					HEX4 <= "1111111";
				else
					HEX5 <= a_m2Dis1(6 downto 0); --Most Significant Alarm Minute Digit
					HEX4 <= a_m2Dis(6 downto 0); --Least Significant Alarm Minute Digit
				end if;
				--Off
				HEX2 <= "1000000"; --O
				HEX1 <= "0001110"; --F
				HEX0 <= "0001110"; --F
				al_bip <= '0';
				bipClk <= '0';
			end if;
		end if;
	end process;
	--End
	
	LEDG(0) <= db_key0; --On if key(0) is pressed after debounce
	LEDG(2) <= db_key1; --On if key(1) is pressed after debounce
	LEDG(6) <= db_key3; --On if key(2) is pressed after debounce	

end Behavioral;