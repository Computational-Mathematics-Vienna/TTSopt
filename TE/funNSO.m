%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% funNSO.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function [f,g,H]=funNSO(x,userdata,req_f,req_g,req_H);
%
% computes function value and gradient of func at x
% interface for MetaNSO
%
function [f,g,H]=funNSO(x,userdata,req_f,req_g,req_H);

f=[];g=[];H=[];
if req_H==1, error('no Hessians available'); end;
if req_g,
  if req_f, [f,g]=getfg(x,3);
  else      g=getfg(x,2);
  end;
elseif req_f, 
  f=getfg(x,1);
end;
