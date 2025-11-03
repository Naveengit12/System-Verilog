module foreach_loop;
  int A[5][2] = '{'{1,10},'{2,20},'{3,30},'{4,40},'{5,50}};
  integer i,j;
  
  initial begin
    foreach(A[i,j]) begin
      $display("A[%0d],[%0d]=%0d",i,j,A[i][j]);
    end
  end
endmodule


// output
// # run -all
// # A[0],[0]=1
// # A[0],[1]=10
// # A[1],[0]=2
// # A[1],[1]=20
// # A[2],[0]=3
// # A[2],[1]=30
// # A[3],[0]=4
// # A[3],[1]=40
// # A[4],[0]=5
// # A[4],[1]=50
// # exit
