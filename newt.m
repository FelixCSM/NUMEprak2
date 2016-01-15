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
    a = 1;
    k=0;
    X = x;
    while (norm(X - x) > tol) && (norm(f(X)>tol)) && (k < n)
        x = X;
        deltx = gaus(J(x) , -f(x));
        while norm(f(x + a*deltx))^2 > (1-gamma * a)*norm(f(x))^2
            a = a * rho;
        end
        X = x + a*deltx;
        k = k+1;
        if (a/rho) < 1
            a = a/rho;
        else
            a = 1;
        end
    end
    end
    F = f(X);
    
end

