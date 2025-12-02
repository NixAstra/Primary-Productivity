%%%%%%%%%%% Plotting script for Nix 

%%%%%%%%%%%%% STANDARDISING YOUR DATA %%%%%%%%%%%%%%%%%%%
%Split your structure into the runs you want
%I've done it for the Proximal at 10%
prox10 = run(1:1000,1) ; %I'm guessing column 1 is 10% 

%Filter out runs that did not complete
for i = 1:length(prox10)
    test(i) = prox10(i).state.time(end) ;
    if test(i) <  0
        prox10_filtered(i).pars = [] ;
    else
        prox10_filtered(i) = prox10(i) ; 
    end
end

%Delete runs that are now empty
fun = @(s) all(structfun(@isempty,s));
idx = arrayfun(fun, prox10_filtered) ;
prox10_filtered(idx) = [] ;


%Specify resolution
 years = (-4e9: 1e6 : 0); 

 for N = 1:length(prox10_filtered)
     field_names = fieldnames(prox10_filtered(N).state) ; 
     for numfields = 1:length(field_names)
         eval(['test2.' char( field_names(numfields) ) '(:,N) = interp1( prox10_filtered(N).state.time, prox10_filtered(N).state.' char( field_names(numfields) ) ', years) ;'])

     end
 end

 %%%%%%%%%%% PLOT MEAN OF YOUR DATA %%%%%%%%%%%%%%%%%%%%%%%%%
figure
 plot(test2.time(:,1), mean(test2.fanoxicdist,2))