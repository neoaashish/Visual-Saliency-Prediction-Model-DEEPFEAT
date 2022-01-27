function L = netLayers(net,layer)

addpath src;

if strcmp(net,'AlexNet') == 1
    
    L = AlexNetLayers(layer);
    
end

if strcmp(net,'VGG-16') == 1
    
    L = VGG16Layers(layer);
    
end

if strcmp(net,'VGG-19') == 1
    
    L = VGG19Layers(layer);
    
end

if strcmp(net,'GoogLeNet') == 1
    
    L = GoogLeNetLayers(layer);
    
end

if strcmp(net,'ResNet50') == 1
    
    L = ResNet50Layers(layer);
    
end

if strcmp(net,'ResNet101') == 1
    
    L = ResNet101Layers(layer);
    
end

if strcmp(net,'ResNet152') == 1
    
    L = ResNet152Layers(layer);
    
end


