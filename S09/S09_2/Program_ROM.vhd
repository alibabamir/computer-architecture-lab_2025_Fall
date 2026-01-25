library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Program_ROM is
    Port ( 
        clk      : in  STD_LOGIC;
        rd_en    : in  STD_LOGIC;
        cs       : in  STD_LOGIC;
        addr     : in  STD_LOGIC_VECTOR (3 downto 0);
        data_out : out STD_LOGIC_VECTOR (7 downto 0)
    );
end Program_ROM;

architecture Structural of Program_ROM is
    type rom_array is array (0 to 15) of STD_LOGIC_VECTOR(7 downto 0);
    
    constant ROM_CONTENT : rom_array := (
        0 => "00011101", -- LD A, [29] (Read Input Switch)
        1 => "10111101", -- ADD A, [29] (Add Input again)
        2 => "10110000", -- ADD A, [16] (Add RAM val)
        3 => "11100000", -- SHR A
        4 => "00111111", -- ST A, [31] (Output to LEDs)
        5 => "01000000", -- JP 0
        others => "00000000"
    );
begin
    -- Asynchronous Read Logic (No Clock inside Process)
    process(cs, rd_en, addr)
    begin
        if cs = '1' and rd_en = '1' then
            data_out <= ROM_CONTENT(to_integer(unsigned(addr)));
        else
            data_out <= (others => 'Z');
        end if;
    end process;
end Structural;