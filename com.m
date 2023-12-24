function [C] = com(A)
%la fonction de la comatrice d'une matrice 
[l c] = size(A);
k = 1;
C = ones(l,c);
for i=1:1:l
    for j=1:1:c
        B = A;
        B(i, :) = [];
        B(:, j) = [];
        if(rem(k,2) == 0)
            C(i,j) = -det(B);
        elseif(rem(k,2) == 1)
            C(i,j) = det(B);
        end
        k = k + 1;
    end

end