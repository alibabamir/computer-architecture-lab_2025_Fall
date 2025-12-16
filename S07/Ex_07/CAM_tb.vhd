library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CAM_tb is
end CAM_tb;

architecture Behavioral of CAM_tb is

    component CAM
        generic (
            DEPTH  : integer := 16;
            ADDR_W : integer := 4;
            DATA_W : integer := 8
        );
        port (
            clk      : in  std_logic;
            rst      : in  std_logic;
            wr       : in  std_logic;
            rd       : in  std_logic;
            data_in  : in  std_logic_vector(DATA_W - 1 downto 0);
            match    : out std_logic;
            addr_out : out std_logic_vector(ADDR_W - 1 downto 0)
        );
    end component;

    -- Inputs
    signal clk     : std_logic := '0';
    signal rst     : std_logic := '0';
    signal wr      : std_logic := '0';
    signal rd      : std_logic := '0';
    signal data_in : std_logic_vector(7 downto 0) := (others => '0');

    -- Outputs
    signal match    : std_logic;
    signal addr_out : std_logic_vector(3 downto 0);

    -- Clock period
    constant clk_period : time := 10 ns;

begin

    uut: CAM
    port map (
        clk      => clk,
        rst      => rst,
        wr       => wr,
        rd       => rd,
        data_in  => data_in,
        match    => match,
        addr_out => addr_out
    );

    -- Clock process
    clk_process :process
    begin
        clk <= '0';
        wait for clk_period/2;
        clk <= '1';
        wait for clk_period/2;
    end process;

    -- Stimulus process
    stim_proc: process
    begin		
        -- 1. Reset
        rst <= '0';
        wait for 20 ns;
        rst <= '1';
        wait for 10 ns;

        -- 2. Write 0xAA (Should go to Addr 0)
        wr <= '1'; data_in <= x"AA";
        wait for clk_period;
        wr <= '0';
        wait for clk_period;

        -- 3. Write 0xBB (Should go to Addr 1)
        wr <= '1'; data_in <= x"BB";
        wait for clk_period;
        wr <= '0';
        wait for clk_period;

        -- 4. Read 0xAA (Expect Match=1, Addr=0)
        rd <= '1'; data_in <= x"AA";
        wait for clk_period;
        rd <= '0';
        wait for clk_period;

        -- 5. Read 0xCC (Expect Match=0)
        rd <= '1'; data_in <= x"CC";
        wait for clk_period;
        rd <= '0';
        wait for clk_period;

        -- 6. Try to Write 0xAA again (Duplicate check - No new write)
        wr <= '1'; data_in <= x"AA";
        wait for clk_period;
        wr <= '0';
        
        wait;
    end process;

end Behavioral;