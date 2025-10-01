--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:08:24 10/01/2025
-- Design Name:   
-- Module Name:   C:/Users/Lenovo/Desktop/H_B/S01/full_adder_tb.vhd
-- Project Name:  S01
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: full_adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY full_adder_tb IS
END full_adder_tb;
 
ARCHITECTURE behavior OF full_adder_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT full_adder
    PORT(
         i0 : IN  std_logic;
         i1 : IN  std_logic;
         cin : IN  std_logic;
         s : OUT  std_logic;
         cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic := '0';
   signal i1 : std_logic := '0';
   signal cin : std_logic := '0';

 	--Outputs
   signal s : std_logic;
   signal cout : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: full_adder PORT MAP (
          i0 => i0,
          i1 => i1,
          cin => cin,
          s => s,
          cout => cout
        ); 

   -- Stimulus process
   stim_proc: process
   begin		
      -- Test case 1: 0 + 0 + 0 = 0 (sum=0, carry=0)
      i0 <= '0';
      i1 <= '0';
      cin <= '0';
      wait for 100 ns;
      
      -- Test case 2: 0 + 0 + 1 = 1 (sum=1, carry=0)
      i0 <= '0';
      i1 <= '0';
      cin <= '1';
      wait for 100 ns;
      
      -- Test case 3: 0 + 1 + 0 = 1 (sum=1, carry=0)
      i0 <= '0';
      i1 <= '1';
      cin <= '0';
      wait for 100 ns;
      
      -- Test case 4: 0 + 1 + 1 = 2 (sum=0, carry=1)
      i0 <= '0';
      i1 <= '1';
      cin <= '1';
      wait for 100 ns;
      
      -- Test case 5: 1 + 0 + 0 = 1 (sum=1, carry=0)
      i0 <= '1';
      i1 <= '0';
      cin <= '0';
      wait for 100 ns;
      
      -- Test case 6: 1 + 0 + 1 = 2 (sum=0, carry=1)
      i0 <= '1';
      i1 <= '0';
      cin <= '1';
      wait for 100 ns;
      
      -- Test case 7: 1 + 1 + 0 = 2 (sum=0, carry=1)
      i0 <= '1';
      i1 <= '1';
      cin <= '0';
      wait for 100 ns;
      
      -- Test case 8: 1 + 1 + 1 = 3 (sum=1, carry=1)
      i0 <= '1';
      i1 <= '1';
      cin <= '1';
      wait for 100 ns;
      
      -- End simulation
      wait;
   end process;

END;


