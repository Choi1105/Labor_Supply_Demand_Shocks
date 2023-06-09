%%% Main script to replicate BDF2020 estimation and historical
%%% decomposition
%%% Last update: 03/06/2023

clear all; 
clc;

%% User input 
subsectors = 0;
production = 0; 
%%

% sector파일 17개+전체 1개 sector로 수정 -> sectors변수에 18개 저장시 완료.
if subsectors == 0      
   [num,txt,raw] = xlsread('C:/Users/KYM/Desktop/Git/nopasanada/Data/labels_naics2.xlsx');
   sectors = txt(2:end, 1);
   sectors = sectors(1:18);
end
        
%if subsectors == 1
    %[num,txt,raw] = xlsread('C:/Users/KYM/Desktop/Git/nopasanada/Data/labels_naics3.xls');
    %sectors = txt(1:end, 1);
%end      
% To save posteriors of parameters. Dimensions: (sector, median lower and
% upper by shock)

if subsectors == 0
    posteriors_save = ones(18,3*2); % 17로 수정 
end
%%
for ii=1:length(sectors)
    sector = sectors{ii};
    display(sector)
    
    % Get sectoral data on wages and hours

    readData; % readData function 수정 
    
    % Estimate posterior of A
    model_estimation;

    % Compute IRFs
    hmax = 41;    % hmax - 1 is the maximum horizon sought
    irf;

    % Compute Historical Decomposition
    histDecomp;
    
    if subsectors == 0
    % Save p(5), p(50) and p(95)
        posteriors_save(ii,1:3) = quantile(a_post(1,:),[0.05 0.50 0.95]);
        posteriors_save(ii,4:6) = quantile(a_post(2,:),[0.05 0.50 0.95]);
    end
    
    % Plot Priors vs. Posteriors
    n1 = 1;
    n2 = 2;
    figure (1)
    nbin=500;
    i = 0;
    while i < nA
         i = i+1;
         subplot(n1,n2,i)
         [ag,bg]=hist(a_post(i,:),nbin);
         delta=bg(1,2)-bg(1,1);
         post_a = ag./((ndraws-nburn)*delta);
         bar(bg,post_a), hold on, plot(z1,pdf_prior(i,:),'r','linewidth',2); box on
         %axis([-xbound xbound 0 ybound])
         title_a = strcat('Prior and posterior for',anames(i));
         title(title_a,'fontsize',8)
    end
    h = gcf;
    set(h,'Units',"centimeters");
    set(h,'OuterPosition',[0 0 12 6]);
    set(h,'Position',[0 0 12 6]);
    set(h,'PaperUnits','centimeters');
    set(h,'PaperSize', [12 6]);
   
    if subsectors == 0
        print(h, '-dpdf', strcat("../Plots/Priors/prior_", sector ,".pdf"), '-r300');
    end
    
    close all;
end

if subsectors == 0
    dlmwrite(strcat("C:/Users/KYM/Desktop/Git/nopasanada/Shocks/NAICS2/posterior_quantiles.txt"), posteriors_save);
end
