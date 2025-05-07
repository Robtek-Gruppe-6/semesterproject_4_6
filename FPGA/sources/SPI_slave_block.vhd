LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_arith.all;

ENTITY SPI_slave_block IS
    GENERIC( BUS_WIDTH : INTEGER := 16); --data length in bits
    PORT(   cpol, cpha   : IN     STD_LOGIC; -- clock polarity & phase mode
            sck, ss      : IN     STD_LOGIC; -- spi clock & slave select
            mosi         : IN     STD_LOGIC; -- master in slave out
            miso         : OUT    STD_LOGIC; -- master out slave in
            read_en      : IN     STD_LOGIC; -- enable signal to wire rx_reg to outside
            tx           : IN     STD_LOGIC_VECTOR(BUS_WIDTH-1 DOWNTO 0); -- data to transmit
            rx           : OUT    STD_LOGIC_VECTOR(BUS_WIDTH-1 DOWNTO 0) := (OTHERS => '0'); -- data received
            busy         : OUT    STD_LOGIC := '0'; -- slave busy
            rst          : IN     STD_LOGIC  -- asynchronous active high reset
                        ); 
END SPI_slave_block;

ARCHITECTURE Behavioural OF SPI_slave_block IS
    SIGNAL mode         : STD_LOGIC; -- according to CPOL and CPHA
    SIGNAL clk          : STD_LOGIC;
    SIGNAL active_bit   : STD_LOGIC_VECTOR(BUS_WIDTH DOWNTO 0); -- active bit indicator
    SIGNAL rx_reg       : STD_LOGIC_VECTOR(BUS_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  -- receiver buffer
    SIGNAL tx_reg       : STD_LOGIC_VECTOR(BUS_WIDTH-1 DOWNTO 0) := (OTHERS => '0');  -- transmit buffer
BEGIN
    busy <= NOT ss;        --setting busy
    mode <= cpol XOR cpha; --setting mode
    
    -- clock generator
    PROCESS (mode, ss, sck)
    BEGIN
        IF(ss = '1') THEN
            clk <= '0';
        ELSE
            IF (mode = '1') THEN -- flip polarity of clk
                clk <= sck;
            ELSE
                clk <= NOT sck;
            END IF;
        END IF;
    END PROCESS;
        
    -- active bit mask
    PROCESS(ss, clk)
    BEGIN
        IF(ss = '1' OR rst = '1') THEN
            -- reset active bit indicator 
            active_bit <= (others => '0');
            
            -- place active bit in index according to phase
            IF cpha = '0' THEN
				active_bit(1) <= '1';  -- cpha = '0' start at index 1
			ELSE
				active_bit(0) <= '1';  -- cpha = '1' start at index 0
			END IF;
        ELSE
            IF (rising_edge(clk)) THEN
                active_bit <= active_bit(BUS_WIDTH-1 DOWNTO 0) & '0'; -- left shift active bit indicator
            END IF;
        END IF;
    END PROCESS;
        
    -- main process
    PROCESS(ss, clk, read_en, rst)
    BEGIN
        IF(rst = '1') THEN -- reset the buffer
            rx <= (OTHERS => '0');
            rx_reg <= (OTHERS => '0');
            tx_reg <= (OTHERS => '0');
        ELSE
            -- receive mosi bit on falling
            IF (falling_edge(clk) AND ss = '0') THEN
                IF (cpha = '0') THEN
                    IF (active_bit(1) /= '1') THEN -- dont receive bit on first edge
                        rx_reg(BUS_WIDTH-1 DOWNTO 0) <= rx_reg(BUS_WIDTH-2 DOWNTO 0) & mosi; -- shift in the received bit
                    END IF;
                ELSIF (cpha = '1') THEN
                    IF (active_bit(0) /= '1') THEN -- dont receive bit on first edge
                        rx_reg(BUS_WIDTH-1 DOWNTO 0) <= rx_reg(BUS_WIDTH-2 DOWNTO 0) & mosi; -- shift in the received bit
                    END IF;
                END IF;
            END IF;
        
            -- if user wants the received data output it
            IF(ss = '1' AND read_en = '1') THEN
                rx <= rx_reg;
            END IF;
            
            -- transmit miso on rising
            IF (ss = '1') THEN
                tx_reg <= tx; -- put new data in tx if not busy
            ELSIF (active_bit(BUS_WIDTH) = '0' AND rising_edge(clk)) THEN
                -- if active bit isnt done then shift on rising_edge
                tx_reg(BUS_WIDTH-1 DOWNTO 0) <= tx_reg(BUS_WIDTH-2 DOWNTO 0) & '0';  --shift through tx data
            END IF;
        END IF;
        
        -- transmit miso bit
        IF (ss = '1' OR rst = '1') THEN
            miso <= 'Z';
        ELSIF (rising_edge(clk)) THEN
            miso <= tx_reg(BUS_WIDTH-1);
        END IF;
    END PROCESS;
END behavioural;