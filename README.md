# smooth
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/smooth)](https://cran.r-project.org/package=smooth)
[![Downloads](http://cranlogs.r-pkg.org/badges/smooth)](https://cran.r-project.org/package=smooth)
[![ko-fi](https://ivan.svetunkov.ru/ko-fi.png)](https://ko-fi.com/G2G51C4C4)

The package _smooth_ contains several smoothing (exponential and not) functions that are used in forecasting.

Here is the list of the included functions:

1. es - the ETS function. It can handle exogenous variables and has a handy "holdout" parameter. There are several cost function implemented, including trace forecast based ones. Model selection is done via branch and bound algorithm and there's a possibility to use AIC weights in order to produce combined forecasts. Finally, all the possible ETS functions are implemented here.
2. ces - Complex Exponential Smoothing. Function estimates CES and makes forecast. See documentation for details.
3. gum - Generalised Exponential Smoothing. Next step from CES. The paper on this is in the process.
4. sma - Simple Moving Average in state space form.
5. ves - Vector Exponential Smoothing. Vector form of the ETS model.
6. ssarima - SARIMA estimated in state space framework.
7. msarima - Multiple seasonal ARIMA, allows multiple seasonalities and works in a finite time.
8. auto.ces - selection between seasonal and non-seasonal CES models.
9. auto.ssarima - selection between different State-Space ARIMA models.
10. auto.msarima - selection between different multiple SARIMA models.
11. auto.gum - automatic selection of the most appropriate GUM model.
12. sim.es - simulation of data using ETS framework with a predefined (or random) smoothing parameters and initial values.
13. sim.ssarima - simulation of data using State-Space ARIMA framework with a predefined (or randomly generated) parameters and initial values.
14. sim.ces - simulation of data using CES with a predefined (or random) complex smoothing parameters and initial values.
15. sim.gum - simulation functions for GUM.
16. sim.sma - simulates data from SMA.
17. sim.ves - simulates data from VES.
18. oes - occurrence state space exponential smoothing model. This function models the part with data occurrences using one of the following methods: fixed, odds ratio, inverse odds ratio, direct or general. It can also select the most appropriate between the five.
19. viss - the vector counterpart of iss.
20. sowhat - returns the ultimate answer to any question.
21. smoothCombine - the function that combines forecasts from es(), ces(), gum(), ssarima() and sma() functions.
22. cma - Centred Moving Average. This is the function used for smoothing of time series, not for forecasting.
23. msdecompose - multiple seasonal decomposition based on centred moving averages.

Available methods:

1. AICc, BICc;
2. coef;
3. covar - covariance matrix of multiple steps ahead forecast errors;
4. errorType - the type of the error in the model: either additive or multiplicative;
5. fitted;
6. forecast;
7. actuals;
8. lags - lags of the model (mainly needed for ARIMA and GUM);
9. logLik;
10. modelType - type of the estimated model (mainly needed for ETS and CES);
11. nobs;
12. nparam - number of the estimated parameters in the model;
13. orders - orders of the components of the model (mainly needed for ARIMA, GUM and SMA);
14. plot;
15. pls - Prediction Likelihood Score for the model and the provided holdout;
16. pointLik - the vector of the individual likelihoods for each in-sample observation;
17. pAIC - point AIC, based on pointLik
18. print;
19. sigma;
20. simulate;
21. summary;

Future works:

1. nus - Non-uniform Smoothing. The estimation method used in order to update parameters of regression models.
2. sofa - Survival of the fittest algorithm applied to state space models.


## Installation

The stable version of the package is available on CRAN, so you can install it by running:
> install.packages("smooth")

A recent, development version, is available via github and can be installed using "devtools" in R. First, make sure that you have devtools:
> if (!require("devtools")){install.packages("devtools")}

and after that run:
> devtools::install_github("config-i1/smooth")

## Notes

The package depends on Rcpp and RcppArmadillo, which will be installed automatically.

However Mac OS users may need to install gfortran libraries in order to use Rcpp. Follow the link for the instructions: http://www.thecoatlessprofessor.com/programming/rcpp-rcpparmadillo-and-os-x-mavericks-lgfortran-and-lquadmath-error/

Sometimes after upgrade of smooth from previous versions some functions stop working. This is because C++ functions are occasionally stored in deeper unknown corners of R's mind. Restarting R usually solves the problem. If it  doesn't, completely remove smooth (uninstall + delete the folder "smooth" from R packages folder), restart R and reinstall smooth.
