library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity not_gate is
    Port(
        n0: in std_logic;
        n00 : out std_logic
    );
end not_gate;

architecture Behavioral of not_gate is
begin
    n00 <= not n0;
end Behavioral;