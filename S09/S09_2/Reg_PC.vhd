library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Reg_PC is
    Port ( 
        clk      : in  STD_LOGIC;
        rst      : in  STD_LOGIC; -- Hard reset
        
        -- Control Signals
        load_en  : in  STD_LOGIC; -- Jump (Load from bus)
        out_en   : in  STD_LOGIC; -- Place PC on bus
        inc_en   : in  STD_LOGIC; -- PC = PC + 1
        clr_en   : in  STD_LOGIC; -- PC = 0
        
        data_bus : inout STD_LOGIC_VECTOR (7 downto 0)
    );
end Reg_PC;

architecture Behavioral of Reg_PC is
    signal pc_val : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '0' then
            pc_val <= (others => '0');
        elsif rising_edge(clk) then
            if clr_en = '1' then
                pc_val <= (others => '0');
            elsif load_en = '1' then
                pc_val <= data_bus;
            elsif inc_en = '1' then
                pc_val <= pc_val + 1;
            end if;
        end if;
    end process;

    -- Drive Bus
    data_bus <= pc_val when out_en = '1' else (others => 'Z');

end Behavioral;