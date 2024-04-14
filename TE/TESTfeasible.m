%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%% TESTfeasible.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function  TESTfeasible(RUNparam,x,state)
global finfo TEpath HITpath  WORKpath
randvalue = 1%ceil(exp(rand*10));
% load LCinfo
[s,~]=unix(['ls ',WORKpath,'/LCinfo.mat']);
if s==0  % load hitlist
    eval(['load ',WORKpath,'/LCinfo.mat'])
else
    error('LCinfo was not created')
end    
cas=-1; tol = [1e-10 1e-8 1e-6 1e-4 1e-2];
if state % only for the first try
    warning off
    bounds=RUNparam.bounds; constrInfo=RUNparam.constrInfo;
    % call bl,bu,E,P,A, obtained by TESTrun from CUTEST
    if isfield(constrInfo, 'bl'), bl = constrInfo.bl; 
    else, bl = []; 
    end
    if isfield(constrInfo, 'bu'), bu = constrInfo.bu; 
    else,  bu = [];
    end
    if isfield(constrInfo, 'E'), E = constrInfo.E; 
    else,  E = []; 
    end
    if isfield(constrInfo, 'P'), P = constrInfo.P; 
    else,  P = [];
    end
    if isfield(constrInfo, 'A'), A = constrInfo.A; 
    else,  A = [];
    end
    % call bounds on variable, obtained by TESTrun from CUTEST
    lb = bounds.low; ub = bounds.upp;
    n=length(x); 
    % options for linprog
    options = optimoptions('linprog','Algorithm','dual-simplex');
    options.MaxIterations = 10000; 
    %options.Display = 'off';
    % load TE
    name = finfo.name;
    eval(['load ',TEpath,'/TE.mat TE'])
    eval(['probnam=TE.problem.',name,';'])
    probnam.lb=lb; probnam.ub=ub;
    % form AP1,bP1,AE1,bE1,P1,E1 by transforming
    % bl(P) <=AP*x <= bu(P) into AP1*x <=bP1
    if ~isempty(P)
       AP  = A(P,:); buP=bu(P);  blP=bl(P); 
       AP1  = [AP;-AP];
       bP1  = [buP;-blP];
       Ib   = find(bP1<1e20&bP1>-1e20);
       AP1  = AP1(Ib,:); % remove inf from entries of AP if any
       bP1  = bP1(Ib);   % remove inf from components of bP if any
    else
        AP=[]; bP =[]; AP1=[];  bP1  = [];
    end
    if ~isempty(E), AE=A(E,:);  blE=bl(E); % blE=buE
    else, AE=[]; blE=[];
    end
    A1 = [AP1;AE]; AE1=AE; bE1=blE;
    P1 = 1:size(AP1,1);
    if ~isempty(E), E1  = size(AP1,1)+1:size(A1,1); 
    else, E1=E;
    end
    % form AP2,bP2,AE2,bE2,P2,E2 by transforming
    %  lb<=x<=ub and AP1*x<= bP1 into AP2*x<= bP2
    Ifl = lb > -1e20;
    idmatrix = eye(n, n);
    Alb = idmatrix(Ifl, :);
    Ifu = ub < 1e20;
    Aub = idmatrix(Ifu, :);
    lb1 = lb(Ifl); % Remove infinity bounds!
    ub1 = ub(Ifu);  % Remove infinity bounds!
    AP2  = [AP1; Aub; -Alb]; bP2  = [bP1; ub1; -lb1];
    A2   = [AP2;AE1]; b2 = [bP2;bE1];
    P2   = 1:size(AP2,1);
    
    if ~isempty(E1), E2  = size(AP2,1)+1:size(A2,1);
    else,  E2=E1;
    end
    AE2=AE; bE2=blE;
    xinit = x;
else
    name = finfo.name;
    [s,~]=unix(['ls ',HITpath,'/',name,'.mat']);
    if s==0
       % load hitlist
       eval(['load ',HITpath,'/',name])
       x   = hitlist.minf.x;
       n = length(x);
    else
        error('hitlist was not created')
    end
    name = finfo.name;
    eval(['load ',TEpath,'/TE.mat TE'])
    eval(['probnam=TE.problem.',name,';'])
    E2             = probnam.E;  
    P2             = probnam.P;
    AP2            = probnam.AP;
    bP2            = probnam.bP;
    AE2            = probnam.AE; 
    bE2            = probnam.bE;
    A2             = probnam.A;
    b2             = probnam.b;
    lb             = probnam.lb;
    ub             = probnam.ub;
    cas0           = probnam.cas;
