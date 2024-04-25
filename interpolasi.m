img = imread("cameraman.tif");
imgUp1 = imresize(img, [512, 512], "nearest");
imgUp2 = imresize(img, [512, 512], "bilinear");
imgUp3 = imresize(img, [512, 512], "cubic");
subplot(1, 4, 1); imshow(img); title ("original");
subplot(1, 4, 2); imshow(imgUp1); title ("nearest neighbor");
subplot(1, 4, 3); imshow(imgUp2); title ("bilinear");
subplot(1, 4, 4); imshow(imgUp3); title ("Cubic");