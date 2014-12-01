function compareExcelMean (excelFile,sheet,range1,range2,label,tit,ring)

data1=xlsread(excelFile,sheet,range1);
data2=xlsread(excelFile,sheet,range2);
if isempty(data1) ||isempty(data2)
	return;
end
[cr Fig meanValue]=BlandAltmanTest(data1,data2,label,tit); % my own updated BlandAltman has 3 more handles as output
% set(corXLABEL,'String',[xID ' ' get(corXLABEL,'String')]);
% set(corYLABEL,'String',[yID ' ' get(corYLABEL,'String')]);

% [file path] = uiputfile({'*.jpg','Joint Photographic Experts Group (*.jpg)'},'Save snapshot to...');
% if ~isequal(file,0)
% snapshot=getframe(Fig);
% I = frame2im(snapshot);
% saveFile= [path file];
% imwrite(I,saveFile,'jpg')
switch label
	case 'EDV (ml)'
		xlswrite('C:\Users\CHARLES\Desktop\COOP REPORT\BlandAltman Results.xlsx',meanValue,'Sheet2',['D' num2str(str2double(sheet)-15) ':' 'D' num2str(str2double(sheet)-15)]);
	case 'ESV (ml)'
		xlswrite('C:\Users\CHARLES\Desktop\COOP REPORT\BlandAltman Results.xlsx',meanValue,'Sheet2',['G' num2str(str2double(sheet)-15) ':' 'G' num2str(str2double(sheet)-15)]);
	case 'EF (%)'
		xlswrite('C:\Users\CHARLES\Desktop\COOP REPORT\BlandAltman Results.xlsx',meanValue,'Sheet2',['J' num2str(str2double(sheet)-15) ':' 'J' num2str(str2double(sheet)-15)]);
end
