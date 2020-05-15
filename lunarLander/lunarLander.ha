module lunarLander(position, velocity, mass, FuelCommand, tempM, tempF)
	output position, velocity;

	mode loc
		begin
   		ddt position =  velocity ;
   		ddt velocity = FuelCommand/mass - 1.622;
		ddt mass = -FuelCommand/2800 ; 
		ddt FuelCommand = 0 ;
		ddt tempM = 0 ;
		ddt tempF = 0 ;
		end 

	initial begin 
		set begin
			mode == loc;
			position <=30.5;
			position >=29.5;
			velocity <= -1.5;
			velocity >= -2.5;
			mass <= 1255;
			mass >= 1245;
			FuelCommand <= 2035;
			FuelCommand >= 2020;
			tempM == 0 ;
			tempF == 0 ;
		end

	end

endmodule
