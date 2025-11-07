### Modelo-de-prediccion-accidente-cerebro-vascular-

# Predicción de Ictus (Stroke) - ALC 2025-11-06

## Descripción
Este proyecto desarrolla un modelo de regresión logística para predecir la probabilidad de sufrir un ictus, utilizando un dataset público de salud.
El objetivo es identificar las variables más influyentes y evaluar la capacidad predictiva del modelo.

El proyecto incluye la preparación de datos, balanceo de clases, entrenamiento del modelo, evaluación y visualización de la curva ROC.
Además, se incluye un informe técnico en formato R Markdown, que documenta todo el proceso analítico y permite reproducir el análisis completo paso a paso.

---

## Contenido del repositorio
- `healthcare-dataset-stroke-data.csv` : Dataset original utilizado.
- `preparar_datos.R` : Script de limpieza y preparación de datos.
- `entrenar_modelo.R` : Script de entrenamiento del modelo.
- `evaluar_modelo.R` : Script de evaluación del modelo y generación de métricas.
- `Predicciones_courseraALC2025-11-06.Rmd` : R Markdown con todo el análisis paso a paso.
- `Predicciones_courseraALC2025-11-06.pdf` : Informe final en PDF generado desde el R Markdown.
- `curva_ROC.png` : Gráfico de la curva ROC para evaluar la capacidad predictiva del modelo.
- `Predicciones_courseraALC2025-11-06.Rmd`: R Markdown con el análisis completo, incluyendo código, resultados y explicaciones.
---

## Librerías utilizadas
- `tidyverse` : Manipulación de datos.
- `caret` : Entrenamiento de modelos y métricas.
- `pROC` : Cálculo y visualización de la curva ROC.
- `randomForest` : Modelo de ensamble (opcional).
- `corrplot` : Visualización de correlaciones.
- `ROSE` : Balanceo de clases (sobremuestreo y submuestreo).

---

## Flujo del proyecto
1. **Carga y exploración de datos**: inspección inicial del dataset.
2. **Limpieza de datos**: tratamiento de valores faltantes y conversión de tipos.
3. **Preparación de datos**: codificación de variables categóricas y eliminación de columnas innecesarias.
4. **División del dataset**: conjunto de entrenamiento (70%) y prueba (30%).
5. **Balanceo de clases**: aplicación de sobremuestreo para equilibrar la variable respuesta.
6. **Entrenamiento del modelo**: regresión logística utilizando las variables predictoras.
7. **Evaluación del modelo**: matriz de confusión, métricas de precisión, sensibilidad y especificidad.
8. **Curva ROC y AUC**: visualización de la capacidad predictiva del modelo.
9. **Conclusiones**: resumen de las variables más influyentes y desempeño del modelo.

---

## Resultados principales
- **AUC**: 0.85, lo que indica buena capacidad predictiva.
- Variables más influyentes: `age`, `hypertension`, `avg_glucose_level`.

---

## Cómo ejecutar
1. Clonar el repositorio:  
   ```bash
   git clone https://github.com/almu81/Modelo-de-prediccion-accidente-cerebro-vascular-.git
