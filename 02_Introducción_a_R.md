# Introducción a R

## 1. Instalación de R, paqueterías y recomendaciones globales

### Descarga de R

R es el motor; RStudio es el tablero donde lo manejas. Necesitas los dos, y en ese orden: **primero R, después RStudio**. Si instalas RStudio sin R, no va a encontrar el motor.

- R (versión más reciente): https://cran.itam.mx
                          : https://cran.r-project.org/mirrors.html
- RStudio Desktop (versión más reciente): https://posit.co/download/rstudio-desktop/

NOTA: De preferencia llegar a la sesión con R y RStudio instalados. 

### Misión de R

“La misión de RStudio es crear software gratuito y de código abierto para ciencia de datos, investigación científica y comunicación técnica. Hacemos esto para mejorar la producción y el consumo de conocimiento por parte de todos, independientemente de los medios económicos, y para facilitar la colaboración y la investigación reproducible, las cuales son críticas”

### Primeros consejos para iniciar

Al abrir RStudio la consola nos arroja el mensaje que se muestra a continuación en la imagen. En este mensaje nos indica la versión de R que tenemos instalada y la plataforma en la que estamos trabajando. 

Para citar R en alguna publicación basta con usar la función **citation()**. Y para conocer a todo el equipo detrás del desarrollo de R, puedes consultarlo con la función **contributors()**. 

R y RStudio están diseñados para que muchas personas puedan aprenderlo desde cero, con tan solo este primer mensaje todo usuario podría empezar a aprender R; para empezar a aprender R intenta usar la función en tu consola de **help.start()** con el cual se desplegará un menú en HTML con todos los manuales para aprender a usar R, también aparecerán los manuales de todas las paqueterías del repositorio de CRAN (The Comprehensive R archive Network) así como enlaces a noticias del mundo de R.

<p align="center">
  <img src="https://github.com/Martinez-Gregorio-Hector/AnalisisGenomico-EcologiaFESIztacala/blob/main/Unidad2/FigurasUnidad2/RStudio1.png? raw=true" alt="shell" width="600" height="400">
</p>

### La interfaz gráfica de RStudio

RStudio es un entorno de desarrollo integrado (IDE) para R. Su interfaz gráfica incluye 4 paneles principales:

1. **Editor de scripts** (arriba izquierda): donde escribes y guardas tu código (.R).
2. **Consola** (abajo izquierda): donde corre el código.
3. **Environment / History / Connections / Git** (arriba derecha): el Environment lista las variables que tienes guardadas. 
4. **Files / Plots / Packages / Help / Viewer** (abajo derecha): archivos, gráficas, paquetes instalados y ayuda.

<p align="center">
 <img width="1917" height="1140" alt="Captura de pantalla 2026-11-27 002000" src="https://github.com/user-attachments/assets/15e36a18-02f2-4ea9-8c43-d19fc64799e3" />
</p>

### Opciones globales

Las opciones globales (Global Options…) nos permitirán cambiar aspectos visuales de la organización de la interfaz gráfica. Para acceder a estas opciones debemos ir a **Tools > Global Options**.

### Actividad (1 min)

> Explora el menú de **Global Options**
> Entra a Tools > Global Options > Appearance,
> Sube el tamaño de letra a 14 y cierra. Todos deberíamos ver lo mismo.

<p align="center">
  <img width="1917" height="1135" alt="image" src="https://github.com/user-attachments/assets/6f0cea20-8070-43dc-8ad6-ff930337323f" />
</p>

### Archivos de RStudio

File > New File muestra todo lo que RStudio puede crear. El archivo más usado para desarrollar código en R es **R Script**. Aún así RStudio nos permite hacer reportes de nuestros código con **R Notebook** y **R Markdown**.

RStudio también hace apps web con **Shiny Web App**, generar APIs con **Plumber API**, editar código en **HTML**, **C**, **C++**, **Python**, **CSS**, **JavaScript**, **Shell**, entre otros. 

<p align="center">
  <img width="1916" height="1132" alt="image" src="https://github.com/user-attachments/assets/46429768-7574-47b9-94df-28a70a7f46fd" />
</p>

### Actividad (3 min)

> File > New File > R Script. Escribe estas tres líneas,
> guarda el archivo como `prueba.R` en la carpeta `script/` y corre cada línea
> con `Ctrl + Enter`:
> ```r
> # Mi primer script
> 2 + 2
> "Hola, R"
> ```

<p align="center">
  <img width="1012" height="1128" alt="Captura de pantalla 2026-11-27 120910" src="https://github.com/user-attachments/assets/ae0acf6f-5eb6-4eeb-848a-e5380809bcd3" />
</p>

> **Pregunta:** ¿Qué diferencia hay entre lo que ves en el editor y lo que ves en la consola?
> El editor es donde escribes y guardas; la consola es donde R responde, se ejecuta al instante y no se guarda al cerrar.

### Instalación de librerías

Un paquete es código que alguien más ya escribió.
La mayoría vive en CRAN (Red Integral de Archivos de R), el repositorio oficial de R.
**Instalar NO es lo mismo que cargar.**
Para instalar un paquete desde CRAN, utilizamos la función **install.packages()**:

- `install.packages("readr")` — se hace **una sola vez** en la vida de tu computadora. Es como comprar el libro.
- `library(readr)` — se hace **cada vez** que abres RStudio. Es como abrir el libro para leerlo.

```r
install.packages("readr")          # una vez
library(readr)                     # cada sesión
```

Este comando instala el paquete **readr**, que permite leer archivos CSV y otros formatos de archivo planos. Asegúrese de escribir el nombre del paquete entre comillas.

```
install.packages("readr", dependencies=TRUE)
```

También puede instalar varios paquetes a la vez pasando un vector de caracteres **(c())**:

```
install.packages(c("readr", "ggplot2", "tidyr"))
```

**NOTA:** Al instalar, R imprime mucho texto (descarga, dependencias, "DONE"). No es un error. Y ggplot2 puede tardar 2-3 minutos: no cierres RStudio.

### Actividad (5 min)

> Corre esto en tu script y observa cada paso.

> ``` r
> install.packages("MASS", dependencies=TRUE)
> library(MASS)
> data(cats)
> View(cats)
> table(cats$Sex)
> str (cats)
> ```

¿Qué hace cada línea?:

1. Instala el paquete (una vez).
<p align="center">
  <img width="1901" height="1126" alt="Captura de pantalla 2026-11-27 124804" src="https://github.com/user-attachments/assets/651b172d-1e28-4299-9adf-171abf53d52c" />
</p>

