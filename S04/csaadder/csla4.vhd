library ieee;
use ieee.std_logic_1164.all;

entity csla4 is
  port (
    a    : in  std_logic_vector(3 downto 0);
    b    : in  std_logic_vector(3 downto 0);
    cin  : in  std_logic;
    sum  : out std_logic_vector(3 downto 0);
    cout : out std_logic
  );
end entity;



architecture structural of csla4 is
  signal c2  : std_logic;
  signal s0  : std_logic_vector(1 downto 0);
  signal s1  : std_logic_vector(1 downto 0);
  
  
begin
  blk0 : entity work.csla_block(structural)
    port map (
      a      => a(1 downto 0),
      b      => b(1 downto 0),
      c_prev => cin,
      sum    => s0,
      c_out  => c2
    );



  blk1 : entity work.csla_block(structural)
    port map (
      a      => a(3 downto 2),
      b      => b(3 downto 2),
      c_prev => c2,
      sum    => s1,
      c_out  => cout
    );


  sum(1 downto 0) <= s0;
  sum(3 downto 2) <= s1;
  
end architecture;
