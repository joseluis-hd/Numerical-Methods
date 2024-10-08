clc
clear;
close all; 
syms x
fprintf("Método de Punto Fijo")
disp(" ")
g_x=input("Ingrese g(x): ");
x_0=input("x0= ");
e=input("E= ");
dif=0;
x_act=0;
x_ant=0;
xt=0;
Sust=[];
Xact_Xant=[];
N=[];
aux=0;
g1_x=round((abs(double(subs(diff(g_x),x,x_0)))),5);
if g1_x<1
    conv="El metodo Converge";
    disp(conv)
end
if g1_x>=1
    conv="El metodo Diverge";
    dif=1;
    disp(conv)
end
while (conv=="El metodo Converge" && dif>e) || dif==0
    xt=round((double(subs(g_x,x,x_0))),5);
    x_act=xt;
    dif=round((abs(x_act-x_ant)),5);
    x_ant=x_act;
    x_0=xt;
    Sust=[Sust;xt];
    if aux==0
       Xact_Xant=[Xact_Xant;0];
    else
       Xact_Xant=[Xact_Xant;dif];   
    end
    aux=aux+1;
    N=[N;aux];
end
table(N,Sust,Xact_Xant)
fprintf("La aproximación es: %.5f",xt)
