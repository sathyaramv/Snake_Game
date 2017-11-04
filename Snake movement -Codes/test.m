clear all
close all
clc

im = zeros(400,600);


x = 1:400;
odv = x(rem(x,2)==1);

im(odv,:)=1;



x = 1:600;
odv = x(rem(x,2)==1);

im(:,odv)=1;

imshow(im)

