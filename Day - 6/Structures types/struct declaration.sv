module structure_declaration;
struct {
  int data[4];
  bit [1:0] value;    
  string name;
  longint salary[4];
} employee[4];

initial begin
  employee[0].data[0]   = 16'h1231;
  employee[0].value     = 2'b01;
  employee[0].name      = "arya";
  employee[0].salary[0] = 50000;
  $display("employee[0] =%p", employee[0]);

  employee[1].data[1]   = 16'h1232;
  employee[1].value     = 2'b00;
  employee[1].name      = "ben";
  employee[1].salary[1] = 35000;
  $display("employee[1] =%p", employee[1]);

  employee[2].data[2]   = 16'h1233;
  employee[2].value     = 2'b01;
  employee[2].name      = "candy";
  employee[2].salary[2] = 25000;
  $display("employee[2] =%p", employee[2]);

  employee[3].data[3]  = 16'h1234;
  employee[3].value     = 2'b00;
  employee[3].name      = "denn";
  employee[3].salary[3] = 40000;
  $display("employee[3] =%p", employee[3]);
end
endmodule



/* output
# employee[0] ='{data:'{4657, 0, 0, 0}, value:1, name:"arya", salary:'{50000, 0, 0, 0}}
# employee[1] ='{data:'{0, 4658, 0, 0}, value:0, name:"ben", salary:'{0, 35000, 0, 0}}
# employee[2] ='{data:'{0, 0, 4659, 0}, value:1, name:"candy", salary:'{0, 0, 25000, 0}}
# employee[3] ='{data:'{0, 0, 0, 4660}, value:0, name:"denn", salary:'{0, 0, 0, 40000} */
