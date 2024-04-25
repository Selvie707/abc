I = imread('pout.tif');
bw = roipoly(I);

bw2 = uint8(bw);
max(bw2(:))
min(bw2(:))

I2 = bitand(I,bw2);
imshow(I2);

bw_cmp = bitcmp(bw2);
figure
subplot(1,2,1), imshow(bw2), title('Original Mask');
subplot(1,2,2), imshow(bw_cmp), title('Complemented Mask');

I3 = bitor(I,bw_cmp);
figure, imshow(I3)

bw_cmp2 = imcomplement(bw2);

I_xor = bitxor(bw_cmp2,bw_cmp); 
figure 
subplot(1,3,1), imshow(bw_cmp), title('Image 1');
subplot(1,3,2), imshow(bw_cmp2), title('Image 2'); 
subplot(1,3,3), imshow(I_xor,[]), title('XOR Image');