end
if isempty(P2) 
   x0 = AE2\bE2; 
   maxInfeas = max(abs(AE2*x0-bE2));
    probnam.maxInfeas1 = maxInfeas; 
    probnam.maxInfeas2 = maxInfeas;
   if maxInfeas<=1e-6 % the problem is feasible
      probnam.status1  =  'P is empty; only one feasible point exists';
      probnam.status2  = probnam.status1;
      probnam.x02=x0;
      probnam.x01=x0;
      probnam.feasibleOK1 = 1;
      probnam.feasibleOK2 = 1;
      probnam.maxInfeas1=maxInfeas;
      probnam.maxInfeas2=maxInfeas;
      probnam.x0=x0;
      probnam.S=[]; 
      probnam.B=[];
      probnam.r0=[];
      cas=0;
   else % the problem is infeasible
        probnam.status1  = 'P is empty; the problem is infeasible'; 
        probnam.status2  = probnam.status1;
        probnam.x02=[];
        probnam.COI=[];
        probnam.feasibleOK1 = 0;
        probnam.feasibleOK2 = 0;
        probnam.x02 = [];
        probnam.x01 = x0;
        probnam.maxInfeas1=maxInfeas;
        probnam.maxInfeas2=maxInfeas;
        probnam.x0=x0;
        probnam.S=[]; 
        probnam.B=[];
        probnam.r0=[];
        cas=1;
   end
    
    probnam.E  = E2;  
    probnam.AP = AP2;
    probnam.bP = bP2;
    probnam.AE = AE2; 
    probnam.bE = bE2;
    probnam.P  = P2;
    probnam.A  = A2;
    probnam.b  = b2;
    probnam.cas = cas;
      
   psid=['TE.problem.',probnam.name];
   eval([psid,'=probnam;'])
   eval(['save ',TEpath,'/TE.mat TE'])
   
end
OK = ~isempty(P2);
if ~state,
    name = finfo.name;
    eval(['load ',TEpath,'/TE.mat TE'])
    eval(['probnam=TE.problem.',name,';'])
    % options for linprog
    options = optimoptions('linprog','Algorithm','dual-simplex');
    options.MaxIterations = 10000; 
    %options.Display = 'off';
    xinit = x;
    OK = (~probnam.feasibleOK2 && OK); 
end

if OK % form the first problem 
   if state % first try 
       probnam.maxInfeas1 = max(max(0,AP2*xinit -bP2));
         if probnam.maxInfeas1 > 1e-6
               cas =2;
                if isempty(E2)
                     AP3  = [AP2 zeros(length(bP2),1);zeros(1,length(x)) -1];
                     bP3  = [bP2; randvalue];
                     AE3  = AE2;
                else
                     mAE  = size(AE2,1);
                     AE3  = [AE2 zeros(mAE,1)];
                     AP3  = [AP2 zeros(length(bP2),1);zeros(1,length(x)) -1];
                     bP3  = [bP2; randvalue];
               end
               bE3  = bE2;
               A3   = [AP3;AE3]; 
               b3   = [bP3;bE3];
               P3   = 1:size(AP3,1);
               if ~isempty(E2), E3  = size(AP3,1)+1:size(A3,1);
               else, E3=[];
               end
               % the first try to find an initial feasible point
               options.OptimalityTolerance = tol(1);
               [x0,f0,exitflag,~,lam] =  ...
                                   linprog([zeros(1,length(x)) 1],AP3,bP3,...
                                                        AE3,bE3,[],[],options);
               ii=1;
               while 1
                  % the second try to find an initial feasible point 
                   options.OptimalityTolerance=tol(ii); 
                   [x0,f0,exitflag,~,lam] =  ...
                                   linprog([zeros(1,length(x)) 1],AP3,bP3,...
                                                          AE3,bE3,[],[],options);

                    ii=ii+1;
                   if ~isempty(x0) && ii>length(tol), x0=x0(1:end-1); 
                     probnam.maxInfeas1 = max(max(0,AP2*x0 -bP2));
                       if  probnam.maxInfeas1<= 1e-6
                            probnam.status1 = 'linprog found an initial feasible point'; 
                            probnam.feasibleOK1 = 1;
                            probnam.x01 = x0; x=x0;


                       else
                            probnam.status1 = 'linprog cannot found an initial feasible point'; 
                            probnam.feasibleOK1 = 0;
                            probnam.x01 = xinit; 

                       end
                         break;
                   elseif isempty(x0)
                        probnam.maxInfeas1= inf;
                        probnam.status1 = 'linprog cannot found an initial feasible point'; 
                        probnam.feasibleOK1 = 0;
                        probnam.x01 = xinit; 
                        break;
                   else
                        x0=x0(1:end-1);
                        probnam.maxInfeas1 = max(max(0,AP2*x0 -bP2));
                        probnam.status1 = 'linprog cannot found an initial feasible point'; 
                        probnam.feasibleOK1 = 0;
                        probnam.x01 = xinit; 
                        break; 
                    end

               end
         else
               cas = 3;
               probnam.status1 = 'the initial point is feasible'; 
               probnam.feasibleOK1 = 0;
               probnam.x01 = xinit; 
           
             
         end
        
        probnam.E  = E2;  
        probnam.AP = AP2;
        probnam.bP = bP2;
        probnam.AE = AE2; 
        probnam.bE = bE2;
        probnam.P  = P2;
        probnam.A  = A2;
        probnam.b  = b2;
        probnam.cas = cas;
   end
