%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% TESTall.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% runs multiple test problems on multiple solvers
% 
clear
clc
close all
format compact
tic  

global WORKpath

cas=2;

% switch cas
%     
%     case 1

% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-5;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-4;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
clear
clc
close all
format compact
tic  
noiselevel=10^-3;
lowdim=2;uppdim=30; noisetype='absolute'; noisedistr='uniform';
fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);


clear
clc
close all
format compact
tic  
noiselevel=10^-2;
lowdim=2;uppdim=30; noisetype='absolute'; noisedistr='uniform';
fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
clear
clc
close all
format compact
tic  
noiselevel=10^-1;
lowdim=2;uppdim=30; noisetype='absolute'; noisedistr='uniform';
fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);


% clear
% clc
% close all
% format compact
% tic  
% noiselevel=1;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=100;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% %    case 2
%         
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-5;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
%         
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-4;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-3;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-2;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-1;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=1;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=100;
% lowdim=6;uppdim=20; noisetype='absolute'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% 
%     %case 3
%         
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-5;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-4;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-3;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-2;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-1;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=1;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=100;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='uniform';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% 
% %     case 4
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-5;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-4;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-3;
% lowdim=5;uppdim=5; noisetype='relative'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-2;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10^-1;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=1;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=10;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% 
% clear
% clc
% close all
% format compact
% tic  
% noiselevel=100;
% lowdim=6;uppdim=20; noisetype='relative'; noisedistr='Gauss';
% fNoiseAll(noiselevel,lowdim,uppdim,noisetype,noisedistr);
% 
% %     otherwise
% %         
% % 
% % 
% %         
% % 
% % end
% % % 



    
disp('all problems finished')
disp('===============================================================')
disp('===============================================================')
disp('===============================================================')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




  
