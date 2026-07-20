# =============================================================================
#  BIENVENIDO A R  |  WELCOME TO R
#  Modelos de Predicción Analítica — DIPLOMADO EN MACHINE LEARNING Y CIENCIA DE DATOS
# =============================================================================
#
#  Autor   : Ing. Mgr. Lesly Zerna
#  Version : 1.0
#  Proposito: Guia introductoria a R, RStudio y su rol en la predicción
#             analítica. No se requiere experiencia previa en programación.
#
#  COMO USAR ESTE ARCHIVO
#  ------------------------
#  Lee cada sección con calma. Las líneas que empiezan con "#" son
#  COMENTARIOS — son notas de texto que R ignora al ejecutar el código.
#  Para correr una línea de código, coloca el cursor sobre ella y presiona:
#    Windows/Linux : Ctrl + Enter
#    Mac           : Cmd  + Return
# =============================================================================


# -----------------------------------------------------------------------------
# SECCIÓN 1 — ¿QUÉ ES R?
# -----------------------------------------------------------------------------
#
#  R es un lenguaje de programación GRATUITO y de código abierto, diseñado
#  específicamente para computación estadística y análisis de datos. Fue
#  creado en 1993 y hoy es una de las herramientas más usadas en ciencia de
#  datos, investigación y analítica de negocio.
#
#  ¿Por qué R para predicción analítica?
#   - Construido específicamente para estadística y modelado
#   - Miles de paquetes gratuitos para machine learning, visualización y
#     manipulación de datos
#   - Reproducible: todo tu análisis vive en un script que cualquiera puede
#     volver a ejecutar
#   - Usado por universidades, centros de investigación y empresas de todo
#     el mundo
#   - Comunidad grande y documentación extensa


# -----------------------------------------------------------------------------
# SECCIÓN 2 — RSTUDIO: TU ESPACIO DE TRABAJO
# -----------------------------------------------------------------------------
#
#  RStudio es el entorno de desarrollo (IDE) que usamos para trabajar con R
#  cómodamente. Piénsalo como el "Word" de R.
#
#  LOS CUATRO PANELES QUE VAS A VER:
#
#  ┌─────────────────────────┬─────────────────────────┐
#  │                         │                         │
#  │   EDITOR DE CÓDIGO      │   ENTORNO / HISTORIAL    │
#  │   (este archivo vive    │   (los objetos que       │
#  │    aquí)                │    creas aparecen aquí)  │
#  │                         │                         │
#  ├─────────────────────────┼─────────────────────────┤
#  │                         │                         │
#  │   CONSOLA               │   ARCHIVOS / GRÁFICOS /  │
#  │   (R ejecuta el código  │   PAQUETES / AYUDA       │
#  │    aquí, muestra        │   (visor y árbol de      │
#  │    resultados)          │    archivos)             │
#  │                         │                         │
#  └─────────────────────────┴─────────────────────────┘
#
# RECORRIDO RÁPIDO POR RSTUDIO:
# - Editor (arriba a la izquierda): donde escribes y guardas tus scripts (como este).
# - Consola (abajo a la izquierda): donde el código realmente se ejecuta.
# - Entorno (arriba a la derecha): tu espacio de trabajo. Muestra los datos que tienes cargados.
# - Archivos/Gráficos/Ayuda (abajo a la derecha): donde ves archivos, gráficos y documentación.
#
#  ATAJOS CLAVE PARA APRENDER DESDE HOY:
#   Ctrl/Cmd + Enter     → Ejecutar la línea o selección actual
#   Ctrl/Cmd + S         → Guardar tu script
#   Alt + -              → Insertar el operador de asignación  <-
#   Ctrl/Cmd + Shift + C → Comentar / descomentar líneas seleccionadas
#   Tab                  → Autocompletar (¡úsalo todo el tiempo!)
#   F1 sobre una función → Abrir su página de ayuda

