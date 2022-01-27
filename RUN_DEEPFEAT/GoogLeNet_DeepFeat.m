close all
clearvars
clc

warning('off','all')
tic;
%%%%CONV LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
n = 1;
while  true
 


addpath(genpath('matlab'))
addpath(genpath(pwd))
%run vl_compilenn;
run vl_setupnn;


%reading images


strng_1 = sprintf('/Users/Deep Learning/Desktop/DeepFeat/image_dataset/%d.jpg', n);

img1 = imread(strng_1);

type1 = 'GoogLeNet';
type2 = 'GoogLeNet';
layer = 'Conv';

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_Conv/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

salMap_topDown = topDown(img1,type2);

baseFileName_topDown = sprintf('%d_topDown.jpg', n); 
fullFileName_topDown = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_Conv/TD', baseFileName_topDown);
imwrite(salMap_topDown, fullFileName_topDown);


sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_Conv/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_Conv/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);

n = n+1;
if (n == 76)
    break
end
end


%%%%RELU LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%

n = 1;
while  true
 

addpath(genpath('matlab'))
addpath(genpath(pwd))
%run vl_compilenn;
run vl_setupnn;


%reading images


strng_1 = sprintf('/Users/Deep Learning/Desktop/DeepFeat/image_dataset/%d.jpg', n);

img1 = imread(strng_1);

type1 = 'GoogLeNet';
type2 = 'GoogLeNet';
layer = 'ReLU';

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_ReLU/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

salMap_topDown = topDown(img1,type2);

baseFileName_topDown = sprintf('%d_topDown.jpg', n); 
fullFileName_topDown = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_ReLU/TD', baseFileName_topDown);
imwrite(salMap_topDown, fullFileName_topDown);


sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_ReLU/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_ReLU/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);

n = n+1;
if (n == 76)
    break
end
end

%%%%INCEP LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%

n = 1;
while  true
 

addpath(genpath('matlab'))
addpath(genpath(pwd))
%run vl_compilenn;
run vl_setupnn;


%reading images


strng_1 = sprintf('/Users/Deep Learning/Desktop/DeepFeat/image_dataset/%d.jpg', n);

img1 = imread(strng_1);

type1 = 'GoogLeNet';
type2 = 'GoogLeNet';
layer = 'Incep';

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_Incep/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

salMap_topDown = topDown(img1,type2);

baseFileName_topDown = sprintf('%d_topDown.jpg', n); 
fullFileName_topDown = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_Incep/TD', baseFileName_topDown);
imwrite(salMap_topDown, fullFileName_topDown);


sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_Incep/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_Incep/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);

n = n+1;
if (n == 76)
    break
end
end


%%%%All LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%\

n = 1;
while  true
 

addpath(genpath('matlab'))
addpath(genpath(pwd))
%run vl_compilenn;
run vl_setupnn;


%reading images


strng_1 = sprintf('/Users/Deep Learning/Desktop/DeepFeat/image_dataset/%d.jpg', n);

img1 = imread(strng_1);

type1 = 'GoogLeNet';
type2 = 'GoogLeNet';
layer = 'All';

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_All/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

salMap_topDown = topDown(img1,type2);

baseFileName_topDown = sprintf('%d_topDown.jpg', n); 
fullFileName_topDown = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_All/TD', baseFileName_topDown);
imwrite(salMap_topDown, fullFileName_topDown);


sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_All/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_GoogLeNet/GoogLeNet_All/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);

n = n+1;
if (n == 76)
    break
end
end

toc;