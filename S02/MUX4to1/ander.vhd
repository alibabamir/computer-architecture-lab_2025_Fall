library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ander is
    Port(
        A,B,C: in std_logic;
        D : out std_logic
    );
end ander;

architecture Behavioral of ander is
begin
    D <= A and B and C;
end Behavioral;