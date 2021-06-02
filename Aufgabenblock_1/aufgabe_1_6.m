% Aufgabe 1.1: Laden von unterschiedlichen Bildtypen und Darstellung
%
% Wolfgang Ensinger 22.05.07
close all;
clear all;
% Lade erstes Grauwertbild
one = imread('picture4_gray.bmp');

imshow(one);

one_fft = fft2(one);
one_abs = abs(log(fftshift(one_fft)));
one_angle = angle(one_fft);

subplot(1, 3, 1), imagesc(one_abs);
axis image
colorbar
title("Amplitudenbild")
subplot(1, 3, 2), imagesc(one_angle);
colorbar
title("Phasenbild")
subplot(1, 3, 3), mesh(one_abs);
colorbar
title("Amplitudenbild 3D")
