function comparisonTest(excelFile)

[typ, desc] = xlsfinfo(excelFile);
for i=1:length(desc)
sheet=desc{i};
if 1
compareExcelResults(excelFile,sheet,'h3:h22','d3:d22','4DM','FQ','EDV (ml)',['EDV Correlation (' sheet ' Rings)']);
compareExcelResults(excelFile,sheet,'i3:i22','e3:e22','4DM','FQ','ESV (ml)',['ESV Correlation (' sheet ' Rings)']);
compareExcelResults(excelFile,sheet,'k3:k22','g3:g22','EF (%)',['EF Correlation ('  sheet ' Rings)']);
else
	
compareExcelMean(excelFile,sheet,'h3:h22','d3:d22','EDV (ml)',['EDV Correlation (' sheet ' Rings)']);
compareExcelMean(excelFile,sheet,'i3:i22','e3:e22','ESV (ml)',['ESV Correlation (' sheet ' Rings)']);
compareExcelMean(excelFile,sheet,'k3:k22','g3:g22','EF (%)',['EF Correlation ('  sheet ' Rings)']);

end
end