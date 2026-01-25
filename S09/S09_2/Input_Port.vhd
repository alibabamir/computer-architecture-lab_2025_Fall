library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Input_Port is
    Port ( 
        clk      : in  STD_LOGIC;
        rd_en    : in  STD_LOGIC;
        cs       : in  STD_LOGIC;
        data_in  : in  STD_LOGIC_VECTOR (7 downto 0); -- From Switches
        data_bus : out STD_LOGIC_VECTOR (7 downto 0)  -- To Data Bus
    );
end Input_Port;

architecture Behavioral of Input_Port is
begin
    -- Tri-state buffer
    process(clk) -- Actually combinational usually, but for sync read:
    begin
        -- Standard Tri-state logic
    end process;
    
    data_bus <= data_in when (cs = '1' and rd_en = '1') else (others => 'Z');

end Behavioral;