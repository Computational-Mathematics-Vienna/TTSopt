%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% readProb.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% written by Roman Kostal
%

function output = readProb(collection,name,options)

% Argumetns:
% collection - name of collection [string]
% name - name of problem [string]
% options - specify desired output [string]
% options = 'all' _________ the whole struct S
%         = 'info'_________ info about the problem
%         = 'obj' _________ the objective funcion
%         = 'hits'_________ hits

% Usage:
% 0 arguments returns info about all available collections
% 1 argument (collection) returns more info about that specific collection
% 3 arguments (collection, name, options), returns desired parts of a
% problem as specified in options

pthBase = fullfile(fileparts(mfilename('fullpath')), '..');
pthInfo = fullfile(pthBase,'CommonInfo');
pthCol  = fullfile(pthBase,'Collections');

if nargin == 0
    load(fullfile(pthInfo,'overview_Table.mat'),'OT');
    output = OT;
    return
elseif nargin == 1
    availableCollections = {'bcp' 'global' 'minlp' 'inf' 'ibm' ...
    'bcpInt' 'globalInt' 'minlpInt' 'infInt' 'ibmInt' ...
    'bcpMint' 'globalMint' 'minlpMint' 'infMint' 'ibmMint' ...
    'prince' 'morg' 'sluksan' 'princeInt' 'morgInt' 'sluksanInt' ...
    'princeMint' 'morgMint' 'sluksanMint' 'MIPLIB' 'MIPLIBint'};
    collection
    if ~ismember(collection,availableCollections)
        ME = MException('readProb:noSuchCollection', ...
        'collection %s not found, names are case sensitive!',collection);
        throw(ME)
    else
        load(fullfile(pthCol,collection,strcat(collection,'_Table.mat')),'Tab');
        output = Tab;
        return
    end
elseif nargin == 3
    load(fullfile(pthCol,collection,'DotMat',strcat(name,'.mat')),'S');
    %alternative: m = matfile(fullfile(pthCol,collection,'DotMat',strcat(name,'.mat')))
    switch options
    case 'all'
        output = S;
    case 'info'
        output = S.info;
    case 'func'
        output = S.prob.obj;
    case 'hits'
        output = S.hits;
    otherwise
        ME = MException('readProb:invalidOption','Pick one of the valid options please!');
        throw(ME);
    end
else
    ME = MException('readProb:improperUse', ...
    'Plese specify either 0,1 or 3 argumetns',collection);
    throw(ME)
end

end
