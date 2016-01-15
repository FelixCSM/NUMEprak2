function [ X ] = gaus( A , b )
%GAUS normal Gauss algorithm for solving systems of linear equation
for n = 1:  size(A) %vorwaärts
    b(n) = (1/A(n,n)) * b(n);
    A(n,1:size(A))=(1/A(n,n)) * A(n,1:size(A));
    if n < size(A)
        for i =n+1: size(A)
           b(i) = b(i) - A(i,n)*b(n);
           A(i,1:size(A))= A(i,1:size(A)) - A(n,1:size(A))*A(i,n);
        end
    end
end 
 
for n = 2:size(A) %Rückwärts
    for i = size(A)-1:-1:1
        b(i) = b(i) - A(i,n)*b(n);
        A(i,1:size(A)) = A(i,1:size(A)) - A(i,n)*A(n,1:size(A));
    end
end

X = b;

end

