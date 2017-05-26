library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity defMode is
port(keys : in std_logic_vector(3 downto 0);
	  outEn : out std_logic_vector(1 downto 0));
end defMode;

architecture Behavioral of defMode is

	type state is (clc0, clc1, clc2, clc3);
	signal PS, NS : state;
	signal s_en : std_logic_vector(1 downto 0);

begin	
	process(PS, keys(3))
	begin
		case PS is
			when clc0 =>
				if(keys(3) = '0') then
					NS <= clc1;
					s_en <= "01";
				elsif(keys(2) = '0') then
					NS <= clc0;
					s_en <= "00";
				end if;
			when clc1 =>
				if(keys(3) = '0') then
					NS <= clc2;
					s_en <= "10";
				elsif(keys(2) = '0') then
					NS <= clc0;
					s_en <= "00";
				end if;
			when clc2 =>
				if(keys(3) = '0') then
					NS <= clc3;
					s_en <= "11";
				elsif(keys(2) = '0') then
					NS <= clc0;
					s_en <= "00";
				end if;
			when others =>
				if(keys(3) = '0') then
					NS <= clc1;
					s_en <= "01";
				elsif(keys(2) = '0') then
					NS <= clc0;
					s_en <= "00";
				end if;
			end case;
		end process;

	outEn <= s_en;

end Behavioral;