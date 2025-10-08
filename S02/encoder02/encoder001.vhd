library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Encoder4to2 is
    Port(
        d0, d1, d2, d3 : in std_logic;
        y0, y1 : out std_logic;
        valid : out std_logic
    );
end Encoder4to2;

architecture Structural of Encoder4to2 is
    
    component or_gate is
        Port(
            a, b : in std_logic;
            y : out std_logic
        );
    end component;
    
    component and_gate is
        Port(
            a, b : in std_logic;
            y : out std_logic
        );
    end component;
    
    component not_gate is
        Port(
            a : in std_logic;
            y : out std_logic
        );
    end component;
    
    signal not_d2 : std_logic;
    signal and_out : std_logic;
	 
    signal valid_temp1,valid_temp2: std_logic;
begin
    not1: not_gate port map(a => d2, y => not_d2);
    
    and1: and_gate port map(a => not_d2, b => d1, y => and_out);
    
    or1: or_gate port map(a => d3, b => d2, y => y1);
    
    or2: or_gate port map(a => d3, b => and_out, y => y0);
    
    or3: or_gate port map(a => d0, b => d1, y => valid_temp1);
    or4: or_gate port map(a => d2, b => d3, y => valid_temp2);
    or5: or_gate port map(a => valid_temp1, b => valid_temp2, y => valid);
    
end Structural;