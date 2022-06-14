# fitting model works 1

    Code
      mod
    Output
      Model Details:
      ==============
      
      H2OBinomialModel: glm
      Model ID:  GLM_model_R_1655153143681_263 
      GLM Model: summary
          family  link                                regularization
      1 binomial logit Elastic Net (alpha = 0.5, lambda = 0.003694 )
                                                                         lambda_search
      1 nlambda = 100, lambda.max = 0.006455, lambda.min = 0.003694, lambda.1se = -1.0
        number_of_predictors_total number_of_active_predictors number_of_iterations
      1                         17                           1                    7
                              training_frame
      1 bank_additional_full.hex_sid_97ea_24
      
      Coefficients: glm coefficients
                     names coefficients standardized_coefficients
      1          Intercept    -2.909415                 -3.040389
      2         job.admin.     0.000000                  0.000000
      3    job.blue-collar     0.000000                  0.000000
      4   job.entrepreneur     0.000000                  0.000000
      5      job.housemaid     0.000000                  0.000000
      6     job.management     0.000000                  0.000000
      7        job.retired     0.000000                  0.000000
      8  job.self-employed     0.000000                  0.000000
      9       job.services     0.000000                  0.000000
      10       job.student     0.000000                  0.000000
      11    job.technician     0.000000                  0.000000
      12    job.unemployed     0.000000                  0.000000
      13       job.unknown     0.000000                  0.000000
      14  marital.divorced     0.000000                  0.000000
      15   marital.married     0.000000                  0.000000
      16    marital.single     0.000000                  0.000000
      17   marital.unknown     0.000000                  0.000000
      18               age    -0.003279                 -0.030519
      
      H2OBinomialMetrics: glm
      ** Reported on training data. **
      
      MSE:  0.04356
      RMSE:  0.2087
      LogLoss:  0.1854
      Mean Per-Class Error:  0.4757
      AUC:  0.5237
      AUCPR:  0.04962
      Gini:  0.04747
      R^2:  0.0001584
      Residual Deviance:  7417
      AIC:  7421
      
      Confusion Matrix (vertical: actual; across: predicted) for F1-optimal threshold:
                no  yes    Error         Rate
      no     13597 5489 0.287593  =5489/19086
      yes      606  307 0.663746     =606/913
      Totals 14203 5796 0.304765  =6095/19999
      
      Maximum Metrics: Maximum metrics at their respective thresholds
                              metric threshold        value idx
      1                       max f1  0.046636     0.091519  14
      2                       max f2  0.042854     0.193023  41
      3                 max f0point5  0.046928     0.063977  12
      4                 max accuracy  0.048720     0.954298   0
      5                max precision  0.048116     0.069364   4
      6                   max recall  0.042854     1.000000  41
      7              max specificity  0.048720     0.999948   0
      8             max absolute_mcc  0.046636     0.022388  14
      9   max min_per_class_accuracy  0.045912     0.514775  19
      10 max mean_per_class_accuracy  0.046636     0.524331  14
      11                     max tns  0.048720 19085.000000   0
      12                     max fns  0.048720   913.000000   0
      13                     max fps  0.042720 19086.000000  42
      14                     max tps  0.042854   913.000000  41
      15                     max tnr  0.048720     0.999948   0
      16                     max fnr  0.048720     1.000000   0
      17                     max fpr  0.042720     1.000000  42
      18                     max tpr  0.042854     1.000000  41
      
      Gains/Lift Table: Extract with `h2o.gainsLift(<model>, <data>)` or `h2o.gainsLift(<model>, valid=<T/F>, xval=<T/F>)`
      
      

# fitting model works 2

    Code
      mod
    Output
      Model Details:
      ==============
      
      H2OBinomialModel: glm
      Model ID:  GLM_model_R_1655153143681_265 
      GLM Model: summary
          family  link                                regularization
      1 binomial logit Elastic Net (alpha = 0.5, lambda = 0.003694 )
                                                                         lambda_search
      1 nlambda = 100, lambda.max = 0.006455, lambda.min = 0.003694, lambda.1se = -1.0
        number_of_predictors_total number_of_active_predictors number_of_iterations
      1                         17                           1                    7
                              training_frame
      1 bank_additional_full.hex_sid_97ea_25
      
      Coefficients: glm coefficients
                     names coefficients standardized_coefficients
      1          Intercept    -2.909415                 -3.040389
      2         job.admin.     0.000000                  0.000000
      3    job.blue-collar     0.000000                  0.000000
      4   job.entrepreneur     0.000000                  0.000000
      5      job.housemaid     0.000000                  0.000000
      6     job.management     0.000000                  0.000000
      7        job.retired     0.000000                  0.000000
      8  job.self-employed     0.000000                  0.000000
      9       job.services     0.000000                  0.000000
      10       job.student     0.000000                  0.000000
      11    job.technician     0.000000                  0.000000
      12    job.unemployed     0.000000                  0.000000
      13       job.unknown     0.000000                  0.000000
      14  marital.divorced     0.000000                  0.000000
      15   marital.married     0.000000                  0.000000
      16    marital.single     0.000000                  0.000000
      17   marital.unknown     0.000000                  0.000000
      18               age    -0.003279                 -0.030519
      
      H2OBinomialMetrics: glm
      ** Reported on training data. **
      
      MSE:  0.04356
      RMSE:  0.2087
      LogLoss:  0.1854
      Mean Per-Class Error:  0.4757
      AUC:  0.5237
      AUCPR:  0.04962
      Gini:  0.04747
      R^2:  0.0001584
      Residual Deviance:  7417
      AIC:  7421
      
      Confusion Matrix (vertical: actual; across: predicted) for F1-optimal threshold:
                no  yes    Error         Rate
      no     13597 5489 0.287593  =5489/19086
      yes      606  307 0.663746     =606/913
      Totals 14203 5796 0.304765  =6095/19999
      
      Maximum Metrics: Maximum metrics at their respective thresholds
                              metric threshold        value idx
      1                       max f1  0.046636     0.091519  14
      2                       max f2  0.042854     0.193023  41
      3                 max f0point5  0.046928     0.063977  12
      4                 max accuracy  0.048720     0.954298   0
      5                max precision  0.048116     0.069364   4
      6                   max recall  0.042854     1.000000  41
      7              max specificity  0.048720     0.999948   0
      8             max absolute_mcc  0.046636     0.022388  14
      9   max min_per_class_accuracy  0.045912     0.514775  19
      10 max mean_per_class_accuracy  0.046636     0.524331  14
      11                     max tns  0.048720 19085.000000   0
      12                     max fns  0.048720   913.000000   0
      13                     max fps  0.042720 19086.000000  42
      14                     max tps  0.042854   913.000000  41
      15                     max tnr  0.048720     0.999948   0
      16                     max fnr  0.048720     1.000000   0
      17                     max fpr  0.042720     1.000000  42
      18                     max tpr  0.042854     1.000000  41
      
      Gains/Lift Table: Extract with `h2o.gainsLift(<model>, <data>)` or `h2o.gainsLift(<model>, valid=<T/F>, xval=<T/F>)`
      
      

