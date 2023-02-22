

L= 25e-3;
R=33;
c= 47e-6;

A=[0 1/c; -1/L -R/L];
B=[0 ; 1/2];
C=[0 R];
D= 0

CC=[1 0]

sys=ss(A,B,C,D);
H=tf(sys);
figure(1)
bode(H)

figure(2)
sys=ss(A,B,CC,D);
H=tf(sys);
bode(H)
