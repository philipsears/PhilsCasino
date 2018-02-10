'                       Casino
'                  A Philip Sears Production, 1996
RANDOMIZE TIMER
LET money = 500
LET delay = 15000 'Change this constant to adjust animation/timing
SCREEN 12
CLS
LOCATE 2, 30
PRINT "Phil's"
LINE (100, 50)-(50, 100), 2
LINE -(100, 150), 2
LINE (150, 150)-(200, 50), 2
LINE -(250, 150), 2
LINE (175, 100)-(225, 100), 2
LINE (330, 50)-(270, 50), 2
LINE -(270, 100), 2
LINE -(330, 100), 2
LINE -(330, 150), 2
LINE -(270, 150), 2
LINE (385, 50)-(385, 150), 2
LINE (430, 150)-(430, 50), 2
LINE -(470, 150), 2
LINE -(470, 50), 2
CIRCLE (555, 100), 50, 2
LINE (50, 180)-(600, 180), 3
LINE (50, 5)-(600, 5), 3
FOR t = 1 TO 300 * delay: NEXT t
LOCATE 18, 23: COLOR 1: PRINT "A Philip Sears Production, 1996"
LINE (200, 300)-(400, 300), 1
COLOR 12
FOR lite = 1 TO 4
    FOR J = 10 TO 75 STEP 5
        LOCATE 11, J: PRINT "*"
        FOR t = 1 TO 250 * delay: NEXT t
        LOCATE 11, J: PRINT " "
    NEXT J
    FOR k = 75 TO 10 STEP -5
        LOCATE 3, k: PRINT "*"
        FOR t = 1 TO 250 * delay: NEXT t
        LOCATE 3, k: PRINT " "
    NEXT k
NEXT lite
5 CLS
LINE (100, 100)-(500, 100), 2
LINE -(500, 300), 2
LINE -(100, 300), 2
LINE -(100, 100), 2
COLOR 2
LOCATE 8, 28: PRINT "Phil's CASINO Menu"
COLOR 3
LOCATE 11, 25: PRINT "(B)lack Jack"
LOCATE 13, 25: PRINT "(S)lot Machine"
LOCATE 15, 25: PRINT "(L)ottery"
LOCATE 17, 25: PRINT "(Q)uit"
LOCATE 22, 20
10 PRINT "Type in the letter of your choice";
INPUT " ", frst$
IF frst$ = "B" OR frst$ = "b" THEN GOTO 25
IF frst$ = "s" OR frst$ = "S" THEN GOTO 150
IF frst$ = "l" OR frst$ = "L" THEN GOTO 350
IF frst$ = "Q" OR frst$ = "q" THEN GOTO 1111
GOTO 5

25 CLS ' Black Jack
LINE (1, 250)-(639, 250), 6
LINE (530, 265)-(600, 265), 9
LINE -(600, 310), 9
LINE -(530, 310), 9
LINE -(530, 265), 9
COLOR 7
LOCATE 18, 69: PRINT "Score"
COLOR 3
LOCATE 9, 3: PRINT "D"
LOCATE 10, 4: PRINT "e"
LOCATE 11, 5: PRINT "a"
LOCATE 12, 6: PRINT "l"
LOCATE 13, 7: PRINT "e"
LOCATE 14, 8: PRINT "r"
LOCATE 21, 5: PRINT "Y"
LOCATE 22, 6: PRINT "o"
LOCATE 23, 7: PRINT "u"
COLOR 9
LOCATE 1, 70: PRINT "Bankroll"
LOCATE 2, 72: PRINT "$"; money
COLOR 7
LOCATE 4, 5: INPUT "Deal (Y or N) ", dl$
LET score = 0
LET blackjack$ = "NO"
LET bust$ = "NO"
LET ace$ = "NO"
LET adone$ = "NO"
LET adown$ = "NO"
LET dealer$ = "NO"
IF dl$ = "Y" OR dl$ = "y" THEN GOTO 27
IF dl$ = "N" OR dl$ = "n" THEN GOTO 5
GOTO 25

27 LET num = 0
FOR ht = 1 TO 2
    28 LET num = num + 1
    LET crd = INT(RND * 13) + 1
    IF crd = 1 THEN GOSUB 500
    IF crd = 2 THEN GOSUB 510
    IF crd = 3 THEN GOSUB 520
    IF crd = 4 THEN GOSUB 530
    IF crd = 5 THEN GOSUB 540
    IF crd = 6 THEN GOSUB 550
    IF crd = 7 THEN GOSUB 560
    IF crd = 8 THEN GOSUB 570
    IF crd = 9 THEN GOSUB 580
    IF crd = 10 THEN GOSUB 590
    IF crd = 11 THEN GOSUB 600
    IF crd = 12 THEN GOSUB 610
    IF crd = 13 THEN GOSUB 620
    LET score = score + value
    LET acore = score + 10
    IF acore <= 21 AND ace$ = "yes" AND adone$ <> "yes" THEN LET score = acore: LET adone$ = "yes"
    IF score > 21 AND adone$ = "yes" AND adown$ <> "yes" THEN LET score = score - 10: LET adown$ = "yes"
    LOCATE 19, 70
    COLOR 7: PRINT score
    IF score = 21 AND num = 2 THEN GOTO 930
    IF score > 21 THEN LET bust$ = "yes": GOTO 870
    IF hit$ = "sure" THEN RETURN
