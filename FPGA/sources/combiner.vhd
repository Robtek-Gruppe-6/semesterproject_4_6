----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2025 16:15:07
-- Design Name: 
-- Module Name: combiner - Behavioral
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

entity combiner is
    Generic(
           lowbits : positive := 1;
           highbits : positive := 1
    );
    Port ( h : in STD_LOGIC_VECTOR(highbits-1 downto 0);
           l : in STD_LOGIC_VECTOR(lowbits-1 downto 0);
           o : out STD_LOGIC_VECTOR((lowbits+highbits)-1 downto 0)
           );
end combiner;

architecture Behavioral of combiner is

begin
    o <= h & l;
end Behavioral;
