`timescale 1ns/1ps

module demux1to2 (
    input wire D,
    input wire S,
    output wire Y0,
    output wire Y1
);

assign Y0 = ~S & D;
assign Y1 =  S & D;

endmodule