end
   
  
 
 
if (~state && cas==-1 || ismember(cas,[2 3])) 
      
      % the first problem is feasible:
      % form the second problem and find
      % strictly feasible point by linprog
       up  = 1+2*max(0,AP2*x-bP2);
       if isempty(E2)
             AP4  = [AP2 -up;zeros(1,length(x)) -1];
             bP4  = [bP2; randvalue];
             AE4  = AE2;
        else
             mAE  = size(AE2,1);
             AE4  = [AE2 zeros(mAE,1)];
             AP4  = [AP2 -up;zeros(1,length(x)) -1];
             bP4  = [bP2; randvalue];
       end
        bE4  = bE2;
        A4   = [AP4;AE4]; 
        b4   = [bP4;bE4];
        P4   = 1:size(AP4,1);
        if ~isempty(E2), E4  = size(AP4,1)+1:size(A4,1);
        else, E4=[];
        end
       
        
      % CIA = 0;
       implied = 0;
       while  1  % main loop
           i=1;
           while 1
              % the second try to find an initial feasible point 
               options.OptimalityTolerance=tol(i); 
               [x0,f0,~,~,lam] =  ...
                          linprog([zeros(1,length(x)) 1],AP4,bP4,...
                                                AE4,bE4,[],[],options);
                i=i+1;
                if ~isempty(x0)&& i>length(tol), x0=x0(1:end-1); 
                 probnam.maxInfeas2 = max(max(0,AP2*x0 -bP2));
                 break;
                elseif isempty(x0)
                    probnam.maxInfeas2 = inf;
                    break
                else
                    x0=x0(1:end-1);
                    probnam.maxInfeas2 = max(max(0,AP2*x0 -bP2));
                    break; 
                end
           end
          
          if ~isempty(lam) && probnam.maxInfeas2<=1e-6
               % check for a certificate for implied activties
               y     = zeros(length(P4)+length(E4),1);
               y(E4) = -lam.eqlin; y(P4) =  min(-lam.ineqlin,0);
               if norm(y)~=0, y=y/norm(y,inf); end
              % if norm(A4)~=0, A4=A4/norm(A4,inf); end
               normATy=norm(A4'*y), bTy=b4'*y,
               implied = 0;
              
               if (normATy <=1e-6 && abs(bTy)<=1e-6) 
                   %CIA = CIA+y;
                   iterImplied =0; maxiter= length(P4); 
                    for ii=1:length(P4)
                         if y(ii)<-1e-6 % ii is an implied activty
                            P4  = setdiff(P4,ii);
                            E4  = [E4 ii];
                            iterImplied = iterImplied +1; implied =1;
                         end
                    end
                    if implied 
                        remIndex = length(P4);
                        if ismember(remIndex,P4)
                            P2=setdiff(P4,remIndex);
                            A4(:,end)=[];
                        elseif ismember(remIndex,E4)
                            E2=setdiff(E4,remIndex);
                            A4(:,end)=[];
                        else
                            error([num2str(remIndex),' must be in P4 or E4'])
                        end
                       
                        AP2  = A4(P2,:);
                        AE2  = A4(E2,:);
                        bP2  = b4(P2);
                        bE2  = b4(E2);
                        
                        A2   = [AP2;AE2];
                        b2   = [bP2;bE2];
                        
                        P2   = 1:size(AP2,1);
                        if ~isempty(bE2), E2  = size(AP2,1)+1:size(A2,1);
                        else, E2=[];
                        end
                        
                        if iterImplied==maxiter % I=P
                            % a minimally active point was found
                            probnam.status2 = ['a minimally active feasible',...
                                ' point was found'];
                            probnam.feasibleOK2=1;
                            probnam.r0 = AP2*x0-bP2;
                            probnam.S  = null(AE2);
                            if isempty(probnam.S),
                                probnam.S  = eye(n);
                            end
                            probnam.B = AP2*probnam.S;
                            cas=4;
                            break;
                        end
                        % I is subset of P; go on the loop
                        up  = 1+2*max(0,AP2*x-bP2);
                        if isempty(E2)
                            AP4  = [AP2 -up;zeros(1,length(x)) -1];
                            bP4  = [bP2; randvalue];
                            AE4  = AE2;
                        else
                            mAE  = size(AE2,1);
                            AE4  = [AE2 zeros(mAE,1)];
                            AP4  = [AP2 -up;zeros(1,length(x)) -1];
                            bP4  = [bP2; randvalue];
                        end
                        bE4  = bE2;
                        A4   = [AP4;AE4];
                        b4   = [bP4;bE4];
                        P4   = 1:size(AP4,1);
                        if ~isempty(E2), E4  = size(AP4,1)+1:size(A4,1);
                        else, E4=[];
                        end
                    end
               else
                   break;
               end
          else % linprog cannot find a strictly feasible point
                cas=5;
                probnam.feasibleOK2=0;
                probnam.status2 = ...
                 'linprog could not find a strictly feasible point'; 
                probnam.x02 = []; 
                probnam.S=[]; 
                probnam.B=[];
                probnam.r0=[];
                break;
          end
       end
       
        probnam.E  = E2;  
        probnam.AP = AP2;
        probnam.bP = bP2;
        probnam.AE = AE2; 
        probnam.bE = bE2;
        probnam.P  = P2;
        probnam.A  = A2;
        probnam.b  = b2;
        probnam.cas = cas;
       
       if ~implied && ~isempty(x0) % P'=P;
          if max(max(0,AP2*x0 -bP2))<=1e-6
           % a strictly feasible point was found
           probnam.feasibleOK2=1;

           probnam.status2 = ['a strictly feasible',...
                             ' point was found'];
           probnam.x02  = x0; 
           probnam.r0   = AP2*x0-bP2;
           probnam.S    = null(AE2);
           if isempty(probnam.S)
               probnam.S = eye(n); 
           end
           probnam.B = AP2*probnam.S;
           cas=6;
        else % check infeasibility
            y     = zeros(length(P4)+length(E4),1);
            y(E4) = -lam.eqlin; 
            y(P4) = min(-lam.ineqlin,0);
            
           if norm(y)~=0, y=y/norm(y,inf); end

            normATy=norm(A4'*y), bTy=b4'*y
            
           % the first problem is infeasible
           if (normATy <=1e-6 && bTy>1e-6) % ||f0>1e-6
               cas = 7;
               probnam.status1  = 'problem infeasible, COI exists';  
               probnam.status2  = probnam.status1;  
               probnam.feasibleOK1=0;
               probnam.feasibleOK2=0;
               probnam.x0  = xinit;
               probnam.x01 = [];
               probnam.x02 = []; 
               probnam.S   = []; 
               probnam.B   = [];
               probnam.r0  = [];
               probnam.COI = y;
           else % change tolerance for implied acivity
                cas=8;
                probnam.feasibleOK2=0;
                probnam.status2 = ...
                 'no decision was found'; 
                probnam.x02 = []; 
                probnam.S=[]; 
                probnam.B=[];
                probnam.r0=[];
           end
          end
       else
            cas=5;
            probnam.feasibleOK2=0;
            probnam.status2 = ...
             'linprog could not find a strictly feasible point'; 
            probnam.x02 = []; 
            probnam.S=[]; 
            probnam.B=[];
            probnam.r0=[];
       end
       probnam.cas = cas;
end 
   
  
   
   
psid=['TE.problem.',probnam.name];
eval([psid,'=probnam;'])
eval(['save ',TEpath,'/TE.mat TE'])

       


    


if ~state % the second try or more and more tries ...
    if ismember(cas0,5) &&  ismember(cas,[4 6])
        if all(ismember(LCinfo.list_sfeasible,name)==0)
           LCinfo.n_sfeasible = LCinfo.n_sfeasible+1;
           LCinfo.list_sfeasible{LCinfo.n_sfeasible}=name;
           if  all(ismember(LCinfo.list_unsucc,name)~=0)
             LCinfo.list_unsucc{LCinfo.n_unsucc}=[];
             LCinfo.list_maxInfeasible{LCinfo.n_unsucc}=[];
             LCinfo.n_unsucc = LCinfo.n_unsucc-1;
           end
        end
    elseif ismember(cas0,5) &&  ismember(cas,7)
        if all(ismember(LCinfo.list_ifeasible,name)==0) 
            LCinfo.n_ifeasible = LCinfo.n_ifeasible+1;
            LCinfo.list_ifeasible{LCinfo.n_ifeasible}=name;
          if  all(ismember(LCinfo.list_unsucc,name)~=0)
             LCinfo.list_unsucc{LCinfo.n_unsucc}=[];
             LCinfo.list_maxInfeasible{LCinfo.n_unsucc}=[];
             LCinfo.n_unsucc = LCinfo.n_unsucc-1;
           end
        end
    end
    
    if ismember(cas0,8) &&  ismember(cas,[4 6])
        if all(ismember(LCinfo.list_sfeasible,name)==0)
           LCinfo.n_sfeasible = LCinfo.n_sfeasible+1;
           LCinfo.list_sfeasible{LCinfo.n_sfeasible}=name;
           if  all(ismember( LCinfo.list_nodecision,name)~=0)
             LCinfo.list_nodecision{LCinfo.n_nodecision}=[];
             LCinfo.n_nodecision = LCinfo.n_nodecision-1;
           end
        end
    elseif ismember(cas0,8) &&  ismember(cas,7)
        if all(ismember(LCinfo.list_ifeasible,name)==0) 
            LCinfo.n_ifeasible = LCinfo.n_ifeasible+1;
            LCinfo.list_ifeasible{LCinfo.n_ifeasible}=name;
            if  all(ismember( LCinfo.list_nodecision,name)~=0)
             LCinfo.list_nodecision{LCinfo.n_nodecision}=[];
             LCinfo.n_nodecision = LCinfo.n_nodecision-1;
           end
        end
    end
    
    [s,~]=unix(['ls ',HITpath,'/',name,'.mat']);
    if RUNparam.initHitVar, s=1; end
    if s==0
        % load hitlist
        eval(['load ',HITpath,'/',name])
        x   = hitlist.minf.x;
        xlc = hitlist.minfLC.x;
        if ~isempty(xlc) && ~isempty(P2)
                        
            bbar  = b2-A2*xlc-1e-6; % *ones(length(b2));
            abar  = A2*(x-xlc);
            ratio = bbar./abar;
            I     = find(~isnan(ratio)& isinf(ratio)&ratio>0);
            if ~isempty(I)
                ratio=ratio(I); t = min(ratio); t = 0.95*t;
                xlc = xlc+t*(x-xlc);
                % check feasibility
                infeasLC = max(max(0,AP2*xlc -bP2));
                if infeasLC<=1e-6
                    hitlist.minfLC.x = xlc+t*(x-xlc);
                    disp('*** xlc updated ***');
                    eval(['save ',HITpath,'/',finfo.name,'.mat hitlist'])
                end
            end
         end
    end
else
    if ismember(cas,7) % the problem is infeasible
      if all(ismember(LCinfo.list_ifeasible,name)==0)
         LCinfo.n_ifeasible = LCinfo.n_ifeasible+1;
         LCinfo.list_ifeasible{LCinfo.n_ifeasible}=name;
      end
    elseif ismember(cas,[4 6 ]) % a strictly point was found
        if all(ismember(LCinfo.list_sfeasible,name)==0)
          LCinfo.n_sfeasible = LCinfo.n_sfeasible+1;
          LCinfo.list_sfeasible{LCinfo.n_sfeasible}=name;
        end
    elseif ismember(cas,5) % linprog could not find a strictly point
         if all(ismember(LCinfo.list_unsucc,name)==0)
           LCinfo.n_unsucc = LCinfo.n_unsucc+1;
           LCinfo.list_unsucc{LCinfo.n_unsucc}=name;
           LCinfo.list_maxInfeasible = ...
                        [LCinfo.list_maxInfeasible probnam.maxInfeas2];
         end
    elseif ismember(cas,8) % no decision
          if all(ismember(LCinfo.list_nodecision,name)==0)
           LCinfo.n_nodecision = LCinfo.n_nodecision+1;
           LCinfo.list_nodecision{LCinfo.n_nodecision}=name;
         end
    end
end
eval(['save ',WORKpath,'/LCinfo.mat LCinfo' ])
cas
probnam
end
