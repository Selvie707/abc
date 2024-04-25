X = uint8([200 100 100; 0 10 50; 50 250 120])
Y = uint8([100 220 230; 45 95 120; 205 100 0]);
Z = uint16(X) + uint16(Y)
fmax = max(Z(:))
fmin = min(Z(:))
Za = uint8((255/double(fmax-fmin))*double(Z-fmin))    % Normalisasi
Zb = imadd(X,Y)
Zc = imsubtract(X,Y)
Zd = imsubtract(Y,X)
Ze = imabsdiff(Y,X)

I1 = imresize(imread('coins.png'),[256,256]);   % Resize untuk menyamakan ukuran
I2 = imread('rice.png');                        % Size = 256 x 256
I3 = imadd(I1,I2);
imshow(I3)