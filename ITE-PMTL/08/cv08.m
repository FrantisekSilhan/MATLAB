clear; clc; close all;

% 1.
syms x;

f1(x) = 1 ./ (2 + cos(x));
f2(x) = x .* atan(x);
f3(x) = sqrt(1 - sin(2 .* x));
f4(x) = exp(-x .^ 2);

dx = 0.1;

int1_sym = int(f1, x, 0, 2*pi);
xr = 0:dx:2*pi;
int1_num = sum(double(f1(xr))) * dx;
int1_diff = double(int1_sym - int1_num);
fprintf("1.1. Analyticky: %f | Numericky: %f | Rozdíl: %e\n", int1_sym, int1_num, int1_diff);

int2_sym = int(f2, x, 0, sqrt(3));
xr = 0:dx:sqrt(3);
int2_num = sum(double(f2(xr))) * dx;
int2_diff = double(int2_sym - int2_num);
fprintf("1.2. Analyticky: %f | Numericky: %f | Rozdíl: %e\n", int2_sym, int2_num, int2_diff);

int3_sym = int(f3, x, 0, 2*pi);
xr = 0:dx:2*pi;
int3_num = sum(double(f3(xr))) * dx;
int3_diff = double(int3_sym - int3_num);
fprintf("1.3. Analyticky: %f | Numericky: %f | Rozdíl: %e\n", int3_sym, int3_num, int3_diff);

int4_sym = int(f4, x, -10, 5);
xr = -10:dx:5;
int4_num = sum(double(f4(xr))) * dx;
int4_diff = double(int4_sym - int4_num);
fprintf("1.4. Analyticky: %f | Numericky: %f | Rozdíl: %e\n", int4_sym, int4_num, int4_diff);

int5_sym = int(f4, x, -inf, inf);
xr = -100:dx:100;
int5_num = sum(double(f4(xr))) * dx;
int5_diff = double(int5_sym - int5_num);
fprintf("1.5. Analyticky: %f | Numericky: %f | Rozdíl: %e\n", int5_sym, int5_num, int5_diff);

% 2.
syms n;

N = 1e5;
nv = 1:N;

s1_sym = symsum((-1)^n * (1 / 2^(n - 1)), n, 1, inf);
s1_num = sum((-1).^nv .* (1 ./ 2.^(nv - 1)));
s1_diff = double(s1_sym - s1_num);
fprintf("s1: Analyticky: %f | Numericky: %f | Rozdíl: %e\n", s1_sym, s1_num, s1_diff);

s2_sym = symsum(1 / (n * (n + 1)), n, 1, inf);
s2_num = sum(1 ./ (nv .* (nv + 1)));
s2_diff = double(s2_sym - s2_num);
fprintf("s2: Analyticky: %f | Numericky: %f | Rozdíl: %e\n", s2_sym, s2_num, s2_diff);

s3_sym = symsum(((-1)^n)*(1/n), n, 1, inf);
s3_num = sum(((-1).^nv).*(1./nv));
s3_diff = double(s3_sym - s3_num);
fprintf("s3: Analyticky: %f | Numericky: %f | Rozdíl: %e\n", s3_sym, s3_num, s3_diff);

s4_sym = symsum((2*n-1)/(2^n), n, 1, inf);
s4_num = sum((2.*nv-1)./(2.^nv));
s4_diff = double(s4_sym - s4_num);
fprintf("s4: Analyticky: %f | Numericky: %f | Rozdíl: %e\n", s4_sym, s4_num, s4_diff);

% 3.
syms alpha;

alphav = -10:0.01:10;

A1 = [
    1, 7, alpha;
    alpha^2, 3, 1 - alpha;
    0, 5, 6;
];
detA1_sym = det(A1);
d1_detA1 = diff(detA1_sym, alpha);

alpha_ext1 = double(solve(d1_detA1 == 0, alpha));

det_ext1v = double(subs(detA1_sym, alpha, alpha_ext1));

detA1v = double(subs(detA1_sym, alpha, alphav));

figure("Name", "det(A1) v závislosti na alpha");
plot(alphav, detA1v, "DisplayName", "det(A1)");
hold on;
xlabel("\alpha");
ylabel("det(A1)");
title("Průběh determinantu A1(\alpha)");
legend;
plot(alpha_ext1, det_ext1v, "ro", "DisplayName", "Extrémy");
hold off;
saveas(gcf, 'grafA1.bmp');
fprintf("Extrémy determinantu A1\n");
for i = 1: length(alpha_ext1)
    fprintf("alpha = %.4f, det(A1) = %.4f\n", alpha_ext1(i), det_ext1v(i));
end

A2 = [
    alpha, 8, -3 * alpha;
    1, (1 - alpha)^2, alpha;
    3, -1, 4;
];
detA2_sym = det(A2);
d1_detA2 = diff(detA2_sym, alpha);

alpha_ext2 = unique(real(double(solve(d1_detA2 == 0, alpha))));

det_ext2v = double(subs(detA2_sym, alpha, alpha_ext2));

detA2v = double(subs(detA2_sym, alpha, alphav));

figure("Name", "det(A2) v závislosti na alpha");
plot(alphav, detA2v, "DisplayName", "det(A2)");
hold on;
xlabel("\alpha");
ylabel("det(A2)");
title("Průběh determinantu A2(\alpha)");
legend;
plot(alpha_ext2, det_ext2v, "ro", "DisplayName", "Extrémy");
hold off;
saveas(gcf, 'grafA2.bmp');
fprintf("Extrémy determinantu A2\n");
for i = 1: length(alpha_ext2)
    fprintf("alpha = %.4f, det(A2) = %.4f\n", alpha_ext2(i), det_ext2v(i));
end