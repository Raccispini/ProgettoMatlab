% se il primo è migliore ritorna true ( es: q1 = Q1 e q2 = Q3 -> true

function main = compareQuartilio(q1,q2)
    %Se i parametri sono nulli li assegna ad un quartile altissimo
    if strcmp(q1,'')
        n1 = 10;
    else 
        %Se è stato inserito correttamente lo converte in intero
        n1=str2double(extractAfter(q1,"Q"));
    end
    %Uguale a sopra
    if strcmp(q2,'')
        n2=10;
    else
        n2=str2double(extractAfter(q2,"Q"));
    end
    
    %Se un quartile in intero è minore significa che è migliore
    if n1<n2
        main= true;
    else
       main = false;
    end
end