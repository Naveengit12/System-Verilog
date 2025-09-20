module array_datatype;
int array[5] = '{1,2,3,4,5};
int i;
initial begin
foreach(array[i])
$display("array[%0d] =%0d", i,array[i]);
end
endmodule
