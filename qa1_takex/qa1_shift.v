module qa1
    (
        input  wire       clock,
        input  wire [7:0] toggle_switch,
        input  wire [3:0] push_button,
        output reg  [6:0] red_led,
        output reg  [3:0] green_led
    );

   parameter time_out = 25'd6_000_000;// 1/4 @24Mhz
   reg [23:0] 	     counter;
   reg [3:0] ledx = 4'b0001;

   always @(posedge clock )   begin
      if(counter== time_out) begin
	    counter <= 24'd0;
	 ledx <= (ledx == 4'b1000) ? 4'b0001 :   ledx << 1;
	 green_led <= ledx;
      end else begin
	 counter <=counter+24'd1;
      end
   end
endmodule
