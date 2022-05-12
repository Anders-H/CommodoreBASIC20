10 dim f%(9)
20 a%=1
30 b%=0
40 for i=0 to 9
50 f%(I)=a%+b%
60 a%=b%
70 b%=f%(I)
80 next
90 for i=0 to 9
100 print f%(I)
110 next