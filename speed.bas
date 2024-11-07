10 CLS
20 PRINT "Speed Calculation Program"
30 PRINT "-------------------------"
40 PRINT "Enter the distance in meters: "
50 INPUT D
60 IF D <= 0 THEN PRINT "Please enter a positive number for distance.": GOTO 40

70 PRINT "Enter time taken:"
80 PRINT "  Hours: ";
90 INPUT H
100 IF H < 0 THEN PRINT "Please enter a non-negative number for hours.": GOTO 80

110 PRINT "  Minutes: ";
120 INPUT M
130 IF M < 0 OR M >= 60 THEN PRINT "Please enter a value between 0 and 59 for minutes.": GOTO 110

140 PRINT "  Seconds: ";
150 INPUT S
160 IF S < 0 OR S >= 60 THEN PRINT "Please enter a value between 0 and 59 for seconds.": GOTO 140

170 REM Convert hours, minutes, and seconds to total time in seconds
180 T = (H * 3600) + (M * 60) + S
190 IF T <= 0 THEN PRINT "Total time cannot be zero or negative.": GOTO 80

200 REM Calculate speed in meters per second
210 SPEED = D / T

220 PRINT
230 PRINT "The object's speed is "; SPEED; " meters per second."
240 END
