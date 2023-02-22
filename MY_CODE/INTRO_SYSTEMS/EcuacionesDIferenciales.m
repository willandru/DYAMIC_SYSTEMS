clear
close all
clc


syms vc(t) il(t)

X0=[0.2 0.2];
C=0.5;
L=2;
r1=4;
r2=1;
vi=0;%Para entrada cero

Dvc= diff(vc,t)== (1/C)*(il -(vc/r2));
Dil= diff(il,t)== (1/L)*(vi- il*r1 - vc);

cond1 = vc(0)==0.2;
cond2 = il(0)==0.2;

dX=[Dvc;Dil];
cond=[cond1;cond2];

S= dsolve(dX, cond);
y= S.vc;

figure(1)
fplot(y)
title('Respuesta salida "vc" para entrada cero')

% Respuesta para estado cero y funcion step

vi=10;
Dvc= diff(vc,t)== (1/C)*(il -(vc/r2));
Dil= diff(il,t)== (1/L)*(vi- il*r1 - vc);
dX=[Dvc;Dil];

cond1 = vc(0)==0;
cond2 = il(0)==0;
cond=[cond1;cond2];

S2=dsolve(dX, cond);

y1=S2.vc;

figure(2)
fplot(y1)
title('Respuesta salida "vc" para estado cero')

