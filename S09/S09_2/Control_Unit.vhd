library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Control_Unit is
    Port ( 
        clk         : in  STD_LOGIC;
        rst         : in  STD_LOGIC;
        opcode      : in  STD_LOGIC_VECTOR (2 downto 0);
        carry_flag  : in  STD_LOGIC;
        
        -- Control Signals
        pc_inc, pc_load, pc_oe : out STD_LOGIC;
        mar_load               : out STD_LOGIC;
        ir_load, ir_addr_oe    : out STD_LOGIC;
        mdr_le_in, mdr_le_out, mdr_oe_in, mdr_oe_out : out STD_LOGIC;
        acc_load, acc_oe       : out STD_LOGIC;
        alu_le_t1, alu_le_t2, alu_oe : out STD_LOGIC;
        alu_sel                : out STD_LOGIC_VECTOR (1 downto 0);
        mem_rd, mem_wr         : out STD_LOGIC
    );
end Control_Unit;

architecture Behavioral of Control_Unit is
    -- Added S_EXEC_5 for proper ADD/AND completion
    type state_type is (S_RESET, S_FETCH_1, S_FETCH_2, S_FETCH_3, S_EXEC_1, S_EXEC_2, S_EXEC_3, S_EXEC_4, S_EXEC_5);
    signal current_state, next_state : state_type;
begin

    process(clk, rst)
    begin
        if rst = '0' then current_state <= S_RESET;
        elsif rising_edge(clk) then current_state <= next_state;
        end if;
    end process;

    process(current_state, opcode, carry_flag)
    begin
        -- Initialize all outputs to '0'
        pc_inc<='0'; pc_load<='0'; pc_oe<='0'; mar_load<='0'; ir_load<='0'; ir_addr_oe<='0';
        mdr_le_in<='0'; mdr_le_out<='0'; mdr_oe_in<='0'; mdr_oe_out<='0';
        acc_load<='0'; acc_oe<='0'; alu_le_t1<='0'; alu_le_t2<='0'; alu_oe<='0'; alu_sel<="00";
        mem_rd<='0'; mem_wr<='0'; 
        
        next_state <= S_FETCH_1; -- Default

        case current_state is
            when S_RESET   => next_state <= S_FETCH_1;
            
            -- FETCH CYCLE
            when S_FETCH_1 => pc_oe <= '1'; mar_load <= '1'; next_state <= S_FETCH_2;
            when S_FETCH_2 => mem_rd <= '1'; mdr_le_out <= '1'; pc_inc <= '1'; next_state <= S_FETCH_3;
            when S_FETCH_3 => mdr_oe_in <= '1'; ir_load <= '1'; next_state <= S_EXEC_1;
            
            -- EXECUTE CYCLE
            when S_EXEC_1 =>
                case opcode is
                    when "000"|"001"|"100"|"101" => ir_addr_oe <= '1'; mar_load <= '1'; next_state <= S_EXEC_2; -- Mem Ops
                    when "010" => ir_addr_oe <= '1'; pc_load <= '1'; next_state <= S_FETCH_1; -- JP
                    when "011" => if carry_flag='1' then ir_addr_oe<='1'; pc_load<='1'; end if; next_state <= S_FETCH_1; -- JPC
                    when "110"|"111" => acc_oe <= '1'; alu_le_t1 <= '1'; next_state <= S_EXEC_2; -- NOT/SHR
                    when others => next_state <= S_FETCH_1;
                end case;

            when S_EXEC_2 =>
                case opcode is
                    when "000" => mem_rd <= '1'; mdr_le_out <= '1'; next_state <= S_EXEC_3; -- LD
                    when "001" => acc_oe <= '1'; mdr_le_in <= '1'; next_state <= S_EXEC_3; -- ST
                    when "100"|"101" => acc_oe <= '1'; alu_le_t1 <= '1'; next_state <= S_EXEC_3; -- ADD/AND (Step 2: Load T1)
                    when "110" => alu_sel<="10"; alu_oe<='1'; acc_load<='1'; next_state<=S_FETCH_1; -- NOT Done
                    when "111" => alu_sel<="11"; alu_oe<='1'; acc_load<='1'; next_state<=S_FETCH_1; -- SHR Done
                    when others => next_state <= S_FETCH_1;
                end case;

            when S_EXEC_3 =>
                case opcode is
                    when "000" => mdr_oe_in <= '1'; acc_load <= '1'; next_state <= S_FETCH_1; -- LD Done
                    when "001" => mdr_oe_out <= '1'; mem_wr <= '1'; next_state <= S_FETCH_1; -- ST Done
                    when "100"|"101" => mem_rd <= '1'; mdr_le_out <= '1'; next_state <= S_EXEC_4; -- ADD/AND (Step 3: Fetch Operand)
                    when others => next_state <= S_FETCH_1;
                end case;

            when S_EXEC_4 =>
                -- Move Operand from MDR to ALU Temp2
                if opcode="100" or opcode="101" then
                    mdr_oe_in <= '1'; 
                    alu_le_t2 <= '1';
                    next_state <= S_EXEC_5;
                else
                    next_state <= S_FETCH_1;
                end if;

            when S_EXEC_5 =>
                -- Perform Calculation and Store in ACC
                if opcode="101" then alu_sel <= "01"; end if; -- ADD
                if opcode="100" then alu_sel <= "00"; end if; -- AND
                alu_oe <= '1';
                acc_load <= '1';
                next_state <= S_FETCH_1;

        end case;
    end process;
end Behavioral;