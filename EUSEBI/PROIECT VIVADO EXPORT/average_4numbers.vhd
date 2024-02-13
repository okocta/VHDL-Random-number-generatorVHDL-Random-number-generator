library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity average_4numbers is
    port (
        nr1 : in std_logic_vector(7 downto 0);
        nr2 : in std_logic_vector(7 downto 0);
        nr3 : in std_logic_vector(7 downto 0);
        nr4 : in std_logic_vector(7 downto 0);
        avg : out std_logic_vector(7 downto 0)
    );
end average_4numbers;

architecture arch_avg4 of average_4numbers is  
    signal first2_sum : std_logic_vector(8 downto 0);
    signal last2_sum  : std_logic_vector(8 downto 0);
    signal sum        : std_logic_vector(9 downto 0);
begin
    first2_sum <= ('0' & nr1) + ('0' & nr2);
    last2_sum  <= ('0' & nr3) + ('0' & nr4);
    sum        <= ('0' & first2_sum) + ('0' & last2_sum);
    avg        <= sum(9 downto 2);
end arch_avg4;