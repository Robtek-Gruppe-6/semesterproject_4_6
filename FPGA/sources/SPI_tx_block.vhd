----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.03.2025 10:36:47
-- Design Name: 
-- Module Name: SPI_tx_block - Behavioral
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

entity SPI_tx_block is
    Port ( clk : in STD_LOGIC;
           sent_bit : out STD_LOGIC;
           en : in STD_LOGIC;
           bit_to_send : in STD_LOGIC);
end SPI_tx_block;

architecture Behavioral of SPI_tx_block is

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if en = '1' then
                sent_bit <= bit_to_send;
            end if;
        end if;
    end process;
end Behavioral;
