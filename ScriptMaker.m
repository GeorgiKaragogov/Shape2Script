function ScriptMaker(shapeFile,fileName)

    fileID = fopen([fileName,'.scr'],'w');
    fprintf(fileID,'UCS WORLD\r\n');
    fprintf(fileID,'OSNAP NONE\r\n');
    fprintf(fileID,'ORTHO OFF\r\n');
    for i = 1:1:length(shapeFile)
        PolygonWriter(fileID,shapeFile(i).X,shapeFile(i).Y)
    end
    fprintf(fileID,'ZOOM E\r\n');
    fclose(fileID);

end

