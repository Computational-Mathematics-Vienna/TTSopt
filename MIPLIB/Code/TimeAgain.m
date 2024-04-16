%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Time_MIPLIB.m %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% 30.08.2021 ..... by Roman Kostal  %%%%%%%%%%%%%%%%%%

clear

tic 
load('PDv6.mat');
Tv6 = toc;

tic 
load('PDv73.mat');
Tv73 = toc;

tic 
load('PDvD.mat');
TDef = toc;

tic
PDRun = readMINLP('aa4stufen.m');
TRun = toc;