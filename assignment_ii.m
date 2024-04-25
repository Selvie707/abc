% Haris Fajar Wibisono (2024250052)
% Mulia Sahpira (2125250077)
% Selvie (2125250091)

A = uint8([152 101 181; 130 218 216; 208 131 1])
B = uint8([49 112 232; 176 110 229; 203 214 169]);
Z = uint16(A) + uint16(B)
fmax = max(Z(:))
fmin = min(Z(:))
Za = uint8((255/double(fmax-fmin))*double(Z-fmin))
Zb = imadd(A,B)
C = int16(A) - int16(B)
C_abs = abs(C)
A_divided_by_2 = A / 2
B_divided_by_2 = B / 2
C = uint16(A_divided_by_2) + uint16(B_divided_by_2)



A = uint8([0 1 1 1 0 0 0; 0 1 1 1 0 0 0; 1 1 0 1 1 0 0; 1 0 0 0 1 0 0; 1 1 1 1 1 0 0; 1 0 0 0 1 0 0; 1 0 0 0 1 0 0])
B = uint8([0 0 1 1 1 0 0; 0 0 1 0 0 1 0; 0 0 1 0 0 1 0; 0 0 1 1 1 0 0; 0 0 1 0 0 1 0; 0 0 1 0 0 1 0; 0 0 1 1 1 0 0]);
not_B = not(B)
A_and_B = bitand(A,B)
or_B = bitor(A,B)
A_xor_B = bitxor(A,B)

A = [1 0; 1 0]
B = [1 1; 0 0]
C = and(A,B)
D = or(A,B)
E = not(C)
F = xor(A,B)
G = not(G)
H = or(and(A,B), not(and(A,B)))