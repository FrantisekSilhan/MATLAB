clear;clc;

x = rand(1495, 1378, 2);
y = mean(log(abs(x) + 1), 'all');
y;

4:2:10;
ones(4:2:10);
zeros([2 5 3 7]);

a = 100:-2:200;
a;
a = 200:-1:100; a = a(end:-1:1);
a;
a = [200:-1:100]; a = a(mod(a,2)==1);
a;
a = 0:200; a(1:100) = [];
a;
a = 100:1:200; a(3) = 127;
a;

A = rand(15);
A(end-3:end,1:4) = 0;

A;
A = rand(15);
A(end-3:end,:)=0;
A;
A = rand(15);
A(end-3:end,1:4)=0;
A;
A = rand(15);
A(1:4,:)=0;
A;
A = rand(15);
A(1:4,12:15)=0;
A;
A = rand(15);
A(end,end-3)=0;
A;
A = rand(15);
A(12:15,1:4)=0;
A;

A;

a = 150:-1:0; a=a(1:2:131);
a;
a = [151:-1:20]; a = a(mod(a,2)==1);
a;
a = 20:2:151; 
a;
a = (75:-1:10)*2;
a;
a = 20:-2:151; 
a;

x = rand(2745, 2335);
y = mean(tanh(x.^2), 'all');
y;

A=randn(3*3*3);
A;
A=ones(ceil(1+5*rand(1,3)));
A;
A=ones([3 3 3 3]);
A;
A=zeros(3);
A;
A=randn(3)^3;
A;
A=zeros(9:11);
A;

A=zeros(9:11);
A;
A=randn(3)^3;
A;
A=randn(3*3*3);
A;
A=ones([3 3 3 3]);
A;
A=ones(ceil(1+5*rand(1,3)));
A;
A=zeros(3);
A;

A = rand(3, 5);
%sum(A)';
%sum(A,2)
%mean(A,2);
%mean(A');
%sum(A(:));
%A*ones(5,1)


sum(A, 2);
sum(A(:,1:2:end)')';
sum(A(:,1:2:end),2);
sum(A(:,2:2:end),2);
sum(A(1:2:end,:));
sum(A(1:2:end,:),2);
sum(A(2:2:end,:),2);
