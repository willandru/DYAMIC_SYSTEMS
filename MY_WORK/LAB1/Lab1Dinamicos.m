L=1.499;
Req= 2.333e3;
R=27;
C=330e-6;

A=[0 1/C; -1/L -(Req+R)/L ];
B=[0; 1/L];
C=[1 0; 0 1];
D=0;

sys=ss(A,B,C,D)


t=[0:0.1:9.9]';
vi=5*heaviside(t);

Y= lsim(sys,vi,t)
Y1=Y(:,1);
Y2=Y(:,2);
figure(1);

subplot(2,1,1)
plot(Y1)
subplot(2,1,2)
plot(Y2)
%

data= csvread("scope_14.csv");

v1=data(:,2);
v2=data(:,3);
t=data(:,1);

i=v2./R

figure(2)
subplot(3,1,1)
plot(t,v1)
subplot(3,1,2)
plot(t,v2)
subplot(3,1,3)
plot(t,i)

