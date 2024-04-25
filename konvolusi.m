%{
% KONVOLUSI
citra = [5 8 3 4 6 2 3 7;
    3 2 1 1 9 5 1 0;
    0 9 5 3 0 4 8 3;
    4 2 7 2 1 9 0 6;
    9 7 9 8 0 4 2 4;
    5 2 1 8 4 1 0 9;
    1 8 5 4 9 2 3 8;
    3 7 1 2 3 4 4 6]

kernel = [2 1 0; 1 1 -1; 0 -1 -2];

% Fungsi konvolusi MATLAB: conv (1D), conv2(2D), convn(nD)

hasil1 = convn(citra, kernel, 'same')   % Default: same | ukuran tetap sama
hasil2 = convn(citra, kernel, 'full')   % Full: Ukuran baris dan kolomnya bertambah
hasil3 = convn(citra, kernel, 'valid')  % Valid: Ukuran baris dan kolomnya berkurang

% Fungsi imfilter -> bisa untuk konvolusi atau korelasi
hasil4 = imfilter(citra, kernel, 'conv', 'same')
hasil5 = imfilter(citra, kernel, 'conv', 'full')

% FILTER
citra = imread('peppers.png');

% Filter penajaman (Sharpen)
filter_sharpen = [0 -1 0; -1 5 -1; 0 -1 0];

% Filter Blur (mean Filter)
filter_mean = 1/9*[1 1 1; 1 1 1; 1 1 1];

% Filter Blur (Gaussian Blur)
filter_gaussian = 1/15*[1 2 1; 2 4 2; 1 2 1];

% Filter Emboss
filter_embos = [-2 -1 0; -1 1 1; 0 1 2];

% Filter Edge-Detect
filter_edge = [0 -1 0; -1 4 -1; 0 -1 0];

imgf1 = imfilter(citra, filter_sharpen, 'conv');
imgf2 = imfilter(citra, filter_mean, 'conv');
imgf3 = imfilter(citra, filter_gaussian, 'conv');
imgf4 = imfilter(citra, filter_embos, 'conv');
imgf5 = imfilter(citra, filter_edge, 'conv');

% Menampilkan hasil filter
subplot(3,2,1), imshow(citra), title('Original Picture')
subplot(3,2,2), imshow(imgf1), title('Sharpen')
subplot(3,2,3), imshow(imgf2), title('Mean')
subplot(3,2,4), imshow(imgf3), title('Gaussian')
subplot(3,2,5), imshow(imgf4), title('Emboss')
subplot(3,2,6), imshow(imgf5), title('Edge')

%}

citra = imread('peppers.png');

F1 = fspecial('average');
F2 = fspecial('disk');
% F3 = fspecial('gaussian');    Not Recommended
F3 = fspecial('laplacian');
F4 = fspecial('log');
F5 = fspecial('motion');
F6 = fspecial('prewitt');
F7 = fspecial('sobel');

% gauss = imgaussfilt(citra,2);   Pengganti fspecial('gaussian')

% Melakukan Konvolusi terhadap filter special

kernel = [2 1 0; 1 1 -1; 0 -1 -2];

hasil1 = imfilter(citra, F1, 'conv');
hasil2 = imfilter(citra, F2, 'conv');
hasil3 = imfilter(citra, F3, 'conv');
hasil4 = imfilter(citra, F4, 'conv');
hasil5 = imfilter(citra, F5, 'conv');
hasil6 = imfilter(citra, F6, 'conv');
hasil7 = imfilter(citra, F7, 'conv');

% Menampilkan citra asli dan citra hasil
subplot(2,4,1), imshow(citra), title('Original')
subplot(2,4,2), imshow(hasil1), title('Average')
subplot(2,4,3), imshow(hasil2), title('Disk')
subplot(2,4,4), imshow(hasil3), title('Laplacian')
subplot(2,4,5), imshow(hasil4), title('Log')
subplot(2,4,6), imshow(hasil5), title('Motion')
subplot(2,4,7), imshow(hasil6), title('Prewitt')
subplot(2,4,8), imshow(hasil7), title('Sobel')