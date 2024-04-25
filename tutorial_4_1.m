I = imread('cameraman.tif');
% imtool(I);

I2 = imread('cropped_building.png');
% imshow(I2)

x1 = 183; x2 = 213; y1 = 103; y2 = 153;
xmin = x1; ymin = y1; width = x2-x1; height = y2-y1;
I3 = imcrop(I, [xmin ymin width height]);
% imshow(I3)

I_big1 = imresize(I,3);
% figure, imshow(I), title('Original Image');

% imtool(I_big1);

I_big2 = imresize(I,3,'nearest');
I_big3 = imresize(I,3,'bilinear');
figure
% subplot(1, 3, 1); imshow(I_big1), title('Resized Image w/ Bicubic Interpolation');
% subplot(1, 3, 2); imshow(I_big2), title('Resized w/ Nearest-Neighbor Interpolation');
% subplot(1, 3, 3); imshow(I_big3), title('Resized w/ Bilinear Interpolation');

I_rows = size(I,1);
I_cols = size(I,2);
I_sm1 = I(1:2:I_rows, 1:2:I_cols);
% figure, imshow(I_sm1);

I_sm2 = imresize(I, 0.5,'nearest');
I_sm3 = imresize(I, 0.5,'bilinear');
I_sm4 = imresize(I, 0.5,'bicubic');
% figure, subplot(1,3,1), imshow(I_sm2), title('Nearest-Neighbor Interpolation');
% subplot(1,3,2), imshow(I_sm3), title('Bilinear Interpolation');
% subplot(1,3,3), imshow(I_sm4), title('Bicubic Interpolation');