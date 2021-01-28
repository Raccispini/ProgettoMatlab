function data = getCategories(input)
data(1)=input(1:1);
index = 2;

for i = 2:length(input)
 %disp(input(i)+" != "+input(i-1));
   if ~strcmp(input(i),input(i-1))
     %disp(input(i)+" != "+input(i-1));
      data(index)=input(i);      
      index = index+1;
   end   
end
%data = data(~isnan(data(:,1)),:);
end