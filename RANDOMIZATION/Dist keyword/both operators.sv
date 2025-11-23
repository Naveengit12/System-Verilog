
// =========================dist keyword in constraint===============
class data;
  rand bit[7:0] internal_data;
  rand bit[7:0] external_data;

  constraint internal_data_d {internal_data dist {1:/4, [4:8] :/ 8}; }
  constraint external_data_d {external_data dist {4:=8, [8:11] := 12}; }
endclass

module class_data;
  data dt;
  
  initial begin
    dt = new();
    
    repeat(10) begin
      dt.randomize();
      $display("internal_data(:/)=%0d,external_data(:=)=%0d", dt.internal_data,dt.external_data);
    end
  end
endmodule


// output
// Compiler version U-2023.03-SP2_Full64; Runtime version U-2023.03-SP2_Full64;  Nov 23 03:05 2025
// internal_data(:/)=5,external_data(:=)=11
// internal_data(:/)=5,external_data(:=)=4
// internal_data(:/)=1,external_data(:=)=10
// internal_data(:/)=7,external_data(:=)=9
// internal_data(:/)=5,external_data(:=)=9
// internal_data(:/)=4,external_data(:=)=10
// internal_data(:/)=8,external_data(:=)=11
// internal_data(:/)=5,external_data(:=)=8
// internal_data(:/)=7,external_data(:=)=10
// internal_data(:/)=5,external_data(:=)=9
//            V C S   S i m u l a t i o n   R e p o r t 
// Time: 0 ns
