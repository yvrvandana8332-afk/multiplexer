`timescale 1ns/1ps

module tb_mux4to1;

reg i0, i1, i2, i3;
reg s0, s1;
wire y;

mux4to1 DUT (
    .i0(i0),
    .i1(i1),
    .i2(i2),
    .i3(i3),
    .s0(s0),
    .s1(s1),
    .y(y)
);

initial begin

    // Input values
    i0 = 0;
    i1 = 1;
    i2 = 0;
    i3 = 1;

    // Select i0
    s1 = 0; s0 = 0;
    #10;

    // Select i1
    s1 = 0; s0 = 1;
    #10;

    // Select i2
    s1 = 1; s0 = 0;
    #10;

    // Select i3
    s1 = 1; s0 = 1;
    #10;

    $finish;
end

initial begin
    $monitor("Time=%0t | s1=%b s0=%b | i0=%b i1=%b i2=%b i3=%b | y=%b",
             $time, s1, s0, i0, i1, i2, i3, y);
end

endmodule