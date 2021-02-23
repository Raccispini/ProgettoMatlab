function output =  getInfo(input)
    try
        %Dato in input il nome del journal restituisce la pagina html
        %relativa
        page = getPageFromSearch(input);
        
        %Data la pagina HTML restituisce la lista dei Quartili relativi a
        %quel journal
        data = getDataFromPage(page);
        
        %Taglia Data tenendo solo i dati riferiti ai 3 anni precedenti
        data = getLastThreeYears(data);
        
    catch Error
        error("Pagina non trovata!"); 
        return
    end
    a = size(data);
    max = 1;
   %Trova il Quartile migliore e salva il suo valore in Output
   for i = 1:a(1)
       %Se il quartile data(i,3) è migliore o uguale di max
       if compareQuartilio(data(i,3),data(max,3))
           %Se sono uguali confronta le date
          if cell2mat(data(i,3)) == cell2mat(data(max,3))
              %Seleziona il quartile con la data più recente             
              if cell2mat(data(i,2))>= cell2mat(data(max,2))
                max=i;
             end
          else
              max=i;
          end
       end
   end
   output = data(max,:);
end
