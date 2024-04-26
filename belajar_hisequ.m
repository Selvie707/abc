% Membaca citra
I = imread('pout.tif');

% Menghitung histogram dan CDF citra asli
[countI, binI] = histcounts(I(:), 256, 'Normalization', 'probability');
cI = cumsum(countI);

% Melakukan histogram ekualisasi
I_HE = histeq(I);

% Menghitung histogram dan CDF citra yang telah diekualisasi
[countI_HE, binI_HE] = histcounts(I_HE(:), 256, 'Normalization', 'probability');
cI_HE = cumsum(countI_HE);

% Menampilkan citra asli, histogram, dan kurva CDF secara manual
figure,
subplot(2,3,1), imshow(I), title("Original Image");
subplot(2,3,2), bar(binI(1:end-1), countI, 'hist'), title("Hist. Original");
subplot(2,3,3), plot(0:255, cI), title("CDF Original Image");

% Menampilkan citra yang telah diekualisasi, histogram, dan kurva CDF secara manual
subplot(2,3,4), imshow(I_HE), title("Citra HE");
subplot(2,3,5), bar(binI_HE(1:end-1), countI_HE, 'hist'), title("Hist. Citra HE");
subplot(2,3,6), plot(0:255, cI_HE), title("CDF Citra HE");

function hasil = contrastStrecthing(img, newMax, newMin)
    minImg = min(min(img));
    maxImg = max(max(img));
    X = double((newMax - newMin)) / double((maxImg - minImg));
    hasil = (img - minImg) * X + newMin;
    hasil = uint8(hasil);
end

% Membaca citra
img = imread('pout.tif');

% Melakukan peregangan kontras
hasil = contrastStrecthing(img, 255, 0);

% Menghitung histogram dan CDF citra asli
num_bins = 256;
[counts_original, ~] = histcounts(img(:), num_bins, 'Normalization', 'probability');
cdf_original = cumsum(counts_original);

% Menghitung histogram dan CDF citra hasil peregangan kontras
[counts_result, ~] = histcounts(hasil(:), num_bins, 'Normalization', 'probability');
cdf_result = cumsum(counts_result);

% Menampilkan citra asli, citra hasil, histogram, dan kurva CDF secara manual
figure;
subplot(2, 2, 1);
imshow(img);
title('Original Image');

subplot(2, 2, 2);
bar(0:num_bins-1, counts_result, 'hist');
title('Histogram of Result Image');

subplot(2, 2, 3);
imshow(hasil);
title('Result Image');

subplot(2, 2, 4);
bar(0:num_bins-1, counts_original, 'hist');
title('Histogram of Original Image');

% Menampilkan kurva CDF secara manual
figure;
subplot(1, 2, 1);
plot(0:num_bins-1, cdf_result);
title('CDF of Result Image');

subplot(1, 2, 2);
plot(0:num_bins-1, cdf_original);
title('CDF of Original Image');