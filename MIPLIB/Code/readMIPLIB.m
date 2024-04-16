%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% readMIPLIB.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% written by Roman Kostal

% python load_mps returns:
%  name
%  objective_name
%  row_names
%  col_names
%  types
%  c: : the objective function coefficients (obj = c * x)
%  A: the constraint matrix
%  rhs_names
%  rhs: dictionary (rhs_name) => b, where b is the vector of constraint values 
%    for that given right hand side name.
%  bnd_names
%  bnd: dictionary (bnd_name) => {"LO": v_l, "UP": v_u} where v_l is the vector 
%    of lower bounds and v_u is the vector of upper bound values 
%    (defaults to v_l = 0 and v_u = +inf).

function S = readMIPLIB(filenameString,pthSol);
D = mpsread(filenameString);

n = length(D.f);

S.info.names.prob = filenameString;
S.info.names.obj = [];
S.info.names.vars = [];

S.prob.obj.type = 'min';
S.prob.obj.lin = D.f;
S.prob.obj.const = 0;

S.prob.con{1}.lin = D.Aeq;
S.prob.con{1}.lb = D.beq;
S.prob.con{1}.ub = D.beq;

S.prob.con{2}.lin = D.Aineq;
S.prob.con{2}.lb = -inf(n,1);
S.prob.con{2}.ub = D.bineq;

xtype = zeros(n,1);
for i = 1:length(D.intcon)
    xtype(D.intcon(i)) = 1;
end

S.prob.domain.xtype = xtype;
S.prob.domain.lb = D.lb;
S.prob.domain.ub = D.ub;

% [~,name] = fileparts(filenameString);
% pthSol = strcat(pthSol,name);
% if isfolder(pthSol)
%     load(strcat(pthSol,'\H_',name));
%     for j = 1:size(hits,1)
%         S.hits{j}.names = m.hits;
% else
%     S.hits = [];
%     end

S.hits = [];

end
