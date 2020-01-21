function [LS] = combine(LA, LB, GR)
    
    depth = numel(LA);
    LS = cell(1,depth); 
    for i = 1:depth
        LS{i} = GR{i}.*LA{i}+(1-GR{i}).*LB{i};
        Im{i} = LS{i};
    end
    figure; montage(Im);
end