29 NEXT ht
GOTO 50
30 LOCATE 17, 30: COLOR 7
INPUT "Hit or Stand (H or S) ", htstnd$
IF htstnd$ = "H" OR htstnd$ = "h" THEN LET hit$ = "sure": GOSUB 28: LET hit$ = "hno": GOTO 30
IF htstnd$ = "s" OR htstnd$ = "S" THEN GOTO 55
GOTO 30

50 LET dealer$ = "yes"
LET dlblack$ = "NO"
LET dnum = 0
LET dlscore = 0
LET dascore = 0
LET dldown$ = "NO"
LET dldone$ = "NO"
LET dlace$ = "NO"
LET dlbust$ = "NO"
52 FOR dlht = 1 TO 2
    LET dealer$ = "yes"
    LET dnum = dnum + 1
    LET dcrd = INT(RND * 13) + 1
    IF dcrd = 1 THEN GOSUB 500
    IF dcrd = 2 THEN GOSUB 510
    IF dcrd = 3 THEN GOSUB 520
    IF dcrd = 4 THEN GOSUB 530
    IF dcrd = 5 THEN GOSUB 540
    IF dcrd = 6 THEN GOSUB 550
    IF dcrd = 7 THEN GOSUB 560
    IF dcrd = 8 THEN GOSUB 570
    IF dcrd = 9 THEN GOSUB 580
    IF dcrd = 10 THEN GOSUB 590
    IF dcrd = 11 THEN GOSUB 600
    IF dcrd = 12 THEN GOSUB 610
    IF dcrd = 13 THEN GOSUB 620
    LET dlscore = value + dlscore
    LET dlacore = dlscore + 10
    IF dlacore <= 21 AND dlace$ = "yes" AND dldone$ <> "yes" THEN LET dlscore = dlacore: LET dldone$ = "yes"
    IF dlacore > 21 AND dlace$ = "yes" AND dldone$ = "yes" AND dldown$ <> "yes" THEN LET dlscore = dlscore - 10: LET dldown$ = "yes"
    IF dlsure$ <> "yes" AND dlscore = 21 THEN LET dlblack$ = "yes"
    IF dlscore > 21 THEN LET dlbust$ = "yes"
    IF dlsure$ = "yes" THEN LET dlsure$ = "yes": FOR t = 1 TO 5000: NEXT t
    IF dlsure$ = "yes" THEN RETURN
NEXT dlht
LET dealer$ = "NO"
GOTO 30
55 LET dealer$ = "yes"
IF bust$ = "yes" THEN GOTO 65
IF dlscore >= 17 THEN GOTO 65
IF dlscore < 17 THEN LET dlsure$ = "yes": GOSUB 52: LET dlsure$ = "NO": GOTO 55

65 ' placing dealers score
COLOR 7
IF dlblack$ = "yes" THEN LOCATE 7, 30: PRINT "Dealer: Black Jack": GOTO 68
IF dlbust$ = "yes" THEN LOCATE 7, 30: PRINT "Dealer:  Bust": GOTO 68
LOCATE 7, 30: COLOR 7: PRINT "Dealer: "; dlscore: GOTO 68
68 FOR t = 1 TO 1000 * delay: NEXT t ' Giving appropriate money
FOR x = 1 TO 5:
    FOR t = 1 TO 1000 * delay: NEXT t
NEXT x
IF blackjack$ = "yes" AND dlscore = 21 THEN LET money = money + 300: GOTO 72
IF dlscore = score THEN LOCATE 7, 30: COLOR 7: PRINT "                      ": LOCATE 7, 30: PRINT "PUSH": GOTO 72
IF dlblack$ = "yes" AND blackjack$ <> "yes" THEN LET money = money - 200: GOTO 72
IF bust$ = "yes" THEN LET money = money - 200: GOTO 72
IF dlbust$ = "yes" AND blackjack$ = "yes" THEN LET money = money + 300: GOTO 72
IF dlbust$ = "yes" THEN LET money = money + 200: GOTO 72
IF blackjack$ = "yes" THEN LET money = money + 300: GOTO 72
IF dlscore > score THEN LET money = money - 200: GOTO 72
IF dlscore < score THEN LET money = money + 200: GOTO 72
72 LOCATE 2, 72: COLOR 9: PRINT "$"; money
FOR x = 1 TO 7:
    FOR t = 1 TO 1000 * delay: NEXT t
NEXT x

GOTO 25

