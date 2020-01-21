function g = expand(I)
    l=size(I);
    g=zeros(2*l(1),2*l(2),l(3));
    i1=1:l(1);
    j1=1:l(2);
    g((2*i1-1),(2*j1-1),:)=I(i1,j1,:);
    G=fspecial('gaussian',5,1);
    g=4*imfilter(g,G);