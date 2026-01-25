library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity IO_Port is
    Port ( 
        clk      : in  STD_LOGIC;
        rst      : in  STD_LOGIC;
        cs       : in  STD_LOGIC; -- Chip Select (from Decoder)
        wr_en    : in  STD_LOGIC; -- Write Enable (from CU)
        data_in  : in  STD_LOGIC_VECTOR (7 downto 0); -- From External Data Bus
        data_out : out STD_LOGIC_VECTOR (7 downto 0)  -- To LEDs
    );
end IO_Port;

architecture Behavioral of IO_Port is
    signal latch_val : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '0' then
            latch_val <= (others => '0');
        elsif rising_edge(clk) then
            if cs = '1' and wr_en = '1' then
                latch_val <= data_in;
            end if;
        end if;
    end process;

    data_out <= latch_val;
end Behavioral;