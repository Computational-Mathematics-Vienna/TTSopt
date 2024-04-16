%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% readSolText.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% wrote by Roman Kostal


function hits = readSolText(SolString)
cd(SolString);
D = dir;
n = length(D);
hits = cell(n-2,2);

for i = 3:n
    currD = D(i).name;
    cd(currD);
%     gunzip('*.gz');
    SText = strcat(SolString,'.txt');
%     SMps = strcat(SolString,'.sol');
%     movefile(SMps,SText);

    fileID = fopen(SText,'r');
    A = textscan(fileID,'%s %f', 'HeaderLines', 1);
    fclose(fileID);
    hits(i-2,:) = A;
    cd ..
end

save(strcat('H_',SolString,'.mat'),'hits');
hits = {}