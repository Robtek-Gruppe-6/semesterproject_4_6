----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 12.03.2025 10:52:38
-- Design Name: 
-- Module Name: motor_encoders - Behavioral
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

entity encoder_direction is
    generic (
           cpu_freq : integer := 100_000_000 -- 125 MHz CPU frequency
    );
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           clk : in STD_LOGIC;
           pulse : out STD_LOGIC; 
           dir : out STD_LOGIC
           );
end encoder_direction;

architecture Behavioral of encoder_direction is
signal pulse_sig : STD_LOGIC := '0'; -- Pulse signal
signal latch_a, latch_b : STD_LOGIC := '0'; 

-- Encoder processing
begin
    process(clk)
    begin
        if(rising_edge(clk)) then
            if(pulse_sig = '1') then
                pulse_sig <= '0'; -- Reset pulse signal
            end if;
            if(a = '1' and latch_b ='0') then -- Checks if a is set and latch_b is 0 then proceed
                latch_a <= '1';
                if(b = '1') then
                    dir <= '1'; -- Flip direction
                    pulse_sig <= '1'; -- Set pulse signal
                    latch_a <= '0'; -- Reset latch after being used
                end if;
            end if;
            if(b = '1' and latch_a = '0') then -- Checks if b is set and latch_a is 0 then proceed.
                latch_b <= '1';
                if(a = '1') then
                    dir <= '0'; -- Flip direction
                    pulse_sig <= '1'; -- Set pulse signal
                    latch_b <= '0'; -- Reset latch after being used
                end if;
            end if;
        end if;
    end process;

-- Outputs
    pulse <= pulse_sig; -- Outputs pulse

end Behavioral;
