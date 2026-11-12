# Pipeline bioinformático para la identificación taxonómica de bacterias mediante QIIME 2
   1. Estructura de los archivos fastq y calidad de las lecturas de secuenciación
   2. Objeto de estudio - Cáncer colorrectal
   3. Descarga de archivos, análisis de calidad y ensamblado de lecturas
   4. Análisis con QIIME2
   5. Visualización de datos con QIIME2 View
      
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

* SILVA_144   Versión 144 de la base de datos SILVA.

* SSURef      Small Subunit rRNA Reference, secuencias de referencia de ARN ribosomal de subunidad pequeña.
  
* NR99	Secuencias agrupadas al 99% de identidad.
uniform_classifier	Clasificador entrenado con un procedimiento de entrenamiento uniforme.
V3V4	Región variable 3 y 4 del gen 16S rRNA.
341f-806r	Primers utilizados para amplificar esa región.
.qza	Archivo de artefacto de QIIME 2.

### Generación de archivo manifest.tsv y sample-metadata.txt

Antes de correr QIIME2 hay que generar un carpeta donde almacenaremos nuestros datos: 

* i) manifest.tsv
  
* ii) sample-metadata.txt



```
# Hacer una carpeta
mkdir data

# i) Manifest file, generamos un archivo con dos columnas y posteriormente llenar el archivo con la información correcta

echo -e "sample-id\tabsolute-filepath" > data/manifest.tsv

for f in `ls ensamblados/*fastq`; do n=`basename $f`; echo -e "${n%.fastq.gz}\t$PWD/$f"; done >> data/manifest.tsv

# Vemos el contenido del archivo manifest

less data/manifest.tsv

# sample-id       absolute-filepath
# MBC1_S1.assembled.fastq /home/lab13/Documents/Ecologia2026/Equipo11/ensamblados/MBC1_S1.assembled.fastq
# MBC2_S2.assembled.fastq /home/lab13/Documents/Ecologia2026/Equipo11/ensamblados/MBC2_S2.assembled.fastq
# MBC3_S3.assembled.fastq /home/lab13/Documents/Ecologia2026/Equipo11/ensamblados/MBC3_S3.assembled.fastq

```

```
# ii) metadata file

echo -e "sample-id\trun_prefix\tCurso" > data/sample-metadata.txt

for f in `ls ensamblados/*fastq`; do n=`basename $f`; echo -e "${n%.fastq.gz}\t${n%.fastq.gz}\tEcologia2026"; done >> data/sample-metadata.txt

# Vemos el contenido  de sample-metadata.txt

less data/sample-metadata.txt

# sample-id       run_prefix      Curso
# MBC1_S1.assembled.fastq MBC1_S1.assembled.fastq Ecologia2026
# MBC2_S2.assembled.fastq MBC2_S2.assembled.fastq Ecologia2026
# MBC3_S3.assembled.fastq MBC3_S3.assembled.fastq Ecologia2026
```




Se tiene que generar un archivo “manifest.tsv” (Un archivo con dos columnas: **sample-id** (nombre de la muestra) y **absolute-ﬁlepath** (la ruta donde estan los archivos fastq).

```
sample-id	absolute-filepath
12802.UB6-0001.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0001.assembled.fastq
12802.UB6-0002.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0002.assembled.fastq
12802.UB6-0003.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0003.assembled.fastq
12802.UB6-0004.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0004.assembled.fastq
12802.UB6-0005.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0005.assembled.fastq
12802.UB6-0006.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0006.assembled.fastq
12802.UB6-0007.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0007.assembled.fastq
12802.UB6-0008.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0008.assembled.fastq
12802.UB6-0009.assembled.fastq	/home/lab13/Documents/DraEcheagaray/ensamblados/UB6-0009.assembled.fastq
```



## 3. QIIME2



Hacer un script para correr QIIME2 con el editor de vim

```
vim qiime2.sh
```

Dentro del script copiar estos comandos

```
#!/bin/bash

start=`date +%s`

mkdir -p qiime2/qzv qiime2/qza

# Inicializar conda
source /home/lab13/anaconda3/etc/profile.d/conda.sh

# Activar entorno
conda activate qiime2-amplicon-2023.9

# Importar datos
qiime tools import \
--input-path data/manifest.tsv \
--type 'SampleData[SequencesWithQuality]' \
--input-format SingleEndFastqManifestPhred33V2 \
--output-path qiime2/qza/Fastqs.qza

# Resumen
qiime demux summarize \
--i-data qiime2/qza/Fastqs.qza \
--o-visualization qiime2/qzv/se-demux.qzv

# Denoising
qiime dada2 denoise-single \
--i-demultiplexed-seqs qiime2/qza/Fastqs.qza \
--p-trim-left 20 \
--p-trunc-len 410 \
--p-n-threads 1 \
--o-denoising-stats qiime2/qza/stats-dada2.qza \
--o-representative-sequences qiime2/qza/seqs-dada2.qza \
--o-table qiime2/qza/table-dada2.qza

# Visualización
qiime feature-table tabulate-seqs \
--i-data qiime2/qza/seqs-dada2.qza \
--o-visualization qiime2/qzv/rep-seqs-dada2.qzv

# Para ver la profundidad maxima de los  datos
qiime feature-table summarize \
--i-table qiime2/qza/table-dada2.qza \
--m-sample-metadata-file data/sample-metadata.txt \
--o-visualization qiime2/qzv/table-dada2.qzv

# Visualización de la limpieza de los datos
qiime metadata tabulate \
--m-input-file qiime2/qza/stats-dada2.qza \
--o-visualization qiime2/qzv/denoising-stats.qzv

# Filogenia
qiime phylogeny align-to-tree-mafft-fasttree \
--i-sequences qiime2/qza/seqs-dada2.qza \
--o-alignment qiime2/qza/aligned-rep-seqs.qza \
--o-masked-alignment qiime2/qza/masked-aligned-rep-seqs.qza \
--o-tree qiime2/qza/unrooted-tree.qza \
--o-rooted-tree qiime2/qza/rooted-tree.qza

mkdir tmp
export TMPDIR=tmp

silva138=/home/lab13/Reference/Referencia_silva_138/silva-138-99-nb-classifier.qza

# Taxonomia
qiime feature-classifier classify-sklearn \
--i-classifier $silva138 \
--i-reads qiime2/qza/seqs-dada2.qza \
--o-classification qiime2/qza/taxonomy.qza

# Taxonomia para visualización
qiime metadata tabulate \
--m-input-file qiime2/qza/taxonomy.qza \
--m-input-file qiime2/qza/seqs-dada2.qza \
--o-visualization qiime2/qzv/taxonomy.qzv


# rarefaction
qiime diversity alpha-rarefaction \
  --i-table qiime2/qza/table-dada2.qza \
  --i-phylogeny qiime2/qza/rooted-tree.qza \
  --p-max-depth 21778 \
  --m-metadata-file data/sample-metadata.txt \
  --o-visualization qiime2/qzv/alpha-rarefaction.qzv

# Barra de clasificación taxonómica
qiime taxa barplot \
  --i-table qiime2/qza/table-dada2.qza \
  --i-taxonomy qiime2/qza/taxonomy.qza \
  --m-metadata-file data/sample-metadata.txt \
  --o-visualization qiime2/qzv/taxa-bar-plots.qzv

end=`date +%s`
runtime=$((end-start))
echo 'run time = ' $runtime'(sec)'

echo done ......

```

Darle permiso a nuestro script

```
# Darle permiso
sudo chmod u+x qiime2.sh

# Ejecutar el script en segundo plano
nohup sh qiime2.sh > qiime2.out&
```

Para monitorear nuestros script podemos usar los siguientes comandos

```
tail -f qiime2.out
```

Bajamos los archivos **qzv** usando mobaxterm


```
#!/bin/bash

for dir in /home/lab13/Documents/Ecologia2026/Equipo1*/; do
    echo "Procesando $dir"

    (cd "$dir" && bash qiime2.sh > run.log 2>&1) || {
        echo "Error en $dir"
        exit 1
    }

    echo "Finalizado $dir"
