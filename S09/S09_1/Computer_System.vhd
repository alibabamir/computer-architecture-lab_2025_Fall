library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Top_System is
    Port ( 
        CLK       : in  STD_LOGIC;
        RESET     : in  STD_LOGIC;
        LEDS      : out STD_LOGIC_VECTOR (7 downto 0);
        HALT_LED  : out STD_LOGIC
    );
end Top_System;

architecture Structural of Top_System is

    -- Internal Signals
    signal bus_addr : STD_LOGIC_VECTOR(3 downto 0);
    signal bus_data_read : STD_LOGIC_VECTOR(7 downto 0);
    signal bus_data_write : STD_LOGIC_VECTOR(7 downto 0);
    signal bus_wr_en : STD_LOGIC;

begin

    -- Instantiate Processor
    CPU_Inst : entity work.Simple_CPU
    port map (
        clk          => CLK,
        rst_n        => RESET,
        mem_data_in  => bus_data_read,
        mem_data_out => bus_data_write,
        mem_addr     => bus_addr,
        mem_wr       => bus_wr_en,
        led_display  => LEDS,
        halt_sig     => HALT_LED
    );

    -- Instantiate Memory
    Mem_Inst : entity work.Memory_Block
    port map (
        sys_clk   => CLK,
        wr_en     => bus_wr_en,
        addr_in   => bus_addr,
        data_in   => bus_data_write,
        data_out  => bus_data_read
    );

end Structural;