
### Problem 1:
**Survival Analysis using Kaplan-Meier Estimator**

You are given the survival times (in weeks) and status (event occurrence or censored) of 19 patients. The data is presented below:

Survival times: 75, 166, 110, 144, 26, 118, 131, 14, 49, 153, 66, 36, 32, 11, 11, 15, 75, 85, 100
Status: 1 (event occurred) for the first 17 patients, and 0 (censored) for the last 2 patients.

Solution:
1. Create a data frame in R using the provided survival times and status.
2. Fit a Kaplan-Meier survival curve to the data.
3. Summarize the Kaplan-Meier fit and extract the survival probabilities.
4. Plot the Kaplan-Meier survival curve.
5. Interpret the survival probabilities and comment on the overall findings.

### Problem 3:
**Maximum Likelihood Estimation of Weibull**
Parameters under Type-1 Censoring
Given the following survival times (in weeks) for 16 observed failures and 4 censored observations, perform the maximum likelihood estimation (MLE) for the Weibull distribution parameters.

Survival times: c(70, 160, 105, 140, 20, 113, 121, 10, 44, 150, 60, 30, 30, 11, 11, 15)
1.	Define a log-likelihood function for the Weibull distribution under Type-1 censoring.
2.	Use the mle() function from the stats4 package to estimate the scale (a) and shape (b) parameters.
3.	Compute the variance-covariance matrix and extract the variances of the estimators.
4.	Calculate the 95% confidence intervals for the estimated parameters.
5.	Estimate the survival probability after 150 weeks.
6.	Estimate the median survival time using the Weibull distribution with the estimated parameters.



