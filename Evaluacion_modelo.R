# Curva ROC y cálculo del AUC
library(pROC)

# Obtenemos las probabilidades predichas para la clase 1
prob_pred <- predict(modelo_log, newdata = test_data, type = "response")

# Generamos la curva ROC
roc_obj <- roc(response = test_data$stroke, predictor = prob_pred)

# Calculamos el AUC
auc_valor <- auc(roc_obj)
cat("AUC:", auc_valor, "\n")

# Graficamos la curva ROC
plot(roc_obj, col = "blue", lwd = 2, main = paste("Curva ROC - AUC:", round(auc_valor, 3)))
abline(a = 0, b = 1, lty = 2, col = "gray")
