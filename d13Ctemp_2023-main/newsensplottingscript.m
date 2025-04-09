%%%% load
% sens = load('newsens.mat') ;

figure
%%%% plots a 10x10 grid with 10 runs each
for n = 1: 100
   subplot(10,10,n)
   plot(sens.time_myr,sens.PP_P(:,10*(n-1)+1:10*n))
   hold on
   geotimescale
   hold off
end