function g = reduce(I)
    G=fspecial('gaussian',5,1);
    I=imfilter(I,G);
    l=size(I);
    i1=1:l(1)/2;
    j1=1:l(2)/2;
    g(i1,j1,:)=I((2*i1-1),(2*j1-1),:);
end