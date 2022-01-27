function [inputImg,X,Y] = inputNetImg(type)

addpath src;

if strcmp(type,'AlexNet') == 1
    
    inputImg = 'input';
    X = 227;
    Y = 227;
    
end

if strcmp(type,'VGG-16') == 1
    
    inputImg = 'x0';
    X = 224;
    Y = 224;
    
end

if strcmp(type,'VGG-19') == 1
    
    inputImg = 'x0';
    X = 224;
    Y = 224;
    
end

if strcmp(type,'GoogLeNet') == 1
    
    inputImg = 'data';
    X = 224;
    Y = 224;
    
end

if strcmp(type,'ResNet50') == 1
    
    inputImg = 'data';
    X = 224;
    Y = 224;
    
end

if strcmp(type,'ResNet101') == 1
    
    inputImg = 'data';
    X = 224;
    Y = 224;
    
end

if strcmp(type,'ResNet152') == 1
    
    inputImg = 'data';
    X = 224;
    Y = 224;
    
end
