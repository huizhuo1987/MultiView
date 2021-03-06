clear all;clc;
close all;
%% scripts to generate the face dataset
indir = 'G:/TraingSet/CMU_Database/pie_jpg/oct_2000-nov_2000/';
indir1 = 'G:/TraingSet/CMU_Database/pie_jpg/nov_2000-dec_2000/';
outdir = 'X:/MultiView/YaleB_exteneted/left_45/greyImages/';
output1 = 'X:/MultiView/YaleB_exteneted/left_45/phase1/';
output2 = 'right_45/phase2/';
output3 = 'right_45/phase3/';
%convert the color to grey image
greyImage(indir, outdir, indir1, 37);

% phase 1
fprintf('Phase 1......');
My_annotation(outdir);
faceNormalize(outdir, output1, 200, 200, 2.0, 0.25, 0.10);
fprintf('Done...\n');
%adjust the brightness of the image
fprintf('Adjust the brigtness of the face......');
Adjust(output1, output1);
fprintf('Done...\n');
%phase 2
fprintf('Phase 2......');
My_annotation_phase_2(output1);
faceNormalize_phase2(output1, output2);
fprintf('Done...\n');
%phase 3
fprintf('Phase 3......');
My_annotation(output2);

faceNormalize(output2, output3, 100, 100, 1.33, 0.23, 0.10);
%frontal:  1.25, 0.23, 0.07 
%left 22.5: 1.35, 0.23, 0.07
%left 45: 1.30, 0.23, 0.10
%right 22.5: 1.40, 0.23, 0.10
%right 45: 1.40 0.23 0.10
fprintf('Done...\n');
