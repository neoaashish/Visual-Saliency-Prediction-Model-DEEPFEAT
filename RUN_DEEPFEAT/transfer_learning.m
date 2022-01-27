close all
clearvars
clc

x = im2double(imread('/Users/alimahdi/Desktop/Dissertation/Datasets/MIT1003 Dataset/ALLFIXATIONMAPS/i05june05_static_street_boston_p1010764_fixMap.jpg'));
[row, col] = size(x);
sigma = max(row, col);
g = exp(x.^2 / (2 * sigma^2)) / (2 * pi * sigma^2);
figure(1), subplot(1,2,1), imshow(x,[])
figure(1), subplot(1,2,2), imshow(g,[])


% addpath(genpath('/Users/alimahdi/Desktop/Dissertation/MatConvNet'))
% 
% run vl_compilenn;
% run vl_setupnn;

% img_path = '/Users/alimahdi/Desktop/Dissertation/Datasets/OSIE Dataset/fixation_maps/';
% img_dir = dir([img_path, '*fixMap.jpg']);



% img = imresize(single(im), [224 224],'bilinear');
% 
% net = dagnn.DagNN.loadobj(load('/Users/alimahdi/Downloads/imagenet-resnet-50-dag.mat'));
% net.mode = 'test';


% img = imresize(img, net.meta.normalization.imageSize(1:2)) ;
% img = bsxfun(@minus, img, net.meta.normalization.averageImage) ;

% layerName = netLayers('ResNet50','Conv');
% 
% cnt = 0;
% 
% for i = 1 : length(layerName)
%     while length(net.layers) > 1
%         if strcmp(layerName{end - cnt}, net.layers(length(net.layers) - i).name) == 1
%             cnt = cnt + 1;
%             net.eval({'data',img});
%             x = net.vars(end).value;
%         end
%         net.removeLayer(net.layers(end).name);
%     end
% end
%     


% x = squeeze(gather(net.vars(net.getVarIndex('conv1'))));

