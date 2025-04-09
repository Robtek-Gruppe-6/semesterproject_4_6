----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2025 10:47:31
-- Design Name: 
-- Module Name: four_LSB - Behavioral
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

entity four_LSB is
    Port ( in_bits : in STD_LOGIC_VECTOR (11 downto 0);
           out_LSB : out STD_LOGIC_VECTOR (3 downto 0));
end four_LSB;

architecture Behavioral of four_LSB is

begin

    out_LSB <= in_bits(3 downto 0);

end Behavioral;
