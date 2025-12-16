library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity CAM is
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
end CAM;

architecture Behavioral of CAM is

    type ram_type is array (0 to DEPTH - 1) of std_logic_vector(DATA_W - 1 downto 0);
    signal memory     : ram_type;
    signal valid_bits : std_logic_vector(0 to DEPTH - 1);

begin

    process(clk, rst)
    begin
        if (rst = '0') then
            valid_bits <= (others => '0');
            match      <= '0';
            addr_out   <= (others => '0');
            
        elsif rising_edge(clk) then
            match <= '0';
            
            -- Write Operation
            if (wr = '1') then
                for i in 0 to DEPTH - 1 loop
                    -- Check for duplicate
                    if (valid_bits(i) = '1' and memory(i) = data_in) then
                        match    <= '1';
                        addr_out <= std_logic_vector(to_unsigned(i, ADDR_W));
                        exit;
                    -- Write to first empty slot
                    elsif (valid_bits(i) = '0') then
                        memory(i)     <= data_in;
                        valid_bits(i) <= '1';
                        addr_out      <= std_logic_vector(to_unsigned(i, ADDR_W));
                        match         <= '1'; -- Indicate successful write
                        exit;
                    end if;
                end loop;

            -- Read Operation
            elsif (rd = '1') then
                for i in 0 to DEPTH - 1 loop
                    if (valid_bits(i) = '1' and memory(i) = data_in) then
                        match    <= '1';
                        addr_out <= std_logic_vector(to_unsigned(i, ADDR_W));
                        exit;
                    end if;
                end loop;
            end if;
        end if;
    end process;

end Behavioral;