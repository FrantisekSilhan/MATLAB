clear; clc; close all;
format long;
format compact;

Newton(0.1, @log, 1e-6, 100, 1e-6)
Newton(2, @(x) (x.^2 - 2), 1e-6, 100, 1e-6)

x = -4:0.01:3;
y = sin(x);
z = zderivuj(x, y);
plot(x, z);
hold on;
plot(x, cos(x));