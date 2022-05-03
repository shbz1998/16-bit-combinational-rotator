----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/21/2021 01:44:23 PM
-- Design Name: 
-- Module Name: SHIFTER_TB - Behavioral
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

entity SHIFTER_TB is
--  Port ( );
end SHIFTER_TB;

architecture Behavioral of SHIFTER_TB is

component SHIFTER is
port (a: in std_logic_vector (7 downto 0);
      amt: in std_logic_vector(2 downto 0);
      y: out std_logic_vector (7 downto 0)); 


end component;

signal a,y: std_logic_vector(7 downto 0);
signal amt: std_logic_vector(2 downto 0);

begin

uut: SHIFTER port map(a=>a, y=>y,amt=>amt);

stim: process
begin

a<="10110101";
amt<="101";
wait for 20ns;
wait; 
end process;

end Behavioral;
