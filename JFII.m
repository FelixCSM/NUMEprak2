function [ J ] = JFII( x1 , x2 )
%JFII Summary of this function goes here
%   Detailed explanation goes here

J(1,1) = cos(x1-2)*cos(x2);
J(1,2) = -sin(x1-2)*sin(x2);
J(2,1) = 2*x1-4;
J(2,2) = 2*x2;


end

