I = imread('circuit.tif');
% figure, subplot(2,2,1), imshow(I), title('Image')
% subplot(2,2,2), imhist(I,256), axis tight, title('Histogram')

% subplot(2,2,3), imhist(I,64), axis tight, title('Histogram with 64 bins')
% subplot(2,2,4), imhist(I,32), axis tight, title('Histogram with 32 bins')

c = imhist(I,32);

c_norm = c / numel(I);

sum(c_norm)

figure, subplot(1,2,1), bar_1 = bar(c);
set(gca, 'XLim', [0 32], 'YLim', [0 max(c)]);
set(gca, 'XTick', [0:8:64], 'YTick', [linspace(0,6000,8) max(c)]);
set(bar_1, 'FaceColor', 'r'), title('Bar Chart')

bar_width = 0.5;
set(bar_1, 'BarWidth', bar_width);

subplot(1,2,2), bar_2 = bar(c_norm);
set(gca, 'XTick', [0:8:32], 'YTick', [linspace(0,0.09,10) max(c_norm)])
xlim([0 32]), ylim([0 max(c_norm)])
title('Normalized Bar Chart')
set(bar_2, 'FaceColor', 'g')

figure, subplot(1,2,1), stem(c,'fill','MarkerFaceColor','red'), axis tight, title('Stem Chart')
set(gca, 'XLim', [0 64], 'YLim', [0 6000]);
set(gca, 'XTick', [0:8:8], 'YTick', [linspace(0,5000,8) max(c)]);
subplot(1,2,2), stem(c_norm,'fill','MarkerFaceColor','red'), axis tight, title('Normalized Stem Chart')

stem(c, 'fill', 'MarkerFaceColor', 'red', 'LineStyle', ':')

% figure, subplot(1,2,1), plot(c), axis auto, title('Plot Graph')
% subplot(1,2,2), plot(c_norm), axis auto, title('Normalized Plot Graph')

% figure, subplot(1,2,1), plot(c, 'o-', 'MarkerSize', 8), axis auto, title('Plot Graph')
% subplot(1,2,2), plot(c_norm, 'o-', 'MarkerSize', 8), axis auto, title('Normalized Plot Graph')