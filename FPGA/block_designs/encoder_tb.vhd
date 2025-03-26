----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.03.2025 14:00:55
-- Design Name: 
-- Module Name: encoder_tb - Behavioral
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

entity encoder_tb is
    
end encoder_tb;

architecture test of encoder_tb is

    -- Component Declaration
    component design_motor_encoders_wrapper 
    port ( a_0 : in STD_LOGIC;
           b_0 : in STD_LOGIC;
           clk_0 : in STD_LOGIC;
           rst_0 : in STD_LOGIC;
           en_0 : in STD_LOGIC;
           cnt_0 : out STD_LOGIC_VECTOR (15 downto 0);
           done_0 : out STD_LOGIC
           );
    end component;
    
    -- Test bench networks
    signal a_tb    : STD_LOGIC := '0';
    signal b_tb    : STD_LOGIC := '0';
    signal clk_tb  : STD_LOGIC := '0';
    signal rst_tb  : STD_LOGIC := '0';
    signal en_tb   : STD_LOGIC := '0';
    signal cnt_tb  : STD_LOGIC_VECTOR (15 downto 0);
    signal done_tb : STD_LOGIC;

begin
    
    -- Connecting block designs
    block_design :  design_motor_encoders_wrapper 
    port map ( 
           a_0 => a_tb,
           b_0 => b_tb,
           clk_0 => clk_tb,
           rst_0 => rst_tb,   
           en_0 => en_tb,
           cnt_0 => cnt_tb,
           done_0 => done_tb
           );
           
    -- Clock Generation Process
    process
    constant CLK_PERIOD : time := 10ns; -- 100MHz clock
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
    variable i : integer := 5;
    
    begin
        -- Apply Reset
        rst_tb <= '1';
        wait for 10 ns;
        rst_tb <= '0';

        -- Enable the block
        en_tb <= '1';
        
        -- Test for rotation in one direction
        while i > 0 loop
            a_tb   <= '1';
            b_tb   <= '0'; 
            wait for 10 ns;
            a_tb   <= '1'; 
            b_tb   <= '1'; 
            wait for 40 ns;
            a_tb   <= '0'; 
            b_tb   <= '1'; 
            wait for 10 ns;
            a_tb   <= '0'; 
            b_tb   <= '0'; 
            wait for 60 ns;
            i := i-1;
        end loop;
        
        -- reset 
        i := 8;
        
        -- Test for rotation in the other direction
        while i > 0 loop
            a_tb   <= '0';
            b_tb   <= '1'; 
            wait for 10 ns;
            a_tb   <= '1'; 
            b_tb   <= '1'; 
            wait for 40 ns;
            a_tb   <= '1'; 
            b_tb   <= '0'; 
            wait for 10 ns;
            a_tb   <= '0'; 
            b_tb   <= '0'; 
            wait for 60 ns;
            i := i-1;
        end loop;
        
        -- Stop Simulation
        wait;
    end process;
end test;
