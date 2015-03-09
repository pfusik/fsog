run: fsog.xex
	cygstart $<

fsog.xex: fsog.asx
	xasm -q -o $@ $<

.DELETE_ON_ERROR:
