img1 = imread('office_1.jpg');
img2 = img1 + 100;
img3 = im2double(img1);
const1 = 0.5;
const2 = 0.1;
img4 = img3 + const1;
img5 = img3 + const2;
bad_value = find(img4 > 1);
img4(bad_value) = 1;

% Tampilkan citra asli dan hasil beserta histogramnya

figure,
subplot(5,2,1), imshow(img1), title("Image 1");
subplot(5,2,2), imhist(img1), title("Hist.Image 1");

subplot(5,2,3), imshow(img2), title("Image 2");
subplot(5,2,4), imhist(img2), title("Hist. Image 2");

subplot(5,2,5), imshow(img3), title("Image 3");
subplot(5,2,6), imhist(img3), title("Hist. Image 3");

subplot(5,2,7), imshow(img4), title("Image 4");
subplot(5,2,8), imhist(img4), title("Hist. Image 4");

subplot(5,2,9), imshow(img5), title("Image 5");
subplot(5,2,10), imhist(img5), title("Hist. Image 5");