library ieee;
use ieee.std_logic_1164.all;

entity halfsubtractor is
port (a,b:in std_logic;d,b:out std_logic);
end halfsubtractor;

architecture halfsubtractorlogic of halfsubtractor is begin
d <=a xor b;
b <=(not a) and b;
end halfsubtractorlogic;

