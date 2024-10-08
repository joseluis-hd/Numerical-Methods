function Taylor(fun,x,a,n)
clc
F = str2sym(fun);
V = symvar(F);
%R = double(subs(F,V,x));
for i = 0:(n-1)
    T(i+1)=subs(diff(F,V,i)/factorial(i),V,a)*(x-a)^i;
    R = sum(double(T));
    sprintf('%.5f',R)
end