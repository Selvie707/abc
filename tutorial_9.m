%{
a = [0 0 0 1 0 0 0];
f = [1 2 3 4 5];

g = imfilter(a,f,'full','conv')

h = imfilter(a,f,'full','corr')
%}

x = [140 108 94;89 99 125;121 134 221]
y = [-1 0 1;-2 0 2;-1 0 1]
z = imfilter(x,y,'corr')

z2 = imfilter(x,y,'conv')

centerValue_conv = z2(2, 2);

manualValue_conv = -126;

if centerValue_conv == manualValue_conv
    disp('The center value matches the manually calculated value for convolution.');
else
    disp('The center value does not match the manually calculated value for convolution.');
end