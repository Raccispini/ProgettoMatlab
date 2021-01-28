n = input("Inserisci il numero di giornali che ti interessa valutare ",'s');
n = str2double(n);

 for i = 1:n
    s = input("Inserisci il journal numero "+i+" ",'s');  
    journals(i,1) = string(s);
 end
 
 for i = 1:n
    disp(journals(i,1));
    disp(getInfo(journals(i,1)));
 end