150 CLS ' Slot Machine
LET ncrank$ = "yes"
LET crank$ = "NO"
LET crank2$ = "NO"
153 COLOR 9
LOCATE 1, 70: PRINT "Bankroll"
LOCATE 2, 72: PRINT "$"; money
LET slnum = 1
LINE (165, 165)-(390, 165), 5
LINE -(390, 245), 5
LINE -(165, 245), 5
LINE -(165, 165), 5
LINE (240, 165)-(240, 245), 5
LINE (315, 165)-(315, 245), 5
LINE (80, 80)-(100, 130), 5
LINE (455, 80)-(475, 130), 5
LINE (80, 80)-(455, 80), 5
LINE (100, 130)-(475, 130), 5
LINE (100, 130)-(400, 130), 5
LINE (475, 130)-(475, 400), 5
LINE (80, 80)-(80, 400), 5
LINE (100, 130)-(100, 400), 5
IF crank$ = "yes" THEN LINE (218, 190)-(218, 215), 7
IF crank$ = "yes" THEN LINE (180, 182)-(180, 231), 2
IF crank$ = "yes" THEN LINE (251, 174)-(251, 195), 4
IF crank$ = "yes" THEN LINE (255, 204)-(255, 229), 14
IF crank$ = "yes" THEN LINE (301, 186)-(301, 223), 7
IF crank$ = "yes" THEN LINE (338, 195)-(338, 234), 10
IF crank$ = "yes" THEN LINE (373, 177)-(373, 204), 6
IF ncrank$ = "yes" THEN LINE (191, 178)-(191, 221), 8
IF ncrank$ = "yes" THEN LINE (222, 183)-(222, 222), 14
IF ncrank$ = "yes" THEN LINE (257, 186)-(257, 240), 7
IF ncrank$ = "yes" THEN LINE (308, 173)-(308, 205), 3
IF ncrank$ = "yes" THEN LINE (335, 188)-(335, 216), 4
IF ncrank$ = "yes" THEN LINE (366, 199)-(366, 232), 7
IF crank$ = "yes" THEN RETURN
LINE (475, 170)-(540, 297), 8
LINE (475, 185)-(532, 306), 8
CIRCLE (545, 310), 15, 8
IF crank2$ = "yes" THEN RETURN
FOR t = 1 TO 900 * delay: NEXT t
CLS
LET crank$ = "yes"
LET ncrank$ = "NO": GOSUB 153
LINE (475, 170)-(532, 62), 8
LINE (475, 185)-(540, 68), 8
CIRCLE (545, 55), 15, 8
FOR t = 1 TO 1000 * delay: NEXT t
CLS
LET crank$ = "NO"
LET crank2$ = "yes"
GOSUB 153
155 FOR slot = 1 TO 3
    LET pict = INT(RND * 6) + 1
    IF pict = 1 THEN GOSUB 700
    IF pict = 2 THEN GOSUB 710
    IF pict = 3 THEN GOSUB 720
    IF pict = 4 THEN GOSUB 730
    IF pict = 5 THEN GOSUB 740
    IF pict = 6 THEN GOSUB 750
NEXT slot
IF pic1$ = "cher" AND pic2$ = "cher" AND pic3$ = "cher" THEN LET money = money + 500: GOTO 160
IF pic1$ = "bar" AND pic2$ = "bar" AND pic3$ = "bar" THEN LET money = money + 400: GOTO 160
IF pic1$ = "bel" AND pic2$ = "bel" AND pic3$ = "bel" THEN LET money = money + 350: GOTO 160
IF pic1$ = "lem" AND pic2$ = "lem" AND pic3$ = "lem" THEN LET money = money + 300: GOTO 160
IF pic1$ = "ora" AND pic2$ = "ora" AND pic3$ = "ora" THEN LET money = money + 250: GOTO 160
IF pic1$ = "dia" AND pic2$ = "dia" AND pic3$ = "dia" THEN LET money = money + 200: GOTO 160
IF pic1$ = "cher" AND pic2$ = "cher" THEN GOTO 160
IF pic2$ = "cher" AND pic3$ = "cher" THEN GOTO 160
IF pic1$ = "bar" AND pic2$ = "bar" THEN LET money = money + 100: GOTO 160
IF pic2$ = "bar" AND pic3$ = "bar" THEN LET money = money + 100: GOTO 160
LET money = money - 10

160 COLOR 9
LOCATE 1, 70: PRINT "Bankroll"
LOCATE 2, 72: PRINT "$"; money
165 COLOR 7
LOCATE 20, 25
PRINT "Press Enter to Start Slot Machine"
LOCATE 21, 25
INPUT "and (Q) to Exit ", mach$
IF mach$ = "" THEN GOTO 150
IF mach$ = "Q" OR mach$ = "q" THEN GOTO 5
GOTO 165


