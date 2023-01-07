10REM > ClockSp 5.08
20Z%=&0391
30LOMEM=(LOMEM+&100)AND-256:PROCs
40PRINT"BBC BASIC CPU Timing Program"'
50GOTO60
51:
52DEFPROCT:ENDPROC
53:
55RETURN
57:
60DIMA(10),B(10),U%5:FORA=0TO9:READA(A):B(A)=4/A(A):NEXT
70U$="STRINGMANIPULATIONTEST":L=1:I%=0:V%=10:D%=100:A(10)=1
80REPEATL=10*L:N%=0
90:
100PRINT"Real REPEAT loop    ";:REPEAT:S=1:E=D%:PROCi
101REPEATUNTILTIME=T%
102FORF%=I%TOE%:C=1:REPEATC=S+C:UNTILC>E:NEXT:T%=TIME:PROCr
103UNTILT>L:PROCp
105:
110PRINT"Variant REPEAT loop ";:REPEAT:S=0.5:E=50:PROCi
111REPEATUNTILTIME=T%
112FORF%=I%TOE%:C=S:REPEATC=S+C:UNTILC>E:NEXT:T%=TIME:PROCr
113UNTILT>L:PROCp
115:
120PRINT"Integer REPEAT loop ";:REPEAT:B%=1:F%=0:PROCi
121REPEATUNTILTIME=T%
122REPEATF%=B%+F%:C%=I%:REPEATC%=B%+C%:UNTILC%>D%:UNTILF%>E%:T%=TIME:PROCr
123UNTILT>L:PROCp
125:
130PRINT"Real FOR loop       ";:REPEATI=0:S=1:E=D%:PROCi
131REPEATUNTILTIME=T%
132FORF%=I%TOE%:FORC=I TOE STEPS:NEXT:NEXT:T%=TIME:PROCr
133UNTILT>L:PROCp
135:
140PRINT"Variant FOR loop    ";:REPEATX=0.5:S=0.5:E=50:PROCi
141REPEATUNTILTIME=T%
142FORF%=I%TOE%:FORA=X TOE STEPS:NEXT:NEXT:T%=TIME:PROCr
143UNTILT>L:PROCp
145:
150PRINT"Integer FOR loop    ";:REPEATS%=1:PROCi
151REPEATUNTILTIME=T%
152FORF%=I%TOE%:FORC%=I%TOD%STEPS%:NEXT:NEXT:T%=TIME:PROCr
153UNTILT>L:PROCp
155:
160PRINT"Trig/Log test"SPC(7);:IFCOS0=0PRINTSPC4"<none>":V%=9:B(N%)=0:N%=N%+1:GOTO170
161REPEATC=1.1:D=TAN(LN(C)):PROCi
162REPEATUNTILTIME=T%
163FORF%=I%TOE%:D=TAN(LN(C)):NEXT:T%=TIME:PROCr
164UNTILT>L:PROCp
165:
170PRINT"String manipulation ";:O%=LENU$DIV2:P%=O%DIV2:Q%=P%+1:R%=2
171REPEATPROCi
172REPEATUNTILTIME=T%
173FORF%=I%TOE%:R$=RIGHT$(MID$(U$,O%,Q%)+RIGHT$(U$,P%)+MID$(U$,O%,R%)+LEFT$(U$,P%)+MID$(U$,P%,Q%),LENU$):R$=RIGHT$(MID$(U$,O%,Q%)+RIGHT$(U$,P%)+MID$(U$,O%,R%)+LEFT$(U$,P%)+MID$(U$,P%,Q%),LENU$):NEXT:T%=TIME:PROCr
174UNTILT>L:PROCp
175:
180PRINT"Procedure call"SPC(6);:REPEATPROCi
181REPEATUNTILTIME=T%
182FORF%=I%TOE%:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT
183PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:PROCT:NEXT:T%=TIME:PROCr
184UNTILT>L:PROCp
185:
190PRINT"GOSUB call"SPC(10);:REPEATPROCi
191REPEATUNTILTIME=T%
192FORF%=I%TOE%:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55
193GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:GOSUB55:NEXT:T%=TIME:PROCr
194UNTILT>L:PROCp
195:
200PRINT'SPC(11)"Average  ";:A=0
210FORA%=0TO9:A=A+A(A%)*B(A%):NEXT:T=V%
220PROCp
230IF(Z%AND&1)=1THENGOTO250
240PRINTSPC(16)"+/-   ";:IFL>100P."0."STRING$((LOGL)-3,"0")"2%" ELSEP.200/L;"%"
250PRINT'"Compared to a 2.00MHz "Z$'
260UNTILL>10^((Z%DIV256)AND15)
270*fx151,78,243
280END
290:
300DEFPROCs
310IF(Z%AND&F000)=0THENH%=FNB
320IFH%=4RESTORE800
330IFH%=5RESTORE1000
340READZ$:READM:IF(Z%AND16)=0THENM=1
350IFZ%AND1ENDPROC
360!U%=0:U%?4=0:Y%=U%DIV256:X%=U%AND255
370*FX151,78,62
380*FX16,0,0
390ENDPROC
400:
410DEFPROCi:E%=B(N%)*L*1.05:IF(Z%AND&1)=0THENA%=4:CALL&FFF1
420T%=2:TIME=0
430ENDPROC
440:
450DEFPROCr:T=T%-1.5:B(N%)=F%/T:ENDPROC
460:
470DEFPROCp:IFN%<10THENA=F%
475IFZ%AND&80PRINTA,T,2*T/A" ";
480T=(M*A*A(N%)/T)+0.5/L
490IFT<L PRINTMID$(STR$(T),1,LOG(L)+2);ELSET%=T:PRINTT%;
500PRINT"MHz":N%=N%+1:ENDPROC
510:
520DEFFNB
530H%=&49534142:IF!&B809=H%AND?&B80F=&34THEN=5
540IF!&B809=H%THEN=(?&B815)-48
550IF!&8009=H%AND?&800F=&34 THEN=5
560IF!&8009=H%THEN=(?&8015)-48
570=0
580:
600DATA"BBC B BASICII",1.01889653
610DATA41.0571084
620DATA41.1571515
630DATA24.2528754
640DATA10.6368630
650DATA10.5577759
660DATA3.73191332
670DATA11.5782319
680DATA3.94371473
690DATA4.89196739
700DATA2.68503938
710:
800DATA"BBC Master BASICIV",1.01551517
810DATA36.0003069
820DATA36.1177558
830DATA21.5435929
840DATA9.19813085
850DATA9.12951308
860DATA3.39001966
870DATA4.67967639
880DATA3.85715860
890DATA4.57998751
900DATA2.55346259
910:
1000DATA"Master BASIC 4r32",1.0158
1010DATA36.1019811
1020DATA36.1721433
1030DATA21.5354440
1040DATA9.09267815
1050DATA9.02518887
1060DATA3.38061456
1070DATA2.62327582
1080DATA3.85322675
1090DATA4.58095244
1100DATA2.55764113
1110:
