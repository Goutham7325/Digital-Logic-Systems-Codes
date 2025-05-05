library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity alarm_clock_tb is
--  Port ( );
end alarm_clock_tb;

architecture Behavioral of alarm_clock_tb is
component alarm_clock is
    Port ( clk_1kHz : in STD_LOGIC;
           reset : in STD_LOGIC;
           H0_adder : in STD_LOGIC;
           H1_adder : in STD_LOGIC;
           M0_adder : in STD_LOGIC;
           M1_adder : in STD_LOGIC;
           H0_alarm : in STD_LOGIC_VECTOR (3 downto 0);
           H1_alarm : in STD_LOGIC_VECTOR (3 downto 0);
           M0_alarm : in STD_LOGIC_VECTOR (3 downto 0);
           M1_alarm : in STD_LOGIC_VECTOR (3 downto 0);
           H1_display : out STD_LOGIC_VECTOR (6 downto 0);
           H0_display : out STD_LOGIC_VECTOR (6 downto 0);
           M1_display : out STD_LOGIC_VECTOR (6 downto 0);
           M0_display : out STD_LOGIC_VECTOR (6 downto 0);
           alarm_buzz: out STD_LOGIC);
end component;
signal clk_1kHz:std_logic:='0';
signal reset,H0_adder,H1_adder,M0_adder,M1_adder,alarm_buzz:std_logic;
signal H0_alarm,H1_alarm,M0_alarm,M1_alarm:std_logic_vector (3 downto 0);
signal H1_display,H0_display,M1_display,M0_display:std_logic_vector (6 downto 0);
begin
dut: alarm_clock port map(clk_1kHz=>clk_1kHz, reset=>reset, H0_adder=>H0_adder, H1_adder=>H1_adder,
                            M0_adder=>M0_adder, M1_adder=>M1_adder, H0_alarm=>H0_alarm, H1_alarm=>H1_alarm,
                            M0_alarm=>M0_alarm, M1_alarm=>M1_alarm, H1_display=>H1_display, H0_display=>H0_display,
                            M1_display=>M1_display, M0_display=>M0_display, alarm_buzz=>alarm_buzz);
                            
clk_process: process begin
    clk_1kHz <= not clk_1kHz;
    wait for 500us;
end process;

stim_process: process begin
    reset<='1'; wait for 1ms;
    reset<='0'; wait for 1ms;
    
    H0_adder<='1'; H1_adder<='1'; M0_adder<='1'; M1_adder<='1'; wait for 1ms;
    H0_adder<='0'; H1_adder<='0'; M0_adder<='0'; M1_adder<='0';
    
    H1_alarm<="0000";
    H0_alarm<="0000";
    M1_alarm<="0001";
    M0_alarm<="0001";
    wait;
end process;
end Behavioral;
