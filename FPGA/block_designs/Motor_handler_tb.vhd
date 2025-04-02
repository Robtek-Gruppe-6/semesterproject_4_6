----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.04.2025 13:00:48
-- Design Name: 
-- Module Name: Motor_handler_tb - Behavioral
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

entity Motor_handler_tb is
--  Port ( );
end Motor_handler_tb;

architecture Behavioral of Motor_handler_tb is
    component FPGA_Motor_handler_wrapper
    port (
        clk, en : in STD_LOGIC;
        i : in STD_LOGIC_VECTOR ( 11 downto 0 );
        o : out STD_LOGIC_VECTOR ( 1 downto 0 );
        rst : in STD_LOGIC
    );
   end component;
   
   signal clk_tb, rst_tb, en_tb     : STD_LOGIC := '0';
   signal in_tb                     : STD_LOGIC_VECTOR(11 downto 0) := (others => '0');
   signal o_tb                      : STD_LOGIC_VECTOR ( 1 downto 0 ) := (others => '0');
   
   constant CLK_PERIOD : time := 10ns; -- 100MHz clock
begin
    block_design : FPGA_Motor_handler_wrapper
    port map(
        clk => clk_tb,
        en  => en_tb,
        i   => in_tb,
        o   => o_tb,
        rst => rst_tb
    );
    
    -- Clock Generation Process
    process
    begin
        while true loop
            clk_tb <= '0';
            wait for CLK_PERIOD / 2;
            clk_tb <= '1';
            wait for CLK_PERIOD / 2;
        end loop;
    end process;
    
    -- Reset and Stimulus Process
    process

    -- loop variable
    variable i : integer := 0;
    
    begin
        -- Apply Reset
        rst_tb <= '1';
        wait for 2 * CLK_PERIOD;
        rst_tb <= '0';
        
        -- Enable the block
        en_tb <= '1';
        
        wait for 10 ns;
        i := 2;
        
        -- Test for rotation in one direction
        while i > 0 loop
            in_tb   <= std_logic_vector(to_signed(600, in_tb'length));
            wait for 1 ms;
            in_tb   <= std_logic_vector(to_signed(-400, in_tb'length));
            wait for 1 ms;
            i := i-1;
        end loop;
        
        wait;
    end process;
end Behavioral;
