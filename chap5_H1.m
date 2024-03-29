clc
X=[-5:5];
Y=1./(1.+4.*X.^2);
disp('第一问Newton插值多项式为')
P=my_newton(X,Y)
x0=[-5:0.1:5];
y0=1./(1.+4.*x0.^2);
y1=polyval(P,x0);
y2=abs(y1-y0);
figure('Name','第(2)、(3)问图','NumberTitle','off')
plot(x0,y0,'b-',x0,y1,'r-',x0,y2,'g-');
legend('原函数','插值多项式函数','误差值函数')
title('原函数和插值函数的比较')
xlabel('x');
ylabel('y');
