10  TEXT : HOME 
20  REM 
30  REM  THIS PROGRAM DETERMINES
40  REM  THE ADDRESS OF THE DISK
50  REM  INPUT/OUTPUT BLOCK (IOB)
60  REM  AND THEN USES THE 
62  REM  ADDRESS TO DETERMINE 
64  REM  THE CURRENT SLOT AND
66  REM  DRIVE IN USE.
70  FOR X = 0 TO 9: READ A: POKE 768 +X,A: NEXT 
80  DATA  32,227,3,141,11,3,140,10,3,96
90  CALL 768
100  REM 
110  REM  NOW GET THE IOB ADDRESS
120  REM  & CONVERT TO DECIMAL
130  REM 
140 IOB =  PEEK(778) + PEEK(779) *256
150  REM  
160  REM  "LAST" SLOT # AT IOB+15
170  REM  "LAST" DRIVE# AT IOB+16
180  REM 
190 SL =  PEEK(IOB +15)/16
200 DR =  PEEK(IOB +16)
210  PRINT "CURRENT SLOT IS "SL" AND DRIVE IS "DR