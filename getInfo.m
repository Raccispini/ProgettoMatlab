function data =  getInfo(input)
    page = getPageFromSearch(input);
    data = getDataFromPage(page);
    categories = getCategories(data);
    updateDate = getLastThreeYears(data);
    data = getCategoriesMax(updateDate);

end
