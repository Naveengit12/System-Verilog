class parent;
  bit [31:0] data;
  
  function new(bit [31:0] data);
    this.data = data;
    $display("Base: Value of data = %0h", data);
  endfunction
endclass

class child extends parent;
  bit [31:0] data;
  
  function new(bit [31:0] data_p, data_c);
    super.new(data_p);
    this.data = data_c;
    $display("Child: Value of data = %0h", data);
  endfunction

endclass

module class_example;
  initial begin
    child c;
    c = new(5, 7);
  end
endmodule


// output
// # run -all
// # Base: Value of data = 5
// # Child: Value of data = 7
// # exit
