srcFiles = dir('/Users/mandipville/Desktop/CapstoneProject/att_faces/s8/*.pgm');
outputFolder = '/Users/mandipville/Desktop/CapstoneProject/edge';

for i = 1 : length(srcFiles)
    filename = strcat('/Users/mandipville/Desktop/CapstoneProject/att_faces/s8/',srcFiles(i).name);
    I = imread(filename);
    imageLayer = edge(I,'Canny');
    outputFilename = fullfile(outputFolder,['cannyEdge' num2str(i) '.jpg']);
    imwrite(imageLayer,outputFilename);
    figure, imshow(imageLayer);
end
