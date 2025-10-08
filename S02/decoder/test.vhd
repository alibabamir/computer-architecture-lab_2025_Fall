library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity tb_Decoder2to4 is
end tb_Decoder2to4;

architecture sim of tb_Decoder2to4 is
    -- DUT
    component Decoder2to4 is
        Port(
            a1, a0 : in  std_logic;
            d0, d1, d2, d3 : out std_logic
        );
    end component;

    signal a1, a0 : std_logic := '0';
    signal d0, d1, d2, d3 : std_logic;
begin
    uut: Decoder2to4
        port map(
            a1 => a1, a0 => a0,
            d0 => d0, d1 => d1, d2 => d2, d3 => d3
        );

    stim: process
        variable tmp   : std_logic_vector(1 downto 0);
        variable exp_d0, exp_d1, exp_d2, exp_d3 : std_logic;
    begin
        for i in 0 to 3 loop
            tmp := std_logic_vector(to_unsigned(i, 2));
            a1  <= tmp(1);
            a0  <= tmp(0);
            wait for 10 ns;

            -- ????????
            case i is
                when 0 => exp_d0:='1'; exp_d1:='0'; exp_d2:='0'; exp_d3:='0';
                when 1 => exp_d0:='0'; exp_d1:='1'; exp_d2:='0'; exp_d3:='0';
                when 2 => exp_d0:='0'; exp_d1:='0'; exp_d2:='1'; exp_d3:='0';
                when others => exp_d0:='0'; exp_d1:='0'; exp_d2:='0'; exp_d3:='1';
            end case;

            -- ????????
            assert d0 = exp_d0 report "Decoder2to4: d0 mismatch" severity error;
            assert d1 = exp_d1 report "Decoder2to4: d1 mismatch" severity error;
            assert d2 = exp_d2 report "Decoder2to4: d2 mismatch" severity error;
            assert d3 = exp_d3 report "Decoder2to4: d3 mismatch" severity error;
        end loop;

        assert false report "Decoder2to4 test completed." severity note;
        wait;
    end process;
end sim;
