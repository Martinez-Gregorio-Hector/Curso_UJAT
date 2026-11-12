# Pipeline bioinformático para la identificación taxonómica de bacterias mediante QIIME 2
   1. Estructura de los archivos fastq y calidad de las lecturas de secuenciación
   2. Objeto de estudio - Cáncer colorrectal
   3. Descarga de archivos, análisis de calidad y ensamblado de lecturas
   4. Análisis con QIIME2
   5. PICRUSt
      
## 1. Estructura de los archivos fastq y calidad de las lecturas de secuenciación

### Archivos fasta o formato de Pearson
Antes de entender y analizar los archivos de la secuenciación masiva, vamos a revisar primero el formato **[fasta o Person](https://www.bioinformatics.nl/tools/crab_fasta.html)**

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/fasta.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Características del archivo fastq

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/Fastq1.png? raw=true" alt="shell" width="1000" height="600">
</p>

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/Fastq2.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Encabezado del archivo fastq

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/EncabezadoFastq.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Información de la calidad de las lecturas crudas

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/ASCII.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Nivel de calidad Phred 

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/Phred.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Diagrama de cajas y bigotes

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/BoxPlot.svg? raw=true" alt="shell" width="600" height="600">
</p>

### Revisión de resultado FastQC y multiQC

**[FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)**

* **[FastQC_bueno](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/good_sequence_short_fastqc.html)**
* **[FastQC_malo](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/bad_sequence_fastqc.html)**

**[MultiQC](https://github.com/MultiQC/MultiQC)**

* **[MultiQC](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/multiqc_report_despues.html)**


## 2. Objeto de estudio - Cáncer colorrectal

**Objetivo del estudio**: [Sukjung_Choi_2021](https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/blob/main/MaterialDeApoyo/PaperBioinformatica/Sukjung_Choi_2021.pdf) analizan el microbioma de 51 pacientes con cáncer colorrectal - muestra tumoral y tejido adyacente - usando la región V3-V4 del *gen 16S rRNA* para caracterizar y comparar la composición taxonómica de las comunidades bacterianas presentes en ambos tipos de tejido.


**Diversidad bacteriana de tejidos normales y tejido tumoral en pacientes con cáncer colorrectal**

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/blob/main/MaterialDeApoyo/FigurasRepositorio/12967_2021_3154_Fig1_HTML.webp? raw=true" alt="shell" width="1000" height="600">
</p>


**Composición bacteriana asociado al cáncer colorrectal**

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/blob/main/MaterialDeApoyo/FigurasRepositorio/12967_2021_3154_Fig2_HTML.webp? raw=true" alt="shell" width="1000" height="600">
</p>

**Vías funcionales predichas a partir de bacterias enriquecidas en tejido tumoral y en tejido normal**
<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/blob/main/MaterialDeApoyo/FigurasRepositorio/12967_2021_3154_Fig3_HTML.webp? raw=true" alt="shell" width="1000" height="600">
</p>

## 3. Descarga de archivos, análisis de calidad y ensamblado de lecturas

### Pipeline bioinformático

Antes de descargar los datos de secuenciación masiva e instalación de programas, describiremos brevemente los algoritmos y pipelines que se usarán para la identificación taxonómica de las bacterias presentes en los tumores colorrectales.


<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/AlgoritmoPipeline.png? raw=true" alt="shell" width="1000" height="600">
</p>


<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/AlgoritmoPipeline2.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Algoritmos que se usarán para el análisis del microbioma

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/PipelineBioinformatico.svg? raw=true" alt="shell" width="1000" height="600">
</p>

1. Descargar base de datos: **[SRA Toolkit](https://github.com/ncbi/sra-tools/wiki/02.-Installing-SRA-Toolkit)**
   
2. Evaluación de la calidad del llamado de bases: **[fastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)** y **[Multiqc](https://github.com/MultiQC/MultiQC)**

3. Ensamble de lecturas pareadas: **[PEAR](https://cme.h-its.org/exelixis/web/software/pear/doc.html)**

4. Identificación taxonómica: **[QIIME2](https://qiime2.org/)**

5. Análisis de vías funcionales: **[Picrust](https://picrust.github.io/picrust/install.html)**

### Descargar base de datos con SRA Toolkit

Antes de empezar a empezar a trabajar con QIIME2 vamos a descargar los archivos que usaremos en este curso. Revisa el artículo de [Sukjung_Choi_2021](https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/blob/main/MaterialDeApoyo/PaperBioinformatica/Sukjung_Choi_2021.pdf) y encontrarás antes de las referencias una sección que se llama **Availability of data and materials**. En esta sección puedes encontrar el número de acceso **PRJNA743150** para descargar las secuencias en la base de datos de [NCBI](https://www.ncbi.nlm.nih.gov/). La mayoría de los programas que vas a utilizar ya vienen instalados en el servidor del laboratorio nacional, si alguien quiere instalarlo en su computadora lo puede hacer siguiendo las instrucciones de como instalar [SRA Toolkit](https://github.com/ncbi/sra-tools/wiki/02.-Installing-SRA-Toolkit).


Para descargar los archivos fastq vamos a seguir este página [SRA](https://www.ncbi.nlm.nih.gov/sra/docs/sradownload/). 

El instructor te proporcionara la dirección IP del servidor y la contraseña para que puedas ingresar. Solamente está permitido ingresar al servidor durante el curso. Vas a trabajar en el siguiente directorio: **/home/lab13/Documents/Curso_UJAT**. 

Crear una carpeta con tu nombre, por ejemplo, HectorMartinez

**Primer paso**

Tenemos que generar un archivo con el nombre de **SraAccList.txt** usando el comando de **vim** o **nano**.

```
SRR15018640
SRR15018641
SRR15018642
```

**Segundo paso**

Una vez que termines de crear el archivo **SraAccList.txt** vamos a crear un bash scripting para descargar estas secuencias con el nombre de **download.sh**

```
#!/bin/bash

# Descargamos la secuencia en formato sra
prefetch --option-file SraAccList.txt

# Convertir sra en formato fastq
fasterq-dump --split-files SRR*

# Hacer un director
mkdir raw_data

# Mover los archivos fastq a raw_data
mv *fastq raw_data

# Eliminar los archivos SRR para liberar espacio en el servidor
rm -rf SRR*
```

Dale permiso a tu bash scripting usando 

```
chmod u+x download.sh
```

Ejecuta tu script con  

```
./download.sh 
```

Puedes ver el contenido de **raw_data** con el comando **ls -lh**

```
ls -lh raw_data/

## -rw-rw-r-- 1 lab13 lab13  94M Nov 10 21:18 SRR15018640_1.fastq
## -rw-rw-r-- 1 lab13 lab13  94M Nov 10 21:18 SRR15018640_2.fastq
## -rw-rw-r-- 1 lab13 lab13 108M Nov 10 21:18 SRR15018641_1.fastq
## -rw-rw-r-- 1 lab13 lab13 108M Nov 10 21:18 SRR15018641_2.fastq
## -rw-rw-r-- 1 lab13 lab13 114M Nov 10 21:18 SRR15018642_1.fastq
## -rw-rw-r-- 1 lab13 lab13 115M Nov 10 21:18 SRR15018642_2.fastq
```

### Evaluación de la calidad del llamado de bases: fastQC y Multiqc

Si no tienes descargados estos programas, puedes seguir esta liga para su descarga: [FastQC](https://github.com/s-andrews/FastQC/tree/master) y [MultiQC](https://github.com/MultiQC/MultiQC)

Vamos a crear un bash scripting para realizar la evaluación de la calidad del llamado de bases **Calidad1.sh**. Antes de correr los programas verificamos si están instalados en el servidor.

```
fastqc --help

##            FastQC - A high throughput sequence QC analysis tool

## SYNOPSIS

##	fastqc seqfile1 seqfile2 .. seqfileN

##    fastqc [-o output dir] [--(no)extract] [-f fastq|bam|sam] 
#"#           [-c contaminant file] seqfile1 .. seqfileN


multiqc --help
                                                                                              
## /// MultiQC 🔍 v1.35                                                                         
                                                                                              
## Usage: multiqc [OPTIONS] [ANALYSIS DIRECTORY]                                                
                                                                                              
## MultiQC aggregates results from bioinformatics analyses across many samples into a single    
## report.                          
```

Hacemos el bash scripting con **vim** o **nano** y hacerlo ejecutable

```
#!/bin/bash 
mkdir QC_AntesDelEnsamble

### Correr FastQC
fastqc raw_data/* -o QC_AntesDelEnsamble/

### Correr MultiQC
multiqc QC_AntesDelEnsamble/ -o QC_AntesDelEnsamble/
```

Descarga los archivos **multiqc_report.html** que esta en la carpeta de QC_AntesDelEnsamble usando línea de comandos o con mobaxterm

```
# Entrar a la carpeta de raw_data
cd QC_AntesDelEnsamble/

# Ver el directorio de trabajo
pwd
/home/lab13/Documents/Curso_UJAT/MAGH/QC_AntesDelEnsamble

# Abrir una terminal nueva para
ssh lab13@XXX.XXXX.XXX.XXXX:/home/lab13/Documents/Curso_UJAT/MAGH/QC_AntesDelEnsamble/multiqc_report.html .
```


### Ensambale de lecturas pareadas

Una vez que evaluamos la calidad del llamado de bases de nuestros datos de secuenciación masiva. El siguiente paso es ensamblar la lectura sentido y antisentido antes de correr en QIIME2 y lo hacemos con el programa [PEAR](https://academic.oup.com/bioinformatics/article/30/5/614/247231). Para descargar PEAR, consulta la siguiente [liga_de_descarga_pear](https://www.h-its.org/research/cme/software/#).

Vamos a comprobar si PEAR esta instalado en nuestro servidor 

```
pear --help

 ____  _____    _    ____ 
|  _ \| ____|  / \  |  _ \
| |_) |  _|   / _ \ | |_) |
|  __/| |___ / ___ \|  _ <
|_|   |_____/_/   \_\_| \_\
## PEAR v0.9.11 [Nov 5, 2017]  - [+bzlib +zlib]

## Citation - PEAR: a fast and accurate Illumina Paired-End reAd mergeR
## Zhang et al (2014) Bioinformatics 30(5): 614-620 | doi:10.1093/bioinformatics/btt593

## License: Creative Commons Licence
## Bug-reports and requests to: Tomas.Flouri@h-its.org and Jiajie.Zhang@h-its.org

## Usage: pear <options>
## Standard (mandatory):
##  -f, --forward-fastq         <str>     Forward paired-end FASTQ file.
##  -r, --reverse-fastq         <str>     Reverse paired-end FASTQ file.
##  -o, --output                <str>     Output filename.
## Optional:
##  -p, --p-value               <float>   Specify  a p-value for the statistical test. If the computed

```

Para ensamblar nuestras secuencias hacemos un bash scripting llamado **ensamblaje.sh**


```
#!/bin/bash

# Creamos un directorio para guardar las lecturas ensambladas y no ensambladas
mkdir ensamblaje

# Ejecutamos el siguiente comando 
fastq=($(ls raw_data/*.fastq))
tLen=${#fastq[@]}
for (( i=0; i<${tLen}; i=i+2));
do
x=${fastq[$i]##*/}
pear -f ${fastq[$i]} -r ${fastq[$i+1]} -o ensamblaje/${x%_*} -j 2 -q 20
done

# Hacer un directorio solo para las lecturas ensambladas
mkdir ensamblados

# Mover las lecturas ensambladas en la carpeta de ensamblados 
mv ensamblaje/*assembled.fastq ensamblados
```

Hacer el script ejecutable y ejecutarlo

```
chmod u+x ensamblaje.sh 
```

Por cada muestra se generan tres archivos:

- **Assembled**: las lecturas que pudo ensamblar (un archivo).

- **Discarded**: lecturas descartadas (un archivo).
  
- **Unassambled**: lecturas que no ensambló por que no se traslaparon (dos archivos).


Revisa cada una de las carpetas creadas **ensamblaje** y **ensamblados**

```
ls -lh ensamblaje/

## total 41M
## -rw-rw-r-- 1 lab13 lab13 186K Nov 11 15:58 SRR15018640.discarded.fastq
## -rw-rw-r-- 1 lab13 lab13 7.9M Nov 11 15:58 SRR15018640.unassembled.forward.fastq
## -rw-rw-r-- 1 lab13 lab13 5.1M Nov 11 15:58 SRR15018640.unassembled.reverse.fastq
## -rw-rw-r-- 1 lab13 lab13 219K Nov 11 16:00 SRR15018641.discarded.fastq
## -rw-rw-r-- 1 lab13 lab13 5.0M Nov 11 16:00 SRR15018641.unassembled.forward.fastq
## -rw-rw-r-- 1 lab13 lab13 3.0M Nov 11 16:00 SRR15018641.unassembled.reverse.fastq
## -rw-rw-r-- 1 lab13 lab13 266K Nov 11 16:02 SRR15018642.discarded.fastq
## -rw-rw-r-- 1 lab13 lab13  12M Nov 11 16:02 SRR15018642.unassembled.forward.fastq
## -rw-rw-r-- 1 lab13 lab13 7.7M Nov 11 16:02 SRR15018642.unassembled.reverse.fastq


ls -lh ensamblados/

## total 334M
## -rw-rw-r-- 1 lab13 lab13  97M Nov 11 15:58 SRR15018640.assembled.fastq
## -rw-rw-r-- 1 lab13 lab13 134M Nov 11 16:00 SRR15018641.assembled.fastq
## -rw-rw-r-- 1 lab13 lab13 104M Nov 11 16:02 SRR15018642.assembled.fastq
```

### Evaluación de la calidad del llamado de bases después del ensamblado

Creamos un segundo bash scripting **Calidad2.sh**

```
#!/bin/bash 
mkdir QC_DespuesDelEnsamble

### Correr FastQC
fastqc ensamblados/* -o QC_DespuesDelEnsamble/

### Correr MultiQC
multiqc QC_DespuesDelEnsamble/ -o QC_DespuesDelEnsamble/
```

### Si quisieramos ejecutar el pipeline desde la descarga de las muestras hasta el análisis de la calidad del ensemblado podemos ejecutar el siguiente script

```
#!/bin/bash

########################### DESCARGA DE ARCHIVOS ###########################
# Descargamos la secuencia en formato sra
prefetch --option-file SraAccList.txt

# Convertir sra en formato fastq
fasterq-dump --split-files SRR*

# Hacer un director
mkdir raw_data

# Mover los archivos fastq a raw_data
mv *fastq raw_data

# Eliminar los archivos SRR para liberar espacio en el servidor
rm -rf SRR*

########################### EVALUACION DE LA CALIDAD ###########################
mkdir QC_AntesDelEnsamble

### Correr FastQC
fastqc raw_data/* -o QC_AntesDelEnsamble/

### Correr MultiQC
multiqc QC_AntesDelEnsamble/ -o QC_AntesDelEnsamble/

########################### ENSAMBLE CON PEAR ###########################
# Creamos un directorio para guardar las lecturas ensambladas y no ensambladas
mkdir ensamblaje

# Ejecutamos el siguiente comando 
fastq=($(ls raw_data/*.fastq))
tLen=${#fastq[@]}
for (( i=0; i<${tLen}; i=i+2));
do
x=${fastq[$i]##*/}
pear -f ${fastq[$i]} -r ${fastq[$i+1]} -o ensamblaje/${x%_*} -j 2 -q 20
done

# Hacer un directorio solo para las lecturas ensambladas
mkdir ensamblados

# Mover las lecturas ensambladas en la carpeta de ensamblados 
mv ensamblaje/*assembled.fastq ensamblados

########################### CALIDAD DESPUES DEL ENSAMBLADO ###########################
mkdir QC_DespuesDelEnsamble

### Correr FastQC
fastqc ensamblados/* -o QC_DespuesDelEnsamble/

### Correr MultiQC
multiqc QC_DespuesDelEnsamble/ -o QC_DespuesDelEnsamble/
```

## 4. Análisis con QIIME2

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/qiime.png? raw=true" alt="shell" width="1000" height="600">
</p>

**[Bolyen et al., 2019](https://www.nature.com/articles/s41587-019-0209-9)**

### Formatos de salida de QIIME2

El algoritmo de **qiime2** proporciona dos tipos de datos **qza** (almacenamiento de información) y **qzv** (visualización). 

### Niveles taxonómicos

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/Taxonomic_Rank_Graph.svg? raw=true" alt="shell" width="1000" height="600">
</p>

## Métodos para el estudio del microbioma

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/TecnicasBacterias.svg? raw=true" alt="shell" width="1000" height="600">
</p>

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/IlluminaOxford.jpg? raw=true" alt="shell" width="800" height="600">
</p>

### Instalación de QIIME2

La importancia de crear ambientes en [conda](https://sxh1136.quarto.pub/amrflows-metagenomic-data-analysis-course/6.%20Installing%20tools%20with%20Conda.html). Para instalar QIIME2 sigue las siguientes [instrucciones](https://library.qiime2.org/quickstart/qiime2).

Primeramente vemos si tenemos conda instalado

```
conda --help
## usage: conda [-h] [-v] [--no-plugins] [-V] COMMAND ...

## conda is a tool for managing and deploying applications, environments and packages.

## options:
##  -h, --help            Show this help message and exit.
##  -v, --verbose         Can be used multiple times. Once for detailed output, twice for INFO logging, thrice for DEBUG
##                        logging, four times for TRACE logging.
##  --no-plugins          Disable all plugins that are not built into conda.
##  -V, --version         Show the conda version number and exit.
```

Actualizar conda

```
conda update conda
```

Instalar QIIME2 con conda

```
conda env create \
  --name rachis-qiime2-2026.10 \
  --file https://raw.githubusercontent.com/qiime2/distributions/refs/heads/dev/2026.10/qiime2/released/rachis-qiime2-linux-64-conda.yml
```

Una vez que se ha instalado QIIME2, podemos verlo con el siguiente comando **env list**

```
conda env list

# conda environments:
#
# * -> active
# + -> frozen
base                     /home/lab13/anaconda3
rachis-qiime2-2026.10 *   /home/lab13/anaconda3/envs/rachis-qiime2-2026.10
```

Para activar y desactivar el ambiente **rachis-qiime2-2026.10** usamos los siguientes comandos:

```
## Para activar
(base) lab13@lab13-PowerEdge-R730:~/Documents/Curso_UJAT/HectorMartinez$ **conda activate rachis-qiime2-2026.10
(rachis-qiime2-2026.10) lab13@lab13-PowerEdge-R730:~/Documents/Curso_UJAT/HectorMartinez$

## Para desactivar
(rachis-qiime2-2026.10) lab13@lab13-PowerEdge-R730:~/Documents/Curso_UJAT/HectorMartinez$ conda deactivate
(base) lab13@lab13-PowerEdge-R730:~/Documents/Curso_UJAT/HectorMartinez$ 
```

### Descarga de bases de datos SILVA

Descargar la bases de datos de SILVA en la siguiente [liga](https://www.arb-silva.de/). 

Para este curso se descargó la base de datos **SILVA_144_SSURef_NR99_uniform_classifier_V3V4-341f-806r.qza**

```
wget https://www.arb-silva.de/fileadmin/silva_databases/release_144/QIIME2/2026.7/SSU/V3V4-341f-806r/uniform/SILVA_144_SSURef_NR99_uniform_classifier_V3V4-341f-806r.qza
```

Significado de la base de datos:

* **SILVA_144**   Versión 144 de la base de datos SILVA.

* **SSURef**   Small Subunit rRNA Reference, secuencias de referencia de ARN ribosomal de subunidad pequeña.
  
* **NR99**   Secuencias agrupadas al 99% de identidad.

* **uniform_classifier**   Clasificador entrenado con un procedimiento de entrenamiento uniforme.

* **V3V4**   Región variable 3 y 4 del gen 16S rRNA.

* **341f-806r**   Primers utilizados para amplificar esa región.
  
* **.qza**   Archivo de artefacto de QIIME 2.

### Generación de archivo manifest.tsv y sample-metadata.txt

Antes de correr QIIME2 hay que generar un carpeta donde almacenaremos nuestros datos: 

* i) **manifest.tsv**
  
* ii) **sample-metadata.txt**

Vamos a generar el archivo **manifest.tsv**. Este archivo tiene que tener dos columnas, en la primera columna tiene que ir el **sample-id** (el nombre de los archivos fastq) y en la segunda columna **absolute-filepath** (la ruta absoluta de los archivos fastq)

```
#!/bin/bash

# Hacer una carpeta
mkdir data

# generamos un archivo con dos columnas
echo -e "sample-id\tabsolute-filepath" > data/manifest.tsv

# llenar el archivo con la información correcta

for f in ensamblados/*fastq
do
    n=$(basename "$f" .assembled.fastq)
    echo -e "${n}\t$PWD/$f"
done >> data/manifest.tsv
```

Vemos el contenido del archivo **manifest.tsv** con **head data/manifest.tsv**

```
head data/manifest.tsv

## sample-id	absolute-filepath
## SRR15018640	/home/lab13/Documents/Curso_UJAT/HectorMartinez/ensamblados/SRR15018640.assembled.fastq
## SRR15018641	/home/lab13/Documents/Curso_UJAT/HectorMartinez/ensamblados/SRR15018641.assembled.fastq
## SRR15018642	/home/lab13/Documents/Curso_UJAT/HectorMartinez/ensamblados/SRR15018642.assembled.fastq
## SRR15018643	/home/lab13/Documents/Curso_UJAT/HectorMartinez/ensamblados/SRR15018643.assembled.fastq
## SRR15018644	/home/lab13/Documents/Curso_UJAT/HectorMartinez/ensamblados/SRR15018644.assembled.fastq
## SRR15018645	/home/lab13/Documents/Curso_UJAT/HectorMartinez/ensamblados/SRR15018645.assembled.fastq
```

Vamos a generar el archivo **metadata.txt**. Este archivo puede contener el **sample-id**, **run_prefix**, **sample_type**.


```
#!/bin/bash

# generamos un archivo con tres columnas
echo -e "sample-id\trun_prefix\tsample_type" > data/metadata.txt

# llenar el archivo con la información correcta
for f in ensamblados/*fastq
do
    n=$(basename "$f" .assembled.fastq)
    echo -e "${n}\t$(basename "$f")"
done >> data/metadata.txt

# Teniendo 

```

Vemos el contenido del archivo **metadata.txt** con **head data/metadata.txt**

```
head data/metadata.txt
```

## 3. QIIME2

[Tutoriales](https://docs.qiime2.org/2024.10/tutorials/pd-mice/) para QIIME2

Hacer un bash scripting para correr QIIME2 con el editor de **vim qiime2.sh**, dentro del script copiar estos comandos.

```
#!/bin/bash

start=$(date +%s)

mkdir -p qiime2/qzv qiime2/qza

# Inicializar Conda
source "$(conda info --base)/etc/profile.d/conda.sh"

# Activar entorno
conda activate rachis-qiime2-2026.10

# Importar datos
qiime tools import \
--input-path data/manifest.tsv \
--type 'SampleData[SequencesWithQuality]' \
--input-format SingleEndFastqManifestPhred33V2 \
--output-path qiime2/qza/demux_seqs.qza

# Para ver las lecturas y la calidad de los datos importados
qiime demux summarize \
--i-data qiime2/qza/demux_seqs.qza \
--o-visualization qiime2/qzv/demux_seqs.qzv

# Control de calidad de las secuencias and feature table
qiime dada2 denoise-single \
  --i-demultiplexed-seqs qiime2/qza/demux_seqs.qza \
  --p-trim-left 0 \
  --p-trunc-len 0 \
  --p-n-threads 20 \
  --o-denoising-stats qiime2/qza/dada2_stats.qza \
  --o-representative-sequences qiime2/qza/dada2_rep_set.qza \
  --o-table qiime2/qza/dada2_table.qza \
  --o-base-transition-stats qiime2/qza/base-transition-stats.qza

# Para ver los datos filtrados (denoising)
qiime metadata tabulate \
  --m-input-file qiime2/qza/dada2_stats.qza  \
  --o-visualization qiime2/qzv/dada2_stats.qzv

# Para ver el resumen de -Feature table- PENDIENTE
qiime feature-table summarize \
    --i-table qiime2/qza/dada2_table.qza \
    --o-feature-frequencies qiime2/qza/feature-frequencies.qza \
    --o-sample-frequencies qiime2/qza/sample-frequencies.qza \
    --o-summary qiime2/qzv/dada2_table.qzv

# Secuencias representativas
qiime feature-table tabulate-seqs \
--i-data qiime2/qza/dada2_rep_set.qza \
--o-visualization qiime2/qzv/dada2_rep_set.qzv

# Generación de un árbol filogenético para el análisis de la diversidad
qiime fragment-insertion sepp \
  --i-representative-sequences qiime2/qza/dada2_rep_set.qza \
  --i-reference-database /home/lab13/Documents/Curso_UJAT/reference/sepp-refs-gg-13-8.qza \
  --o-tree qiime2/qza/tree.qza \
  --o-placements qiime2/qzv/tree_placements.qza \
  --p-threads 20

# Rarefacción  y selección de una profundidad de rarefacción
qiime diversity alpha-rarefaction \
  --i-table qiime2/qza/dada2_table.qza \
  --m-metadata-file data/metadata.txt \
  --o-visualization qiime2/qzv/alpha_rarefaction_curves.qzv \
  --p-min-depth 10 \
  --p-max-depth 90000

# Clasificación taxonómica
silva144=/home/lab13/Documents/Curso_UJAT/reference/SILVA_144_SSURef_NR99_uniform_classifier_V3V4-341f-806r.qza

qiime feature-classifier classify-sklearn \
--i-classifier $silva144 \
--i-reads qiime2/qza/dada2_rep_set.qza \
--o-classification qiime2/qza/taxonomy.qza

# Taxonomia para visualización
qiime metadata tabulate \
--m-input-file qiime2/qza/taxonomy.qza \
--m-input-file qiime2/qza/dada2_rep_set.qza \
--o-visualization qiime2/qzv/taxonomy.qzv

# Barra de clasificación taxonómica
qiime taxa barplot \
  --i-table qiime2/qza/dada2_table.qza \
  --i-taxonomy qiime2/qza/taxonomy.qza \
  --m-metadata-file data/metadata.txt \
  --o-visualization qiime2/qzv/taxa-bar-plots.qzv

end=`date +%s`
runtime=$((end-start))
echo 'run time = ' $runtime'(sec)'

echo done ......

```

Darle permiso a nuestro script y ejecutarlo en segundo plano

```
# Darle permiso
chmod u+x qiime2.sh

# Ejecutar el script en segundo plano
nohup bash qiime2.sh > qiime2.out&
```

Para monitorear nuestros script podemos usar los siguientes comandos

```
tail -f qiime2.out
```

### Vamos ir analizando paso a paso cada comando

### Importar datos

Consultar la importación de datos [adicionales](https://docs.qiime2.org/2024.10/tutorials/importing/#manifest-file)

Tiempo de ejecución: 93.3 minutos (en una computadora de 128 G de RAM y 20 núcleos)

```
mkdir -p qiime2/qzv qiime2/qza

# Inicializar Conda
source "$(conda info --base)/etc/profile.d/conda.sh"

# Activar entorno
conda activate rachis-qiime2-2026.10

# Importar datos
qiime tools import \
--input-path data/manifest.tsv \
--type 'SampleData[SequencesWithQuality]' \
--input-format SingleEndFastqManifestPhred33V2 \
--output-path qiime2/qza/demux_seqs.qza
```

Una vez que importaron los datos, podemos examinar su profundidad y su calidad con el comando **qiime demux summarize**. En la carpeta de [resultados](https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/tree/main/Resultados/qzv) podrás descargar el archivo **demux_seqs.qza** y visualizarlo con **qiime2 view**

Tiempo de ejecución: 3.7 minutos 

```
qiime demux summarize \
--i-data qiime2/qza/demux_seqs.qza \
--o-visualization qiime2/qzv/demux_seqs.qzv
```

### Control de calidad de las secuencias y feature table

Tiempo de ejecución: 249.9 minutos (4.16 horas)

```
qiime dada2 denoise-single \
  --i-demultiplexed-seqs qiime2/qza/demux_seqs.qza \
  --p-trim-left 0 \
  --p-trunc-len 0 \
  --p-n-threads 20 \
  --o-denoising-stats qiime2/qza/dada2_stats.qza \
  --o-representative-sequences qiime2/qza/dada2_rep_set.qza \
  --o-table qiime2/qza/dada2_table.qza \
  --o-base-transition-stats qiime2/qza/base-transition-stats.qza
```

Existen diversas formas de construir una tabla de características en QIIME 2. La primera decisión importante consiste en elegir entre trabajar con unidades taxonómicas operativas (OTU) o con variantes de secuencia de amplicones (ASV). Las OTU se han utilizado ampliamente en la investigación del microbioma desde mediados de la década de 2010; estas agrupan las secuencias en clústeres, ya sea mediante una base de datos de referencia o mediante un proceso *de novo*. 

Las ASV representan un desarrollo más reciente y ofrecen una mayor resolución en la identificación de características que los métodos tradicionales basados ​​en OTU. Las ASV permiten distinguir características basándose en diferencias de un solo nucleótido en secuencias de 400 pb o más; un nivel de resolución que no es posible alcanzar ni siquiera mediante el agrupamiento de OTU con un 99 % de identidad. 

| Característica |               ASV               |             OTU            |
|:--------------:|:-------------------------------:|:--------------------------:|
| Método         | DADA2                           | Agrupamiento por similitud |
| Resolución     | Secuencia exacta                | Secuencias agrupadas       |
| Umbral         | No requiere umbral de similitud | Frecuentemente 97%         |
| Resultado      | Variantes de secuencia          | Grupos de secuencias       |
| Identificador  | ASV_1, ASV_2, etc.              | OTU_1, OTU_2, etc.         |


QIIME 2 genera tres archivos principales:

*   dada2_table.qza	

Feature Table: abundancia de ASV por muestra.

* dada2_rep_set.qza

Secuencias representativas de cada ASV.

* dada2_stats.qza

Estadísticas del procesamiento y filtrado de lecturas.

**¿Para qué sirve el Feature Table?**

Es uno de los archivos más importantes del análisis de microbioma. Se utiliza para:
- Calcular diversidad alfa (Shannon, Simpson, Observed ASVs).
- Calcular diversidad beta (Bray-Curtis, UniFrac).
- Comparar abundancias bacterianas entre grupos.
- Identificar microorganismos diferenciales.
- Realizar análisis de composición y abundancia relativa.

**Visualización de los datos filtrados (denoising)**

Descargar el archivo **dada2_stats.qzv** en la sección de [resultados](https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/tree/main/Resultados/qzv) y visualizar con  **qiime2 view**

Tiempo de ejecución: 34 segundos

```
qiime metadata tabulate \
  --m-input-file qiime2/qza/dada2_stats.qza  \
  --o-visualization qiime2/qzv/dada2_stats.qzv
```

**Secuencias representativas**

Descargar el archivo **dada2_rep_set.qzv** en la sección de [resultados](https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/tree/main/Resultados/qzv) y visualizar con  **qiime2 view**

Tiempo de ejecución: 66 segundos

```
qiime feature-table tabulate-seqs \
--i-data qiime2/qza/dada2_rep_set.qza \
--o-visualization qiime2/qzv/dada2_rep_set.qzv
```

**Visualización del feature table**

Descargar el archivo **dada2_table.qzv** en la sección de [resultados](https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/tree/main/Resultados/qzv) y visualizar con  **qiime2 view**. Nota: inspeccionar el archivo **dada2_table_v2.qzv**

Tiempo de ejecución: 54 segundos

```
qiime feature-table summarize \
    --i-table qiime2/qza/dada2_table.qza \
    --o-feature-frequencies qiime2/qza/feature-frequencies.qza \
    --o-sample-frequencies qiime2/qza/sample-frequencies.qza \
    --o-summary qiime2/qzv/dada2_table.qzv
```

**Generación de un árbol filogenético para el análisis de la diversidad**

El análisis en QIIME 2 permite el uso de árboles filogenéticos para calcular métricas de diversidad, tales como la diversidad filogenética de Faith (Faith’s Phylogenetic Diversity) y la distancia UniFrac. 

Tiempo de ejecución: 2.98 horas

```
qiime fragment-insertion sepp \
  --i-representative-sequences qiime2/qza/dada2_rep_set.qza \
  --i-reference-database /home/lab13/Documents/Curso_UJAT/reference/sepp-refs-gg-13-8.qza \
  --o-tree qiime2/qza/tree.qza \
  --o-placements qiime2/qzv/tree_placements.qza \
  --p-threads 20
```

**Rarefacción  y selección de una profundidad de rarefacción**

Ahora disponemos de una **feature table** (matriz de observaciones) de ASVs en cada muestra, junto con un árbol filogenético que representa dichos ASVs; por lo tanto, estamos casi listos para llevar a cabo diversos análisis de diversidad microbiana. Antes de realizar el análisis de diversidad microbiana tenemos que normalizar nuestros datos para compensar las diferencias en la profundidad de secuenciación entre las muestras.

Aunque la profundidad de secuenciación en una muestra de microbioma no guarda una relación directa con la biomasa original de la comunidad, la profundidad de secuenciación relativa influye considerablemente en las comunidades observadas [Weiss et al., 2017](https://link.springer.com/article/10.1186/s40168-017-0237-y). Por consiguiente, para la mayoría de las métricas de diversidad, resulta necesario aplicar un método de normalización.

La rarefacción es un método de normalización basado en el submuestreo sin reemplazo, utilizado habitualmente para abordar el problema de la diferencia en la profundidad de secuenciación. Este proceso consta de dos etapas: primero, se eliminan de la tabla de características aquellas muestras que presentan una profundidad inferior al umbral de rarefacción establecido. A continuación, se realiza un submuestreo sin reemplazo de todas las muestras restantes hasta alcanzar la profundidad de secuenciación especificada. Seleccionar un umbral de rarefacción adecuado para los análisis de diversidad es un paso importante, aunque a veces complejo. 

Tiempo de ejecución: 3.2 minutos

```
qiime diversity alpha-rarefaction \
  --i-table qiime2/qza/dada2_table.qza \
  --m-metadata-file data/metadata.txt \
  --o-visualization qiime2/qzv/alpha_rarefaction_curves.qzv \
  --p-min-depth 10 \
  --p-max-depth 90000
```


**Clasificación taxonómica**

Hasta ahora, hemos realizado análisis de diversidad  sobre los ASV; es decir, se ha evaluado la similitud entre muestras basándonos exclusivamente en las variantes de secuencia únicas observadas en cada una de ellas. En la mayoría de los experimentos, nos interesa conocer qué taxones microbianos están presentes —identificar los ASV y asignarles «nombres»—. 

Para este análisis, se emplea un clasificador de aprendizaje automático (machine learning) de tipo «naive Bayes» previamente entrenado, diseñado para diferenciar los taxones presentes en el conjunto de referencia SILVA 144 (al 99 % de identidad). 

Tiempo de ejecución: 3.7 minutos

```
silva144=/home/lab13/Documents/Curso_UJAT/reference/SILVA_144_SSURef_NR99_uniform_classifier_V3V4-341f-806r.qza

qiime feature-classifier classify-sklearn \
--i-classifier $silva144 \
--i-reads qiime2/qza/dada2_rep_set.qza \
--o-classification qiime2/qza/taxonomy.qza
```

**Taxonomía para visualización**

Tiempo de ejecución: 48 segundos

```
qiime metadata tabulate \
--m-input-file qiime2/qza/taxonomy.qza \
--m-input-file qiime2/qza/dada2_rep_set.qza \
--o-visualization qiime2/qzv/taxonomy.qzv
```

**Barra de clasificación taxonómica**

Tiempo de ejecución: 65 segundos

```
qiime taxa barplot \
  --i-table qiime2/qza/dada2_table.qza \
  --i-taxonomy qiime2/qza/taxonomy.qza \
  --m-metadata-file data/metadata.txt \
  --o-visualization qiime2/qzv/taxa-bar-plots.qzv
```
