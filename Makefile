run: fsog.xex Fifty_Shades_of_Grey.sap
	cygstart $<

fsog.xex: fsog.asx msx.asx
	xasm -q -o $@ $<

Fifty_Shades_of_Grey.sap: msx.asx
	xasm -q -o $@ -d SAP=1 $<

.DELETE_ON_ERROR:
