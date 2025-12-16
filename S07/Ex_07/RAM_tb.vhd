library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ram_tb is
end entity;

architecture testbench of ram_tb is

    -- Constants
    constant W : integer := 8;
    constant C : integer := 4;

    -- Signals
    signal input_data  : std_logic_vector(W - 1 downto 0) := (others => '0');
    signal addr        : std_logic_vector(C - 1 downto 0) := (others => '0');
    signal clk         : std_logic := '0';
    signal writeIn     : std_logic := '0';
    signal readOut     : std_logic := '0';
    signal rst         : std_logic := '1'; -- Start with inactive reset
    signal output_data : std_logic_vector(W - 1 downto 0);

    constant clk_period : time := 10 ns;

begin

    -- Instantiate the RAM
    uut: entity work.ram
        generic map (
            W => W,
            C => C
        )
        port map (
            input_data  => input_data,
            addr        => addr,
            clk         => clk,
            writeIn     => writeIn,
            readOut     => readOut,
            rst         => rst,
            output_data => output_data
        );

    -- Clock Generation
    clk_process : process
    begin
        while true loop
            clk <= '0';
            wait for clk_period / 2;
            clk <= '1';
            wait for clk_period / 2;
        end loop;
    end process;

    -- Stimulus Process
    stim_proc : process
    begin
        
        -- 1. Apply Reset (Active Low)
        -- This should fill Memory[i] with 'i'
        rst <= '0';            
        wait for clk_period * 2;
        rst <= '1';              
        wait for clk_period;

        -- 2. Read Verification
        writeIn <= '0';
        readOut <= '1';

        -- Check Address 3 -> Expect Output: 03 (00000011)
        addr <= std_logic_vector(to_unsigned(3, C));
        wait for clk_period;

        -- Check Address 10 -> Expect Output: 0A (00001010)
        addr <= std_logic_vector(to_unsigned(10, C));
        wait for clk_period;

        -- 3. Modify Address 3 with new data
        readOut <= '0';
        writeIn <= '1';
        addr <= std_logic_vector(to_unsigned(3, C));
        input_data <= x"FF"; -- Write 255
        wait for clk_period;

        -- 4. Reset Again (To prove it goes back to default)
        writeIn <= '0';
        rst <= '0';
        wait for clk_period;
        rst <= '1';

        -- 5. Read Address 3 Again -> Expect Output: 03 (Not FF)
        readOut <= '1';
        addr <= std_logic_vector(to_unsigned(3, C));
        wait for clk_period;

        wait;
    end process;

end architecture;