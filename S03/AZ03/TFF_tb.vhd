--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:03:11 10/15/2025
-- Design Name:   
-- Module Name:   /home/ise/computer-architecture-lab_2025_Fall/AZ03/TFF_tb.vhd
-- Project Name:  AZ03
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: t_ff_async_reset
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
 
ENTITY TFF_tb IS
END TFF_tb;
 
ARCHITECTURE behavior OF TFF_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT t_ff_async_reset
    PORT(
         clk : IN  std_logic;
         reset_n : IN  std_logic;
         t : IN  std_logic;
         q : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset_n : std_logic := '0';
   signal t : std_logic := '0';

 	--Outputs
   signal q : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: t_ff_async_reset PORT MAP (
          clk => clk,
          reset_n => reset_n,
          t => t,
          q => q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		reset_n <= '0';
      wait for 10 ns;	
		reset_n <= '1';
      t <= '1';
      wait for clk_period;
      t <= '0';
      wait for clk_period;

      t <= '1';
      wait for clk_period;

      -- End of simulation

      wait;
   end process;
END;
