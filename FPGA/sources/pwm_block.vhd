----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2025 15:15:24
-- Design Name: 
-- Module Name: pwm - Behavioral
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

entity pwm_block is
generic (  max_cnt : positive := 100;
           n_bits : positive := 8);
     
    Port ( clk, en : in STD_LOGIC;
           duty_cycle : in STD_LOGIC_VECTOR (n_bits-1 downto 0);
           rst : in STD_LOGIC;
           pwm : out STD_LOGIC);
end pwm_block;

architecture Behavioral of pwm_block is
    signal done_sig, pwm_sig : std_logic := '0';
    signal cnt_sig : unsigned(n_bits-1 downto 0) := (others => '0'); -- fill with zeros
begin
    process (clk, rst)
    begin
      if (rst = '1' or done_sig = '1') then -- async reset to zero
        cnt_sig <= (others => '0');
        done_sig <= '0';
        pwm_sig <= '0';
      else
          if (rising_edge(clk) and done_sig = '0' and en = '1') then -- count on clk
                cnt_sig <= cnt_sig+1 ; 
          end if;
          
          if  max_cnt = TO_INTEGER(unsigned(cnt_sig)) then -- for custom cycle time
            done_sig <= '1'; -- update done signal
          end if;
          
         if cnt_sig < (TO_INTEGER(unsigned(duty_cycle))) then -- update pwm signal
            pwm_sig <= '1';
         else  
            pwm_sig <= '0';
         end if;
      end if;     
    end process;
    pwm <= pwm_sig;
end Behavioral;
