[dname,dpath] = uigetfile('D:\');
disp(strcat(dpath,dname));
a = readcell(strcat(dpath,dname));
issn = zeros(1,12);
index = 8;
indexSsn = 1;

while true
    if isNan(cell2mat(a(indexSsn,1)))
        break
    end
    issn(1,indexSsn-7) = a(indexSsn,1); 
    indexSsn = indexSsn+1;
end
disp(issn);