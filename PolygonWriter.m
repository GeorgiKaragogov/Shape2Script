function PolygonWriter(fileID,xArray,yArray)

    fprintf(fileID,'PLINE\r\n');
    for i = 1:1:length(xArray)
        if(isnan(xArray(i)) && i ~= length(xArray))
            fprintf(fileID,'C\r\n');
            fprintf(fileID,'PLINE\r\n');
        elseif (isnan(xArray(i)) && i == length(xArray))
            fprintf(fileID,'C\r\n');
        else
            fprintf(fileID,'%f,%f\r\n',xArray(i),yArray(i));
        end
    end

end

