

module ALU_tb;
    reg [7:0] A, B;
    reg [2:0] ALU_ctrl;
    wire [7:0] result;

    // Instantiate ALU
    ALU uut (
        .A(A),
        .B(B),
        .ALU_ctrl(ALU_ctrl),
        .result(result)
    );

    initial begin
        // Apply test vectors
        A = 8'b00000001; B = 8'b00000001; ALU_ctrl = 3'b000; // ADD
        #10 A = 8'b00000100; B = 8'b00000001; ALU_ctrl = 3'b001; // SUB
        #10 A = 8'b00001100; B = 8'b00000001; ALU_ctrl = 3'b010; // AND
        #10 A = 8'b00001100; B = 8'b00000101; ALU_ctrl = 3'b011; // OR
        #10 A = 8'b00001100; B = 8'b00000101; ALU_ctrl = 3'b100; // XOR
        #10 A = 8'b00001100; B = 8'b00000000; ALU_ctrl = 3'b101; // LSHIFT
        #10 A = 8'b00001100; B = 8'b00000000; ALU_ctrl = 3'b110; // RSHIFT
        #10 A = 8'b00001100; B = 8'b00001100; ALU_ctrl = 3'b111; // EQUAL
        #10 $finish;
    end
endmodule
