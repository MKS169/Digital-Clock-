library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity baseClock is
	port(CLOCK_50 : in std_logic;
		  
		  --KEYs and SWs to control
		  KEY : in std_logic_vector(3 downto 0);
		  
		  SW : in std_logic_vector(3 downto 0);
		  
		  --LEDs to indicate State
		  LEDR : out std_logic_vector(3 downto 0);
		  --LED for Alarm
		  LEDG : out std_logic_vector(8 downto 0);
		  
		  --Audio & LCD
		  lcd_on   : out   std_logic;
		  lcd_blon : out   std_logic;
		  lcd_rw   : out   std_logic;
		  lcd_en   : out   std_logic;
		  lcd_rs   : out   std_logic;
		  lcd_data : inout std_logic_vector(7 downto 0);

		  i2c_sclk : inout std_logic;
		  i2c_sdat : inout std_logic;
		  aud_xck     : out std_logic;
		  aud_bclk    : in  std_logic;
		  aud_adclrck : in  std_logic;
		  aud_adcdat  : in  std_logic;
		  aud_dacdat  : out std_logic;
		  
		  --Displays
		  HEX0 : out std_logic_vector(6 downto 0);
        HEX1 : out std_logic_vector(6 downto 0);
        HEX2 : out std_logic_vector(6 downto 0); 
        HEX3 : out std_logic_vector(6 downto 0); 
        HEX4 : out std_logic_vector(6 downto 0); 
        HEX5 : out std_logic_vector(6 downto 0); 
		  HEX6 : out std_logic_vector(6 downto 0); 
        HEX7 : out std_logic_vector(6 downto 0));
end baseClock;

architecture RTL of baseClock is

	signal enable : std_logic_vector(1 downto 0);
	signal xck_buf, dacdat_buf, xck_buf1, dacdat_buf1, db_KEY3, clk5 : std_logic;
	signal s_HEX0, s_HEX1, s_HEX2, s_HEX3, s_HEX4, s_HEX5, s_HEX6, s_HEX7 : std_logic_vector(6 downto 0);
	signal a_HEX0, a_HEX1, a_HEX2, a_HEX3, a_HEX4, a_HEX5, a_HEX6, a_HEX7 : std_logic_vector(6 downto 0);
	signal b_HEX0, b_HEX1, b_HEX2, b_HEX3, b_HEX4, b_HEX5, b_HEX6, b_HEX7 : std_logic_vector(6 downto 0);
	signal c_HEX0, c_HEX1, c_HEX2, c_HEX3, c_HEX4, c_HEX5, c_HEX6, c_HEX7 : std_logic_vector(6 downto 0);    

	
