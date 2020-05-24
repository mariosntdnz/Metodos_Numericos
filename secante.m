clc;
clear;
a = 1.35;
b = 3;
p = 0.001;
ftxt = "log(x-1) - cos(x-1)"

%Declara��o da fun��o
f  =@(x) log(x-1) - cos(x-1)
fa = f(a)
fb = f(b)
k  = 1

if     f(a) == 0
    r = a
elseif f(b)==0
    r = b
else 
  r = (a*f(b)-b*f(a))/(f(b)-f(a))
  while abs(f(r)) > p
    r = (a*f(b)-b*f(a))/(f(b)-f(a))
    a = b
    b = r
    k+=1
  end

end 
printf("A raiz da função %s é = %.5f\n",ftxt,r)
printf("O programa teve %d iterações\n",k)