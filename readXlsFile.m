function journals = readXlsFile()

[dname,dpath] = uigetfile('D:\');
disp(strcat(dpath,dname));
a = readcell(strcat(dpath,dname));
i = 8;
index = 1;
journals(1,1) = "";
    while true
        if i == 18
            break;
        end
        journals(index,1) =string(a(i,1));
        index = index +1;  
        i = i+1;
        
    end


disp(journals);




end