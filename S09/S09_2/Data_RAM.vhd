library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Data_RAM is
    Port ( 
        clk      : in  STD_LOGIC;
        wr_en    : in  STD_LOGIC;
        rd_en    : in  STD_LOGIC;
        cs       : in  STD_LOGIC;
        addr     : in  STD_LOGIC_VECTOR (2 downto 0); -- 8 locations -> 3 bits
        data_in  : in  STD_LOGIC_VECTOR (7 downto 0);
        data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Data_RAM;

architecture Structural of Data_RAM is
    type ram_array is array (0 to 7) of STD_LOGIC_VECTOR(7 downto 0);
    signal RAM_MEM : ram_array := (others => (others => '0'));
begin
    -- Synchronous Write
    process(clk)
    begin
        if rising_edge(clk) then
            if cs = '1' and wr_en = '1' then
                RAM_MEM(to_integer(unsigned(addr))) <= data_in;
            end if;
        end if;
    end process;

    -- Asynchronous Read
    data_out <= RAM_MEM(to_integer(unsigned(addr))) when (cs = '1' and rd_en = '1') else (others => 'Z');
end Structural;