700 IF slnum = 1 THEN LET r = 0
IF slnum = 2 THEN LET r = 75
IF slnum = 3 THEN LET r = 150
LINE (200 + r, 183)-(202 + r, 183), 14
LINE (200 + r, 184)-(202 + r, 184), 14
LINE (199 + r, 185)-(203 + r, 185), 14
LINE (198 + r, 186)-(204 + r, 186), 14
LINE (197 + r, 187)-(205 + r, 187), 14
LINE (195 + r, 188)-(207 + r, 188), 14
LINE (193 + r, 189)-(209 + r, 189), 14
LINE (192 + r, 190)-(210 + r, 190), 14
LINE (191 + r, 191)-(211 + r, 191), 14
LINE (190 + r, 192)-(212 + r, 192), 14
LINE (190 + r, 193)-(212 + r, 193), 14
LINE (189 + r, 194)-(213 + r, 194), 14
LINE (189 + r, 195)-(213 + r, 195), 14
LINE (188 + r, 196)-(214 + r, 196), 14
FOR lem = 0 TO 6
    LINE (188 + r, 197 + lem)-(214 + r, 197 + lem), 14
NEXT lem
LINE (188 + r, 204)-(214 + r, 204), 14
LINE (189 + r, 205)-(213 + r, 205), 14
LINE (189 + r, 206)-(213 + r, 206), 14
LINE (190 + r, 207)-(212 + r, 207), 14
LINE (190 + r, 208)-(212 + r, 208), 14
LINE (191 + r, 209)-(211 + r, 209), 14
LINE (192 + r, 210)-(210 + r, 210), 14
LINE (193 + r, 211)-(209 + r, 211), 14
LINE (195 + r, 212)-(207 + r, 212), 14
LINE (197 + r, 213)-(205 + r, 213), 14
LINE (198 + r, 214)-(204 + r, 214), 14
LINE (199 + r, 215)-(203 + r, 215), 14
LINE (200 + r, 216)-(202 + r, 216), 14
LINE (200 + r, 217)-(202 + r, 217), 14
IF slnum = 1 THEN LET pic1$ = "lem"
IF slnum = 2 THEN LET pic2$ = "lem"
IF slnum = 3 THEN LET pic3$ = "lem"
LET slnum = slnum + 1
RETURN
710 IF slnum = 1 THEN LET r = 0
IF slnum = 2 THEN LET r = 75
IF slnum = 3 THEN LET r = 150
LINE (213 + r, 189)-(211 + r, 183), 2
LINE -(208 + r, 177), 2
LINE (208 + r, 188)-(217 + r, 188), 4
LINE (206 + r, 189)-(219 + r, 189), 4
LINE (204 + r, 190)-(221 + r, 190), 4
LINE (203 + r, 191)-(222 + r, 191), 4
LINE (202 + r, 192)-(223 + r, 192), 4
LINE (201 + r, 193)-(224 + r, 193), 4
LINE (201 + r, 194)-(224 + r, 194), 4
LINE (200 + r, 195)-(225 + r, 195), 4
LINE (200 + r, 196)-(225 + r, 196), 4
LINE (199 + r, 197)-(226 + r, 197), 4
LINE (199 + r, 198)-(226 + r, 198), 4
LINE (199 + r, 199)-(226 + r, 199), 4
LINE (199 + r, 200)-(226 + r, 200), 4
LINE (199 + r, 201)-(226 + r, 201), 4
LINE (200 + r, 202)-(225 + r, 202), 4
LINE (200 + r, 203)-(225 + r, 203), 4
LINE (201 + r, 204)-(224 + r, 204), 4
LINE (201 + r, 205)-(224 + r, 205), 4
LINE (202 + r, 206)-(223 + r, 206), 4
LINE (203 + r, 207)-(222 + r, 207), 4
LINE (204 + r, 208)-(221 + r, 208), 4
LINE (206 + r, 209)-(219 + r, 209), 4
LINE (208 + r, 210)-(217 + r, 210), 4
LINE (192 + r, 196)-(188 + r, 192), 2
LINE -(184 + r, 187), 2
LINE (188 + r, 195)-(195 + r, 195), 4
LINE (186 + r, 196)-(197 + r, 196), 4
LINE (184 + r, 197)-(199 + r, 197), 4
LINE (183 + r, 198)-(200 + r, 198), 4
LINE (182 + r, 199)-(201 + r, 199), 4
LINE (181 + r, 200)-(202 + r, 200), 4
LINE (181 + r, 201)-(202 + r, 201), 4
LINE (180 + r, 202)-(203 + r, 202), 4
LINE (180 + r, 203)-(203 + r, 203), 4
LINE (179 + r, 204)-(204 + r, 204), 4
LINE (179 + r, 205)-(204 + r, 205), 4
LINE (179 + r, 206)-(204 + r, 206), 4
LINE (179 + r, 207)-(204 + r, 207), 4
LINE (179 + r, 208)-(204 + r, 208), 4
LINE (180 + r, 209)-(203 + r, 209), 4
LINE (180 + r, 210)-(203 + r, 210), 4
LINE (181 + r, 211)-(202 + r, 211), 4
LINE (181 + r, 212)-(202 + r, 212), 4
LINE (182 + r, 213)-(201 + r, 213), 4
LINE (183 + r, 214)-(200 + r, 214), 4
LINE (184 + r, 215)-(199 + r, 215), 4
LINE (186 + r, 216)-(197 + r, 216), 4
LINE (188 + r, 217)-(195 + r, 217), 4
IF slnum = 1 THEN LET pic1$ = "cher"
IF slnum = 2 THEN LET pic2$ = "cher"
IF slnum = 3 THEN LET pic3$ = "cher"
LET slnum = slnum + 1
RETURN
720 IF slnum = 1 THEN LET r = 0
IF slnum = 2 THEN LET r = 75
IF slnum = 3 THEN LET r = 150
PSET (200 + r, 185), 1
FOR dia = 1 TO 20
    LINE (200 + r - dia, 180 + dia)-(200 + r + dia, 180 + dia), 1
