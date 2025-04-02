-- Company: 
-- Engineer: 
-- 
-- Create Date: 13.02.2025 14:51:00
-- Design Name: 
-- Module Name: bus_demux_1xn - Behavioral
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

package pkg is
  type slv11_array_t is array (natural range <>) of std_logic_vector(10 downto 0);
end package;

package body pkg is
end package body;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.ALL;
library work;
use work.pkg.all;

entity bus_dmux_1xn is
    generic( s_bits : positive := 2
    );
    Port ( clk, en : in STD_LOGIC;
            i  : in STD_LOGIC_VECTOR (10 downto 0);
           sel : in STD_LOGIC_VECTOR (s_bits-1 downto 0);
           rst : in STD_LOGIC;
           o : out slv11_array_t ((2**s_bits)-1 downto 0) 
           );
end bus_dmux_1xn;

architecture Behavioral of bus_dmux_1xn is
    signal o_sig : slv11_array_t ((2**s_bits)-1 downto 0) := (others => (others => '0'));

begin
    process (clk, rst)
    begin
        if (rst = '1') then -- async reset
            o_sig <= (others => (others => '0'));
        else
            if (rising_edge(clk) and en = '1') then
                o_sig <= (others => (others => '0')); -- Resetting all outputs to avoid latching.
                o_sig (to_integer(unsigned(sel))) <= i;
            end if;
        end if;
    end process;
  
    o    <= o_sig;
    
end Behavioral;