Ia = imread('rice.png');
Ib = imread('cameraman.tif');
Ic = imadd(Ia,Ib);
% figure
% imshow(Ic);

I = imread('cameraman.tif');
J = imread('cameraman2.tif');
figure
subplot(1,2,1), imshow(I), title('Original Image');
subplot(1,2,2), imshow(J), title('Altered Image');

diffim = imsubtract(I,J);
diffim2 = imabsdiff(I,J);
figure
subplot(2,2,1), imshow(diffim), title('Substracted Image');
subplot(2,2,2), imshow(diffim2), title('Abs Diff Image');

subplot(2,2,3), imshow(diffim,[]), title('Substracted Image Scaled');
subplot(2,2,4), imshow(diffim2,[]), title('Abs Diff Image Scaled');