%%%% load
sens1 = load('sens_100.mat') ;

figure
%%%% plots a 10x10 grid with 10 runs each
for n = 1: 100 
   subplot(10,10,n)
   plot(sens.time_myr,sens.fanoxicprox(:,10*(n-1)+1:10*n))
   
% figure
   %for n2 = 1: 100
  % subplot(10,10,n2)
  % plot(sens.time_myr,sens.fanoxicprox(:,10*(n2-1)+1:10*n2))
  % end
  % for n3 = 1: 100
 %  subplot(10,10,n3)
  % plot(sens.time_myr,sens.O2_A(:,10*(n3-1)+1:10*n3))
  % end
  % for n4 = 1: 100
  % subplot(10,10,n4)
 %  plot(sens.time_myr,sens.O2_DP(:,10*(n4-1)+1:10*n4))
  % end
end