library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Bin2BCD is
	port(binIn  : in std_logic_vector(7 downto 0);
		  binIn1 : in std_logic_vector(7 downto 0);
		  binIn2 : in std_logic_vector(7 downto 0);
		  bcdMS  : out std_logic_vector(7 downto 0);
		  bcdLS  : out std_logic_vector(7 downto 0);
		  bcdMS1 : out std_logic_vector(7 downto 0);
		  bcdLS1 : out std_logic_vector(7 downto 0);
		  bcdMS2 : out std_logic_vector(7 downto 0);
		  bcdLS2 : out std_logic_vector(7 downto 0));
end Bin2BCD;

architecture Behavioral of Bin2BCD is
begin
	bcdMS  <= std_logic_vector(unsigned(binIn(7 downto 0))/10);
	bcdLS  <= std_logic_vector(unsigned(binIn(7 downto 0))rem 10);
	bcdMS1 <= std_logic_vector(unsigned(binIn1(7 downto 0))/10);
	bcdLS1 <= std_logic_vector(unsigned(binIn1(7 downto 0))rem 10);
	bcdMS2 <= std_logic_vector(unsigned(binIn2(7 downto 0))/10);
	bcdLS2 <= std_logic_vector(unsigned(binIn2(7 downto 0))rem 10);
end Behavioral;