LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY Structural_Computer_TB IS
END Structural_Computer_TB;
 
ARCHITECTURE behavior OF Structural_Computer_TB IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
    COMPONENT Structural_Computer
    PORT(
         CLK      : IN  std_logic;
         RESET    : IN  std_logic;
         SWITCHES : IN  std_logic_vector(7 downto 0);
         LEDS_OUT : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    
   --Inputs
   signal CLK      : std_logic := '0';
   signal RESET    : std_logic := '0';
   signal SWITCHES : std_logic_vector(7 downto 0) := (others => '0');

   --Outputs
   signal LEDS_OUT : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant CLK_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Structural_Computer PORT MAP (
          CLK => CLK,
          RESET => RESET,
          SWITCHES => SWITCHES,
          LEDS_OUT => LEDS_OUT
        );

   -- Clock process definitions
   CLK_process :process
   begin
		CLK <= '0';
		wait for CLK_period/2;
		CLK <= '1';
		wait for CLK_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- 1. Hold Reset state for 100 ns (Active Low Reset)
      RESET <= '0';
      wait for 100 ns;	
      
      -- 2. Release Reset
      RESET <= '1';
      wait for CLK_period * 2;

      -- 3. Test Case 1: Set Switches to 10
      -- Program Logic: (10 + 10) / 2 = 10
      -- We expect LEDS_OUT to become 10 (0x0A) after a few microseconds
      SWITCHES <= std_logic_vector(to_unsigned(10, 8));
      wait for 2000 ns; -- Allow program to loop multiple times

      -- 4. Test Case 2: Set Switches to 33
      -- Program Logic: (33 + 33) / 2 = 33
      -- Expect LEDS_OUT = 33 (0x21)
      SWITCHES <= std_logic_vector(to_unsigned(33, 8));
      wait for 2000 ns;
      
      -- 5. Test Case 3: Set Switches to 128
      -- Program Logic: (128 + 128) / 2 = 128
      SWITCHES <= std_logic_vector(to_unsigned(128, 8));
      wait for 2000 ns;

      -- End Simulation
      assert false report "End of Simulation" severity failure;
      wait;
   end process;

END;