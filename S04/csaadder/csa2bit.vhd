library ieee;
use ieee.std_logic_1164.all;

entity rca2 is
  port (
    a    : in  std_logic_vector(1 downto 0);
    b    : in  std_logic_vector(1 downto 0);
    cin  : in  std_logic;
    sum  : out std_logic_vector(1 downto 0);
    cout : out std_logic
  );
end entity;

architecture structural of rca2 is
  signal c0, c1, c2 : std_logic;
begin
  c0 <= cin;

  fa0: entity work.full_adder(rtl)
    port map (
      a    => a(0),
      b    => b(0),
      cin  => c0,
      sum  => sum(0),
      cout => c1
    );

  fa1: entity work.full_adder(rtl)
    port map (
      a    => a(1),
      b    => b(1),
      cin  => c1,
      sum  => sum(1),
      cout => c2
    );

  cout <= c2;
end architecture;
