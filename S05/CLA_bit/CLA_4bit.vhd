library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity CLA_4bit is
    Port ( 
        A    : in  STD_LOGIC_VECTOR (3 downto 0);
        B    : in  STD_LOGIC_VECTOR (3 downto 0);
        Cin  : in  STD_LOGIC;
        S    : out STD_LOGIC_VECTOR (3 downto 0);
        Cout : out STD_LOGIC
    );
end CLA_4bit;

architecture Dataflow of CLA_4bit is

    signal G : STD_LOGIC_VECTOR (3 downto 0); 
    signal P : STD_LOGIC_VECTOR (3 downto 0);
    signal C : STD_LOGIC_VECTOR (4 downto 1); 

begin

    G <= A and B; 
    P <= A xor B; 

    C(1) <= G(0) or (P(0) and Cin);

    C(2) <= G(1) or (P(1) and G(0)) or (P(1) and P(0) and Cin);

    C(3) <= G(2) or (P(2) and G(1)) or (P(2) and P(1) and G(0)) or (P(2) and P(1) and P(0) and Cin);

    C(4) <= G(3) or (P(3) and G(2)) or (P(3) and P(2) and G(1)) or (P(3) and P(2) and P(1) and G(0)) or (P(3) and P(2) and P(1) and P(0) and Cin);

    S(0) <= P(0) xor Cin;
    S(1) <= P(1) xor C(1);
    S(2) <= P(2) xor C(2);
    S(3) <= P(3) xor C(3);

    Cout <= C(4);

end Dataflow;