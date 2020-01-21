close all;
clear all;
clc

nameA = 'baby.jpg';
nameB = 'hand.jpg';

A = im2double(imread(nameA));
B = im2double(imread(nameB));

figure; 

imshow(A);
figure;
imshow(B);
% mask that defines the blending region
% R = im2double(imread('mask.png'));
R = im2double(imread('eyeMask.jpg'));

figure; imshow(R);
% depth of the pyramids
depth = 6;

% 1) we build the Laplacian pyramids of the two images
LA = laplacianpyr(A,depth);
LB = laplacianpyr(B,depth);

% 2) we build the Gaussian pyramid of the selected region
GR = gausspyr(R,depth); 

% 3) we combine the two pyramids using the nodes of GR as weights
[LS] = combine(LA, LB, GR);

% 4) we collapse the output pyramid to get the final blended image
Ib = collapse(LS);

% visualization of the result
figure;
imshow(Ib);

imwrite(Ib,'result.png');