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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SPI_tx_block is
    generic( BUS_WIDTH : positive := 8;
             dir : STD_LOGIC := '0'
    );
    Port ( clk : in STD_LOGIC;
           data_in : in STD_LOGIC_VECTOR (BUS_WIDTH-1 downto 0);
           en : in STD_LOGIC;
           rst : in STD_LOGIC;
           bit_out, done : out STD_LOGIC := '0');
end SPI_tx_block;

architecture Behavioral of SPI_tx_block is
    signal shifting_reg : STD_LOGIC_VECTOR (BUS_WIDTH-1 downto 0) := (others => '0');
    signal shift_cnt    : UNSIGNED (BUS_WIDTH-1 downto 0) := (others => '0');
begin
    process(clk, rst)
    begin
        if (rst = '1') then
            bit_out <= '0';
            done <= '0';
            shifting_reg <= (others => '0');
            shift_cnt <= (others => '0');
        else
            if rising_edge(clk) then
                if en = '1' then
                    -- reset done
                    done <= '0';
                    
                    if (dir = '1') then
                        -- shift left, So MSB sent first
                        bit_out <= shifting_reg(BUS_WIDTH -1);
                        shifting_reg <= shifting_reg(BUS_WIDTH - 2 downto 0) & '0';
                        -- count for done signal
                        shift_cnt <= shift_cnt+1;
                    else
                        -- shift right, So LSB sent first
                        bit_out <= shifting_reg(0);     
                        shifting_reg <= '0' &shifting_reg(BUS_WIDTH - 1 downto 1);
                        -- count for done signal
                        shift_cnt <= shift_cnt+1;
                    end if;
                    
                    if (shift_cnt >= BUS_WIDTH) then
                        -- reset count and output done
                        shift_cnt <= (others => '0');
                        done <= '1';
                    end if;
                end if;
            end if;    
        end if;
    end process;
end Behavioral;
