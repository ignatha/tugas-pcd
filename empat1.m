% Membalik Citra
close all;
prabowo_img = imread('C:\Users\ignatha\Documents\MATLAB\2.jpg');
prabowo_hasil = 255 - prabowo_img;

figure(1);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(prabowo_img);
subplot(1,2,2); imshow(prabowo_hasil);