----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.03.2025 13:00:29
-- Design Name: 
-- Module Name: clock_divider - Behavioral
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
use IEEE.MATH_REAL.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity clock_divider is
    generic (  clock_in : positive := 125_000_000;
               clock_out : positive := 125_000);
    Port ( clk, en : in STD_LOGIC;
           clk_out : out STD_LOGIC;
           rst : in STD_LOGIC);
end clock_divider;

architecture Behavioral of clock_divider is
begin
  process (clk, rst)
    -- create a counter capable of containing the input clock frequency. Meaning the lowest clock output will be 1 Hz
    variable cnt : unsigned(positive(ceil(log2(real(clock_in)+real(1))))-1 downto 0) := (others => '0'); -- fill with zeros
    
    begin
      if (rst = '1') then -- async reset to zero
        cnt := (others => '0');
        clk_out <= '0';
      else
        if (rising_edge(clk)) then -- count on rising clk
            if (en = '1') then
                cnt := cnt+1; 
        
                if (clock_in/clock_out <= cnt) then -- reset count when one clock_out cycle has passed
                    cnt := (others => '0');
                end if;
          
                -- update output clock dependant on the counter
                if  (clock_in/clock_out)/2 > cnt then
                    -- set output
                    clk_out <= '1'; 
                else
                    -- reset output
                    clk_out <= '0'; 
                end if;
            end if;
         end if;  
      end if;
   end process;
end Behavioral;
