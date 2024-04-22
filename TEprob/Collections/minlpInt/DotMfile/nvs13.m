% MATLAB - BARON Interface [J.Currie I2C2]
% Interface Version: v1.39 [22/05/12]
% File Generated: 22-May-2012 13:43:59
% Model: nvs13

% Objective
fun = @(x)7*x(1)^2+6*x(2)^2+12*x(1)-77.2*x(2)+8*x(3)^2-6*x(3)*x(1)+4*x(3)*x(2)-19.2*x(3)+6*x(4)^2+2*x(4)*x(1)+2*x(4)*x(3)-36.6*x(4)+7*x(5)^2-4*x(5)*x(1)-2*x(5)*x(2)-6*x(5)*x(3)-69.4*x(5);

% Bounds
lb = [0,0,0,0,0]';
ub = [200,200,200,200,200]';

% Constraints
nlcon = @(x)[(-9*x(1)^2)-10*x(1)*x(2)-8*x(2)^2-5*x(3)^2-6*x(3)*x(1)-10*x(3)*x(2)-7*x(4)^2-10*x(4)*x(1)-6*x(4)*x(2)-2*x(4)*x(3)-2*x(5)*x(2)-7*x(5)^2;
             (-6*x(1)^2)-8*x(1)*x(2)-6*x(2)^2-4*x(3)^2-2*x(3)*x(1)-2*x(3)*x(2)-8*x(4)^2+2*x(4)*x(1)+10*x(4)*x(2)-2*x(5)*x(1)-6*x(5)*x(2)+6*x(5)*x(4)+7*x(5)^2;
             (-9*x(1)^2)-6*x(2)^2-8*x(3)^2+2*x(2)*x(1)+2*x(3)*x(2)-6*x(4)^2+4*x(4)*x(1)+4*x(4)*x(2)-2*x(4)*x(3)-6*x(5)*x(1)-2*x(5)*x(2)+4*x(5)*x(4)+6*x(5)^2;
             (-8*x(1)^2)-4*x(2)^2-9*x(3)^2-7*x(4)^2-2*x(2)*x(1)-2*x(3)*x(1)-4*x(3)*x(2)+6*x(4)*x(1)+2*x(4)*x(2)-2*x(4)*x(3)-6*x(5)*x(1)-4*x(5)*x(2)-2*x(5)*x(3)+6*x(5)*x(4)+6*x(5)^2;
             2*x(2)*x(1)-4*x(1)^2-5*x(2)^2-6*x(3)*x(1)-8*x(3)^2-2*x(4)*x(1)+6*x(4)*x(2)-2*x(4)*x(3)-6*x(4)^2-4*x(5)*x(1)+2*x(5)*x(2)-6*x(5)*x(3)-8*x(5)*x(4)-7*x(5)^2];
cl = [-1430,-1150,-850,-1125,-1030]';
cu = [Inf,Inf,Inf,Inf,Inf]';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'IIIII';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','nvs13');
opts.sense = 'min';
