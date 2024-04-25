I = imread('tire.tif');
I2 = imadd(I, 75);
figure

subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(I2), title('Brighter Image');

count_original = sum(I(:) == 255);
count_adjusted = sum(I2(:) == 255);