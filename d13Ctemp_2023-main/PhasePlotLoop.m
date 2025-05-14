global pars

%PP_Pchange = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1]
%PP_Dchange = [0 0 0 0 0 0 0 0 0 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1 1 1 1 1 1 1 1 1 1]
%PP_Schange = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]

%PP_Pchange = [1 1 1 1 1 1 1 1]
%PP_Dchange = [1 1 1 1 1 1 1 1]
%PP_Schange = [0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]

PP_Pchange = [1]
PP_Dchange = [1]
PP_Schange = [1]

% pars.PP_Pchange = 0.3 ; 
%pars.PP_Dchange = 0 ; 
%pars.PP_Schange = 0 ; 

% Alcott_et_al_2024_NatGeo_front(1)
for i = 1:1 
    clear global
    global pars 
    pars.PP_Pchange = PP_Pchange(i);
    pars.PP_Dchange = PP_Dchange(i);
    pars.PP_Schange = PP_Schange(i);
   Alcott_et_al_2024_NatGeo_front(1) ;
    % O2_A(i) = ans.state.O2_A(end);
    O2_DP(i) = ans.state.O2_DP(end);
    %fanoxicdist(i) = ans.state.fanoxicdist(end);
    %fanoxicprox(i) = ans.state.fanoxicprox(end);
end


