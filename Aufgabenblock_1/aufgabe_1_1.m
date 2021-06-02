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

% Stelle Ergebnis dar
figure(2);
imagesc(picture_rgb);
axis image;
colorbar;
title('Figure RGB')
xlabel('x')
ylabel('y')

% Stelle Ergebnis dar
figure(3);
imagesc(picture_color);
axis image;
colormap(colormap_color);
colorbar;
title('Figure Color')
xlabel('x')
ylabel('y')

whos
disp('picture grey')
disp(picture_grey(1:5, 1:5))
disp('picture color')
disp(picture_color(1:5, 1:5))
disp('picture rgb')
disp(picture_rgb(1:5, 1:5))

[rgb_to_ind, rgb_to_ind_colormap] = rgb2ind(picture_rgb, 4);
figure(4)
imagesc(rgb_to_ind);
axis image;
colormap(rgb_to_ind_colormap);
colorbar;
title('Figure RGB to Ind')
xlabel('x')
ylabel('y')

ind_to_rgb = ind2rgb(picture_color, colormap_color);
figure(5)
imagesc(ind_to_rgb);
axis image;
colorbar;
title('Figure Ind to RGB')
xlabel('x')
ylabel('y')

rgb_to_gray = rgb2gray(picture_rgb);
disp(rgb_to_gray(1:5, 1:5))
gray_double = im2double(rgb_to_gray);
disp(gray_double(1:5, 1:5))
gray_double = gray_double*1.5;
figure(6)
imshow(gray_double);
axis image;
colorbar;
title('Figure RGB to Gray')
xlabel('x')
ylabel('y')
imwrite(gray_double, 'picture_gray.bmp')

