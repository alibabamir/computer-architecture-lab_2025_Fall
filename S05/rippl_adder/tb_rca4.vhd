library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_rca4 is
end tb_rca4;

architecture Behavioral of tb_rca4 is

    component Ripple_Carry_Adder_4bit
        Port ( 
            A    : in  STD_LOGIC_VECTOR (3 downto 0);
            B    : in  STD_LOGIC_VECTOR (3 downto 0);
            Cin  : in  STD_LOGIC;
            S    : out STD_LOGIC_VECTOR (3 downto 0);
            Cout : out STD_LOGIC
        );
    end component;

    signal A_test    : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal B_test    : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
    signal Cin_test  : STD_LOGIC := '0';

    signal S_test    : STD_LOGIC_VECTOR (3 downto 0);
    signal Cout_test : STD_LOGIC;

    constant delay_time : time := 100 ns;

begin

    uut: Ripple_Carry_Adder_4bit port map (
        A    => A_test,
        B    => B_test,
        Cin  => Cin_test,
        S    => S_test,
        Cout => Cout_test
    );

    stimulus_process: process
    begin
        
        A_test <= "0011";
        B_test <= "0101";
        Cin_test <= '0';
        wait for delay_time;
        
        A_test <= "0111";
        B_test <= "0111";
        Cin_test <= '0';
        wait for delay_time;

        A_test <= "1111";
        B_test <= "0001";
        Cin_test <= '0';
        wait for delay_time;
        
        A_test <= "0001";
        B_test <= "0001";
        Cin_test <= '1';
        wait for delay_time;
        
        A_test <= "1111";
        B_test <= "1111";
        Cin_test <= '1';
        wait for delay_time;
        
        wait; 

    end process;

end Behavioral;