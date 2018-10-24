% RGB ke grasyscale
close all;
%Gambar asli RGB
prabowo_img = imread('C:\Users\ignatha\Documents\MATLAB\2.jpg');
%konversi RGB ke Grayscale
prabowo_img2 = rgb2gray(prabowo_img);

figure(1);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(prabowo_img);
subplot(1,2,2); imshow(prabowo_img2);