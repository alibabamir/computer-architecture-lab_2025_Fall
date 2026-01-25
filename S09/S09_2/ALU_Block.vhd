library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ALU_Block is
    Port ( 
        clk       : in  STD_LOGIC;
        rst       : in  STD_LOGIC;
        
        -- Control Signals
        le_temp1  : in  STD_LOGIC; -- Load Temp1 from Bus
        le_temp2  : in  STD_LOGIC; -- Load Temp2 from Bus
        oe_result : in  STD_LOGIC; -- Place result on Bus
        op_sel    : in  STD_LOGIC_VECTOR (1 downto 0); -- Operation Select
        
        -- Status Flags
        carry_flag: out STD_LOGIC;
        
        -- Data Bus
        data_bus  : inout STD_LOGIC_VECTOR (7 downto 0)
    );
end ALU_Block;

architecture Behavioral of ALU_Block is
    signal temp1 : STD_LOGIC_VECTOR(7 downto 0);
    signal temp2 : STD_LOGIC_VECTOR(7 downto 0);
    signal result: STD_LOGIC_VECTOR(8 downto 0); -- 9 bits to capture carry
begin
    
    -- Register Loading Process
    process(clk, rst)
    begin
        if rst = '0' then
            temp1 <= (others => '0');
            temp2 <= (others => '0');
        elsif rising_edge(clk) then
            if le_temp1 = '1' then
                temp1 <= data_bus;
            end if;
            if le_temp2 = '1' then
                temp2 <= data_bus;
            end if;
        end if;
    end process;

    -- Arithmetic / Logic Operation (Combinational)
    process(temp1, temp2, op_sel)
    begin
        case op_sel is
            when "00" => -- AND
                result <= '0' & (temp1 and temp2);
                
            when "01" => -- ADD
                result <= ('0' & temp1) + ('0' & temp2);
                
            when "10" => -- NOT (Uses Temp1)
                result <= '0' & (not temp1);
                
            when "11" => -- SHR (Uses Temp1)
                result <= "00" & temp1(7 downto 1);
                
            when others =>
                result <= (others => '0');
        end case;
    end process;

    -- Output Drive
    data_bus <= result(7 downto 0) when oe_result = '1' else (others => 'Z');
    
    -- Flag Update
    -- (In a real CPU, flags usually update on a specific clock edge, 
    -- but here we output combinational carry from the last operation)
    carry_flag <= result(8);

end Behavioral;