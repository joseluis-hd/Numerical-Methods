clc
clear
close all
syms x y 
format long
f1 = input('Introduzca la primer ecuaicon: ');
f2 = input('Introduzca la segunda ecuacion: ');
X0 = input('Introduzca el valor inicial x0: ');
Y0 = input('Introduzca el valor inicial y0: ');
f1x = diff(f1,x,1);
f1y = diff(f1,y,1);
f2x = diff(f2,x,1);
f2y = diff(f2,y,1);
f1e = 1;
f2e = 1;
while f1e ~= 0 && f2e ~= 0
    f1e = round(double(subs(f1,[x,y],[X0,Y0])),5)
    f2e = round(double(subs(f2,[x,y],[X0,Y0])),5)
    f1xe = round(double(subs(f1x,[x,y],[X0,Y0])),5)
    f1ye = round(double(subs(f1y,[x,y],[X0,Y0])),5)
    f2xe = round(double(subs(f2x,[x,y],[X0,Y0])),5)
    f2ye = round(double(subs(f2y,[x,y],[X0,Y0])),5)

    X1 = round(X0 - (((f2ye*f1e)-(f1ye*f2e))/((f1xe*f2ye)-(f2xe*f1ye))),5)
    Y1 = round(Y0 - (((f1xe*f2e)-(f2xe*f1e))/((f1xe*f2ye)-(f2xe*f1ye))),5)
    X0 = round(X1,5)
    Y0 = round(Y1,5)
    V = [X0, Y0];
end
fprintf('\n')
fprintf('\n')
fprintf('El resultado es:')
disp(round(V,5))