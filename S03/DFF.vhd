library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity d_ff_async_reset is
    Port (
        clk     : in  STD_LOGIC;       -- input clock
        reset_n : in  STD_LOGIC;       -- active-low asynchronous reset
        d       : in  STD_LOGIC;       -- data input
        q       : out STD_LOGIC        -- data output
    );
end d_ff_async_reset;

architecture Behavioral of d_ff_async_reset is

    -- Declare the component
    component clk_div
        port(
            clk_in  : in  std_logic;
            clk_out : out std_logic
        );
    end component;

    -- Internal signal for divided clock
    signal clk_d : std_logic;

begin

    -- Instantiate the clock divider
    U1: clk_div
        port map (
            clk_in  => clk,
            clk_out => clk_d
        );

    -- D flip-flop with asynchronous active-low reset
    process (clk_d, reset_n)
    begin
        if reset_n = '0' then
            q <= '0';
        elsif rising_edge(clk_d) then
            q <= d;
        end if;
    end process;

end Behavioral;