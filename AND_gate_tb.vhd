--import std_logic from the IEEE library
library ieee;
use ieee.std_logic_1164.all;

--ENTITY DECLARATION: no inputs, no outputs
entity AND_gate_tb is
end AND_gate_tb;

-- Describe how to test the AND Gate
architecture tb of AND_gate_tb is
   --pass AND Gate entity to the testbench as component
   component AND_gate is	
     Port ( INA1 : in  STD_LOGIC;
          INA2 : in  STD_LOGIC;
          OA   : out STD_LOGIC);
  end component;
	
   signal  inA, inB, outF : std_logic;
begin 
   --map the testbench signals to the ports of the andGate
   mapping: AND_gate port map(inA, inB, outF);

   process
   begin
      --TEST 1
      inA <= '0';
      inB <= '0';
      wait for 15 ns;
      --TEST 2
      inA <= '0';
      inB <= '1';
      wait for 15 ns;
      --TEST 3
      inA <= '1';
      inB <= '1';
      wait;
   end process;
end tb;
