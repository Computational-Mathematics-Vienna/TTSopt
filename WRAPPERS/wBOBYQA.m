%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% wBOBYQA.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% function output = wBOBYQA(prob, func, options)
%
% wrapper for the BOBYQA solver
%
%
% ARGUMENTS
% ---------
% prob (int/str): tune case if nargin==1 / problem name if nargin>1
%
% func (function handle): handle to the objective function
%
% options (structure):
%
%   .x (column vector): starting point
%
%   .bounds (structure):
%
%     .type (string): string of length n
%       type(i) = "c" if variable i is continuous
%       type(i) = "i" if variable i is integer
%       type(i) = "k" if variable i is categorical
%
%     .low (column vector): lower bounds on x
%
%     .upp (column vector): upper bounds on x
%
%     .cat (value cell array): i-th component is either "" when
%       variable i is not categorical, or a cell array of non-empty
%       strings defining all possible states of variable i, e.g.
%       { {"blue", "black"}, "", {"blue", "green", "yellow"} }
%
%   .prt (int): printlevel
%     0: nothing,
%     1: little,
%     >1: more and more
%     there are no other options on this level,
%     as the solver id specifies solver-dependent options
%
%   .resfile (str): result file (path relative to RESpath)
%
%   .accf (float): desired maximum norm of gradient
%
%   .nfmax (int): bounds on number of function values
%
%   .secmax (int): bounds on number of seconds
%
%   .redgrad (bool): return reduced gradient or not
%     0 is default for BBO problems
%
%   .TuneCase (int): tuning case for solver
%     -1: uses options.solverParams
%     0: no tuning, uses default parameters of solver
%     >1: predefined tuning parameters
%
%   .solverParams (structure): solver paramaters to pass through
%     in the user tuning case
%
%     .npt (int): 2
%       number of points for quadratic approximation
%
%     .rhobeg (float): 0.5
%       initial trust region radius
%
%     .rhoend (float): 1e-06
%       final trust region radius
%
%     .scale (int): 0
%       whether to scale the problem according to bounds
%
%     .honour_x0 (int): 0
%       whether to respect the user-defiend x0
%
%
% RETURNS
% -------
% nargin == 0: returns nothing, just prints info about the solver
%
% nargin == 1: prints info about the tuning case
% output (structure): info about specified tuning parameter
%
% nargin > 1:
% output (structure): best point, function value and additional info
%
%   .xbest (column vector): best point found by solver
%
%   .fbest (float): best function value found by solver
%
%   .solname (str): name of solver and tune case
%     for saving data in TESTrun
%
%   .solverInfo (row vector): info from the solver
%
%   .funInfo (structure): additional info


