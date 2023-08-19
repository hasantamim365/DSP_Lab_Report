clc
clear all
x=input('Enter the value of x');
n=length(x);
m=2*n-1;
rxx=zeros(1,m);
for i=1:m
rxx(i)=dot(x(n-i+1:n),x(1:i).');
rxx(m-i+1)=rxx(i)'
end
subplot(3,1,1)
stem(x)
title('input')
subplot(3,1,2)
stem(rxx)
title('corelated value using raw')
subplot(3,1,3)
autocorr(x)