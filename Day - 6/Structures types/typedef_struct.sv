module structure_declaration;
typedef struct {
  int data[4];
  bit [1:0] value;    
  string name;
  longint salary[4];
} employee;

  employee A,B,C,D;
initial begin
  A.data[0]   = 16'h1A;
  A.value     = 2'b01;
  A.name      = "arya";
  A.salary[0] = 50000;
  $display("A =%p", A);

  B.data[1]   = 16'h1B;
  B.value     = 2'b00;
  B.name      = "ben";
  B.salary[1] = 35000;
  $display("B =%p", B);

  C.data[2]   = 16'h1C;
  C.value     = 2'b01;
  C.name      = "candy";
  C.salary[2] = 25000;
  $display("C =%p", C);

  D.data[3]  = 16'h1D;
  D.value     = 2'b00;
  D.name      = "denn";
  D.salary[3] = 40000;
  $display("D =%p", D);
end
endmodule





/*output
# A ='{data:'{26, 0, 0, 0}, value:1, name:"arya", salary:'{50000, 0, 0, 0}}
# B ='{data:'{0, 27, 0, 0}, value:0, name:"ben", salary:'{0, 35000, 0, 0}}
# C ='{data:'{0, 0, 28, 0}, value:1, name:"candy", salary:'{0, 0, 25000, 0}}
# D ='{data:'{0, 0, 0, 29}, value:0, name:"denn", salary:'{0, 0, 0, 40000}} */

