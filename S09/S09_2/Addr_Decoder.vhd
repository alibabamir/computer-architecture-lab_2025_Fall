library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Addr_Decoder is
    Port ( 
        address : in  STD_LOGIC_VECTOR (4 downto 0);
        cs_rom  : out STD_LOGIC;
        cs_ram  : out STD_LOGIC;
        cs_io0  : out STD_LOGIC;
        cs_io1  : out STD_LOGIC;
        cs_io2  : out STD_LOGIC
    );
end Addr_Decoder;

architecture Logic of Addr_Decoder is
begin
    process(address)
    begin
        -- Default values
        cs_rom <= '0'; cs_ram <= '0';
        cs_io0 <= '0'; cs_io1 <= '0'; cs_io2 <= '0';
        
        if unsigned(address) >= 0 and unsigned(address) <= 15 then
            cs_rom <= '1'; -- 0x00 to 0x0F
            
        elsif unsigned(address) >= 16 and unsigned(address) <= 23 then
            cs_ram <= '1'; -- 0x10 to 0x17
            
        elsif address = "11101" then -- 0x1D (29)
            cs_io0 <= '1';
            
        elsif address = "11110" then -- 0x1E (30)
            cs_io1 <= '1';
            
        elsif address = "11111" then -- 0x1F (31)
            cs_io2 <= '1';
        end if;
    end process;
end Logic;