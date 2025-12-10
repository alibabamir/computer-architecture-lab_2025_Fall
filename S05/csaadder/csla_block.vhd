library ieee;
use ieee.std_logic_1164.all;

entity csla_block is
  port (
    a      : in  std_logic_vector(1 downto 0);
    b      : in  std_logic_vector(1 downto 0);
    c_prev : in  std_logic;      
    sum    : out std_logic_vector(1 downto 0);
    c_out  : out std_logic              
  );
end entity;

architecture structural of csla_block is
  signal sum0, sum1 : std_logic_vector(1 downto 0);
  signal c0, c1     : std_logic;
begin

  r0 : entity work.rca2(structural)
  
    port map ( a => a,
	 b => b,
	 cin => '0',
	 sum => sum0,
	 cout => c0 );


  r1 : entity work.rca2(structural)
    port map ( a => a, 
	 b => b, 
	 cin => '1',
	 sum => sum1,
	 cout => c1 );

  mux_s : entity work.mux2_vec2(rtl)
    port map ( d0 => sum0,
	 d1 => sum1,
	 sel => c_prev,
	 y => sum );

  mux_c : entity work.mux2_bit(rtl)
    port map ( d0 => c0,
	 d1 => c1,
	 sel => c_prev,
	 y => c_out );
end architecture;



