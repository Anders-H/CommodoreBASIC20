10 graphic 1,1
20 x=5
30 y=5
40 z=5
50 t=0
60 s=1/200
70 d=10
80 r=28
90 b=8/3
100 t=t+0.1
110 dx=d*(y-x)
120 x1=x+dx*s
130 dy=(r*x-y)-x*z
140 y1=y+dy*s
150 dz=x*y-b*z
160 z1=z+dz*s
170 x=x1
180 y=y1
190 z=z1
200 draw 1,150+4*x,20+3*z
210 if t<1000 goto 100