2. Lo carga en esta sesión.
<p align="center">
  <img width="1916" height="1132" alt="Captura de pantalla 2026-11-27 125320" src="https://github.com/user-attachments/assets/c070981a-e6c1-4903-807f-ecc73570ba56" />
</p>

3. Carga el dataset `cats`: peso corporal y del corazón de 144 gatos.

4. Lo abre como hoja de cálculo.
   Ojo: `View()` abre la pestaña arriba a la izquierda, donde estaba tu script. No se perdió, está en otra pestaña.

<p align="center">
  <img width="1917" height="1131" alt="Captura de pantalla 2026-11-27 125607" src="https://github.com/user-attachments/assets/c3884cee-4672-455b-a0bd-8ebfabd73485" />
</p>

5. Cuenta cuántos gatos hay de cada sexo. El `$` significa "la columna `Sex` del objeto `cats`".

<p align="center">
  <img width="1912" height="1140" alt="Captura de pantalla 2026-11-26 171602" src="https://github.com/user-attachments/assets/54a10a7e-aab1-4309-97a1-2f036ce007e5" />
</p>

6. `str()` te dice qué tipo de objeto es y qué columnas tiene.

<p align="center">
  <img width="1912" height="1135" alt="Captura de pantalla 2026-11-27 184322" src="https://github.com/user-attachments/assets/6f59d8b2-d29a-4068-96c9-80dfbdc46292" />
</p>

> **Preguntas:**
> ¿Qué sucede al ejecutar data(cats) y View(cats)?
> ¿Cuántas filas y columnas tiene `cats`?
> ¿Qué tipo de objeto es?

### Actividad (5 min)

> Hagamos una gráfica.

> ``` r 
> install.packages("ggplot2", dependencies=TRUE)
> library(ggplot2)
> ggplot(cats, aes(x = Sex)) + 
>    geom_bar(fill = "orange", color = "black") + theme_classic() 
> ```

<p align="center">
  <img width="1907" height="1131" alt="image" src="https://github.com/user-attachments/assets/9e5dbcf0-d7a7-42d4-86d3-5bea3d37f391" />
</p>

Si quisiéramos que cada barra tenga un color distinto:

> ``` r 
> install.packages("ggplot2", dependencies=TRUE)
> library(ggplot2)
> ggplot(cats, aes(x = Sex, fill = Sex)) + 
>    geom_bar(color = "black") +
>    scale_fill_manual (values = c("orange", "blue")) +
>    theme_classic() 
> ```
<p align="center">
  <img width="1916" height="1132" alt="image" src="https://github.com/user-attachments/assets/130b3c33-2976-4bee-9fcf-4a5c6da0bc3f" />
</p>

### Actividad (2 min)

> 1. Session > Restart R.
> 2. Corre solo `data(cats)`. **¿Qué pasó?** R no encuentra `cats`.
> 3. Ahora corre `library(MASS)` y vuelve a correr `data(cats)`. **¿Por qué ahora sí funciona?**

<p align="center">
  <img width="1007" height="1135" alt="Captura de pantalla 2026-11-27 191726" src="https://github.com/user-attachments/assets/ac6a0579-116d-434f-87ec-99870038bfc9" />
</p>

### Installing R Packages from GitHub


Algunos paquetes de R no están en CRAN, pero sí están disponibles en GitHub. Estos paquetes suelen estar en desarrollo o ofrecen funciones que aún no están disponibles en CRAN.

Para instalar un paquete desde GitHub, use el paquete **{remotes}**:

> ``` r
> install.packages("remotes")
> remotes::install_github("r-lib/here")
> library(here)
> ```

### Instalación de paquetes R desde un archivo local

Si has descargado un paquete a tu ordenador, puedes instalarlo así:

> ``` r
> install.packages(/Users/YourName/Downloads/abc_2.1.zip", repos = NULL, type = "source")
> ```

En Mac o Linux la ruta se ve distinta (/Users/tu_nombre/...). Lo importante es que la ruta vaya entre comillas y que repos = NULL le diga a R que no busque en internet.

### Instalación de paquetes desde Bioconductor

Bioconductor es un repositorio especializado en análisis de datos biológicos: genómica, transcriptómica, secuenciación.

