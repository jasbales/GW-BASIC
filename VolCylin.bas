10 CLS
20 PRINT "Cylinder Volume Calculator"
30 PRINT "--------------------------"

40 INPUT "Enter the radius of the cylinder (in meters): ", radius
50 IF radius <= 0 THEN PRINT "Please enter a positive number for the radius.": GOTO 40

60 INPUT "Enter the height of the cylinder (in meters): ", height
70 IF height <= 0 THEN PRINT "Please enter a positive number for the height.": GOTO 60

80 REM Calculate the volume of the cylinder
90 pi = 3.14159265359
100 volume = pi * radius ^ 2 * height

110 PRINT
120 PRINT "The volume of the cylinder is "; volume; " cubic meters."

130 END
