function G = gausspyr(I,depth)
    G = cell(1,depth);
    for i = 1:depth
        if i == 1
            G{i} = I;
        else
            G{i} =reduce(G{i-1}); 
        end
        Im{i} = G{i};

    end
    figure; montage(Im);
    
end
