clear all;
close all;
clc;

path_in = 'template';
path_out = 'template_out';
in_path = sprintf('./%s/',path_in);
out_path = sprintf('./%s/',path_out);

f_cls = fopen('classnames.txt','r');
cls_list = textscan(f_cls, '%s');
cls_list = cls_list{1};

if ~exist(out_path,'dir')
    mkdir(out_path);
end

for i = 1:length(cls_list)
    filename = cls_list{i};
    img = imread([in_path, filename, '.jpg']);
    
%     fprintf('%s\n',filename);
%     figure(1)
%     imshow(img)
     
    imwrite(img, [out_path, sprintf('%02d',i),'.jpg']);
    
end