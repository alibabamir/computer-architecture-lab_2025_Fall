library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Testbench for csla4 (simple, few cases)
entity tb_csla4 is
end entity;

architecture sim of csla4_tb is
  -- DUT ports
  signal a    : std_logic_vector(3 downto 0) := (others => '0');
  signal b    : std_logic_vector(3 downto 0) := (others => '0');
  signal cin  : std_logic := '0';
  signal sum  : std_logic_vector(3 downto 0);
  signal cout : std_logic;

begin
  -- Instantiate Device Under Test (DUT)
  dut : entity work.csla4(structural)
    port map (
      a    => a,
      b    => b,
      cin  => cin,
      sum  => sum,
      cout => cout
    );

  -- Stimulus + self-check
  stim : process
    -- Helper to apply a vector and check result after 10 ns
    procedure apply_and_check(
      constant a_in  : std_logic_vector(3 downto 0);
      constant b_in  : std_logic_vector(3 downto 0);
      constant cin_in: std_logic
    ) is
      variable carry_int : integer;
      variable total     : unsigned(4 downto 0);
    begin
      a   <= a_in;
      b   <= b_in;
      cin <= cin_in;
      wait for 10 ns;

      -- Expected = ('0' & a) + ('0' & b) + cin
      carry_int := (case cin_in is when '1' => 1, when others => 0 end case);
      total := unsigned('0' & a_in) + unsigned('0' & b_in) + to_unsigned(carry_int, 5);

      assert (sum  = std_logic_vector(total(3 downto 0)) and
              cout = std_logic(total(4)))
        report "Mismatch! a=" & to_hstring(a_in) &
               " b=" & to_hstring(b_in) &
               " cin=" & std_logic'image(cin_in) &
               " -> got sum=" & to_hstring(sum) & ", cout=" & std_logic'image(cout) &
               " | expected sum=" & to_hstring(std_logic_vector(total(3 downto 0))) &
               ", cout=" & std_logic'image(std_logic(total(4)))
        severity error;
    end procedure;
  begin
    -- ??? ???? ????? ? ????????
    apply_and_check("0000", "0000", '0');  -- ??? + ???
    apply_and_check("0001", "0001", '0');  -- 1 + 1
    apply_and_check("0011", "0001", '0');  -- 3 + 1 ???? ??? ?????
    apply_and_check("1111", "0001", '0');  -- 15 + 1 ????? ??? ?????
    apply_and_check("0101", "1010", '1');  -- 5 + 10 ?? cin=1
    apply_and_check("1001", "0111", '0');  -- 9 + 7 (carry)
    apply_and_check("0111", "0111", '1');  -- 7 + 7 + cin
    apply_and_check("1010", "0101", '1');  -- 10 + 5 + cin

    report "All simple tests finished." severity note;
    wait; -- stop
  end process;

end architecture;
