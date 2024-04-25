base = imread('klcc_a.png');
unregistered = imread('klcc_b.png');

% cpselect(unregistered, base);

base_points
input_points

input_points_adj = cpcorr(input_points,base_points,unregistered(:,:,1),base(:,:,1));

mytform1 = cp2tform(input_points,base_points,'nonreflective similarity');
info = imfinfo('klcc_a.png');
registered = imtransform(unregistered,mytform1,'XData',[1 info.Width], 'YData',[1 info.Height]);

figure, imshow(registered);
hold on
h = imshow(base);
set(h, 'AlphaData', 0.6)