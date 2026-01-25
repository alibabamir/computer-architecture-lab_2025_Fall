library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_MAR is
    Port ( 
        clk     : in  STD_LOGIC;
        rst     : in  STD_LOGIC;
        load_en : in  STD_LOGIC;
        data_in : in  STD_LOGIC_VECTOR (7 downto 0); -- From Internal Bus
        addr_out: out STD_LOGIC_VECTOR (4 downto 0)  -- To Address Bus
    );
end Reg_MAR;

architecture Behavioral of Reg_MAR is
begin
    process(clk, rst)
    begin
        if rst = '0' then
            addr_out <= (others => '0');
        elsif rising_edge(clk) then
            if load_en = '1' then
                -- Capture lower 5 bits for address
                addr_out <= data_in(4 downto 0);
            end if;
        end if;
    end process;
end Behavioral;