clc;
clear;
close all; 
syms x y 
fprintf("Euler Modificado")
disp(" ")
f=input("Introduce la función: ");
x_0=input("Introduce el valor X0: ");
x_1=input("Introduce el valor de Xf: ");
y_0=input("Introduce el valor de Y: ");
h= input("Introduce el valor de △t: ");
for i=x_0:h:(x_1-h)
    xp=x_0+h;
    aux1=round((double(subs(f,{x,y},{x_0,y_0}))),5);
    yp=y_0+(h*aux1);
    aux2=round((double(subs(f,{x,y},{xp,yp}))),5);
    y2=round((y_0+((h/2)*(aux1+aux2))),5);
    y_0=y2;
    x_0=xp;
end
fprintf("La solucion a la ecuación diferencial es: %.5f\n",y2)