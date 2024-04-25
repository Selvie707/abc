I = imread('lindsay.tif');
I_adj = imdivide(I,1.5);

bw = im2uint8(roipoly(I));

% bw_cmp = bitcmp(bw); %mask complement
% roi = bitor(I_adj,bw_cmp); %roi image
% not_roi = bitor(I,bw); %non_roi image
% new_img = bitand(roi,not_roi); %generate new image
% imshow(new_img) %display new image

bw_cmp = bitcmp(bw); %mask complement
roi = bitor(I_adj,bw); %roi image
not_roi = bitor(I,bw_cmp); %non_roi image
new_img = bitand(roi,not_roi); %generate new image
imshow(new_img) %display new image