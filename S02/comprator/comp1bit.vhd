library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Comp0 is
    port(
        a, b  : in  std_logic;
        gt,eq,lt : in  std_logic;    
        a_gt_b, a_eq_b, a_lt_b : out std_logic  
    );
end Comp0;

architecture Structural of Comp0 is
    component and_gate is port(a,b: in std_logic; y: out std_logic); end component;
    component or_gate  is port(a,b: in std_logic; y: out std_logic); end component;
    component not_gate is port(a: in std_logic;   y: out std_logic); end component;

    signal na, nb     : std_logic;
    signal eq_ab1, eq_ab2, eq_bit : std_logic; 
    signal gt_bit, lt_bit          : std_logic;
    signal eq_and, gt_path, lt_path: std_logic;
begin
    n1: not_gate port map(a=>a, y=>na);
    n2: not_gate port map(a=>b, y=>nb);

    e1: and_gate port map(a=>a,  b=>b,  y=>eq_ab1);
    e2: and_gate port map(a=>na, b=>nb, y=>eq_ab2);
    e3: or_gate  port map(a=>eq_ab1, b=>eq_ab2, y=>eq_bit);

    g1: and_gate port map(a=>a,  b=>nb, y=>gt_bit);
    l1: and_gate port map(a=>na, b=>b,  y=>lt_bit);

    ae1: and_gate port map(a=>eq, b=>eq_bit, y=>a_eq_b);

    ag_and: and_gate port map(a=>eq_bit, b=>gt, y=>gt_path);
    ag_or : or_gate  port map(a=>gt_bit, b=>gt_path, y=>a_gt_b);

    al_and: and_gate port map(a=>eq_bit, b=>lt, y=>lt_path);
    al_or : or_gate  port map(a=>lt_bit, b=>lt_path, y=>a_lt_b);
end Structural;
