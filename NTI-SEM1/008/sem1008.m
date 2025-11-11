clear; close all; clc;

format compact;
format long;

[x, i] = pulint(@log, 0.1, 10, 1e-5)

[x, i] = pulint(@sind, -190, 220, 1e-5)

[x, i] = pulint(@sind, -190, 185, 1e-5)

[x, i] = pulint(@sind, -80, 80, 1e-5)

[x, i] = pulint(@sind, -19000, 19000, 1e-5)