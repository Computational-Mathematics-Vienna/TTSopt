% This BARON input file was generated by the MATLAB/BARON interface.
% The BARON/MATLAB interface was developed by J. Currie.  The interface
% is provided free of charge and with no warranties from The Optimization
% Firm, http://www.minlp.com.
% Interface version: v1.51 [17-Dec-2013]
% File generated: 31-Jan-2014 04:56:55
% Model: markowitz

% Objective
fun = @(x)2*(0.0454545454545455*(-0.00313636363636371*x(1)-0.150909090909091*x(2)-0.267772727272727*x(3)-0.308636363636363*x(4)-0.423318181818182*x(5)-0.0687727272727274*x(6)-0.290227272727273*x(7)+0.548045454545455*x(8))^2+0.0454545454545455*(0.0058636363636364*x(1)-0.0729090909090906*x(2)-0.384772727272727*x(3)-0.407636363636363*x(4)-0.459318181818182*x(5)-0.0897727272727273*x(6)-0.373227272727273*x(7)+0.593045454545455*x(8))^2+0.0454545454545455*(-0.0171363636363637*x(1)-0.0369090909090906*x(2)+0.251227272727273*x(3)+0.261363636363637*x(4)+0.196681818181818*x(5)+0.0312272727272727*x(6)+0.212772727272727*x(7)-0.368954545454545*x(8))^2+0.0454545454545455*(0.0820909090909094*x(2)-0.0261363636363636*x(1)+0.116227272727273*x(3)+0.142363636363637*x(4)+0.158681818181818*x(5)+0.0642272727272726*x(6)-0.116227272727273*x(7)-0.168954545454545*x(8))^2+0.0454545454545455*(-0.0231363636363637*x(1)-0.0909090909090906*x(2)-0.193772727272727*x(3)-0.149636363636363*x(4)-0.0283181818181817*x(5)-0.0617727272727273*x(6)+0.0397727272727273*x(7)+0.0710454545454546*x(8))^2+0.0454545454545455*(-0.00113636363636371*x(1)-0.110909090909091*x(2)-0.0557727272727273*x(3)-0.0306363636363634*x(4)+0.0246818181818182*x(5)-0.0797727272727273*x(6)+0.184772727272727*x(7)+0.166045454545455*x(8))^2+0.0454545454545455*(0.0308636363636363*x(1)-0.114909090909091*x(2)+0.0642272727272726*x(3)+0.132363636363637*x(4)+0.185681818181818*x(5)-0.0687727272727274*x(6)-0.0932272727272727*x(7)+1.08304545454545*x(8))^2+0.0454545454545455*(0.0488636363636363*x(1)-0.145909090909091*x(2)+0.203227272727273*x(3)+0.213363636363637*x(4)+0.245681818181818*x(5)-0.0607727272727274*x(6)+0.0847727272727272*x(7)+0.167045454545455*x(8))^2+0.0454545454545455*(0.0778636363636362*x(1)-0.0899090909090907*x(2)-0.170772727272727*x(3)-0.160636363636363*x(4)-0.131318181818182*x(5)-0.0187727272727274*x(6)-0.164227272727273*x(7)-0.440954545454545*x(8))^2+0.0454545454545455*(0.0388636363636363*x(1)+0.372090909090909*x(2)+0.0952272727272727*x(3)+0.0633636363636367*x(4)+0.0916818181818184*x(5)+0.219227272727273*x(6)-0.160227272727273*x(7)-0.0449545454545452*x(8))^2+0.0454545454545455*(0.0138636363636364*x(1)-0.107909090909091*x(2)+0.104227272727273*x(3)+0.111363636363637*x(4)+0.0956818181818184*x(5)-0.0117727272727273*x(6)+0.0957727272727273*x(7)-0.256954545454545*x(8))^2+0.0454545454545455*(0.0248636363636363*x(1)+0.0660909090909094*x(2)-0.0587727272727274*x(3)-0.0936363636363633*x(4)-0.218318181818182*x(5)+0.0582272727272726*x(6)-0.0672272727272727*x(7)-0.303954545454545*x(8))^2+0.0454545454545455*(0.0018636363636364*x(1)+0.273090909090909*x(2)+0.196227272727273*x(3)+0.202363636363637*x(4)+0.211681818181818*x(5)+0.121227272727273*x(6)+0.420772727272727*x(7)-0.122954545454545*x(8))^2+0.0454545454545455*(0.216090909090909*x(2)-0.0151363636363637*x(1)+0.0662272727272726*x(3)+0.0373636363636367*x(4)-0.0353181818181816*x(5)+0.0642272727272726*x(6)+0.552772727272727*x(7)+0.0870454545454546*x(8))^2+0.0454545454545455*(-0.0171363636363637*x(1)-0.167909090909091*x(2)-0.0677727272727273*x(3)-0.100636363636363*x(4)-0.162318181818182*x(5)-0.0687727272727274*x(6)+0.104772727272727*x(7)+0.115045454545455*x(8))^2+0.0454545454545455*(-0.00713636363636372*x(1)-0.00690909090909053*x(2)+0.0452272727272727*x(3)+0.0553636363636367*x(4)+0.0436818181818184*x(5)-0.0157727272727273*x(6)+0.141772727272727*x(7)-0.267954545454545*x(8))^2+0.0454545454545455*(0.0088636363636363*x(1)+0.119090909090909*x(2)+0.196227272727273*x(3)+0.168363636363637*x(4)+0.0826818181818183*x(5)+0.0502272727272726*x(6)-0.0362272727272728*x(7)-0.151954545454545*x(8))^2+0.0454545454545455*(0.0018636363636364*x(1)-0.0389090909090906*x(2)-0.151772727272727*x(3)-0.185636363636363*x(4)-0.291318181818182*x(5)-0.00877272727272738*x(6)-0.375227272727273*x(7)-0.206954545454545*x(8))^2+0.0454545454545455*(0.100090909090909*x(2)-0.0211363636363637*x(1)+0.184227272727273*x(3)+0.218363636363637*x(4)+0.472681818181818*x(5)+0.0692272727272727*x(6)-0.0202272727272728*x(7)-0.170954545454545*x(8))^2+0.0454545454545455*(-0.0421363636363636*x(1)-0.0139090909090906*x(2)-0.0437727272727273*x(3)-0.0336363636363632*x(4)+0.0526818181818183*x(5)-0.0157727272727273*x(6)-0.263227272727273*x(7)-0.202954545454545*x(8))^2+0.0454545454545455*(0.124090909090909*x(2)-0.0471363636363638*x(1)-0.0197727272727273*x(3)-0.0106363636363633*x(4)+0.0406818181818183*x(5)+0.0182272727272728*x(6)+0.184772727272727*x(7)+0.0170454545454546*x(8))^2+0.0454545454545455*(-0.0331363636363637*x(1)-0.203909090909091*x(2)-0.107772727272727*x(3)-0.124636363636363*x(4)-0.153318181818182*x(5)-0.126772727272727*x(6)-0.0632272727272727*x(7)-0.138954545454545*x(8))^2)-1.07813636363636*x(1)-1.09290909090909*x(2)-1.11977272727273*x(3)-1.12363636363636*x(4)-1.12131818181818*x(5)-1.09177272727273*x(6)-1.14122727272727*x(7)-1.12895454545455*x(8);

% Bounds
lb = [0,0,0,0,0,0,0,0]';
ub = [Inf,Inf,Inf,Inf,Inf,Inf,Inf,Inf]';

% Constraints
nlcon = @(x)[x(1)+x(2)+x(3)+x(4)+x(5)+x(6)+x(7)+x(8)];
cl = 1';
cu = 1';

% Variables (C = continuous, B = binary, I = integer)
xtype = 'CCCCCCCC';

% Starting Guess
x0 = [NaN,NaN,NaN,NaN,NaN,NaN,NaN,NaN]';

% Options
opts = struct('probname','markowitz');
opts.sense = 'min';
