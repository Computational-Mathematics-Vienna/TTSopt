
% test function for function handle test
% type
% testf(@(x) x.^2+x+1,[1,2])
% at the matlab prompt to get [3,7]

function testf(fcn,x)

% convert to function handle if needed
fcn = fcnchk(fcn,0);

fcn
fcn(x)