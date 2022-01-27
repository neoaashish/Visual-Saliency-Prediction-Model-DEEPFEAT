close all
clearvars
clc
warning('off','all')

addpath(genpath('/Users/alimahdi/Desktop/Dissertation/MIT_evaluation_metrics/'))

img_dir = dir('/Users/alimahdi/Desktop/Dissertation/Datasets/MIT1003 Dataset/ALLSTIMULI');
fix_path = '/Users/alimahdi/Desktop/Dissertation/Datasets/MIT1003 Dataset/ALLFIXATIONMAPS/';


fprintf('Progress over the MIT1003 dataset %%0');
fprintf('\n');

for i = 1 : 1003
    tic
    strng = img_dir(i + 4).name;
    
    alexnet_conv = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_alexnet_conv.jpg']));
    alexnet_relu = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_alexnet_relu.jpg']));
    alexnet_pool = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_alexnet_pool.jpg']));
    alexnet_all = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_alexnet_all.jpg']));
    vgg16_conv = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_vgg16_conv.jpg']));
    vgg16_relu = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_vgg16_relu.jpg']));
    vgg16_pool = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_vgg16_pool.jpg']));
    vgg16_all = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_vgg16_all.jpg']));
    vgg19_conv = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_vgg19_conv.jpg']));
    vgg19_relu = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_vgg19_relu.jpg']));
    vgg19_pool = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_vgg19_pool.jpg']));
    vgg19_all = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_vgg19_all.jpg']));
    googlenet_conv = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_googlenet_conv.jpg']));
    googlenet_relu = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_googlenet_relu.jpg']));
    googlenet_pool = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_googlenet_pool.jpg']));
    googlenet_incep = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_googlenet_incep.jpg']));
    googlenet_all = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_googlenet_all.jpg']));
    resnet50_conv = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet50_conv.jpg']));
    resnet50_relu = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet50_relu.jpg']));
    resnet50_batch = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet50_batch.jpg']));
    resnet50_concat = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet50_concat.jpg']));
    resnet50_blocks = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet50_blocks.jpg']));
    resnet50_all = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet50_all.jpg']));
    resnet101_conv = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet101_conv.jpg']));
    resnet101_relu = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet101_relu.jpg']));
    resnet101_batch = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet101_batch.jpg']));
    resnet101_concat = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet101_concat.jpg']));
    resnet101_blocks = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet101_blocks.jpg']));
    resnet101_all = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet101_all.jpg']));
    resnet152_conv = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet152_conv.jpg']));
    resnet152_relu = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet152_relu.jpg']));
    resnet152_batch = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet152_batch.jpg']));
    resnet152_concat = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet152_concat.jpg']));
    resnet152_blocks = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet152_blocks.jpg']));
    resnet152_all = im2double(imread([pwd,'/MIT1003/',strng(1 : end - 5),'_resnet152_all.jpg']));
    
    
    fixMap = im2double(imread([fix_path,strng(1 : end - 5),'_fixMap.jpg']));
    fixPts = im2double(imread([fix_path,strng(1 : end - 5),'_fixPts.jpg']));

    
    [score.AUC_judd(i).alexnet_conv,~,~,~] = AUC_Judd(alexnet_conv,fixPts);
    [score.AUC_judd(i).alexnet_relu,~,~,~] = AUC_Judd(alexnet_relu,fixPts);
    [score.AUC_judd(i).alexnet_pool,~,~,~] = AUC_Judd(alexnet_pool,fixPts);
    [score.AUC_judd(i).alexnet_all,~,~,~] = AUC_Judd(alexnet_all,fixPts);
    [score.AUC_judd(i).vgg16_conv,~,~,~] = AUC_Judd(vgg16_conv,fixPts);
    [score.AUC_judd(i).vgg16_relu,~,~,~] = AUC_Judd(vgg16_relu,fixPts);
    [score.AUC_judd(i).vgg16_pool,~,~,~] = AUC_Judd(vgg16_pool,fixPts);
    [score.AUC_judd(i).vgg16_all,~,~,~] = AUC_Judd(vgg16_all,fixPts);
    [score.AUC_judd(i).vgg19_conv,~,~,~] = AUC_Judd(vgg19_conv,fixPts);
    [score.AUC_judd(i).vgg19_relu,~,~,~] = AUC_Judd(vgg19_relu,fixPts);
    [score.AUC_judd(i).vgg19_pool,~,~,~] = AUC_Judd(vgg19_pool,fixPts);
    [score.AUC_judd(i).vgg19_all,~,~,~] = AUC_Judd(vgg19_all,fixPts);
    [score.AUC_judd(i).googlenet_conv,~,~,~] = AUC_Judd(googlenet_conv,fixPts);
    [score.AUC_judd(i).googlenet_relu,~,~,~] = AUC_Judd(googlenet_relu,fixPts);
    [score.AUC_judd(i).googlenet_pool,~,~,~] = AUC_Judd(googlenet_pool,fixPts);
    [score.AUC_judd(i).googlenet_incep,~,~,~] = AUC_Judd(googlenet_incep,fixPts);
    [score.AUC_judd(i).googlenet_all,~,~,~] = AUC_Judd(googlenet_all,fixPts);
    [score.AUC_judd(i).resnet50_conv,~,~,~] = AUC_Judd(resnet50_conv,fixPts);
    [score.AUC_judd(i).resnet50_relu,~,~,~] = AUC_Judd(resnet50_relu,fixPts);
    [score.AUC_judd(i).resnet50_batch,~,~,~] = AUC_Judd(resnet50_batch,fixPts);
    [score.AUC_judd(i).resnet50_concat,~,~,~] = AUC_Judd(resnet50_concat,fixPts);
    [score.AUC_judd(i).resnet50_blocks,~,~,~] = AUC_Judd(resnet50_blocks,fixPts);
    [score.AUC_judd(i).resnet50_all,~,~,~] = AUC_Judd(resnet50_all,fixPts);
    [score.AUC_judd(i).resnet101_conv,~,~,~] = AUC_Judd(resnet101_conv,fixPts);
    [score.AUC_judd(i).resnet101_relu,~,~,~] = AUC_Judd(resnet101_relu,fixPts);
    [score.AUC_judd(i).resnet101_batch,~,~,~] = AUC_Judd(resnet101_batch,fixPts);
    [score.AUC_judd(i).resnet101_concat,~,~,~] = AUC_Judd(resnet101_concat,fixPts);
    [score.AUC_judd(i).resnet101_blocks,~,~,~] = AUC_Judd(resnet101_blocks,fixPts);
    [score.AUC_judd(i).resnet101_all,~,~,~] = AUC_Judd(resnet101_all,fixPts);
    [score.AUC_judd(i).resnet152_conv,~,~,~] = AUC_Judd(resnet152_conv,fixPts);
    [score.AUC_judd(i).resnet152_relu,~,~,~] = AUC_Judd(resnet152_relu,fixPts);
    [score.AUC_judd(i).resnet152_batch,~,~,~] = AUC_Judd(resnet152_batch,fixPts);
    [score.AUC_judd(i).resnet152_concat,~,~,~] = AUC_Judd(resnet152_concat,fixPts);
    [score.AUC_judd(i).resnet152_blocks,~,~,~] = AUC_Judd(resnet152_blocks,fixPts);
    [score.AUC_judd(i).resnet152_all,~,~,~] = AUC_Judd(resnet152_all,fixPts);
    
    
    [score.AUC_borji(i).alexnet_conv,~,~] = AUC_Borji(alexnet_conv,fixPts);
    [score.AUC_borji(i).alexnet_relu,~,~] = AUC_Borji(alexnet_relu,fixPts);
    [score.AUC_borji(i).alexnet_pool,~,~] = AUC_Borji(alexnet_pool,fixPts);
    [score.AUC_borji(i).alexnet_all,~,~] = AUC_Borji(alexnet_all,fixPts);
    [score.AUC_borji(i).vgg16_conv,~,~] = AUC_Borji(vgg16_conv,fixPts);
    [score.AUC_borji(i).vgg16_relu,~,~] = AUC_Borji(vgg16_relu,fixPts);
    [score.AUC_borji(i).vgg16_pool,~,~] = AUC_Borji(vgg16_pool,fixPts);
    [score.AUC_borji(i).vgg16_all,~,~] = AUC_Borji(vgg16_all,fixPts);
    [score.AUC_borji(i).vgg19_conv,~,~] = AUC_Borji(vgg19_conv,fixPts);
    [score.AUC_borji(i).vgg19_relu,~,~] = AUC_Borji(vgg19_relu,fixPts);
    [score.AUC_borji(i).vgg19_pool,~,~] = AUC_Borji(vgg19_pool,fixPts);
    [score.AUC_borji(i).vgg19_all,~,~] = AUC_Borji(vgg19_all,fixPts);
    [score.AUC_borji(i).googlenet_conv,~,~] = AUC_Borji(googlenet_conv,fixPts);
    [score.AUC_borji(i).googlenet_relu,~,~] = AUC_Borji(googlenet_relu,fixPts);
    [score.AUC_borji(i).googlenet_pool,~,~] = AUC_Borji(googlenet_pool,fixPts);
    [score.AUC_borji(i).googlenet_incep,~,~] = AUC_Borji(googlenet_incep,fixPts);
    [score.AUC_borji(i).googlenet_all,~,~] = AUC_Borji(googlenet_all,fixPts);
    [score.AUC_borji(i).resnet50_conv,~,~] = AUC_Borji(resnet50_conv,fixPts);
    [score.AUC_borji(i).resnet50_relu,~,~] = AUC_Borji(resnet50_relu,fixPts);
    [score.AUC_borji(i).resnet50_batch,~,~] = AUC_Borji(resnet50_batch,fixPts);
    [score.AUC_borji(i).resnet50_concat,~,~] = AUC_Borji(resnet50_concat,fixPts);
    [score.AUC_borji(i).resnet50_blocks,~,~] = AUC_Borji(resnet50_blocks,fixPts);
    [score.AUC_borji(i).resnet50_all,~,~] = AUC_Borji(resnet50_all,fixPts);
    [score.AUC_borji(i).resnet101_conv,~,~] = AUC_Borji(resnet101_conv,fixPts);
    [score.AUC_borji(i).resnet101_relu,~,~] = AUC_Borji(resnet101_relu,fixPts);
    [score.AUC_borji(i).resnet101_batch,~,~] = AUC_Borji(resnet101_batch,fixPts);
    [score.AUC_borji(i).resnet101_concat,~,~] = AUC_Borji(resnet101_concat,fixPts);
    [score.AUC_borji(i).resnet101_blocks,~,~] = AUC_Borji(resnet101_blocks,fixPts);
    [score.AUC_borji(i).resnet101_all,~,~] = AUC_Borji(resnet101_all,fixPts);
    [score.AUC_borji(i).resnet152_conv,~,~] = AUC_Borji(resnet152_conv,fixPts);
    [score.AUC_borji(i).resnet152_relu,~,~] = AUC_Borji(resnet152_relu,fixPts);
    [score.AUC_borji(i).resnet152_batch,~,~] = AUC_Borji(resnet152_batch,fixPts);
    [score.AUC_borji(i).resnet152_concat,~,~] = AUC_Borji(resnet152_concat,fixPts);
    [score.AUC_borji(i).resnet152_blocks,~,~] = AUC_Borji(resnet152_blocks,fixPts);
    [score.AUC_borji(i).resnet152_all,~,~] = AUC_Borji(resnet152_all,fixPts);
    
    
    score.NSS(i).alexnet_conv = NSS(alexnet_conv,fixPts);
    score.NSS(i).alexnet_relu = NSS(alexnet_relu,fixPts);
    score.NSS(i).alexnet_pool = NSS(alexnet_pool,fixPts);
    score.NSS(i).alexnet_all = NSS(alexnet_all,fixPts);
    score.NSS(i).vgg16_conv = NSS(vgg16_conv,fixPts);
    score.NSS(i).vgg16_relu = NSS(vgg16_relu,fixPts);
    score.NSS(i).vgg16_pool = NSS(vgg16_pool,fixPts);
    score.NSS(i).vgg16_all = NSS(vgg16_all,fixPts);
    score.NSS(i).vgg19_conv = NSS(vgg19_conv,fixPts);
    score.NSS(i).vgg19_relu = NSS(vgg19_relu,fixPts);
    score.NSS(i).vgg19_pool = NSS(vgg19_pool,fixPts);
    score.NSS(i).vgg19_all = NSS(vgg19_all,fixPts);
    score.NSS(i).googlenet_conv = NSS(googlenet_conv,fixPts);
    score.NSS(i).googlenet_relu = NSS(googlenet_relu,fixPts);
    score.NSS(i).googlenet_pool = NSS(googlenet_pool,fixPts);
    score.NSS(i).googlenet_incep = NSS(googlenet_incep,fixPts);
    score.NSS(i).googlenet_all = NSS(googlenet_all,fixPts);
    score.NSS(i).resnet50_conv = NSS(resnet50_conv,fixPts);
    score.NSS(i).resnet50_relu = NSS(resnet50_relu,fixPts);
    score.NSS(i).resnet50_batch = NSS(resnet50_batch,fixPts);
    score.NSS(i).resnet50_concat = NSS(resnet50_concat,fixPts);
    score.NSS(i).resnet50_blocks = NSS(resnet50_blocks,fixPts);
    score.NSS(i).resnet50_all = NSS(resnet50_all,fixPts);
    score.NSS(i).resnet101_conv = NSS(resnet101_conv,fixPts);
    score.NSS(i).resnet101_relu = NSS(resnet101_relu,fixPts);
    score.NSS(i).resnet101_batch = NSS(resnet101_batch,fixPts);
    score.NSS(i).resnet101_concat = NSS(resnet101_concat,fixPts);
    score.NSS(i).resnet101_blocks = NSS(resnet101_blocks,fixPts);
    score.NSS(i).resnet101_all = NSS(resnet101_all,fixPts);
    score.NSS(i).resnet152_conv = NSS(resnet152_conv,fixPts);
    score.NSS(i).resnet152_relu = NSS(resnet152_relu,fixPts);
    score.NSS(i).resnet152_batch = NSS(resnet152_batch,fixPts);
    score.NSS(i).resnet152_concat = NSS(resnet152_concat,fixPts);
    score.NSS(i).resnet152_blocks = NSS(resnet152_blocks,fixPts);
    score.NSS(i).resnet152_all = NSS(resnet152_all,fixPts);
    
    
    score.SIM(i).alexnet_conv = similarity(alexnet_conv,fixMap);
    score.SIM(i).alexnet_relu = similarity(alexnet_relu,fixMap);
    score.SIM(i).alexnet_pool = similarity(alexnet_pool,fixMap);
    score.SIM(i).alexnet_all = similarity(alexnet_all,fixMap);
    score.SIM(i).vgg16_conv = similarity(vgg16_conv,fixMap);
    score.SIM(i).vgg16_relu = similarity(vgg16_relu,fixMap);
    score.SIM(i).vgg16_pool = similarity(vgg16_pool,fixMap);
    score.SIM(i).vgg16_all = similarity(vgg16_all,fixMap);
    score.SIM(i).vgg19_conv = similarity(vgg19_conv,fixMap);
    score.SIM(i).vgg19_relu = similarity(vgg19_relu,fixMap);
    score.SIM(i).vgg19_pool = similarity(vgg19_pool,fixMap);
    score.SIM(i).vgg19_all = similarity(vgg19_all,fixMap);
    score.SIM(i).googlenet_conv = similarity(googlenet_conv,fixMap);
    score.SIM(i).googlenet_relu = similarity(googlenet_relu,fixMap);
    score.SIM(i).googlenet_pool = similarity(googlenet_pool,fixMap);
    score.SIM(i).googlenet_incep = similarity(googlenet_incep,fixMap);
    score.SIM(i).googlenet_all = similarity(googlenet_all,fixMap);
    score.SIM(i).resnet50_conv = similarity(resnet50_conv,fixMap);
    score.SIM(i).resnet50_relu = similarity(resnet50_relu,fixMap);
    score.SIM(i).resnet50_batch = similarity(resnet50_batch,fixMap);
    score.SIM(i).resnet50_concat = similarity(resnet50_concat,fixMap);
    score.SIM(i).resnet50_blocks = similarity(resnet50_blocks,fixMap);
    score.SIM(i).resnet50_all = similarity(resnet50_all,fixMap);
    score.SIM(i).resnet101_conv = similarity(resnet101_conv,fixMap);
    score.SIM(i).resnet101_relu = similarity(resnet101_relu,fixMap);
    score.SIM(i).resnet101_batch = similarity(resnet101_batch,fixMap);
    score.SIM(i).resnet101_concat = similarity(resnet101_concat,fixMap);
    score.SIM(i).resnet101_blocks = similarity(resnet101_blocks,fixMap);
    score.SIM(i).resnet101_all = similarity(resnet101_all,fixMap);
    score.SIM(i).resnet152_conv = similarity(resnet152_conv,fixMap);
    score.SIM(i).resnet152_relu = similarity(resnet152_relu,fixMap);
    score.SIM(i).resnet152_batch = similarity(resnet152_batch,fixMap);
    score.SIM(i).resnet152_concat = similarity(resnet152_concat,fixMap);
    score.SIM(i).resnet152_blocks = similarity(resnet152_blocks,fixMap);
    score.SIM(i).resnet152_all = similarity(resnet152_all,fixMap);
    
    
    score.CC(i).alexnet_conv = CC(alexnet_conv,fixMap);
    score.CC(i).alexnet_relu = CC(alexnet_relu,fixMap);
    score.CC(i).alexnet_pool = CC(alexnet_pool,fixMap);
    score.CC(i).alexnet_all = CC(alexnet_all,fixMap);
    score.CC(i).vgg16_conv = CC(vgg16_conv,fixMap);
    score.CC(i).vgg16_relu = CC(vgg16_relu,fixMap);
    score.CC(i).vgg16_pool = CC(vgg16_pool,fixMap);
    score.CC(i).vgg16_all = CC(vgg16_all,fixMap);
    score.CC(i).vgg19_conv = CC(vgg19_conv,fixMap);
    score.CC(i).vgg19_relu = CC(vgg19_relu,fixMap);
    score.CC(i).vgg19_pool = CC(vgg19_pool,fixMap);
    score.CC(i).vgg19_all = CC(vgg19_all,fixMap);
    score.CC(i).googlenet_conv = CC(googlenet_conv,fixMap);
    score.CC(i).googlenet_relu = CC(googlenet_relu,fixMap);
    score.CC(i).googlenet_pool = CC(googlenet_pool,fixMap);
    score.CC(i).googlenet_incep = CC(googlenet_incep,fixMap);
    score.CC(i).googlenet_all = CC(googlenet_all,fixMap);
    score.CC(i).resnet50_conv = CC(resnet50_conv,fixMap);
    score.CC(i).resnet50_relu = CC(resnet50_relu,fixMap);
    score.CC(i).resnet50_batch = CC(resnet50_batch,fixMap);
    score.CC(i).resnet50_concat = CC(resnet50_concat,fixMap);
    score.CC(i).resnet50_blocks = CC(resnet50_blocks,fixMap);
    score.CC(i).resnet50_all = CC(resnet50_all,fixMap);
    score.CC(i).resnet101_conv = CC(resnet101_conv,fixMap);
    score.CC(i).resnet101_relu = CC(resnet101_relu,fixMap);
    score.CC(i).resnet101_batch = CC(resnet101_batch,fixMap);
    score.CC(i).resnet101_concat = CC(resnet101_concat,fixMap);
    score.CC(i).resnet101_blocks = CC(resnet101_blocks,fixMap);
    score.CC(i).resnet101_all = CC(resnet101_all,fixMap);
    score.CC(i).resnet152_conv = CC(resnet152_conv,fixMap);
    score.CC(i).resnet152_relu = CC(resnet152_relu,fixMap);
    score.CC(i).resnet152_batch = CC(resnet152_batch,fixMap);
    score.CC(i).resnet152_concat = CC(resnet152_concat,fixMap);
    score.CC(i).resnet152_blocks = CC(resnet152_blocks,fixMap);
    score.CC(i).resnet152_all = CC(resnet152_all,fixMap);
    
    
    score.KL(i).alexnet_conv = KLdiv(alexnet_conv,fixMap);
    score.KL(i).alexnet_relu = KLdiv(alexnet_relu,fixMap);
    score.KL(i).alexnet_pool = KLdiv(alexnet_pool,fixMap);
    score.KL(i).alexnet_all = KLdiv(alexnet_all,fixMap);
    score.KL(i).vgg16_conv = KLdiv(vgg16_conv,fixMap);
    score.KL(i).vgg16_relu = KLdiv(vgg16_relu,fixMap);
    score.KL(i).vgg16_pool = KLdiv(vgg16_pool,fixMap);
    score.KL(i).vgg16_all = KLdiv(vgg16_all,fixMap);
    score.KL(i).vgg19_conv = KLdiv(vgg19_conv,fixMap);
    score.KL(i).vgg19_relu = KLdiv(vgg19_relu,fixMap);
    score.KL(i).vgg19_pool = KLdiv(vgg19_pool,fixMap);
    score.KL(i).vgg19_all = KLdiv(vgg19_all,fixMap);
    score.KL(i).googlenet_conv = KLdiv(googlenet_conv,fixMap);
    score.KL(i).googlenet_relu = KLdiv(googlenet_relu,fixMap);
    score.KL(i).googlenet_pool = KLdiv(googlenet_pool,fixMap);
    score.KL(i).googlenet_incep = KLdiv(googlenet_incep,fixMap);
    score.KL(i).googlenet_all = KLdiv(googlenet_all,fixMap);
    score.KL(i).resnet50_conv = KLdiv(resnet50_conv,fixMap);
    score.KL(i).resnet50_relu = KLdiv(resnet50_relu,fixMap);
    score.KL(i).resnet50_batch = KLdiv(resnet50_batch,fixMap);
    score.KL(i).resnet50_concat = KLdiv(resnet50_concat,fixMap);
    score.KL(i).resnet50_blocks = KLdiv(resnet50_blocks,fixMap);
    score.KL(i).resnet50_all = KLdiv(resnet50_all,fixMap);
    score.KL(i).resnet101_conv = KLdiv(resnet101_conv,fixMap);
    score.KL(i).resnet101_relu = KLdiv(resnet101_relu,fixMap);
    score.KL(i).resnet101_batch = KLdiv(resnet101_batch,fixMap);
    score.KL(i).resnet101_concat = KLdiv(resnet101_concat,fixMap);
    score.KL(i).resnet101_blocks = KLdiv(resnet101_blocks,fixMap);
    score.KL(i).resnet101_all = KLdiv(resnet101_all,fixMap);
    score.KL(i).resnet152_conv = KLdiv(resnet152_conv,fixMap);
    score.KL(i).resnet152_relu = KLdiv(resnet152_relu,fixMap);
    score.KL(i).resnet152_batch = KLdiv(resnet152_batch,fixMap);
    score.KL(i).resnet152_concat = KLdiv(resnet152_concat,fixMap);
    score.KL(i).resnet152_blocks = KLdiv(resnet152_blocks,fixMap);
    score.KL(i).resnet152_all = KLdiv(resnet152_all,fixMap);
    
    progress = i * 100 / 1003;
    clc;
    fprintf('Progress over the MIT1003 dataset %%');
    fprintf('%G',progress);

end

save([pwd,'/score.mat'],'score');