# ------------------------------------------------------------------------------
# ENTENDIENDO TUS HERRAMIENTAS: R vs. RSTUDIO
# ------------------------------------------------------------------------------
# Piensa en R como el motor de un auto, y en RStudio como el tablero y el volante.
# - R: el lenguaje de programación que ejecuta los cálculos y modelos estadísticos.
# - RStudio: el entorno (IDE) que hace que usar R sea más fácil.
#

# -----------------------------------------------------------------------------
# SECCIÓN 3 — R COMO CALCULADORA (tus primeras líneas de código)
# -----------------------------------------------------------------------------

# R evalúa expresiones de inmediato. Corre estas líneas una por una:

2 + 3          # Suma
10 - 4         # Resta
6 * 7          # Multiplicación
15 / 4         # División
2 ^ 8          # Exponenciación  (2 elevado a 8)
sqrt(144)      # Raíz cuadrada
abs(-42)       # Valor absoluto
log(100)       # Logaritmo natural
log10(100)     # Logaritmo base 10
exp(1)         # Número de Euler  e^1 ≈ 2.718


# -----------------------------------------------------------------------------
# SECCIÓN 4 — VARIABLES: GUARDAR VALORES
# -----------------------------------------------------------------------------
#
#  Una variable es un contenedor con nombre para un valor.
#  R usa  <-  como operador de asignación (se prefiere sobre =).

edad         <- 28
altura       <- 1.75          # metros
nombre       <- "Ana García"  # texto (character) — siempre entre comillas
es_egresado  <- TRUE          # lógico: TRUE o FALSE

# Imprime una variable escribiendo su nombre y corriendo la línea:
edad
nombre

# O usa print() / cat() para más control:
print(altura)
cat("Nombre del estudiante:", nombre, "\n")   # \n = salto de línea

# Haz operaciones aritméticas con variables:
imc <- 70 / (altura ^ 2)
imc

# Verifica el tipo de una variable:
class(edad)
class(nombre)
class(es_egresado)


# -----------------------------------------------------------------------------
# SECCIÓN 5 — VECTORES: LA ESTRUCTURA DE DATOS FUNDAMENTAL DE R
# -----------------------------------------------------------------------------
#
#  Un vector es una lista ordenada de valores del MISMO tipo.
#  c() significa "combine" (combinar) — la función más usada en R.

# Vector numérico:
notas <- c(85, 90, 78, 92, 88, 76, 95)

# Vector de texto:
estudiantes <- c("Ana", "Bruno", "Carla", "Diego", "Elena", "Felipe", "Gloria")

# Vector lógico:
aprobo <- notas >= 80   # crea TRUE/FALSE para cada elemento

# Inspecciona tus vectores:
notas
length(notas)    # ¿cuántos elementos tiene?
aprobo

# Acceder a elementos — R usa indexación desde 1 (primer elemento = [1]):
notas[1]         # primera nota
notas[3]         # tercera nota
notas[c(1, 3)]   # primera y tercera nota
notas[2:5]       # elementos del 2 al 5

# Operaciones vectorizadas — R aplica funciones a TODOS los elementos a la vez:
notas + 2             # sumar 2 puntos a cada nota
notas * 0.1           # el 10 % de cada nota
round(notas / 10, 1)  # dividir todo, redondear a 1 decimal


# -----------------------------------------------------------------------------
# SECCIÓN 6 — ESTADÍSTICA BÁSICA SOBRE UN VECTOR
# -----------------------------------------------------------------------------

mean(notas)      # media aritmética
median(notas)    # mediana
sd(notas)        # desviación estándar
var(notas)       # varianza
min(notas)       # valor mínimo
max(notas)       # valor máximo
range(notas)     # mínimo y máximo juntos
sum(notas)       # suma total
summary(notas)   # resumen de cinco números + media — úsalo constantemente


