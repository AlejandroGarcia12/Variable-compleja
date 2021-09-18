function [cmap] = f_conj_mandelbrot(expn,c)
    %F_PLOT_MANDELBROT Summary of this function goes here
    %   Detailed explanation goes here
    %   plot mandelbrot set depending on how many iterations it takes to
    %   converge
    %=============INPUT==============
    % n: numero maximo de iteraciones para converger
    %=============OUTPUT=============
    % plot Mandelbrot set
    %=============AUTORES=============
    % Sebastian Suarez, Alejandro Garcia y Estefania Laverde
    
    xx = linspace(-2,1,1000);
    yy = linspace(-1,1,1000);
    [xgrid,ygrid] = meshgrid(xx,yy);
    complejos = xgrid + ygrid*1i; %Matriz de complejos para evaluar como un c
    Z = zeros(size(complejos)); %Matriz para guardar las iteraciones de cada c

    for x=1:length(xx)
        for y=1:length(yy)
            
            c = complejos(x,y);
            iter = 0;
            ztemp = 0;
            
            while abs(ztemp)< 2 && iter <n
                ztemp = (ztemp.^2)+c;
                iter = iter+1;
            end
            Z(x,y) = iter;
        end
    end
    
%     f = figure('visible','off'); 
%     imagesc(Z), colormap cool;
%     show(figureobject); 
%     saveas(f1,'conj_mandelbrot','jpg');
    f = figure('visible','off');
    imagesc(Z); 
    cmap = colormap(f,'cool');
    
    %saveas(colormap,'conj_mandelbrot','jpg');
end

