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
   
    Port ( clk, en :in STD_LOGIC;
           a : in STD_LOGIC;
           b : in STD_LOGIC;
           rst : in STD_LOGIC;
           pulse : out STD_LOGIC; 
           dir : out STD_LOGIC
           );
end encoder_direction;

architecture Behavioral of encoder_direction is
signal pulse_sig : STD_LOGIC := '0';
signal latch_a, latch_b : STD_LOGIC := '0'; 

begin
    process(clk, rst)
    begin
        -- Encoder processing     
        if(rising_edge(clk) and en = '1') then 
            
            -- Check if pulse signal has already existed 
            if(pulse_sig = '1') then 
                pulse_sig <= '0'; -- Reset pulse signal
            end if;
            
            -- Checks if a is set and if b isnt latched.
            if(a = '1' and latch_b ='0') then 
                latch_a <= '1'; -- set latch for later
                if(b = '1') then
                    dir <= '1'; -- Set direction
                    pulse_sig <= '1'; -- Set pulse signal
                end if;
            end if;
            
            -- Checks if b is set and if a isnt latched.
            if(b = '1' and latch_a = '0') then 
                latch_b <= '1'; -- set latch for later
                if(a = '1') then
                    dir <= '0'; -- Set direction
                    pulse_sig <= '1'; -- Set pulse signal
                end if;
            end if;
        end if;
        
        if (a = '0') then
            latch_a <= '0'; -- Reset latch if a is low        
        end if;
        
        if (b = '0') then
            latch_b <= '0'; -- Reset latch if b is low        
        end if;
        
        -- Async reset to zero
        if (rst = '1') then 
            dir <= '0';
            pulse_sig <= '0';
        end if;
      
    end process;

-- Outputs
    pulse <= pulse_sig; -- Outputs pulse

end Behavioral;
