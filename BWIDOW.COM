$ SET NOON
$ SET DEF [POOL.DOC]
$ ASS [POOL.DOC] VX2:
$ ASS [POOL.DOC] VX3:
$ RT
R LINKM
VX2:BBSTRD,VX3:LINK.LST/L/R=BBMAIN,BBPROC,BBSMRT,BBWAVE/C
BBPOKY,BBWEB,BBFLY,BBSCOR,BBHITS,COIN65/C
BBEARM,BBPIX,BBTEXT,BBLANG,BBPOWR,BBAVGT/C
BBXYSG,BBCHKS
$ INQUIRE ANS "Link Listing?"
$ IF ANS .NES. "Y" THEN GOTO OUT
$ PRINT/FLAG VX3:LINK.LST
$ OUT:
$ EXIT
                                                                                                                                                    