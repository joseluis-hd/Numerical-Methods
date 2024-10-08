clc
clear 
close all
syms x
f = input('Introduce la funcion a evaluar: ');
x0 = input('Introduce la variable xi: ');
x1 = input('Introduce la variable xd: ');
ep = input('Introduce el error: ');
a = 0;
b = 0;
d =0;
while ep<d || d == 0
    f0 = round(double(subs(f,x,x0)),5);
    f1 = round(double(subs(f,x,x1)),5);
    x_n = round(double((x0*f1-x1*f0)/(f1-f0)),5);
    x0=x1;
    x1 = x_n;
    b = x_n;
    d = abs(b-a);
    a = b;
end
sprintf('%.5f',x_n)
