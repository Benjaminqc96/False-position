clear 
close all
clc
syms x
fu=input('Ingrese una funcion: ');
solu=solve(fu,x);
fprintf('Existen %d raices, ingrese la que quiere calcular:\n',length(solu))
for k=1:length(solu)
    fprintf('%d: %f\n',k,solu(k))
end
ra=input('');
disp('sugerencia para los intervalos')
rr=sqrt(abs(solu(ra)));
as=solu(ra)-rr;
bs=solu(ra)+rr;
disp(as)
disp(bs)
a=input('Ingrese el primer punto: ');
b=input('Ingrese el segundo punto: ');
cont=30;
y=posfal(a,b,cont,fu);