begin
	
	--Clock entity
	clk: entity work.Clock(Behavioral)
				port map(CLOCK_50 => CLOCK_50,
							enable => enable,
							SW => SW,
							KEY => KEY,
							HEX0 => s_HEX0,
							HEX1 => s_HEX1,
							HEX2 => s_HEX2,
							HEX3 => s_HEX3,
							HEX4 => s_HEX4,
							HEX5 => s_HEX5,
							HEX6 => s_HEX6,
							HEX7 => s_HEX7);
							
	--Chronometer entity
	chronometer: entity work.Chronometer(Behavioral)
							port map(CLOCK_50 => CLOCK_50,
										enable => enable,
										KEY => KEY(1 downto 0),
										HEX0 => a_HEX0,
										HEX1 => a_HEX1,
										HEX2 => a_HEX2,
										HEX3 => a_HEX3,
										HEX4 => a_HEX4,
										HEX5 => a_HEX5,
										HEX6 => a_HEX6,
										HEX7 => a_HEX7);
										
	--Chronometer Down entity
	chronometerDown: entity work.ChronometerDown(Behavioral)
								port map(CLOCK_50 => CLOCK_50,
											enable => enable,
											KEY => KEY,
											SW => SW,
											i2c_sclk => i2c_sclk,
											i2c_sdat => i2c_sdat,
											aud_xck    => xck_buf1,
											aud_bclk    => aud_bclk,
											aud_adclrck => aud_adclrck,
											aud_adcdat  => aud_adcdat,
											aud_dacdat  => dacdat_buf1,
											HEX2 => b_HEX2,
											HEX3 => b_HEX3,
											HEX4 => b_HEX4,
											HEX5 => b_HEX5,
											HEX6 => b_HEX6,
											HEX7 => b_HEX7);
											
	--Alarm entity
	alm: entity work.Alarm(Behavioral)
				port map(CLOCK_50 => CLOCK_50,
							enable => enable,
							KEY => KEY,
							SW => SW,
							i2c_sclk => i2c_sclk,
							i2c_sdat => i2c_sdat,
							aud_xck    => xck_buf,
							aud_bclk    => aud_bclk,
							aud_adclrck => aud_adclrck,
							aud_adcdat  => aud_adcdat,
							aud_dacdat  => dacdat_buf,
							HEX0 => c_HEX0,
							HEX1 => c_HEX1,
							HEX2 => c_HEX2,
							HEX4 => c_HEX4,
							HEX5 => c_HEX5,
							HEX6 => c_HEX6,
							HEX7 => c_HEX7,
							LEDG => LEDG);
							
	--LCD Display
	lcd: entity work.lcd_tl(v1)
					port map(clock_50 => CLOCK_50,
								enable => enable,
								lcd_on => lcd_on,
								lcd_blon => lcd_blon,
								lcd_rw => lcd_rw,
								lcd_en => lcd_en,
								lcd_rs => lcd_rs,
								lcd_data => lcd_data,
								i2c_sclk => i2c_sclk,
								i2c_sdat => i2c_sdat);
							
	--Debounce for KEY(3)	
	db3: entity work.debouncer(v1) 						
					generic map(clock_frequency => 50.0E6,
									window_duration => 0.0)
					port map(clock => CLOCK_50,
								dirty => not KEY(3),
								clean => db_KEY3);
								
	--Frequency Divider
	freqDiv: entity work.freqDivider(Behavioral) 	--Generate Clock with 5Hz frequency
						generic map(DIV_FACTOR => 8E6)
						port map(clkIn => CLOCK_50,
									clkOut => clk5);
								
	--Process to choose Clock Function
	process(db_KEY3, enable, clk5)
	begin
		if(rising_edge(clk5)) then
		case enable is
			when "00" =>
				if(db_KEY3 = '1' and SW(0) = '0') then
					enable <= "01";
				end if;
			
			when "01" =>
				if(db_KEY3 = '1' and SW(0) = '0') then
					enable <= "10";
				end if;
			
			when "10" => 
				if(db_KEY3 = '1' and SW(0) = '0') then
					enable <= "11";
				end if;
			
			when others => 
				if(db_KEY3 = '1' and SW(0) = '0') then
					enable <= "00";
				end if;
		end case;
		end if;
			
			if(enable = "00") then	--Digital CLOCK
				HEX0 <= s_HEX0;
				HEX1 <= s_HEX1;
				HEX2 <= s_HEX2;
				HEX3 <= s_HEX3;
				HEX4 <= s_HEX4;
				HEX5 <= s_HEX5;
				HEX6 <= s_HEX6;
				HEX7 <= s_HEX7;
				LEDR(0) <= '1';
				LEDR(1) <= '0';
				LEDR(2) <= '0';
				LEDR(3) <= '0';
			
			elsif(enable = "01") then	--CHRONOMETER
				HEX0 <= a_HEX0;
				HEX1 <= a_HEX1;
				HEX2 <= a_HEX2;
				HEX3 <= a_HEX3;
				HEX4 <= a_HEX4;
				HEX5 <= a_HEX5;
				HEX6 <= a_HEX6;
				HEX7 <= a_HEX7;
				LEDR(1) <= '1';
				LEDR(0) <= '0';
				LEDR(2) <= '0';
				LEDR(3) <= '0';
			
			elsif(enable = "10") then	--CHRONOMETER DOWN/TIMER
				HEX0 <= "1111111";
				HEX1 <= "1111111";
				HEX2 <= b_HEX2;
				HEX3 <= b_HEX3;
				HEX4 <= b_HEX4;
				HEX5 <= b_HEX5;
				HEX6 <= b_HEX6;
				HEX7 <= b_HEX7;
				aud_xck <= xck_buf1;
				aud_dacdat <= dacdat_buf1;
				LEDR(2) <= '1';
				LEDR(1) <= '0';
				LEDR(0) <= '0';
				LEDR(3) <= '0';
				
			elsif(enable = "11") then	--ALARM
				HEX0 <= c_HEX0;
				HEX1 <= c_HEX1;
				HEX2 <= c_HEX2;
				HEX3 <= "1111111";
				HEX4 <= c_HEX4;
				HEX5 <= c_HEX5;
				HEX6 <= c_HEX6;
				HEX7 <= c_HEX7;
				aud_xck <= xck_buf;
				aud_dacdat <= dacdat_buf;
				LEDR(3) <= '1';
				LEDR(1) <= '0';
				LEDR(2) <= '0';
				LEDR(0) <= '0';
			end if;
	end process;
end RTL;