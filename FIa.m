function [ F ] = FIa( x )
%FI Summary of this function goes here
%   Detailed explanation goes here

F(1)= -x(1) -x(1)^2 + 3*x(1)*x(2) + 2*x(2)*x(3);
F(2)= 2*x(1)*x(2) + 3*x(2) + 3*x(3) -3;
F(3)= -3*x(1)*x(2) - 5*x(2) - 4*x(3) + x(3)^2 +3;

end

