----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 01.04.2025 13:42:41
-- Design Name: 
-- Module Name: n_to_m_splitter - Behavioral
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

entity n_to_m_splitter is
    generic(
           input_size : positive := 4; -- default size is 4 bit
           output_size_high : positive := 2; -- default size is 4 bit
           output_size_low  : positive := 2 -- default size is 4 bit
    );
    Port ( i : in STD_LOGIC_VECTOR (input_size-1 downto 0);
           o_h : out STD_LOGIC_VECTOR (output_size_high-1 downto 0);
           o_l : out STD_LOGIC_VECTOR (output_size_low-1 downto 0));
end n_to_m_splitter;

architecture Behavioral of n_to_m_splitter is

begin
    o_h <= i(input_size-1 downto (input_size-1) - (output_size_high-1));
    o_l <= i(output_size_low-1 downto 0);
    
end Behavioral;
