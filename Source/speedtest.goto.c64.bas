10 print "speed test: goto"
20 s=ti
30 x=0
40 c=0
50 x=x+1
60 c=c+1
70 if x>255 then x=0
80 poke 53280,x
90 if c<500 then 50
100 print ti-s