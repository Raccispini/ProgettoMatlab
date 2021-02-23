function data = getCategoriesMax(input)

    index = 1;
    %anno attuale -1
    maxD = year(datetime('now'))-1;

    a = size(input);
    %Set valori massimi
    maxC = ' ';
    maxQ = 'Q10';
    %Prende i valori massimi per ogni categoria
    for i = maxD-2:maxD

        for j = 1:a(1)
           if i == str2double(cell2mat(input(j,2)))
              if compareQuartilio(cell2mat(input(j,3)),maxQ)
                 maxQ = cell2mat(input(j,3));
                 maxC = cell2mat(input(j,1));

              end   
           end
        end
        if ~strcmp(maxC,' ')
            data(index,1) = {maxC};
            data(index,2) = {i};
            data(index,3) = {maxQ};
            index = index +1;
            maxC = ' ';
            maxQ = 'Q10';
        end

    end






end