# -----------------------------------------------------------------------------
# SECCIÓN 7 — DATA FRAMES: TU TABLA DE DATOS
# -----------------------------------------------------------------------------
#
#  Un data frame es el equivalente en R a una hoja de cálculo.
#  Cada COLUMNA es un vector (variable); cada FILA es una observación.
#  Esta es la estructura con la que trabajan los modelos predictivos.

datos_estudiantes <- data.frame(
  nombre  = estudiantes,
  nota    = notas,
  aprobo  = aprobo,
  stringsAsFactors = FALSE   # incluye siempre esta línea
)

# Explora el data frame:
datos_estudiantes          # imprime toda la tabla
nrow(datos_estudiantes)    # número de filas (observaciones)
ncol(datos_estudiantes)    # número de columnas (variables)
dim(datos_estudiantes)     # filas × columnas
str(datos_estudiantes)     # estructura: tipos + vista previa — úsalo siempre
head(datos_estudiantes)    # primeras 6 filas (útil para datasets grandes)
tail(datos_estudiantes, 3) # últimas 3 filas
summary(datos_estudiantes) # estadísticas de cada columna

# Accede a columnas usando el operador $:
datos_estudiantes$nota
datos_estudiantes$nombre

# Accede a filas y celdas usando [fila, columna]:
datos_estudiantes[1, ]          # toda la primera fila
datos_estudiantes[ , "nota"]    # toda la columna de notas
datos_estudiantes[2, "nombre"]  # celda: fila 2, columna "nombre"

# Filtra filas por una condición:
datos_estudiantes[datos_estudiantes$nota > 85, ]
datos_estudiantes[datos_estudiantes$aprobo == TRUE, ]

# Agrega una columna nueva:
datos_estudiantes$nota_letra <- ifelse(datos_estudiantes$nota >= 90, "A",
                                 ifelse(datos_estudiantes$nota >= 80, "B", "C"))
datos_estudiantes


# -----------------------------------------------------------------------------
# SECCIÓN 8 — FUNCIONES: LOS BLOQUES DE CONSTRUCCIÓN DE R
# -----------------------------------------------------------------------------
#
#  Una función toma entradas (argumentos), hace algo con ellas, y devuelve
#  un resultado.
#  Sintaxis:  nombre_funcion(argumento1, argumento2, ...)
#
#  También puedes ESCRIBIR tus propias funciones — clave para mantener el
#  código ordenado.

# Ejemplo: una función que convierte Celsius a Fahrenheit
celsius_a_fahrenheit <- function(celsius) {
  fahrenheit <- (celsius * 9/5) + 32
  return(fahrenheit)
}

celsius_a_fahrenheit(0)     # 32
celsius_a_fahrenheit(100)   # 212
celsius_a_fahrenheit(37)    # temperatura corporal ≈ 98.6

# Las funciones pueden tener varios argumentos y valores por defecto:
saludar_estudiante <- function(nombre, idioma = "ES") {
  if (idioma == "ES") {
    cat("Bienvenido/a,", nombre, "— ¡Mucho éxito en el curso!\n")
  } else {
    cat("Welcome,", nombre, "— Good luck in the course!\n")
  }
}

saludar_estudiante("Ana")
saludar_estudiante("Bruno", idioma = "EN")


