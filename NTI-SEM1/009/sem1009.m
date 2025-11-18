clear; clc; close all;
format long;
format compact;

Newton(0.1, @log, 1e-6, 100, 1e-6)
Newton(2, @(x) (x.^2 - 2), 1e-6, 100, 1e-6)