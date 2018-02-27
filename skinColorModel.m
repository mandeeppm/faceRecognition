


a = imread('/Users/mandipville/Desktop/CapstoneProject/att_faces/s8/1.pgm');
b = im2bw(a,0.5);
CannyEdgeIm = edge(a,'canny');
skinEdge = edge(b,'Canny');
i = 0.4;
sumIm = im2bw(a,i);
while i <= 0.6
    i = i + 0.01;
    binaryIm = im2bw(a, i);
    sumIm = sumIm + binaryIm;
    
end

edgeIm = edge(sumIm,'Canny');

averageIm = sumIm /total;
subplot(1,3,1)
imshow(skinEdge)
title('Skin model 0.5 threshold')
subplot(1,3,2)
imshow(edgeIm)
title('Skin model average')
subplot(1,3,3)
imshow(CannyEdgeIm)
title('Canny Edge Detection')

