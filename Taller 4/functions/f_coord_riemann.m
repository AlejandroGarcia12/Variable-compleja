function [coord] = f_coord_riemann(z)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    realz = real(z);
    imagz = imag(z);
    modz = abs(z);
    
    x1 = (2*realz)./(modz.^2+1);
    x2 = (2*imagz)./(modz.^2+1);
    x3 = (modz.^2-1)./(modz.^2+1);
    
    coord = [x1; x2; x3];
end

