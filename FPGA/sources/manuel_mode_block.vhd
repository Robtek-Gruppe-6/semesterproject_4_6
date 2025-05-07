----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 07.05.2025 15:57:17
-- Design Name: 
-- Module Name: manuel_mode_block - Behavioral
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

entity manuel_mode_block is
   Port ( clk : in STD_LOGIC;
           en : in STD_LOGIC;
           btn: in STD_LOGIC_VECTOR(3 downto 0);
           rst : in STD_LOGIC;
           motor1,motor2 : out STD_LOGIC_VECTOR (10 downto 0) := (others => '0'));
end manuel_mode_block;

architecture Behavioral of manuel_mode_block is

begin
     process (clk, rst)
    begin
        if (rst = '1') then
            motor1 <= (others => '0');
            motor2 <= (others => '0');
        else
            if rising_edge(clk) then
                if en = '1' then
                    -- reset speed
                    motor1 <= (others => '0');
                    motor2 <= (others => '0');
                    
                    if btn(0) = '1' then -- go one way
                        motor1 <= "10011001000";
                    end if;
                    
                    if btn(1) = '1' then -- go the other way
                        motor1 <= "00011111000";
                    end if;
                    
                    if btn(2) = '1' then -- go one way
                        motor2 <= "10011001000";
                    end if;
                    
                    if btn(3) = '1' then -- go the othere way
                        motor2 <= "00011111000";
                    end if;
                else 
                    -- reset speed
                    motor1 <= (others => '0');
                    motor2 <= (others => '0');
                end if;
            end if;
        end if;
    end process;
end Behavioral;
