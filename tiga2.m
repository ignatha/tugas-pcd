% Grayscale ke biner
prabowo_img = rgb2gray(imread('C:\Users\ignatha\Documents\MATLAB\2.jpg'));
[prabowo_tinggi, prabowo_lebar] = size(prabowo_img);
prabowo_ambang = 100;
prabowo_biner = zeros(prabowo_tinggi, prabowo_lebar);
for prabowo_baris=1 : prabowo_tinggi
 for prabowo_kolom=1 : prabowo_lebar
 if prabowo_img(prabowo_baris, prabowo_kolom) >= prabowo_ambang
    prabowo_biner(prabowo_baris, prabowo_kolom) = 0;
 else
    prabowo_biner(prabowo_baris, prabowo_kolom) = 1;
 end
 end
end

figure(1);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(prabowo_img);
subplot(1,2,2); imshow(prabowo_biner);