NEXT dia
FOR dia2 = 20 TO 1 STEP -1
    LET dd = 20 - dia2
    LINE (200 + r - dia2, 200 + dd)-(200 + r + dia2, 200 + dd), 1
NEXT dia2
IF slnum = 1 THEN LET pic1$ = "dia"
IF slnum = 2 THEN LET pic2$ = "dia"
IF slnum = 3 THEN LET pic3$ = "dia"
LET slnum = slnum + 1
RETURN

730 IF slnum = 1 THEN LET r = 0
IF slnum = 2 THEN LET r = 75
IF slnum = 3 THEN LET r = 150
LINE (200 + r, 182)-(201 + r, 182), 6
LINE (200 + r, 183)-(201 + r, 183), 6
LINE (199 + r, 184)-(202 + r, 184), 6
LINE (199 + r, 185)-(202 + r, 185), 6
FOR bell = 186 TO 195
    LINE (198 + r, bell)-(203 + r, bell), 6
NEXT bell
LINE (199 + r, 196)-(202 + r, 196), 6
LINE (196 + r, 197)-(206 + r, 197), 8
LINE (194 + r, 198)-(208 + r, 198), 8
LINE (193 + r, 199)-(209 + r, 199), 8
LINE (192 + r, 200)-(210 + r, 200), 8
LINE (192 + r, 201)-(210 + r, 201), 8
LINE (191 + r, 202)-(211 + r, 202), 8
LINE (191 + r, 203)-(211 + r, 203), 8
LINE (191 + r, 204)-(211 + r, 204), 8
LINE (191 + r, 205)-(211 + r, 205), 8
LINE (191 + r, 206)-(211 + r, 206), 8
LINE (191 + r, 207)-(211 + r, 207), 8
LINE (191 + r, 208)-(211 + r, 208), 8
LINE (191 + r, 209)-(211 + r, 209), 8
LINE (191 + r, 210)-(211 + r, 210), 8
LINE (190 + r, 211)-(212 + r, 211), 8
LINE (189 + r, 212)-(213 + r, 212), 8
LINE (188 + r, 213)-(214 + r, 213), 8
LINE (185 + r, 214)-(217 + r, 214), 8
LINE (184 + r, 215)-(218 + r, 215), 8
LINE (201 + r, 216)-(202 + r, 216), 3
LINE (201 + r, 217)-(202 + r, 217), 3
LINE (201 + r, 218)-(202 + r, 218), 3
LINE (201 + r, 219)-(202 + r, 219), 3
LINE (200 + r, 220)-(203 + r, 220), 3
LINE (199 + r, 221)-(204 + r, 221), 3
LINE (200 + r, 222)-(203 + r, 222), 3
IF slnum = 1 THEN LET pic1$ = "bel"
IF slnum = 2 THEN LET pic2$ = "bel"
IF slnum = 3 THEN LET pic3$ = "bel"
LET slnum = slnum + 1
RETURN
740 IF slnum = 1 THEN LET r = 0
IF slnum = 2 THEN LET r = 75
IF slnum = 3 THEN LET r = 150
IF slnum = 1 THEN LET br2 = 0
IF slnum = 2 THEN LET br2 = 9
IF slnum = 3 THEN LET br2 = 18
FOR bar = 185 TO 190
    LINE (175 + r, bar)-(225 + r, bar), 10
NEXT bar
LOCATE 13, 24 + br2
COLOR 2
PRINT "B A R"
FOR bar = 206 TO 213
    LINE (175 + r, bar)-(225 + r, bar), 10
NEXT bar
IF slnum = 1 THEN LET pic1$ = "bar"
IF slnum = 2 THEN LET pic2$ = "bar"
IF slnum = 3 THEN LET pic3$ = "bar"
LET slnum = slnum + 1
RETURN

750 IF slnum = 1 THEN LET r = 0
IF slnum = 2 THEN LET r = 75
IF slnum = 3 THEN LET r = 150
LINE (194 + r, 185)-(207 + r, 185), 6
LINE (191 + r, 186)-(210 + r, 186), 6
LINE (189 + r, 187)-(212 + r, 187), 6
LINE (187 + r, 188)-(214 + r, 188), 6
LINE (186 + r, 189)-(215 + r, 189), 6
LINE (185 + r, 190)-(216 + r, 190), 6
LINE (184 + r, 191)-(217 + r, 191), 6
LINE (184 + r, 192)-(217 + r, 192), 6
LINE (183 + r, 193)-(218 + r, 193), 6
LINE (183 + r, 194)-(218 + r, 194), 6
LINE (182 + r, 195)-(219 + r, 195), 6
LINE (182 + r, 196)-(219 + r, 196), 6
FOR oge = 197 TO 204
    LINE (181 + r, oge)-(220 + r, oge), 6