Ejemplo de instalación de [MutationalPattern](https://www.bioconductor.org/packages/release/bioc/html/MutationalPatterns.html)

> ``` r
> if (!require("BiocManager", quietly = TRUE))
>    install.packages("BiocManager")
> BiocManager::install("MutationalPatterns")
> ```

**NOTA:** Los paquetes de Bioconductor tardan mucho más que los de CRAN (a veces 10 minutos o más). **NO** instalar en vivo durante la clase.

### Flujos de trabajo con proyectos de RStudio

Un proyecto de RStudio es una carpeta con un archivo `.Rproj` adentro. Al ejecutarlo hará 3 cosas:

1. Se abre RStudio en una sesión nueva.
2. La carpeta del proyecto se vuelve tu **directorio de trabajo**.
3. Todos los archivos se leen y guardan relativos a esa carpeta.

**¿Para qué sirve?** Para que tus rutas funcionen en cualquier computadora. Si usas rutas relativas (data/cats.csv) en vez de absolutas (C:/Users/YourUser/...), tu script funciona igual en tu laptop y en la de tu compañero, sin cambiar nada.

### ¿Cómo generamos un proyecto de RStudio?

Creando un proyecto en un directorio nuevo.

**File > New project > New Directory > New Project**.

1. Asigna un nombre a tu proyecto, sin espacios y sin caracteres especiales.
2. Selecciona la ubicación donde crearás el nuevo directorio.
3. Selecciona la opción **Open in New Session**.
4. Oprime **Create Project**.

### Actividad (5 min)

> 1. Crea un proyecto llamado `curso_r` con los pasos de arriba.

<p align="center">  
  <img width="771" height="866" alt="image" src="https://github.com/user-attachments/assets/eb5d60ca-b8c5-461e-857a-ad04efc614db" />
</p>

> 2. En el panel Files (abajo a la derecha), crea tres carpetas: **`script`**, **`data`** y **`plot`**.

<p align="center">  
  <img width="1910" height="1135" alt="Captura de pantalla 2026-11-27 194255" src="https://github.com/user-attachments/assets/901ee19d-5bd6-4c7c-bdc8-373cf355966d" />
</p>

> 3. Guarda tu prueba.R dentro de script/.

**Verificar:** Arriba de la consola debe decir curso_r. Si dice otra cosa, no estás dentro del proyecto.

### Nombre de archivos

Los nombres importan. Un buen nombre es:

- Amigables para computadoras.
- Amigables para humanos.
- Se ordenan convenientemente.

### Amigable para computadoras (no sólo R)

## Es fácil usar expresiones regulares y globbing

- Evitar espacios, puntuación, acentos, caracteres especiales, uso de mayúsculas y minúsculas.

### Es fácil operar sobre ellos

- Usa guiones bajos (_) para separar metadatos que puedas extraer después.
- Usa guiones medios (-) dentro de una palabra para que se lea fácil.

### Amigables para humanos

- Los nombres contienen información.
- Los nombres dan contexto.

###  Se ordenan convenientemente

- Incluye un componente numérico.
- Usa ceros para tener una longitud constante, un orden ventajoso:
  `muestra_01`, `muestra_02`, `...`, `muestra_10`.

- Usa el estándar **ISO 8601** para fechas: `aaa-mm-dd`.
  
### Ejemplo
<p align="center">  
  <img width="1212" height="337" alt="image" src="https://github.com/user-attachments/assets/fed7576b-03fd-4ee9-b3e6-1153ac98d646" />
</p>




## 2. Variables y tipos de datos

En R, todo lo que existe en tu sesión es un **objeto**: un número, una variable, un vector, una función, una base de datos, una gráfica. El panel **Environment** es la lista de los objetos que tienes vivos en este momento.

### Variables

Una variable es un espacio en memoria al que le damos un nombre para guardar un
valor que puede cambiar durante el programa.

**La forma estándar de asignar en R es `<-`.**

> ```r
> A <- 3
> B <- 125
> Y <- 8
> ```

Existen otras dos formas:
- = Funciona, pero se reserva para argumentos de funciones: mean(x, na.rm = TRUE).
- -> Existe, pero casi nadie la usa.

**Cuidado:** **= asigna, == compara.** 
> A = 3 guarda el 3 en A; A == 3 pregunta "¿A es igual a 3?". Si escribes if (A = 3), R te marca error.

**NOTA**: Todo lo que va después de `#` es para humanos, R lo ignora. Documentar el código lo hace entendible aún si lo revisas de nuevo tiempo después.

### Actividad (3 min)

> ```r
> # Asignación de variables
> A <- 3
> B <- 125 
> Y <- 8
> # Ver que se guardó en esas variables
> ```

<p align="center"> 
  <img width="1912" height="1132" alt="Captura de pantalla 2026-11-27 202251" src="https://github.com/user-attachments/assets/6b793bf2-79ee-48a2-8da9-a3fd5327c9b7" />
</p>

Si una operación no es asignada a una variable, la operación se realizará y su resultado sólo se desplegará en la pantalla, pero no quedará almacenada.

### Actividad (3 min)

> Corre el código.

> ```r
> # Ejemplo donde no se asigna una variable
> 3 + 5            # se muestra 8, pero no queda guardado
> # Ejemplo de asignación de variable
> var1 = 4 + 6     # ahora sí queda guardado
> var1
> ```

<p align="center"> 
  <img width="1916" height="1133" alt="Captura de pantalla 2026-11-27 203029" src="https://github.com/user-attachments/assets/2c3f2f15-fd2d-409b-b4d7-62f614318195" />
</p>

> **Pregunta:** Después de correr A + B, ¿Aparece una nueva variable en el Environment? ¿Por qué?

### Reglas para nombres de variables

Al momento de definir el nombre de una variable debemos tomar en consideración las siguientes reglas:

1. No deben comenzar con un número
2. No deben contener espacios en blanco
3. No deben contener símbolos especiales, excepto guión bajo ( _ ) o punto( . ).
4. **No uses nombres de funciones que ya existen en R.** Si llamas `data <- 5`, luego `data(cats)` va a fallar.

### Actividad (3 min)

> Algunos ejemplos de nombres válidos son:

> ```r
> Factor_de_cambio <- 2
> x1 <- 32.5
> gen_reprimido <- "catB"
> condicion <- "WT"; curso2020 <- "IntroR"; x <- 25
> ```

<p align="center"> 
  <img width="1915" height="1136" alt="image" src="https://github.com/user-attachments/assets/d4e7b512-710c-4ac6-bb14-e3d629898afb" />
</p>

**NOTAS:**
- Dejar un espacio a cada lado de `<-`. No es obligatorio, pero hace el código mucho más legible.
- Cada comando puede estar en una línea o varios comandos por línea separados por “;”.
- Si al escribir un comando damos enter y el comando queda incompleto, entonces, de manera automática R colocará un símbolo de más (+) indicando que el comando se encuentra incompleto y permitiendo completarlo. Mientras no se complete el comando, seguirá apareciendo el símbolo +, cada vez que demos enter.

<p align="center"> 
  <img width="1198" height="1132" alt="Captura de pantalla 2026-11-27 212425" src="https://github.com/user-attachments/assets/95eaaa32-da1f-487f-8c66-c98426316232" />
</p>

> **Pregunta:** ¿Puedes notar el detalle faltante? 

### R es sensible a mayúsculas y minúsculas en los nombres de objetos

Si bien es cierto que los nombres de variables pueden contener mayúsculas y minúsculas, es importante mencionar que, R **distingue entre mayúsculas y minúsculas**.

### Actividad (3 min) 

> **Pregunta:** ¿Puedes notar el error?

> ```r
> genoma <-"ecoli"
> Genoma <-"ecoli"
> GENOMA <-"Klebsiella"
> GeNoMa <-"Geobacter"
> ```

<p align="center"> 
  <img width="1342" height="1135" alt="Captura de pantalla 2026-11-27 213430" src="https://github.com/user-attachments/assets/f346c2f5-ea86-4320-906f-301b85a8a0e1" />
</p>

Son **cuatro variables distintas**. Por eso, si R te dice `object not found`, lo primero que debes revisar es si escribiste bien las mayúsculas.

<p align="center"> 
  <img width="1907" height="1132" alt="Captura de pantalla 2026-11-27 213643" src="https://github.com/user-attachments/assets/ede3e163-fbbf-4197-9fcd-62c7228c6f91" />
</p>

### Tipos de datos

En **R** (como en otros lenguajes de programación) hay diferentes tipos de datos; dentro de los más utilizados estan los **numéricos**, **lógicos** y **alfanuméricos** (o cadenas, *strings* en inglés).

### Actividad (3 min)

> Revisa lo siguiente

> ``` r
> Edad <- 18            # Valor numérico entero (int)
> LogFoldC <- 2.0075    # Valor numérico decimal (float)
> resultado <- TRUE     # Valor lógico, tiene dos estados (boolean)
> geneName = "CRP"      # Valor alfanumérico (character)
> ```

<p align="center"> 
  <img width="442" height="425" alt="image" src="https://github.com/user-attachments/assets/ac85097c-441c-40d1-b366-15ad213ed60d" />
</p>

<p align="center"> 
<img width="1161" height="1135" alt="Captura de pantalla 2026-11-27 215336" src="https://github.com/user-attachments/assets/33935064-d2fc-4f25-88dc-085cae7656c1" />
</p>

**NOTA**: Es importante resaltar que los valores de tipo caracter deben ser delimitados por comillas simples o dobles, de lo contrario R considera que es el nombre de un objeto.

Para saber de qué tipo es un objeto, usa `class()`:

### Actividad (3 min)
> Realiza la siguiente prueba

> ``` r 
> class(Edad)       # "numeric"
> class(resultado)  # "boolean"
> class(geneName)   # "character"
> ```

<p align="center">
  <img width="1220" height="1136" alt="Captura de pantalla 2026-11-27 215924" src="https://github.com/user-attachments/assets/8b42032b-55a8-4aad-aa0d-a7559b446489" />
</p>

## Valores perdidos

Los valores perdidos constituyen una clase particular de dato, que se codifica siempre como `NA` (Not Available), independientemente de que la variable sea numérica o alfanumérica. Estos valores sirven, por ejemplo, cuando se registran datos y no es posible obtener la información de algunas variables para determinados casos. Con carácter general, cualquier operación que involucre a un valor perdido dará como resultado también `NA`.

### Actividad (3 min)
> Realiza la siguiente prueba

> ``` r
> x <- c(1, 2, NA, 4)
>
> is.na(x)                 # TRUE FALSE TRUE FALSE
> mean(x)                  # NA
> mean(x, na.rm = TRUE)    # 2.333...
> ```

<p align="center">
  <img width="1092" height="1130" alt="image" src="https://github.com/user-attachments/assets/e86eebc1-5ce2-4ede-86e7-cb5d7ba3c672" />
</p>



## 3. Importar y exportar archivos

Hasta ahora escribimos los datos a mano. En realidad, los datos viven en archivos. Este bloque es el puente entre tu computadora y R.

> **Antes de empezar:** asegúrate de estar dentro de tu proyecto `curso_r`.
> Arriba de la consola debe decir `curso_r`. Si no, File > Open Project.

Vamos a dejar nuestra sesión en blanco, realiza lo siguiente:
1. Haz click dentro de la consola.
2. Menú **Session** > **Restart R**.
3. Mira el Environment: debe decir *Environment is empty*

### Rutas relativas vs rutas absolutas

**Ruta absoluta** — el camino completo desde la raíz del disco:

> C:/Users/Julieta/Downloads/curso_r/data/cats.csv


**Ruta relativa** — el camino desde donde estás parado (tu proyecto):

> data/cats.csv

**Regla de oro: usa siempre rutas relativas.**
- Si usas absolutas, tu script solo funciona en tu computadora. 
- Si usas relativas, funciona en la tuya y en la de tu compañero sin cambiar nada.

**NOTA:** en R, las rutas usan **barra normal** `/`, incluso en Windows. No uses `\` (barra invertida), porque R la lee como carácter de escape.

### Actividad (2 min)
> Haz el intento.

> ```r
> # Bien
> read.csv("data/cats.csv")
> #Mal (en Windows)
> read.csv("data\cats.csv")
> ```

<p align="center">
  <img width="1097" height="1137" alt="image" src="https://github.com/user-attachments/assets/abebdd73-bec7-47bc-bb8d-50bd28867a14" />
</p>

### ¿Cómo sé en dónde estoy?

> ```r
> getwd()      # ¿cuál es mi directorio de trabajo?
> list.files() # ¿qué archivos hay aquí?
> ```

### Importar y exportar archivos

**Importar:** Implica traer o incorporar un archivo externo hacia el programa o sistema en el que trabajas, generalmente a otro formato distinto al propio de la aplicación.

**Exportar:** Implica sacar o guardar datos desde tu programa hacia un archivo externo. Generalmente en formatos diferentes al nativo.

### Importar un CSV
Un archivo CSV (Comma Separated Values), es cualquier archivo de texto en el cual los caracteres están separados por comas, en el que los datos se organizan de manera tabular. Se compone de líneas de texto donde cada línea representa un registro (una fila) de la tabla y cada campo de datos se separa generalmente por comas. 

En formato de tabla vemos algo como esto:

<p align="center">
  <img width="867" height="367" alt="image" src="https://github.com/user-attachments/assets/46c291f7-eb8b-4d3c-80d0-bc33301eca0a" />
</p>

En formato SCV:

<p align="center">
  <img width="437" height="290" alt="image" src="https://github.com/user-attachments/assets/83a73473-d066-4f74-b7e1-c5487f4fba8a" />
</p>

La función base de R:

> cats <- read.csv("data/cats.csv")

¿Qué hace cada argumento?:

- `"data/cats.csv"`  #La ruta al archivo, entre comillas.
- `header = TRUE`    #La primera fila tiene los nombres de las columnas (es el valor por defecto).
- `sep = ","`        #El separador de columnas. Para CSV es coma; para TSV es "\t" (tabulador).

Versión completa:

> cats <- read.csv("data/cats.csv", header = TRUE, sep = ",")

### Importar un TSV

Un archivo TSV (Tab-Separated Values) es un formato de archivo de texto plano que representa valores delimitados por tabulaciones. La misma idea que un CSV, pero con pestañas en lugar de comas. 

<p align="center">
  <img width="505" height="277" alt="image" src="https://github.com/user-attachments/assets/4fbb2b51-e282-44c3-b865-fc0241c44682" />
</p>

La función base de R:

> datos <- read.delim("data/amrfinderplus.tsv")

¿Qué hace cada argumento?:

- `"read.delim()"`   #Lo mismo que `read.csv()`.
- `sep = "\t"`       #El separador de columnas. Para CSV es coma; para TSV es "\t" (tabulador).

### El problema de los acentos y comillas
Si tu archivo tiene acentos o eñes y sale con caracteres raros (`Ã±` en vez de `ñ`), el problema es la codificación. Prueba:

> datos <- read.csv("data/datos.csv", fileEncoding = "UTF-8")

<p align="center">
  <img width="642" height="325" alt="image" src="https://github.com/user-attachments/assets/06a3392e-9366-4a63-88df-6f7363c3f4ec" />
</p>

### Exportar un CSV

La función base de R:

> write.csv(cats, "data/cats_limpio.csv", row.names = FALSE)

¿Qué hace cada argumento?:

- `cats`                     #El objeto que quieres guardar.
- `"data/cats_limpio.csv"`   #Dónde guardarlo, **entre comillas**.
- `row.names = FALSE`        #**Siempre ponlo**. Si no, R agrega una columna extra con los números de fila.

### Exportar un TSV

La función base de R:

> write.table(cats, "data/cats_limpio.tsv",
>            sep = "\t", row.names = FALSE, quote = FALSE)

¿Qué hace cada argumento?:

- `sep = "\t"`       #Separa con tabuladores.
- `quote = FALSE`    #No pone comillas alrededor de cada valor.

  ### Actividad (8 min)
  
> 1. Descarga este archivo y guárdalo en la carpeta `data/` de tu proyecto: cats.csv

> 2. Corre:
   > ``` r
   > getwd()
   > list.files("data")
   > cats <- read.csv("data/cats.csv")
   > head(cats)
   > str(cats)

> 3. Epórtalo:
   > write.csv(cats, "data/cats_copia.csv", row.names = FALSE)

> 5. Revisa la carpeta `data/` en el panel Files. Debe aparecer `cats_copia.csv`.

> ````

>**Preguntas:** ¿cuántas filas y columnas tiene `cats`? ¿Qué diferencia hay entre `head()` y `str()`?












# minicurso_dic2020 > estructuras_de_datos > estructuras_de_datos.r
# minicurso_feb_2021 > ggplot2_RMB 
# https://rkabacoff.github.io/datavis/IntroGGPLOT.html cápitulo3-6
# Cosas que se tiene que ver, como guardar plots, importar y exportar archivos




## Operadores aritméticos, relacionales y lógicos

R, entre otras cosas puede realizar operaciones aritméticas básicas, así como operaciones relacionales y lógicas. En esta sección veremos los operadores aritméticos, relacionales y lógicos, así cómo las funciones matemáticas más usuales ya predefinidas en R listas para ser usadas.

### Operadores aritméticos

Los operadores aritméticos, más habituales en R se detallan en la siguiente tabla

| Operador       | Símbolo| Ejemplos  |
|----------------|:------:|----------:|
| Suma           | +      | 9 + 25    |
| Resta          | -      | 80 - 9.65 |
| Multiplicación | *      | 12.2 * 15 |
| División       | /      | 2 / 3     |
| Exponenciación | ** o ^ | 3 ** 4    |
| Módulo/Residuo | %%     | 2 %% 3    |


```{r}
# Suma
9 + 25 
# Resta
80 - 9.65
# Multiplicación
12.2 * 15
# División
2 / 3
# Exponenciación
3 ** 4
# Módulo
2 %% 3
```

**Ejercicio 2**

Predice el resultado, luego corrobóralo
```{r}
# 8 + 2
# 13 / 4
# 6+5*10-3
# 6+5*(10-3)
# 9(8-4)
# A + b
# A < -5; a <- 11; A + a 
# c <- “prueba”
# a + c
```

## Funciones matemáticas

Además de las operaciones aritméticas básicas, R cuenta con una serie de funciones matemáticas, asi como diversas funciones útiles en estadística. Algunas de estas funciones se detallan en la Tabla 2.

| Función        | Símbolo | Ejemplos     |
|----------------|:-------:|-------------:|
| Raíz cuadrada  | sqrt()  | sqrt(25)     |
| Coseno         | cos()   | cos(0)       |
| Logaritmo      | log()   | log(2)       |
| Redondeo       | round() | round(3.85)  |
| Valor absoluto | abs()   | abs(48 - 90) |

```{r}
# Raíz cuadrada
sqrt(25) 
# Coseno
cos(0)
# Logaritmo
log(2)
# Redondeo
round(3.85)
# Valor absoluto
abs(48 - 90)
```

## Operadores racionales

Los operadores relacionales se utilizan para comparar dos valores. El resultado de la comparación es de tipo lógico, es decir, toma un valor de Verdadero o Falso. Los operadores relacionales pueden aplicarse sobre todos los tipos de datos. En la Tabla 3 se muestran los operadores relacionales.

| Operador          | Símbolo | Ejemplos  |
|-------------------|:-------:|----------:|
| Igual             | ==      | 5 == 3    |
| Menor que         | <       | 5 < 3     |
| Menor o igual que | <=      | 5 <= 3    |
| Mayor que         | >       | 5 > 3     |
| Mayor o igual que | >=      | 5 >= 3    |
| Diferente         | 5 != 3  | 5 != 3    |

```{r}
# Igual
5 == 3
# Menor que 
5 < 3
# Menor o igual que
5 <= 3
# Mayor que
5 > 3
# Mayor o igual que
5 >= 3
# Diference
5 != 3
```

## Operadores lógicos

Los operadores lógicos son usados para evaluar relaciones lógicas, expresadas en términos de verdadero (TRUE) o falso (FALSE). Los operadores más utilizados se describen a continuación.

| Operador  | Símbolo | Ejemplos             |
|-----------|:-------:|---------------------:|
| Y         | &       | (5 > 3) & (8 == 25)  |
| O         | |       | (5 > 3) | (8 == 25)  |
| Negación  | !       | !(5 > 3)             |

```{r}
# Y
(5 > 3) & (8 == 25)
# O 
(5 > 3) | (8 == 25)
# Negación
!(5 > 3)
```


Las modalidades son: **( & )** cumplimiento en forma simultanea de las dos expresiones, para que el resultado sea verdadero, de lo contrario será falso, **( | )** cumplimiento alternativo, es decir por lo menos una de las expresiones debe ser verdadera, para que el resultado sea verdadero, de los contrario será falso. **( ! )** cumplimiento negado, si la expresión se evalua en verdadera al negarla el resultado será falso y viceversa.

## Vectores

Un vector en R, es esencialmente una lista ordenada de elementos, donde todos los elementos son del mismo tipo (enteros, caracteres, ...). La función más utilizada para generar un vector, es la función **c( )** (de combine)

```{r}
genoSiz<-c(3000000000,3000000000,135600000,97000000,12100000, 3500000,4639221,23000000,1674207132,560000000)
genoSiz
```

R tiene aritmética vectorial, por lo que los vectores pueden aparecer en operaciones aritmáticas, afectando o modificando con la operación a cada uno de los elementos del vector.

```{r}
genoSiz * 10 # Multiplica cada uno de los elementos del vector por 10
```

Hasta ahora sólo hemos visto manejo de valores numéricos, sin embargo, podemos tener otros tipos de valores. Por ejemplo, valores de tipo caracter, los cuales deben encerrarse entre comillas, con la finalidad de diferenciarlos de los nombres de objetos.


```{r}
org<-c("Homo Sapiens","Raton","Mosca de Fruta","Lombriz","Levadura", "Geobacter","E.coli K12","Pino","Pez Zebra","Rosa")
org
```

## La función names()

Es posible asignarle etiquetas (nombres) a un vector por medio de la función **names()**. Por ejemplo, al vector de valores numéricos que representa los tamaños de los genomas, le podemos poner como etiquetas los valores de vector org.

```{r}
genoSiz
org
names(genoSiz)<-org
genoSiz
```

## Manejo de los elementos del vector

Además de las funciones que operan sobre todos los elementos del vector, R permite manipular sólo una parte del vector. Para extraer partes de un vector, usamos corchetes cuadrados. 

```{r}
# Primer elemento del vector
genoSiz[1]
# Quinto elemento del vector
genoSiz[5]
```
Para modificar el nombre de uno de los elementos:

```{r}
# Modificando el nombre del elemento 1 del vector
names(genoSiz)[1]<-"Humano"
genoSiz
```

Para obtener un conjunto específico de elementos del vector, utilizamos dentro de los corchetes la función c( ) para indicar los índices de los elementos que queremos extraer. Por ejemplo:

```{r}
# Obtenemos sólo los elementos 1, 5 y 9 del vector
genoSiz[c(1,5,9)] 
```

Para obtener un subconjunto de elementos consecutivos del vector, utilizamos dentro de los paréntesis el operador dos puntos (:), por ejemplo:

```{r}
# Obtenemos los elementos del 3 al 8
genoSiz[3:8]
```

Finalmente, para excluir algunos elementos del vector, utilizamos el signo menos( - ), por ejemplo:
```{r}
# Muestra todos los elementos excepto el 1
genoSiz[(-1)]
# Muestra los elementos del vector excepto el 2, 4 y 7
genoSiz[-c(2,4,7)]
# Muestra los elementos del vector excepto el 2, 4 y 5
genoSiz[-c(3:5)]
```

Algunas funciones que se pueden aplicar a los vectores son:
```{r}
# Calcular la media
mean(genoSiz)
# El valor máximo del vector
max(genoSiz)
# El valor mímino del vector
min(genoSiz)
# La suma de los elementos del vector
sum(genoSiz)
# El tamaño del vector
length(genoSiz)
```

**Ejercicio 3**

1. Genere un vector con las mediciones de crecimiento en 12 hrs (en número de colonias), de por lo menos 5 bacterias diferentes.
a. Agregue los nombres cada bacteria usando la función names. 
b. Calcule el promedio, el valor mínimo y máximo de crecimiento de las bacterias
c. Agregue dos bacterias más, junto con sus datos de crecimiento.

## Matrices

Las matrices son objetos de dos dimensiones que contienen renglones y columnas. Al igual que en el caso de los vectores en las matrices sólo podemos almacenar datos del mismo tipo (por ejemplo numéricos o caracteres). La función más utilizada para definir una matriz es **matrix**. 

```{r}
datos<-c(2,1,2,1.5,2.2,1,7,5.5,6.8,6,5.9,6.3,17,15,20,14,16,19)
datos
```

Con los valores del objeto datos podemos generar una matriz de 6 renglones y 3 columnas con las siguientes
instrucciones:

```{r}
mouseWt4W <- matrix(datos, 6, 3) 
mouseWt4W
```

Como podemos observar al comando **matrix**, es necesario decirle cuántos filas y cuántas columnas tendrá la matriz. Además, por default la matriz se construye colocando los datos en columnas.
Si queremos que los datos se vayan colocando por renglones, tenemos que agregar el parámetro **byrow = TRUE**

```{r}
matrix(datos, 6, 3, byrow = TRUE)
```

**NOTA:** Si el número de elementos es menor que las dimensiones de la matriz, repetirá los elementos desde el principio para completar los que falten.

## Las funciones rownames y colnames

Como en el caso de los vectores, en las matrices podemos etiquetar los valores de las columnas y los renglones, para ello utilizamos las funciones **rownames()** y **colnames()**. Por ejemplo, supongamos que nuestros renglones corresponden a diferentes ratones (mouse) y las columnas a los pesos de ratones en diferentes semanas (week)

```{r}
rownames(mouseWt4W)<-c("mouse1","mouse2","mouse3","mouse4","mouse5","mouse6") 
colnames(mouseWt4W)<-c("week1","week3","week5")
mouseWt4W
```

## Manejo de matrices

La sintaxis para acceder a los elementos de una matriz es: **nombre_matriz[filas,columnas]**, donde filas y columnas corresponden a los índices de los renglones y columnas de los elementos que queremos consultar.

```{r}
# Para obtener el primer elemento de la matriz
mouseWt4W [1,1] 
# Para obtener el elemento de la fila 5 y columna 3
mouseWt4W [5,3]  
```

Se puede obtener también un subconjunto de elementos de la matriz usando **c( )** para combinar los índices de los renglones y columnas de los elementos que vamos a obtener.

```{r}
# Para obtener elementos no consecutivos
# Obtener todos los renglones de las columnas 1 y 3
mouseWt4W [ ,c(1,3)]
```

```{r}
# Para ontener elementos consecutivos
# Obtener los renglones de 2 a 5, en todas las columnas
mouseWt4W [2:5, ] 
```
Como podemos observar en los ejemplos anteriores, cuando los índices de los renglos o las columnas, no se especifican, se muestran todos los renglones o todas las columnas. Si dejamos vacíos tanto el índice de los renglones como el de las columnas obtendremos todos los elementos de la matriz.

```{r}
# No se indican los índices ni de los renglones, ni de las columnas
mouseWt4W [ , ]
```

Finalmente, para excluir algunos elementos de la matriz, utilizamos el signo menos( - ), como en el caso de los vectores. Por ejemplo:

```{r}
# Muestra la matriz, sin los renglones 1 y 3
mouseWt4W [-c(1,3), ] 
```
## Funciones rbind y cbind

Las funciones **rbind** y **cbind**, permiten agregar a la matriz filas o columnas, respectivamente. 

```{r}
week7<-c(20,23,23,20,19,21) 
mouseWt4W <- cbind(mouseWt4W, week7) 
mouseWt4W
```

## Otras funciones aplicables a matrices

Podemos utilizar algunas de las funciones que vimos para vectores (mean, max, entre otras), además de otras que no se pueden aplicar a vectores como es el caso de dim, nrow y ncol

```{r}
# Obtiene el número de renglones y columnas de la matriz
dim(mouseWt4W)
# Obtiene el número de filas
nrow(mouseWt4W)
# Obtiene el número de columnas
ncol(mouseWt4W)
# Promedio de los elementos de la matriz
mean(mouseWt4W)
# Suma sobre cada una de las filas
rowSums(mouseWt4W)
# Suma sobre cada una de las columnas
colSums(mouseWt4W)
```


```{r}
# Resumen estadístico por columna
summary(mouseWt4W)
```

**Ejercicios 4**

1. Genere una matriz de 3 renglones y 5 columnas, con los siguientes datos: 1,2,3,2,4,6,3,6,9,4,8,16,5,10,15
2. Ponga como nombres de fila: E.Coli,Clostridium,Mycobacterium
3. Ponga como nombres de columnas: Colonias1,Colonias2, . . . , Colonias5
4. Obtenga la información estadística de la media, primer cuartil, máximo y mínimo.
5. Agregar 1 renglon con datos para la bacteria Salmonella.

## Factores

Los factores son variables categóricas que pueden ser numéricas o de tipo carácter. Un ejemplo clásico de una variable categórica es el “genero”, ya que sólo toma dos valores: “femenino” o “masculino”. Para crear un objeto de tipo factor se utiliza la función **factor( )** sobre un vector. 

```{r}
Tejidos <- factor(c("higado","riñon","higado","riñon","higado")) 
Tejidos
```


```{r}
Experimentos <- factor(c("WT","Control","Control","WT","WT","Control")) 
Experimentos
```


Como podemos observar levels contiene las diferentes categorías del factor. A cada categoría R le asigna un número identificador por orden alfabético. Para ver las categorías de un objeto tipo factor se utiliza el comando levels().

```{r}
levels(Tejidos)
```

La función summary en factores. En el caso de los factores, la función summary cuantifica el número de elementos por categoría.

```{r}
summary(Tejidos)
```

## Dataframes

Los dataframe son objetos de dos dimensiones que contienen renglones y columnas. Este tipo de objeto es muy similar a las matrices, pero su princial diferencia es que los dataframe pueden almacenar diferentes tipos de datos. En general un dataframe se crea al hacer uso de la función read.table(), que se encarga de leer un archivo. Sin embargo, también se puede generar con la función data.frame().

```{r}
comGenSiz<-data.frame(
  org=c("Humano","Raton","Mosca de Fruta","Lombriz", "Levadura"),
  genSizBP=c(3000000000,3000000000,135600000,97000000,12100000),
  estGenCont=c(30000,30000,13061,19099,6034))

comGenSiz

```

Como podemos observar, la primera columna del dataframe contiene valores numéricos consecutivos, estos valores representan los nombres de cada uno de las filas (los cuales deben ser valores únicos, es decir, no puede haber nombres repetidos). Si al momento de generar el dataframe, los nombres de los renglones no son proporcionados, por default se asignaran valores numéricos. Para poner nombres al momento de generar el dataframe, agregamos el parámetro row.names.

```{r}
comGenSiz<-data.frame(
  org=c("Humano","Raton","Mosca de Fruta","Lombriz", "Levadura"),
  genSizBP=c(3000000000,3000000000,135600000,97000000,12100000),
  estGenCont=c(30000,30000,13061,19099,6034),
  row.names=c("genoma1","genoma2","genoma3","genoma4","genoma5"))
  
comGenSiz
```

## Manejo de dataframes

La sintaxis para acceder a los elementos de una dataframe es similar a la de una matriz: **nombre_dataframe[renglones,columnas]**

```{r}
# Obtiene el elemento de la columna 1 y renglón 1
comGenSiz[1,1] 

```


```{r}
# Obtiene el elemento de la fila 5 columna 1
comGenSiz[5,1] 

```


```{r}
# Obteniendo elementos no consecutivos
comGenSiz[,c(1,3)]
```

```{r}
# Obteniendo elementos consecutivos
comGenSiz[2:5,]
```


```{r}
# Excluyendo elementos
comGenSiz[-c(1,3),] 
```

Las columnas del dataframe pueden ser accedidas de manera individual de tres formas diferentes.

1) Utilizando el símbolo $ y el nombre de la columna que queremos extraer, si nosotros no le asignamos de manera explicita nombres a las columnas, R les asigna V1, V2, . . . , de manera automática. Pero para estar seguros cómo se llaman las columnas utilizamos el comando names(nombre_del_dataframe) y no aparecerá el nombre de cada columna. Consultemos los nombres de nuestro dataframe comGenSiz.

