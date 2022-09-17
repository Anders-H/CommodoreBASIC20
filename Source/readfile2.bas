10 open 1,8,8,"test2, seq, r"
30 get# 1,a$
30 if asc(a$)=199 then 60
40 print a$;
50 goto 20
60 close 1