module qa1
    (
        input  wire       clock,
        input  wire [7:0] toggle_switch,
        input  wire [3:0] push_button,
        output reg  [6:0] red_led,
        output reg  [3:0] green_led
    );

    always @( toggle_switch or push_button )
    begin
        green_led = toggle_switch[7:4] | toggle_switch[3:0] | push_button;
        
        case (toggle_switch[7:4] | toggle_switch[3:0] | push_button)
            4'h0 : red_led = 7'b0111111;
            4'h1 : red_led = 7'b0000110;
            4'h2 : red_led = 7'b1011011;
            4'h3 : red_led = 7'b1001111;
            4'h4 : red_led = 7'b1100110;
            4'h5 : red_led = 7'b1101101;
            4'h6 : red_led = 7'b1111101;
            4'h7 : red_led = 7'b0000111;
            4'h8 : red_led = 7'b1111111;
            4'h9 : red_led = 7'b1101111;
            4'ha : red_led = 7'b1110111;
            4'hb : red_led = 7'b1111100;
            4'hc : red_led = 7'b1011000;
            4'hd : red_led = 7'b1011110;
            4'he : red_led = 7'b1111001;
            4'hf : red_led = 7'b1110001;
        endcase
    end
        
endmodule