# -----------------------------------------------------------------------------
# SECCIÓN 9 — PAQUETES: AMPLIANDO LAS CAPACIDADES DE R
# -----------------------------------------------------------------------------
#
#  El núcleo de R es potente, pero su verdadera fuerza está en los PAQUETES:
#  colecciones de funciones creadas por la comunidad.
#  CRAN (Comprehensive R Archive Network) aloja más de 20.000 paquetes, todos
#  gratuitos.
#
#  FLUJO DE TRABAJO:
#   1. Instalar una vez   →  install.packages("nombre_paquete")   # lo descarga
#   2. Cargar por sesión  →  library(nombre_paquete)              # lo activa
#
#  PAQUETES ESENCIALES PARA ESTE CURSO:
#
#  Manipulación de datos:
#   - tidyverse   : paraguas que incluye dplyr, ggplot2, tidyr, readr, purrr, tibble
#   - dplyr       : filtrar, seleccionar, transformar, resumir y ordenar data frames
#   - tidyr       : reorganizar datos (pivot_wider, pivot_longer)
#   - readr/readxl: importar archivos CSV y Excel
#
#  Visualización:
#   - ggplot2     : gráficos con "gramática de gráficos" (calidad de publicación)
#   - plotly      : gráficos interactivos
#   - corrplot    : matrices de correlación
#
#  Modelado predictivo:
#   - caret       : marco unificado para entrenar y evaluar modelos
#   - tidymodels  : flujo de modelado moderno, nativo de tidyverse
#   - glmnet      : regresión regularizada (Ridge, Lasso, Elastic Net)
#   - randomForest: modelos de ensamble basados en árboles
#   - xgboost     : gradient boosting (estándar en la industria)
#   - e1071       : Máquinas de Soporte Vectorial (SVM)
#   - rpart       : Árboles de Decisión
#   - nnet        : redes neuronales (básico)
#
#  Evaluación de modelos:
#   - yardstick   : métricas (RMSE, MAE, AUC, F1, …)
#   - pROC        : curvas ROC y AUC
#
#  Reportes:
#   - rmarkdown   : combina código R + texto en reportes HTML / PDF / Word
#   - knitr       : documentos dinámicos


# Instala tidyverse (ejecútalo UNA SOLA VEZ — quita el # para descomentar):
# install.packages("tidyverse")

# Cárgalo para esta sesión:
# library(tidyverse)


# -----------------------------------------------------------------------------
# SECCIÓN 10 — UN VISTAZO AL FLUJO DE TRABAJO DE MODELADO PREDICTIVO
# -----------------------------------------------------------------------------
#
#  Todo proyecto de predicción analítica sigue este flujo general.
#  Construiremos cada paso en detalle a lo largo del curso.
#
#
#   ┌─────────────┐     ┌──────────────┐     ┌───────────────┐
#   │ 1. RECOLEC- │────▶│  2. LIMPIAR  │────▶│  3. EXPLORAR  │
#   │    TAR DATOS│     │  Y PREPARAR  │     │   (EDA)       │
#   └─────────────┘     └──────────────┘     └───────┬───────┘
#                                                    │
#   ┌─────────────┐     ┌──────────────┐     ┌───────▼───────┐
#   │ 6. DESPLEGAR│◀────│  5. EVALUAR  │◀────│  4. CONSTRUIR │
#   │  Y MONITOR- │     │   Y AJUSTAR  │     │  Y ENTRENAR   │
#   │   EAR       │     │              │     │  EL MODELO    │
#   └─────────────┘     └──────────────┘     └───────────────┘
#
#
#  PASO 1 — Recolectar: importar CSV, Excel, bases de datos, APIs a R
#  PASO 2 — Preparar: manejar valores faltantes, codificar categorías, escalar variables
#  PASO 3 — EDA: visualizar distribuciones, correlaciones, valores atípicos
#  PASO 4 — Modelar: dividir train/test, ajustar el modelo, generar predicciones
#  PASO 5 — Evaluar: RMSE, MAE (regresión) | Accuracy, AUC (clasificación)
#  PASO 6 — Desplegar: exportar el modelo, construir una app Shiny, programar reportes

# Un ejemplo mínimo de principio a fin, usando el dataset incluido en R 'mtcars':
data(mtcars)          # carga el dataset: eficiencia de combustible de 32 autos
head(mtcars)           # vista previa
summary(mtcars$mpg)    # variable objetivo: millas por galón

# Visualiza la relación (un scatterplot simple):
plot(mtcars$wt, mtcars$mpg,
     main = "Peso del auto vs. Consumo (millas por galón)",
     xlab = "Peso (miles de libras)",
     ylab = "Millas por galón",
     col = "darkblue", pch = 16)

