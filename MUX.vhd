----------------------------------------------------------------------------------
-- Company: CALIFORNIA STATE UNIVERSITY, NORTHRIDGE
-- Engineer: SHAHBAZ HASSAN KHAN MALIK
-- 
-- Create Date: 09/20/2021 09:04:09 AM
-- Design Name: 2:1 MULTIPLEXER
-- Module Name: MUX - Behavioral
-- Project Name: COMPUTER ASSIGNMENT #2
-- Target Devices: COMBINATIONAL BARREL SHIFTER/ROTATOR
-- Tool Versions: V1.0 BETA
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX is
port( A,B,S: in std_logic;
F: out std_logic);
end MUX;

architecture Behavioral of MUX is
begin
F <= ((not S) and A) or (S and B);

end Behavioral;
