%filter Rata - rata
F = imread('C:\Users\ignatha\Documents\MATLAB\bintik.jpg');
[tinggi, lebar] = size(F);
F2 = double(F);
G=F;
    for baris=2 : tinggi-1
     for kolom=2 : lebar-1
     jum = F2(baris-1, kolom-1)+ ...
     F2(baris-1, kolom) + ...
     F2(baris-1, kolom+1) + ...
     F2(baris, kolom-1) + ...
     F2(baris, kolom) + ...
     F2(baris, kolom+1) + ...
     F2(baris+1, kolom-1) + ...
     F2(baris+1, kolom) + ...
     F2(baris+1, kolom+1);

     G(baris, kolom) = uint8(1/9 * jum);
     end
    end

    
figure(1);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(F);
subplot(1,2,2); imshow(G);
clear;
