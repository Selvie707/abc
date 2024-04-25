function hasil = contrastStrecthing (img, newMax, newMin)
    minImg = min(min(img));
    maxImg = max(max(img));
    X = double((newMax - newMin))/double((maxImg - minImg));
    hasil = (img - minImg) * X + newMin;
    hasil = uint8(hasil);
end