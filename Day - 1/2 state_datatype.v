module two_state_datatype;
int a;
shortint b;
longint c;
real f;
bit e;
byte d;
  
initial begin
a=1;
b=8'h3F;
c=16;
d=8'h1A;
e=3'b101;
f=11;
$display(" a=%b, b=%b, c=%b, d=%b, e=%b, f=%f", a,b,c,d,e,f);
end
endmodule
