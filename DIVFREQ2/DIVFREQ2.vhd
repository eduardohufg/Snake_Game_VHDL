library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DIVFREQ2 is
	port(
		clk, reset: in std_logic;
		F: OUT STD_logic
	);
end DIVFREQ2;

architecture RTL of DIVFREQ2 is

COMPONENT FFD is
	port(
		clk, reset: in std_logic;
		d: in std_logic;
		q: out std_logic
	);
end COMPONENT FFD;

SIGNAL Q: STD_LOGIC;

begin

I0: FFD PORT MAP (clk, reset, NOT Q, Q);

F<= Q;

END RTL;

	

	