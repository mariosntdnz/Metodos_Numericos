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

if     fa == 0
    z = a
elseif fb == 0
    z = b
else 
  while fa*fb > 0
    printf("Insira um novo intervalo: \n") 
    fa=f(a = input ("valor de a "))
    fb=f(b = input ("valor de b "))
  end

  z  = (a+b)/2
  fz = f(z)
  while abs(b-a) > p
    z  = (a+b)/2
    fz = f(z)
    if     fa*fz < 0
      b = z
    elseif fb*fz < 0
      a = z 
    end
    k+=1
  end
end

printf("A raiz da função %s é = %.5f\n",ftxt,z)
printf("O programa teve %d iterações\n",k)