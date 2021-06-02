% Aufgabe 1.1: Laden von unterschiedlichen Bildtypen und Darstellung
%
% Wolfgang Ensinger 22.05.07
close all;
clear all;
% Lade erstes Grauwertbild
picture = imread('blurry_moon.tif');
picture_grey = imread('PICT_grau.bmp');
[picture_color, colormap_color] = imread('picture2_ind.BMP');
picture_rgb = imread('picture1_rgb.BMP');

% Stelle Ergebnis dar
figure(1);
imagesc(picture_grey);
axis image;
colormap(gray(256));
colorbar;
title('Figure Grey')
xlabel('x')
ylabel('y')