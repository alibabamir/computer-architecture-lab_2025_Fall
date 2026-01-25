library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Reg_MDR is
    Port ( 
        clk        : in  STD_LOGIC;
        rst        : in  STD_LOGIC;
        
        -- Controls
        le_in      : in  STD_LOGIC; -- Load from Internal Bus
        le_out     : in  STD_LOGIC; -- Load from External Data Bus
        oe_in      : in  STD_LOGIC; -- Drive to Internal Bus
        oe_out     : in  STD_LOGIC; -- Drive to External Data Bus
        
        -- Data Lines
        bus_int    : inout STD_LOGIC_VECTOR (7 downto 0); -- Internal Bus
        bus_ext    : inout STD_LOGIC_VECTOR (7 downto 0)  -- External (Memory) Bus
    );
end Reg_MDR;

architecture Behavioral of Reg_MDR is
    signal reg_val : STD_LOGIC_VECTOR(7 downto 0);
begin
    process(clk, rst)
    begin
        if rst = '0' then
            reg_val <= (others => '0');
        elsif rising_edge(clk) then
            if le_in = '1' then
                reg_val <= bus_int; -- Capture from Internal
            elsif le_out = '1' then
                reg_val <= bus_ext; -- Capture from External
            end if;
        end if;
    end process;

    -- Drive Internal Bus
    bus_int <= reg_val when oe_in = '1' else (others => 'Z');
    
    -- Drive External Bus
    bus_ext <= reg_val when oe_out = '1' else (others => 'Z');

end Behavioral;