clear; clc; close all;
format compact;
format long;

x = 0:0.01:1;
y = sin(x);

Integral(x, y)
integral(@sin, 0, 1)

%%%

x = -pi/2:0.0001:pi/2;
y = sin(x);

Integral(x, y)

%%%

x = 0:1;
y = x;

Integral(x, y)

%%%

x = -1:0.0001:1;
y = sqrt(1 - x.^2);

Integral(x, y)*2

%%%

alpha = 0:0.002:pi;
x = cos(alpha);
y = sin(alpha);

Integral(x, y)*-2

%%%

x = 0:0.01:2*pi;
y = cos(x);
z = zintegruj(x, y);
plot(x, z);
hold on;
plot(x, sin(x));
hold off;

%%%

y = sin(x);
z = zintegruj(x, y);
plot(x, z);
hold on;
plot(x, -cos(x)+1);
hold off;

%%%

y = sin(x);
z = zintegruj(x, y, -1);
plot(x, z);
hold on;
plot(x, -cos(x));
hold off;
Y = zderivuj(x, z);
plot(x, Y);
hold on;
plot(x, y);
hold off;

%%%

x = 1:0.01:10;
y = log(x);
z = zderivuj(x, y);
plot(x, z);
hold on;
plot(x, 1./x);
hold off;
Y = 1./x;
Z = zintegruj(x, Y);
plot(x, Z);
hold on;
plot(x, y);