```{r}
names(comGenSiz)
```


```{r}
# Extrayendo la columna organism, por medio del operador $
comGenSiz$org 
```


2) Poniendo entre corchetes el nombre de la columna que queremos consultar, el nombre de la columna debe ir entre comillas.

```{r}
comGenSiz ["org"]
```

3) Poniendo entre cochetes el número o índice de la columna que queremos consultar.

```{r}
comGenSiz [,1]
```


## Algunas funciones aplicables a dataframe

Podemos utilizar algunas de las funciones que vimos para vectores y/o matrices (mean, max, dim, nrow y ncol, names, entre otras).

```{r}
# Calculando el máximo de los elementos

# max(comGenSiz) 
```


```{r}
# Suma de los elementos por renglon

# rowSums(comGenSiz) 
```


```{r}
# Suma de los elementos por columna

# colSums(comGenSiz) 
```


```{r}
# Obtiene el número de renglones y columnas de la matriz
dim(comGenSiz) 
```


```{r}
str(comGenSiz)
```

```{r}
# Muestra los primeros 5 renglones
head(comGenSiz) 
```


```{r}
# Muestra los últimos 5 renglones
tail(comGenSiz) 
```

Como podemos observar al querer realizar operaciones numéricas (max, min, rowSums, colSums) sobre todo el dataframe nos marca un error, debido a que una de sus columnas no es de tipo numérico, por lo tanto podemos seleccionar sólo las columnas numéricas donde se aplicacrán dichos operadores.

