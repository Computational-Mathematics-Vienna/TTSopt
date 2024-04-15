%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% make_tables.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% written by Roman Kostal, modified by Romana Jezek
%

tic

cd(basePath);
% or pick a collection and a base folder where all collections are stored
% base = 'xyz';
% cd(base);

folders = dir;
folders = {folders(3:end).name}';
collections = dir('Collections');
collections = {collections(3:end).name}';
nCollections = length(collections);

% optional, use when comparing collections:
% tiledlayout(2,4)
% pthTables = strcat(base,collection,'/');
% pth = strcat(pthTables,'probs/');
% cd(pth);

for i = 1:1nCollections
    %collection = collections{i};
    collection = 'CUTEst'
    cd(fullfile(basePath,'Collections',collection,'DotMat'));
    %cd('DotMat');
    available = dir('*.mat');
    available = {available(:).name}';    
    A = cell(length(available),5);
    for j = 1:length(available)
        [~,available{j},~] = fileparts(available{j});
        name = available{j};
        nameMat = strcat(name,'.mat');
        disp(strcat('processing_',collection,'_',name));
        load(nameMat);
%         %%%% changes in the matfile
%         sp = S.prob.domain.startp;
%         S.prob.domain.startp = [];
%         S.prob.domain.startp{1} = sp;
%         %%%%
%         %%%% save the changed matfile
%         save(strcat(base,'\',collection,'\DotMat\',name,'.mat'),'S','-v7.3','-nocompression');
%         %%%%
          %%%% make table
        NVars = length(S.prob.domain.xtype);
        NBin = nnz(S.prob.domain.xtype == 2);
        NInt = nnz(S.prob.domain.xtype == 1);
        NCont = nnz(S.prob.domain.xtype == 0);
        if ~isfield(S.prob,'con')
            NConstraints = 0;
        else
            NConstraints = length(S.prob.con(1).ub);
        end
        A(j,:) = {NVars,NBin,NInt,NCont,NConstraints};
    end
    Tab.Values = A;
    Tab.Properties.VariableNames = {'Nvars','NBin','NInt','NCont','NConstraints'}
    Tab.Properties.RowNames = available;
    tname = strcat(collection,'_Table.mat');
    cd ..;
    save(tname,'Tab');
    nProbs = length(available);
    rx = 0.1 *(-1 + 2*rand(nProbs,1));
    ry = 0.1 *(-1 + 2*rand(nProbs,1));
    %nexttile; optional use when comparing collections 
    A = cell2mat(A);
    %scatter(abs(A(:,1)), abs(A(:,5)),50,'b','+');
    scatter(abs(A(:,1)+rx), abs(A(:,5)+ry),50,'b','+'); %optional,
    %use this to add random jitter to better show many identical points
    
    set(gca,'xscale','log');
    set(gca,'yscale','log');
    title(strcat(collection,' (',num2str(nProbs),' Problems)'));
    xlabel('Number of variables');
    ylabel('Number of proper constraints'); 
    saveas(gcf,strcat(collection,'_Plot'));
    saveas(gcf,strcat(collection,'_Plot.jpg'));
    cd(basePath);
end
%optional, use when comparing collections:
%cd ..;
%saveas(gcf,strcat('BARON_dotM_Collections_Plot'));
%saveas(gcf,strcat('BARON_dotM_Collections_Plot.jpg'));
toc
