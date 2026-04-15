# Arquitectura de Influencia en Ecosistemas de Consumo - Amazon Dataset

## Descripción del Proyecto

Este proyecto de **Modelización de Computación Predictiva** tiene como objetivo 
analizar las estructuras de relación entre productos y usuarios en Amazon. 
Se aplican técnicas de *reducción de dimensionalidad*, *teoría de grafos* y 
*clasificación* para extraer conocimiento sobre el comportamiento del mercado.

El análisis se divide en tres bloques fundamentales: 

1. **Análisis de Componentes Principales (PCA):** Identificación de dimensiones 
latentes (calidad vs. volumen) en el éxito de los productos. 
2. **Análisis de Redes Sociales (SNA):** Construcción y estudio de grafos de 
co-participación de usuarios para detectar comunidades y productos influyentes. 
3. **Clasificación y Predicción:** Modelado para predecir categorías o niveles 
de éxito basados en las métricas extraídas.

## Estructura del Repositorio

El proyecto se organiza de la siguiente manera:

-   `analisis/`: Contiene el documento principal `proyecto_final.qmd` y el 
renderizado final.
-   `data/`:
    -   `raw/`: Dataset original (Amazon Product Reviews CSV).
    -   `clean/`: Datos limpios y transformaciones intermedias (.rds).
-   `scripts/`: Scripts auxiliares de R para limpieza de datos y definiciones de 
funciones.
-   `figures/`: Gráficos generados (Scree Plots, visualizaciones de redes, etc.).
-   `logs_ia.md`: Bitácora obligatoria de interacción con IA y registro de prompts.

## Herramientas

-   **Lenguaje:** R
-   **Entorno:** RStudio con soporte para **Quarto**.
-   **Librerías principales:** `tidyverse`, `data.table`, `FactoMineR`, 
`igraph` / `tidygraph`, `ggplot2`.

## Reproducibilidad

Para replicar el análisis: 
1. Clonar este repositorio. 
2. Abrir el archivo `ProyectoAmazon.Rproj` en RStudio. 
3. Ejecutar el script `scripts/download_dataset.R` que descarga el .csv con el 
dataset inicial y lo situa en `data/raw`. 
4. Renderizar el archivo `analisis/proyecto_final.qmd`.

