%%%%%% Tables_DotMat %%%%%%

collection = 'MIPLIB';
load(strcat(collection,'_Table.mat'));
% tiledlayout(2,4)
nProbs = height(MT);
rx = 0.1*(-1 + 2*rand(nProbs,1));
ry = 0.1 *(-1 + 2*rand(nProbs,1));
% nexttile
scatter(abs(MT.VariablesVar+rx), abs(MT.ConstraintsCon+ry),50,'b','+');
% set(gca,'Xscale','log')
% set(gca,'Yscale','log')
axis([0 1E4 0 1E4])
title(strcat(collection,' (',num2str(nProbs),' Problems)'));
xlabel('Number of variables');
ylabel('Number of proper constraints'); 
saveas(gcf,strcat(collection,'_1E4_limited_axes_Plot'));
saveas(gcf,strcat(collection,'_1E4_limited_axes_Plot.jpg'));
% saveas(gcf,strcat('BARON_dotM_Collections_Plot'));
% saveas(gcf,strcat('BARON_dotM_Collections_Plot.jpg'));