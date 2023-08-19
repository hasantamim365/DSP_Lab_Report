                                              

 ## Course Title : Digital Signal Processing Sesional Course Code: ECE 4124

**Submission Date :** 13 May  , 2023

### Submitted To:

Hafsa Binte Kibria

 Lecturer,

  Dept of ECE,RUET

### Submitted By:

Tamim Hasan

Roll : 1810044 

Dept of ECE, RUET

Session : 2018 -19 


Experiment No 1

## Experiment name :

1) Plot unit step, unit ramp, unit impulse signal using MATLAB.
1) Plot discrete signal using MATLAB.
1) Plot two different discrete signal and show their addition and subtraction using MATLAB.  
1) Plot two different continuous signal using MATALB.  

## Theory:

A continuous signal or a continuous-time signal is a varying quantity whose domain, which is often time, is a continuum. That is, the function's domain is an uncountable set. The function itself need not to be continuous.

A discrete signal or discrete-time signal is a time series consisting of a sequence of quantities. Unlike a continuous-time signal, a discrete-time signal is not a function of a continuous argument; however, it may have been obtained by sampling from a continuous-time signal.

If a step signal has unity magnitude, then it is known as unit step signal or unit step function. It is denoted by u(t). The step signal is equivalent to applying a signal to a system whose magnitude

suddenly changes and remains constant forever after application.Unit step function is denoted by u(t).

`                                                                                  

An ideal impulse signal is a signal that is zero everywhere but at the origin (t = 0), it is infinitely high. Although, the area of the impulse is finite. The unit impulse signal is the most widely used standard

signal used in the analysis of signals and systems.

Impulse function is denoted by δ(t). and it is defined as δ(t) =     1 when  t = 0      and t=                                                                                                   0 when t *≠* 0

A ramp function or ramp signal is a type of standard signal which starts at  = 0 and increases linearly

with time. The unit ramp function has unit slop. ![](Aspose.Words.d7f26bc7-e995-4a28-bb3a-e9dbfa928872.003.png)

Ramp signal is denoted by r(t), and it is defined as r(t) =      t  when t *≥*  and 0                                                                                                 when t < 0

## Code :

1) Unit Step, Unit impulse , unit ramp

```
clc;

` `clear all;

` `close all;

` `t=-5:0.001:5;

` `step1= t>= 0;

` `step2= t==0; 

` `step3= (t>=0).\*t;

` `subplot(3,1,1);  plot(t,step1);

` `xlabel('Time');

` `ylabel('Amplitude');  title('Unit step');  ylim([-0.1, 1.1]);

` `subplot(3,1,2); plot(t,step2);

` `xlabel('Time');

` `ylabel('Amplitude'); title('Unit Impluse'); ylim([-0.1, 1.1]);

` `subplot(3,1,3);

` `plot(t,step3);

` `xlabel('Time');

` `ylabel('Amplitude'); title('Unit ramp');  ylim([-0.5, 5.5]);

```
Output :

![](images/pic1.png)
## 2) Descrete function:
```
clc;

` `clear all;  close all;

` `x=[2, 0, -2, 3, 1, 4, 6];  n=[1 2 4 5 6 8 3];

` `stem(n,x);

` `xlabel('n');

` `ylabel('x');

` `xlim([0, 9]);

ylim([-3, 7]);

```

Output :

![](images/pic4.png)



## 3\.  Addition and subtraction of 2 different signals:

```
1\. clc; 2. 

3. clear all;
3. close all;
3. t=-10:1:20;
3. step1= t>=0 & t<=10;
3. step2= t>=5 & t<=15;

8\. 

9. subplot(4,1,1);
9. stem(t,step1);
9. xlabel('Time');
9. ylabel('Amplitude'); 
9. title('Signal 1');

14\.

15\. subplot(4,1,2); 16.

17. stem(t,step2);
17. xlabel('Time');
17. ylabel('Amplitude');
17. title('Signal 2');

21\.

22. step3 = step1+step2
23. subplot(4,1,3);
23. stem(t,step3);
23. xlabel('Time');
23. ylabel('Amplitude'); 
23. title('Addition'); 28.
29. step4 = step1-step2
29. subplot(4,1,4);
29. stem(t,step4);
29. xlabel('Time');
29. ylabel('Amplitude');
29. title('Subtraction');
```
Output :


![](images/pic3.png)

## 4\. Plotting 2 signals :
```
clc

`    `clear all

`    `close all

`    `t = -10:0.01:20

`    `n1 = t>=0 & t<=7

`    `n2 = t>=1 & t<=6

`    `n3 = t>=2 & t<=5

`    `s1 = n1+n2+2\*n3;

`    `subplot(4,1,1);

`    `plot(t,s1);

`    `xlabel('time');

`    `ylabel('amplitude');     title('1st signal');     t1 = -3:0.01:3

`    `impulse = t1>=0  

`    `n11 = t1.\*impulse

`    `n22 = t1>=3 & t1<=5     s2 = n11+n22;

`    `subplot(4,1,2);

`    `plot(t1,s2);

`    `xlabel('time');

`    `ylabel('amplitude');     title('2nd signal');
```
Output :

![](images/pic2.png)

**Discussion:** For plotting different types of signal the code was implemented using MATLAB. For plotting unit step signal a range t was declared. Unit step signal will be t greater than zero which was declared. Then plot and subplot was used to show the unit step signal. For plotting ramp signal, at first unit step signal was declared. Then t.\*step was written for ramp signal. Using plot and subplot to show the ramp signal. To plot impulse signal, at first a range t was declared. Then t == 0 was written for impulse signal. This impulse signal was shown using plot and subplot. 

For plotting discrete signal, a range was declared in x and value was declared in y. “stem” function was used to show the discrete signal. 

For addition and subtraction of two signal, at first a range t was declared. Then the signal was plotted using plot and subplot according to the condition. Similarly, the second signal was plotted. For addition of two signal, the signals were added and for subtraction, the signals were subtracted. The final signal was shown using plot and subplot. 

In the last two signal, one signal was looking like a stair and the other signal had three part. One part was looking like a ramp signal, other part was straight line which was parallel to base and another part was decreasing ramp signal. To implement the first code a range t was declared. Then wrote the condition for different part of the signal and added that condition to get the final signal. Here plot and subplot was used to show the signal. In the second code, I plotted only the ramp signal part according to the condition. I tried it but I could not complete and I failed to show the whole signal.   

**Conclusion:** The code was executed successfully and no errors were found. Form this experiment, we had learned about different types of signal and how to plot them using MATALB. 
