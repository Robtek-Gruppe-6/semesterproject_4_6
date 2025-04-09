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

entity busmux_2x1 is
    generic ( BIT_WIDTH : positive := 1 );
    Port ( input_1, input_2 : in std_logic_vector(BIT_WIDTH-1 downto 0); 
           s : in std_logic;
           o : out std_logic_vector(BIT_WIDTH-1 downto 0)
           );
end busmux_2x1;

architecture Behavioral of busmux_2x1 is

begin
 process(input_1, input_2, s)
 begin
    if (s = '1') then
    o <= input_2;
    else 
    o <= input_1;
    end if;
end process;

end Behavioral;