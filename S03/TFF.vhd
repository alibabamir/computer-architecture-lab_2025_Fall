library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity t_ff_async_reset is
    Port (
        clk     : in  STD_LOGIC; 
        reset_n : in  STD_LOGIC;  
        t       : in  STD_LOGIC;  
        q       : out STD_LOGIC   
    );
end t_ff_async_reset;

architecture Behavioral of t_ff_async_reset is

    -- Declare the component
    component clk_div
        port(
            clk_in  : in  std_logic;
            clk_out : out std_logic
        );
    end component;

    -- Internal signal for divided clock
    signal clk_d : std_logic;
	 signal q_reg : STD_LOGIC := '0';  

begin

    -- Instantiate the clock divider
    U1: clk_div
        port map (
            clk_in  => clk,
            clk_out => clk_d
        );

    process (clk_d, reset_n)
    begin
        if reset_n = '0' then
            q_reg <= '0'; 
        elsif rising_edge(clk_d) then
            if t = '1' then
                q_reg <= not q_reg; 
            end if;
        end if;
    end process;

    q <= q_reg;  
end Behavioral;