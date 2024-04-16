%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% Time_MIPLIB.m %%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% 30.08.2021 ..... by Roman Kostal  %%%%%%%%%%%%%%%%%%

clear

% tic 
% load('PDv6.mat');
% Tv6 = toc;

% tic 
% load('PDvD.mat');
% TDef = toc;

tic
PDReadMPS = readMIPLIB('vpphard2.mps');
TReadMPS = toc;

tic 
load('PDv73_vpphard.mat');
Tv73 = toc;