function output = wBOBYQA(prob, func, options)

  global SOLpath RESpath WORKpath finfo


  % self tuning without using mixed integer solver
  solverParams = {};
  solverParams{1} = struct('npt',2, 'rhobeg',0.5, 'rhoend',1e-06,...
    'scale',0, 'honour_x0',0);


  % custom exception
  badCase = 'DFO:BadSolverParameterCase';
  badCaseMsg = '%d is not a valid option case. Must be an integer in [-1, 1].';

  switch nargin

    case 0 % no argument -> returns info about solver

      disp(strvcat({...
'function output = wBOBYQA(prob, func, options)',...
' ',...
'wrapper for the BOBYQA solver',...
' ',...
' ',...
'ARGUMENTS',...
'---------',...
'prob (int/str): tune case if nargin==1 / problem name if nargin>1',...
' ',...
'func (function handle): handle to the objective function',...
' ',...
'options (structure):',...
' ',...
'  .x (column vector): starting point',...
' ',...
'  .bounds (structure):',...
' ',...
'    .type (string): string of length n',...
'      type(i) = "c" if variable i is continuous',...
'      type(i) = "i" if variable i is integer',...
'      type(i) = "k" if variable i is categorical',...
' ',...
'    .low (column vector): lower bounds on x',...
' ',...
'    .upp (column vector): upper bounds on x',...
' ',...
'    .cat (value cell array): i-th component is either "" when',...
'      variable i is not categorical, or a cell array of non-empty',...
'      strings defining all possible states of variable i, e.g.',...
'      { {"blue", "black"}, "", {"blue", "green", "yellow"} }',...
' ',...
'  .prt (int): printlevel',...
'    0: nothing,',...
'    1: little,',...
'    >1: more and more',...
'    there are no other options on this level,',...
'    as the solver id specifies solver-dependent options',...
' ',...
'  .resfile (str): result file (path relative to RESpath)',...
' ',...
'  .accf (float): desired maximum norm of gradient',...
' ',...
'  .nfmax (int): bounds on number of function values',...
' ',...
'  .secmax (int): bounds on number of seconds',...
' ',...
'  .redgrad (bool): return reduced gradient or not',...
'    0 is default for BBO problems',...
' ',...
'  .TuneCase (int): tuning case for solver',...
'    -1: uses options.solverParams',...
'    0: no tuning, uses default parameters of solver',...
'    >1: predefined tuning parameters',...
' ',...
'  .solverParams (structure): solver paramaters to pass through',...
'    in the user tuning case',...
' ',...
'    .npt (int): 2',...
'      number of points for quadratic approximation',...
' ',...
'    .rhobeg (float): 0.5',...
'      initial trust region radius',...
' ',...
'    .rhoend (float): 1e-06',...
'      final trust region radius',...
' ',...
'    .scale (int): 0',...
'      whether to scale the problem according to bounds',...
' ',...
'    .honour_x0 (int): 0',...
'      whether to respect the user-defiend x0',...
' ',...
' ',...
'RETURNS',...
'-------',...
'nargin == 0: returns nothing, just prints info about the solver',...
' ',...
'nargin == 1: prints info about the tuning case',...
'output (structure): info about specified tuning parameter',...
' ',...
'nargin > 1:',...
'output (structure): best point, function value and additional info',...
' ',...
'  .xbest (column vector): best point found by solver',...
' ',...
'  .fbest (float): best function value found by solver',...
' ',...
'  .solname (str): name of solver and tune case',...
'    for saving data in TESTrun',...
' ',...
'  .solverInfo (row vector): info from the solver',...
' ',...
'  .funInfo (structure): additional info'...
      }));

    case 1 % 1 argument -> returns options of solver
      TuneCase = prob;
      if TuneCase == -1
        disp(['Tuning by mixed integer solver,',...
              ' uses options.solverParams'])
      elseif TuneCase == 0
        disp('No tuning, uses default solver parameters')
      else
        try
          output = solverParams{TuneCase};
          disp('No tuning, uses predefined parameters')
        catch
          error([badCase,' ', badCaseMsg,' ', num2str(TuneCase)]);
        end
      end

    otherwise % all arguments -> calls the solver and returns its output

      bounds = options.bounds;
      TuneCase = options.TuneCase;

      if TuneCase > 0, solname = ['BOBYQA',num2str(TuneCase)];
      else, solname = 'BOBYQA';
      end

      % diary
      dline = ['===============================================',...
               '=============\n'];
      text = [dline,prob,' ',solname,' ',mytime,'\n'];
      % print on screen
      if options.prt >= 1
        fprintf(1, text);
      end
      % print on resfile
      % result file
      if isfield(options, 'resfile')
        resfile = [RESpath,'/',options.resfile];
      else
        resfile = [RESpath,'/results.res'];
      end

      fid = fopen(resfile, 'a'); % append to current file
      if fid < 0
        error('file not accessible = permissions?');
      end
      fprintf(fid, text);

      if ~isfield(finfo, 'error'), finfo.error = ' '; end

      % if no tune case is provided, uses default solver parameters
      if ~isfield(options, 'TuneCase'), TuneCase = 0; end

      if TuneCase == -1 % tuning with a mixed integer solver
        if ~isfield(options,'solverParams')
          error('DFO:EmptySolverParams',...
                'Tuning is on but options.solverParams is empty.')
        else
          params = options.solverParams;
        end
      elseif TuneCase == 0 % no tuning, uses default solver parameters
        params = [];
      else % no tuning, uses predefined parameters
        try params = solverParams{TuneCase};
        catch
          error([badCase,' ', badCaseMsg,' ', num2str(TuneCase)]);
        end
      end

      % adds paths
      eval(['addpath ',SOLpath,'/Powell/matlab/interfaces']);
     
      options.RESdiary = resfile;
      initf(solname,prob,func,bounds.low,bounds.upp,options);

      % prepare parameters
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
      
      finfo.unSol2bcProb = 0;

      % call solver
      try
        if isOctave
        
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
            
            [status,out] = system(['python ',WORKpath,...
                '/PYTHON/run_bobyqa.py ',xStr,' ',lowStr,...
                 ' ',uppStr,' ',paramsStr]);
            if status > 0
                error('an error occured while running BOBYQA');
            else            
                fileID = fopen('bobyqaResult.txt','r');
                result = textscan(fileID,'%s','Delimiter',',');
                data=result{1};
                xbest = data{1};
                fbest = data{2};
            end  
            eval(['load ',WORKpath, '/TE/finfo.mat finfo']); 
        else
            [xbest, fbest, ~, ~] = bobyqa(@funf, x, low, upp, params);    
        end
        
        output.solverInfo.xbest = xbest;
        output.solverInfo.fbest = fbest;

      catch ME
        %%%%%%%%%%%%%%%%%%%%%%%%%
        % enforce stopping test %
        %%%%%%%%%%%%%%%%%%%%%%%%%
        if ~isempty(finfo.error)
          if ~isempty(strfind(finfo.error, 'not allowed'))
            % pass on error
            error(finfo.error);
          end  
          % if a solver fails
          % (which often happens because of a designed error in fun)
          if isempty(strfind(finfo.error,'reached'))
            finfo.error = ME.message;
            if options.prt >= 1
              disp(' ');
              disp(['******************************************',...
                    '*****************']);
              disp(['******************************************',...
                    '*****************']);
              disp(['******************************************',...
                    '*****************']);
              disp(['*** error: ',ME.message]);
              stack = ME.stack;
              for i = 1:length(stack)
                file = stack(i).file;
                name = stack(i).name;
                line = stack(i).line;
                disp(['*** line ',num2str(line),' in    ',name,...
                    '    from ',file]);
              end
              disp(['******************************************',...
                    '*****************']);
              disp(['******************************************',...
                    '*****************']);
              disp(['******************************************',...
                    '*****************']);
              disp(' ');
            end
          end
          if options.prt >= 1
            disp(['stopped since ',finfo.error]);
          end
        end
      end
      if isfield(finfo,'xbest')
        x = finfo.xbest;     % point with best acc
        f = finfo.fbest;     % function value at best acc
      else
        x = finfo.x;         % point with best acc
        f = finfo.f;         % function value at best acc
      end
      acc = finfo.qbest;     % best acc
      nf  = finfo.nf;        % nf of best acc
      maxInfeas = finfo.maxInfeas;
      if acc <= options.accf, status = 0;
      elseif nf >= options.nfmax, status = 1;
      else, status = 2;
      end
      % solution status
      % copy statistics for saving
      funInfo = rmfield(finfo,{'solver','prob','func','low','upp'});
      funInfo.normxfbest = norm(finfo.xbest,inf); % solution norm
      funInfo.status = status;
      % prepares output
      output.xbest       = x;
      output.fbest       = f;
      output.solname     = solname; % for saving data in TESTrun
      output.funInfo     = funInfo;
      % diary
      % number of free variables at solution
      Ic = options.Ic; Ii = options.Ii;
      if length(Ic)>0 && length(Ii)>0
        nfree = sum(x(Ic) > bounds.clow & x(Ic) < bounds.cupp);
        nfree = nfree+sum(x(Ii) > bounds.ilow & x(Ii) < bounds.iupp);
      else
         nfree = sum(x > bounds.low & x < bounds.upp);  
      end
      text = [prob,' ',num2str(nf),': '];
      text1 = [text,sprintf('f=%22.16e\n',f)];
      text2 = ['nf=',num2str(nf),', nfr=',num2str(nfree),...
               sprintf(', status=%i, acc=%7.1e',status,acc')];
      if maxInfeas > 0
        text3 = ['\n   maximal infeasibility of evaluation points: ',...
                 num2str(maxInfeas)];
        text = [text1,text2,text3];
      else
        text = [text1,text2];
      end
      if acc <= options.accf
        text = [text,'\n accuracy achieved'];
      elseif finfo.fbest <= -1e+12
        text = [text,'\n function is unbounded below'];
      else
        text = [text,'\n accuracy too low'];
      end
      showtime0 = showtime;
      text = [text,'\n',showtime0,'\n',solname,' completed - ',mytime];
      text = [dline,text,'\n',dline,'\n\n\n'];
      % print on screen
      if TuneCase == -1
        q.cost = acc;
        if options.prt >= 1
          disp("========================================")
          disp(["cost = ",num2str(q.cost)])
          disp("========================================")
        end
      else
        if options.prt >= 1
          fprintf(1,text);
        end
      end
      % print on resfile
      fprintf(fid,text);
      fclose(fid);
  end % of nargin switch
end % of wBOBYQA


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
