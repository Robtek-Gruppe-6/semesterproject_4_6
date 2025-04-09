----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09.04.2025 11:59:12
-- Design Name: 
-- Module Name: shifting_register - Behavioral
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

entity shifting_register is
    generic( BUS_WIDTH : positive := 8
    );
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (BUS_WIDTH-1 downto 0);
           dir, en : in STD_LOGIC;
           rst : in STD_LOGIC;
           bit_out : out STD_LOGIC);
end shifting_register;

architecture Behavioral of shifting_register is
    signal shifting_reg : STD_LOGIC_VECTOR (BUS_WIDTH-1 downto 0) := (others => '0');
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            bit_out <= '0';
        else
            if rising_edge(clk) then
                if en = '1' then
                    if (dir = '1') then
                        bit_out <= shifting_reg(BUS_WIDTH -1);
                        shifting_reg <= shifting_reg(BUS_WIDTH - 2 downto 0) & '0';
                    else
                        bit_out <= shifting_reg(0);     
                        shifting_reg <= '0' &shifting_reg(BUS_WIDTH - 1 downto 1);
                    end if;
                end if;
            end if;    
        end if;
    end process;
end Behavioral;
