clc
clear
close all
syms x y z 
fprintf('Compuestas de integracion\n')
f = input('Introduzca la funcion a evaluar: ');
l1 = input('Introduza su limite "a": ');
l2 = input('Introduzca su limite "b": ');
n = input('Introduzca el numero de puntos: ');
fprintf('Que metodo desea ?\n')
fprintf('1. Compuesta de integracion del trapecio\n')
fprintf('2. Compuesta de integracion de Simpson 1/3\n*Nota: Solo sirve para numeros de puntos pares.\n')
fprintf('3. Compuesta de integracion de Simpson 3/8\n*Nota: Solo sirve para maximo 32 puntos.\n')
m = input('Introduzca el numero del metodo deseado: ');
fprintf('\n')
if m == 1
    f0 = subs(f,x,l1);
    fn = subs(f,x,l2);
    h = (l2-l1)/n;
    fs = 0;
    for i= 1:n-1
        xi = l1+h*i;
        fs = fs+subs(f,xi);
    end
    I = (h/2)*(f0+2*fs+fn);
    fprintf('La aproximacion por el metodo de trapecio es: %-5.5f \n',I)
    fprintf('\n')
elseif m == 2
    f0 = subs(f,x,l1);
    fn = subs(f,x,l2);
    h = (l2-l1)/n;
    fs1 = 0;
    fs2 = 0;
    for i = 1:n-1
        xi = l1+h*i;
        n1 = i;
        while n1>1
            n1 = n1-2;
        end
        if n1 == 1
            fs1 = fs1+subs(f,xi);
        else
            fs2 = fs2+subs(f,xi);
        end
    end
    I = (h/3)*(f0+4*fs1+2*fs2+fn);
    fprintf('La aproximacion por el metodo de Simpson 1/3 es: %-5.5f \n',I)
    fprintf('\n')
elseif m == 3
    f0 = subs(f,x,l1);
    fn = subs(f,x,l2);
    h = (l2-l1)/n;
    fs1 = 0;
    fs2 = 0;
    for i = 1:n-1
        xi = l1+h*i;
        n1 = i;
        if n1 ~= 3 && 6 && 9 && 12 && 15 && 18 && 21 && 24 && 27 && 30
            fs1 = fs1+subs(f,xi);
        else
            fs2 = fs2+subs(f,xi);
        end
    end
    I = ((3*h)/8)*(f0+3*fs1+2*fs2+fn);
    fprintf('La aproximacion por el metodo de Simpson 3/8 es: %-5.5f \n',I)
    fprintf('\n')
end