img1 = imread('office_1.jpg');
img1 = rgb2gray(img1);
img2 = imread('office_3.jpg');
img2 = rgb2gray(img2);

normHist2 = imhist(img2)./numel(img2);

% Histogram Spesifikasi
% Cara I
HS_1 = histeq(img1, normHist2);
% Cara II
HS_2 = imhistmatch(img1, img2, 256);

[countimg1, binimg1] = imhist(img1);
c1 = cumsum(countimg1)./numel(img1);    % cdf

[countHS_1, binHS_1] = imhist(HS_1);
cHS_1 = cumsum(countHS_1)./numel(img1);    % cdf

% Tampilkan citra asli dan hasil, histogram asli dan hasil, cdf asli dan
% hasil

figure,
subplot(2,3,1), imshow(img1), title("Original Image");
subplot(2,3,2), imhist(img1), title("Hist. Original Image");
subplot(2,3,3), stairs(0:1:255, c1), title("CDF Original Image");
subplot(2,3,4), imshow(HS_1), title("Citra HS");
subplot(2,3,5), imhist(HS_1), title("Hist. Citra HS");
subplot(2,3,6), stairs(0:1:255, cHS_1), title("CDF Citra HS");