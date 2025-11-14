clear;close all;clc;

f1 = @(x) sin(x)/x + exp(-(x-4)^2);

fplot(f1, [-10, 10]);

f1xmin1 = fminbnd(f1, 2, 4)
f1xmin2 = fminbnd(f1, 4, 6)

f2 = @(x) 1/4*x^4-41/6*x^3+209/4*x^2-135*x;

fplot(f2, [0, 20]);

f2xming = fminbnd(f2, 0, 20)

f3 = @(x1, x2) 100.*(x2 - x1.^2).^2 + (1 - x1).^2;
f3_wrp = @(x) f3(x(1), x(2));

[x1, x2] = meshgrid(-2:0.05:2, -2:0.05:2);

z = f3(x1, x2);

figure
surf(x1, x2, z)
xlabel("x1")
ylabel("x2")
zlabel("f3(x1,x2)")
shading interp
colorbar

f3xming = fminsearch(f3_wrp, [0, 0])

f4 = [-5, -2, -6];

A = [
    1, -1, 1;
    3, 2, 4;
    3, 2, 0;
];
b = [
    20; 42; 30;
];
lb = [0; 0; 0;];

f4xming = linprog(f4, A, b, [], [], lb, [])

H = [
    4, 1, 0;
    1, 2, -1.5;
    0, -1.5, 3;
];
f = [
    -1; 0; 0;
];
A = [
    1, -1, 1;
    1, 2, -6;
];
b = [
    -1; 5;
];
lb = [
    0; 0; 0;
];

f5xming = quadprog(H, f, A, b, [], [], lb, [], [])

% Jak získat matici H ze zadání
syms x1 x2 x3;
f5 = 4*x1^2+2*x2^2+3*x3^2+2*x1*x2-3*x2*x3-x1;
hessian(f5) % vrací matici H

% Použití H a f pro získání původní úlohy
x = [x1; x2; x3;];
F5s = simplify(1/2*(x.')*H*x+f.'*x);
Hs = hessian(F5s);