```{r}
 # Calculando el máximo de las columnas 2 y 3
max(comGenSiz[,2:3])
```


```{r}
# Suma de los elementos por renglon
rowSums(comGenSiz[,2:3]) 
```


```{r}
# Suma de los elementos por columna
colSums(comGenSiz[,2:3]) 
```


**Ejercicios 5**

1. Con los siguientes vectores, genere un dataframe, llamado planetas.
```{r}
name = c("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune") 

type = c("Terrestrial planet", "Terrestrial planet","Terrestrial planet",
"Terrestrial planet", "Gas giant","Gas giant", "Gas giant", "Gas giant")

diameter = c(0.382, 0.949, 1, 0.532, 11.209, 9.449, 4.007,3.883)

rotation = c(58.64, -243.02, 1, 1.03, 0.41, 0.43, -0.72, 0.67) 

rings = c(FALSE, FALSE, FALSE, FALSE, TRUE, TRUE, TRUE,TRUE)
```

2. Obenga el promedio de los valores de las columnas diameter y rotation
3. Aplique la función summary al objeto planetas y vea que sucede.

## Lista

Una lista es una colección ordenada de objetos, conocidos como componentes.

¿Cuáles son sus características?

* Los componentes pueden ser de diferente tamaño y clase.
* Las listas pueden contener vectores, matrices, cadenas de caracteres, data frames, funciones, etc.

