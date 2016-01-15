%Konstantin Wehrhwein
%Felix Völker
%Für die Praktische Aufgabe IV im Modul NUME WS1015/16
%implementiert alle vorgegebenen Parameter zum Testen des normalen und
%gedämpften Newton Verfahrens


% I)

% a)
  
  x0 = [ 0.1 , 0.1 , 0.9 ];
  x = [ 0 , 0 , 1 ];
  n = 20;
  tol = 20^(-16);
  newt( x0 , @FIa , @JFIa , n , false , 0 , 0 , tol , x)
  
  pause
  
% b)
  
  newt( x0 , @FIb , @JFIb , n , false , 0 , 0 , tol , x)
  
  pause
  
% II )
  
  x = [ 0 , 0 ];
  tol = 10^(-10);
  n = 50;
  x0 = [ 3 ,1 ];
  
  newt( x0 , @FII , @JFII , n , false , 0 , 0 , tol , x)
  
  pause
  
  x0 = [ 5 ,3 ];
  
  newt( x0 , @FII , @JFII , n , false , 0 , 0 , tol , x)
  
  pause
  
  x0 = [ 4.7 , 2.7 ];
  gam = [ 0.9 , 0.5 , 0.9 , 0.5];
  rho = [ 0.5 , 0.5 , 0.1 , 0.1];
 
  for i = 1:4
      newt( x0 , @FII , @JFII , n , true , gam(i) , rho(i) , tol , x)  
      pause
  end    
      