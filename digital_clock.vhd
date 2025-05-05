library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
USE ieee.numeric_std.ALL;
-- This entity executes the logic for hours, minutes and seconds for a 24hr HH:MM railway time clock
-- There is provision to set the time on clock by incrementing current time. Holding the adder for 1s increments the
-- corresponding digit by 1.
-- Eg: H1_adder when "held ON" (set to 1) for 1s increments the current time by 10hrs
-- time format :    H1 H0 : M1 M0 
-- Eg: 10:59 -> H1=1, H0=0, M1=5, M0=9, (railway time)
-- The output is given in BCD as it will be used to interface with Seven Segment Display
entity digital_clock is
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
end digital_clock;

architecture Behavioral of digital_clock is
signal seconds:integer:=0;
signal H1,H0,M1,M0: integer;
begin
process(clk,reset,H1_adder,H0_adder,M1_adder,M0_adder,seconds) begin
    if(reset='1' or seconds=86400) then
        seconds<=0;
    elsif(rising_edge(clk)) then
        seconds<=seconds+1;
        if(M0_adder='1') then
            seconds <= seconds + 60;
        elsif(M1_adder='1') then
            seconds <= seconds + 600;
        elsif(H0_adder='1') then
            seconds <= seconds + 3600;
        elsif(H1_adder='1') then
            seconds <= seconds + 36000;
        end if;
    end if;
end process;
M0 <= (((seconds mod 3600) / 60) mod 10);
M1 <= (((seconds mod 3600) / 60) / 10);
H0 <= ((seconds / 3600) mod 10);
H1 <= ((seconds / 3600) / 10);

M0_out <= std_logic_vector(to_unsigned(M0,4));
M1_out <= std_logic_vector(to_unsigned(M1,4));
H0_out <= std_logic_vector(to_unsigned(H0,4));
H1_out <= std_logic_vector(to_unsigned(H1,4));
end Behavioral;
