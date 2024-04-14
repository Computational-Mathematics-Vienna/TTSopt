%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%% printSolverList.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% prints the list of solver names contained in the folder
% tunerWrapperGen
%
% author: Romana Jezek
%


function printSolverList()
  path = pwd;
  [w,s] = unix(['ls ',path]);
  s = strsplit(s,'\n');
  str = {};
  
  file = 'solverList.txt';
  file = [path,'/',file];
      
  fid = fopen(file,'w');
  for i= 1:length(s)
    ind=strfind(s{i},'.py');
    if ~isempty(ind)
      fprintf(fid, [substr(s{i},1,ind-1),'\n']);
    end
  end
  fclose(fid);
end
