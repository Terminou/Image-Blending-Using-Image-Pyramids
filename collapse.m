function I = collapse(L)
    depth = numel(L);
    for i = depth:-1:1
        if i == depth
            I = L{i};
        else
            I = L{i}+expand(I);
        end
    figure; imshow(I);
 
    end

end
