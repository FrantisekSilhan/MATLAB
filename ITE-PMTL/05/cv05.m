figure();
plot(cos([0:pi/3:2*pi]), sin([0:pi/3:2*pi]));
axis equal;

figure();
title("do jednoho grafu");
xlabel("x");
ylabel("y");
x = -5:0.05:5;
hold on;
plot(x, f(x), 'DisplayName', 'y = f(x)');
plot(x, f(x, 1), 'DisplayName', 'y = f(x, 1)');
plot(x, f(x, 2), 'DisplayName', 'y = f(x, 2)');
legend('show', 'Location', 'northeast', 'Box', 'on');

saveas(gcf, 'grafA.bmp');
saveas(gcf, 'grafA.jpeg');
saveas(gcf, 'grafA.pdf');

figure();
x = -5:0.05:5;
hold on;

plot1 = subplot(3, 1, 1);
plot(x, f(x), 'DisplayName', 'y = f(x)');
title("subplot 1");
xlabel("x");
ylabel("f(x)");

plot2 = subplot(3, 1, 2);
plot(x, f(x, 1), 'DisplayName', 'y = f(x, 1)');
title("subplot 2");
xlabel("x");
ylabel("f(x, 1)");

plot3 = subplot(3, 1, 3);
plot(x, f(x, 2), 'DisplayName', 'y = f(x, 2)');
title("subplot 3");
xlabel("x");
ylabel("f(x, 2)");

linkaxes([plot1, plot2, plot3], "x");

[x, y] = meshgrid(-5:0.1:5, -6:0.2:6);
z = f(x, y);
figure();
surf(x, y, z);
title("3D plocha");
xlabel("x");
ylabel("y");
zlabel("f(x,y)");
colorbar;