clear;clc;

x = 0 : 0.1 : 3;
y = x .^ 2 - 3 * x + 2;
%plot(x, y);
z = zeros(size(x));
plot(x, [y;z;polynom(x, [1, -3, 2])]);