----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 20.02.2025 14:23:36
-- Design Name: 
-- Module Name: d_flip_flop - Behavioral
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

entity d_flip_flop is
    generic ( n_bits : positive := 1 );
    Port ( clk : in STD_LOGIC;
           D : in std_logic;
           Q : out std_logic := '0';
           en, rst : in STD_LOGIC);
end d_flip_flop;

architecture Behavioral of d_flip_flop is

signal latch, Q_sig : std_logic := '0';

begin
    process (clk, rst)
    begin
        if (rst ='1') then
            Q_sig <= '0';
            latch <= '0';
        else
            if (rising_edge(clk)) then
                if (en = '1') then
                    if (D = '1' and latch = '0') then 
                        latch <= '1';
                        Q_sig <= not(Q_sig);
                    elsif (D = '0') then
                        latch <= '0';
                    end if;
                end if;    
            end if;
        end if;
    end process;
    
    Q <= Q_sig;
    
end Behavioral;
