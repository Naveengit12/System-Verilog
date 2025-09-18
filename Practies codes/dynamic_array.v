// Code your design here
module dynamic_arr;
  int array[];
  initial begin
    array = new [5];
    array = '{1, 2, 3, 4, 5};
		foreach (array[i])
			$display ("array[%0d] = %0d", i, array[i]);
	end
endmodule
