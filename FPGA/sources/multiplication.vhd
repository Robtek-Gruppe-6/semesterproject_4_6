----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2025 15:46:34
-- Design Name: 
-- Module Name: multiplication - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity multiplication is
    generic (
           bits : positive := 4
    );
    Port ( 
           clk : in STD_LOGIC;
           a : in STD_LOGIC_VECTOR (bits-1 downto 0);
           b : in STD_LOGIC_VECTOR (bits-1 downto 0);
           c : out STD_LOGIC_VECTOR ((2*bits)-1 downto 0));
end multiplication;

architecture Behavioral of multiplication is

begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            c <= std_logic_vector(unsigned(a) * unsigned(b));
        end if;
    end process;
end Behavioral;
