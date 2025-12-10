library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity tb_cla4 is

end tb_cla4;

architecture Behavioral of tb_cla4 is

    component CLA_4bit
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


begin

    uut: CLA_4bit port map (
        A    => A_test,
        B    => B_test,
        Cin  => Cin_test,
        S    => S_test,
        Cout => Cout_test
    );

    stimulus_process: process
    begin
        
        
        A_test <= "0010"; 
        B_test <= "0011"; 
        Cin_test <= '0';
		  
        wait for 10ns;
        
        A_test <= "0111"; 
        B_test <= "1000";
        Cin_test <= '0';
		  
        wait for 100ns;
       
        A_test <= "1111"; 
        B_test <= "0001";
        Cin_test <= '0';
        wait for 100ns;
        
        A_test <= "0101"; 
        B_test <= "0101"; 
        Cin_test <= '1';
        wait for 100ns;

        A_test <= "1111"; 
        B_test <= "1111"; 
        Cin_test <= '1';
        wait for 100ns;
       
        wait; 

    end process;

end Behavioral;