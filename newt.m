function [ F , X ] = newt( x, f, J, n, ged, gamma, rho, tol, check )
%NEWT Summary of this function goes here
%   Detailed explanation goes here

if not(ged)
    
    k=0;
    xk = x;
    while norm( f(xk)) > tol
        xk= gaus( J(xk) , ( -f(xk)+ transpose(mtimes(J(xk),transpose(xk)))));
        k=k+1;
    end
    X = xk;
    F = f(X);
    
else
    a = 0;
    
    
end
end

