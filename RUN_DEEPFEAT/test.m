close all
clear all
clc
%% Look through ResNet
addpath(genpath('/Users/alimahdi/Desktop/Dissertation/MatConvNet/'))

run vl_compilenn;
run vl_setupnn;

% opts = vl_argparse(opts,varargin) ;

%% prepare image and the model
img1 = imread('/Users/alimahdi/Desktop/Dissertation/Datasets/MIT1003 Dataset/ALLSTIMULI/i05june05_static_street_boston_p1010764.jpeg');
buMap = imread('/Users/alimahdi/Desktop/Dissertation/DeepFeat 2/results/Bottom Up/MIT1003/i05june05_static_street_boston_p1010764_GoogLeNet'):
imshow(salMap,[])








