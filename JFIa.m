function [ J ] = JFIa( x )
%JFIA implements the Jacbian F' of the Function F as in task I) a)

J(1,1) = -2*x(1) + 3*x(2);
J(1,2) = 3*x(1) + 2*x(3);
J(1,3) = 2*x(2);
J(2,1) = 2*x(2);
J(2,2) = 2*x(1) + 3;
J(2,3) = 3;
J(3,1) = -3*x(2);
J(3,2) = -3*x(1)-5;
J(3,3) = -4 + 2*x(3);

end

