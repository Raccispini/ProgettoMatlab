function data = getMaxCategories(input,categories)
%disp(categories(2));
index = 1;
for i = 1: length(categories)
    maxQ = 'Q7';
    date = '';
    
   for j = 1 : length(input)
       if strcmp(categories(i),cell2mat(input(j,1)))
          if compareQuartilio(cell2mat(input(j,3)),maxQ)
            maxQ=cell2mat(input(j,3));
            date = cell2mat(input(j,2));
          end
          
       end
   end
   data(index,1) = categories(i);
   data(index,2) = {date};
   data(index,3) = {maxQ};
   index = index+1;
    
end





end
