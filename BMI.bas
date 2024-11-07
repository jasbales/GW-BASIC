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
130 IF heightInches <= 0 THEN PRINT "Height cannot be zero. Please enter valid height values.": GOTO 60
140 heightMeters = heightInches * 0.0254

150 REM Convert weight to kilograms
160 weightKg = weight * 0.453592

170 REM Calculate BMI
180 bmi = weightKg / (heightMeters ^ 2)

190 PRINT
200 PRINT "Your BMI is "; bmi

210 REM Determine weight category
220 IF bmi < 18.5 THEN GOTO 250
230 IF bmi >= 18.5 AND bmi <= 24.9 THEN GOTO 270
240 IF bmi > 24.9 THEN GOTO 290

250 PRINT "You are underweight."
260 GOTO 300

270 PRINT "You are of normal weight."
280 GOTO 300

290 PRINT "You are overweight."

300 END
