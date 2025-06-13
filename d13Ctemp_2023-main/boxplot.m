%load('1000runs.mat') ;
% O2_A %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  transitionarrayO2_A = [] ;
  transitionarrayO2_DP = [] ;
  transitionarrayfanoxicprox = [] ;
  transitionarrayfanoxicdist= [] ;
  transitionarrayGAST= [] ;
  transitionarrayTotal_POC_Burial= [] ;
  transitionarrayCO2atm= [] ;
  transitionarrayAiso= [] ;
  transitionarrayPP_P= [] ;
  transitionarrayPP_D= [] ;
  transitionarrayPP_S= [] ;
  transitionarrayTotal_PP= [] ;
  transitionarrayRepsiration_O2= [] ;
for VR = 1: 30
     for RN = 1 :1000 
         %timearray = [] ;
         disp([RN, VR]) ;
         beyond800 = find(run(RN, VR).state.time > -8e8) ;
        if isempty(beyond800) == 1
            transitionarrayO2_A(RN, VR) = NaN ;
            transitionarrayO2_DP(RN, VR) = NaN ;
            transitionarrayfanoxicprox(RN, VR) = NaN ;
            transitionarrayfanoxicdist(RN, VR) = NaN ;
            transitionarrayGAST(RN, VR) = NaN ;
            transitionarrayTotal_POC_Burial(RN, VR) = NaN ;
            transitionarrayCO2atm(RN, VR) = NaN ;
            transitionarrayAiso(RN, VR) = NaN ;
            transitionarrayPP_P(RN, VR) = NaN ;
            transitionarrayPP_D(RN, VR) = NaN ;
            transitionarrayPP_S(RN, VR) = NaN ;
            transitionarrayTotal_PP(RN, VR) = NaN ;
            transitionarrayRespiration_O2(RN, VR) = NaN ;
        else
            firstpointbeyond = beyond800(1) ;
            transitionarrayO2_A(RN, VR) = real(run(RN, VR).state.O2_A(firstpointbeyond)) ;
            transitionarrayO2_DP(RN, VR) = real(run(RN, VR).state.O2_DP(firstpointbeyond)) ;
            transitionarrayfanoxicprox(RN, VR) = real(run(RN, VR).state.fanoxicprox(firstpointbeyond)) ;
            transitionarrayfanoxicdist(RN, VR) = real(run(RN, VR).state.fanoxicdist(firstpointbeyond)) ;
            transitionarrayGAST(RN, VR) = real(run(RN, VR).state.GAST(firstpointbeyond)) ;
            transitionarrayTotal_POC_Burial(RN, VR) = real(run(RN, VR).state.Total_POC_Burial(firstpointbeyond)) ;
            transitionarrayCO2atm(RN, VR) = real(run(RN, VR).state.CO2atm(firstpointbeyond)) ;
            transitionarrayAiso(RN, VR) = real(run(RN, VR).state.Aiso(firstpointbeyond)) ;
            transitionarrayPP_P(RN, VR) = real(run(RN, VR).state.PP_P(firstpointbeyond)) ;
            transitionarrayPP_D(RN, VR) = real(run(RN, VR).state.PP_D(firstpointbeyond)) ;
            transitionarrayPP_S(RN, VR) = real(run(RN, VR).state.PP_S(firstpointbeyond)) ;
            transitionarrayTotal_PP(RN, VR) = real(run(RN, VR).state.Total_PP(firstpointbeyond)) ;
            transitionarrayRespiration_O2(RN, VR) = real(run(RN, VR).state.Respiration_O2(firstpointbeyond)) ;
        end
     end                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         
end
figure ;
subplot(2, 2, 1)
  boxchart(transitionarrayO2_A) ;
subplot(2, 2, 2)
  boxchart(transitionarrayO2_DP) ;
subplot(2, 2, 3)
  boxchart(transitionarrayfanoxicprox) ;
subplot(2, 2, 4)
  boxchart(transitionarrayfanoxicdist) ;

figure ;
subplot(2, 2, 1)
  boxchart(transitionarrayGAST) ;
subplot(2, 2, 2)
  boxchart(transitionarrayTotal_POC_Burial) ;
subplot(2, 2, 3)
  boxchart(transitionarrayCO2atm) ;
subplot(2, 2, 4)
  boxchart(transitionarrayAiso) ;

  figure ;
subplot(2, 2, 1)
  boxchart(transitionarrayPP_P) ;
subplot(2, 2, 2)
  boxchart(transitionarrayPP_D) ;
subplot(2, 2, 3)
  boxchart(transitionarrayPP_S) ;
subplot(2, 2, 4)
  boxchart(transitionarrayTotal_PP) ;

figure ;
subplot(2, 2, 1)
  boxchart(transitionarrayRespiration_O2) ;
% subplot(2, 2, 2)
%   boxchart(transitionarray) ;
% subplot(2, 2, 3)
%   boxchart(transitionarrayPP_S) ;
% subplot(2, 2, 4)
%   boxchart(transitionarrayTotal_PP) ;

