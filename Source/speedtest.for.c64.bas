10 print "speed test: for"
20 s=ti
30 x=0
40 for c=1 to 500
50 x=x+1
60 if x>255 then x=0
70 poke 53280,x
80 next c
90 print ti-s