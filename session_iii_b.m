X = uint8([200 100 100; 0 10 50; 50 250 120])
Y = uint8([100 220 230; 45 95 120; 205 100 0])
Z = uint8([120 160 130; 145 195 120; 105 240 150]);

a = uint16(X) + uint16(Y) + uint16(Z)
Za = uint8(a/3)
Zb = imdivide(imadd(X,imadd(Y,Z)),3)
Zc = imlincomb(1/3,X,1/3,Y,1/3,Z)