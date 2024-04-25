img = [0 1; 1 0];
imgUp1 = imresize(img, [100, 100], "nearest");          % Cara I - Membuat matrix 100 x 100
imgUp2 = [zeros(50), ones(50); ones(50), zeros(50)];    % Cara II - Membuat matrix 100 x 100
surf(imgUp1);
surf(imgUp2); colormap('gray');

img = [1:5; 1:5; 1:5; 1:5; 1:5]
surf(img);
imgUp = imresize(img, [100, 100], "nearest");
figure; surf(imgUp);