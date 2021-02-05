function data = getLastThreeYears(input)
max = year(datetime('now'))-1;
index = 1;

a = size(input);
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
