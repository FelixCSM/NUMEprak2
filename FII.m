function [ F ] = FII( x1 , x2 )
%FII Summary of this function goes here
%   Detailed explanation goes here

F(1)=sin(x1-2)*cos(x2);
F(2)=x1^2-4*x1+x2^2+1;

end

