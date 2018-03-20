function chainCode = myChainCode(im)

[start_r,start_c] = find(im,1,'last');

if im(start_r+1,start_c+1) == 1
    dir = 'SE';
elseif im(start_r,start_c+1) == 1
    dir = 'E';
elseif im(start_r-1,start_c+1) == 1
    dir = 'NE';
elseif im(start_r-1,start_c) == 1
    dir = 'N';
elseif im(start_r-1,start_c-1) == 1
    dir = 'NW';
elseif im(start_r,start_c-1) == 1
    dir = 'W';
elseif im(start_r+1,start_c-1) == 1
    dir = 'SW';
elseif im(start_r+1,start_c) == 1
    dir = 'S';
else
    assert(0);
end

chain = bwtraceboundary(im,[start_r,start_c],dir);
sizeOfChain = size(chain);
totalNumberOfBoundary = sizeOfChain(1,1);
code = [];
for i = 1 : totalNumberOfBoundary - 1
    x1 = chain(i,1);
    y1 = chain(i,2);
    x2 = chain(i+1,1);
    y2 = chain(i+1,2);
    x = x2 -x1;
    y = y2 - y1;
    if(x == 0 && y == 1);
        code = strcat(code, '0');
    elseif(x == -1 && y == 1);
        code = strcat(code,'1');
    elseif(x == -1 && y == 0);
        code = strcat(code,'2');
    elseif(x == -1 && y == -1);
        code = strcat(code, '3');
    elseif(x == 0 && y == -1);
        code = strcat(code,'4');
    elseif(x == 1 && y == -1);
        code = strcat(code,'5');
    elseif(x == 1 && y == 0);
        code = strcat(code, '6');
    else(x == 1 && y ==1);
        code = strcat(code, '7');
    end
    
end


chainCode = code;

