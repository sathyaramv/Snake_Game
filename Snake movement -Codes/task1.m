clear all
close all
clc

img=imread('test2.jpg');
im_grey=rgb2gray(img);

wsize=0.03;

for i=0:0.01: 1-wsize
    
imshow(im2bw(im_grey,i:i+wsize));

r=im2bw(im_grey,i);
imshow(r);
pause(0.05);
clf;
end
