library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux41 is
  Port(
       i0,i1,i2,i3,s0,s1: in std_logic;
        z: out std_logic
    );
end mux41;

architecture Behavioral of mux41 is

component not_gate is
    Port(
        n0: in std_logic;
        n00 : out std_logic
    );
end component;
	 
component ander is
    Port(
        A,B,C: in std_logic;
        D : out std_logic
    );
end component;

signal not_s0, not_s1: std_logic;
signal and0_out, and1_out, and2_out, and3_out: std_logic;

begin

not0: not_gate port map (
    n0 => s0,
    n00 => not_s0
);

not1: not_gate port map (
    n0 => s1,
    n00 => not_s1
);

z0: ander port map (
    A => not_s0,
    B => not_s1,
    C => i0,
    D => and0_out
);
	 
z1: ander port map (
    A => s0,
    B => not_s1,
    C => i1,
    D => and1_out
);

z2: ander port map (
    A => not_s0,
    B => s1,
    C => i2,
    D => and2_out
);

z3: ander port map (
    A => s0,
    B => s1,
    C => i3,
    D => and3_out
);

z <= and0_out or and1_out or and2_out or and3_out;

end Behavioral;