NEXT oge
LINE (182 + r, 205)-(219 + r, 205), 6
LINE (182 + r, 206)-(219 + r, 206), 6
LINE (183 + r, 207)-(218 + r, 207), 6
LINE (183 + r, 208)-(218 + r, 208), 6
LINE (184 + r, 209)-(217 + r, 209), 6
LINE (184 + r, 210)-(217 + r, 210), 6
LINE (185 + r, 211)-(216 + r, 211), 6
LINE (186 + r, 212)-(215 + r, 212), 6
LINE (187 + r, 213)-(214 + r, 213), 6
LINE (189 + r, 214)-(212 + r, 214), 6
LINE (191 + r, 215)-(210 + r, 215), 6
LINE (194 + r, 216)-(207 + r, 216), 6
IF slnum = 1 THEN LET pic1$ = "ora"
IF slnum = 2 THEN LET pic2$ = "ora"
IF slnum = 3 THEN LET pic3$ = "ora"
LET slnum = slnum + 1
RETURN

350 CLS 'Lottery
COLOR 12: LOCATE 6, 30
PRINT "Welcome to Phil's Lottery"
LINE (100, 150)-(150, 150), 14
LINE -(150, 200), 14
LINE -(100, 200), 14
LINE (100, 150)-(100, 250), 14
LINE (225, 150)-(225, 250), 14
LINE (280, 150)-(280, 250), 14
LINE (280, 200)-(360, 150), 14
LINE (280, 200)-(360, 250), 14
LINE (520, 150)-(520, 250), 15
LINE (440, 150)-(520, 150), 15
LINE (440, 200)-(520, 200), 15
LINE (440, 250)-(520, 250), 15
LOCATE 25, 25
FOR t = 1 TO 12000: NEXT t
355 CLS
COLOR 9
LOCATE 1, 70: PRINT "Bankroll"
LOCATE 2, 72: PRINT "$"; money
LOCATE 10, 20: PRINT "Pick Your Three Lucky Digits"
LOCATE 13, 5
COLOR 7
INPUT "Pick first number ", lot1
LOCATE 15, 5: INPUT "Pick second number ", lot2
LOCATE 17, 5: INPUT "Pick third number ", lot3
LET caslot1 = INT(RND * 9) + 1
LET caslot2 = INT(RND * 9) + 1
LET caslot3 = INT(RND * 9) + 1
IF lot1 = caslot1 AND lot2 = caslot2 AND lot3 = caslot3 THEN LET money = money + 5000: GOTO 375
IF caslot1 = lot3 AND caslot3 = lot1 AND caslot2 = lot2 THEN LET money = money + 2000: GOTO 400
IF caslot1 = lot1 AND caslot3 = lot2 AND caslot2 = lot3 THEN LET money = money + 2000: GOTO 400
IF caslot1 = lot2 AND caslot3 = lot3 AND caslot2 = lot1 THEN LET money = money + 2000: GOTO 400
IF caslot1 = lot3 AND caslot3 = lot2 AND caslot2 = lot1 THEN LET money = money + 2000: GOTO 400
IF caslot1 = lot1 AND caslot3 = lot3 AND caslot2 = lot2 THEN LET money = money + 2000: GOTO 400
IF caslot1 = lot2 AND caslot3 = lot1 AND caslot2 = lot3 THEN LET money = money + 2000: GOTO 400
LET cassum = caslot1 + caslot2 + caslot3
LET lotsum = lot1 + lot2 + lot3
IF lotsum = caslot1 + caslot2 + caslot3 THEN LET money = money + 200: GOTO 380

LET money = money - 10
LOCATE 19, 20: COLOR 7
PRINT "Your three numbers are"; lot1; lot2; lot3
LOCATE 20, 20: PRINT "The Phil's Lottery three are"; caslot1; caslot2; caslot3
LOCATE 22, 25
COLOR 3: PRINT "Sorry, you are not a winner"
FOR t = 1 TO 2500: NEXT t
370 COLOR 7: LOCATE 25, 10: INPUT "Play Again (Y or N) ", play$
IF play$ = "Y" OR play$ = "y" THEN GOTO 355
IF play$ = "N" OR play$ = "n" THEN GOTO 5
GOTO 370

375 CLS
SOUND 650, 8: SOUND 450, 4: SOUND 850, 16
LOCATE 8, 20
PRINT "Phil's Lottery three are"; caslot1; caslot2; caslot3
LOCATE 9, 20: PRINT "Your three numbers are"; lot1; lot2; lot3
LOCATE 10, 25: PRINT "PERFECT MATCH"
FOR t = 1 TO 500: NEXT t
FOR winlot = 1 TO 4
    COLOR 5: LOCATE 14, 25
    PRINT "                    "
    FOR t = 1 TO 1000: NEXT t
    LOCATE 14, 25: PRINT "YOU WIN $ 5000 $"
    FOR t = 1 TO 2500: NEXT t
