sz=size(Scheda);
sz=sz(1,1);


for i = 1:sz  
    journals(i,1) = string(Scheda(i,1));
 end
 
 for i = 1:sz
     try
        disp(journals(i,1));
        disp(getInfo(journals(i,1)));
     catch Error
         disp("Pagina non trovata")
     end
end


