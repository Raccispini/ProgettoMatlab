%Legge il file e ritorna la lista dei journals e anche il file completo
[journals,file] = readXlsFile();

%Per ogni giornale cerca infomrazioni
 for i = 1:length(journals)
     try
        disp(journals(i,1)); 
        %Cerca i quartili migliori
        a = getInfo(journals(i,1));
        disp(a);
        %7 = altezza della tabella nel file .xlsx
        %Assegnazione Quartile
        file(i+7,3) = a(1,3);
        %Assegnazione Data
        file(i+7,6) = {cell2mat(a(1,2))};
     catch Error
        disp("Pagina non trovata");
     end
 end
 
 %Scrittura sul file
 xlswrite("Scheda_elaborata.xlsx",file);
