function output =  getInfo(input)
    try
        page = getPageFromSearch(input);
        data = getDataFromPage(page);
        categories = getCategories(data);
        updateDate = getLastThreeYears(data);
        data = getCategoriesMax(updateDate);
    catch Error
       error(""); 
    end
    a = size(data);
    max = 1;
   for i = 1:a(1)
       if compareQuartilio(data(i,3),data(max,3))
          if cell2mat(data(i,3)) == cell2mat(data(max,3))
             if cell2mat(data(i,2))>= cell2mat(data(max,2))
                max=i;
             end
          else
              max=i;
          end
       end
   end
   output = data(max,:);
end
