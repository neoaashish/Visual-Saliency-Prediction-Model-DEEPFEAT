function salMap = DeepFeat(img,type1,layer,type2)
% Deep Features Saliency 
% By: Ali Mahdi and Jun Qin

BU_salMap = bottomUp(img,type1,layer);
TD_salMap = topDown(img,type2);

imshow(BU_salMap,[])
pause(3);

imshow(TD_salMap,[])
pause(3);


% Linear Combination
sal = BU_salMap + TD_salMap;
sal = double((sal - min(sal(:))) ./ (max(sal(:)) - min(sal(:))));

cen = imread([pwd,'/center.jpg']);
cen = double(imresize(cen,[size(img,1) size(img,2)])) ./ 255;
cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));

salMap = sal + cen;
salMap = exp(salMap) ./ sum(sum(exp(salMap)));
salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));