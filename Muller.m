clc
clear
close all
syms x
f = input('Introduce la funcion: ');
x0 = input('Introduce x0: ');
x1 = input('Introduce x1: ');
x2 = input('Introduce x2: ');
f0 = round(double(subs(f,x,x0)),5);
f1 = round(double(subs(f,x,x1)),5);
f2 = round(double(subs(f,x,x2)),5);

a0 = f0;
a1 = (f1-f0)/(x1-x0);
a2 = (((f2-f0)/(x2-x0))-a1)/(x2-x1);

a = a2;
b = (a1 - a2*(x0+x1));
c = (a0-a1*(x0)+a2*(x0)*(x1));

y = root(a*x^2+b*x+c,x);

sprintf('%.5f\n',y)