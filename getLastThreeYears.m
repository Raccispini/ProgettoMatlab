function data = getLastThreeYears(input)
    %Settaggio anno attuale-1
    max = year(datetime('now'))-1;
    index = 1;
    a = size(input);
    %Per ogni anno seleziona solo quelli che sono al massimo minori di 3
    %anni dall'anno 'max'
    for i = 1:a(1)
       %disp(str2double(cell2mat(input(i,2)))+1+" == "+max); 
       if str2double(cell2mat(input(i,2)))== max ||  str2double(cell2mat(input(i,2)))+1==max || str2double(cell2mat(input(i,2)))+2==max
          data(index,1)=input(i,1);
          data(index,2)=input(i,2);
          data(index,3)=input(i,3);
          index=index+1;

       end  
    end

end
