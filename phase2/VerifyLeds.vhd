library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.NUMERIC_STD.all;

entity VerifyLeds is
	port(keys  :  in std_logic_vector(3 downto 0);
		  ledg  :  out std_logic_vector(6 downto 0));
end VerifyLeds;

architecture Behavioral of VerifyLeds is
begin
	process(keys)
	begin
		ledg(0)  <=  not keys(0);
		ledg(2)  <=  not keys(1);
		ledg(4)  <=  not keys(2);
		ledg(6)  <=  not keys(3);
	end process;
end Behavioral;