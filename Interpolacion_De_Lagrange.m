clc
clear
close all
p = input('De cuantos puntos desea la interpolacion, 2 o 3?: ');
if p == 2
    x1 = input('Porfavor intruzca el valor "x1" conocido: ');
    y1 = input('Porfavor introduzca el valor "y1" conocido:');
    x2 = input('Porfavor intruzca el valor "x2" conocido: ');
    y2 = input('Porfavor introduzca el valor "y2" conocido:');
    x = input('Pofavor introduzca el valor a interpolar: ');
    y0 = round(y1*((x-x2)/(x1-x2))+y2*((x-x1)/(x2-x1)),5);
    fprintf('\n')
    fprintf('La respuesta es: %-5.5f \n',y0)
    fprintf('\n')
elseif p==3
    x1 = input('Porfavor intruzca el valor "x1" conocido: ');
    y1 = input('Porfavor introduzca el valor "y1" conocido:');
    x2 = input('Porfavor intruzca el valor "x2" conocido: ');
    y2 = input('Porfavor introduzca el valor "y2" conocido:');
    x3 = input('Porfavor intruzca el valor "x3" conocido: ');
    y3 = input('Porfavor introduzca el valor "y3" conocido:');
    x = input('Pofavor introduzca el valor a interpolar: ');
    y0 = (y1*((x-x2)/(x1-x2))*((x-x3)/(x1-x3)))+(y2*((x-x1)/(x2-x1))*((x-x3)/(x2-x3)))+(y3*((x-x1)/(x3-x1))*((x-x2)/(x3-x2)));
    fprintf('\n')
    fprintf('La respuesta es: %-5.5f \n',y0)
    fprintf('\n')
else
    fprintf('Eso no se puede resolver, intente denuevo colocando 2 o 3.\n')
end