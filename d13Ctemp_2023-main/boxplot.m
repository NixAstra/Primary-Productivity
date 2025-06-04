load('1000runs.mat') ;
% O2_A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %meanarrayO2_A = [] ;
  endarrayO2_A = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayO2_A(RN, VR) = nanmean(real(run(RN, VR).state.O2_A)) ;
        endarrayO2_A(RN, VR) = real(run(RN, VR).state.O2_A(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  %boxchart(meanarrayO2_A) ;
  boxchart(endarrayO2_A) ;
title('Amospheric O_2') 

% O2_DP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%meanarrayO2_DP = [] ;
endarrayO2_DP = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayO2_DP(RN, VR) = nanmean(real(run(RN, VR).state.O2_DP)) ;
        endarrayO2_DP(RN, VR) = real(run(RN, VR).state.O2_DP(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
end
figure ;
  %boxchart(meanarrayO2_DP) ;
  boxchart(endarrayO2_DP) ;
title('Deep Sea O_2')

% fananoxicdist %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%meanarrayfanoxicdist = [] ;
endarrayfanoxicdist = [] ;
for VR = 1: 30
     for RN = 1 :1000 
       % meanarrayfanoxicdist(RN, VR) = nanmean(real(run(RN, VR).state.fanoxicdist)) ;
        endarrayfanoxicdist(RN, VR) = real(run(RN, VR).state.fanoxicdist(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     
end
figure ;
%boxchart(meanarrayfanoxicdist) ;
boxchart(endarrayfanoxicdist) ;
title('Distal Anoxia')

% fanoxicprox %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%meanarrayfanoxicprox = [] ;
endarrayfanoxicprox = [] ;
for VR = 1: 30
     for RN = 1 :1000 
       % meanarrayfanoxicprox(RN, VR) = nanmean(real(run(RN, VR).state.fanoxicprox)) ;
        endarrayfanoxicprox(RN, VR) = real(run(RN, VR).state.fanoxicprox(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       
end
figure ;
%boxchart(meanarrayfanoxicprox) ;
boxchart(endarrayfanoxicprox) ;
title('Proximal Anoxia')

% GAST %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  meanarrayGAST = [] ;
  %endarrayGAST = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        meanarrayGAST(RN, VR) = nanmean(real(run(RN, VR).state.GAST)) ;
       % endarrayGAST(RN, VR) = real(run(RN, VR).state.GAST(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  boxchart(meanarrayGAST) ;
% boxchart(endarrayGAST) ;
title('GAST')

% Prox_Preac_Burial %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %meanarrayProx_Preac_Burial = [] ;
  endarrayProx_Preac_Burial = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayProx_Preac_Burial(RN, VR) = nanmean(real(run(RN, VR).state.Prox_Preac_Burial)) ;
        endarrayProx_Preac_Burial(RN, VR) = real(run(RN, VR).state.Prox_Preac_Burial(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  %boxchart(meanarrayProx_Preac_Burial) ;
  boxchart(endarrayProx_Preac_Burial) ;
  title('Proximal Reactive P Burial')

% Dist_Preac_Burial %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %meanarrayDist_Preac_Burial = [] ;
  endarrayDist_Preac_Burial = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayDist_Preac_Burial(RN, VR) = nanmean(real(run(RN, VR).state.Dist_Preac_Burial)) ;
        endarrayDist_Preac_Burial(RN, VR) = real(run(RN, VR).state.Dist_Preac_Burial(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  %boxchart(meanarrayDist_Preac_Burial) ;
  boxchart(endarrayDist_Preac_Burial) ;
title('Distal Reactive P Burial')

% Deep_Preac_Burial %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %meanarrayDeep_Preac_Burial = [] ;
  endarrayDeep_Preac_Burial = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayDeep_Preac_Burial(RN, VR) = nanmean(real(run(RN, VR).state.Deep_Preac_Burial)) ;
        endarrayDeep_Preac_Burial(RN, VR) = real(run(RN, VR).state.Deep_Preac_Burial(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  %boxchart(meanarrayDeep_Preac_Burial) ;
  boxchart(endarrayDeep_Preac_Burial) ;
title('Deep Sea Reactive P Burial')

% CO2atm %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %meanarrayCO2atm= [] ;
  endarrayCO2atm = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayCO2atm(RN, VR) = nanmean(real(run(RN, VR).state.CO2atm)) ;
        endarrayCO2atm(RN, VR) = real(run(RN, VR).state.CO2atm(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  %boxchart(meanarrayCO2atm) ;
  boxchart(endarrayCO2atm) ;
title('Atmospheric CO_2')

% Aiso %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %meanarrayAiso= [] ;
  endarrayAiso = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayAiso(RN, VR) = nanmean(real(run(RN, VR).state.Aiso)) ;
        endarrayAiso(RN, VR) = real(run(RN, VR).state.Aiso(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  %boxchart(meanarrayAiso) ;
  boxchart(endarrayAiso) ;
title('Aiso')

  % fbiota %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %meanarrayfbiota= [] ;
  endarrayfbiota = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayfbiota(RN, VR) = nanmean(real(run(RN, VR).state.fbiota)) ;
        endarrayfbiota(RN, VR) = real(run(RN, VR).state.fbiota(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  %boxchart(meanarrayfbiota) ;
  boxchart(endarrayfbiota) ;
  title('fbiota')

% Total_POC_Burial %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  %meanarrayTotal_POC_Burial= [] ;
  endarrayTotal_POC_Burial = [] ;
for VR = 1: 30
     for RN = 1 :1000 
        %meanarrayTotal_POC_Burial(RN, VR) = nanmean(real(run(RN, VR).state.Total_POC_Burial)) ;
        endarrayTotal_POC_Burial(RN, VR) = real(run(RN, VR).state.Total_POC_Burial(end)) ;
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
  %boxchart(meanarrayTotal_POC_Burial) ;
  boxchart(endarrayTotal_POC_Burial) ;
  title('Total POC Burial')