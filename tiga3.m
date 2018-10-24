close all;
prabowo_img = imread('C:\Users\ignatha\Documents\MATLAB\1.jpg');
% Gambar + Histogram gambar asli
figure(1);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(prabowo_img);
subplot(1,2,2); histo(prabowo_img);

%Kecerahan ditambah 63 

prabowo_img2 = prabowo_img + 63;

% Gambar + Histogram Kecerahan ditambah 63
figure(2);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(prabowo_img2);
subplot(1,2,2); histo(prabowo_img2);