from generator.generator import Parameter, Solver

name = "UOBYQA"

paths = []

preparation = """
x = options.x;

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

for i = 1:length(x)
  if first
    xStr = num2str(x(i));
    first=false;
  else
    xStr = [xStr,',',num2str(x(i))];
  end
end
  
paramsStr = ['params=','''{"maxfev":',num2str(params.maxfun),'}'','...
                 '''{"ftarget":-1e9}'',',...
                 '''{"quiet":True}'',',...
                 '''{"classical":False}'',',...
                 '''{"debug":False}'',',...
                 '''{"chkfunval":False}'''];
if TuneCase == -1
  paramsStr = [paramsStr,',',...
                 '''{"rhobeg":',num2str(params.rhobeg),'}'',',...
                 '''{"rhoend":',num2str(params.rhoend),'}'''];
end 
  
  
eval(['save -mat ',WORKpath, '/TE/finfo.mat finfo RESpath']);

[status,out] = system(['python3 ',WORKpath,...
'/PYTHON/Octave_interfaces/run_uobyqa.py ',xStr,' ',paramsStr]);
if status > 0
  error('an error occured while running UOBYQA');
end  
eval(['load ',WORKpath, '/TE/finfo.mat finfo']); 

output.solverInfo.xbest = finfo.xbest;
output.solverInfo.fbest = finfo.fbest;
"""

params = [
    Parameter(
        name="rhobeg",
        value=1.0,
        tuning_range=[1, 10],
        description="initial trust region radius",
    ),
    Parameter(
        name="rhoend",
        value=1e-6,
        tuning_range=[1e-8, 1e-4],
        description="final trust region radius",
    ),
]


solver = Solver(name, params, paths, preparation, call)

solver.write_wrapper("../WRAPPERS/")
solver.write_tuner("../TUNERS/")
