module do_while_false;
  integer A;
  
  initial begin
    A = 10;
    do begin
      $display("A=%0d",A);
      A++;
    end
    while(A<9);
  end
endmodule


// output
// # run -all
// # A=10
// # exit
