module do_while_loop;
  integer a;
  
  initial begin
    a = 0;
    do begin
      $display("a=%0d",a);
       a++;
    end
    while(a<10);
  end
endmodule
