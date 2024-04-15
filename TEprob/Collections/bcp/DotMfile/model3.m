% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 06-Jun-2016 04:10:05
% Model: model3

% Objective
fun = @(x)(92.9-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(78.7-exp(-0.625*x(1))/(x(2)+0.625*x(3)))^2+(64.2-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(64.9-exp(-0.875*x(1))/(x(2)+0.875*x(3)))^2+(57.1-exp(-x(1))/(x(2)+x(3)))^2+(43.3-exp(-1.25*x(1))/(x(2)+1.25*x(3)))^2+(31.1-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(23.6-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(31.05-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(23.775-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(17.7375-exp(-2.75*x(1))/(x(2)+2.75*x(3)))^2+(13.8-exp(-3.25*x(1))/(x(2)+3.25*x(3)))^2+(11.5875-exp(-3.75*x(1))/(x(2)+3.75*x(3)))^2+(9.4125-exp(-4.25*x(1))/(x(2)+4.25*x(3)))^2+(7.725-exp(-4.75*x(1))/(x(2)+4.75*x(3)))^2+(7.35-exp(-5.25*x(1))/(x(2)+5.25*x(3)))^2+(8.025-exp(-5.75*x(1))/(x(2)+5.75*x(3)))^2+(90.6-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(76.9-exp(-0.625*x(1))/(x(2)+0.625*x(3)))^2+(71.6-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(63.6-exp(-0.875*x(1))/(x(2)+0.875*x(3)))^2+(54-exp(-x(1))/(x(2)+x(3)))^2+(39.2-exp(-1.25*x(1))/(x(2)+1.25*x(3)))^2+(29.3-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(21.4-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(29.175-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(22.125-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(17.5125-exp(-2.75*x(1))/(x(2)+2.75*x(3)))^2+(14.25-exp(-3.25*x(1))/(x(2)+3.25*x(3)))^2+(9.45-exp(-3.75*x(1))/(x(2)+3.75*x(3)))^2+(9.15-exp(-4.25*x(1))/(x(2)+4.25*x(3)))^2+(7.9125-exp(-4.75*x(1))/(x(2)+4.75*x(3)))^2+(8.475-exp(-5.25*x(1))/(x(2)+5.25*x(3)))^2+(6.1125-exp(-5.75*x(1))/(x(2)+5.75*x(3)))^2+(80-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(79-exp(-0.625*x(1))/(x(2)+0.625*x(3)))^2+(63.8-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(57.2-exp(-0.875*x(1))/(x(2)+0.875*x(3)))^2+(53.2-exp(-x(1))/(x(2)+x(3)))^2+(42.5-exp(-1.25*x(1))/(x(2)+1.25*x(3)))^2+(26.8-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(20.4-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(26.85-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(21-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(16.4625-exp(-2.75*x(1))/(x(2)+2.75*x(3)))^2+(12.525-exp(-3.25*x(1))/(x(2)+3.25*x(3)))^2+(10.5375-exp(-3.75*x(1))/(x(2)+3.75*x(3)))^2+(8.5875-exp(-4.25*x(1))/(x(2)+4.25*x(3)))^2+(7.125-exp(-4.75*x(1))/(x(2)+4.75*x(3)))^2+(6.1125-exp(-5.25*x(1))/(x(2)+5.25*x(3)))^2+(5.9625-exp(-5.75*x(1))/(x(2)+5.75*x(3)))^2+(74.1-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(67.3-exp(-0.625*x(1))/(x(2)+0.625*x(3)))^2+(60.8-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(55.5-exp(-0.875*x(1))/(x(2)+0.875*x(3)))^2+(50.3-exp(-x(1))/(x(2)+x(3)))^2+(41-exp(-1.25*x(1))/(x(2)+1.25*x(3)))^2+(29.4-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(20.4-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(29.3625-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(21.15-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(16.7625-exp(-2.75*x(1))/(x(2)+2.75*x(3)))^2+(13.2-exp(-3.25*x(1))/(x(2)+3.25*x(3)))^2+(10.875-exp(-3.75*x(1))/(x(2)+3.75*x(3)))^2+(8.175-exp(-4.25*x(1))/(x(2)+4.25*x(3)))^2+(7.35-exp(-4.75*x(1))/(x(2)+4.75*x(3)))^2+(5.9625-exp(-5.25*x(1))/(x(2)+5.25*x(3)))^2+(5.625-exp(-5.75*x(1))/(x(2)+5.75*x(3)))^2+(81.5-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(62.4-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(32.5-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(12.41-exp(-3*x(1))/(x(2)+3*x(3)))^2+(13.12-exp(-3*x(1))/(x(2)+3*x(3)))^2+(15.56-exp(-3*x(1))/(x(2)+3*x(3)))^2+(5.63-exp(-6*x(1))/(x(2)+6*x(3)))^2+(78-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(59.9-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(33.2-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(13.84-exp(-3*x(1))/(x(2)+3*x(3)))^2+(12.75-exp(-3*x(1))/(x(2)+3*x(3)))^2+(14.62-exp(-3*x(1))/(x(2)+3*x(3)))^2+(3.94-exp(-6*x(1))/(x(2)+6*x(3)))^2+(76.8-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(61-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(32.9-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(13.87-exp(-3*x(1))/(x(2)+3*x(3)))^2+(11.81-exp(-3*x(1))/(x(2)+3*x(3)))^2+(13.31-exp(-3*x(1))/(x(2)+3*x(3)))^2+(5.44-exp(-6*x(1))/(x(2)+6*x(3)))^2+(78-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(63.5-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(33.8-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(12.56-exp(-3*x(1))/(x(2)+3*x(3)))^2+(5.63-exp(-6*x(1))/(x(2)+6*x(3)))^2+(12.75-exp(-3*x(1))/(x(2)+3*x(3)))^2+(13.12-exp(-3*x(1))/(x(2)+3*x(3)))^2+(5.44-exp(-6*x(1))/(x(2)+6*x(3)))^2+(76.8-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(60-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(47.8-exp(-x(1))/(x(2)+x(3)))^2+(32-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(22.2-exp(-2*x(1))/(x(2)+2*x(3)))^2+(22.57-exp(-2*x(1))/(x(2)+2*x(3)))^2+(18.82-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(13.95-exp(-3*x(1))/(x(2)+3*x(3)))^2+(11.25-exp(-4*x(1))/(x(2)+4*x(3)))^2+(9-exp(-5*x(1))/(x(2)+5*x(3)))^2+(6.67-exp(-6*x(1))/(x(2)+6*x(3)))^2+(75.8-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(62-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(48.8-exp(-x(1))/(x(2)+x(3)))^2+(35.2-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(20-exp(-2*x(1))/(x(2)+2*x(3)))^2+(20.32-exp(-2*x(1))/(x(2)+2*x(3)))^2+(19.31-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(12.75-exp(-3*x(1))/(x(2)+3*x(3)))^2+(10.42-exp(-4*x(1))/(x(2)+4*x(3)))^2+(7.31-exp(-5*x(1))/(x(2)+5*x(3)))^2+(7.42-exp(-6*x(1))/(x(2)+6*x(3)))^2+(70.5-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(59.5-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(48.5-exp(-x(1))/(x(2)+x(3)))^2+(35.8-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(21-exp(-2*x(1))/(x(2)+2*x(3)))^2+(21.67-exp(-2*x(1))/(x(2)+2*x(3)))^2+(21-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(15.64-exp(-3*x(1))/(x(2)+3*x(3)))^2+(8.17-exp(-4*x(1))/(x(2)+4*x(3)))^2+(8.55-exp(-5*x(1))/(x(2)+5*x(3)))^2+(10.12-exp(-6*x(1))/(x(2)+6*x(3)))^2+(78-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(66-exp(-0.625*x(1))/(x(2)+0.625*x(3)))^2+(62-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(58-exp(-0.875*x(1))/(x(2)+0.875*x(3)))^2+(47.7-exp(-x(1))/(x(2)+x(3)))^2+(37.8-exp(-1.25*x(1))/(x(2)+1.25*x(3)))^2+(20.2-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(21.07-exp(-2.25*x(1))/(x(2)+2.25*x(3)))^2+(13.87-exp(-2.75*x(1))/(x(2)+2.75*x(3)))^2+(9.67-exp(-3.25*x(1))/(x(2)+3.25*x(3)))^2+(7.76-exp(-3.75*x(1))/(x(2)+3.75*x(3)))^2+(5.44-exp(-4.25*x(1))/(x(2)+4.25*x(3)))^2+(4.87-exp(-4.75*x(1))/(x(2)+4.75*x(3)))^2+(4.01-exp(-5.25*x(1))/(x(2)+5.25*x(3)))^2+(3.75-exp(-5.75*x(1))/(x(2)+5.75*x(3)))^2+(24.19-exp(-3*x(1))/(x(2)+3*x(3)))^2+(25.76-exp(-3*x(1))/(x(2)+3*x(3)))^2+(18.07-exp(-3*x(1))/(x(2)+3*x(3)))^2+(11.81-exp(-3*x(1))/(x(2)+3*x(3)))^2+(12.07-exp(-3*x(1))/(x(2)+3*x(3)))^2+(16.12-exp(-3*x(1))/(x(2)+3*x(3)))^2+(70.8-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(54.7-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(48-exp(-x(1))/(x(2)+x(3)))^2+(39.8-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(29.8-exp(-2*x(1))/(x(2)+2*x(3)))^2+(23.7-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(29.62-exp(-2*x(1))/(x(2)+2*x(3)))^2+(23.81-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(17.7-exp(-3*x(1))/(x(2)+3*x(3)))^2+(11.55-exp(-4*x(1))/(x(2)+4*x(3)))^2+(12.07-exp(-5*x(1))/(x(2)+5*x(3)))^2+(8.74-exp(-6*x(1))/(x(2)+6*x(3)))^2+(80.7-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(61.3-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(47.5-exp(-x(1))/(x(2)+x(3)))^2+(29-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(24-exp(-2*x(1))/(x(2)+2*x(3)))^2+(17.7-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(24.56-exp(-2*x(1))/(x(2)+2*x(3)))^2+(18.67-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(16.24-exp(-3*x(1))/(x(2)+3*x(3)))^2+(8.74-exp(-4*x(1))/(x(2)+4*x(3)))^2+(7.87-exp(-5*x(1))/(x(2)+5*x(3)))^2+(8.51-exp(-6*x(1))/(x(2)+6*x(3)))^2+(66.7-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(59.2-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(40.8-exp(-x(1))/(x(2)+x(3)))^2+(30.7-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(25.7-exp(-2*x(1))/(x(2)+2*x(3)))^2+(16.3-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(25.99-exp(-2*x(1))/(x(2)+2*x(3)))^2+(16.95-exp(-2.5*x(1))/(x(2)+2.5*x(3)))^2+(13.35-exp(-3*x(1))/(x(2)+3*x(3)))^2+(8.62-exp(-4*x(1))/(x(2)+4*x(3)))^2+(7.2-exp(-5*x(1))/(x(2)+5*x(3)))^2+(6.64-exp(-6*x(1))/(x(2)+6*x(3)))^2+(13.69-exp(-3*x(1))/(x(2)+3*x(3)))^2+(81-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(64.5-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(35.5-exp(-1.5*x(1))/(x(2)+1.5*x(3)))^2+(13.31-exp(-3*x(1))/(x(2)+3*x(3)))^2+(4.87-exp(-6*x(1))/(x(2)+6*x(3)))^2+(12.94-exp(-3*x(1))/(x(2)+3*x(3)))^2+(5.06-exp(-6*x(1))/(x(2)+6*x(3)))^2+(15.19-exp(-3*x(1))/(x(2)+3*x(3)))^2+(14.62-exp(-3*x(1))/(x(2)+3*x(3)))^2+(15.64-exp(-3*x(1))/(x(2)+3*x(3)))^2+(25.5-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(25.95-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(81.7-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(61.6-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(29.8-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(29.81-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(17.17-exp(-2.75*x(1))/(x(2)+2.75*x(3)))^2+(10.39-exp(-3.75*x(1))/(x(2)+3.75*x(3)))^2+(28.4-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(28.69-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(81.3-exp(-0.5*x(1))/(x(2)+0.5*x(3)))^2+(60.9-exp(-0.75*x(1))/(x(2)+0.75*x(3)))^2+(16.65-exp(-2.75*x(1))/(x(2)+2.75*x(3)))^2+(10.05-exp(-3.75*x(1))/(x(2)+3.75*x(3)))^2+(28.9-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2+(28.95-exp(-1.75*x(1))/(x(2)+1.75*x(3)))^2;

% Bounds
lb = [0.001,1e-05,1e-05]';
ub = [1,0.01,0.1]';

% Constraints
nlcon = [];
cl = [];
cu = [];

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCC';

% Starting Guess
x0 = [0.001,1e-05,1e-05]';

% Options
opts = struct('probname','model3');
opts.sense = 'min';
