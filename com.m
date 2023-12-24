function [C] = com(A)
%la fonction de la comatrice d'une matrice 
[l c] = size(A);
C = ones(l,c);
for i=1:1:l
    for j=1:1:c
        B = A;
        B(i, :) = [];
        B(:, j) = [];
        C(i,j) = (-1)^(i+j)*det(B);
    end
end