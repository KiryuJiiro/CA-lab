library ieee;
use ieee.std_logic_1164.all;

entity fulladder is
port (a,b,cin:in std_logic;s,c:out std_logic);
end fulladder;

architecture fulladderlogic of fulladder is begin
s <= a xor b xor cin;
c <= (a and b) or ((a xor b) and cin);
end fulladderlogic;
