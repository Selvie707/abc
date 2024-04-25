I = imread('cameraman.tif');
I1 = imsubtract(I,75);
I2 = imadd(I,75);

% Standar Deviasi
stdI = std(single(I(:)));
stdI1 = std(single(I1(:)))
stdI2 = std(single(I2(:)))

figure
subplot(3,2,1), imshow(I);
subplot(3,2,2), imhist(I);
subplot(3,2,3), imshow(I1);
subplot(3,2,4), imhist(I1);
subplot(3,2,5), imshow(I2);
subplot(3,2,6), imhist(I2);