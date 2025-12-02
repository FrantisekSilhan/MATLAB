clear; clc; close all;

X = jednanula();
hold on;
zobraz(zvetsi(X, 2));
zobraz(X)

zobraz(posun(zvetsi(X, 2), [1, .5]));
zobraz(zvetsi(posun(X, [1, .5]), 2));

zobraz(posun(X, [1, .5]));

zobraz(otoc(X, 45));