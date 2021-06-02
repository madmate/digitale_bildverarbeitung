% Aufgabe 1.1: Laden von unterschiedlichen Bildtypen und Darstellung
%
% Wolfgang Ensinger 22.05.07
close all;
clear all;
% Lade erstes Grauwertbild
one = imread('picture3_gray.BMP');
two = imread('picture4_gray.bmp');

min_one = min(one, [], 'all');
min_two = min(two, [], 'all');
max_one = max(one, [], 'all');
max_two = max(two, [], 'all');
mean_one = mean2(one);
mean_two = mean2(two);
std_one = std2(one);
std_two = std2(two);

fprintf('Picture One min: %d, max: %d, mean: %0.3f, std: %0.3f\n', min_one, max_one, mean_one, std_one);
fprintf('Picture Two min: %d, max: %d, mean: %0.3f, std: %0.3f\n', min_two, max_two, mean_two, std_two);

subplot(3, 2, 1), imhist(one);
subplot(3, 2, 2), imhist(two);
subplot(3, 2, 3), imshow(one);
subplot(3, 2, 4), imshow(two);
subplot(3, 2, 5), imshow(60 > one);
subplot(3, 2, 6), imshow(two > 200);