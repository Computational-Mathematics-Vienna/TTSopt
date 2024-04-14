from generator.generator import Parameter, Solver

name = "BOBYQA"

paths = []

preparation = """
      x = options.x;
      low = bounds.low;
      upp = bounds.upp;
      
      if TuneCase==-1
        params=solverParams{1};
      end
      params.maxfun = options.nfmax + 1;
      params.ftarget = -inf;
      params.quiet = true;
      params.classical = false;
      params.debug = false;
      params.chkfunval = false;        
"""
call = """

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
              '''{"scale":',scaleStr,'}'',',...
              '''{"honour_x0":False}'''];
end 

eval(['save -mat ',WORKpath, '/TE/finfo.mat finfo RESpath']);
    
[status,out] = system(['python3 ',WORKpath,...
       '/PYTHON/Octave_interfaces/run_bobyqa.py ',xStr,' ',lowStr,...
       ' ',uppStr,' ',paramsStr]);
if status > 0
  error('an error occured while running BOBYQA');
end  
eval(['load ',WORKpath, '/TE/finfo.mat finfo']); 

output.solverInfo.xbest = finfo.xbest;
output.solverInfo.fbest = finfo.fbest;
"""

params = [
    Parameter(
        name="npt",
        value=2,
        tuning_range=[2, 10],
        description="number of points for quadratic approximation",
    ),
    Parameter(
        name="rhobeg",
        value=0.5,
        tuning_range=[0, 10],
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
        description="whether to scale the problem according to bounds",
    ),
    Parameter(
        name="honour_x0",
        value=0,
        tuning_range=[0, 1],
        description="whether to respect the user-defiend x0",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
