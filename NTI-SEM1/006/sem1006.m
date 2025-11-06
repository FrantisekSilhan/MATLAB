A = [1,2,3; 4,5,6; 7,8,9];

%B = [1,4,7; 2,5,8; 3,6,9];
B = A';

A+B

A*B

B*A

M = [2,1,0,0;1,2,1,0;0,1,2,1;0,0,1,2];
b = [3;4;4;3];

inv(M)*M % jednotkova matice

M*inv(M) % jednotkova matice

inv(M)*b % reseni matice

M\b % reseni matice

M*[1;1;1;1] % vektor b

[2,1;1,2]\[3;3] % jedno reseni (regularni)
[2,1;2,1]\[3;3] % nekonecne reseni (signularni)
[2,1;2,1]\[2;3] % zadne reseni (singularni)

% pokud je determinant nenulovy, tak je regularni
% pokud je nulovy, tak je singularni

det(M) % 5, takze je regularni