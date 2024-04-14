%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% wVRDFON.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% function output = wVRDFON(prob, func, options)
%
% wrapper for the VRDFON solver
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
%     .mmax (int): 230
%       maximum number of best points kept
%
%     .T0 (int): 5
%       maximal number of calls to RLS in DS
%
%     .R (int): 20
%       number of random direction per subspace direction
%
%     .E (int): 1000
%       maximal number of random trials
%
%     .deltamin (float): 1.0
%       initial step size
%
%     .deltamax (float): 1.0
%       initial step size
%
%     .gamma (float): 1e-06
%       factor for adjusting forcing function
%
%     .gammaE (float): 3.0
%       factor for extrapolation test
%
%     .gammaX (float): 100.0
%       factor for adjusting X
%
%     .gammaa (float): 1e-05
%       tiny factor for finding a robustified interval
%
%     .gammar (float): 1e-30
%       factor for adjusting the random direction
%
%     .gammad1 (float): 0.1
%       factors for contracting the trust region radius
%
%     .gammad2 (float): 2.0
%       factors for expanding the trust region radius
%
%     .gammav (float): 100.0
%       factor for adjusting sc and y
%
%     .alpmin (float): 0.0001
%       minimum step size in RLS
%
%     .Q (float): 1.5
%       factor for adjusting delta
%
%     .dmin (float): 0.0001
%       minimum value for the trust region radius
%
%     .dmax (float): 100.0
%       maximum value for the trust region radius
%
%     .alow (float): 0.01
%       lower bound for initial interval
%
%     .aupp (float): 0.99
%       upper bound for initial interval
%
%     .gammap (float): 0.25
%       factor for adjusting the trust region direction
%
%     .minqeps (float): 1e-08
%       minimum threshold for stopping minq8
%
%     .minqmax (int): 10000
%       maximum number of iterations in minq8
%
%     .model (int): 1
%       use quadratic model otherwise linear model
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


function output = wVRDFON(prob, func, options)
1111
  global SOLpath RESpath finfo


  % self tuning without using mixed integer solver
  solverParams = {};
  solverParams{1} = struct('mmax',230, 'T0',5, 'R',20, 'E',1000,...
    'deltamin',1.0, 'deltamax',1.0, 'gamma',1e-06, 'gammaE',3.0,...
    'gammaX',100.0, 'gammaa',1e-05, 'gammar',1e-30, 'gammad1',0.1,...
    'gammad2',2.0, 'gammav',100.0, 'alpmin',0.0001, 'Q',1.5,...
    'dmin',0.0001, 'dmax',100.0, 'alow',0.01, 'aupp',0.99,...
    'gammap',0.25, 'minqeps',1e-08, 'minqmax',10000, 'model',1);


  % custom exception
  badCase = 'DFO:BadSolverParameterCase';
  badCaseMsg = '%d is not a valid option case. Must be an integer in [-1, 1].';

  switch nargin

    case 0 % no argument -> returns info about solver

      disp(strvcat({...
'function output = wVRDFON(prob, func, options)',...
' ',...
'wrapper for the VRDFON solver',...
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
'    .mmax (int): 230',...
'      maximum number of best points kept',...
' ',...
'    .T0 (int): 5',...
'      maximal number of calls to RLS in DS',...
' ',...
'    .R (int): 20',...
'      number of random direction per subspace direction',...
' ',...
'    .E (int): 1000',...
'      maximal number of random trials',...
' ',...
'    .deltamin (float): 1.0',...
'      initial step size',...
' ',...
'    .deltamax (float): 1.0',...
'      initial step size',...
' ',...
'    .gamma (float): 1e-06',...
'      factor for adjusting forcing function',...
' ',...
'    .gammaE (float): 3.0',...
'      factor for extrapolation test',...
' ',...
'    .gammaX (float): 100.0',...
'      factor for adjusting X',...
' ',...
'    .gammaa (float): 1e-05',...
'      tiny factor for finding a robustified interval',...
' ',...
'    .gammar (float): 1e-30',...
'      factor for adjusting the random direction',...
' ',...
'    .gammad1 (float): 0.1',...
'      factors for contracting the trust region radius',...
' ',...
'    .gammad2 (float): 2.0',...
'      factors for expanding the trust region radius',...
' ',...
'    .gammav (float): 100.0',...
'      factor for adjusting sc and y',...
' ',...
'    .alpmin (float): 0.0001',...
'      minimum step size in RLS',...
' ',...
'    .Q (float): 1.5',...
'      factor for adjusting delta',...
' ',...
'    .dmin (float): 0.0001',...
'      minimum value for the trust region radius',...
' ',...
'    .dmax (float): 100.0',...
'      maximum value for the trust region radius',...
' ',...
'    .alow (float): 0.01',...
'      lower bound for initial interval',...
' ',...
'    .aupp (float): 0.99',...
'      upper bound for initial interval',...
' ',...
'    .gammap (float): 0.25',...
'      factor for adjusting the trust region direction',...
' ',...
'    .minqeps (float): 1e-08',...
'      minimum threshold for stopping minq8',...
' ',...
'    .minqmax (int): 10000',...
'      maximum number of iterations in minq8',...
' ',...
'    .model (int): 1',...
'      use quadratic model otherwise linear model',...
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

      if TuneCase > 0, solname = ['VRDFON',num2str(TuneCase)];
      else, solname = 'VRDFON';
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

      if ~isfield(options, 'noisefun'), options.noisefun = 0; end

      if options.noisefun
        if ~isfield(options, 'noise')
          error('noise variable should be chosen in TESTall')
        end
      end

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
      eval(['addpath ',SOLpath,'/VRDFON']);

      % calls initf
      if isfield(options,'redgrad'), redgrad = options.redgrad;
      else, redgrad = 0;
      end
      options.RESdiary = resfile;

      initf(solname,prob,func,bounds.low,bounds.upp,options);

      % prepare parameters
      x = options.x;
      
      params.deltamin = -inf;
      
      st.secmax = inf;
      st.nfmax = inf;
      st.accf = -inf;
      st.fbest = 0;
      st.prt = -2;
      
      if params.deltamin > params.deltamax
        params.deltamax = params.deltamin + 1e-10;
      end
      
      finfo.unSol2bcProb = 0;

      % call solver
      try
        [xbest, fbest, ~] = VRDFON(@funf, x, st, params);
        
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
      acc = finfo.abest;     % best acc
      nf  = finfo.nf;        % nf of best acc

      maxInfeas = finfo.maxInfeas;

      if acc <= options.accf, status = 0;
      elseif nf >= options.nfmax, status = 1;
      else, status = 2;
      end

      % solution status
      % copy statistics for saving
      funInfo = rmfield(finfo,{'solver','prob','func','low','upp'});
      funInfo.normxfbest = norm(finfo.xfbest,inf); % solution norm
      funInfo.status = status;

      % prepares output
      output.xbest       = x;
      output.fbest       = f;
      output.solname     = solname; % for saving data in TESTrun
      output.funInfo     = funInfo;

      % diary
      % number of free variables at solution
      nfree = sum(x > bounds.low & x < bounds.upp);
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

end % of wVRDFON


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
