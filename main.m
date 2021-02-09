
journals = readXlsFile();
 
 for i = 1:length(journals)
     try
        disp(journals(i,1));
        disp(getInfo(journals(i,1)));
     catch Error
        disp("Pagina non trovata");
     end
end