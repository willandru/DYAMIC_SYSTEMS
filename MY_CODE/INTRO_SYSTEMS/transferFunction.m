clc;
clear all;
close all;

A=[-2 2; -1/2 -2];
B=[0; 1/2];
C=[1 0];
D=[0];

sys = ss(A,B,C,D);
H=tf(sys);

zplane(H)
