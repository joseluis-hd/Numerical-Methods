clc
clear 
close all
syms x
f = input('Introduce la funcion a evaluar: ');
xi = input('Introduce la variable xi: ');
xd = input('Introduce la variable xd: ');
ep = input('Introduce el error: ');
xa = 0;
xn = 0;
d =0;
while ep<d || d == 0
    fei = round(double(subs(f,x,xi)),5);
    fed = round(double(subs(f,x,xd)),5);
    xm = round(((xi*fed)-(xd*fei))/(fed-fei),5);
    fem = round(double(subs(f,x,xm)),5);
    if (fem>0 && fei>0) || (fem<0 && fei<0)
        xi = xm;
        disp(xi);
    elseif (fem>0 && fed>0) || (fem<0 && fed<0)
        xd = xm;
        disp(xd);
    end
    xn = xm;
    d = abs(xn-xa);
    xa = xn;
end
sprintf('%.5f',xm)