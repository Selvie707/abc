X = uint8([200 100 100; 0 10 50; 50 250 120])
Y = uint8([100 220 230; 45 95 120; 205 100 0]);

Z = bitor(X,Y)     % Ubah terlebih dahulu desimal X dan Y menjadi Biner, lalu jumlahkan dan convert ke desimal lagi hasilnya