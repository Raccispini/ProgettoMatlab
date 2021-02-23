function [journals,a] = readXlsFile()
    %Apre la finestra di dialogo dalla cartella passata per argomento e
    %ritorna nome e path del file
    [dname,dpath] = uigetfile({'*.xlsx','*.xls'});
    %Legge il file passandogli per parametro il path del file
    a = readcell(strcat(dpath,dname));
    %Altezza base della tabella
    i = 8;
    %Indice scorrimento variabile Journals
    index = 1;
    %Inizializzazione Journals
    journals(1,1) = "";
    %Cicla i giornali finche non arriva a 10 (Infatti parte da 7 per
    %arrivare a 18)
        while true
            if i == 18
                break;
            end
            %Aggiunge il giornale alla lista Journals
            journals(index,1) =string(a(i,1));
            %Incremento variabili
            index = index +1;  
            i = i+1;

        end
end