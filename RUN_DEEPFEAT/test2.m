addpath(genpath('matlab'));
image = imread('1.jpg');
type = ('ResNet50');
layer = ('Conv');
bottomUp(image, type, layer);