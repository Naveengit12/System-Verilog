module for_behav_while;
  int a;
  
  initial begin
    for(;;) begin
      $display("a=%0d",a);
      if(a == 20) break;
      a++;
    end
  end
endmodule



/*output
# run -all
# a=0
# a=1
# a=2
# a=3
# a=4
# a=5
# a=6
# a=7
# a=8
# a=9
# a=10
# a=11
# a=12
# a=13
# a=14
# a=15
# a=16
# a=17
# a=18
# a=19
# a=20*/
# exi
