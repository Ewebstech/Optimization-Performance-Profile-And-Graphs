clear all;
clc;
close all;
format short;
data = xlsread('ARMIJOLINESEARCH.xlsx','Sheet3'); 
% Plot for Time Performance
% Normalize data
iter_aban = data(:,1);
iter_afr = data(:,2);
iter_apr = data(:,3);
iter_ahs = data(:,4);
iter_acd = data(:,5);
iter_ady = data(:,6);
iter_als = data(:,7);
iter_ahz = data(:,8);

rps = 


iter_aban = iter_aban(isfinite(iter_aban));
iter_afr = iter_afr(isfinite(iter_afr));
iter_apr = iter_apr(isfinite(iter_apr));
iter_ahs = iter_ahs(isfinite(iter_ahs));
iter_acd = iter_acd(isfinite(iter_acd));
iter_ady = iter_ady(isfinite(iter_ady));
iter_als = iter_als(isfinite(iter_als));
iter_ahz = iter_ahz(isfinite(iter_ahz));
for i = 1:length(iter_aban)
    iter_aban_norm(i) = iter_aban(i)/sum(iter_aban);
end
for i = 1:length(iter_afr)
    iter_afr_norm(i) = iter_afr(i)/sum(iter_afr);
end
for i = 1:length(iter_apr)
    iter_apr_norm(i) = iter_apr(i)/sum(iter_apr);
end
for i = 1:length(iter_ahs)
    iter_ahs_norm(i) = iter_ahs(i)/sum(iter_ahs);
end
for i = 1:length(iter_acd)
    iter_acd_norm(i) = iter_acd(i)/sum(iter_acd);
end
for i = 1:length(iter_ady)
    iter_ady_norm(i) = iter_ady(i)/sum(iter_ady);
end
for i = 1:length(iter_als)
    iter_als_norm(i) = iter_als(i)/sum(iter_als);
end
for i = 1:length(iter_ahz)
    iter_ahz_norm(i) = iter_ahz(i)/sum(iter_ahz);
end
% A-BAN
figure 
iter_aban = data(:,1); %cputime_aban = data(:,4)
N = 1:1:length(iter_aban_norm(:)); 
p1 = plot(N,iter_aban_norm(:),'LineWidth',2);
hold on
% A-FR
N = 1:1:length(iter_afr_norm(:)); 
p2 = plot(N,iter_afr_norm(:),'LineWidth',2);
% A-PR
N = 1:1:length(iter_apr_norm(:)); 
p3 = plot(N,iter_apr_norm(:),'LineWidth',2);
% A-HS
N = 1:1:length(iter_ahs_norm(:)); 
p4 = plot(N,iter_ahs_norm(:),'LineWidth',2);
% A-CD
N = 1:1:length(iter_acd_norm(:)); 
p5 = plot(N,iter_acd_norm(:),'LineWidth',2);
% A-DY
N = 1:1:length(iter_ady_norm(:)); 
p6 = plot(N,iter_ady_norm(:),'LineWidth',2);
% A-LS
N = 1:1:length(iter_als_norm(:)); 
p7 = plot(N,iter_als_norm(:),'LineWidth',2);
% A-HZ
N = 1:1:length(iter_ahz_norm(:)); 
p8 = plot(N,iter_ahz_norm(:),'LineWidth',2);

xlabel('t'); ylabel('Time');
legend('A-BAN','A-FR','A-PR','A-HS','A-CD','A-DY','A-LS','A-HZ') 
title('Profile for Time Performance')
hold off