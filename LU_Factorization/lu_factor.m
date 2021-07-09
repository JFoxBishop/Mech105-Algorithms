function [L, U, P] = luFactor(A)

%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
% outputs:
long=length(A)
low=zeros(A);
up=zeros(A);

for x = 1:long
    sum=0;
for y = x:long
    sum=0;

for z = 1:x
sum =sum +(low(x,z) * up(z,y));
end
up(x,y) = A(x,y) - sum;
end

%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix


end