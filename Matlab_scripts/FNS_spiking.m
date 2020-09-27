%% VISUALIZATION OF THE SPIKING ACTIVITY OF THE MODEL
% If you want to obtain rasterplots and time series of the spiking 
% activity of a single simulation, please rename and put the file 
% firing_matlab.csv (generated from FNS - matlab compliant version) on the 
% current folder opened in Matlab and Run this script 

T = readtable(sprintf('firing_matlab.csv'));
f_mat = table2array(T);
clearvars T;

prompt='Please input the total number of nodes of the model:'; %start the count from N0
Nn = input(prompt); %number of nodes

prompt='Please input the duration to be visualized (ms):';
sim_dur = input(prompt);
 
edges=[0:1:sim_dur]; %for a resolution of 1 ms in MUA signal generation

%gather firing events of neurons pertaining to each node;
for ii = (1:Nn)
    MUA(ii).contributions = f_mat(f_mat(:,2) == (ii-1) & f_mat(:,5) == 0, [1,3]);
    [MUA(ii).signal,edges] = histcounts(MUA(ii).contributions(:,1),edges);
    
end

%display the rasterplot
figure ()
for ii = (1:Nn)
    ax(Nn) = subplot(Nn,1,ii);
    scatter (MUA(ii).contributions(:,1),MUA(ii).contributions(:,2),2,'b', 'filled'); ylabel(['N_',num2str(ii-1)]); set(gca,'XMinorTick','on');
    
    hold on;
    if ii==1
        title('Simulated firing activity');
    end
    if ii==Nn
        xlabel('time (ms)'); % for x-axis label
    else
        set(gca,'XTickLabel',[]);
    end
end


%display the MUA signal (Multi-unit activity)
figure ()
for ii = (1:Nn)
ax(Nn) = subplot(Nn,1,ii);

    plot (MUA(ii).signal); ylabel(['N_',num2str(ii-1)]); set(gca,'XMinorTick','on');

    hold on;
    if ii==1
        title('Simulated multi-unit activity (MUA)');
    end
    if ii==Nn
        xlabel('time (ms)'); % for x-axis label
    else
        set(gca,'XTickLabel',[]);
    end
end


