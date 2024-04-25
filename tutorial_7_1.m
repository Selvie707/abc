I = imread('pout.tif');
figure, subplot(2,2,1), imshow(I), title('Original Image')
subplot(2,2,2), imhist(I), title('Original Histogram')

I_eq = histeq(I,256);
subplot(2,2,3), imshow(I_eq), title('Equalization Image')
subplot(2,2,4), imhist(I_eq), title('Equalization Histogram')