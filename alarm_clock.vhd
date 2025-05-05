library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-- This entity executes wiring between components and logic for alarm buzzing. 
-- Alarm Buzzes for 1 min, no snooze or stop option provided
-- There is a provision to set current time and alarm time in HH:MM formats
-- The clock displays HH:MM railway time in Seven Segment display
entity alarm_clock is
    Port ( clk_1kHz : in STD_LOGIC;    -- 1KHz reference clock
           reset : in STD_LOGIC;
           H0_adder : in STD_LOGIC;
           H1_adder : in STD_LOGIC;
           M0_adder : in STD_LOGIC;
           M1_adder : in STD_LOGIC;
           H0_alarm : in STD_LOGIC_VECTOR (3 downto 0);
           H1_alarm : in STD_LOGIC_VECTOR (3 downto 0);
           M0_alarm : in STD_LOGIC_VECTOR (3 downto 0);
           M1_alarm : in STD_LOGIC_VECTOR (3 downto 0);
           -- display is In Seven Segment display
           H1_display : out STD_LOGIC_VECTOR (6 downto 0);
           H0_display : out STD_LOGIC_VECTOR (6 downto 0);
           M1_display : out STD_LOGIC_VECTOR (6 downto 0);
           M0_display : out STD_LOGIC_VECTOR (6 downto 0);
           alarm_buzz: out STD_LOGIC);
end alarm_clock;

architecture Structural of alarm_clock is
component clk_div_1s is
    Port ( clk_1kHz : in STD_LOGIC;
           clk_1Hz : out STD_LOGIC);
end component;
component digital_clock is
    Port ( clk : in STD_LOGIC;
           reset : in STD_LOGIC;
           H1_adder : in STD_LOGIC;
           H0_adder : in STD_LOGIC;
           M1_adder : in STD_LOGIC;
           M0_adder : in STD_LOGIC;
           H1_out : out STD_LOGIC_VECTOR (3 downto 0);
           H0_out : out STD_LOGIC_VECTOR (3 downto 0);
           M1_out : out STD_LOGIC_VECTOR (3 downto 0);
           M0_out : out STD_LOGIC_VECTOR (3 downto 0));
end component;
component BCDtoSevenSegment is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           SS : out STD_LOGIC_VECTOR (6 downto 0));
end component;
signal H0,H1,M0,M1:std_logic_vector (3 downto 0):="0000";
signal clk_1Hz:std_logic;
begin
    clk_1s: clk_div_1s port map(clk_1kHz=>clk_1kHz, clk_1Hz=>clk_1Hz);
    dig_clock: digital_clock port map(clk=>clk_1Hz,reset=>reset, H1_adder=>H1_adder, H0_adder=>H0_adder, M1_adder=>M1_adder,
                                        M0_adder=>M0_adder, H1_out=>H1, H0_out=>H0, M1_out=>M1, M0_out=>M0);
    bcd_H1: BCDtoSevenSegment port map(A=>H1(3),B=>H1(2),C=>H1(1),D=>H1(0),SS=>H1_display);
    bcd_H0: BCDtoSevenSegment port map(A=>H0(3),B=>H0(2),C=>H0(1),D=>H0(0),SS=>H0_display);
    bcd_M1: BCDtoSevenSegment port map(A=>M1(3),B=>M1(2),C=>H1(1),D=>M1(0),SS=>M1_display);
    bcd_M0: BCDtoSevenSegment port map(A=>M0(3),B=>M0(2),C=>M0(1),D=>M0(0),SS=>M0_display);
    
process(clk_1Hz) begin
    if( (H0=H0_alarm) and (H1=H1_alarm) and (M0=M0_alarm) and (M1=M1_alarm) ) then
        alarm_buzz<='1';
    else 
        alarm_buzz<='0';
    end if;
end process;
end Structural;
