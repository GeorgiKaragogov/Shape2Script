clear;
clc;

fileDir = uigetfile({'*.shp'},'Open polygon shape file');
[~,fileName,~] = fileparts(fileDir);
shapeFile = shaperead(fileDir);
disp([fileName,' has been uploaded.'])

disp('Creating AutoCAD script file...')
ScriptMaker(shapeFile,fileName);

disp('Computation has been successful.')
disp([fileName,'.scr has been created.'])