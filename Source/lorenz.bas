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
110 rem lorenz
120 x=5
130 y=5
140 z=5
150 t=0
160 s=1/200
170 d=10
180 r=28
190 b=8/3
200 t=t+0.1
210 dx=d*(y-x)
220 x1=x+dx*s
230 dy=(r*x-y)-x*z
240 y1=y+dy*s
250 dz=x*y-b*z
260 z1=z+dz*s
270 x=x1
280 y=y1
290 z=z1
300 rem position
310 xx=150+4*x:yy=20+3*z
320 rem rita pixel
330 row=int(yy/8):ch=int(xx/8)
340 line=yy and 7:bit=7-(xx and 7)
350 byte=8192+row*320+ch*8+line
360 poke byte,peek(byte) or 2^bit
370 rem upprepa
380 if t<1000 goto 200