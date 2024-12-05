%%%% output to screen
fprintf('running single plotting script... \t')
tic

%%%% make figure
figure('Color',[0.80 0.80 0.70])

%%%%first planel
subplot(4,4,1)
%%%% plot model oxygen in atmosphere
plot(state.time,state.O2_A)
%%%% labels
xlabel('Time (years)')
ylabel('Atmospheric O_2 (mol)')

%%%% second planel
subplot(4,4,2)
%%%% plot model oxygen in atmosphere
plot(state.time,state.CO2atm)
%%%% labels
xlabel('Time (years)')
ylabel('Atmospheric CO_2 (mol)')