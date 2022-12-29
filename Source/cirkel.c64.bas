10 rem skydda basic
20 poke 56,32:poke 52,32
30 rem pixelgrafik
40 clr:poke 53272,25
50 poke 53265,peek(53265) or 32
60 print "{clear}"
70 rem rensa befintliga pixlar
80 poke 88,0:poke 89,63
90 poke 113,64:poke 114,31
100 poke 12,1:sys 45760
110 rem cirkel
120 for a=1 to 7.3 step 0.01
130 x=cos(a)*20
140 y=sin(a)*22
150 rem position
160 xx=159+4*x:yy=99+3*y
170 rem rita pixel
180 row=int(yy/8):ch=int(xx/8)
190 line=yy and 7:bit=7-(xx and 7)
200 byte=8192+row*320+ch*8+line
210 poke byte,peek(byte) or 2^bit
220 next
230 goto 230