clc
clear 
close all
syms x
fprintf('Metodo de Biseccion\n')
f = input('Introduce la funcion a evaluar: ');
xi = input('Introduce la variable xi: ');
xd = input('Introduce la variable xd: ');
ep = input('Introduce el error: ');
n1 = round(((log(xd-xi)-log(ep))/log(2)));
x_i=[];
n=[];
x_d=[];
fxi=[];
fxd=[];
x_m=[];
fxm=[];
for i = 1:n1
    xm = round((xi +xd)/2,5);
    fem = round(double(subs(f,x,xm)),5);
    fei = round(double(subs(f,x,xi)),5);
    fed = round(double(subs(f,x,xd)),5);
    n=[n; i];
    x_m=[x_m; xm];
    fxi=[fxi; fei];
    fxd=[fxd; fed];
    fxm=[fxm; fem];
    x_i=[x_i; xi];
    x_d=[x_d; xd];
    if (fem>0 && fei>0) || (fem<0 && fei<0)
        xi = xm;
    elseif (fem>0 && fed>0) || (fem<0 && fed<0)
        xd = xm;
    end
end
disp(x_m)
t = table(n,x_i,x_d,fxi,fxd,x_m,fxm);
fprintf('\n')
fprintf('La tabla de resultados es la siguiente:\n')
disp(t)
fprintf('La respuesta es: %-5.5f',xm)
fprintf('\n')