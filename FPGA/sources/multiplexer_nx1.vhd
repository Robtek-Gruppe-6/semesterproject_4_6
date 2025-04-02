-- Company: 
-- Engineer: 
-- 
-- Create Date: 06.02.2025 15:47:35
-- Design Name: 
-- Module Name: multiplexer_nx1 - Behavioral
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

entity multiplexer_nx1 is
    generic ( selector_bits : positive := 1 );
    Port ( clk, en : in std_logic;
           i : in std_logic_vector(2**selector_bits-1 downto 0); 
           s : in std_logic_vector(selector_bits-1 downto 0);
           o : out std_logic;
           rst : in std_logic
           );
end multiplexer_nx1;

architecture Behavioral of multiplexer_nx1 is

    signal o_sig : std_logic := '0';

begin
 process(clk, rst)
 begin
    if (rst = '1') then -- async reset
        o_sig <= '0';
    else
      if (rising_edge(clk)) then
        if (en = '1') then
          o_sig <= i(TO_INTEGER(unsigned(s)));
        end if;
      end if;
    end if;
  end process;
  
  o <= o_sig;
  
end Behavioral;