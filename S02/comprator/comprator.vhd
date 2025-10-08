library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparator4bit is
    Port(
        A, B    : in  std_logic_vector(3 downto 0);
        A_gt_B  : out std_logic;
        A_eq_B  : out std_logic;
        A_lt_B  : out std_logic
    );
end Comparator4bit;

architecture Structural of Comparator4bit is
    component and_gate is
        Port(a, b : in  std_logic; y : out std_logic);
    end component;

    component or_gate is
        Port(a, b : in  std_logic; y : out std_logic);
    end component;

    component not_gate is
        Port(a : in  std_logic; y : out std_logic);
    end component;

    -- ?????????
    signal nA, nB : std_logic_vector(3 downto 0);

    -- XNOR ?? ???: e(i) = (A(i)&B(i)) OR (~A(i)&~B(i))
    signal e : std_logic_vector(3 downto 0);
    signal t_e_ab, t_e_na_nb : std_logic_vector(3 downto 0);

    -- ?????? ?????????? ???????
    signal eq32, eq321 : std_logic;  -- e3&e2 ? ??? (e3&e2)&e1

    -- ??????? ??????? ????
    signal g3, g2a, g2, g1a, g1, g0a, g0 : std_logic;

    -- ??????? ??????? ????
    signal l3, l2a, l2, l1a, l1, l0a, l0 : std_logic;

    -- OR??? ?????
    signal gt_or1, gt_or2, lt_or1, lt_or2 : std_logic;
begin
    -- NOT??? ????????
    nA3: not_gate port map(a => A(3), y => nA(3));
    nA2: not_gate port map(a => A(2), y => nA(2));
    nA1: not_gate port map(a => A(1), y => nA(1));
    nA0: not_gate port map(a => A(0), y => nA(0));

    nB3: not_gate port map(a => B(3), y => nB(3));
    nB2: not_gate port map(a => B(2), y => nB(2));
    nB1: not_gate port map(a => B(1), y => nB(1));
    nB0: not_gate port map(a => B(0), y => nB(0));

    -- e(i) = XNOR(A(i),B(i)) = (A&B) OR (~A&~B)
    e3_ab: and_gate port map(a => A(3),  b => B(3),  y => t_e_ab(3));
    e3_n : and_gate port map(a => nA(3), b => nB(3), y => t_e_na_nb(3));
    e3_or: or_gate  port map(a => t_e_ab(3), b => t_e_na_nb(3), y => e(3));

    e2_ab: and_gate port map(a => A(2),  b => B(2),  y => t_e_ab(2));
    e2_n : and_gate port map(a => nA(2), b => nB(2), y => t_e_na_nb(2));
    e2_or: or_gate  port map(a => t_e_ab(2), b => t_e_na_nb(2), y => e(2));

    e1_ab: and_gate port map(a => A(1),  b => B(1),  y => t_e_ab(1));
    e1_n : and_gate port map(a => nA(1), b => nB(1), y => t_e_na_nb(1));
    e1_or: or_gate  port map(a => t_e_ab(1), b => t_e_na_nb(1), y => e(1));

    e0_ab: and_gate port map(a => A(0),  b => B(0),  y => t_e_ab(0));
    e0_n : and_gate port map(a => nA(0), b => nB(0), y => t_e_na_nb(0));
    e0_or: or_gate  port map(a => t_e_ab(0), b => t_e_na_nb(0), y => e(0));

    -- A_eq_B = e3 & e2 & e1 & e0
    eq32_and : and_gate port map(a => e(3),  b => e(2), y => eq32);
    eq321_and: and_gate port map(a => eq32,   b => e(1), y => eq321);
    eq_all   : and_gate port map(a => eq321,  b => e(0), y => A_eq_B);

    -- A_gt_B
    g3_and : and_gate port map(a => A(3),   b => nB(3), y => g3);

    g2a_and: and_gate port map(a => e(3),   b => A(2),  y => g2a);
    g2_and : and_gate port map(a => g2a,    b => nB(2), y => g2);

    g1a_and: and_gate port map(a => eq32,   b => A(1),  y => g1a);
    g1_and : and_gate port map(a => g1a,    b => nB(1), y => g1);

    g0a_and: and_gate port map(a => eq321,  b => A(0),  y => g0a);
    g0_and : and_gate port map(a => g0a,    b => nB(0), y => g0);

    gt_or_a: or_gate  port map(a => g3,     b => g2,    y => gt_or1);
    gt_or_b: or_gate  port map(a => g1,     b => g0,    y => gt_or2);
    gt_or  : or_gate  port map(a => gt_or1, b => gt_or2,y => A_gt_B);

    -- A_lt_B
    l3_and : and_gate port map(a => nA(3),  b => B(3),  y => l3);

    l2a_and: and_gate port map(a => e(3),   b => nA(2), y => l2a);
    l2_and : and_gate port map(a => l2a,    b => B(2),  y => l2);

    l1a_and: and_gate port map(a => eq32,   b => nA(1), y => l1a);
    l1_and : and_gate port map(a => l1a,    b => B(1),  y => l1);

    l0a_and: and_gate port map(a => eq321,  b => nA(0), y => l0a);
    l0_and : and_gate port map(a => l0a,    b => B(0),  y => l0);

    lt_or_a: or_gate  port map(a => l3,     b => l2,    y => lt_or1);
    lt_or_b: or_gate  port map(a => l1,     b => l0,    y => lt_or2);
    lt_or  : or_gate  port map(a => lt_or1, b => lt_or2,y => A_lt_B);
end Structural;




