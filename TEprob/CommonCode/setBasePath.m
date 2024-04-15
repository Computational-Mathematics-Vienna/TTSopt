%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% setBasePath.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% written by Roman Kostal
%
% in this file the base path of the directory is set by the user
% all other paths are then defined relative to this path
% the entire folder Bundle together with its subfolders should be added to 
% the MATLAB/Octave path by the user before use.
%
global basePath

% this generates the path inside the folder 'Bundle':
basePath = fullfile(fileparts(mfilename('fullpath')), '..');

% alternatively:
% basePath = 'please enter prefered hard coded path'
