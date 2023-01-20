`timescale 1ns/100ps

module alarmeCarro_tb;

	reg remote_tb, sensor_tb, clk_tb, rst_tb;
	wire alarm_tb;

	alarmeCarro tb (.remote(remote_tb), .sensor(sensor_tb), .clk(clk_tb), .rst(rst_tb), .alarm(alarm_tb));
	
	initial begin
		remote_tb = 0;
		sensor_tb = 0;
		clk_tb = 0;
		rst_tb = 1;
		
		#10
		rst_tb = 0;
		#50
		rst_tb = 1;
		#30
		remote_tb = 1;
		#80
		remote_tb = 0;
		#30
		remote_tb = 1;
		#80
		remote_tb = 0;
		#30
		remote_tb = 1;
		#80
		remote_tb = 0;
		#10
		sensor_tb = 1;
		#20
		sensor_tb = 0;
		#30
		remote_tb = 1;
		#80
		remote_tb = 0;
		#100
		$stop;
	end
	
	always #5 clk_tb = ~clk_tb;

endmodule