function [] = f_plot_coord_riemann(z,color)
%F_PLOT_COORD_RIEMANN Summary of this function goes here
%   Detailed explanation goes here
    coord = f_coord_riemann(z);
    %f = figure;
    [X,Y,Z] = sphere;
    hSurface=surf(X,Y,Z);
    axis equal;
    set(hSurface,'FaceColor','none','FaceAlpha',0.5,'FaceLighting',...
        'gouraud','EdgeColor','k','LineStyle','--','LineWidth',0.01)
    
    hold on
    plot3(coord(1,:),coord(2,:),coord(3,:),'.','Color',color,'LineWidth',1);
    hold off
end

