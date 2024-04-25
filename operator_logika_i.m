X = imresize(imread('X.png'),[222 265]);
X = rgb2gray(X);
X1 = im2bw (X);

Y = imread('Y.png');
Y = rgb2gray(Y);
Y1 = im2bw(Y);

a = not(X1)
b = not(Y1)
c = bitand(X1,Y1)
d = bitor(X1,Y1)
e = bitxor(X1,Y1)
f = bitand(a,Y1)

imshow(f)