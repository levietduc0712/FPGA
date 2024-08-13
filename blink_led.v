module top (
    input clk,
    output reg [5:0] led
);

localparam WAIT_TIME = 13500000;
reg [23:0] clockCounter = 0;

always @(posedge clk) begin
    clockCounter <= clockCounter + 1;
    if (clockCounter == WAIT_TIME) begin
        clockCounter <= 0;
        led <= ~led;
    end
end

endmodule
