%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%% table2structure.m %%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% wrtten by Romana Jezek and modified by Morteza Kimiaei
% date: 2022/06/17
%
% converts Matlab tables into structures readable for Octave
%
username='/users/rjezek/OctaveWorkSpace/';

listtableName = {'bcp' 'bcpMint' 'global' 'minlp' 'inf' 'ibm' 'ibmMint' ...
    'bcpInt' 'globalInt' 'globalMint' 'minlp' 'minlpInt' 'infInt' 'infMint' 'MIPLIB' 'MIPLIBint' 'ibmInt' ...
    'morg' 'morgInt' 'morgMint' 'prince' 'princeInt' 'princeMint'};





for jj=1:length(listtableName)
    
    if jj > length(listtableName)
        path = [username,'/TEallFinal/TEprob/',...
           'CommonInfo/overview_Table.mat'];
        tableName = 'overview_Table.mat';
        T = OT;
        name = 'OTab';
    else
        tableName = [listtableName{jj},'_Table.mat'];
        path = [username,'/TEallFinal/TEprob/Collections/',...
           listtableName{jj},'/',tableName];
        name = 'Tab';
    end
    
    eval(['load ',path])
    
    newcell = {}; rowNames = {}; colNames = {};
 
    if size(T,1)==1
        disp([tableName,' was successfully converted already'])
        continue
    end
    
    for i = 1:size(T,2)
        colcell=T.Properties.VariableNames(i);
        col = colcell{1,1};

        % if columnames contain # change it to n
        ind = strfind(col,'#');
        col(ind)='n';
        colNames{length(colNames)+1} = col;
    end

    for i=1:size(T,1)
        rowcell=T.Properties.RowNames(i);
        row = rowcell{1,1};
        rowNames{length(rowNames)+1} = row;

        for j=1:size(T,2)
            if isnumeric(T{i,j})
                entry=num2str(T{i,j});
                %construct matrices

                if ~isempty(strfind(entry,' '))
                   newcell{i,j} = ['[',entry,']'];
                else
                    newcell{i,j} = T{i,j};
                end

             else
                newcell{i,j} = T{i,j};
            end      
        end
    end

    eval([name,'.Properties.RowNames = rowNames']);
    eval([name,'.Properties.VariableNames = colNames']);
    eval([name,'.Values = newcell']);

    save(['',path,''],name);
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
