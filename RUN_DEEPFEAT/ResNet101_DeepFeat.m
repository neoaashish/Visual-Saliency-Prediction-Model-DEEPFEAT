close all
clearvars
clc

warning('off','all')
tic;

%%%%%%%%%%%TOP DOWN MAP DOES NOT NEED TO BE CALCULATED EVERYTIME%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

 n = 8;
 while  true
 

addpath(genpath('matlab'))
addpath(genpath(pwd))
%run vl_compilenn;
run vl_setupnn;


%reading images


strng_1 = sprintf('/Users/Deep Learning/Desktop/DeepFeat/image_dataset/%d.jpg', n);

img1 = imread(strng_1);


type1 = 'ResNet101';
type2 = 'ResNet101';

fprintf(type2);
fprintf(' Top Down Map for Image no: %d \n',n);


salMap_topDown = topDown(img1,type2);

baseFileName_topDown = sprintf('%d_topDown.jpg', n); 
fullFileName_topDown = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/TopDown_For_All', baseFileName_topDown);
imwrite(salMap_topDown, fullFileName_topDown);


%%%%CONV LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%


 
img1 = imread(strng_1);

layer = 'Conv';

fprintf(layer);
fprintf(' Layer : image no: %d',n);

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Conv/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);


sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Conv/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Conv/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);


%%%%RELU LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%

 
layer = 'ReLU';

fprintf(layer);
fprintf(' Layer : image no: %d \n',n);

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_ReLU/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_ReLU/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_ReLU/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);


%%%%BATCH LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
 
layer = 'Batch';

fprintf(layer);
fprintf(' Layer : image no: %d',n);

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Batch/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Batch/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Batch/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);


%%%%CONCAT LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
 
layer = 'Concat';

fprintf(layer);
fprintf(' Layer : image no: %d',n);

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Concat/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

salMap_topDown = topDown(img1,type2);

sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Concat/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Concat/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);


%%%%BLOCKS LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%


layer = 'Blocks';

fprintf(layer);
fprintf(' Layer : image no: %d',n);

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Blocks/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Blocks/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_Blocks/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);


%%%%All LAYERS%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%\

layer = 'All';

fprintf(layer);
fprintf(' Layer : image no: %d',n);

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('%d_bottomUp.jpg', n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_All/BU', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

sal_NCB = salMap_bottomUp + salMap_topDown;
sal_NCB = double((sal_NCB - min(sal_NCB(:))) ./ (max(sal_NCB(:)) - min(sal_NCB(:))));

baseFileName_NCB = sprintf('%d_NCB.jpg', n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_All/NCB', baseFileName_NCB);
imwrite(sal_NCB, fullFileName_NCB);

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal_NCB + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));

baseFileName_CB = sprintf('%d_CB.jpg', n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat/result_ResNet101/ResNet101_All/CB', baseFileName_CB);
imwrite(salMap, fullFileName_CB);

n = n+1;
if (n == 16)
    break
end
end

toc;