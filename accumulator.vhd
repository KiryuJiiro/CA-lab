library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
entity alu is
port (
a, b: in std_logic_vector(1 downto 0);
alu_set: in std_logic_vector(2 downto 0);
alu_out: out std_logic_vector(1 downto 0);
carry: out std_logic
);
end alu;
architecture alulogic of alu is
signal alu_result: std_logic_vector(1 downto 0);
begin
process(a, b, alu_set) begin
case alu_set is
when "000" =>
alu_result <= std_logic_vector(unsigned(a) +
unsigned(b));
when "001" =>
alu_result <= std_logic_vector(unsigned(a) -
unsigned(b));
when "010" =>
alu_result <= std_logic_vector(unsigned(a) *
unsigned(b));
when others =>
alu_result <= a and b;
end case;
end process;
alu_out <= alu_result;
end alulogic;