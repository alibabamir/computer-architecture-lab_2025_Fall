library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity Simple_CPU is
    Port ( 
        clk         : in  STD_LOGIC;
        rst_n       : in  STD_LOGIC;
        mem_data_in : in  STD_LOGIC_VECTOR (7 downto 0);
        mem_data_out: out STD_LOGIC_VECTOR (7 downto 0);
        mem_addr    : out STD_LOGIC_VECTOR (3 downto 0);
        mem_wr      : out STD_LOGIC;
        led_display : out STD_LOGIC_VECTOR (7 downto 0);
        halt_sig    : out STD_LOGIC
    );
end Simple_CPU;

architecture Behavior of Simple_CPU is

    -- Registers
    signal PC       : STD_LOGIC_VECTOR(3 downto 0);
    signal MAR      : STD_LOGIC_VECTOR(3 downto 0); -- Memory Address Reg
    signal ACC      : STD_LOGIC_VECTOR(8 downto 0); -- 9th bit for Carry
    signal IR       : STD_LOGIC_VECTOR(7 downto 0);
    
    -- Control Signals
    signal state    : integer range 0 to 2 := 0;
    signal halted   : STD_LOGIC := '0';
    
    -- Opcodes
    constant OP_LOAD  : STD_LOGIC_VECTOR(3 downto 0) := "0001";
    constant OP_STORE : STD_LOGIC_VECTOR(3 downto 0) := "0010";
    constant OP_ADD   : STD_LOGIC_VECTOR(3 downto 0) := "0101";
    constant OP_SUB   : STD_LOGIC_VECTOR(3 downto 0) := "0110";
    constant OP_SHR   : STD_LOGIC_VECTOR(3 downto 0) := "0111";
    constant OP_SHL   : STD_LOGIC_VECTOR(3 downto 0) := "1000";
    constant OP_SHOW  : STD_LOGIC_VECTOR(3 downto 0) := "1001";
    constant OP_HALT  : STD_LOGIC_VECTOR(3 downto 0) := "1110";
    
begin

    process(clk, rst_n)
    begin
        if rst_n = '0' then
            -- Reset Logic
            PC <= (others => '0');
            MAR <= (others => '0');
            ACC <= (others => '0');
            halted <= '0';
            state <= 0;
            mem_wr <= '0';
            
        elsif rising_edge(clk) then
            if halted = '0' then
                case state is
                    
                    -- Fetch Cycle
                    when 0 =>
                        MAR <= PC;
                        state <= 1;
                        
                    -- Decode & Execute
                    when 1 =>
                        IR <= mem_data_in; -- Get opcode
                        PC <= PC + 1;      -- Increment PC
                        
                        -- Set address for operand if needed
                        if mem_data_in(7 downto 4) = OP_LOAD or 
                           mem_data_in(7 downto 4) = OP_ADD  or 
                           mem_data_in(7 downto 4) = OP_SUB then
                            MAR <= mem_data_in(3 downto 0);
                            state <= 2; -- Go to operand fetch state
                        elsif mem_data_in(7 downto 4) = OP_STORE then
                            MAR <= mem_data_in(3 downto 0);
                            mem_data_out <= ACC(7 downto 0);
                            mem_wr <= '1'; -- Trigger write
                            state <= 2;    -- Wait for write
                        else
                            -- Immediate instructions (No operand fetch needed)
                            case mem_data_in(7 downto 4) is
                                when OP_SHR  => ACC <= '0' & ACC(8 downto 1);
                                when OP_SHL  => ACC <= ACC(7 downto 0) & '0';
                                when OP_SHOW => led_display <= ACC(7 downto 0);
                                when OP_HALT => halted <= '1';
                                when others => null;
                            end case;
                            state <= 0; -- Back to fetch
                        end if;
                        
                    -- Operand Fetch / Memory Access Wait
                    when 2 =>
                        mem_wr <= '0'; -- Disable write if it was on
                        
                        case IR(7 downto 4) is
                            when OP_LOAD => ACC <= '0' & mem_data_in;
                            when OP_ADD  => ACC <= ACC + ('0' & mem_data_in);
                            when OP_SUB  => ACC <= ACC - ('0' & mem_data_in);
                            when others  => null; 
                        end case;
                        
                        state <= 0; -- Back to fetch
                        
                end case;
            end if;
        end if;
    end process;

    -- Output assignments
    mem_addr <= MAR;
    halt_sig <= halted;

end Behavior;