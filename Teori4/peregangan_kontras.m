img = imread('pout.tif');
hasil = contrastStrecthing(img, 255, 0);

%tampilkan citra asli dan hasil
subplot(2,2,1), imshow(img), title("Original Image");
subplot(2,2,2), imhist(hasil), title("Hist. Result Image");

subplot(2,2,3), imshow(hasil), title("Result Image");
subplot(2,2,4), imhist(img), title("Hist. Original Image");