--import std_logic from the IEEE library
library ieee;
use ieee.std_logic_1164.all;

--ENTITY DECLARATION: no inputs, no outputs
entity NOT_gate_tb is
end NOT_gate_tb;

-- Describe how to test the AND Gate
architecture tb of NOT_gate_tb is
   --pass NOT Gate entity to the testbench as component
   component NOT_gate is	
     Port ( INA : in  STD_LOGIC;
            OA  : out STD_LOGIC);
  end component;
	
   signal  inA, outF : std_logic;
begin 
   --map the testbench signals to the ports of the notGate
   mapping: NOT_gate port map(inA, outF);

   process
   begin
      --TEST 1
      inA <= '0';
      wait for 15 ns;
      --TEST 2
      inA <= '1';
      wait;
   end process;
end tb;
