library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Very simple testbench for csla4 (prints 5-bit result too)
entity tb_csla4 is
end entity tb_csla4;

architecture sim of tb_csla4 is
  -- DUT signals
  signal a    : std_logic_vector(3 downto 0) := (others => '0');
  signal b    : std_logic_vector(3 downto 0) := (others => '0');
  signal cin  : std_logic := '0';
  signal sum  : std_logic_vector(3 downto 0);
  signal cout : std_logic;
begin
  dut : entity work.csla4(structural)
    port map (
      a    => a,
      b    => b,
      cin  => cin,
      sum  => sum,
      cout => cout
    );

  stim : process
    procedure print_line is
	 
      variable ai, bi, sumi, res5i : integer;
      variable res5 : std_logic_vector(4 downto 0);
		
    begin
      ai   := to_integer(unsigned(a));
      bi   := to_integer(unsigned(b));
      sumi := to_integer(unsigned(sum));
      res5 := cout & sum;                          -- 5-bit result = {cout,sum}
      res5i := to_integer(unsigned(res5));

      report "a=" & integer'image(ai) &
             " b=" & integer'image(bi) &
             " cin=" & std_logic'image(cin) &
             " -> sum=" & integer'image(sumi) &
             " cout=" & std_logic'image(cout) &
             " | res5 (cout&sum)=" & integer'image(res5i) & " (bin=" &
             std_logic'image(res5(4)) & std_logic'image(res5(3)) &
             std_logic'image(res5(2)) & std_logic'image(res5(1)) &
             std_logic'image(res5(0)) & ")";
    end procedure;
  begin
    a <= "0000"; b <= "0000"; cin <= '0'; wait for 10 ns; print_line;

    a <= "0001"; b <= "0001"; cin <= '0'; wait for 10 ns; print_line;

    a <= "0011"; b <= "0001"; cin <= '0'; wait for 10 ns; print_line;

    a <= "1111"; b <= "0001"; cin <= '0'; wait for 10 ns; print_line;

    a <= "0101"; b <= "1010"; cin <= '1'; wait for 10 ns; print_line;

    a <= "0111"; b <= "0111"; cin <= '1'; wait for 10 ns; print_line;

    a <= "1111"; b <= "1111"; cin <= '1'; wait for 10 ns; print_line;

    report "DONE.";
    wait;  
  end process;

end architecture sim;
