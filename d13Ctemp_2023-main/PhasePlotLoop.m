global pars2

PP_Pchange = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1] ;
PP_Dchange = [0 0 0 0 0 0 0 0 0 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1 1 1 1 1 1 1 1 1 1] ;
PP_Schange = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1] ;

%PP_Pchange = [1 1 1 1 1 1 1 1]
%PP_Dchange = [1 1 1 1 1 1 1 1]
%PP_Schange = [0.3 0.4 0.5 0.6 0.7 0.8 0.9 1]

% PP_Pchange = [1]
% PP_Dchange = [1]
% PP_Schange = [1]

% pars.PP_Pchange = 0.3 ; 
%pars.PP_Dchange = 0 ; 
%pars.PP_Schange = 0 ; 

% Alcott_et_al_2024_NatGeo_front(1)
for i = 1:1 

    pars2.PP_Pchange = PP_Pchange(i);
    pars2.PP_Dchange = PP_Dchange(i);
    pars2.PP_Schange = PP_Schange(i);
    Sensitivity_run ;

end


