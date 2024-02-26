library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity AND_gate is
    Port ( INA1 : in  STD_LOGIC;
           INA2 : in  STD_LOGIC;
           OA   : out STD_LOGIC);
end AND_gate;

architecture Behavioral of AND_gate is
begin
    OA <= INA1 and INA2;    -- 2 input AND gate
end Behavioral;