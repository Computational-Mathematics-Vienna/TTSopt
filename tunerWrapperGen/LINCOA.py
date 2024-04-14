from generator.generator import Parameter, Solver

name = "LINCOA"

paths = ["/Powell/matlab/interfaces"]

preparation = """
x = options.x;
low = bounds.low;
upp = bounds.upp;
clow = bounds.clow;
cupp = bounds.cupp;
      
Ic = options.Ic;
Ii = options.Ii;
lb  = zeros(length(x),1);
ub  = zeros(length(x),1);
if ~isempty(Ic)
  lb(Ic)=clow(Ic);
  ub(Ic)=cupp(Ic);
end
if ~isempty(Ii)
  lb(Ii)=low;
  ub(Ii)=upp;
end

if TuneCase == 0, params = struct(); end
if TuneCase==-1
    params=solverParams{1};
    params.npt = (length(x)+params.nptCoeff2)*(length(x)+params.nptCoeff1)/2;
end

params.maxfun = options.nfmax;
params.ftarget = -inf;
params.quiet = true;
params.classical = false;
params.debug = false;
params.chkfunval = false;

constrInfo=options.constrInfo;
      
if isfield(constrInfo, 'AP'), 
  AP = constrInfo.AP; 
else, 
  AP = []; 
end
if isfield(constrInfo, 'bP'),
  bP = constrInfo.bP; 
else, 
  bP = [];
end
if isfield(constrInfo, 'AE'),
  AE = constrInfo.AE; 
else, 
  AE = []; 
end
if isfield(constrInfo, 'bE'),
  bE = constrInfo.bE; 
else, 
  bE = [];
end

A = [AP; AE];
b = [bP; bE];

finfo.A=A; finfo.b=b;

P = 1:size(AP,1);
E = size(AP,1)+1:size(A,1);
AP=A(P,:); AE=A(E,:); bP=b(P); bE=b(E);

finfo.AP=AP; finfo.bP=bP; finfo.E=E;
finfo.AE=AE; finfo.bE=bE; finfo.P=P;
"""

call = """
if isOctave
            
    eval(['save ',WORKpath, '/TE/finfo.mat finfo RESpath']);

    first=true;
    lowStr='low=';
    uppStr='upp=';
    
    for i = 1:length(x)
       if first
            xStr = num2str(x(i));
            lowStr = [lowStr,num2str(low(i))];
            uppStr = [uppStr,num2str(upp(i))];
            first=false;
       else
            xStr = [xStr,',',num2str(x(i))];
            lowStr= [lowStr,',',num2str(low(i))];
            uppStr = [uppStr,',',num2str(upp(i))];
       end
    end
    
    AineqStr='Aineq=';
    bineqStr='bineq=';
    
    if ~isempty(AP)    
    	for i = 1:size(AP,1)
		if first
		    AineqStr = [AineqStr,num2str(AP(1,1))];
		    bineqStr = [bineqStr,num2str(bP(i))];
		    first=false;
		else
		    AineqStr = [AineqStr,';',num2str(AP(i,1))];          
		    bineqStr = [bineqStr,',',num2str(bP(i))];
		end
		for j = 2:size(AP,2)
		    AineqStr = [AineqStr,',',num2str(AP(i,j))];
		end
        end
    else
       AineqStr=[AineqStr,'[]'];
       bineqStr=[bineqStr,'[]'];
    end
    	
    AeqStr ='Aeq=';
    beqStr='beq=';
    if ~isempty(AE)       
       for i = 1:size(AE,1)
		if first
		    AeqStr = [AeqStr,num2str(AE(1,1))];
		    beqStr = [beqStr,num2str(bE(i))];
		    first=false;
		else
		    AeqStr = [AeqStr,';',num2str(AE(i,1))];          
		    beqStr = [beqStr,',',num2str(bE(i))];
		end
		for j = 2:size(AE,2)
		    AeqStr = [AeqStr,',',num2str(AE(i,j))];
		end
       end
    else
       AeqStr = [AeqStr,'[]'];
       beqStr = [beqStr,'[]'];
    end
        
    
    constraintsStr = [AineqStr,' ',bineqStr,' ',AeqStr,' ',beqStr];
    
    paramsStr = ['params=','''{"maxfev":',num2str(params.maxfun),'}'','...
                            '''{"ftarget":-1e9}'',',...
                            '''{"quiet":True}'',',...
                            '''{"classical":False}'',',...
                            '''{"debug":False}'',',...
                            '''{"chkfunval":False}'''];
    if TuneCase == -1
        if params.scale == 0
           scaleStr="False";
        else
           scaleStr="True";
        end
        paramsStr = [paramsStr,',',...
                            '''{"npt":',num2str(params.npt),'}'',',...
                            '''{"rhobeg":',num2str(params.rhobeg),'}'',',...
                            '''{"rhoend":',num2str(params.rhoend),'}'',',...
                            '''{"scale":',scaleStr,'}'''];
    end 

    [status,out] = system(['python3 ',SOLpath,...
    '/Powell/python/interfaces/pdfo/run_lincoa.py ',xStr,' ',constraintsStr,' ',lowStr,...
    ' ',uppStr,' ',paramsStr]);
    if status > 0
        error('an error occured while running LINCOA');
    else            
        fileID = fopen('lincoaResult.txt','r');
        result = textscan(fileID,'%s','Delimiter',',');
        data=result{1};
        x = data{1};
        f = data{2};
    end  
    eval(['load ',WORKpath, '/TE/finfo.mat']);
else
    [x,f, ~, ~] = ...
          lincoa(@funf, x, AP, bP, AE, bE, lb, ub, params);        
end

output.solverInfo.xbest = x;
output.solverInfo.fbest = f;
"""

params = [
    Parameter(
        name="npt",
        value=20,
        tuning_range=[1, 1000],
        description="number of interpolation points for constructing a model",
    ),
    Parameter(
        name="rhobeg",
        value=0.5,
        tuning_range=[0.5, 10],
        description="initial trust region radius",
    ),
    Parameter(
        name="rhoend",
        value=1e-6,
        tuning_range=[0, 1],
        description="final trust region radius",
    ),
    Parameter(
        name="scale",
        value=0,
        tuning_range=[0, 1],
        optimization_type="categorical",
        description="whether to scale the problem according to bounds",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
