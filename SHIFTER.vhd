----------------------------------------------------------------------------------
-- Company: CALIFORNIA STATE UNIVERSITY, NORTHRIDGE
-- Engineer: SHAHBAZ HASSAN KHAN MALIK
-- 
-- Create Date: 09/20/2021 09:04:09 AM
-- Design Name: COMBINATIONAL BARREL SHIFTER/ROTATOR
-- Module Name: MUX - Behavioral
-- Project Name: COMPUTER ASSIGNMENT #2
-- Target Devices: ITSELF
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SHIFTER is
port (a: in std_logic_vector (7 downto 0);
      amt: in std_logic_vector(2 downto 0);
      y: out std_logic_vector (7 downto 0)); 

end SHIFTER;

architecture Behavioral of SHIFTER is

component MUX

port( A,B,S: in std_logic;
F: out std_logic);

end component;


signal f,f_1: std_logic_vector (18 downto 0);

begin

--rotate 1 bit--
U0: MUX port map(a(7),a(0),amt(0),f(7));
U1: MUX port map(a(6),a(7),amt(0),f(6));
U2: MUX port map(a(5),a(6),amt(0),f(5));
U3: MUX port map(a(4),a(5),amt(0),f(4));
U4: MUX port map(a(3),a(4),amt(0),f(3));
U5: MUX port map(a(2),a(3),amt(0),f(2));
U6: MUX port map(a(1),a(2),amt(0),f(1));
U7: MUX port map(a(0),a(1),amt(0),f(0));

--rotate by 2 bits--
U8: MUX port map(f(7),f(1), amt(1),f_1(7));
U9: MUX port map(f(6),f(0), amt(1),f_1(6));
U10: MUX port map(f(5),f(7),amt(1),f_1(5));
U11: MUX port map(f(4),f(6),amt(1),f_1(4));
U12: MUX port map(f(3),f(5),amt(1),f_1(3));
U13: MUX port map(f(2),f(4),amt(1),f_1(2));
U14: MUX port map(f(1),f(3),amt(1),f_1(1));
U15: MUX port map(f(0),f(2),amt(1),f_1(0));

--rotate by 4 bits--
U16: MUX port map(f_1(7),f_1(3), amt(2),y(7));
U17: MUX port map(f_1(6),f_1(2), amt(2),y(6));
U18: MUX port map(f_1(5),f_1(1), amt(2),y(5));
U19: MUX port map(f_1(4),f_1(0), amt(2),y(4));
U20: MUX port map(f_1(3),f_1(7), amt(2),y(3));
U21: MUX port map(f_1(2),f_1(6), amt(2),y(2));
U22: MUX port map(f_1(1),f_1(5), amt(2),y(1));
U23: MUX port map(f_1(0),f_1(4), amt(2),y(0));



end Behavioral;
