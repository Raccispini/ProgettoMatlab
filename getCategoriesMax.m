function data = getCategoriesMax(input)
%disp(categories(2));
index = 1;
maxD= 0;
for i = 1 : length(input)
   if str2double(cell2mat(input(i,2)))>maxD
       maxD= str2double(cell2mat(input(i,2)));
   end
    
    
    
end


maxC = ' ';
    maxQ = 'Q10';
for i = maxD-2:maxD
    
    for j = 1:length(input)
       if i == str2double(cell2mat(input(j,2)))
          if compareQuartilio(cell2mat(input(j,3)),maxQ)
             maxQ = cell2mat(input(j,3));
             maxC = cell2mat(input(j,1));
                            
          end   
       end
    end
   data(index,1) = {maxC};
   data(index,2) = {i};
   data(index,3) = {maxQ};
   index = index +1;
    maxC = ' ';
    maxQ = 'Q10';
end






end