![](images/pic1.png)

`                                                `Department of Electrical and Computer Engineering

## Course Title : Digital Signal Processing Sesional Course Code: ECE 4124

Submission Date : 14 May  , 2023

### Submitted To: 

Hafsa Binte Kibria Lecturer,

  Dept of ECE

RUET

### Submitted By: 

Tamim Hasan

Roll : 1810044

 Dept of ECE, RUET 
 
 Session : 2018 -19



Experiment No 3 

## Experiment name :  Perform auto correlation and cross correlation in MATLAB.

Theory :

Auto Correlation :

In general, correlation describes the mutual relationship which exists between two or more things. The

same definition holds good even in the case of signals. That is, correlation between signals indicates the measure up to which the given signal resembles another signal.In other words, if we want to know how much similarity exists between the signals 1 and 2, then we need to find out the correlation of Signal 1 with respect to Signal 2 or vice versa.

Depending on whether the signals considered for correlation are same or different, we have two kinds of correlation: autocorrelation and cross-correlation.


Next, the autocorrelation of any given signal can also be computed by resorting to graphical technique. The procedure involves sliding the time-shifted version of the given signal upon itself while computing the samples at every interval. That is, if the given signal is digital, then we shift the given signal by one sample every time and overlap it with the original signal. While doing so, for every shift and overlap, we perform multiply and add.  This is a kind of correlation, in which the signal in-hand is correlated with another signal so as to know how much resemblance exists between them.

Similarly, the cross-correlation of the discrete time signals x [n] and y [n] is expressed as

Next, just as is the case with autocorrelation, cross-correlation of any two given signals can be found via graphical techniques. Here, one signal is slid upon the other while computing the samples at every interval. That is, in the case of digital signals, one signal is shifted by one sample to the right each time, at which point the sum of the product of the overlapping samples is computed.



## Code :
~~~
clc

clear all

x=input('Enter the value of x'); n=length(x);

m=2\*n-1;

rxx=zeros(1,m);

for i=1:m rxx(i)=dot(x(n-i+1:n),x(1:i).'); rxx(m-i+1)=rxx(i)'

end

subplot(3,1,1)

stem(x)

title('input')

subplot(3,1,2)

stem(rxx)

title('corelated value using raw') subplot(3,1,3)

autocorr(x)

~~~

Output :

![](images/pic2.png)

## Discussion:

First, we used the user's two signals as input. The auto correlation is then completed using the raw logic. Then, using Matlab, we plotted this. In order to confirm our conclusion, we then plotted these two signals using the built-in function autocorr(x). Unfortunately, we were unable to match this2 outputs.

## Conclusion:

I had a minor issue with the custom code implementation at the time of the experiment. But I was able to resolve this issue with the aid of the internet.


