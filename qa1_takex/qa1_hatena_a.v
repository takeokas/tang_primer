module qa1
    (
        input  wire       clock,
        input  wire [7:0] toggle_switch,
        input  wire [3:0] push_button,
        output reg  [6:0] red_led,
        output reg  [3:0] green_led
    );
   reg [3:0] cnt = 4'b0000;

   wire [3:0]  hikizan_kekka;
   assign   hikizan_kekka= 7 - cnt;
   always @(posedge push_button )   begin
      cnt = (cnt == 7) ? 0 : cnt +1;
      green_led <= hikizan_kekka;
   end
endmodule
