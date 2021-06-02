% Aufgabe 1.1: Laden von unterschiedlichen Bildtypen und Darstellung
%
% Wolfgang Ensinger 22.05.07
close all;
clear all;
% Lade erstes Grauwertbild
picture = imread('Blurry_moon.tif');

h = [0 1 0; 1 -4 1; 0 1 0];
picture1_filter = imfilter(picture, h);

h = [0 1 0; 1 -8 1; 0 1 0];
picture2_filter = imfilter(picture, h);

figure(1)
subplot(1, 3, 1), imshow(picture);
title('original');
subplot(1, 3, 2), imshow(picture-picture1_filter);
title('laplace -4');
subplot(1, 3, 3), imshow(picture-picture2_filter);
title('laplace -8');