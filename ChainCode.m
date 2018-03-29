function theChainCode = ChainCode(im)
A = [0 0 0; 0 1 0; 0 0 0];
imCopy = conv2(im,A);
code = [];
startX = 1;
startY = 1;
while(~isempty(startX))
[startX,startY] = find(imCopy,1);
while(imCopy(startX,startY) == 1)
    
if imCopy(startX,startY+1) == 1
    code = strcat(code, '0');
    imCopy(startX,startY) = 0;
    startY = startY + 1;
elseif imCopy(startX-1,startY) == 1
    code = strcat(code, '2');   
    imCopy(startX,startY) = 0;
    startX = startX - 1;
elseif imCopy(startX,startY-1) == 1
    code = strcat(code, '4'); 
    imCopy(startX,startY) = 0;
    startY = startY - 1;
elseif imCopy(startX+1,startY) == 1
    code = strcat(code, '6');
    imCopy(startX,startY) = 0;
    startX = startX + 1;

elseif imCopy(startX-1,startY+1) == 1
    code = strcat(code, '1');
    imCopy(startX,startY) = 0;
    startY = startY + 1;
    startX = startX - 1;
elseif imCopy(startX-1,startY-1) == 1
    code = strcat(code, '3');  
    imCopy(startX,startY) = 0;
    startY = startY - 1;
    startX = startX - 1;

elseif imCopy(startX+1,startY-1) == 1
    code = strcat(code, '5');
    imCopy(startX,startY) = 0;
    startY = startY - 1;
    startX = startX + 1;
elseif imCopy(startX+1,startY+1) == 1
    code = strcat(code, '7');
    imCopy(startX,startY) = 0;
    startY = startY + 1;
    startX = startX + 1;

else
    code = strcat(code, '-');
    imCopy(startX,startY) = 0;
end
end
end

theChainCode = code;

