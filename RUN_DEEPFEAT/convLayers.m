function cl = convLayers(layerNum,netType)

if strcmp(netType,'resnet') == 1
    if layerNum == 50
        cl = {'conv1','res2a_branch2a','res2a_branch2b','res2a_branch2c', ...
        'res2b_branch2a','res2b_branch2b','res2b_branch2c','res2c_branch2a', ...
        'res2c_branch2b','res2c_branch2c','res3a_branch2a','res3a_branch2b', ...
        'res3a_branch2c','res3b_branch2a','res3b_branch2b','res3b_branch2c', ...
        'res3c_branch2a','res3c_branch2b','res3c_branch2c','res3d_branch2a', ...
        'res3d_branch2b','res3d_branch2c','res4a_branch2a','res4a_branch2b', ...
        'res4a_branch2c','res4b_branch2a','res4b_branch2b','res4b_branch2c', ...
        'res4c_branch2a','res4c_branch2b','res4c_branch2c','res4d_branch2a', ...
        'res4d_branch2b','res4d_branch2c','res4e_branch2a','res4e_branch2b', ...
        'res4e_branch2c','res4f_branch2a','res4f_branch2b','res4f_branch2c', ...
        'res5a_branch2a','res5a_branch2b','res5a_branch2c','res5b_branch2a', ...
        'res5b_branch2b','res5b_branch2c','res5c_branch2a','res5c_branch2b', ...
        'res5c_branch2c'};
    end
    
    if layerNum == 101
            cl = {'conv1','res2a_branch2a','res2a_branch2b','res2a_branch2c', ...
    'res2b_branch2a','res2b_branch2b','res2b_branch2c','res2c_branch2a', ...
    'res2c_branch2b','res2c_branch2c','res3a_branch2a','res3a_branch2b', ...
    'res3a_branch2c','res3b1_branch2a','res3b1_branch2b','res3b1_branch2c', ...
    'res3b2_branch2a','res3b2_branch2b','res3b2_branch2c','res3b3_branch2a', ...
    'res3b3_branch2b','res3b3_branch2c','res4a_branch2a','res4a_branch2b', ...
    'res4a_branch2c','res4b1_branch2a','res4b1_branch2b','res4b1_branch2c', ...
    'res4b2_branch2a','res4b2_branch2b','res4b2_branch2c','res4b3_branch2a', ...
    'res4b3_branch2b','res4b3_branch2c','res4b4_branch2a','res4b4_branch2b', ...
    'res4b4_branch2c','res4b5_branch2a','res4b5_branch2b','res4b5_branch2c', ...
    'res4b6_branch2a','res4b6_branch2b','res4b6_branch2c','res4b7_branch2a', ...
    'res4b7_branch2b','res4b7_branch2c','res4b8_branch2a','res4b8_branch2b', ...
    'res4b8_branch2c','res4b9_branch2a','res4b9_branch2b','res4b9_branch2c', ...
    'res4b10_branch2a','res4b10_branch2b','res4b10_branch2c','res4b11_branch2a', ...
    'res4b11_branch2b','res4b11_branch2c','res4b12_branch2a','res4b12_branch2b', ...
    'res4b12_branch2c','res4b13_branch2a','res4b13_branch2b','res4b13_branch2c', ...
    'res4b14_branch2a','res4b14_branch2b','res4b14_branch2c','res4b15_branch2a', ...
    'res4b15_branch2b','res4b15_branch2c','res4b16_branch2a','res4b16_branch2b', ...
    'res4b16_branch2c','res4b17_branch2a','res4b17_branch2b','res4b17_branch2c', ...
    'res4b18_branch2a','res4b18_branch2b','res4b18_branch2c','res4b19_branch2a', ...
    'res4b19_branch2b','res4b19_branch2c','res4b20_branch2a','res4b20_branch2b', ...
    'res4b20_branch2c','res4b21_branch2a','res4b21_branch2b','res4b21_branch2c', ...
    'res4b22_branch2a','res4b22_branch2b','res4b22_branch2c','res5a_branch2a', ...
    'res5a_branch2b','res5a_branch2c','res5b_branch2a','res5b_branch2b', ...
    'res5b_branch2c','res5c_branch2a','res5c_branch2b','res5c_branch2c'};
    end
    
    if layerNum ~= 50 && layerNum ~=101
        error('Incorrect number of network layers. Select 50, 101, or 152 layers');
    end
    
else
    error('Incorrect network name. Select a valid network name');
end