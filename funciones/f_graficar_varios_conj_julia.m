function [] = f_graficar_varios_conj_julia(vectc,vectn)
%F_GRAFICAR_VARIOS_CONJ_JULIA Summary of this function goes here
%   Detailed explanation goes here
    
    valoresC = vectc(1):0.001:vectc(end);
    valoresN = vectn(1):1:vectn(end);

    for n=1:length(valoresN)
       for c=1:length(valoresC) 
           Z = f_conj_julia(n,c);
           f = figure('visible','on');
           imagesc(Z); 
           cmap = colormap(f);
           colormap(cmap,'hot');
           pause(0.1);
           
           
       end
    end
end

