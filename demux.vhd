library ieee;
use ieee.std_logic_1164.all;

entity demux is
port(S0,S1,Y: in std_logic; D0,D1,D2,D3: out std_logic);
end demux;

architecture demuxarch of demux is begin
process(Y,S0,S1)is begin
if(S0='0' and S1='0') then
D0<= Y ;
elsif(S0='0' and S1='1') then
D1<=Y;
D0<='0';
elsif(S0='1' and S1='0') then
D2<=Y;
D1<='0';
D0<='0';
else
D3<=Y;
D1<='0';
D2<='0';
D0<='0';
end if;
end process;
end demuxarch;