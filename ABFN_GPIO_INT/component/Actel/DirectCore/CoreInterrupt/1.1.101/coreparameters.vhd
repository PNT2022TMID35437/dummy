----------------------------------------------------------------------
-- Created by Microsemi SmartDesign Thu Aug 22 19:46:20 2024
-- Parameters for CoreInterrupt
----------------------------------------------------------------------


LIBRARY ieee;
   USE ieee.std_logic_1164.all;
   USE ieee.std_logic_unsigned.all;
   USE ieee.numeric_std.all;

package coreparameters is
    constant FIQPOLARITY : integer := 0;
    constant HDL_license : string( 1 to 1 ) := "U";
    constant IRQPOLARITY : integer := 0;
    constant NUMFIQSRC : integer := 1;
    constant NUMIRQSRC : integer := 2;
end coreparameters;