done

echo "Todo terminado"
```

```
nohup bash run_all.sh > master.log 2>&1 &
```


# Instalación de programas

## Brevemente vamos a poner un ejemplo de como instalar un programa

Para este fin vamos a usar [muscle](https://github.com/rcedgar/muscle?tab=readme-ov-file) para el alineamiento de múltiples secuencias biólogicas. Podemos usar el repositorio de github o conda (si esta instalado python).

1. Instalando con [muscle_github](https://github.com/rcedgar/muscle?tab=readme-ov-file)

Una vez que estamos en la página, hay que descargar el archivo, descromprimirlo e instalarlo. Sigue las instrucciones

```
## Descargar el algoritmo
wget https://github.com/rcedgar/muscle/archive/refs/tags/v5.3.zip
## Descomprimir
unzip v5.3.zip
## Cambiar al archivo src
cd src
## Construir el archivo
bash build_linux.bash
```

Otra base página donde se especifica como instalar [muscle](https://apolo-docs.readthedocs.io/en/latest/software/applications/MUSCLE/3.8.1551/index.html)


Otro ejemplo [bcftools en github](https://github.com/samtools/bcftools) y [bcftools en otra página
](https://www.htslib.org/download/)

```
## Descargar el algorirtmo
wget https://github.com/samtools/bcftools/releases/download/1.22/bcftools-1.22.tar.bz2
## Descomprimir
tar -xvjf bcftools-1.22.tar.bz2
## 
./configure --prefix=/where/to/install
./bcftools

