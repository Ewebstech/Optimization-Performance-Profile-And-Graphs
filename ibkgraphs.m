clear all;
clc;
close all;
format short;
data = xlsread('ARMIJOLINESEARCH.xlsx','Sheet5'); 
% Plot for Time Performance
% Normalize data
fdata = xlsread('ARMIJOLINESEARCH.xlsx','Sheet5'); 
f = fdata;
p = data(:,2);
s = data(:,3);
H = [f,p,s]
gate = 0.01;
logplot = 0;
[hl r T] = perf_profile(H,gate,logplot)

% iter_aban = iter_aban(isfinite(iter_aban));
% iter_afr = iter_afr(isfinite(iter_afr));
% iter_apr = iter_apr(isfinite(iter_apr));
% iter_ahs = iter_ahs(isfinite(iter_ahs));
% iter_acd = iter_acd(isfinite(iter_acd));
% iter_ady = iter_ady(isfinite(iter_ady));
% iter_als = iter_als(isfinite(iter_als));
% iter_ahz = iter_ahz(isfinite(iter_ahz));
% for i = 1:length(iter_aban)
%     iter_aban_norm(i) = iter_aban(i);
% end
% for i = 1:length(iter_afr)
%     iter_afr_norm(i) = iter_afr(i);
% end
% for i = 1:length(iter_apr)
%     iter_apr_norm(i) = iter_apr(i)/sum(iter_apr);
% end
% for i = 1:length(iter_ahs)
%     iter_ahs_norm(i) = iter_ahs(i)/sum(iter_ahs);
% end
% for i = 1:length(iter_acd)
%     iter_acd_norm(i) = iter_acd(i)/sum(iter_acd);
% end
% for i = 1:length(iter_ady)
%     iter_ady_norm(i) = iter_ady(i)/sum(iter_ady);
% end
% for i = 1:length(iter_als)
%     iter_als_norm(i) = iter_als(i)/sum(iter_als);
% end
% for i = 1:length(iter_ahz)
%     iter_ahz_norm(i) = iter_ahz(i)/sum(iter_ahz);
% end
% % A-BAN
% figure 
% iter_aban = data(:,1); %cputime_aban = data(:,4)
% N = linspace(0,1,length(iter_aban_norm(:)));
% p1 = plot(iter_aban_norm(:),N(:),'LineWidth',2);
% hold on
% % A-FR
% N = linspace(0,1,length(iter_afr_norm(:)));
% p2 = plot(iter_afr_norm(:),N,'LineWidth',2);
% % A-PR
% N = linspace(0,1,length(iter_apr_norm(:)));
% p3 = plot(iter_apr_norm(:),N,'LineWidth',2);
% % A-HS 
% N = linspace(0,1,length(iter_ahs_norm(:)));
% p4 = plot(iter_ahs_norm(:),N,'LineWidth',2);
% % A-CD
% N = linspace(0,1,length(iter_acd_norm(:)));
% p5 = plot(iter_acd_norm(:),N,'LineWidth',2);
% % A-DY
% N = linspace(0,1,length(iter_ady_norm(:)));
% p6 = plot(iter_ady_norm(:),N,'LineWidth',2);
% % A-LS
% N = linspace(0,1,length(iter_als_norm(:)));
% p7 = plot(iter_als_norm(:),N,'LineWidth',2);
% % A-HZ
% N = linspace(0,1,length(iter_ahz_norm(:)));
% p8 = plot(iter_ahz_norm(:),N,'LineWidth',2);
% 
% xlabel('t'); ylabel('Iterations');
% legend('A-BAN','A-FR','A-PR','A-HS','A-CD','A-DY','A-LS','A-HZ') 
% title('Profile for Number of Iterations')
% hold off