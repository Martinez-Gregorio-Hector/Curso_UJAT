# Pipeline bioinformático para la identificación taxonómica de bacterias mediante QIIME 2
   1. Estructura de los archivos fastq
   2. Evaluación de la calidad
   3. Creación de un ambiente en conda
   4. QIIME2
   5. Visualización de datos con [qiime2 view](https://view.qiime2.org/)
      
## 1. Estructura de los archivos fastq

### Archivos fasta o formato de Pearson
Antes de entender y analizar los archivos de la secuenciación masiva, vamos a revisar primero el formato **[fasta o Person](https://www.bioinformatics.nl/tools/crab_fasta.html)**

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/fasta.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Características del archivo fastq

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/Fastq1.png? raw=true" alt="shell" width="1000" height="600">
</p>

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/Fastq2.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Encabezado del archivo fastq

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/EncabezadoFastq.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Información de la calidad de las lecturas crudas

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/ASCII.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Nivel de calidad Phred 

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/Phred.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Diagrama de cajas y bigotes

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/BoxPlot.svg? raw=true" alt="shell" width="600" height="600">
</p>

## Revisión de resultado FastQC y multiQC

**[FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)**

* **[FastQC_bueno](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/good_sequence_short_fastqc.html)**
* **[FastQC_malo](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/bad_sequence_fastqc.html)**

**[MultiQC](https://github.com/MultiQC/MultiQC)**

* **[MultiQC](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/multiqc_report_despues.html)**





# Pipeline bioinformático

En esta sección describiremos los algoritmos y pipelines que se usarán para la identificación taxonómica de las bacterias de interés ecológico y clínico de las muestras que se prepararon en la primera parte del curso de ecología.

<p align="center">  
  <img src="Figuras/AlgoritmoPipeline.png? raw=true" alt="shell" width="1000" height="600">
</p>


<p align="center">  
  <img src="Figuras/AlgoritmoPipeline2.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Algoritmos que se usarán para el análisis del microbioma

<p align="center">  
  <img src="Figuras/PipelineBioinformatico.svg? raw=true" alt="shell" width="1000" height="600">
</p>

1. Evaluación de la calidad del llamado de bases: **[fastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)** y **[Multiqc](https://github.com/MultiQC/MultiQC)**

2. Ensamble de lecturas pareadas: **[PEAR](https://cme.h-its.org/exelixis/web/software/pear/doc.html)**

3. Identificación taxonómica: **[QIIME2](https://qiime2.org/)**

## 1. Evaluación de la calidad del llamado de bases antes del ensamblado

<p align="center">  
  <img src="Figuras/MultiQC2.svg? raw=true" alt="shell" width="1000" height="600">
</p>

## 2a. Ensambale de lecturas pareadas

<p align="center">  
  <img src="Figuras/Ensamble.jpg? raw=true" alt="shell" width="1000" height="600">
</p>

i) generar un solo archivo fastq 
ii) dejar aquellas bases con una calidad arriba de 20

```
pear -f [lectura_forward] –r [lectura_reverse] -o ensamblado.fastq -j 10 -q 20
```

Por cada muestra se generan tres archivos:

* Assembled, las lecturas que pudo ensamblar (un archivo).
* Discarded, lecturas descartadas (un archivo).
* Unassambled, lecturas que no ensambló por que no se traslaparon (dos archivos).

## 2b. Evaluación de la calidad del llamado de bases después del ensamblado

<p align="center">  
  <img src="Figuras/MultiQC.svg? raw=true" alt="shell" width="1000" height="600">
</p>

Las primeras(20 pb) y las últimas lecturas (a partir de 410 pb) son eliminadas más adelante con el programa de **qiime2**, en la sección de denoising.

## 3. Identificación taxonómica

<p align="center">  
  <img src="Figuras/qiime.png? raw=true" alt="shell" width="1000" height="600">
</p>

**[Bolyen et al., 2019](https://www.nature.com/articles/s41587-019-0209-9)**

## ¿Cómo se almacena la información en qiime2?

El algoritmo de **qiime2** proporciona dos tipos de datos **qza** y **qzv**. **[QIIME 2 View](https://view.qiime2.org/)** permite visualizar archivos **qza** y **qzv** directamente en un navegador.

**qza** son los archivos de datos procesados que se usan como entrada en los siguientes pasos
  
- **demux.qza** → Secuencias importadas
- **table.qza** → Tabla de abundancia (ASVs/OTUs)
- **rep-seqs.qza** → Secuencias representativas
- **taxonomy.qza** → Clasificación taxonómica
- **rooted-tree.qza** → Árbol filogenético

  
**qzv** son archivos para visualizar resultados

- **demux.qzv** → Calidad de secuencias
- **table.qzv** → Resumen de tabla
- **taxonomy.qzv** → Resultados taxonómicos
- **alpha-rarefaction.qzv** → Curvas de rarefacción
- **barplot.qzv** → Gráficos de abundancia taxonómica

En el tutorial de qiime2 podemos ver las características de estos **[archivos](https://docs.qiime2.org/2023.7/tutorials/pd-mice/)**

## Niveles taxonómicos

<p align="center">  
  <img src="Figuras/Taxonomic_Rank_Graph.svg? raw=true" alt="shell" width="1000" height="600">
</p>

## Métodos para el estudio del microbioma

<p align="center">  
  <img src="Figuras/TecnicasBacterias.svg? raw=true" alt="shell" width="1000" height="600">
</p>

<p align="center">  
  <img src="Figuras/IlluminaOxford.jpg? raw=true" alt="shell" width="800" height="600">
</p>

## 3.1 Qiime2 

**a) Importación de datos**


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

**b) Denosing**

<p align="center">  
  <img src="Figuras/Denoising.png? raw=true" alt="shell" width="800" height="600">
</p>

**c) Alpha rarefaction**

<p align="center">  
  <img src="Figuras/AlphaRarefaction.png? raw=true" alt="shell" width="800" height="600">
</p>

[Alpha_rarefaction](https://en.wikipedia.org/wiki/Rarefaction_(ecology))

**d) Taxa Barplot**

<p align="center">  
  <img src="Figuras/TaxaBarplot.png? raw=true" alt="shell" width="800" height="600">
</p>


# Código para el análisis bioinformático (por equipo)

En esta sección se trabajará en grupo para optimizar recursos computacionales

## Conectarse al servidor y dirigirse a la carpeta de trabajo

```
Dirección ip
ssh lab13@132.248.216.138

Password
XXXXXXXX
```

Dirigirse al a la carpeta del trabajo

```
cd /home/lab13/Documents/Ecologia2026
```

Hacer un listado de archivos y directorios

```
ls - lh
```

Cambiaral directorio de trabajo

```
cd Ecologia01
cd Ecologia02
cd Ecologia03
cd EcologiaXX
```

Hacer un directorio donde vamos a almacenar los archivos crudos

```
mkdir raw_data
```

Copiar los archivos que vamos a usar para hacer los análisis en la carpeta raw_data

```
### Ruta relativa
cp ../raw_data/Sample1* raw_data/
### Ruta absoluta
cp /home/lab13/Documents/Ecologia2026/raw_data/Sample1* raw_data/
```

Para comprobar si copiamos los archivos en la carpeta de **raw_data**, podemos usar el comando ls desde nuestro directorio de trabajo

```
ls -lh raw_data/

# -rwxr-xr-x. 1 lab13 lab13 11M Apr 29 23:44 MBC1_S1_L001_R1_001.fastq.gz
# -rwxr-xr-x. 1 lab13 lab13 12M Apr 29 23:44 MBC1_S1_L001_R2_001.fastq.gz
# -rwxr-xr-x. 1 lab13 lab13 13M Apr 29 23:44 MBC2_S2_L001_R1_001.fastq.gz
# -rwxr-xr-x. 1 lab13 lab13 15M Apr 29 23:44 MBC2_S2_L001_R2_001.fastq.gz
# -rwxr-xr-x. 1 lab13 lab13 12M Apr 29 23:44 MBC3_S3_L001_R1_001.fastq.gz
# -rwxr-xr-x. 1 lab13 lab13 14M Apr 29 23:44 MBC3_S3_L001_R2_001.fastq.gz
```

## 1. Análisis de calidad

De acuerdo con nuestro pipeline bioinformático, el primer paso para el análisis de nuestros datos es la evaluación de la calidad con **[fastqc](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)** y **[multiqc](https://github.com/MultiQC/MultiQC)**. Para hacer esta actividad vamos a activar un ambiente en python. Para listar que ambientes hay en python usar el siguiente comando

```
conda env list

# conda environments:
#
# * -> active
# + -> frozen
#                         /home/lab13/anaconda3
#                         /home/lab13/anaconda3/envs/qiime2-amplicon-2023.9
# base                 *   /home/lab13/miniconda3
# fastqc_Miriam            /home/lab13/miniconda3/envs/fastqc_Miriam
# ipyrad_envArely          /home/lab13/miniconda3/envs/ipyrad_envArely
# ipyrad_envNestor         /home/lab13/miniconda3/envs/ipyrad_envNestor
# ipyrad_envPicazo         /home/lab13/miniconda3/envs/ipyrad_envPicazo
```

Activamos el ambiente hecha en python **fastqc_Miriam** usando el siguiente comando

```
conda activate fastqc_Miriam

#### # Van a observar que del usuario base se a activar al ambiente especificado
# (base) [lab13@host-132 Equipo11]$ conda activate fastqc_Miriam
# (fastqc_Miriam) [lab13@host-132 Equipo11]$

```

Para ver que está instalado fastQC y MultiQC, corran el siguiente comando

```
##### Para FastQC
fastqc --help
#            FastQC - A high throughput sequence QC analysis tool
#
# SYNOPSIS

#	fastqc seqfile1 seqfile2 .. seqfileN
#
#    fastqc [-o output dir] [--(no)extract] [-f fastq|bam|sam]
#           [-c contaminant file] seqfile1 .. seqfileN


##### Para MultiQC
multiqc --help

#  /// MultiQC 🔍 v1.33
#  Usage: multiqc [OPTIONS] [ANALYSIS DIRECTORY]

#  MultiQC aggregates results from bioinformatics analyses across many samples into a single report.
# It searches a given directory for analysis logs and compiles an HTML report. It's a general use tool,
# perfect for summarising the output from numerous bioinformatics tools.
# To run, supply with one or more directory to scan for analysis results. For example, to run in the current
# working directory, use 'multiqc .'
```

Vamos a crear un directorio donde vamos a guardar la evaluación de la calidad del llamado de bases antes del ensamblado y posteriormente correr fastqc y multiqc

```
##### Crear la carpeta 
mkdir QC_AntesDelEnsamble

##### Correr FastQC
fastqc raw_data/* -o QC_AntesDelEnsamble/
# application/gzip
# application/gzip
# application/gzip
# application/gzip
# application/gzip
# application/gzip
# Started analysis of MBC1_S1_L001_R1_001.fastq.gz
# Approx 5% complete for MBC1_S1_L001_R1_001.fastq.gz
# Approx 10% complete for MBC1_S1_L001_R1_001.fastq.gz
# Approx 15% complete for MBC1_S1_L001_R1_001.fastq.gz
#Approx 20% complete for MBC1_S1_L001_R1_001.fastq.gz

##### Ver los archivos que se generaron 
ls -lh QC_AntesDelEnsamble/
# total 11M
# -rw-r--r--. 1 lab13 lab13  950K Apr 30 00:08 MBC1_S1_L001_R1_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  824K Apr 30 00:08 MBC1_S1_L001_R1_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13 1019K Apr 30 00:08 MBC1_S1_L001_R2_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  948K Apr 30 00:08 MBC1_S1_L001_R2_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13  938K Apr 30 00:08 MBC2_S2_L001_R1_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  799K Apr 30 00:08 MBC2_S2_L001_R1_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13 1022K Apr 30 00:08 MBC2_S2_L001_R2_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  944K Apr 30 00:08 MBC2_S2_L001_R2_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13  936K Apr 30 00:08 MBC3_S3_L001_R1_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  791K Apr 30 00:08 MBC3_S3_L001_R1_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13 1016K Apr 30 00:08 MBC3_S3_L001_R2_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  937K Apr 30 00:08 MBC3_S3_L001_R2_001_fastqc.zip
```

```
# Correr MultiQC
multiqc QC_AntesDelEnsamble/ -o QC_AntesDelEnsamble/

# /// MultiQC 🔍 v1.33

#     version_check | MultiQC Version v1.34 now available!
#       file_search | Search path: /home/lab13/Documents/Ecologia2026/Equipo11/QC_AntesDelEnsamble
#         searching | ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ 100% 12/12
#            fastqc | Found 6 reports
#     write_results | Data        : QC_AntesDelEnsamble/multiqc_data
#     write_results | Report      : QC_AntesDelEnsamble/multiqc_report.html
#           multiqc | MultiQC complete

# Después del multiqc

ls -lh QC_AntesDelEnsamble/
# -rw-r--r--. 1 lab13 lab13  950K Apr 30 00:08 MBC1_S1_L001_R1_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  824K Apr 30 00:08 MBC1_S1_L001_R1_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13 1019K Apr 30 00:08 MBC1_S1_L001_R2_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  948K Apr 30 00:08 MBC1_S1_L001_R2_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13  938K Apr 30 00:08 MBC2_S2_L001_R1_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  799K Apr 30 00:08 MBC2_S2_L001_R1_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13 1022K Apr 30 00:08 MBC2_S2_L001_R2_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  944K Apr 30 00:08 MBC2_S2_L001_R2_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13  936K Apr 30 00:08 MBC3_S3_L001_R1_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  791K Apr 30 00:08 MBC3_S3_L001_R1_001_fastqc.zip
# -rw-r--r--. 1 lab13 lab13 1016K Apr 30 00:08 MBC3_S3_L001_R2_001_fastqc.html
# -rw-r--r--. 1 lab13 lab13  937K Apr 30 00:08 MBC3_S3_L001_R2_001_fastqc.zip
# drwxr-xr-x. 2 lab13 lab13  4.0K Apr 30 00:11 multiqc_data
# -rw-r--r--. 1 lab13 lab13  2.4M Apr 30 00:11 multiqc_report.html
```

Descar de archivos con **[mobaxterm](https://mobaxterm.mobatek.net/)**


Con mobaxter hay que proporcionarle la dirección ip del servidor, la contraseña y la carpeta donde se quiere almacenar la información.

Una vez que se terminó de usar el ambiente de conda hay que desactivarlo y usaremos el siguiente comando.

```
conda deactivate
```

## 2a. Ensamblaje de lecturas

Crear un directorio donde se almacenaran los archivos ensamblados

```
mkdir ensamblaje
```

Hacer un script para correr el ensamblaje de las lecturas con el editor de vim

```
vim ensamblaje.sh
```

Copiar el siguiente código para hacer el ensamble de las lecturas

```
#!/bin/bash

fastq=($(ls raw_data/*.gz))
tLen=${#fastq[@]}
for (( i=0; i<${tLen}; i=i+2));
do
x=${fastq[$i]##*/}
pear -f ${fastq[$i]} -r ${fastq[$i+1]} -o ensamblaje/${x%_L*} -j 2 -q 20
done
wait
echo done
```

Dar permiso a nuestro script y posteriormente realizar la ejecición

```
# Darle permiso
sudo chmod u+x ensamblaje.sh

# Ejecutar el script
bash ensamblaje.sh
```

Una vez que se termina de ejecutar el script, usar el comando ls para ver los archivos que se generaron del programa de pear

```
ls -lh ensamblaje

# -rw-r--r--. 1 lab13 lab13 42M Apr 30 09:55 MBC1_S1.assembled.fastq
# -rw-r--r--. 1 lab13 lab13   0 Apr 30 09:54 MBC1_S1.discarded.fastq
# -rw-r--r--. 1 lab13 lab13 42K Apr 30 09:55 MBC1_S1.unassembled.forward.fastq
# -rw-r--r--. 1 lab13 lab13 14K Apr 30 09:55 MBC1_S1.unassembled.reverse.fastq
# -rw-r--r--. 1 lab13 lab13 50M Apr 30 09:56 MBC2_S2.assembled.fastq
# -rw-r--r--. 1 lab13 lab13   0 Apr 30 09:55 MBC2_S2.discarded.fastq
# -rw-r--r--. 1 lab13 lab13 61K Apr 30 09:56 MBC2_S2.unassembled.forward.fastq
# -rw-r--r--. 1 lab13 lab13 18K Apr 30 09:56 MBC2_S2.unassembled.reverse.fastq
```


El siguiente paso es hacer una carpeta para guardar sólo las lecturas ensambladas 

```
# Hacer directorio
mkdir ensamblados

# Mover las lecturas ensambladas en la carpeta creada
mv ensamblaje/*assembled.fastq ensamblados

# Ver el contenido de la carpeta ensablados

ls -lh ensamblados/

# total 137M
# -rw-r--r--. 1 lab13 lab13 42M Apr 30 09:55 MBC1_S1.assembled.fastq
# -rw-r--r--. 1 lab13 lab13 50M Apr 30 09:56 MBC2_S2.assembled.fastq
# -rw-r--r--. 1 lab13 lab13 46M Apr 30 09:57 MBC3_S3.assembled.fastq
```

## 2b. Evaluación de la calidad después del ensamble

Vamos a seguir el mismas instrucciones que en el paso 1

```
# Activamos el ambiente de conda
conda activate fastqc_Miriam

# Crear una carpeta donde almacenaremos el análisis de calidad
mkdir QC_DespuesDelEnsamble

# Correr FastQC
fastqc ensamblados/* -o QC_DespuesDelEnsamble/

# Ver los archivos que se generaron 
ls -lh QC_DespuesDelEnsamble/

# Realizar el análisis de MultiQc
multiqc QC_DespuesDelEnsamble/ -o QC_DespuesDelEnsamble/

# Ver el reporte final de multiqc
ls -lh QC_DespuesDelEnsamble

```

Descar de archivos con mobaxterm

Posteriormente desactivamos el ambiente de conda con el siguiente comando

```
conda deactivate

```

## 3. QIIME2

Antes de correr QIIME2 vamos hacer un carpeta donde almacenaremos nuestros datos: i) manifest.tsv y ii) sample-metadata.txt

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


