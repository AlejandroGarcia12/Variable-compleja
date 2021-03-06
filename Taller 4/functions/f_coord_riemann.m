function [coord] = f_coord_riemann(z)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
%   ===========INPUT=============
%   z: vector de numeros complejos. P.ej z = [2+5i 4+i]
%   ===========OUTPUT============
%   coord: vector columna con las coordenadas en x, y y z del punto en la
%          esfera de Riemann. Por ejemplo para el z anterior, coord = 
%           0.1333    0.4444
%           0.3333    0.1111
%           0.9333    0.8889
%   =========MODO DE USO=========
%   coord = f_coord_riemann([2+5i 4+i]);
%   ===========AUTORES===========
%   Sebastian Suarez
%   Alejandro Garcia
%   Estefania Laverde
    
    %Elementos real, imaginario y modulo de z
    realz = real(z);
    imagz = imag(z);
    modz = abs(z);
    
    %Respectiva coordenada en la esfera de Riemann
    x1 = (2*realz)./(modz.^2+1);
    x2 = (2*imagz)./(modz.^2+1);
    x3 = (modz.^2-1)./(modz.^2+1);
    
    %Retorno de las coordenadas
    coord = [x1; x2; x3];
end

