I1 = imread('cameraman.tif');
sx = 2; sy = 2;

T = maketform('affine',[sx 0 0; 0 sy 0; 0 0 1]);
I2 = imtransform(I1,T);
I3 = imresize(I1,2);
% figure, subplot(1,2,1); imshow(I2), title('Using Affine Transformation');
% subplot(1,2,2); imshow(I3), title('Using Image Resizing');

I2_size = size(I2);
I3_size = size(I3);

I2_max_pixel_value = max(I2(:));
I2_min_pixel_value = min(I2(:));
I3_max_pixel_value = max(I3(:));
I3_min_pixel_value = min(I3(:));

theta = 35*pi/180;
xform = [cos(theta) sin(theta) 0; -sin(theta) cos(theta) 0; 0 0 1]';
T = maketform('affine', xform);
I4 = imtransform(I1, T);
I5 = imrotate(I1, 35);
% figure, subplot(1,2,1); imshow(I4), title('Using Affine Transformation');
% subplot(1,2,2); imshow(I5), title('Using Image Rotating');

I4_size = size(I4);
I5_size = size(I5);
I4_max_pixel_value = max(I4(:));
I4_min_pixel_value = min(I4(:));
I5_max_pixel_value = max(I5(:));
I5_min_pixel_value = min(I5(:));

delta_x = 50;
delta_y = 100;
xform = [1 0 delta_x; 0 1 delta_y; 0 0 1]'
tform_translate = maketform('affine',xform);
I6 = imtransform(I1, tform_translate, ...
    'XData', [1 (size(I1,2)+xform(3,1))], ...
    'YData', [1 (size(I1,1)+xform(3,2))], ...
    'FillValues', 128);
% figure, subplot(1,2,1); imshow(I1), title('Original Image');
% subplot(1,2,2); imshow(I6), title('Affine Transformation');

sh_x = 2; sh_y = 1.5;
xform = [1 sh_y 0; sh_x 1 0; 0 0 1]'
T = maketform('affine',xform);
I7 = imtransform(I1, T);
imshow(I7)