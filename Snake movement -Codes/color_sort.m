clear all
close all
clc

im = imread('test2.jpg');

im_gray = rgb2gray(im);

im_bw = ~im2bw(im_gray,0.9);

imshow(im_bw)

s = regionprops(im_bw,'Area','Centroid');

ar = cat(1,s.Area);
cen = cat(1,s.Centroid);

text(cen(:,1),cen(:,2),'*','color','r')
