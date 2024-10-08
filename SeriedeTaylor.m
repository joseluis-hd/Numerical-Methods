clc;
clear;
close all;
format default
syms x
fprintf("Series de Taylor")
disp(" ")
f=input("Introduce la Funcion: ");
Valor=input("x= ");
a=input("a= ");
t=(input("Introduce el numero de Terminos: "));
n=0;
R=0;
while n<t
    if n<=0
        R= f;
        n=n+1;
    end
    if n>0
        R=R+((diff(f,n)*(Valor-a)^n)/factorial(n));
        n=n+1;
    end
end
R=subs(R,x,a);
disp(" ")
fprintf("La aproximación de la función %s es %.5f\n",f,R);
