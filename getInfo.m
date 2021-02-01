function data =  getInfo(input)
    try
        page = getPageFromSearch(input);
        data = getDataFromPage(page);
        categories = getCategories(data);
        updateDate = getLastThreeYears(data);
        data = getCategoriesMax(updateDate);

    catch Error
        error()
    end
end
