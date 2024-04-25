I = imread('cameraman.tif');
J = flipud(I);
K = fliplr(I);
% subplot(1,3,1), imshow(I), title('Original Image');
% subplot(1,3,2), imshow(J), title('Flipped Upside-Down');
% subplot(1,3,3), imshow(K), title('Flipped Left-Right');

L = imread('eight.tif');
L_rot_ccw = imrotate(L,35);
L_rot_cw = imrotate(L,-35);

% subplot(1,3,1), imshow(L), title('Original Image');
% subplot(1,2,1), imshow(L_rot_ccw), title('Rotate Counter Clockwise');
% subplot(1,3,2), imshow(L_rot_cw), title('Rotate Clockwise');

size_L = size(L);
size_L_rot = size(L_rot_ccw);

disp(size_L);
disp(size_L_rot);

L_rot2 = imrotate(L,35,'bilinear');
% subplot(1,2,2), imshow(L_rot2), title('Rotate w/ Bilinear');

L_rot3 = imrotate(L,35,'bilinear','crop');
figure, imshow(L_rot3);