% Kecerahan / brigtness
close all;
prabowo_img = imread('C:\Users\ignatha\Documents\MATLAB\1.jpg');
% tambah kecerahan
prabowo_hasil = prabowo_img + 63;
figure(1);
set(gcf, 'Position', [100, 100, 1240, 500]);
subplot(1,2,1); imshow(prabowo_img);
subplot(1,2,2); imshow(prabowo_hasil);