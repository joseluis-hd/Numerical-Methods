clc
clear
close all
syms x y z
fprintf('Metodo de Runge-Kutta\n')
f = input('Introduzca su funcion ya despejada: ');
x0 = input('Introduzca x0: ');
y0 = input('Introduzca y0: ');
h = input('Introduzca el paso: ');
fprintf('\nDesea ?\n')
fprintf('1. Numero de itreaciones.\n')
fprintf('2. Aproximar.\n')
p = input('\nColoue el numero de la opcion deseda: ');
if p == 1
    n = input('Introduzca el numero de iteraciones que desea: ');
    for i = 1:n
        k1 = subs(f,[x,y],[x0,y0]);
        x1 = (x0+(h/2));
        y1 = (y0+(h*k1/2));
        k2 = subs(f,[x,y],[x1,y1]);
        x2 = x1;
        y2 = (y0+(h*k2/2));
        k3 = subs(f,[x,y],[x2,y2]);
        xnf = (x0+h);
        ynf = (y0+h*k3);
        k4 = subs(f,[x,y],[xnf,ynf]);
        yf = y0+h/6*(k1+2*k2+2*k3+k4);
        x0 = xnf;
        y0 = yf;
    end
    fprintf('\n')
    fprintf('La respuesta es: x=%-5.5f y y=',x0)
    fprintf('%-5.5f\n',y0)
    fprintf('\n')
elseif p == 2
        xf = input('Introduzca xf: ');
    while x0 < xf
        k1 = subs(f,[x,y],[x0,y0]);
        x1 = (x0+(h/2));
        y1 = (y0+(h*k1/2));
        k2 = subs(f,[x,y],[x1,y1]);
        x2 = x1;
        y2 = (y0+(h*k2/2));
        k3 = subs(f,[x,y],[x2,y2]);
        xnf = (x0+h);
        ynf = (y0+h*k3);
        k4 = subs(f,[x,y],[xnf,ynf]);
        yf = y0+h/6*(k1+2*k2+2*k3+k4);
        x0 = xnf;
        y0 = yf;
    end
    fprintf('\n')
    fprintf('La respuesta es: x=%-5.5f y y=',x0)
    fprintf('%-5.5f\n',y0)
    fprintf('\n')
end