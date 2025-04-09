----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05.04.2025 19:33:40
-- Design Name: 
-- Module Name: dlatch - Behavioral
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

entity dlatch is
    generic( WIDTH : positive := 1
    );
    Port ( clk: STD_LOGIC;
           i : in STD_LOGIC_VECTOR (WIDTH - 1 downto 0);
           en, rst : in STD_LOGIC;
           o : out STD_LOGIC_VECTOR (WIDTH -1 downto 0));
end dlatch;

architecture Behavioral of dlatch is

begin
    process (clk, rst)
    begin
        if (rst = '1') then
            o <= (others => '0');
        else
            if rising_edge(clk) then
                if en = '1' then
                    o <= i;
                end if;
            end if;
        end if;
    end process;
end Behavioral;
