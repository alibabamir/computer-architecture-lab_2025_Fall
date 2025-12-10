LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY shift_register_tb IS
END shift_register_tb;

ARCHITECTURE behavior OF shift_register_tb IS 

    -- Component Declaration
    COMPONENT Shift_Register
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         load : IN  std_logic;
         lr : IN  std_logic_vector(1 downto 0);
         parallel_in : IN  std_logic_vector(3 downto 0);
         q : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    
   -- Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal load : std_logic := '0';
   signal lr : std_logic_vector(1 downto 0) := (others => '0');
   signal parallel_in : std_logic_vector(3 downto 0) := (others => '0');

   -- Outputs
   signal q : std_logic_vector(3 downto 0);

   -- Clock period definition
   constant clk_period : time := 10 ns;
 
BEGIN
 
   -- Instantiate the Unit Under Test (UUT)
   uut: Shift_Register PORT MAP (
          clk => clk,
          reset => reset,
          load => load,
          lr => lr,
          parallel_in => parallel_in,
          q => q
        );

   -- Clock process
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
      -- 1. Reset
      reset <= '1';
      wait for 20 ns;	
      reset <= '0';
      wait for clk_period;

      -- 2. Load "1011"
      load <= '1';
      parallel_in <= "1011";
      wait for clk_period; 
      load <= '0';
      
      -- 3. Logic Left Shift (lr="10") -> Expect "0110"
      lr <= "10";
      wait for clk_period;

      -- 4. Logic Right Shift (lr="01") -> Expect "0011"
      lr <= "01";
      wait for clk_period;

      -- 5. Hold (lr="00") -> Expect "0011"
      lr <= "00";
      wait for clk_period;

      -- 6. Load "1100" for Arithmetic Test
      load <= '1';
      parallel_in <= "1100"; 
      wait for clk_period;
      load <= '0';
      
      -- 7. Arithmetic Right Shift (lr="11") -> Expect "1110"
      lr <= "11"; 
      wait for clk_period;
      wait for clk_period; -- Shift again -> Expect "1111"

      -- End simulation
      wait;
   end process;

END;