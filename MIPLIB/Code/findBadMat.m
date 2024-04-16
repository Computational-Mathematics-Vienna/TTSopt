



goodmat = dir('C:\Users\roman\OneDrive\Work\DFO_Project\MIPLIB\collection_DotMat\*.mat')
goodmat = {goodmat(:).name}'
[~,goodmat,~] = fileparts(goodmat);
badmat = setdiff(myProbs,goodmat);

myProbs = load('ProblemList.mat');
myProbs = myProbs.MIPLIBCollectionSet;

% Convert cell to a table and use first row as variable names
T = cell2table(errorProbs,'VariableNames',{'Name' 'Identifier' 'Message'})
 
% Write the table to a CSV file
writetable(T,'errorProbs.xls')



