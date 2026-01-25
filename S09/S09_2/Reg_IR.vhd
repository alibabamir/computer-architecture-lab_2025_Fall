library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_IR is
    Port ( 
        clk      : in  STD_LOGIC;
        rst      : in  STD_LOGIC;
        load_en  : in  STD_LOGIC;
        out_en   : in  STD_LOGIC; -- To place operand (lower 5 bits) back on bus if needed
        data_bus : inout STD_LOGIC_VECTOR (7 downto 0);
        opcode   : out STD_LOGIC_VECTOR (2 downto 0) -- Top 3 bits to CU
    );
end Reg_IR;

architecture Behavioral of Reg_IR is
    signal ir_val : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '0' then
            ir_val <= (others => '0');
        elsif rising_edge(clk) then
            if load_en = '1' then
                ir_val <= data_bus;
            end if;
        end if;
    end process;

    -- Output Opcode directly
    opcode <= ir_val(7 downto 5);

    -- Drive bus (Usually lower bits for address operand)
    data_bus <= ("000" & ir_val(4 downto 0)) when out_en = '1' else (others => 'Z');

end Behavioral;