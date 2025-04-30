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
           data_to_send : in STD_LOGIC_VECTOR (BUS_WIDTH-1 downto 0);
           ss : in STD_LOGIC;
           rst : in STD_LOGIC;
           clk_spi, miso, busy : out STD_LOGIC := '0');
end SPI_tx_block;

architecture Behavioral of SPI_tx_block is
    signal busy_sig, busy_latch : STD_LOGIC := '0';
begin
    process(clk, rst)
        variable shifting_reg : STD_LOGIC_VECTOR (BUS_WIDTH-1 downto 0) := (others => '0');
        variable shift_cnt    : UNSIGNED (BUS_WIDTH-1 downto 0) := (others => '0');
    begin
        if (rst = '1') then
            clk_spi <= '0';
            miso <= '0';
            busy_sig <= '0';
            shifting_reg := (others => '0');
            shift_cnt := (others => '0');
        else
            -- update clk_spi
            if (busy_sig = '1' and ss = '1')  then
                clk_spi <= clk;
				else
				clk_spi <= '0';
            end if;
            
            if falling_edge(clk) then
                if ss = '1' then
                    -- send data only if shifting_reg is filled
                    if (busy_latch = '1') then
                        if (dir = '1') then
                            -- shift left, So MSB sent first
                            miso <= shifting_reg(BUS_WIDTH -1 -TO_INTEGER(shift_cnt));
    
                            -- count for done signal
                            shift_cnt := shift_cnt+1;
                        else
                            -- shift right, So LSB sent first
                            miso <= shifting_reg(TO_INTEGER(shift_cnt));     
                            
                            -- count for done signal
                            shift_cnt := shift_cnt+1;
                        end if;
                    end if;
                
                    -- fill shifting_reg if not busy
                    if (busy_latch = '0') then
                        shifting_reg := data_to_send;
                        -- set busy
                        busy_latch <= '1'; 
                        miso <= '0'; 
                    end if;
                    
                    -- delay busy ouput by 1 cycle
                     busy_sig <= busy_latch;
                     
                    -- reset count when done and busy signal
                    if (shift_cnt >= BUS_WIDTH) then
                        -- reset count and busy
                        shift_cnt := (others => '0');
                    end if;
                    
                    -- set busy low 1 cycle after shift cnt has been reset
                    if (shift_cnt <= 0 and busy_sig = '1') then
                        busy_latch <= '0';                  
                    end if;
                end if;
            end if;    
        end if;
    end process;
    
    busy <= busy_sig;
    
end Behavioral;
