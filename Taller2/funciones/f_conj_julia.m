function [Z] = f_conj_julia(expn,c)
%F_CONJ_JULIA Summary of this function goes here
%   Detailed explanation goes here
    %=============INPUT==============
    % expn: exponente de la funcion f(z)=z^expn +c
    % c: numero complejo que recibe la funcion
    %=============OUTPUT=============
    % plot Julia set
    %=============AUTORES=============
    % Sebastian Suarez, Alejandro Garcia y Estefania Laverde
   
    n = 80; %Numero de iteraciones
    xx = linspace(-1.5,1.5,2500);
    yy = linspace(-1.3,1.3,2500);
    [xgrid,ygrid] = meshgrid(xx,yy);
    complejos = xgrid + ygrid*1i; %Matriz de complejos para evaluar como un c
    Z = zeros(size(complejos)); %Matriz para guardar las iteraciones de cada c

    for x=1:length(xx)
       for y=1:length(yy)
          iter = 0;
          ztemp = complejos(x,y);
          
          while abs(ztemp)< 2 && iter <n
              ztemp = (ztemp.^expn)+c;
              iter = iter+1;
          end
          Z(x,y) = iter;
       end
    end
    
    f = figure('visible','on');
    imagesc(Z); 
    colormap(f,'hot');
end

