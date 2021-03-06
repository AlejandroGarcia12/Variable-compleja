function [] = f_plot_coord_riemann(z,color)
%F_PLOT_COORD_RIEMANN Summary of this function goes here
%   Detailed explanation goes here
%   ===========INPUT=============
%   z: vector de numeros complejos. P.ej z = [2+5i 4+i]
%   color: color de la grafica
%   ===========OUTPUT============
%   plot de cada punto del vector en la esfera de Riemann
%   =========MODO DE USO=========
%   f_plot_coord_riemann([2+5i 4+i],'b');
%   ===========AUTORES===========
%   Sebastian Suarez
%   Alejandro Garcia
%   Estefania Laverde

    %Grafica la esfera de radio 1 centrada en el origen 
    [X,Y,Z] = sphere;
    hSurface=surf(X,Y,Z);
    axis equal;
    set(hSurface,'FaceColor','none','FaceAlpha',0.5,'FaceLighting',...
        'gouraud','EdgeColor','k','LineStyle','--','LineWidth',0.01)
    
    hold on
    
    %Grafica el vector en la esfera
    coord = f_coord_riemann(z);
    plot3(coord(1,:),coord(2,:),coord(3,:),'.','Color',color,'LineWidth',1);
    hold off
end