NEXT winlot
377 COLOR 7: LOCATE 20, 10: INPUT "Play Again (Y or N) ", play$
IF play$ = "Y" OR play$ = "y" THEN GOTO 355
IF play$ = "N" OR play$ = "n" THEN GOTO 5
GOTO 377

380 CLS
LOCATE 8, 20: PRINT "Phil's Lottery three are"; caslot1; caslot2; caslot3
LOCATE 9, 20: PRINT "Your three numbers are"; lot1; lot2; lot3
LOCATE 10, 25: PRINT "Both sums are"; cassum
FOR t = 1 TO 500: NEXT t
LOCATE 14, 25
PRINT "YOU WIN $ 200 "
FOR t = 1 TO 5000: NEXT t
395 LOCATE 20, 10: INPUT "Play Again (Y or N) ", play$
IF play$ = "y" OR play$ = "Y" THEN GOTO 355
IF play$ = "n" OR play$ = "N" THEN GOTO 5
GOTO 395

400 CLS
SOUND 550, 2: FOR t = 1 TO 10: NEXT t
SOUND 550, 4: SOUND 750, 8
LOCATE 8, 20: PRINT "Phil's Lotter three are"; caslot1; caslot2; caslot3
LOCATE 9, 20: PRINT "Your three numbers are"; lot1; lot2; lot3
LOCATE 10, 25: PRINT "YOU CHOSE SAME THREE DIGITS"
FOR t = 1 TO 550: NEXT t
COLOR 15
LOCATE 14, 25: PRINT "YOU WIN $ 2000"
410 COLOR 7: LOCATE 20, 10: INPUT "Play Again (Y or N) ", play$
IF play$ = "y" OR play$ = "Y" THEN GOTO 355
IF play$ = "n" OR play$ = "N" THEN GOTO 5
GOTO 410

500 ' Ace
IF dealer$ = "yes" THEN GOTO 503
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
503 IF dealer$ <> "yes" THEN GOTO 504
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
504 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 506
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
506 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 505
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "A"
LOCATE 25 - u, 21 + m
PRINT "A"
LOCATE 22 - u, 18 + m
PRINT "*"
505 LET value = 1
IF dealer$ = "yes" THEN LET dlace$ = "yes"
IF dealer$ <> "yes" THEN LET ace$ = "yes"
RETURN
510 ' card 2
IF dealer$ = "yes" THEN GOTO 513
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
513 IF dealer$ <> "yes" THEN GOTO 514
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
514 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 516
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
516 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 515
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "2"
LOCATE 25 - u, 21 + m
PRINT "2"
LOCATE 23 - u, 17 + m
PRINT "* *"
515 LET value = 2
RETURN
520 ' 3 card
IF dealer$ = "yes" THEN GOTO 523
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
523 IF dealer$ <> "yes" THEN GOTO 524
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
524 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 526
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
526 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 525
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "3"
LOCATE 25 - u, 21 + m
PRINT "3"
LOCATE 22 - u, 16 + m
PRINT "* * *"
525 LET value = 3
RETURN
530 ' 4 card
IF dealer$ = "yes" THEN GOTO 533
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
533 IF dealer$ <> "yes" THEN GOTO 534
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
534 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 536
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
536 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 535
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "4"
LOCATE 25 - u, 21 + m
PRINT "4"
LOCATE 22 - u, 17 + m
PRINT "* * "
LOCATE 23 - u, 17 + m
PRINT "* * "
535 LET value = 4
RETURN
540 ' 5 card
IF dealer$ = "yes" THEN GOTO 543
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
543 IF dealer$ <> "yes" THEN GOTO 544
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
544 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 546
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
546 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 545
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "5"
LOCATE 25 - u, 21 + m
PRINT "5"
LOCATE 22 - u, 17 + m
PRINT "* * "
LOCATE 23 - u, 16 + m
PRINT "* * * "
545 LET value = 5
RETURN

550 ' 6 card
IF dealer$ = "yes" THEN GOTO 553
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
553 IF dealer$ <> "yes" THEN GOTO 554
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
554 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 556
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
556 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 555
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "6"
LOCATE 25 - u, 21 + m
PRINT "6"
LOCATE 22 - u, 16 + m
PRINT "* * *"
LOCATE 23 - u, 16 + m
PRINT "* * * "
555 LET value = 6
RETURN

560 ' 7 card
IF dealer$ = "yes" THEN GOTO 563
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
563 IF dealer$ <> "yes" THEN GOTO 564
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
564 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 566
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
566 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 565
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "7"
LOCATE 25 - u, 21 + m
PRINT "7"
LOCATE 22 - u, 16 + m
PRINT "* * *"
LOCATE 23 - u, 15 + m
PRINT "* * * *"
565 LET value = 7
RETURN

