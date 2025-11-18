g = @(x) x.^2 - 2;

x = Newton(1, g, 1e-6, 100, 1e-6);

x