----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 19.03.2025 15:12:53
-- Design Name: 
-- Module Name: clock_counter - Behavioral
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

entity clock_counter is
    Port ( pulse : in STD_LOGIC;
           clk : in STD_LOGIC;
           cnt : out STD_LOGIC_VECTOR(31 downto 0)
           );
end clock_counter;

architecture Behavioral of clock_counter is
signal count, final_count : UNSIGNED(31 downto 0) := (others => '0');
signal latch : STD_LOGIC := '0';

begin
-- Counter clock
    process(clk)
    begin
        if(rising_edge(clk)) then
            count <= count +1; -- Add one to count
            if(pulse = '1' and latch = '0') then -- when pulse is set and latch is not then proceed
                final_count <= count+1; -- add one to the final count 
                count <= (others => '0'); -- reset the temp count
                latch <= '1'; -- set latch
            elsif(pulse = '0' and latch = '1') then -- if pulse is zero and latch is set then proceed
                latch <= '0'; -- reset latch 
            end if;
        end if;
    end process;
    
-- Outputs

cnt <= STD_LOGIC_VECTOR(UNSIGNED(final_count));

end Behavioral;
