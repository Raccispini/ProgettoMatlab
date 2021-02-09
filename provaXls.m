%[dname,dpath] = uigetfile('D:\');
%disp(strcat(dpath,dname));
s = "D:\Download\Scheda.xlsx";
a = readcell(s);
%disp(a);
i = 8;
index = 1;
journals(1,1) = "";
%miss = ismissing(a(:,1));
    while true
        %if miss(i,1)
        %    break;
        %else
        if i == 18
            break;
        end
        journals(index,1) =string(a(i,1));
            index = index +1;
        %end    
        i = i+1;
        
    end


disp(journals);