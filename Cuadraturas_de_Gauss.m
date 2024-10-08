clc; 
clear;
close all;
syms x 
fprintf("Integración por Cuadratura Gaussiana")
disp(" ")
f=input("Introduce la función: ");
p=input("N° de Puntos(2-4): ");
while p~=2 && p~=3 && p~=4
    p=input("N° de Puntos(2-4): ");
end
if p==2
    x=0.57735;
    f1=round((double(subs(f))),5);
    x=-0.57735;
    f2=round((double(subs(f))),5);
    I=f1+f2;
    p=0;
end
if p==3
    x=0.77460;
    f1=round((double(subs(f))),5);
    x=0;
    f2=round((double(subs(f))),5);
    x=-0.77460;
    f3=round((double(subs(f))),5);
    I=(5/9)*f1+(8/9)*f2+(5/9)*f3;
    p=0;
end
if p==4
    x=0.86114;
    f1=round((double(subs(f))),5);
    x=0.33998;
    f2=round((double(subs(f))),5);
    x=-0.33998;
    f3=round((double(subs(f))),5);
    x=-0.86114;
    f4=round((double(subs(f))),5);
    I=(0.34786)*f1+(0.65214)*f2+(0.65214)*f3+(0.34786)*f4;
    p=0;
end

fprintf("La aproximación de la Integral es: %.5f\n",I)