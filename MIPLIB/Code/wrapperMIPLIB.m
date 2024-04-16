%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% wrapperMIPLIB.m %%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% written by Roman Kostal
 
tic
base = 'C:\Users\roman\OneDrive\Work\DFO_Project\MIPLIB\';
pthCol = strcat(base,'collection\');
pthDotMat = strcat(base,'collection_DotMat\');
pthSol = strcat(base,'solutions\');

cd(base);
allProbs = load('ProblemList.mat');
allProbs = allProbs.MIPLIBCollectionSet;

goodmat = dir('C:\Users\roman\OneDrive\Work\DFO_Project\MIPLIB\collection_DotMat\*.mat');
goodmat = {goodmat(:).name}';
[~,goodmat,~] = fileparts(goodmat);
badmat = setdiff(allProbs,goodmat);

% mySols = dir(pthSols);
% mySols = {mySols(:).name};
% 
% Sols = intersect(myProbs,mySols);
% NInst = length(Sols);
% Hits(NInst) = struct();
% 
% for i = 1:NInst
%    cd(pthSols);
%    Hits(i).name = Sols{i};
%    Hits(i).hits = readSolText(Sols{i});
% end

%load('goodHitNames')
cd(pthCol);

%set which problems you want to work on 
myProbs = badmat;
%--------------------------------------

errors = cell(length(badmat),3);


for j = 1:length(myProbs)
    disp(strcat('processing____',num2str(j), '/1065'));
    fs = myProbs{j};
    gunzip(strcat(fs,'.mps.gz'));
    f = dir(strcat(fs,'.mps'));
    if f.bytes < 10^9          
        try
        S = readMIPLIB(strcat(fs,'.mps'),pthSol);
        save(fullfile(pthDotMat,strcat(fs,'.mat')),'S');
        %delete(strcat(fs,'.mps'));
        catch e %e is an MException struct
            fprintf(1,'The identifier was:\n%s',e.identifier);
            fprintf(1,'There was an error! The message was:\n%s',e.message);
            fprintf(1,'------------\n');
            errors{j,1} = fs;
            errors{j,2} = e.identifier;
            errors{j,3} = e.message;
        end
    else
        errors{j,1} = fs;
        errors{j,2} = 1;
    end
end

tajm = toc