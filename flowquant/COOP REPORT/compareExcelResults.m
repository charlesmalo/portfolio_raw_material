function compareExcelResults (excelFile,sheet,range1,range2,xID,yID,label,tit)

data1=xlsread(excelFile,sheet,range1);
data2=xlsread(excelFile,sheet,range2);
if isempty(data1) ||isempty(data2)
	return;
end
[cr Fig corXLABEL corYLABEL SUPTIT]=BlandAltman(data1,data2,label,tit); % my own updated BlandAltman has 3 more handles as output
set(corXLABEL,'String',[xID ' ' get(corXLABEL,'String')]);
set(corYLABEL,'String',[yID ' ' get(corYLABEL,'String')]);

[file path] = uiputfile({'*.jpg','Joint Photographic Experts Group (*.jpg)'},'Save snapshot to...');
if ~isequal(file,0)
snapshot=getframe(Fig);
I = frame2im(snapshot);
saveFile= [path file];
imwrite(I,saveFile,'jpg')
end
