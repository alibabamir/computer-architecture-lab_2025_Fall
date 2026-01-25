library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Memory_Block is
    Port ( 
        sys_clk   : in  STD_LOGIC;
        wr_en     : in  STD_LOGIC;
        addr_in   : in  STD_LOGIC_VECTOR (3 downto 0);
        data_in   : in  STD_LOGIC_VECTOR (7 downto 0);
        data_out  : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Memory_Block;

architecture Behavioral of Memory_Block is
    
    type mem_array is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    
    -- Initial Program:
    -- 0: LOAD val1 (3)
    -- 1: SHL (Double it -> 6)
    -- 2: ADD val2 (5) -> Result 11 (0xB)
    -- 3: SHOW Result
    -- 4: STORE to memory
    -- 5: HALT
    signal RAM_DATA : mem_array := (
        0 => x"1A", -- LOAD from addr 10 (A)
        1 => x"80", -- SHL (Shift Left)
        2 => x"5B", -- ADD from addr 11 (B)
        3 => x"90", -- SHOW
        4 => x"2C", -- STORE to addr 12 (C)
        5 => x"E0", -- HALT
        -- Data section
        10 => x"03", -- Data 1: 3
        11 => x"05", -- Data 2: 5
        12 => x"00", -- Empty slot
        others => x"00"
    );

begin

    process(sys_clk)
    begin
        if rising_edge(sys_clk) then
            if wr_en = '1' then
                RAM_DATA(to_integer(unsigned(addr_in))) <= data_in;
            end if;
        end if;
    end process;

    -- Async read
    data_out <= RAM_DATA(to_integer(unsigned(addr_in)));

end Behavioral;