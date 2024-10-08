clc
clear 
close all
syms x
f = input('Introduce la funcion a evaluar: ');
x0 = input('Introduce el valor inical: ');
ep = input('Introduce el error: ');
a = 0;
b = 0;
d =0;
while ep<d || d == 0
    df = diff(f);
    f0 = round(double(subs(f,x,x0)),5);
    df0 = round(double(subs(df,x,x0)),5);
    x_n= round(double(x0-(f0/df0)),5);
    x0 = x_n;
    b = x_n;
    d = abs(b-a);
    a = b;
end
sprintf('%.5f',x_n)