# Curso R

Este contenido es un recurso abierto de introducción al lenguaje R.

Todo el contenido está en scripts `.R` comentados en español/inglés, listos para abrir en RStudio y ejecutar línea por línea.

## Autor

Ing. Mgr. Lesly Zerna

## Cómo usar este curso

1. Instala [R](https://cran.r-project.org/) y [RStudio](https://posit.co/download/rstudio-desktop/).
2. Clona este repositorio y ábrelo como proyecto en RStudio.
3. Abre cada script en el orden sugerido más abajo.
4. Ejecuta línea por línea con `Ctrl + Enter` (Windows/Linux) o `Cmd + Return` (Mac).
5. Lee los comentarios (`#`) antes de correr el código: explican el "por qué", no solo el "qué".

## Contenido

### Parte 1 — Fundamentos de R (para principiantes)

| Script | Tema |
|---|---|
| [00_welcome_to_R.R](00_welcome_to_R.R) | R y RStudio, variables, vectores, data frames, funciones, paquetes y un primer vistazo al flujo de trabajo de modelado predictivo |
| [01_data_wrangling.R](01_data_wrangling.R) | Manipulación de datos con `tidyverse`/`dplyr`: pipe `|>`, `filter`, `select`, `arrange`, `mutate`, `summarise`, joins, `tidyr` y `stringr` |
| [02_descriptive_stats.R](02_descriptive_stats.R) | Estadística descriptiva: tendencia central, dispersión, asimetría/curtosis, valores atípicos, correlación y `skimr` |
| [03_visualization_ggplot2.R](03_visualization_ggplot2.R) | Visualización con `ggplot2`: histogramas, boxplots, scatter plots, gráficos de barras, series de tiempo, faceting y gráficos de diagnóstico de modelos |
| [04_feature_engineering.R](04_feature_engineering.R) | Ingeniería de variables: imputación, codificación de categóricas, escalado, transformaciones, variables de fecha, binning, interacciones, VIF y el paquete `recipes` |

### Parte 2 — Modelos de Predicción Analítica (Diplomado en Machine Learning)

| Script | Tema |
|---|---|
| [10_linear_regression.R](10_linear_regression.R) | Regresión lineal simple y múltiple, supuestos de OLS, diagnóstico de residuos, observaciones influyentes, selección de modelos y `broom` |
| [11_regression_evaluation.R](11_regression_evaluation.R) | Evaluación de modelos de regresión: métricas (MAE, RMSE, R², MAPE), validación cruzada, comparación de modelos y curvas de aprendizaje |

## Requisitos

Cada script indica al inicio los paquetes que necesita. En general:

```r
install.packages(c(
  "tidyverse", "nycflights13", "moments", "corrplot", "skimr", "janitor",
  "scales", "patchwork", "ggcorrplot", "GGally", "ggridges", "viridis",
  "recipes", "lubridate", "fastDummies", "car",
  "broom", "lmtest", "ggfortify", "MASS", "yardstick", "tidymodels"
))
```

## Datasets utilizados

Todos los datasets son de acceso público e incluidos en los paquetes usados: `mtcars`, `ggplot2::diamonds`, `nycflights13::flights` y `MASS::Boston`. No se requieren archivos externos.
