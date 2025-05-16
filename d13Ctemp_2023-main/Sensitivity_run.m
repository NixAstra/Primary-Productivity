%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% LJA 2024
%%%% lewis.alcott@bristol.ac.uk
%%%% model sensitivity analysis

%%%%%% number of runs
sensruns = 2;

PP_Pchange = [0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1] ;
PP_Dchange = [0 0 0 0 0 0 0 0 0 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1 1 1 1 1 1 1 1 1 1 1] ;
PP_Schange = [0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0.1 0.2 0.3 0.4 0.5 0.6 0.7 0.8 0.9 1] ;

%%%%%%% multiple runs
for M = 1:30
    
    PP_change_vector(1) = PP_Pchange(M) ;
    PP_change_vector(2) = PP_Dchange(M) ;
    PP_change_vector(3) = PP_Schange(M) ;

    parfor N = 1:sensruns

        %%%%%%% run model
        fprintf('Run # %d', N )
        fprintf(' of %d \n', sensruns )
        run(N,M) = Alcott_et_al_2024_NatGeo_front(N,PP_change_vector) ;

    end

end
% 
% %%%%%% define standard time grid for outputs
% tgrid = ( run(1,1).state.time(1) : 1e6 : run(1,1).state.time(end) ) ;
% 
% %%%%%% sens analysis states mapped to tgrid
% for N = 1:sensruns
%     field_names = fieldnames(run(N,M).state) ;
%     for numfields = 1:length(field_names)
%         eval([' sens.' char( field_names(numfields) ) '(:,N) = interp1( run(N).state.time, run(N).state.' char( field_names(numfields) ) ', tgrid) ;'])
%     end
% end
% 
% %%%%%% plotting
% CIplots





for m = 1:30
   
    for n = 1:sensruns
        if isreal(run(n,m).state.O2_A(end)) == 1
            phase_O2(n,m) = run(n,m).state.O2_A(end) ;      
        else
            phase_O2(n,m) = NaN; 
        end
    end
    
    meanO2(m) = nanmean(phase_O2(:,m));
    
end 