## Exportar
export PATH=/home/lab13/Documents/MAGH/bcftools-1.22:$PATH    # for sh or bash users
```

2. Instalando con [muscle_conda](https://anaconda.org/bioconda/muscle)

Si tienes instalado pythn se puede usar conda para instalar

```
## Antes de instalar con conda hay que ver que si tenemos instalado python
python --version
conda install bioconda::muscle
conda install bioconda/label/cf201901::muscle
```

3. Instalando desde linux

Para ver que tipo de distribución tienes instalado ejecuta el comando 

```
neofetch
```

Puedes usar yum (centos), algo de información lo puedes encontrar en esta [liga](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/6/html/deployment_guide/sec-installing)

## Instalación de paquetes individuales

Para instalar un solo paquete y todas sus dependencias no instaladas, introduzca un comando con el siguiente formato:

```
yum install package_name
```

También puedes instalar varios paquetes simultáneamente agregando sus nombres como argumentos:

```
yum install package_name package_name
```

Hay que checar que tipo distribución tienes instalado en tu servicor para que puedas usar el comando adecuado para la instalación, checa esta [liga](https://www.maketecheasier.com/install-software-in-various-linux-distros/)


# Instalando un programa en un ambiente de conda

Antes de crear un ambiente en conda, vamos a ver si tenemos instalado conda o miniconda

```
conda info

```

Para actualizar o instalar conda solo sigue los siguientes pasos

```
# Descargamos una version de miniconda
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
# Ejecutamos el script con bash
bash Miniconda3-latest-Linux-x86_64.sh
```

Para que quede un poco más claro, dejo la página donde puedes descargar [anaconda](https://www.anaconda.com/docs/getting-started/anaconda/install#macos-graphical-installer) 

Antes de hacer un ambiente en python, veamos la siguiente [explicación](https://codigofacilito.com/articulos/entornos-virtuales-python)

## Vamos a instalar los programas FASTQC, HISAT2 y SAMtools.

Vamos a crear un ambiente en python, ya checamos la version de python pero podemos usar el siguiente comando para ver que versiones tenemos

```
ls /usr/bin/python3*
```

Creamos un ambiente en version 3.9 con el siguiente comando 

```
conda create --name python_NombreApellido python=3.9
```

Para ver y activar tu ambiente con la version de phyton que usaste, ejecuta el siguiente comando

```
## Para enviar que ambientes tengo
conda env list
## Para activar el ambiente de python
conda activate python_NombreApellido
## Para desactivar el ambiente de python
conda deactivate
```

Activamos el ambiente de conda y ejecutamos o instalamos los programas que necesitamos usar para nuestros análisis. En esta dirección puedes buscar los programas disponibles en conda [https://anaconda.org/bioconda](https://anaconda.org/bioconda)

```
## Para activar el ambiente de python
conda activate python_NombreApellido
# Instalando los programas
conda install bioconda::fastqc
conda install bioconda::hisat2
conda install bioconda::samtools
```

Checamos las versiones que se instalaron

```
fastqc --version
hisat2 --version
samtools --version
```

Haz un script y realiza el análisis de la calidad de los archivos que están en esta dirección:

```
/home/lab13/Documents/Ecologia_AnalisisGenomico/HectorMartinez/FASTQ
```



https://sxh1136.quarto.pub/amrflows-metagenomic-data-analysis-course/6.%20Installing%20tools%20with%20Conda.html


