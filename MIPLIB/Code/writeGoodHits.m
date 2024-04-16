%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% writeGoodHits.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% written by Roman Kostal
tic
base = 'C:\Users\roman\OneDrive\Work\DFO_Project\MIPLIB\';
pthCol = strcat(base,'collection\');
pthDotMat = strcat(base,'collection_DotMat\');
pthSol = strcat(base,'solutions\');

cd(base);
load('goodHitNames.mat');
cd(pthDotMat);

available = dir('*.mat');
available = {available(:).name}';
[~,available,~] = fileparts(available);

SD = intersect(available,goodHitNames);

for i = 1:length(SD)
    name = SD{i};
    load(fullfile(pthSol,name,strcat('H_',name,'.mat')));
    load(fullfile(pthDotMat,strcat(name,'.mat')));
    dim = length(S.prob.domain.xtype);
    for j = 1:size(hits,1)
        d = length(hits{j,2}) - dim;
        if d == 0 
            S.hits{j}.names = hits{j,1}(:);
            S.hits{j}.values = hits{j,2}(:);
            S.hits{j}.obj = [];
        elseif (d == 1) && strcmp(hits{j,1}{1},'=obj=')
            S.hits{j}.names = hits{j,1}(2:end);
            S.hits{j}.values = hits{j,2}(2:end);
            S.hits{j}.obj = hits{j,2}(1);
        else
            disp(strcat('Bad hit ',name));
        end
    end
    save(fullfile(pthDotMat,strcat(name,'.mat')),'S');
end
tajm = toc