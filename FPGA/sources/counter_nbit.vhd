----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2025 14:37:21
-- Design Name: 
-- Module Name: counter_4bit - Behavioral
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

entity counter_nbit is
    generic (   max_cnt : positive := 15;
                n_bits : positive := 4);
    Port ( cnt : out std_logic_vector(n_bits-1 downto 0);
           done : out std_logic ;
           clk, en, dir, rst : in STD_LOGIC);
end counter_nbit;

architecture Behavioral of counter_nbit is
    signal done_sig : std_logic := '0';
    signal cnt_sig : unsigned(n_bits-1 downto 0) := (others => '0'); -- fill with zeros
begin
    process (clk, rst)
    begin
      if (rst = '1') then -- async reset to zero
        cnt_sig <= (others => '0');
        done_sig <= '0';
      end if;
      
      if (rising_edge(clk)) then -- count on rising clk
        if (en = '1') then -- count only if enable says so
          if (dir = '1') then  -- count up if dir says so
            cnt_sig <= cnt_sig+1;
          elsif (dir ='0') then -- count down if dir says so
            cnt_sig <= cnt_sig-1;
          end if;
        end if;
        
        if  max_cnt = TO_INTEGER(unsigned(cnt_sig)) then
            done_sig <= '1'; -- update done signal
        end if;
        
      end if;
    end process;   
    
    -- update outputs concurrently
    done <= done_sig;
    cnt <= std_logic_vector(cnt_sig); 
    
end Behavioral;