Para crear una lista usaremos la función **list()**.

```{r}
frutas <- list(fruta = "manzana", unidades = 5,
               caracteristicas = c("roja","pequeña","dulce") )
frutas
```

Observemos que sus componentes se encuentran numerados, de manera que podemos referirnos a ellos por su posición en la lista.

¿Cómo extraemos el elemento "fruta"?

```{r}
frutas[1]
```


```{r}
frutas[[1]]
```


¿Cuál es la diferencia entre estas dos opciones?. Vamos a revisar de qué clase es cada una de ellas

```{r}
class(frutas[1])
class(frutas[[1]])
```


Ahora, vamos a explorar los elementos del componente "caracteristicas".

Si el componente tiene múltiples elementos, usamos una segunda numeración para referirnos al elemento deseado.

Para extraer la primera característica de la manzana (el color):

```{r}
frutas[[3]][1]
```


Otra forma de extraer los componentes de una lista es usando el símbolo $ y el nombre del componente que deseamos extraer.

```{r}
frutas$unidades
```


```{r}
frutas$caracteristicas
```


Esto es muy útil porque puede ser más fácil recordar el nombre del componente que su posición en la lista.

Ahora, ¿cómo extraemos los elementos del componente característica usando $?

```{r}
frutas$caracteristicas[1]
```


