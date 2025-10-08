library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux41_tb is
end mux41_tb;

architecture Behavioral of mux41_tb is
    component mux41 is
        Port(
            i0,i1,i2,i3,s0,s1: in std_logic;
            z: out std_logic
        );
    end component;
    
    -- Input signals
    signal i0, i1, i2, i3, s0, s1 : std_logic := '0';
    -- Output signal
    signal z : std_logic;
    
begin
    -- Unit Under Test (UUT)
    uut: mux41 port map (
        i0 => i0,
        i1 => i1,
        i2 => i2,
        i3 => i3,
        s0 => s0,
        s1 => s1,
        z => z
    );
    
    -- Test process
    stim_proc: process
    begin
        -- Test case 1: Select i0 (s1=0, s0=0)
        s1 <= '0'; s0 <= '0';
        i0 <= '1'; i1 <= '0'; i2 <= '0'; i3 <= '0';
        wait for 10 ns;
        assert z = '1' report "Error: Case 1 - i0 not selected" severity error;
        
        -- Test case 2: Select i1 (s1=0, s0=1)
        s1 <= '0'; s0 <= '1';
        i0 <= '0'; i1 <= '1'; i2 <= '0'; i3 <= '0';
        wait for 10 ns;
        assert z = '1' report "Error: Case 2 - i1 not selected" severity error;
        
        -- Test case 3: Select i2 (s1=1, s0=0)
        s1 <= '1'; s0 <= '0';
        i0 <= '0'; i1 <= '0'; i2 <= '1'; i3 <= '0';
        wait for 10 ns;
        assert z = '1' report "Error: Case 3 - i2 not selected" severity error;
        
        -- Test case 4: Select i3 (s1=1, s0=1)
        s1 <= '1'; s0 <= '1';
        i0 <= '0'; i1 <= '0'; i2 <= '0'; i3 <= '1';
        wait for 10 ns;
        assert z = '1' report "Error: Case 4 - i3 not selected" severity error;
        
        -- Test case 5: Verify deselection
        s1 <= '0'; s0 <= '0';
        i0 <= '0'; i1 <= '1'; i2 <= '1'; i3 <= '1';
        wait for 10 ns;
        assert z = '0' report "Error: Case 5 - Wrong output" severity error;
        
        -- Test case 6: All inputs high, select i0
        s1 <= '0'; s0 <= '0';
        i0 <= '1'; i1 <= '1'; i2 <= '1'; i3 <= '1';
        wait for 10 ns;
        assert z = '1' report "Error: Case 6 - Wrong output" severity error;
        
        -- Test case 7: Multiple combinations
        s1 <= '1'; s0 <= '0';
        i0 <= '0'; i1 <= '0'; i2 <= '1'; i3 <= '0';
        wait for 10 ns;
        assert z = '1' report "Error: Case 7 - i2 not selected" severity error;
        
        report "Testbench completed successfully!";
        wait;
    end process;
end Behavioral;