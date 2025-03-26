----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.03.2025 15:12:24
-- Design Name: 
-- Module Name: one_shot - Behavioral
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

entity one_shot is
    Port ( clk, en :in STD_LOGIC;
           i : in STD_LOGIC;
           rst : in STD_LOGIC;
           o : out STD_LOGIC);
end one_shot;

architecture Behavioral of one_shot is

    signal latch : std_logic := '0';

begin
    process (clk, rst)
    begin
      -- Async reset to zero
      if (rst = '1') then 
        o <= '0';
      end if;
           
      if(rising_edge(clk) and en = '1') then 
        
        -- Reset output
        o <= '0'; 
        
        -- First cycle of input high
        if (i = '1' and latch = '0') then 
            o <= '1'; -- set output
            latch <= '1'; -- set latch
        end if;
        
        -- Reset latch
        if (i = '0') then 
            latch <= '0';
        end if;
      end if;
      end process;      
end Behavioral;
