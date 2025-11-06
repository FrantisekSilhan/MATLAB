clear;clc;

B = round(randn(5,10));
disp('vstupní pole')
B
B_sorted = VecBubbleSort(B);
disp('seřazené pole')
B_sorted