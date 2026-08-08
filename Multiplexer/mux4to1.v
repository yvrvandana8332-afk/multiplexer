module mux4to1 (
    input  wire i0,
    input  wire i1,
    input  wire i2,
    input  wire i3,
    input  wire s0,
    input  wire s1,
    output wire y
);

wire w1, w2;

// First stage
mux2to1 MUX1 (
    .i0(i0),
    .i1(i1),
    .sel(s0),
    .y(w1)
);

mux2to1 MUX2 (
    .i0(i2),
    .i1(i3),
    .sel(s0),
    .y(w2)
);

// Second stage
mux2to1 MUX3 (
    .i0(w1),
    .i1(w2),
    .sel(s1),
    .y(y)
);

endmodule