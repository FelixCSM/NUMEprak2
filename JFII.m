function [ J ] = JFII( x )
%JFII implements the Jacbian F' of the Function F as in task II)

J(1,1) = cos(x(1)-2)*cos(x(2));
J(1,2) = -sin(x(1)-2)*sin(x(2));
J(2,1) = 2*x(1)-4;
J(2,2) = 2*x(2);


end

