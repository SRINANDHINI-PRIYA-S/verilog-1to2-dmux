`timescale 1ns/1ps

module tb_demux1to2;

reg D, S;
wire Y0, Y1;

demux1to2 uut (
    .D(D),
    .S(S),
    .Y0(Y0),
    .Y1(Y1)
);

initial begin
    $display("Time\tD\tS\tY0\tY1");
    $monitor("%0t\t%b\t%b\t%b\t%b", $time, D, S, Y0, Y1);

    // Test case 1: D=0, S=0
    D = 0; S = 0; #10;

    // Test case 2: D=1, S=0
    D = 1; S = 0; #10;

    // Test case 3: D=0, S=1
    D = 0; S = 1; #10;

    // Test case 4: D=1, S=1
    D = 1; S = 1; #10;

    $finish;
end

endmodule
