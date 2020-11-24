%Fenomeno de Runge
clc
close all
clearvars
x=linspace(-1,1,500);
y=1./(1+25*x.^2);
%Datos de interpolaci?n
N=15; %Numero de puntos
x1=linspace(-1,1,N);
y1=1./(1+25*x1.^2);
M=vander(x1); %Matriz de Vandermonde
n=cond(M); %Numero de condicion
c=M\y1.'; %coeficientes
p=polyval(c,x); %polinomio interpolaci?n
%Dibujos
tela=get(0,'ScreenSize');
f=figure(1);
%set(f,'paperpositionmode','auto','position');
p1=plot(x,y);
hold on;
p2=plot(x,p);
grid on