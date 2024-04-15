

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% jones.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% function f=jones(instance,x)
% evaluates test functions from the JONES benchmark at x and returns f
%
% function [u,v,fname,glob]=jones(instance)
% provides bounds, name, and global minimum information 
% for the test functions from the JONES benchmark
%
% instance     % number of instance (from 1:9)
% x            % argument of fucntion
%
% f            % function value f(x)
% u,v          % lower and upper bounds for the problem
% fname        % name of instance
% glob         % global information
%   .fglob        % globally minimum in [u,v]
%   .nglob        % number of global minimizers in [u,v]
%   .xglob(:,k)   % k-th globally minimizer in [u,v]
%
function [u,v,fname,glob]=jones(instance,x)

if nargin==1,
  % provide problem specific information 
  switch instance
    case 1 
      fname='gpr'; % Goldstein-Price
      n=2;
      u = [-2; -2]; 
      v = [2; 2]; 
      glob.fglob = 3;
      glob.nglob = 1;
      glob.xglob = [0; -1];
    case 2
      fname='bra';  % Branin
      n=2;
      u = [-5; 0];
      v = [10; 15]; 
      glob.fglob = 0.397887357729738;
      glob.nglob = 3;  
      glob.xglob = [9.42477796   -3.14159265  3.14159265; 
                    2.47499998   12.27500000  2.27500000];
    case 3 
      fname='cam';  % Six-hump camel
      n=2;
      u = [-3; -2];
      v = [3; 2]; 
      glob.fglob = -1.031628453489877;
      glob.nglob = 2;
      glob.xglob = [ 0.08984201  -0.08984201;
                    -0.71265640   0.71265640];
    case 4 
      fname='shu';  % Shubert
      n = 2;
      u = [-10; -10];
      v = [10; 10];
      glob.fglob = -186.730908831024;
      glob.nglob = 18;
      glob.xglob = [
        -7.08350658  5.48286415  4.85805691  4.85805691 -7.08350658 ...
        -7.70831382 -1.42512845 -0.80032121 -1.42512844 -7.08350639 ...
        -7.70831354  5.48286415  5.48286415  4.85805691 -7.70831354 ...
        -0.80032121 -1.42512845 -0.80032121; ...
         4.85805691  4.85805681 -7.08350658  5.48286415 -7.70831382 ...
        -7.08350658 -0.80032121 -1.42512845 -7.08350639 -1.42512844 ...
         5.48286415 -7.70831354  4.85805691  5.48286415 -0.80032121 ...
        -7.70831354 -0.80032121 -1.42512845];
    case 5
      fname='sh5';  % Shekel 5
      n=4;
      u = [0; 0; 0; 0];
      v = [10; 10; 10; 10]; 
      glob.fglob = -10.153199679058229;
      glob.nglob = 1;
      glob.xglob = [4; 4; 4; 4];
    case 6
      fname='sh7';  % Shekel 7
      n=4;
      u = [0; 0; 0; 0];
      v = [10; 10; 10; 10]; 
      glob.fglob = -10.402940566818662;
      glob.nglob = 1;
      glob.xglob = [4; 4; 4; 4];
    case 7
      fname='s10';  % Shekel 10
      n=4;
      u = [0; 0; 0; 0];
      v = [10; 10; 10; 10]; 
      glob.fglob = -10.536409816692045;
      glob.nglob = 1;
      glob.xglob = [4; 4; 4; 4];
    case 8
      fname='hm3';  % Hartman 3
      n=3;
      u = [0; 0; 0];
      v = [1; 1; 1]; 
      glob.fglob = -3.862782147820755;
      glob.nglob = 1;
      glob.xglob = [0.1; 0.55592003; 0.85218259];
    case 9
      fname='hm6';  % Hartman 6
      n=6;
      u = [0; 0; 0; 0; 0; 0];
      v = [1; 1; 1; 1; 1; 1]; 
      glob.fglob = -3.322368011415515;
      glob.nglob = 1;
      glob.xglob = [0.20168952;  0.15001069;  0.47687398; ...
                    0.27533243;  0.31165162;  0.65730054];
    otherwise
      instance
      error('instance does not exist')
  end;
  return;
end



