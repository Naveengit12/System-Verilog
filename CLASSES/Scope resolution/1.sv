class d_data;
  bit [31:0] data;
  static int id;
  
  static function display(int id);
    $display("Value of id = %0d", id);
  endfunction
endclass

module class_example;
  initial begin
    d_data::id = 27;
    d_data::display(d_data::id);   
  end
endmodule

output
# run -all
# Value of id = 27
# exit
