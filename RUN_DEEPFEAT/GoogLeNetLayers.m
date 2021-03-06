function L = GoogLeNetLayers(layer)

% This function call specific response images of GoogLeNet
% The layer names and numbers are used for the MatConvNet implementation 
% of GoogLeNet
%
% Layer options of the function are:
% - "Conv": convolutional image responses.
% - "ReLU": rectified linear units as an activation function.
% - "Pool": Maximum pooling response images.
% - "Incep": Inception module.
% - "All": all response images of the network.
%
% =========================================================================
% By: Ali Mahdi & Jun Qin 07-17
% =========================================================================

% call convolution response images
if strcmp(layer,'Conv') == 1
	L = {'conv1','reduction2','conv2','icp1_out0','icp1_out3', ...
        'icp1_reduction1','icp1_out1','icp1_reduction2','icp1_out2', ...
        'icp2_out0','icp2_out3','icp2_reduction1','icp2_out1', ...
        'icp2_reduction2','icp2_out2','icp3_out0','icp3_out3', ...
        'icp3_reduction1','icp3_out1','icp3_reduction2','icp3_out2', ...
        'icp4_reduction2','icp4_out2','icp4_out0','icp4_out3', ...
        'icp4_reduction1','icp4_out1','icp5_out0','icp5_out3', ...
        'icp5_reduction1','icp5_out1','icp5_reduction2','icp5_out2', ...
        'icp6_out0','icp6_out3','icp6_reduction1','icp6_out1', ...
        'icp6_reduction2','icp6_out2','icp7_reduction2','icp7_out2', ...
        'icp7_out0','icp7_out3','icp7_reduction1','icp7_out1', ...
        'icp8_out0','icp8_out3','icp8_reduction1','icp8_out1', ...
        'icp8_reduction2','icp8_out2','icp9_out0','icp9_out3', ...
        'icp9_reduction1','icp9_out1','icp9_reduction2','icp9_out2'};
end
    
% call ReLU activation response images
if strcmp(layer,'ReLU') == 1
	L = {'conv1x','reduction2x','conv2x','icp1_out0x','icp1_out3x', ...
        'icp1_reduction1x','icp1_out1x','icp1_reduction2x','icp1_out2x', ...
        'icp2_out0x','icp2_out3x','icp2_reduction1x','icp2_out1x', ...
        'icp2_reduction2x','icp2_out2x','icp3_out0x','icp3_out3x', ...
        'icp3_reduction1x','icp3_out1x','icp3_reduction2x','icp3_out2x' ...
        'icp4_reduction2x','icp4_out2x','icp4_out0x','icp4_out3x', ...
        'icp4_reduction1x','icp4_out1x','icp5_out0x','icp5_out3x', ...
        'icp5_reduction1x','icp5_out1x','icp5_reduction2x','icp5_out2x', ...
        'icp6_out0x','icp6_out3x','icp6_reduction1x','icp6_out1x', ...
        'icp6_reduction2x','icp6_out2x','icp7_reduction2x','icp7_out2x', ...
        'icp7_out0x','icp7_out3x','icp7_reduction1x','icp7_out1x', ...
        'icp8_out0x','icp8_out3x','icp8_reduction1x','icp8_out1x', ...
        'icp8_reduction2x','icp8_out2x','icp9_out0x','icp9_out3x', ...
        'icp9_reduction1x','icp9_out1x','icp9_reduction2x','icp9_out2x'};
end
 
% call pooling response images
if strcmp(layer,'Pool') == 1
	L = {'pool1','pool2','icp1_pool','icp2_pool','icp3_in','icp3_pool', ...
        'icp4_pool','icp5_pool','icp6_pool','icp7_pool','icp8_in', ...
        'icp8_pool','icp9_pool'};
end

if strcmp(layer,'Incep') == 1
	L = {'icp2_in','icp2_out','icp3_out','icp4_out','icp5_out','icp6_out', ...
        'icp7_out','icp8_out','icp9_out'};
end
      
% call all response images of the network
if strcmp(layer,'All') == 1
	L = {'conv1','conv1x','pool1','norm1','reduction2','reduction2x', ...
        'conv2','conv2x','norm2','pool2','icp1_out0','icp1_out0x', ...
        'icp1_pool','icp1_out3','icp1_out3x','icp1_reduction1', ...
        'icp1_reduction1x','icp1_out1','icp1_out1x','icp1_reduction2', ...
        'icp1_reduction2x','icp1_out2','icp1_out2x','icp2_in','icp2_out0', ...
        'icp2_out0x','icp2_pool','icp2_out3','icp2_out3x','icp2_reduction1', ...
        'icp2_reduction1x','icp2_out1','icp2_out1x','icp2_reduction2', ...
        'icp2_reduction2x','icp2_out2','icp2_out2x','icp2_out','icp3_in', ...
        'icp3_out0','icp3_out0x','icp3_pool','icp3_out3','icp3_out3x', ...
        'icp3_reduction1','icp3_reduction1x','icp3_out1','icp3_out1x', ...
        'icp3_reduction2','icp3_reduction2x','icp3_out2','icp3_out2x', ...
        'icp3_out','icp4_reduction2','icp4_reduction2x','icp4_out2', ...
        'icp4_out2x','icp4_out0','icp4_out0x','icp4_pool','icp4_out3', ...
        'icp4_out3x','icp4_reduction1','icp4_reduction1x','icp4_out1', ...
        'icp4_out1x','icp4_out','icp5_out0','icp5_out0x','icp5_pool', ...
        'icp5_out3','icp5_out3x','icp5_reduction1','icp5_reduction1x', ...
        'icp5_out1','icp5_out1x','icp5_reduction2','icp5_reduction2x', ...
        'icp5_out2','icp5_out2x','icp5_out','icp6_out0','icp6_out0x', ...
        'icp6_pool','icp6_out3','icp6_out3x','icp6_reduction1', ...
        'icp6_reduction1x','icp6_out1','icp6_out1x','icp6_reduction2', ...
        'icp6_reduction2x','icp6_out2','icp6_out2x','icp6_out', ...
        'icp7_reduction2','icp7_reduction2x','icp7_out2','icp7_out2x', ...
        'icp7_out0','icp7_out0x','icp7_pool','icp7_out3','icp7_out3x', ...
        'icp7_reduction1','icp7_reduction1x','icp7_out1','icp7_out1x', ...
        'icp7_out','icp8_in','icp8_out0','icp8_out0x','icp8_pool', ...
        'icp8_out3','icp8_out3x','icp8_reduction1','icp8_reduction1x', ...
        'icp8_out1','icp8_out1x','icp8_reduction2','icp8_reduction2x', ...
        'icp8_out2','icp8_out2x','icp8_out','icp9_out0','icp9_out0x', ...
        'icp9_pool','icp9_out3','icp9_out3x','icp9_reduction1', ...
        'icp9_reduction1x','icp9_out1','icp9_out1x','icp9_reduction2', ...
        'icp9_reduction2x','icp9_out2','icp9_out2x','icp9_out'};
end