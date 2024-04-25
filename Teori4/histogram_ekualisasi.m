I = imread('pout.tif');
[countI, binI] = imhist(I);
cI = cumsum(countI)./numel(I);          % cdf

I_HE = histeq(I);                       % histogram ekualisasi
[countI_HE, binI_HE] = imhist(I_HE);
cI_HE = cumsum(countI_HE)./numel(I);    % cdf

figure,
subplot(2,3,1), imshow(I), title("Original Image");
subplot(2,3,2), imhist(I), title("Hist. Original");
subplot(2,3,3), stairs(0:1:255, cI), title("CDF Original Image");

subplot(2,3,4), imshow(I_HE), title("Citra HE");
subplot(2,3,5), imhist(I_HE), title("Hist. Citra HE");
subplot(2,3,6), stairs(0:1:255, cI_HE), title("CDF Citra HE");