-- -----------------------------------------------------
-- Halbaddierer in VHDL
-- Jedes Design in VHDL besteht aus einer " entity ", welche
-- das Interface definiert , sowie mindestens einer dazu -
-- gehoerigen " architecture ", welche die Implementierung
-- enthaelt .
-- -----------------------------------------------------


-- In einer Library sind viele Standardfunktionen definiert
library ieee;
use ieee.numeric_std.all ;
use ieee.std_logic_1164.all;



-- Entity eines Halbaddierers
entity zweibitmultiplexer is port (
selekt, S00, S01, S10, S11 : in std_logic; -- Input - Ports
result0 , result1 : out std_logic );       -- Output - Ports
end zweimultiplexer;



-- Architecture eines Halbaddieres
architecture behavior of zweibitmultiplexer is
begin

if selekt = '0' then
	result0 <= S00;
	result1 <= S01;
else
	result0 <= S10;
	result1 <= S11;
end if;
end behavior;