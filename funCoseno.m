%
clc
close all
clearvars
x=linspace(0,1,500);
y=cos(2*pi*x);
%Datos de interpolaci?n
N=5; %Grado de aproximaci?n
H=hilb(N+1); % matriz de Hilbert
n=cond(H);
int=zeros(N+1,1); %Vector
for ind=1:N+1
    int(ind)=quad(@(x)cos(2*pi*x).*x.^(ind),0,1);
end    
c=H\int;
    q=polyval(fliplr(c.'),x);
tela=get(0,'ScreenSize');
f=figure(2);
%set(f,'paperpositionmode','auto','position');
p1=plot(x,y);
hold on;
p2=plot(x,q);
grid on