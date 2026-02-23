source("scripts/minimalistic_models/mean-r/train.R")
source("scripts/minimalistic_models/mean-r/predict.R")

train_chap("scripts/minimalistic_models/mean-r/training_data.csv", 
           "scripts/minimalistic_models/mean-r/model")

predict_chap("scripts/minimalistic_models/mean-r/model", 
             "scripts/minimalistic_models/mean-r/historic_data.csv", 
             "scripts/minimalistic_models/mean-r/future_data.csv", 
             "scripts/minimalistic_models/mean-r/predictions.csv")
