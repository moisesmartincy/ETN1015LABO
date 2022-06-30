clc, clear
w=0:0.01:pi;
b=0.3;
g=0;
g1=0.7;
num=[(1+g+b-g*b) 0 0 0 0 0 0 0 0 0 (g-b-1-b*g)];
num1=[(1+g1+b-g1*b) 0 0 0 0 0 0 0 0 0 (g1-b-1-b*g1)];
den=[2 0 0 0 0 0 0 0 0 0 -(2*b)];
H=freqz(num,den,w);
H1=freqz(num1,den,w);
plot(w,abs(H),w,abs(H1),'r')