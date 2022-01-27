close all
clearvars
clc

warning('off','all')
tic;

run_DeepFeat_General('GoogLeNet','ReLU');
 
run_DeepFeat_General('GoogLeNet','Conv');

run_DeepFeat_General('GoogLeNet','All');

run_DeepFeat_General('GoogLeNet','Incep');


toc;