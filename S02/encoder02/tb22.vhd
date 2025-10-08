library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder4to2_tb is
end Encoder4to2_tb;

architecture Behavioral of Encoder4to2_tb is
    component Encoder4to2 is
        Port(
            d0, d1, d2, d3 : in std_logic;
            y0, y1 : out std_logic;
            valid : out std_logic
        );
    end component;
    
    -- Input signals
    signal d0, d1, d2, d3 : std_logic := '0';
    -- Output signals
    signal y0, y1, valid : std_logic;
    
begin
    -- Unit Under Test (UUT)
    uut: Encoder4to2 port map (
        d0 => d0,
        d1 => d1,
        d2 => d2,
        d3 => d3,
        y0 => y0,
        y1 => y1,
        valid => valid
    );
    
    -- Test process
    stim_proc: process
    begin
        -- Test case 1: No input active
        d0 <= '0'; d1 <= '0'; d2 <= '0'; d3 <= '0';
        wait for 10 ns;
        assert y1 = '0' and y0 = '0' and valid = '0' 
            report "Error: Case 1 - No input" severity error;
        
        -- Test case 2: d0 active (lowest priority)
        d0 <= '1'; d1 <= '0'; d2 <= '0'; d3 <= '0';
        wait for 10 ns;
        assert y1 = '0' and y0 = '0' and valid = '1' 
            report "Error: Case 2 - d0 active" severity error;
        
        -- Test case 3: d1 active
        d0 <= '0'; d1 <= '1'; d2 <= '0'; d3 <= '0';
        wait for 10 ns;
        assert y1 = '0' and y0 = '1' and valid = '1' 
            report "Error: Case 3 - d1 active" severity error;
        
        -- Test case 4: d2 active
        d0 <= '0'; d1 <= '0'; d2 <= '1'; d3 <= '0';
        wait for 10 ns;
        assert y1 = '1' and y0 = '0' and valid = '1' 
            report "Error: Case 4 - d2 active" severity error;
        
        -- Test case 5: d3 active (highest priority)
        d0 <= '0'; d1 <= '0'; d2 <= '0'; d3 <= '1';
        wait for 10 ns;
        assert y1 = '1' and y0 = '1' and valid = '1' 
            report "Error: Case 5 - d3 active" severity error;
        
        -- Test case 6: Multiple inputs - d3 should have priority
        d0 <= '1'; d1 <= '1'; d2 <= '1'; d3 <= '1';
        wait for 10 ns;
        assert y1 = '1' and y0 = '1' and valid = '1' 
            report "Error: Case 6 - Multiple inputs" severity error;
        
        -- Test case 7: d1 and d2 active - d2 should have priority
        d0 <= '0'; d1 <= '1'; d2 <= '1'; d3 <= '0';
        wait for 10 ns;
        assert y1 = '1' and y0 = '0' and valid = '1' 
            report "Error: Case 7 - d1 and d2 active" severity error;
        
        -- Test case 8: d0 and d1 active - d1 should have priority
        d0 <= '1'; d1 <= '1'; d2 <= '0'; d3 <= '0';
        wait for 10 ns;
        assert y1 = '0' and y0 = '1' and valid = '1' 
            report "Error: Case 8 - d0 and d1 active" severity error;
        
        report "Encoder4to2 Testbench completed successfully!";
        wait;
    end process;
end Behavioral;