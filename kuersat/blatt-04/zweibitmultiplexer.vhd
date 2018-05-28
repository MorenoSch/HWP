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
end zweibitmultiplexer;


-- Architecture eines zweibitmultiplexer
architecture behavior of zweibitmultiplexer is
begin
result0 <= S00 when (selekt = '0') else S10;
result1 <= S01 when (selekt = '0') else S11;
end behavior;