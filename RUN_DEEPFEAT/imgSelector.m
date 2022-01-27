close all
clearvars
clc

mkdir([pwd,'/CVPR/fig1']);

imgDir = dir('/Users/alimahdi/Desktop/Dissertation/Datasets/MIT1003 Dataset/ALLSTIMULI');

i = 775;

strng = imgDir(i + 4).name;

img = im2double(imread(['/Users/alimahdi/Desktop/Dissertation/Datasets/MIT1003 Dataset/ALLSTIMULI/', ...
    strng]));


sal = im2double(imread(['/Volumes/Untitled/results/DeepFeat/MIT1003/',strng(1 : end - 5), ...
    '_GoogLeNet_CB.jpg']));


fix = im2double(imread(['/Users/alimahdi/Desktop/Dissertation/Datasets/MIT1003 Dataset/ALLFIXATIONMAPS/', ...
    strng(1 : end - 5),'_fixMap.jpg']));

bms = im2double(imread(['/Users/alimahdi/Desktop/Dissertation/DeepFeat/state_of_the_art_saliency_models/Saliency Maps/BMS/', ...
    strng]));

tmp = map2jpg(fix, [], 'jet');
fixMap = img*0.4+tmp*0.6;

tmp = map2jpg(sal, [], 'jet');
salMap = img*0.4+tmp*0.6;

tmp = map2jpg(bms, [], 'jet');
bmsMap = img*0.4+tmp*0.6;

% imwrite(img,[pwd,'/CVPR/fig1/img',num2str(i),'.jpg']);
% imwrite(fixMap,[pwd,'/CVPR/fig1/fixMap',num2str(i),'.jpg']);
% imwrite(salMap,[pwd,'/CVPR/fig1/salMap',num2str(i),'.jpg']);
% imwrite(bmsMap,[pwd,'/CVPR/fig1/bmsMap',num2str(i),'.jpg']);

figure(1),subplot(2,2,1),imshow(img)
figure(1),subplot(2,2,2),imshow(fixMap)
figure(1),subplot(2,2,3),imshow(salMap)
figure(1),subplot(2,2,4),imshow(bmsMap)