% Set up the figure 
figure
%ha = tight_subplot(6,5, [0.06 0.06])

%time in myr
time = ans.state.time(:,1) /1e6 ;

% Plot each subplot 
for i = 1:25
    %axes(ha(i))
    ax = nexttile;
    hold on;
    box on;
    % Set x-axis limit for each subplot
    xlim([-4e3 0]); 
    
    switch i
        case 1
            % Plot Atmospheric O2
            semilogy(time, ans.state.O2_A/3.7e19, 'LineWidth', 1.5);
            title('Atmospheric O2 PAL');
            ylabel("O2 (PAL)");
        case 2
            % Plot Oxidative Weather
            semilogy(time, ans.state.Atmos_Weather, 'LineWidth', 1.5);
            title('Oxidative Weathering');
            ylabel("Weathering (mol/yr)");
        case 3
            % Plot Reduced Gas flux 
            semilogy(time, ans.state.FrgfO2, 'LineWidth', 1.5);
            title('Reduced Gas Flux');
            ylabel("Gas flux (mol/yr)");
        case 4
            % Plot Deep ocean O2
            semilogy(time, ans.state.O2_DP/2.21e17, 'LineWidth', 1.5);
            title('Deep Ocean O2 POL');
            ylabel(" O2 (POL)");
        case 5 
            % Plot River Phosphorous 
            semilogy(time,ans.state.River_SRP,'LineWidth',1.5);
            title('River Phosphorous');
            ylabel(" P (mol/yr)");
        case 6 
            % Total Prox_Preac_burial 
            semilogy(time,ans.state.Prox_Preac_Burial,'LineWidth',1.5);
            title('Phosphorus Proximal Burial');
            ylabel(" P (mol/yr)");
        case 7 
            % Total Dist_Preac_burial 
            semilogy(time,ans.state.Dist_Preac_Burial,'LineWidth',1.5);
            title( 'Phosphorus Distal Burial');
            ylabel(" P (mol/yr)");
        case 8 
            % Total Deep_Preac_burial 
            semilogy(time,ans.state.Deep_Preac_Burial,'LineWidth',1.5);
            title('Phosphorus Deep Burial');
            ylabel(" P (mol/yr)");
        case 9 
            % Total Phos Deep
            semilogy(time,ans.state.SRP_DP,'LineWidth',1.5);
            title('P Deep');
            ylabel(" P (mol/yr)");
        case 10 
            % CP Proximal
            semilogy(time,ans.state.CP_Prox,'LineWidth',1.5);
            title('C:P Proximal');
            ylabel("C:P Proximal");
        case 11 
            % CP Distal
            semilogy(time,ans.state.CP_Dist,'LineWidth',1.5);
            title('C:P Distal');
            ylabel("C:P Distal");
        case 12
            % CP deep
            semilogy(time,ans.state.CP_Deep,'LineWidth',1.5);
            title('C:P Deep');
            ylabel("C:P Deep");
        case 13 
            % Anoxic Proximal
            semilogy(time,ans.state.fanoxicprox,'LineWidth',1.5);
            title('Fraction of Anoxia Proximal');
            ylabel("Fraction of Anoxia")
        case 14
            % Anoxic Distal
            title('Fraction of Anoxia Distal');
            semilogy(time,ans.state.fanoxicdist,'LineWidth',1.5);
            ylabel("Fraction of Anoxia")
        case 15 
            % Plot Inorganic Carbon Reservoir
            semilogy(time,ans.state.A,'LineWidth',1.5);
            title({'Inorganic'; 'carbon'});
            ylabel("Inorganic Carbon (mol/yr)");
        case 16 
            % Plot Inorganic Carbon isotope (Aiso)
            semilogy(time,ans.state.Aiso,'LineWidth',1.5);
            title({'Inorganic'; 'carbon isotope'});
            ylabel("Carbon (mol/yr)");
            
        case 17 
            % Plot total organic carbon
            semilogy(time,ans.state.forg,'LineWidth',1.5);
            title('Total Organic Carbon');
            ylabel("TOC (??)");
        case 18 
            % Plot Total organic carbon burial
            title({'Total Organic carbon' ; 'Burial'});
            semilogy(time,ans.state.Fmocb,'LineWidth',1.5);
            ylabel("Carbon Burial (mol/yr)");
        case 19 
            % Total POC burial
            title('Total POC burial');
            semilogy(time,ans.state.Total_POC_Burial,'LineWidth',1.5);
            ylabel("POC burial (mol/yr)");
        case 20
            % Plot Atmospheric CO2
            title('Atmospheric CO2');
            semilogy(time,ans.state.CO2atm,'LineWidth',1.5)
            ylabel("CO2 (??)");
        case 21
            % Exposed continental landmass
            title('Exposed continental landmass');
            semilogy(time,ans.state.EXPOSED,'LineWidth',1.5);
            ylabel("Exposed landmass");
        case 22         
            % Carbonate carbon reservoir relative to present
            title({'Carbonate carbon reservoir'; 'relative to present'});
            semilogy(time,ans.state.C,'LineWidth',1.5);
            ylabel({"Carbonate reservoir"; "relative to present"});
        case 23 
            % Plot Degassing rate relative to present
            title('Degassing rate relative to present');
            semilogy(time,ans.state.D,'LineWidth',1.5);
            ylabel("Rate relative to present");
        case 24 
            % Plot Temperature
            title('Global average surface temperature');
            semilogy(time,ans.state.GAST-273,'LineWidth',1.5);
            ylabel("Temperature (C)");
        case 25
            % Plot land plant wearhering enhancement
            semilogy(time, ans.state.fbiota, 'LineWidth', 1.5);
            title('Land Plant Weathering Enhancement');
            ylabel("Land plant enhancement");
        %case 26
        %     % CP anoxic
        %     semilogy(ans.state.time,ans.state.CPanoxic,'LineWidth',1.5);
        %     title('C-P Anoxic');

    end
    ax.LineWidth = 0.75;
    ax.TickLength = [0.02, 0.02];
    % Only add x-axis labels on the bottom row 
    if i <= 20 % All plots except the last row
        ax.XTickLabel = []; % Hide x-tick labels for non-bottom-row subplots
    else
        xlabel('Time (Ma)', 'FontSize', 8); % Only show x-label on bottom row
    end
end
