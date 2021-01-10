module DiamantISAListener
(
	input wire [3:0] nCS,
	input wire [19:0] SA,
	input wire [15:0] SD,
	input wire SBHE,
	input wire AEN,
	input wire nIOW,
	input wire nIOR,
	input wire nMEMW,
	input wire nMEMR,
	input wire nMEMCS16,
	input wire nIOCS16,
	input wire BALE,
	input wire ReadClock,
	input wire Reset,
	input wire Clock50MHz,
	output wire [25:0] DataOut,
	output reg Ready
);

`define STATE_POWER_ON 0
`define STATE_RESET 1
`define STATE_ACQUIRING 2
`define STATE_READY 3

wire TargetIO;
wire TargetMem;
wire Target16;
wire Idle;
wire AddressLimitReached;
wire [25:0] InputData;
reg WriteClock = 0;
reg [1:0] MachineState = `STATE_POWER_ON;
reg [2:0] EncodedCS;
reg [11:0] ReadAddr = 0;
reg [11:0] WriteAddr = 0;
reg [25:0] ResetMask = 0;

initial begin
	Ready <= 0;
end

assign AddressLimitReached = (WriteAddr == 12'hfff);
assign Idle = (nCS == 4'b1111);
assign TargetIO = nIOR ^ nIOW;
assign TargetMem = nMEMR ^ nMEMW;
assign Target16 = nMEMCS16 ^ nIOCS16;
assign InputData[25:23] = EncodedCS;
assign InputData[22] = TargetIO;
assign InputData[21] = TargetMem;
assign InputData[20] = Target16;
assign InputData[19:0] = SA;

Memory MyMemory (
	.data(InputData & ResetMask),
	.rdaddress(ReadAddr),
	.rdclock(ReadClock),
	.rden(1'b1),
	.wraddress(WriteAddr),
	.wrclock(WriteClock),
	.wren((MachineState == `STATE_ACQUIRING) || (MachineState == `STATE_RESET)),
	.q(DataOut));
	
always @(nCS)
begin
	case(nCS)
	4'b1111: EncodedCS = 3'd0;
	4'b1110: EncodedCS = 3'd1;
	4'b1101: EncodedCS = 3'd2;
	4'b1011: EncodedCS = 3'd3;
	4'b0111: EncodedCS = 3'd4;
	//3'b101..110 = reserved
	default: EncodedCS = 3'b111;
	endcase
end

always @(negedge ReadClock or posedge Reset)
begin
	if (Reset) ReadAddr <= 0;
	else if (MachineState == `STATE_READY) begin
		ReadAddr <= ReadAddr + 1;
	end
end

always @(posedge Clock50MHz)
begin
	if (Reset) MachineState <= `STATE_RESET;
	
	case (MachineState)
	`STATE_POWER_ON:
		begin
			WriteAddr <= 0;
			ResetMask <= 26'hfffffff;
			if (Idle) MachineState <= `STATE_ACQUIRING;
		end
	`STATE_ACQUIRING:
		begin
			if (Idle) begin
				if (WriteClock) begin
					if (AddressLimitReached) MachineState <= `STATE_READY; //Detect overflow
					WriteClock <= 0;
					WriteAddr <= WriteAddr + 1;
				end
			end
			else WriteClock <= 1;			
		end
	`STATE_READY:
		begin
			Ready <= 1;
		end
	`STATE_RESET:
		begin
			Ready <= 0;
			ResetMask <= 0;
			if (WriteClock) begin //Uses non-yet-inverted value
				if (AddressLimitReached) MachineState <= `STATE_POWER_ON; //Old value will be used for comparison, regardless of order
				WriteAddr <= WriteAddr + 1;	//Non-blocking assignment!
				WriteClock <= 0;
			end
			else WriteClock <= 1;
		end
	default:$display("Invalid state!");
	endcase
end

endmodule
