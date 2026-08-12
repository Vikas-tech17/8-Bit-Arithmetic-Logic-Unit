module alu8(a,b,sel,r,c);
input  [7:0] a,b;
input  [2:0] sel;
output reg [7:0] r;
output reg c;

always @(*)
begin
    c=0;
    case(sel)
        3'b000:
        begin
            {c,r} = a + b;
        end

        3'b001:
        begin
            {c,r} = a - b;
        end

        3'b010:
        begin
            r = a & b;
        end

        3'b011:
        begin
            r = a | b;
        end

        3'b100:
        begin
            r = a ^ b;
        end

        3'b101:
        begin
            r= ~a;
        end

        3'b110:
        begin
            r = a << 1;
        end

        3'b111:
        begin
            r = a >> 1;
        end

        default:
        begin
            r = 8'b0;
            c  = 1'b0;
        end

    endcase
end
endmodule