%%LEZIONE 2 - SIMULATION OF A SYSTEM with Simulink

%%LEZIONE 2A
%>>simulink
clear all
close all
clc

L1=10e-3;
C1=4e-6;
R1=68;

%visto che il plot era troppo poco zoommato camnio lo stop time
tEnd=5e-3;
%imposto a 5 ms

%plot(out.x1.time,out.x2.data)
%come se lo plottassimo asse x e y
%out = sim('lezione2a')
%plot(out.x1.time,out.x2.data)



%%LEZIONE 2B
%matrice A quadrata
A=[-R1/L1 -1/L1; 1/C1 0];
B=[1/L1; 0];
C=[0 1];
D=0;

%imposto lo stato iniziale (tensione e corrente sul C)
x0=[2e-3; 0.2];

sys = ss(A, B, C, D);

%ora considero il file simulink lezione 2b
%out = sim('lezione2b')
%plot(out.y.time,out.y.data)
%mi esce lo stesso grafico di prima solo più veloce


%%LEZIONE 3C
out = sim('lezione2c')
plot(out.x.time,out.y.data)