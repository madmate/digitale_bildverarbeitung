% Aufgabe 1.1: Laden von unterschiedlichen Bildtypen und Darstellung
%
% Wolfgang Ensinger 22.05.07
close all;
clear all;
% Lade erstes Grauwertbild
picture = imread('picture1_rgb.BMP');
h = fspecial('motion', 10, 100);
picture1_filter = imfilter(picture, h, 'conv');
% Stelle Ergebnis mit int dar
figure(1);
imshow(picture1_filter);
axis image;
colorbar;
imwrite(picture1_filter, 'picture_blurred_1.bmp');

h = fspecial('motion', 100, 10);
picture2_filter = imfilter(picture, h, 'conv');
% Stelle Ergebnis mit double dar
figure(2);
imshow(picture2_filter);
axis image;
colorbar;
imwrite(picture2_filter, 'picture_blurred_2.bmp');