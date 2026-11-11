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