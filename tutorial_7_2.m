%{
I = imread('tire.tif'); I_eq = histeq(I,256);
figure, subplot(2,2,1), imshow(I), title('Original Image')
subplot(2,2,2), imhist(I), title('Original Histogram')
subplot(2,2,3), imshow(I_eq), title('Equalized Image')
subplot(2,2,4), imhist(I_eq), title('Equalized Histogram')

I = imread('eight.tif'); I_eq = histeq(I,256);
figure, subplot(2,2,1), imshow(I), title('Original Image')
subplot(2,2,2), imhist(I), title('Original Histogram')
subplot(2,2,3), imshow(I_eq), title('Equalized Image')
subplot(2,2,4), imhist(I_eq), title('Equalized Histogram')

I_hist = imhist(I); tf = cumsum(I_hist); tf_norm = tf/max(tf);
figure, plot(tf_norm), axis tight

[newmap, T] = histeq(I);
figure, plot(T)

img1 = imread('pout.tif');
figure, subplot(3,3,1), imshow(img1), title('Original Image')
subplot(3,3,2), imhist(img1), title('Original Histogram')

img1_eq = histeq(img1); m1 = ones(1,256)*0.5;
subplot(3,3,4), imshow(img1_eq), title('Equalized Image')
subplot(3,3,5), imhist(img1_eq), title('Equalized Histogram')
subplot(3,3,6), plot(m1), title('Desired Histogram Shape'), ylim([0 1]), xlim([1 256])

m2 = linspace(0,1,256); img2 = histeq(img1,m2);
subplot(3,3,7), imshow(img2), title('Matched Image')
subplot(3,3,8), imhist(img2), title('Matched Histogram')
subplot(3,3,9), plot(m2), title('Desired Histogram Shape'), ylim([0 1]), xlim([1 256])

ihmdemo
%}

I = imread('coins.png');
I_eq = histeq(I,256);
I_leq = adapthisteq(I,'ClipLimit',0.1);
figure, subplot(3,2,1), imshow(I), title('Original Image')
subplot(3,2,2), imhist(I), title('Original Histogram')
subplot(3,2,3), imshow(I_eq), title('Equalized Image')
subplot(3,2,4), imhist(I_eq), title('Equalized Histogram')
subplot(3,2,5), imshow(I_leq), ...
title('Local Histogram Equalization')
subplot(3,2,6), imhist(I_leq), ...
title('Local Hist Equalization Histogram')