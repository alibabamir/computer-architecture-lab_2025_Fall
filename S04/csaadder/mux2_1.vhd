library ieee;
use ieee.std_logic_1164.all;

entity mux2_bit is
  port (
    d0  : in  std_logic;
    d1  : in  std_logic;
    sel : in  std_logic;
    y   : out std_logic
  );
end entity;

architecture rtl of mux2_bit is
begin
  y <= d0 when sel='0' else d1;
end architecture;
