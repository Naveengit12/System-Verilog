module three_D_array;
int array[1:0][2:0][3:0];
integer i,k,j;

initial begin
foreach(array[i,j,k]) begin
$display("array[i][j][[k] = %b",i,j,k,array[i][j][k]);
end
end
endmodule