switch instance
  case 1 
    % fname='gpr'; % Goldstein-Price
    x1=x(1);x2=x(2);
    F1=x1+x2+1;
    F2=19-14*x1+3*x1^2-14*x2+6*x1.*x2+3*x2^2;
    F3=2*x1-3*x2;
    F4=18-32.*x1+12.*x1.^2+48.*x2-36.*x1.*x2+27.*x2.^2;
    f =(1+F1^2*F2)*(30+F3^2*F4);
  case 2
    % fname='bra';  % Branin
    a=1;b=5.1/(4*pi*pi);c=5/pi;d=6;h=10;ff=1/(8*pi);
    x1=x(1);x2=x(2);
    f=a*(x2-b*x1^2+c*x1-d)^2+h*(1-ff)*cos(x1)+h;
  case 3 
    % fname='cam';  % Six-hump camel
    x1=x(1);x2=x(2);
    f=(4-2.1*x1^2+x1^4/3)*x1^2+x1*x2+(-4+4*x2^2).*x2^2;
  case 4 
    % fname='shu';  % Shubert
    x1=x(1);x2=x(2);
    sum1 = 0; sum2 = 0;
    for i = 1:5
      sum1 = sum1 + i*cos((i+1)*x1+i);
      sum2 = sum2 + i*cos((i+1)*x2+i);
    end
    f = sum1*sum2;
  case 5
    % fname='sh5';  % Shekel 5
    a = [4, 1, 8, 6, 3;
         4, 1, 8, 6, 7;
         4, 1, 8, 6, 3;
         4, 1, 8, 6, 7];
    c = [0.1, 0.2, 0.2, 0.4, 0.4];
    for i=1:5
      b = x - a(:,i);
      d(i) = sum(b.^2);
    end
    f = -sum(1./(c+d));
  case 6
    % fname='sh7';  % Shekel 7
    a = [4, 1, 8, 6, 3, 2, 5;
         4, 1, 8, 6, 7, 9, 5;
         4, 1, 8, 6, 3, 2, 3;
         4, 1, 8, 6, 7, 9, 3];
    c = [0.1 0.2 0.2 0.4 0.4 0.6 0.3];
    for i=1:7
      b = x - a(:,i);
      d(i) = sum(b.^2);
    end
    f = -sum(1./(c+d));
  case 7
    % fname='s10';  % Shekel 10
    a = [4, 1, 8, 6, 3, 2, 5, 8, 6, 7;
         4, 1, 8, 6, 7, 9, 5, 1, 2, 3.6;
         4, 1, 8, 6, 3, 2, 3, 8, 6, 7;
         4, 1, 8, 6, 7, 9, 3, 1, 2, 3.6];
    c = [ 0.1, 0.2, 0.2, 0.4, 0.4, 0.6, 0.3, 0.7, 0.5, 0.5];
    for i=1:10
      b = x - a(:,i);
      d(i) = sum(b.^2);
    end
    f = -sum(1./(c+d));
  case 8
    % fname='hm3';  % Hartman 3
    a = [3,0.1,  3,0.1;
        10, 10, 10, 10;
        30, 35, 30, 35];
    p = [ 0.36890, 0.46990, 0.10910, 0.03815;
          0.11700, 0.43870, 0.87320, 0.57430;
          0.26730, 0.74700, 0.55470, 0.88280];
    c = [1, 1.2, 3, 3.2];
    for i=1:4
      d(i) = sum(a(:,i).*(x - p(:,i)).^2);
    end
    f = -sum(c.*exp(-d)); 
  case 9
    % fname='hm6';  % Hartman 6
    a = [10.00,  0.05,  3.00, 17.00;
          3.00, 10.00,  3.50,  8.00;
         17.00, 17.00,  1.70,  0.05;
          3.50,  0.10, 10.00, 10.00;
          1.70,  8.00, 17.00,  0.10;
          8.00, 14.00,  8.00, 14.00];
    p = [0.1312, 0.2329, 0.2348, 0.4047;
         0.1696, 0.4135, 0.1451, 0.8828;
         0.5569, 0.8307, 0.3522, 0.8732;
         0.0124, 0.3736, 0.2883, 0.5743;
         0.8283, 0.1004, 0.3047, 0.1091;
         0.5886, 0.9991, 0.6650, 0.0381];
    c = [1.0, 1.2, 3.0, 3.2];
    for i=1:4
     d(i) = sum(a(:,i).*(x - p(:,i)).^2);
    end
    f = -sum(c.*exp(-d)); 
  otherwise
    instance
    error('instance does not exist')
end;
% assign to output
u=f;

