function [ F ] = FII( x )
%FII Summary of this function goes here
%   Detailed explanation goes here

F(1)=sin(x(1)-2)*cos(x(2));
F(2)=x(1)^2-4*x(1)+x(2)^2+1;

end