570 ' 8 card
IF dealer$ = "yes" THEN GOTO 573
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
573 IF dealer$ <> "yes" THEN GOTO 574
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
574 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 576
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
576 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 575
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "8"
LOCATE 25 - u, 21 + m
PRINT "8"
LOCATE 22 - u, 15 + m
PRINT "* * * *"
LOCATE 23 - u, 15 + m
PRINT "* * * *"
575 LET value = 8
RETURN

580 ' card 9
IF dealer$ = "yes" THEN GOTO 583
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
583 IF dealer$ <> "yes" THEN GOTO 584
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
584 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 586
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
586 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 585
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "9"
LOCATE 25 - u, 21 + m
PRINT "9"
LOCATE 21 - u, 16 + m
PRINT "* * * "
LOCATE 22 - u, 16 + m
PRINT "* * * "
LOCATE 23 - u, 16 + m
PRINT "* * *"
585 LET value = 9
RETURN

590 ' 10 card
IF dealer$ = "yes" THEN GOTO 593
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
593 IF dealer$ <> "yes" THEN GOTO 594
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
594 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 596
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
596 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 595
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "10"
LOCATE 25 - u, 20 + m
PRINT "10"
LOCATE 21 - u, 16 + m
PRINT "* * * "
LOCATE 22 - u, 15 + m
PRINT "* * * *"
LOCATE 23 - u, 16 + m
PRINT "* * * "
595 LET value = 10
RETURN

600 ' Jack card
IF dealer$ = "yes" THEN GOTO 603
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
603 IF dealer$ <> "yes" THEN GOTO 604
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
604 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 606
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
606 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 605
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "J"
LOCATE 25 - u, 21 + m
PRINT "J"
605 LET value = 10
RETURN

610 ' QUEEN card
IF dealer$ = "yes" THEN GOTO 613
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
613 IF dealer$ <> "yes" THEN GOTO 614
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
614 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 616
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
616 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 615
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "Q"
LOCATE 25 - u, 21 + m
PRINT "Q"
615 LET value = 10
RETURN

620 ' KING CARD
IF dealer$ = "yes" THEN GOTO 623
IF num = 1 THEN LET J = 0
IF num = 2 THEN LET J = 100
IF num = 3 THEN LET J = 200
IF num = 4 THEN LET J = 300
IF num = 5 THEN LET J = 400
IF num = 1 THEN LET m = 0
IF num = 2 THEN LET m = 12
IF num = 3 THEN LET m = 24
IF num = 4 THEN LET m = 37
IF num = 5 THEN LET m = 50
623 IF dealer$ <> "yes" THEN GOTO 624
IF dnum = 1 THEN LET J = 0: LET m = 0
IF dnum = 2 THEN LET J = 100: LET m = 12
IF dnum = 3 THEN LET J = 200: LET m = 24
IF dnum = 4 THEN LET J = 300: LET m = 37
IF dnum = 5 THEN LET J = 400: LET m = 50
624 IF dealer$ = "yes" THEN LET z = 175
IF dealer$ <> "yes" THEN LET z = 0
LINE (100 + J, 300 - z)-(170 + J, 300 - z), 5
LINE -(170 + J, 400 - z), 5
LINE -(100 + J, 400 - z), 5
LINE -(100 + J, 300 - z), 5
IF dealer$ <> "yes" AND dnum <> 1 THEN GOTO 626
LINE (100, 125)-(170, 150), 5
LINE (100, 150)-(170, 175), 5
LINE (100, 175)-(170, 200), 5
LINE (100, 200)-(170, 225), 5
626 IF dealer$ = "yes" AND dnum = 1 THEN GOTO 625
IF dealer$ = "yes" THEN LET u = 11
IF dealer$ <> "yes" THEN LET u = 0
COLOR 4
LOCATE 20 - u, 15 + m
PRINT "K"
LOCATE 25 - u, 21 + m
PRINT "K"
625 LET value = 10
RETURN

870 FOR t = 1 TO 2000: NEXT t
SOUND 200, 16
SOUND 150, 32
COLOR 4
LOCATE 18, 35
PRINT "BUST"
FOR t = 1 TO 3600: NEXT t
LET hit$ = "hno"
LET bust$ = "yes"
GOTO 65

930 FOR t = 1 TO 2800: NEXT t
SOUND 1000, 4
SOUND 900, 4
SOUND 800, 4
SOUND 1200, 8
COLOR 13
FOR wet = 1 TO 5
    LOCATE 18, 35
    PRINT "Black Jack"
    FOR t = 1 TO 2600: NEXT t
    LOCATE 18, 35: PRINT "             "
    FOR t = 1 TO 1700: NEXT t
NEXT wet
LET hit$ = "hno"
LET blackjack$ = "yes"
GOTO 50

1111 CLS
COLOR 11
LOCATE 11, 25
PRINT "Thanks for playing at Phil's Casino"
LOCATE 20, 5
END


