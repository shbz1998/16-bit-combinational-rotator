----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/20/2021 09:10:24 AM
-- Design Name: 
-- Module Name: MUX_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
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

entity MUX_TB is
--  Port ( );
end MUX_TB;


architecture Behavioral of MUX_TB is

component MUX
port( A,B,S: in std_logic;
F: out std_logic);
end component;

signal A,B,S,F: std_logic;

begin

uut: MUX port map(A=>A, B=>B, S=>S, F=>F);

stim: process
begin
S <= '0';
A <= '0';
B <= '0';
wait for 20 ns;
S <= '0';
A <= '0';
B <= '1';
wait for 20 ns;
S <= '0';
A <= '1';
B <= '0';
wait for 20 ns;
S <= '0';
A <= '1';
B <= '1';
wait for 20 ns;
S <= '1';
A <= '0';
B <= '0';
wait for 20 ns;
S <= '1';
A <= '0';
B <= '1';
wait for 20 ns;
S <= '1';
A <= '1';
B <= '0';
wait for 20 ns;
S <= '1';
A <= '1';
B <= '1';
wait; 
end process;

end Behavioral;
