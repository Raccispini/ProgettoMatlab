
[journals,file] = readXlsFile();


 for i = 1:length(journals)
     %try
        disp(journals(i,1));
        a = getInfo(journals(i,1));
        disp(a);
        file(i+7,3) = a(1,3);
       % disp(class(cell2mat(a(1,2))));
        file(i+7,6) = {cell2mat(a(1,2))};
     %catch Error
       % disp("Pagina non trovata");
     %end
 end
 disp(file);
 xlswrite("Scheda_elaborata.xls",file);
