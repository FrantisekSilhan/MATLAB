clear;clc;

% 1)
a = 1:50;

% 2)
b = 1:0.2:10;

% 3)
A = ones(3);
B = zeros(size(A, 1));
D = ones(size(A, 1));

% 4)

M = [A,B,D];

% 5)

C = [1 -1 1; 1 -1 0; -1 0 1];

% 6)

B1 = inv(C);

% 7)

mult1 = C .* B1;
mult2 = C * B1;

% 8)

mult3 = M' * C;

% 9)

C(:, 2) = randi(10, [size(C, 2), 1]);

% 10)

C(1, :) = [30;20;10];

% 11)

C1 = C(1, end-1:end);

% 12)

%for i = 1:size(C, 1)
%    for j = 1:size(C, 2)
%        if (C(i, j) >= 0)
%            C(i, j) = 1;
%        else
%            C(i, j) = randi(10);
%        end;
%    end;
%end;

C(C>=0)=1;
C(C<0) = randi(10, size(C(C<0)));