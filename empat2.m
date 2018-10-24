% menggunakan filter batas
prabowo_IMAGE = imread('C:\Users\ignatha\Documents\MATLAB\bintik.jpg');
prabowo_ukuran = size(prabowo_IMAGE);
prabowo_tinggi = prabowo_ukuran(1);
prabowo_lebar = prabowo_ukuran(2);
prabowo_filter = prabowo_IMAGE;

for prabowo_baris=2 : prabowo_tinggi-1
 for prabowo_kolom=2 : prabowo_lebar-1
 prabowo_minpiksel = min([prabowo_IMAGE(prabowo_baris-1, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris-1, prabowo_kolom) prabowo_IMAGE(prabowo_baris, prabowo_kolom+1) ...
 prabowo_IMAGE(prabowo_baris, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris, prabowo_kolom+1) prabowo_IMAGE(prabowo_baris+1, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris+1, prabowo_kolom) prabowo_IMAGE(prabowo_baris+1, prabowo_kolom+1)]);
 prabowo_piksel = min([prabowo_IMAGE(prabowo_baris-1, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris-1, prabowo_kolom) prabowo_IMAGE(prabowo_baris, prabowo_kolom+1) ...
 prabowo_IMAGE(prabowo_baris, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris, prabowo_kolom+1) prabowo_IMAGE(prabowo_baris+1, prabowo_kolom-1) ...
 prabowo_IMAGE(prabowo_baris+1, prabowo_kolom) prabowo_IMAGE(prabowo_baris+1, prabowo_kolom+1)]);
 if prabowo_IMAGE(prabowo_baris, prabowo_kolom) < prabowo_minpiksel
 prabowo_filter(prabowo_baris, prabowo_kolom) = prabowo_minpiksel;
 else
 if prabowo_IMAGE(prabowo_baris, prabowo_kolom) > prabowo_piksel
 prabowo_filter(prabowo_baris, prabowo_kolom) = prabowo_piksel;
 else
 prabowo_filter(prabowo_baris, prabowo_kolom) = prabowo_IMAGE(prabowo_baris, prabowo_kolom);
 end
 end
 end
end


figure(1);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(prabowo_IMAGE);
subplot(1,2,2); imshow(prabowo_filter);
clear;
