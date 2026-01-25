library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity System_TB is
end System_TB;

architecture Behavioral of System_TB is

    component Top_System
    Port ( 
        CLK       : in  STD_LOGIC;
        RESET     : in  STD_LOGIC;
        LEDS      : out STD_LOGIC_VECTOR (7 downto 0);
        HALT_LED  : out STD_LOGIC
    );
    end component;

    -- Testbench Signals
    signal clk_tb     : std_logic := '0';
    signal reset_tb   : std_logic := '0';
    signal leds_tb    : std_logic_vector(7 downto 0);
    signal halt_tb    : std_logic;

    -- Clock period definition
    constant clk_period : time := 20 ns;

begin

    uut: Top_System PORT MAP (
        CLK      => clk_tb,
        RESET    => reset_tb,
        LEDS     => leds_tb,
        HALT_LED => halt_tb
    );

    -- Clock Process
    clk_process :process
    begin
        clk_tb <= '0';
        wait for clk_period/2;
        clk_tb <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus Process
    stim_proc: process
    begin
        -- Hold reset state for 100 ns (Active Low)
        reset_tb <= '0';
        wait for 100 ns;  

        -- Release reset
        reset_tb <= '1';

        -- Wait until CPU finishes execution (HALT flag)
        wait until halt_tb = '1';
        
        -- Observe final result for a few cycles
        wait for clk_period * 5;

        -- End simulation (suspend process)
        wait;
    end process;

end Behavioral;