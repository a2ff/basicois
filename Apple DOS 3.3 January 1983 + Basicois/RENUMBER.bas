1020  REM =============>RENUMBER<===============
1030  TEXT : HOME : INVERSE : SPEED= 255
1040 S$ = "&": GOSUB 1080: VTAB 2: GOSUB 1090
1050  VTAB 3: PRINT "&";: HTAB 12: PRINT "APPLESOFT RENUMBER";: HTAB 40: PRINT "&": VTAB 4: GOSUB 1090
1060  VTAB 5: PRINT "&";: HTAB 4: PRINT "COPYRIGHT APPLE COMPUTER,INC. 1978";: HTAB 40: PRINT "&"
1070  VTAB 6: GOSUB 1090: VTAB 7: GOSUB 1080: NORMAL : GOTO 1100
1080  FOR A = 1 TO 39: PRINT S$;: NEXT A: PRINT S$: RETURN 
1090  HTAB 1: PRINT S$;: HTAB 40: PRINT S$: RETURN 
1100  PRINT : PRINT : PRINT "RENUMBER   (DEFAULT VALUES)"
1110  PRINT : PRINT "& [FIRST 10] [,INC 10] [,S 0] [,E 63999]"
1120  PRINT : PRINT "MERGE"
1130  PRINT : PRINT "&H   PUT PROGRAM ON HOLD"
1140  PRINT "&M   MERGE TO PROGRAM ON HOLD"
1150  VTAB 23: PRINT 
1160  PRINT "PRESS 'RETURN' TO CONTINUE...";
1170  GET A$
1180  IF  ASC(A$) = 3  THEN  END 
1190  IF  ASC(A$) < >13  THEN 1150
1200  HOME : PRINT  TAB( 4)"RENUMBER IS INSTALLED AND READY"
1210  VTAB 8: PRINT "IF YOU USE 'FP', 'HIMEM', OR 'MAXFILES'"
1220  PRINT : PRINT "  YOU WILL HAVE TO RE-RUN RENUMBER"
1230  PRINT  CHR$(4)"MAXFILES 3"
10000  REM  DO NOT CHANGE 10010
10010  CALL  PEEK(121) + PEEK(122) *256 +31