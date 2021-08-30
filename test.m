clear all
clc
%%
c=1i;
t=0.01;
papac = [c];
for w=0:t:1
   c=c+w*1i;
   if imag(c)>2
       break
   else
       papac = horzcat(papac,c);
   end
end

for karlos=length(papac)
    f_plot_mandelbrot(papac(karlos),50);
    hold on
    grid on
end
