library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_Comparator4bit is
end tb_Comparator4bit;

architecture Behavioral of tb_Comparator4bit is
    component Comparator4bit
        Port(
            A, B    : in  std_logic_vector(3 downto 0);
            A_gt_B  : out std_logic;
            A_eq_B  : out std_logic;
            A_lt_B  : out std_logic
        );
    end component;

    signal A, B : std_logic_vector(3 downto 0);
    signal A_gt_B, A_eq_B, A_lt_B : std_logic;

begin
    UUT: Comparator4bit port map(
        A => A,
        B => B,
        A_gt_B => A_gt_B,
        A_eq_B => A_eq_B,
        A_lt_B => A_lt_B
    );

    stimulus: process
    begin
        A <= "0000";
        B <= "0000";
        wait for 10 ns;
        
        A <= "1000";
        B <= "0111";
        wait for 10 ns;
        
        A <= "0111";
        B <= "1000";
        wait for 10 ns;
        
        A <= "1101";
        B <= "1100";
        wait for 10 ns;
        
        A <= "1010";
        B <= "1011";
        wait for 10 ns;
        
        A <= "1010";
        B <= "1001";
        wait for 10 ns;
        
        A <= "0101";
        B <= "0110";
        wait for 10 ns;
        
        A <= "1111";
        B <= "1111";
        wait for 10 ns;
        
        A <= "1111";
        B <= "0000";
        wait for 10 ns;
        
        A <= "0000";
        B <= "1111";
        wait for 10 ns;
        
        A <= "0110";
        B <= "0101";
        wait for 10 ns;
        
        A <= "0011";
        B <= "1100";
        wait for 10 ns;
        
        wait;
    end process;


end Behavioral;