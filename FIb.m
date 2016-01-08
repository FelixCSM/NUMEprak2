function [ F ] = FIb( x1, x2, x3 )
%FIB Summary of this function goes here
%   Detailed explanation goes here

F(1)= -x1 -x1^2 + 3*x1*x2 + 2*x2*x3;
F(2)= 2*x1*x2 + 3*x2 + 3*x3 -3;
F(3)= -3*x1*x2 - 5*x2 - 4*x3 + x3^2 +3;

end

