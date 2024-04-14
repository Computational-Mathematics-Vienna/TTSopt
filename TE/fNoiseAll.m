%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% runs multiple test problems on multiple solvers 
%


function fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr)
global WORKpath
warning off
    % start timer
    TypeVar=2;
    
     dline = ['===============================================',...
                '=============\n'];
   
      ListCollect = {'bcpMint'};

        param = struct('userName','users/kimiaei','un',1,...
        'probCollect',ListCollect,'existData',0,'targetAcc',1e-4,...
        'noisefun',1,'noiselevel',noiselevel,'noisetype',noisetype,...
        'noisedistr',noisedistr,'soListflag',false,....
        'scale','none','initPoint','standard','xinitType',1,...
        'con','bound constrained','key','DN','inc',1,...
        'res',0,'solvedByAll',0,'valueBudget','low',...
        'defaultDim',0,'refsolver','VRBBO','firstHitUpdate',0,...
        'hitupdate',0,'nfmaxStringflag',true,'secmaxStringflag',true,...
        'prt',1);

         if ~ param.soListflag 

%   param.soList     = {'UOBYQA' 'VRDFON' 'SDBOX' 'VRBBO' 'FMAES' 'BFO' 'NMSMAX' 'NOMAD'}
  
  param.soList     = {'MATRS'}

  param.TuneCase   = [1] ;

             param.TypeVar   = TypeVar; % integer
         end  
         if strcmp(param.scale,'none') 
            % choose the dimension ignoring the default which
            % is calssified by the problem scale 
            param.dimension    = [lowdim uppdim];
         end
         % choose nfmaxString and secmaxString ignoring 
         % the default for param.valueBudget
         if param.nfmaxStringflag, 
             %param.nfmaxString  = '2000*n+5000'; % MADFO paper
             param.nfmaxString  = '1200*n';
         end

         if param.secmaxStringflag, param.secmaxString = '360';
         end

         disp('initialize the paths for using TE')

         disp(['These are user-dependent and may need',...
               ' to be adapted first!'])

         ok=TEpaths(param.userName,param.probCollect);



        [soList,prList,selectBy,sortBy,info]=ChoicesTestBBO(param)
        
       
         
         resfile = [WORKpath,'/results.txt'];

         fid = fopen(resfile, 'a'); % append to current file

          if fid < 0
            resfile
            error('file not accessible = permissions?');
          end
          
      % diary
      dline = ['===============================================',...
                '=============\n'];
       text = [dline,'noiselevel',':',num2str(noiselevel),...
        ', dim: ',num2str(lowdim),'--',num2str(uppdim),...
        ', ', ' noisetype', ':', noisetype,', ',...
        'noisedistr',':',noisedistr,', time: ', time,'\n'];
    
         % print on screen
        fprintf(1, text);
        fprintf(fid,text);
        fclose(fid);
        
      
          
         TESTruns(prList,soList,info);
         
         resfile = [WORKpath,'/results.txt'];

         fid = fopen(resfile, 'a'); % append to current file

          if fid < 0
            resfile
            error('file not accessible = permissions?');
          end
         
         dline = ['===============================================',...
                  '=============\n'];
        text = [dline,'\n'];
    
         % print on screen
        fprintf(1, text);
        fprintf(fid,text);
        fclose(fid);
        warning on
end
