LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
 
ENTITY CLA_4bit_tb IS
END CLA_4bit_tb;
 
ARCHITECTURE behavior OF CLA_4bit_tb IS 
 
 
    COMPONENT CLA_4bit
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         Cout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal Cout : std_logic;
	
	constant delay_time : time := 100 ns;

  
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CLA_4bit PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          Cout => Cout
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
	
        A <= "0011";
        B <= "0101";
        Cin <= '0';
        wait for delay_time;
        
        A <= "0111";
        B <= "0111";
        Cin <= '0';
        wait for delay_time;

        A <= "1111";
        B <= "0001";
        Cin <= '0';
        wait for delay_time;
        
        A <= "0001";
        B <= "0001";
        Cin <= '1';
        wait for delay_time;
        
        A <= "1111";
        B <= "1111";
        Cin <= '1';
        wait for delay_time;
        
        wait; 
		  
   end process;

END;
