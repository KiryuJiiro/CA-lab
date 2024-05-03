library ieee;
use ieee.std_logic_1164.all;

entity decoder is
port(a0,a1,a2:in std_logic;y0,y1,y2,y3,y4,y5,y6,y7:out std_logic);
end decoder;

architecture decoderlogic of decoder is begin
y0 <= (not a0) and (not a1) and (not a2);
y1 <= (not a0) and (not a1) and a2;
y2 <= (not a0) and a1 and (not a2);
y3 <= (not a0) and a1 and  a2;
y4 <= a0 and (not a1) and (not a3);
y5 <= a0 and (not a1) and a2;
y6 <= a0 and a1 and (not a2);
y7 <= a0 and a1 and a2;
end decoderlogic;
