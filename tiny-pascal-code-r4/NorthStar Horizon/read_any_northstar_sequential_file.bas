100 REM READ CONTENTS OF DATA FILE
110 REM OF UNKNOWN STRUCTURE
120 REM ASSUME NO STRING BIGGER THAN 500 CHARS
130 DIM S$(500), F$(10)
140 REM S$ WILL HOLD STRING VALUES READ
150 REM F$ WILL HOLD THE FILE NAME
160 REM N WILL HOLD NUMBERS READ
170 INPUT "ENTER NAME OF FILE TO READ : ",F$
180 OPEN#1, F$
190 IF TYP(1)=0 THEN 340
200 REM ABOVE IS ENDMARK CHECK
210 IF TYP(1) = 2 THEN 290
220 REM ABOVE CHECKS IF NUMBER NEXT --
230 REM IF NOT NUMBER, MUST BE STRING NEXT
240 REM READ/PRINT STRING
250 READ #1, S$
260 PRINT S$
270 REM GO BACK FOR NEXT ITEM
280 GOTO 190
290 REM READ/PRINT NUMBER
300 READ #1, N
310 PRINT N
320 REM GET MORE DATA
330 GOTO 190
340 REM NO MORE DATA
350 PRINT "*** END OF FILE ***"
360 CLOSE#1
370 END
