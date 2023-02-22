clc;
clear all;
close all;

A=[-2 2; -1/2 -2];
B=[0; 1/2];

C=[1 0];
D=[0];

X0=[0.2 0.2];

sys = ss(A,B,C,D);
figure(1)
initial(sys,X0)


figure(2)

opt = stepDataOptions('StepAmplitude',10);
step(sys,opt)

figure(3)
t=[0:0.1:9.9]';
u=10*heaviside(t);
lsim(sys,u,t,X0)