## Ejercicio 6

```{r}
# 1. Generemos una nueva lista:
jugadores <- list(nombre = c("Julie", "Juan", "Sofia"),
                   edad = c(22, 29, 34),
                  estatura = c(1.62, 1.75, 1.65))

# 2. ¿Cómo podemos conocer la estatura de Sofía?
# 3. ¿Cómo podemos obtener la edad de Julie y Juan al mismo tiempo?
```


## Lectura de archivos

Para lectura y escritura de archivos R utiliza por default el directorio de trabajo, a menos que le digamos de manera explicita la dirección donde se leerán o escribirán los archivos. Recordemos que si queremos saber en que directorio estamos, utilizamos el comando **getwd** y para cambiar de directorio, lo haremos con el comando **setwd**.

Con R podemos leer archivos de texto (ASCII) utilizando las siguientes funciones: 

* read.table (que tiene algunas variantes)
* scan

Se pueden leer otro tipo de formatos como son Excel, SPSS, entre otros, pero las funciones que se necesitan para la lectura de estos archivos no vienen dentro del paquete básico de R, se requiere la instalación de otros Paquetes de R.

## La función read.table

Por medio de la función read.table leemos archivos en formato tabular y se crea un dataframe para su almacenamiento. Los argumentos de la función y sus valores por default los podemos ver Consultando la ayuda.

