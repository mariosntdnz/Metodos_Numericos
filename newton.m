clc;
clear;
a=1.35;
b=3;
p=0.001;
ftxt = "log(x-1) - cos(x-1)"

%Declara��o da fun��o
f  =@(x) log(x-1) - cos(x-1)
fa = f(a)

d=@(x) 1/(x-1) + sin(x-1)
df=d(a)
k = 1

while df == 0 | df == Inf
    a = input ("Novo valor de a ")
    fa = f(a)
    df=d(a)
end 

r=a-fa/df
while abs(f(r)) > p
  r=a-f(a)/d(a)
  a=r
  k+=1
end

printf("A raiz da função %s é = %.5f\n",ftxt,r)
printf("O programa teve %d iterações\n",k)