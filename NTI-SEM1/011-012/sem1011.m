clear; clc; close all;

X = jednanula();
hold on;
zobraz(zvetsi(X, 2));
zobraz(X)

zobraz(posun(zvetsi(X, 2), [1, .5]));
zobraz(zvetsi(posun(X, [1, .5]), 2));

zobraz(posun(X, [1, .5]));

zobraz(otoc(X, 45, "degrees"));

zobraz(vektorrofi(5, 45, "degrees"));

hold off;

zobraz(vektor([-3; -2]));

zobraz(domecek);

hold on;

D = [2 0; 0 3];
E = [1 0; 0 1];
zobraz(D * domecek);
zobraz(E * domecek);

S = [1/sqrt(2) -1/sqrt(2); 1/sqrt(2) 1/sqrt(2)];
zobraz(S * domecek);

zobraz(D * S * domecek);
zobraz(S * D * domecek);

hold off;

F = [3 1; 1 3];
zobraz(F * domecek);
hold on;
zobraz(domecek);

zobraz(vektor([-1; 1]));
zobraz(vektor(F*[-1; 1]));

[V, G] = eig(F);
[V, G] = eig(D);
[V, G] = eig(E);

H = [-3 1; 1 3];
[V, G] = eig(H);

hold off;
zobraz(domecek);
hold on;
zobraz(H * domecek);
x = V(:, 1);
zobraz(vektor(x));
zobraz(vektor(H * x));
x = V(:, 2);
zobraz(vektor(x));
zobraz(vektor(H * x));

hold off;
zobraz(domecekk);
hold on;
zobraz(H * domecekk);

hold off;
Dd = [2 0; 0 0];
[V, G] = eig(Dd);
zobraz(Dd * domecek);

hold off;

zobraz(domecek);