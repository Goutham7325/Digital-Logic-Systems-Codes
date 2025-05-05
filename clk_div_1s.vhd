library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- this entity scales the input 1kHz clock to 1Hz, as needed to create 1 second increments for digital clock
entity clk_div_1s is
    Port ( clk_1kHz : in STD_LOGIC;
           clk_1Hz : out STD_LOGIC);
end clk_div_1s;

architecture Behavioral of clk_div_1s is
signal temp:std_logic:='0'; -- temp stores the output value of clk_1Hz
signal counter:integer:=0; -- counter counts 500 positive edges of clk_1kHz, and toggles the signal temp
begin
process(clk_1kHz) begin
    if rising_edge(clk_1kHz) then
        counter<=counter+1;
        if (counter=499) then
            counter<=0;
            temp<= not temp;
        end if;
    end if;
end process;
clk_1HZ <= temp;
end Behavioral;
