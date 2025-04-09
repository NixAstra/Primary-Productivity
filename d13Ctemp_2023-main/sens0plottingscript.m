%%%% load
sens0 = load('sens_000.mat') ;

figure
%%%% plots a 10x10 grid with 10 runs each
for n = 1: 100 
   subplot(10,10,n)
   plot(sens.time_myr,sens.O2_DP(:,10*(n-1)+1:10*n))
   
end