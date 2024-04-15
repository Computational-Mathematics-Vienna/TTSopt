%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% createStruct.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% creates the structure that is used for the .mat files in the DotMat 
% folder
%

function createStruct(filenameString, collection)

load(filenameString); % or do whatever is necessary to load it

% assign name
S.info.names.prob = filenameString; % or anything which is appropriate

% look at the domain
n = length(xtype); % or other way to determine dimension
S.info.dim = n;
xt = zeros(n,1); % determine xtype in the loop below
for i = 1:n
    if xtype(i) == 'C'
        xt(i) = 0;
    elseif xtype(i) == 'I'
        xt(i) = 1;
    else
        xt(i) = 2;
    end
end

S.prob.obj.sense = 'min';
S.prob.obj.nl = fun; % assign a function handle
S.prob.obj.const = 0;

S.prob.con{1}.nrows = length(cu); % specify proper constraints
S.prob.con{1}.nl = nlcon;
S.prob.con{1}.lb = cl;
S.prob.con{1}.ub = cu;

S.prob.domain.xtype = xt; % specify domain
S.prob.domain.lb = lb;
S.prob.domain.ub = ub;
S.prob.startp{1} = x0; % specify starting point

S.hits = {}; % specify hits if any are provided

com = ['save -mat ../Collections/',collection,'/DotMat/', ...
       strtrim(fileNameString),'.mat S'];
eval(com)
