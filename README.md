## ML-and-MAP-estimators
Additive Gaussian noise channel 𝑌𝑖 = 𝐴 + 𝑍𝑖 for 𝑖 = 1,2,....,1000 where 𝑍𝑖's are i.i.d. zero mean Gaussian random variables with variance 𝜃, i.e. 𝑍𝑖~𝒩(0, 𝜃). 
The signal 𝐴, and the noises 𝑍𝑖 ’s are independent.

# ML_estimation.m include 

The maximum likelihood estimate of the variance 𝜃 using the first N samples where 𝑁 ∈ {10,100,1000}. 
For each case, calculate the absolute error between the estimated and the true value of 𝜃, i.e. |𝜃 − 𝜃𝑡𝑟𝑢𝑒| where 𝜃𝑡𝑟𝑢𝑒 = "0.25".

# MAP_estimation.m include 

Maximum-a-posteriori (MAP) estimator of 𝜃 using the following scale inverse chisquare prior.
MAP estimates of 𝜃 using the first N samples, where 𝑁 ∈ {10,100,1000}. 
Setting the prior parameters such that Tao = 0.25 and v = 100.

![map](https://user-images.githubusercontent.com/71339227/115144686-ac1ac800-a056-11eb-9df7-d109df0ff22b.png)
