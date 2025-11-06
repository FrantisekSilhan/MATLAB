clear;clc;

x=-2:0.1:8;
y=4+sqrt(25-(x-3).^2);
plot(x,y);
hold on;
y=4-sqrt(25-(x-3).^2);
plot(x,y);
axis equal;

alfa=0:0.1:2*pi+0.1;
x=3+5*cos(alfa);
y=4+5*sin(alfa);
plot(x,y);

fi=0:0.1:2*pi+0.1;
%ro=5*fi./fi;
ro=ones(size(fi)).*5;
polar(fi, ro);
hold off;
polar(fi, ro);

ro=3./sqrt(1-0.8^2*cos(fi).^2);
polar(fi, ro);

fi=pi/2+0.5:0.01:2.5*pi-0.5;
ro=2./(1-sin(fi));
polar(fi, ro);