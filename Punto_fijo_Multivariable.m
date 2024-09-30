clc
clear
close all
syms x y z 
fprintf('Metodo de punto fijo multivariable\n')
f1 = input('Introduzca la primer ecuacion: ');
f2 = input('Introduzca la segunda ecuacion: ');
f3 = input('Introduzca la tercera funcion: ');
X0 = input('Introduzca el valor inicial x0: ');
Y0 = input('Introduzca el valor inicial y0: ');
Z0 = input('Introduzca el valor inicial z0: ');
n = input('Numero de iteraciones: ');
f1d = solve(f1,x);
f2d = solve(f2,y);
f3d = solve(f3,z);
for i = 1:n
    x1 = round(double(subs(f1d,[y,z],[Y0,Z0])),5);
    y1 = round(double(subs(f2d,[x,z],[X0,Z0])),5);
    z1 = round(double(subs(f3d,[x,y],[X0,Y0])),5);
    X0 = x1;
    Y0 = y1;
    Z0 = z1;
end
fprintf('\n')
fprintf('X0 es igual a: %0.5f\n',X0)
fprintf('Y0 es igual a: %0.5f\n',Y0)
fprintf('Z0 es igual a: %0.5f\n',Z0)
fprintf('\n')