# Divide en conjunto de entrenamiento (80%) y de prueba (20%):
set.seed(42)                                     # asegura reproducibilidad
n              <- nrow(mtcars)
indices_train  <- sample(1:n, size = 0.8 * n)
train          <- mtcars[indices_train, ]
test           <- mtcars[-indices_train, ]

# Ajusta un modelo de regresión lineal simple:
modelo <- lm(mpg ~ wt + hp + cyl, data = train)  # mpg ~ peso + caballos de fuerza + cilindros
summary(modelo)                                   # coeficientes, R², p-valores

# Predice sobre el conjunto de prueba:
predicciones <- predict(modelo, newdata = test)
print(paste("Predicción de millas por galón para el primer auto de prueba:",
            round(predicciones[1], 2)))

# Evalúa — Raíz del Error Cuadrático Medio (RMSE):
rmse <- sqrt(mean((test$mpg - predicciones) ^ 2))
cat("RMSE en el conjunto de prueba:", round(rmse, 3), "mpg\n")

# Este es el esqueleto de todo problema de regresión que abordaremos.
# Clasificación, árboles, ensambles y regularización siguen la misma lógica.


# -----------------------------------------------------------------------------
# SECCIÓN 11 — CÓMO PEDIR AYUDA EN R
# -----------------------------------------------------------------------------

# 1. Páginas de ayuda incorporadas (el hábito más importante que puedes formar):
?mean           # abre la página de ayuda de mean()
?lm             # ayuda para modelos lineales
help("data.frame")

# 2. Encuentra funciones cuando no sabes el nombre:
??regression    # busca en todas las páginas de ayuda la palabra clave

# 3. Ve ejemplos desde la página de ayuda de una función:
example(lm)

# 4. Revisa los argumentos de una función:
args(lm)

# 5. Recursos en línea (guárdalos desde ya):
#    https://www.rdocumentation.org          — documentación buscable de todos los paquetes
#    https://r4ds.had.co.nz                  — R for Data Science (libro gratuito)
#    https://www.tidymodels.org              — documentación de Tidymodels
#    https://stackoverflow.com/questions/tagged/r  — comunidad de preguntas y respuestas
#    https://posit.co/cheatsheets/           — hojas de referencia de RStudio (¡imprímelas!)


# -----------------------------------------------------------------------------
# SECCIÓN 12 — BUENOS HÁBITOS DESDE EL DÍA UNO
# -----------------------------------------------------------------------------

# 1. SIEMPRE define un directorio de trabajo o usa Proyectos de RStudio (.Rproj)
#    para que las rutas de archivo funcionen igual para todo el equipo:
#    Session → Set Working Directory → To Source File Location
#    O bien:  setwd("/ruta/a/tu/proyecto")

# 2. FIJA UNA SEMILLA antes de cualquier operación aleatoria, para que los
#    resultados sean reproducibles:
set.seed(123)

# 3. COMENTA TU CÓDIGO — tu yo del futuro te lo va a agradecer:
#    quién lo escribió, por qué, cuándo, qué supuestos hiciste.

# 4. NOMBRA LAS COSAS CON CLARIDAD:
#    Bien : modelo_lineal_v1, datos_entrenamiento, promedio_notas
#    Mal  : x, mimodelo, df2, temp99

# 5. NUNCA escribas rutas de archivo con barras invertidas en Windows.
#    Usa barras normales: "C:/Usuarios/Ana/datos/estudiantes.csv"
#    O mejor aún: usa here::here("datos", "estudiantes.csv")

# 6. UN SCRIPT = UN PROPÓSITO.
#    01_importar.R → 02_limpiar.R → 03_eda.R → 04_modelar.R → 05_evaluar.R

# 7. REINICIA R SEGUIDO (Session → Restart R) para confirmar que tu script
#    corre desde cero, sin dependencias ocultas.


# =============================================================================
#  FIN DEL TUTORIAL DE BIENVENIDA
#  Ya estás listo/a para  01_data_wrangling.R
#  ¡Nos vemos en clase!
# =============================================================================
