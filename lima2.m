% Filter Median
prabowo_IMAGE = imread('C:\Users\ignatha\Documents\MATLAB\bintik.jpg');
prabowo_hasil=prabowo_IMAGE;
[prabowo_tinggi, prabowo_lebar] = size(prabowo_IMAGE);
for prabowo_baris=2 : prabowo_tinggi-1
 for prabowo_kolom=2 : prabowo_lebar-1
 data = [prabowo_IMAGE(prabowo_baris-1, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris-1, prabowo_kolom) ...
 prabowo_IMAGE(prabowo_baris-1, prabowo_kolom+1) ...
 prabowo_IMAGE(prabowo_baris, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris, prabowo_kolom) ...
 prabowo_IMAGE(prabowo_baris, prabowo_kolom+1) ...
 prabowo_IMAGE(prabowo_baris+1, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris+1, prabowo_kolom) ...
 prabowo_IMAGE(prabowo_baris+1, prabowo_kolom+1)];
    % Urutkan
     for prabowo_i=1 : 8
     for prabowo_j=prabowo_i+1 : 9
     if data(prabowo_i) > data(prabowo_j)
     prabowo_tmp = data(prabowo_i);
    data(prabowo_i) = data(prabowo_j);
     data(prabowo_j) = prabowo_tmp;
     end
     end
     end

 % Ambil nilai median
 prabowo_hasil(prabowo_baris, prabowo_kolom) = data(5);
 end
end

figure(1);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(prabowo_IMAGE);
subplot(1,2,2); imshow(prabowo_hasil);
clear;