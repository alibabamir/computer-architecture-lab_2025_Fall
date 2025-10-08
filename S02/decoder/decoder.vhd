library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder2to4 is
    Port(
        a1, a0 : in  std_logic;
        d0, d1, d2, d3 : out std_logic
    );
end Decoder2to4;

architecture Structural of Decoder2to4 is
    component and_gate is
        Port(a, b : in  std_logic; y : out std_logic);
    end component;

    component not_gate is
        Port(a : in  std_logic; y : out std_logic);
    end component;

    signal na1, na0 : std_logic;
begin
    n1: not_gate port map(a => a1, y => na1);
    n0: not_gate port map(a => a0, y => na0);

    d0_and: and_gate port map(a => na1, b => na0, y => d0);
    d1_and: and_gate port map(a => na1, b => a0,  y => d1);
    d2_and: and_gate port map(a => a1,  b => na0, y => d2);
    d3_and: and_gate port map(a => a1,  b => a0,  y => d3);
end Structural;


