library ieee;
use ieee.std_logic_1164.all;

entity mux is
port(D0,D1,D2,D3,S0,S1: in std_logic; Y: out std_logic);
end mux;

architecture muxarch of mux is begin
process(D0,D1,D2,D3,S0,S1)is begin
if(S0='0' and S1='0') then
Y<= D0;
elsif(S0='0' and S1='1') then
Y<= D1;
elsif(S0='1' and S1='0') then
Y<= D2;
else
Y<= D3;
end if;
end process;
end muxarch;