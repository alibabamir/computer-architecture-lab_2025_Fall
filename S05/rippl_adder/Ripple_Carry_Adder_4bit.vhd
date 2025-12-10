library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Ripple_Carry_Adder_4bit is
    Port ( 
        A    : in  STD_LOGIC_VECTOR (3 downto 0);
        B    : in  STD_LOGIC_VECTOR (3 downto 0);
        Cin  : in  STD_LOGIC;
        S    : out STD_LOGIC_VECTOR (3 downto 0);
        Cout : out STD_LOGIC
    );
end Ripple_Carry_Adder_4bit;

architecture Structure of Ripple_Carry_Adder_4bit is

    component Full_Adder
        Port ( 
            A    : in  STD_LOGIC;
            B    : in  STD_LOGIC;
            Cin  : in  STD_LOGIC;
            Sum  : out STD_LOGIC;
            Cout : out STD_LOGIC
        );
    end component;

    signal C_internal : STD_LOGIC_VECTOR (4 downto 0); 

begin

    C_internal(0) <= Cin;

    G: for i in 0 to 3 generate
        FA_i: Full_Adder port map (
            A    => A(i),
            B    => B(i),
            Cin  => C_internal(i),
            Sum  => S(i),
            Cout => C_internal(i+1)
        );
    end generate G;

    Cout <= C_internal(4);

end Structure;