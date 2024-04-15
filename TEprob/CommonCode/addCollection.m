%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% addCollection.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% written by Roman Kostal
%
% this is a draft file which can be used for adding a new collection 
%

colName = 'CUTEst'; % name of collection to be created

setBasePath;
colPath = fullfile(basePath,'Collections',colName);

mkdir(colPath); 
mkdir(colPath,'DotMat'); % folders created
%mkdir(colPath,'given'); % optional, for storing files which were given

cd(''); % change working directory to the folder containing the problems
% which one wants to translate

% create a list of names of the problem names
available = dir('*.mat');
available = {available(:).name}';

% load them one by one, create the struct and save it. The real work
% happens in createStruct, which needs input from the user.
for i = 1:length(available)
    createStruct(available{i});
    save(fullfile(colPath,'DotMat',S.prob.name));
end
