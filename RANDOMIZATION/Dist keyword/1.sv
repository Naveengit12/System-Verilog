class kalki;
  rand bit[7:0] bhairava;
  
  constraint bhairava_k{bhairava dist{2:/8,4:/7,[5:15] :/5};}
endclass

module class_kalki;
  kalki proj_k;
  
  initial begin
    proj_k = new();
    repeat(20) begin
      proj_k.randomize();
      $display("bhairava(:/)=%0d",proj_k.bhairava);
    end
  end
endmodule


// output
// bhairava(:/)=7
// bhairava(:/)=7
// bhairava(:/)=4
// bhairava(:/)=13
// bhairava(:/)=4
// bhairava(:/)=4
// bhairava(:/)=15
// bhairava(:/)=7
// bhairava(:/)=2
// bhairava(:/)=2
// bhairava(:/)=5
// bhairava(:/)=5
// bhairava(:/)=6
// bhairava(:/)=6
// bhairava(:/)=2
// bhairava(:/)=4
// bhairava(:/)=4
// bhairava(:/)=14
// bhairava(:/)=4
// bhairava(:/)=4
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
