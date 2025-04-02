-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.02.2025 14:51:00
-- Design Name: 
-- Module Name: demux_1xn - Behavioral
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
use IEEE.numeric_std.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity dmux_1xn is
    generic(n_bits : positive := 2);
    Port ( clk, en, i : in STD_LOGIC;
           sel : in STD_LOGIC_VECTOR (n_bits-1 downto 0);
           rst : in STD_LOGIC;
           o : out STD_LOGIC_VECTOR ((2**n_bits)-1 downto 0)
           );
end dmux_1xn;

architecture Behavioral of dmux_1xn is
    signal o_sig : STD_LOGIC_VECTOR ((2**n_bits)-1 downto 0) := (others => '0');

begin
    process (clk, rst)
    begin
        if (rst = '1') then -- async reset
            o_sig <= (others => '0');
        else
            if (rising_edge(clk) and en = '1') then
                o_sig <= (others => '0'); -- Resetting all outputs to avoid latching.
                o_sig (to_integer(unsigned(sel))) <= i;
            end if;
        end if;
    end process;
  
    o    <= o_sig;
    
end Behavioral;