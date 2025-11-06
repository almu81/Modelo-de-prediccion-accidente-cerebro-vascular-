set.seed(123)  # para reproducibilidad
trainIndex <- createDataPartition(data$stroke, p = 0.8, list = FALSE)
train_data <- data[trainIndex, ]
test_data  <- data[-trainIndex, ]

# Comprobamos proporciones
prop.table(table(train_data$stroke))
prop.table(table(test_data$stroke))

# Balancear las clases (aumentar los casos minoritarios)
train_balanced <- upSample(x = train_data[, -which(names(train_data) == "stroke")],
                           y = train_data$stroke)

# Renombrar la variable objetivo
names(train_balanced)[ncol(train_balanced)] <- "stroke"

# Comprobamos las proporciones tras balanceo
prop.table(table(train_balanced$stroke))

# Entrenamiento del modelo de regresión logística
modelo_log <- glm(stroke ~ ., data = train_balanced, family = binomial)

# Resumen del modelo
summary(modelo_log)

# Predicciones sobre los datos de prueba
pred_prob <- predict(modelo_log, newdata = test_data, type = "response")

# Convertimos probabilidades en clases (umbral 0.5)
pred_class <- ifelse(pred_prob > 0.5, 1, 0)

# Matriz de confusión
conf_matrix <- confusionMatrix(as.factor(pred_class), as.factor(test_data$stroke), positive = "1")
conf_matrix



