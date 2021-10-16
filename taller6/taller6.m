
zx = 0:(pi+pi)/256: 2*pi;
zy = 0:(pi+pi)/256: 2*pi;

%Crear la matriz de complejos
[xgrid,ygrid] = meshgrid(zx,zy);
Zcomplejos = xgrid + ygrid*1i;

%Matriz con los colores vacios
colores = zeros(length(Zcomplejos));

%Rellenar la matriz
col = 0;
for yy = 1:length(ygrid) 
    for xx = 1:length(xgrid)
        colores(xx,yy) = col; 
    end
    col = col+1;
end

figure
img = uint8(colores); % Convertimos cada entrada de la matríz en un byte
imshow(img) % Se muestra la imagen.
title("Imágen #1 Original")


%Transformacion
Trans = exp(Zcomplejos);
rt = real(Trans);
it = imag(Trans);

real_reshape = reshape(rt,1,[]);
imag_reshape = reshape(it,1,[]);
color_reshape = reshape(colores,1,[]);


figure
scatter(real_reshape,imag_reshape,10,color_reshape,'filled')
title('Imagen 1 transformada')
colormap('gray')
shading interp

%Segunda imagen

M1=imread('img1.jpg');
figure
imagesc(M1)
title("Imágen #2 Original")
colormap gray

%Crear la matriz de complejos
[sm1,sn1] = size(M1);
zx=linspace(-2*pi,2*pi,sm1);
zy=linspace(-2*pi,2*pi,sn1);
[x1,y1] = meshgrid(zx,zy);
Zcomplejos = x1+y1*1i;

%Funcion de la transformacion
f1 = @(z) z.^3;
f2 = @(z) exp(z);

%Creando la matriz transformada
transformacion1 = f1(Zcomplejos);
transformacion2 = f2(Zcomplejos);

%Parte real y imaginaria de la transformacion
realt1 = real(transformacion1);
imgt1 = imag(transformacion1);
realt2 = real(transformacion2);
imgt2 = imag(transformacion2);

%Pasando las matrices a vectores
xt1 = reshape(realt1,1,[]);
yt1 = reshape(imgt1,1,[]);
xt2 = reshape(realt2,1,[]);
yt2 = reshape(imgt2,1,[]);
colores = reshape(M1,1,[]);

%Grafica Transformacion
figure
scatter(xt1,yt1,20,colores,'filled')
title("Imágen #2 Transformada")
colormap gray

figure
scatter(xt2,yt2,20,colores,'filled')
title("Imágen #2 Transformada")
colormap gray