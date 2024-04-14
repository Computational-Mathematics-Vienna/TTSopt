%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%% mytime.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function string=mytime;
% displays (no output argument) or returns (in string)
% current date and time in the format  
%    month day, year at hours:minutes:seconds   
% with 24 characters
%
function string=mytime;

month=[
'Jan';'Feb';'Mar';'Apr';'May';'Jun'
'Jul';'Aug';'Sep';'Oct';'Nov';'Dec'
];

c=clock; % [year month day hour minute seconds]
str=sprintf('%s %2.2i, %4d at %2.2i:%2.2i:%2.2i',...
             month(c(2),:),c(3),c(1),c(4),c(5),round(c(6)));

if nargout==0,
  disp(str)
else
  string=str;
end;

