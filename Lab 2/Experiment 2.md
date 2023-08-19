![](images/pic1.png)

`                                                `Department of Electrical and Computer Engineering

# Course Title : Digital Signal Processing Sesional Course Code: ECE 4124

Submission Date : 7 May  , 2023

### Submitted To: 

Hafsa Binte Kibria 

Lecturer,  Dept of ECE



RUET

### Submitted By: 

Tamim Hasan

Roll : 1810044

 Dept of ECE, RUET 
 
 Session : 2018 -19

Date :

### Experiment No:  2 

Theory:

In mathematics (in particular, functional analysis), convolution is a mathematical operation on two functions (f and g) that produces a third function  (f\*g) that expresses how the shape of one is modified by the other. The term convolution refers to both the result function and to the process of computing it. It is defined as the integral of the product of the two functions after one is reflected about the y-axis and shifted. The choice of which function is reflected and shifted before the integral does not change the integral result (see commutativity). The integral is evaluated for all values of shift, producing the convolution function.

Code :  

```

clc

clear all close all xn=[1 2 3 4] hn=[4 4 3 2] L=length(xn)

M=length(hn)

X=[xn, zeros(1,L)];

H=[hn, zeros(1,M)];

for n=1:L+M-1

`    `y(n)=0;

`    `for i=1:L

`        `if(n-i+1>0)

`            `y(n)=y(n)+X(i)\*H(n-i+1)         end

`    `end

end

subplot(3,1,1)

stem(xn)

title('x(n)')

subplot(3,1,2)

stem(hn)

title('h(n')

subplot(3,1,3)

stem(y)

title('y(n)')

```

Output :

![](images/pic2.png)

![](images/pic3.png)

### Conclusion and Discussion :

Two 1x4 matrices were declared as part of the linear convolution code  and their lengths were determined by utilizing the length function. The second step involved using a nested for loop, with the first loop running from 1 to L+M-1. An if condition was used in the second loop, with a  Based on this circumstance, a formula was created for the output.The code was executed successfully and no errors were found. Form this experiment, we had learned about linear convolution and how to plot the signal using MATALB. 