```{r}
?read.table
```

para leer este archivo utilizaríamos la siguiente instrucción:

```{r}
# countTable<-read.table("/Data/Modulo08/conteos.txt")
```

Automáticamente se crea un dataframe (Dataframes), cuyas columnas son etiquetadas por default como V1, V2 . . . Como es un archivo con muchos renglones usaremos el comando head (Algunas funciones aplicables a dataframe) para visualizar los primeros renglones.

```{r}
# head(countTable)
```


## Parámetros más comunes de read.table


Aunque nuestro archivo contiene nombres de columnas y nombres de renglones, la función read.table no los identifica por default, para ello necesitamos definir algunos parámetros, los cuales podemos ver en la ayuda. En general los parámetros más utilizados son:

```{r}
# Para indicar que el primer renglón del archivo contienen los nombres de las columnas
# header = T       

# Para indicar qué tipo de separador tenemos, por lo general es tabulador
# sep              

# Para indicar en qué columna se encuentran los nombres de los renglones
# row.names     

# Para indicar el símbolo que se usará para poner comentarios.
# comment.char.     

# Para indicar si los valores de tipo caracter son considerados como factores o no.
# stringsAsFactors  
```



Volvamos a leer el archivo conteos.txt, considerando que el primer renglón corresponde a los nombres de las columnas y la primera columna corresponde a los nombres de renglones. Y verifiquemos que los nombres de las columnas y renglones son correctos.

```{r}
# Leyendo el archivo
# countTable<-read.table("/Data/Modulo08/conteos.txt", sep="\t",header = T,row.names = 1)
```

## Variantes de read.table

read.csv(file, header = TRUE, sep = ",", quote="\"", dec=".”, fill = TRUE, ...)
read.csv2(file, header = TRUE, sep = ";", quote="\"", dec=",”,fill = TRUE, ...)
read.delim(file, header = TRUE, sep = "\t", quote="\"", dec=".”, fill = TRUE, ...)
read.delim2(file, header = TRUE, sep = "\t", quote="\"", dec=",”,fill = TRUE, ...)


## Escritura de write.table

La función write.table nos permite guardar los datos de una dataframe en un archivo, con un formato de tabla. write.table tiene una serie de argumentos para indicar, cómo queremos que se almacenen los datos. Por ejemplo, si se incluyen los nombres de renglón, de columna, el tipo de separador, entre otros. Los argumentos de la función y sus valores por default los podemos consultar en la ayuda.


```{r}
?write.table
```


Usage:
write.table(x, file = "", append = FALSE,quote = TRUE, sep = " ",* eol = "\n", na = "NA", dec = ".", row.names = TRUE, col.names = TRUE, qmethod = c("escape", "double"), fileEncoding = "")

Los parámetros más utilizados son los que se encuentran en letras itálicas:

sep:        Para indicar el tipo de separador
row.names:  Para indicar si la tabla se guarda con nombres de renglones o no
col.names:  Para indicar se la tabla se guarda con nombres de columnas o no

Por ejemplo, utilizando el objeto countTable, que leímos anteriormente, eliminaremos los renglones de ceros y guardaremos los resultados en un archivo llamado conteosSinCeros.txt, utilizando la función write.table.

Primero verifiquemos cuántos renglones tiene el objeto countTable, posteriormente eliminemos los renglones con ceros y veamos con cuántos renglones nos quedamos. Finalmente, guardemos los resultados en el archivo.


```{r}
# write.table(countTableSinCeros,"conteosSinCeros.txt",quote=FALSE,sep="\t")
```


## La función write

La función write, se utiliza generalmente para almacenar objetos de tipo vector o matriz. Para efectos de este curso, no haremos uso de esta función, dado que trabajaremos en general con tablas y por lo tanto utilizaremos write.table. Sin embargo, se puede consultar la descripción de write en la ayuda.



