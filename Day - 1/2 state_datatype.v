module two_state_datatype;
int a;
shortint b;
longint c;
bit e;
byte d;
  
initial begin
a=1;
b=8'h3F;
c=16;
d=8'h1A;
e=3'b101;
$display(" a=%b, b=%b, c=%b, d=%b, e=%b", a,b,c,d,e,);
end
endmodule
