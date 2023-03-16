module qa1
    (
        input  wire       clock,
        input  wire [7:0] toggle_switch,
        input  wire [3:0] push_button,
        output reg  [6:0] red_led,
        output reg  [3:0] green_led
    );
   reg [3:0] cnt = 4'b0000;

   always @(posedge clock )   begin
      case ( push_button )
	0 : green_led <= 0;
	1 : green_led <= 4'b0001;
	2 : green_led <= 4'b0010;
	3 : green_led <= 4'b0100;
	4 : green_led <= 4'b1000;
	default: green_led <= 4'b1111;
      endcase
   end
endmodule
