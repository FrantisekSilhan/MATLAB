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