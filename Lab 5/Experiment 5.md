 

![](images/pic3.png)

# Department of Electrical & Computer Engineering                                 
  

**Course No:** ECE 4124  

**Course Title:** Digital Signal Processing Sessional  

### Submitted To:

 Hafsa Binte Kibria  
    
Lecturer  

Dept. of ECE,  RUET    

### Submitted By: 

 **Name:** Tamim Hasan

**Roll:** 1810044   

**Experiment Date:** 21.05.2023  

**Experiment No:** 05  

## Name of the Experiment:

1. Write a code for calculating z-transform of a signal considering left and right sided by using MATLAB.   
1. Write a code for calculating z-transform for a non-causal signal using MATLAB.   

**Theory:**  

The Z-transform serves as a mathematical tool for converting discrete-time difference equations into algebraic equations in the Z-domain. It is applicable when an infinite series converges, indicating that the series of values adds up to a finite result. 

In the context of systems, causality pertains to whether a system's output relies on future input values or solely on present and past input values. A causal system produces output that depends only on the input's current and previous values, as seen in the example y(n) = x(n). 

In contrast, a non-causal system is one where the output depends on future input values. An illustration of this is the equation y(n-1) = x(n), where the output at a certain point is determined by the input value in the subsequent time step. 

**Code:**  

# Code for z-transform of a signal considering left and right sided: 
~~~

clc; clear all; close all; 

x = [1 5 3 7 3 8 5]; l = length(x); 

y = sym('z'); 

zt\_l = 0; 

zt\_r = 0; 

for i = 1:l 

`    `zt\_l = zt\_l + x(i) \* y^(-i); end 

for i = 1:l 

`    `zt\_r = zt\_r + x(i) \* y^(i); end 

disp('Left = '); disp(zt\_l); 

disp('Right = '); disp(zt\_r); 

~~~

# Output for z-transform of a signal considering left and right sided:

![](images/pic1.png)

# Code for z-transform for non-causal signal: 

~~~
clc; clear all; close all; 

x = [1 5 3 7 3 8 5]; 

inp = input('Enter the index: '); l = length(x); 

y = sym('z'); 

zt\_l = 0; 

zt\_r = 0; 

for i = 1:l 

`    `if i >= inp 

`        `zt\_r = zt\_r + x(i) \* y^(inp - i); 

`    `else 

`        `zt\_l = zt\_l + x(i) \* y^((-1) \* (i - inp));     end 

end
~~~ 



# Output for z-transform for non-causal signal:

![](images/pic2.png)

# Discussion:

The MATLAB code was utilized to carry out Z-transform calculations, considering both left and right-sided scenarios, using a designated signal. The length of the signal was determined through the length function. Subsequently, a for loop was employed to iteratively process the signal's elements. Within this loop, a criterion was established for addressing the left-sided condition. Furthermore, another for loop was applied to address the right-sided condition. Following the conclusion of the loop, the resulting output was showcased. 

Similarly, in the context of implementing the Z-transform for a non-causal signal, a signal was chosen. The user was prompted to input an index number. The signal's length was computed using the length function. Subsequently, a for loop was employed to iterate over the signal's elements. Inside the loop, an if-else structure was employed. This structure featured conditions to account for both left and right-sided scenarios. Following this, the computed values from both the left and right-sided computations were summed. Ultimately, the Z-transform's outcome was exhibited by displaying the calculated result. 

# Conclusion 

The code execution was smooth without encountering any errors. This experiment provided us with insights into concepts such as the z-transform, causal signals, and non-causal signals. 
