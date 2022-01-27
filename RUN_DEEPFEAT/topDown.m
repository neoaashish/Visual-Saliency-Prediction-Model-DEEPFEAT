function salMap = topDown(img1,type)


modelpath = [pwd,'/data/',type,'.mat'];
net = dagnn.DagNN.loadobj(load(modelpath));
net.mode = 'test';

if strcmp(type(1 : 6),'ResNet') == 1
    index = net.getLayerIndex('fc1000');
else
    index = net.getLayerIndex('cls3_fc');
end
    
pname = net.layers(index).params{1};
weights_LR = squeeze(net.getParam(pname).value);

img = imresize(img1, [256 256]);
img_prepared = prepare_image(net, img);

net.eval({'data',img_prepared});
scores = net.vars(net.getVarIndex('prob')).value ;
scores = squeeze(gather(scores)) ;
scores = mean(scores,2);


for i=1:3
    net.removeLayer(net.layers(end).name);
end

net.eval({'data',img_prepared}) ;
activation_lastconv = net.vars(end).value;

[curCAMmapAll] = returnCAMmap(activation_lastconv, weights_LR);

curCAMLarge = zeros(256,256,1000);

for j = 1 : 1000
	curCAMmap_crops = (curCAMmapAll(:,:,j,:));
	curCAMmapLarge_crops = imresize(curCAMmap_crops,[256 256]);
	curCAMLarge(:,:,j) = mergeTenCrop(curCAMmapLarge_crops) .* scores(j);        
end

salMap = imresize(sum(curCAMLarge,3),[size(img1,1) size(img1,2)]);
salMap = double((salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:))));