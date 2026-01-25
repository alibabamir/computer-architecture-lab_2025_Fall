library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_ACC is
    Port ( 
        clk : in  STD_LOGIC;
        rst : in  STD_LOGIC;
        load_en : in  STD_LOGIC; -- LE
        out_en  : in  STD_LOGIC; -- OE
        data_bus: inout STD_LOGIC_VECTOR (7 downto 0);
        q_out   : out STD_LOGIC_VECTOR (7 downto 0) -- Internal output for ALU connection
    );
end Reg_ACC;

architecture Behavioral of Reg_ACC is
    signal internal_val : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '0' then -- Active Low Reset assumed typical or match CPU
            internal_val <= (others => '0');
        elsif rising_edge(clk) then
            if load_en = '1' then
                internal_val <= data_bus;
            end if;
        end if;
    end process;

    -- Tri-state buffer for Bus
    data_bus <= internal_val when out_en = '1' else (others => 'Z');
    
    -- Constant output for ALU wiring
    q_out <= internal_val;
end Behavioral;