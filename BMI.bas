10 CLS
20 PRINT "BMI Calculation Program"
30 PRINT "-----------------------"

40 INPUT "Enter your weight in pounds: ", weight
50 IF weight <= 0 THEN PRINT "Please enter a positive number for weight.": GOTO 40

60 PRINT "Enter your height:"
70 INPUT "  Feet: ", feet
80 IF feet < 0 THEN PRINT "Please enter a non-negative number for feet.": GOTO 70

90 INPUT "  Inches: ", inches
100 IF inches < 0 OR inches >= 12 THEN PRINT "Please enter a value between 0 and 11 for inches.": GOTO 90

110 REM Convert height to total inches, then to meters
120 heightInches = (feet * 12) + inches
130 heightMeters = heightInches * 0.0254

140 REM Convert weight to kilograms
150 weightKg = weight * 0.453592

160 REM Calculate BMI
170 bmi = weightKg / (heightMeters ^ 2)

180 PRINT
190 PRINT "Your BMI is "; bmi

200 REM Determine weight category
210 IF bmi < 18.5 THEN GOTO 240
220 IF bmi >= 18.5 AND bmi <= 24.9 THEN GOTO 260
230 IF bmi > 24.9 THEN GOTO 280

240 PRINT "You are underweight."
250 GOTO 300

260 PRINT "You are of normal weight."
270 GOTO 300

280 PRINT "You are overweight."

300 END
