clc; clear; close all;


x = -5:0.01:5;
x1 = -5:0.01:0.99;
x2 = 1.01:0.01:5;

figure("Name", "f(x)");
plot(x1, f(x1), 'b');
hold on;
plot(x2, f(x2), 'b');
grid on;

xlabel('x')
ylabel('f(x)')
title('$f(x) = \arctan\!\left(\frac{x+1}{x-1}\right)$', 'Interpreter','latex')
axis tight;

saveas(gcf, 'f.eps', 'epsc');

%%%

figure("Name", "g(x)");
hold on;

x_left  = -5:0.01:-1.01;
x_right = 1.01:0.01:5;

plot(x_left,  g(x_left),  'r');
plot(x_right, g(x_right), 'r');
grid on;
xlabel('x');
ylabel('g(x)');
title('$g(x) = \frac{x}{\sqrt{x^2 - 1}}$', 'Interpreter', 'latex');
legend('g(x)');
axis tight;
hold off;

%%%

saveas(gcf, 'g.eps', 'epsc');

figure("Name", "h(x)");
x_pos = 0:0.01:5; 
y = h(x_pos);

plot(x_pos, y, 'm', 'LineWidth', 1.5);
grid on;
xlabel('x');
ylabel('h(x)');
title('h(x) = x^x');
legend('h(x)');
axis tight;

saveas(gcf, 'h.eps', 'epsc');


syms x

ff = atan((x + 1)./(x - 1));
gg = x ./ sqrt(x.^2 - 1);
hh = x.^x;

limit(ff, x, 1, 'right')
limit(gg, x, 1, 'right')
limit(hh, x, 1, 'right')

%{
syms x

ff = atan((x + 1)./(x - 1));
gg = x ./ sqrt(x.^2 - 1);
hh = x.^x;

Lf_inf = limit(ff, x, inf);
Lgg_inf = limit(gg, x, inf);
Lhh_inf = limit(hh, x, inf);

Lf_minf = limit(ff, x, -inf);
Lgg_minff = limit(gg, x, -inf);
Lhh_minf = limit(hh, x, -inf);

Lf_1p = limit(ff, x, 1, 'right');
Lgg_1p = limit(gg, x, 1, 'right');
Lf_1m = limit(ff, x, 1, 'left');
Lgg_1m = limit(gg, x, 1, 'left');
Lhh_1p = limit(hh, x, 1, 'right');
Lhh_1m = limit(hh, x, 1, 'left');
%}