clc
clear 
close all
syms x
format long
%f = input('Introduce la funcion a evaluar: ');
g = input('Introduce el arreglo a usar: ');
x_0 = input('Introduce el valor inical: ');
ep = input('Introduce el error: ');
g_p = diff(g);
g_PP = round(double(subs(g_p,x,x_0)),5);
if g_PP < 1
    x_1 = 0;
    x_2 = 0;
    d = 0;
    while ep<d || d==0
    ec = double(subs(g,x,x_0));
    x_0 = ec;
    x_2 = ec;
    d = abs(x_2-x_1);
    x_1 = x_2;
    end
else
    fprintf('No cumple')
end
sprintf('%.5f',x_0)