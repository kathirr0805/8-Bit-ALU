
module ALU (
    input [7:0] A, B,       // 8-bit inputs
    input [2:0] ALU_ctrl,   // 3-bit control signal for operation
    output reg [7:0] result // 8-bit output
);
    always @(*) begin
        case(ALU_ctrl)
            3'b000: result = A + B;        // ADD
            3'b001: result = A - B;        // SUB
            3'b010: result = A & B;        // AND
            3'b011: result = A | B;        // OR
            3'b100: result = A ^ B;        // XOR
            3'b101: result = A << 1;       // LSHIFT
            3'b110: result = A >> 1;       // RSHIFT
            3'b111: result = (A == B) ? 1 : 0; // EQUAL
            default: result = 8'b00000000; 
        endcase
    end
endmodule

