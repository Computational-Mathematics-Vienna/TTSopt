%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% changeNames.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% written by Roman Kostal
%
% changes names of matfiles in a given collection 
% this might be necessary due to solver demands or naming conflicts
%
folder1 = 'MIPLIB'; % name of collection to be renamed
folder2 = folder1; % name of output folder if folder2 is different from 
% folder1 then the renamed files are copied to a new location

setBasePath;
cd(fullfile(basePath,'Collections',folder1,'\DotMat\'));
available = dir('*.mat');
available = {available(:).name}';

availableFull = strrep(available,' ',''); % replaces a character with 
% another charachter in a string. This example removes spaces.

for i = 1:length(available)
    movefile(strcat(folder1,available{i}),strcat(folder2,availableFull{i}));
end
