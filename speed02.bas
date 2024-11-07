10 CLS
20 PRINT "Speed Calculation Program"
30 PRINT "-------------------------"

40 INPUT "Enter the distance in meters: ", D
50 IF D <= 0 THEN PRINT "Please enter a positive number for distance.": GOTO 40

60 PRINT "Enter time taken:"

70 INPUT "  Hours: ", H
80 IF H < 0 THEN PRINT "Please enter a non-negative number for hours.": GOTO 70

90 INPUT "  Minutes: ", M
100 IF M < 0 OR M >= 60 THEN PRINT "Please enter a value between 0 and 59 for minutes.": GOTO 90

110 INPUT "  Seconds: ", S
120 IF S < 0 OR S >= 60 THEN PRINT "Please enter a value between 0 and 59 for seconds.": GOTO 110

130 REM Convert hours, minutes, and seconds to total time in seconds
140 T = (H * 3600) + (M * 60) + S
150 IF T <= 0 THEN PRINT "Total time cannot be zero or negative.": GOTO 60

160 REM Calculate speed in meters per second
170 SPEED = D / T

180 PRINT
190 PRINT "The object's speed is "; SPEED; " meters per second."
200 END
