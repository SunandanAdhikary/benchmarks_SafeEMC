module dcmotor(x1, x2, x3, x4, w, u)
	output x1, x2;

 	
	mode loc
		begin
   		ddt x1 =  -0.0558 * x1 - 0.9968 * x2 + 0.0802 * x3 + 0.0415 * x4 + 0.017058599999999997 * x2 - 0.0034117199999999996 * w ;
   		ddt x2 =  0.598 * x1 - 0.115 * x2 - 0.0318 * x3 - 1.1115 * x2 + 0.2223 * w ;
   		ddt x3 =  -3.05 * x1 + 0.388 * x2 - 0.465 * x3 + 0.35801999999999995 * x2 - 0.07160399999999999 * w ;
   		ddt x4 =  0.0805 * x2 + x3 ;
   		ddt w =  x2 - 0.2 * w ;
		end 

	initial begin 
		set begin
			mode == loc;
			x1 <= 0.318401 ;
			x1 >= 0.226891 ;
			x2 <= 1.625669 ;
			x2 >= 1.384075 ;
			x3 <= 0.318401 ;
			x3 >= 0.226891 ;
			x4 <= 1.625669 ;
			x4 >= 1.384075 ;
			w <= 1.625669 ;
			w >= 1.384075 ;
			u <= 0.318401 ;
			u >= 0.226891 ;
		end
	end

endmodule	
