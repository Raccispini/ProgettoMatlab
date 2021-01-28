% se il primo è migliore ritorna true ( es: q1 = Q1 e q2 = Q3 -> true

function main = compareQuartilio(q1,q2)
    n1=str2double(extractAfter(q1,"Q"));
    n2=str2double(extractAfter(q2,"Q"));
    if n1<=n2
        main= true;
    else
       main = false;
    end
end