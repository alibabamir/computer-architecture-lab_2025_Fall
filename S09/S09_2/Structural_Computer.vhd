library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Structural_Computer is
    Port ( 
        CLK        : in  STD_LOGIC;
        RESET      : in  STD_LOGIC;
        SWITCHES   : in  STD_LOGIC_VECTOR (7 downto 0); -- Input
        LEDS_OUT   : out STD_LOGIC_VECTOR (7 downto 0)  -- Output
    );
end Structural_Computer;

architecture Structural of Structural_Computer is

    -- Signals
    signal internal_bus    : STD_LOGIC_VECTOR(7 downto 0);
    signal external_data   : STD_LOGIC_VECTOR(7 downto 0);
    signal address_bus     : STD_LOGIC_VECTOR(4 downto 0);
    
    -- Control Signals
    signal pc_inc, pc_load, pc_oe, mar_load, ir_load, ir_addr_oe : STD_LOGIC;
    signal mdr_le_in, mdr_le_out, mdr_oe_in, mdr_oe_out : STD_LOGIC;
    signal acc_load, acc_oe, alu_le_t1, alu_le_t2, alu_oe : STD_LOGIC;
    signal mem_rd, mem_wr : STD_LOGIC;
    signal opcode_wire : STD_LOGIC_VECTOR(2 downto 0);
    signal carry_wire, alu_c_flag : STD_LOGIC;
    signal alu_sel : STD_LOGIC_VECTOR(1 downto 0);
    signal cs_rom, cs_ram, cs_io0, cs_io1, cs_io2 : STD_LOGIC;

begin

    -- Control Unit
    U_CU: entity work.Control_Unit port map (
        clk => CLK, rst => RESET, opcode => opcode_wire, carry_flag => carry_wire,
        pc_inc => pc_inc, pc_load => pc_load, pc_oe => pc_oe, mar_load => mar_load,
        ir_load => ir_load, ir_addr_oe => ir_addr_oe,
        mdr_le_in => mdr_le_in, mdr_le_out => mdr_le_out, mdr_oe_in => mdr_oe_in, mdr_oe_out => mdr_oe_out,
        acc_load => acc_load, acc_oe => acc_oe, alu_le_t1 => alu_le_t1, alu_le_t2 => alu_le_t2, alu_oe => alu_oe, alu_sel => alu_sel,
        mem_rd => mem_rd, mem_wr => mem_wr
    );

    -- Registers
    U_PC: entity work.Reg_PC port map (clk=>CLK, rst=>RESET, load_en=>pc_load, out_en=>pc_oe, inc_en=>pc_inc, clr_en=>'0', data_bus=>internal_bus);
    U_MAR: entity work.Reg_MAR port map (clk=>CLK, rst=>RESET, load_en=>mar_load, data_in=>internal_bus, addr_out=>address_bus);
    U_IR: entity work.Reg_IR port map (clk=>CLK, rst=>RESET, load_en=>ir_load, out_en=>ir_addr_oe, data_bus=>internal_bus, opcode=>opcode_wire);
    U_ACC: entity work.Reg_ACC port map (clk=>CLK, rst=>RESET, load_en=>acc_load, out_en=>acc_oe, data_bus=>internal_bus, q_out=>open);
    U_MDR: entity work.Reg_MDR port map (clk=>CLK, rst=>RESET, le_in=>mdr_le_in, le_out=>mdr_le_out, oe_in=>mdr_oe_in, oe_out=>mdr_oe_out, bus_int=>internal_bus, bus_ext=>external_data);

    -- ALU
    U_ALU: entity work.ALU_Block port map (
        clk=>CLK, rst=>RESET, le_temp1=>alu_le_t1, le_temp2=>alu_le_t2, oe_result=>alu_oe, op_sel=>alu_sel,
        carry_flag=>carry_wire, data_bus=>internal_bus
    );

    -- Memory & IO Decoder
    U_Decoder: entity work.Addr_Decoder port map (address=>address_bus, cs_rom=>cs_rom, cs_ram=>cs_ram, cs_io0=>cs_io0, cs_io1=>cs_io1, cs_io2=>cs_io2);
    
    U_ROM: entity work.Program_ROM port map (clk=>CLK, rd_en=>mem_rd, cs=>cs_rom, addr=>address_bus(3 downto 0), data_out=>external_data);
    U_RAM: entity work.Data_RAM port map (clk=>CLK, wr_en=>mem_wr, rd_en=>mem_rd, cs=>cs_ram, addr=>address_bus(2 downto 0), data_in=>external_data, data_out=>external_data);

    -- IO PORTS
    -- Port 0 (Address 1D): Input Switches
    U_IN_PORT: entity work.Input_Port port map (
        clk => CLK, rd_en => mem_rd, cs => cs_io0,
        data_in => SWITCHES, data_bus => external_data
    );

    -- Port 2 (Address 1F): Output LEDs
    U_OUT_PORT: entity work.IO_Port port map (
        clk => CLK, rst => RESET, cs => cs_io2, wr_en => mem_wr,
        data_in => external_data, data_out => LEDS_OUT
    );

end Structural;