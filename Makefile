Fifty_Shades_of_Grey.sap: msx.asx
	xasm -q -o $@ -d SAP=1 $<

run: fsog.xex
	cygstart $<

fsog.xex: fsog.asx
	xasm -q -o $@ $<

.DELETE_ON_ERROR:
