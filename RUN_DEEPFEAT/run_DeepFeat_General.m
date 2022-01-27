
function salMap = run_DeepFeat_General(Network_Name,Layer_Type)

n = 3;
while  true
 

addpath(genpath('matlab'))
addpath(genpath(pwd))
%run vl_compilenn;
run vl_setupnn;

disp('vl_setup done')

fprintf('%s_%s_Layer_Image_%d',Network_Name, Layer_Type, n);


%reading images

strng_1 = sprintf('/Users/Deep Learning/Desktop/DeepFeat/image_dataset/%d.jpg', n);

img1 = imread(strng_1);

type1 = Network_Name;
type2 = Network_Name;
layer = Layer_Type;

salMap_bottomUp = bottomUp(img1,type1,layer);

baseFileName_bottomUp = sprintf('result_%s/%s/BU/%d.jpg',Network_Name,Layer_Type,n); 
fullFileName_bottomUp = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat', baseFileName_bottomUp);
imwrite(salMap_bottomUp, fullFileName_bottomUp);

salMap_topDown = topDown(img1,type2);

baseFileName_topDown = sprintf('result_%s/%s/TD/%d.jpg',Network_Name,Layer_Type,n); 
fullFileName_topDown = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat', baseFileName_topDown);
imwrite(salMap_topDown, fullFileName_topDown);


salMap_NCB = salMap_bottomUp + salMap_topDown;
salMap_NCB = double((salMap_NCB - min(salMap_NCB(:))) ./ (max(salMap_NCB(:)) - min(salMap_NCB(:))));
 
baseFileName_NCB = sprintf('result_%s/%s/NCB/%d.jpg',Network_Name,Layer_Type,n); 
fullFileName_NCB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat', baseFileName_NCB);
imwrite(salMap_NCB, fullFileName_NCB);

 cen = imread([pwd,'/center.jpg']);
 cen = double(imresize(cen,[size(img1,1) size(img1,2)])) ./ 255;
 cen = (cen - min(cen(:))) ./ (max(cen(:)) - min(cen(:)));
 
 salMap = salMap_NCB + cen;
 salMap = exp(salMap) ./ sum(sum(exp(salMap)));
 salMap = (salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:)));
 
baseFileName_CB = sprintf('result_%s/%s/CB/%d.jpg',Network_Name,Layer_Type,n); 
fullFileName_CB = fullfile('C:/Users/Deep Learning/Desktop/DeepFeat', baseFileName_CB);
imwrite(salMap, fullFileName_CB);


n = n+1;
if (n == 76)
    break
end
end
