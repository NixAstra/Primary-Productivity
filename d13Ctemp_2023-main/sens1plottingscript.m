%%%% load
sens1 = load('sens_100.mat') ;

figure
%%%% plots a 10x10 grid with 10 runs each
for n = 1: 100 
   subplot(10,10,n)
   plot(sens.time_myr,sens.fanoxicprox(:,10*(n-1)+1:10*n))
   
end