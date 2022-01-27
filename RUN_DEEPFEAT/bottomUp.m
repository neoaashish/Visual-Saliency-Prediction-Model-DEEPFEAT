function salMap = bottomUp(img1,type,layer)

layerName = netLayers(type,layer);
[inputImg,X,Y] = inputNetImg(type);
modelpath = ['data/',type,'.mat'];

net = dagnn.DagNN.loadobj(load(modelpath));
net.mode = 'test';

index1(1 : size(layerName,2)) = net.getVarIndex(layerName);

for j = 1 : size(layerName,2)
    net2 = dagnn.DagNN.loadobj(load(modelpath));
    net2.mode = 'test';
    
    for k = 1 : size(net.layers,2) - index1(j) + 1
        net2.removeLayer(net2.layers(end).name);
    end
    
    img = imresize(single(img1), [X Y],'bilinear');
   
    net2.eval({inputImg,img});
    activation_lastconv = net2.vars(end).value;
    RED = impyramid(activation_lastconv,'reduce');
    EXP = impyramid(RED,'expand');
    featMaps = abs(activation_lastconv - imresize(EXP,[size(activation_lastconv,1) size(activation_lastconv,2)]));
    
    iCheck = sum(sum(featMaps,1),2);
    iIndex = isnan(iCheck);
    featMaps(:,:,iIndex) = 0;

    sal = sum(featMaps,3);
    sal = imresize(sal,[112 112]);
    tmp(:,:,j) = (sal - min(sal(:))) ./ (max(sal(:)) - min(sal(:)));
%     tmp = sal;
    clear RED EXP featMaps sal activation_lastconv conv_layer;
end

salMap = imresize(sum(tmp,3),[size(img1,1) size(img1,2)]);
salMap = double((salMap - min(salMap(:))) ./ (max(salMap(:)) - min(salMap(:))));
imshow (salMap);



