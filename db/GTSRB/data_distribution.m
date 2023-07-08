clear all; close all;

% 0 prohibit_20  				7  track 	210
% 1 prohibit_30					74 track 	2220
% 2 prohibit_50					75 track 	2250
% 3 prohibit_60					47 track 	1410
% 4 prohibit_70					66 track	1980
% 5 prohibit_80					62 track	1860
% 6 other_80					14 track	420
% 7 prohibit_100				48 track	1440
% 8 prohibit_120				47 track	1410
% 9 prohibit_overtakeCar		49 track	1470
% 10 prohibit_overtakeTruck		67 track	2010
% 11 danger_intersection		44 track	1320
% 12 other_priority				70 track 	2100
% 13 other_yield				72 track	2160
% 14 other_stop					26 track	780
% 15 prohibit_closed			21 track	630
% 16 prohibit_truck 			14 track	420
% 17 prohibit_notEnter			37 track	1110
% 18 danger_general				40 track	1200
% 19 danger_left 				7  track	210
% 20 danger_right 				12 track	360
% 21 danger_doubleLeft 			11 track	330
% 22 danger_rough 				13 track	390
% 23 danger_slippery			17 track	510
% 24 danger_narrowRight			9  track	270
% 25 danger_work				50 track	1500
% 26 danger_trafficSignal		20 track	600
% 27 danger_pedestrians			8  track	240
% 28 danger_children			18 track	540
% 29 danger_bicycle				9  track	270
% 30 danger_ice  				15 track	450
% 31 danger_animal 				26 track	780
% 32 other_endRestrictions 		8  track	240
% 33 mandatory_right 			23 track	690
% 34 mandatory_left 			14 track	420
% 35 mandatory_straight 		40 track	1200
% 36 mandatory_rightStraight	13 track	390
% 37 mandatory_leftStraight 	7  track	210
% 38 mandatory_obstaclesRight 	69 track	2070
% 39 mandatory_obstaclesLeft 	10 track	300
% 40 mandatory_round 			12 track	360
% 41 other_overtakeCar 			8  track	240
% 42 other_overtakeTruck 		8  track	240


% file_tr_classes = fopen('train_imclasses_all.txt','w');
% file_tr_imgPath = fopen('train_impaths_all.txt','w');
% 
% for i =0:42
%     folder_path = sprintf('crop_%02d',i);
%     img_list = dir([folder_path, '/*.jpg']);
%     for j = 1:length(img_list)
%         fprintf(file_tr_classes, '%d\n',i);
%         fprintf(file_tr_imgPath, 'crop_%02d/%s\n',i, img_list(j).name);
%     end
% end

% return

% train_class = [1,2,3,4,5,7,8,9,10,11,12,13,14,15,17,18,25,26,31,33,35,38]; % classes with image above 600 = 22 classes (unseen class 20 classes)
% test_class = [0,6,16,19,20,21,22,23,24,27,28,29,30,32,34,36,37,39,40,41,42]; % unseen classes 21 classes
% 
%% class infos
% unseen_classes = [0,6,16,19,20,21,22,23,24,27,28,29,30,32,34,36,37,39,40,41,42]; % 21 classes (22 classes seen)
% 
% prohibit_seen = [1,2,3,4,5,7,8,9,10,15,17]; % 11 classes
% prohibit_unseen = [0, 16]; % 2 classes
% danger_seen = [11,18,25,26,31]; % 5 classes
% danger_unseen = [19,20,21,22,23,24,27,28,29,30]; %10 classes
% mandatory_seen = [33,35,38]; % 3 classes
% mandatory_unseen = [34,36,37,39,40]; % 5 classes
% other_seen = [12,13,14]; % 3 classes
% other_unseen = [6,32,41,42]; % 4 classes
% height_vec = [];
% width_vec = [];
% hw_vec = [];
% class_num = [];


load('gtsrb_stat.mat')

% for i =0:42
%     fprintf('%01d: processing...\n',i)
%     folder_path = sprintf('%05d',i);
%     img_list = dir([folder_path, '/*.ppm']);
%     nbrTrack = length(img_list) / 30;
%     class_num = [class_num, length(img_list)];
%     
%     for j=1:length(img_list)
%         im_path = sprintf('%s/%s',folder_path, img_list(j).name);
%         img = imread(im_path);
% %         imshow(img)
%         height = size(img,1);
%         width = size(img,1);
%         hw = mean([height, width]);
%         
%         height_vec = [height_vec, height];
%         width_vec = [width_vec, width];
%         hw_vec = [hw_vec, hw];
%     end
%     
% end

% save('gtsrb_stat.mat', 'class_num', 'height_vec', 'width_vec', 'hw_vec')