library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sequence_detector_moore is
    Port (
        clk     : in  STD_LOGIC;
        reset_n : in  STD_LOGIC;
        din     : in  STD_LOGIC;      
        detected : out STD_LOGIC         
    );
end sequence_detector_moore;

architecture Behavioral of sequence_detector_moore is
    
    type state_type is (S0, S1, S2, S3, S4);  
    signal current_state, next_state : state_type;
    
begin
    
    process (clk, reset_n)
    begin
        if reset_n = '0' then
            current_state <= S0;  
        elsif rising_edge(clk) then
            current_state <= next_state;  
        end if;
    end process;

    process (current_state, din)
    begin
        case current_state is
            when S0 =>
                detected <= '0';
                if din = '1' then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;

            when S1 =>
                detected <= '0';
                if din = '1' then
                    next_state <= S2;
                else
                    next_state <= S0;
                end if;

            when S2 =>
                detected <= '0';
                if din = '0' then
                    next_state <= S3;
                else
                    next_state <= S2;
                end if;

            when S3 =>
                detected <= '0';
                if din = '1' then
                    next_state <= S4;
                else
                    next_state <= S0;
                end if;
            
            when S4 =>
                detected <= '1';
                if din = '1' then
                    next_state <= S2;
                else
                    next_state <= S0;
                end if;
                
        end case;
    end process;

end Behavioral;