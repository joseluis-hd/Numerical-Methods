clc;
clear;
close all;
syms t w
x= [];
y= [];
sx=0;
fprintf("Metodo de Ajuste de lineal por Minimos Cuadrados")
disp(" ")
fprintf('Resolver minimos cuadrados con una euacion lineal\n')
n=input("Introduce el Valor de n: ");
for i=1:n
    fprintf("Introduce el Valor: %.0f de X",i)
    disp('  ')
    x1=input('X: ');
    sx=sx+x1;
    x=[x; x1];
end
for i=1:n
    fprintf("Introduce el Valor: %.0f de Y",i)
    disp('  ')
    y1=input('Y: ');
    y=[y; y1];
end

x2=x.^2;
xy=x.*y;


X = sum(x);
Y = sum(y);
X2 = sum(x2);
XY = sum(xy);

E1 = t*X2+w*X-XY;
E2 = t*X+n*w-Y;
[t,w] = solve(E1,E2);
table(x,y,x2,xy)
table(X,Y,X2,XY)
fprintf('\n')
disp(" ")
fprintf('La ecuacion resultante es: y= %.5fx+',t)
fprintf('%.5f\n',w)
fprintf('\n')