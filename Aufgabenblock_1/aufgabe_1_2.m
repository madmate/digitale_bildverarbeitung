% Aufgabe 1.1: Laden von unterschiedlichen Bildtypen und Darstellung
%
% Wolfgang Ensinger 22.05.07
close all;
clear all;
% Lade erstes Grauwertbild
picture = imread('checker2.bmp');
h = ones(31)/961;
picture1_filter = imfilter(picture, h);
% Stelle Ergebnis mit int dar
figure(1);
imshow(picture1_filter);
axis image;
colorbar;

disp(h)
picture2_filter = imfilter(im2double(picture), h);
% Stelle Ergebnis mit double dar
figure(2);
imshow(picture2_filter);
axis image;
colorbar;