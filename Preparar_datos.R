install.packages("tidyverse")
install.packages("caret")
install.packages("pROC")
install.packages("randomForest")
install.packages("corrplot")

library(tidyverse)
library(caret)
library(pROC)
library(randomForest)
library(corrplot)

install.packages("listenv")
library(caret)

# Cargar datos
ruta <- "/cloud/project/healthcare-dataset-stroke-data.csv"
data <- read.csv(ruta)

# Comprobar que se ha cargado bien
str(data)
head(data)
summary(data)

# Sustituir valores "N/A" en la columna bmi por NA
data$bmi[data$bmi == "N/A"] <- NA

# Convertir columna bmi a numérica
data$bmi <- as.numeric(data$bmi)

# Ver cuántos NA hay en total
colSums(is.na(data))

# Calcular la mediana de bmi (ignorando los NA)
mediana_bmi <- median(data$bmi, na.rm = TRUE)

# Sustituir los NA por la mediana
data$bmi[is.na(data$bmi)] <- mediana_bmi

# Comprobar que ya no quedan NA
colSums(is.na(data))


# Quitar columna 'id'
data <- data[, -which(names(data) == "id")]

# Convertir variables categóricas a factor
data$gender <- as.factor(data$gender)
data$ever_married <- as.factor(data$ever_married)
data$work_type <- as.factor(data$work_type)
data$Residence_type <- as.factor(data$Residence_type)
data$smoking_status <- as.factor(data$smoking_status)
data$stroke <- as.factor(data$stroke)  # variable respuesta

# Comprobar estructura
str(data)

