# Introducción a Linux

## 1. Linux


Un sistema operativo (SO) es un conjunto de órdenes y programas que controlan los procesos básicos de una computadora y permiten el funcionamiento de otros programas.

Linux es un SO diseñado por cientos de programadores de todo el planeta. El principal responsable del proyecto es [Linus Torvalds](https://www.cisinformatica.cat/es/quien-es-linus-torvalds-el-padre-de-linux/).

Su principal objetivo es impulsar el software de **libre distribución** junto con su **código fuente** para que pueda ser modificado por cualquier persona.

### Línea de tiempo de los SO

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/TimelineOS.jpg? raw=true" alt="shell" width="1000" height="600">
</p>

### ¿Por qué usar Linux y no Windows?

| Ventajas de usar Windows                 | Ventajas de usar Linux                                                     |
|------------------------------------------|----------------------------------------------------------------------------|
| 1. Es fácil de Usar                      | 1. Software de libre distribución                                          |
| 2. Amplio catálogo de software comercial | 2. Aprovechamiento de hardware                                             |
| 3. Compatibilidad de hardware            | 3. Es seguro y fiable                                                      |
|                                          | 4. Completamente personalizable                                            |
|                                          | 5. Modular                                                                 |
|                                          | 6. Su desarrollo es independiente a los intereses de grandes corporaciones |
|                                          | 7. Multitarea y multiusuario                                               |
|                                          | 8. Administrador                                                           |


<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/LinuxVsWindows.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Hardware y software

Hardware: Conjunto de elementos físicos o materiales que constituyen una computadora.

Software: Programas para realizar determinadas tareas

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/HardwareSoftware.jpg? raw=true" alt="shell" width="1000" height="600">
</p>

### Kernel

El **[kernel](https://linuxsimply.com/what-is-kernel/)** es el componente de software encargado de controlar la computadora (hardware).

Controla el acceso a cada recurso (memoria, CPU, disco duro, tarjeta de vídeo).

Ordena el acceso a la(s) CPU(s) de los programas.

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/Kernel.png? raw=true" alt="shell" width="500" height="600">
</p>

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/HardwareSoftware2.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Shell

El Shell permite interactuar con el sistema (vía el kernel).

Lee los comandos tecleados por el usuario y los ejecuta.
  
El shell puede servir como base para escribir scripts (tareas más complejas).

Existen varios Shell disponibles (lista no exhaustiva): 

* Bourne shell (sh)
* Korn shell (ksh)
* C shell (csh)
* Bash shell (bash)
* Z shell (zsh) 

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/shell.png? raw=true" alt="shell" width="1000" height="400">
</p>

### Las responsabilidades de shell

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/ActividadesShell.png? raw=true" alt="shell" width="1000" height="600">
</p>

### bash

Bash es amigable.

Las flechas ↑ y ↓ permiten navegar dentro del historial de los comandos.

La tecla ”tabulador” [TAB] permite auto-completar los nombres de los archivos y/o comandos.

Gestión de jobs en segundo plano (background).

Posibilidad de definir alias.

### Sistema de archivos

El sistema de archivos representa el método con el cual el sistema operativo organiza los datos. 

Incluye los archivos, y tambien los directorios ( o carpetas)

El referencial de todo el sistema de archivo de una máquina es el caracter **“/"**

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/EstructuraLinux.png? raw=true" alt="shell" width="1000" height="600">
</p>

### Tengo una PC que corre windows, ¿cómo puedo correr Linux en mi máquina? 

1. Puedes instalar Linux en una nueva partición (recomendable siempre y cuando tengas una computadora que tenga una buena memoria RAM). descargas gratuitas de distribuciones desde:
   
=> 1. **[Ubuntu 22.04.1 LTS](https://ubuntu.com/download/desktop)**

=> 2. **[Centos](https://www.centos.org/download/)**

=> 3. **[Fedora](http://fedoraproject.org/es/)**


<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/DistribucionesLinux.png? raw=true" alt="shell" width="600" height="600">
</p>

2. Puedes instalar **[MobaXterm](https://mobaxterm.mobatek.net/download.html)**, que proporciona una terminal para Windows con un servidor de ambiente gráfico X11, un cliente SSH para establecer sesiones remotas seguras con un servidor, diversas herramientas de red y más. 

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/MobaxTermn.png? raw=true" alt="shell" width="800" height="800">
</p>

### Uso de MobaXterm para establecer sesiones remotas a un servidor vía protocolo SSH

Para establecer una conexión remota vía SSH elige el protocol SSH (secure shell) y usa la IP, usuario y contraseña indicados en el taller

SSH es un protocolo que permite conectarse de forma segura a otro computador o servidor a través de una red (normalmente internet) para ejecutar comandos, transferir archivos o administrar sistemas de forma remota.

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/AnalisisGenomico-EcologiaFESIztacala/blob/main/Unidad1/Figuras/MobaXterm_Conexion.png? raw=true" alt="shell" >
</p>

Una vez establecida la sesión remota al servidor, estarán trabajando en él!

● El panel mostrado a la izquierda les sirve para navegar el sistema remoto,pero lo haremos desde la línea de comandos que nos ofrece la terminal (área negra).

● Pueden abrir más pestañas en la terminal. Estas serán sesiones locales (si no hacen ssh).


<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/AnalisisGenomico-EcologiaFESIztacala/blob/main/Unidad1/Figuras/MobaXterm_2.png? raw=true" alt="shell" >
</p>

### Otras opciones

=> 1. Usar la terminal en entorno de Windows 10. Acceder a la terminal y comunicarnos con el servidor.

=> 2. Usar Rstudio, en la pestaña tools, seleccionar terminal. Acceder y comunicarnos con el servidor.

Usaremos el servidor del lab13 de la UBIMED de la FES Iztacala. $${\color{red}NOTA \space IMPORTANTE: \space no \space acceder \space después \space del \space curso}$$

El servidor es una máquina con 8 núcleos y 16G de RAM.

Esta máquina cuenta con los programas que se usarán en el curso.

## 2. Conexión al servidor

### Tipos de Shell

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/LocalRemota.jpg? raw=true" alt="shell" width="1000" height="600">
</p>

## Terminal
<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/blob/main/PresentacionesEnClase_Bioinformatica/Figuras/shell2.jpg? raw=true" alt="shell" width="1000" height="600">
</p>

## Conexión remota

**ssh user@host**

**ssh lab13@132.248.216.138**

**ssh hectormartinez@132.248.216.138**

**ssh felipevaca@132.248.216.138**

**ssh claraestela@132.248.216.138**

Vamos a acceder al servidor con la siguiente dirección **ip**

```
ssh lab13@132.248.216.138
```

## 3. Introducción a línea de comandos

### ¿Dónde encuentro una descripción básica de los comandos disponibles? 

[lista de comandos útiles](https://github.com/Martinez-Gregorio-Hector/Curso_UJAT/tree/main/MaterialDeApoy)


* En Wikipedia: **[Linux commands](http://en.wikibooks.org/wiki/Linux_Guide/Linux_commands)** y **[List of Unix programs](http://en.wikipedia.org/wiki/List_of_Unix_programs)**


* Un sencillo tutorial (caps 1-5): **[Unix](http://www.ee.surrey.ac.uk/Teaching/Unix/)**

* **[intro2linux](https://vinuesa.github.io/intro2linux/index.html)**


```
command [-flag(s)] [-option(s)] [value] [argument(s)]
```

Una vez que accedemos al servidor nos dirigimos a la carpeta de Ecologia2026

```
cd Documents/Ecologia2026
```


## comando cd

el comando **cd** (change directory) se usa para mover la sesión de shell a otro directorio del sistema de archivos de Linux. La sintaxis del comando cd es bastante simple: **cd destino**. El comando **cd** puede tener un solo parámetro, destino, que especifica el nombre del directorio al que se desea acceder. Si no se especifica un destino en el comando cd, lo llevará a su directorio personal.

```
cd
cd /home/lab13/Documents/Ecologia2026
```

El parámetro de destino se puede expresar mediante dos métodos diferentes. Un método utiliza una **ruta absoluta** o una **ruta relativa** al directorio.

<p align="center">  
  <img src="Figuras/Rutas.jpg? raw=true" alt="shell" width="600" height="600">
</p>

Supongamos que estoy en el directorio **dir_001** y quiero dirigirme a **dir_002**, se puede hacer de dos maneras, siguiento una **ruta absoluta** o una **ruta relativa**

```
## Ruta absoluta
cd /home/filogenomica/dir_002
## Ruta relativa
cd ../dir_002
```
Para nuestra actividad vamos a trabajar en el directorio de Ecologia2026, si todavía no estás en la carpeta puedes utilizar la siguiente **ruta absoluta** para que puedas llegar al directorio

```
cd /home/lab13/Documents/Ecologia2026
```

## comando pwd 

El comando **pwd** (print work directory) muestra la ubicación del directorio actual de la sesión de shell

```
pwd
## /home/lab13/Documents/Ecologia2026
```

## comando ls

El comando **ls** en su forma más básica muestra los archivos y directorios ubicados en su directorio actual. Ten en cuenta que el comando **ls** genera la lista en orden alfabético (en filas en lugar de columnas).

```
ls

## Alumnos  Equipo01  Equipo02  Equipo03  Equipo04  Equipo05
## Equipo06  Equipo07  Equipo08  Equipo09  Equipo10
```

El comando **ls** puede combinar con opciones, para ver esas opciones se corre **ls** con **help**

```
ls --help

## -a list all (lista archivo ocultos tipo .directorio o .archivo)
## -l long format (muestra permisos y otros atributos como usuario, grupo, tamaño del archivo y fecha de modificación)
## -t time sort (ordena por tiempo)
## -r reverse sort
## -R list subdirectories recursively
## -S size sort (ordena por tamaño)
## -h human readable (indica Kb, Mb, Gb …)
## etc ...
```

En los listados básicos, el comando **ls** no genera mucha información sobre cada archivo. Para obtener información adicional, otro parámetro popular es **-l**. El parámetro **-l** genera un formato de listado largo, que proporciona más información sobre cada archivo del directorio.

```
ls -lh

## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Alumnos
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo01
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo02
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo03
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo04
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo05
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo06
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo07
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo08
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo09
## drwxr-xr-x. 2 lab13 lab13 6 Apr 22 22:16 Equipo10
```

Vamos a entrar en la carpeta de **Alumnos**. Recuerden para entrar a la carpeta utilizamos el comando **cd**

```
cd Alumnos
```


## comando mkdir

Dentro de la carpeta Alumnos vamos a crear un directorio con nuestro nombre con el comando **mkdir**, por ejemplo, mi nombre es Hector Martinez, voy a crear un directorio con el nombre de HectorMartinez.

Algunas recomendaciones para nombrar directorio o archivos:

* Nombra todos tus archivos en minúsculas.
* En lugar de un espacio, usa un guion bajo (_) o un guion corto (–).
* Utiliza formatos de archivo consistentes. Usa jpg o jpg.
* Solo utiliza caracteres alfanuméricos, puntos, guiones bajos y guiones; no uses símbolos como % y $.
* Los nombres de los archivos deben ser cortos y descriptivos.

  Vamos a crear los siguientes directorio
  
```
mkdir Hector Martinez
mkdir HectorMartinez
```
Vamos a ver que carpetas tenermos en nuestros directorio

```
ls -lh

## drwxr-xr-x 2 magh staff 64 may  6 23:09 Hector
## drwxr-xr-x 2 magh staff 64 may  6 23:09 HectorMartinez
## drwxr-xr-x 2 magh staff 64 may  6 23:09 Martinez
```

## Comando rmdir 

Para eliminar directorios usamos el comando **rmdir** seguido del directorio que queremos eliminar

```
# Eliminar directorio
rmdir Hector

# Ver que directorios tenemos en nuestras carpetas
ls -lh

drwxr-xr-x. 2 lab13 lab13 6 May 10 18:50 HectorMartinez
drwxr-xr-x. 2 lab13 lab13 6 May 10 18:49 Martinez
```
## Comando mv

El comando **mv** se usa para dos cosas: i) mover un directorio a otro lugar y ii) renombrar archivos. La sintáxis básica de mv es la siguiente: **mv** [Directorio y/o Nombre del archivo] [Lugar del nuevo directorio y/o nombre del archivo]

```
mv Martinez MAGH

##
ls -lh

## drwxr-xr-x. 2 lab13 lab13 6 May 10 18:50 HectorMartinez
## drwxr-xr-x. 2 lab13 lab13 6 May 10 18:49 MAGH

```

## Comando touch

El comando touch se usa para crear archivos vacíos. Vamos a crear unos archivos vacrios con el siguiente comando 

```
touch my_scr{a,e,i,o,u}

ls -lh

## -rw-r--r--. 1 lab13 lab13 0 May 10 19:02 my_scrapt
## -rw-r--r--. 1 lab13 lab13 0 May 10 19:02 my_scrept
## -rw-r--r--. 1 lab13 lab13 0 May 10 19:02 my_script
## -rw-r--r--. 1 lab13 lab13 0 May 10 19:02 my_scropt
## -rw-r--r--. 1 lab13 lab13 0 May 10 19:02 my_scrupt
```

El comando ls también reconoce caracteres comodín estándar y los utiliza para encontrar patrones dentro del filtro:
■ Un signo de interrogación (?) para representar un carácter
■ Un asterisco (*) para representar cualquier número de caracteres

```
ls -lh my_scr?pt

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrapt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrept
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_script
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scropt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrupt

ls -lh my*

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrapt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrept
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_script
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scropt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrupt
```

El asterisco busca tres archivos diferentes, comenzando con el nombre "my". Al igual que con el signo de interrogación, puede colocar los asteriscos en cualquier parte del filtro:

```
ls -lh my_s*t

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrapt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrept
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_script
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scropt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrupt

```

El uso del asterisco y el signo de interrogación en el filtro se denomina "globbing" de archivos. El "globbing" de archivos consiste en procesar la coincidencia de patrones mediante comodines. Los comodines se denominan oficialmente comodines de metacaracteres. Se pueden usar más comodines de metacaracteres para el "globbing" de archivos que solo el asterisco y el signo de interrogación. También se pueden usar corchetes.

```
ls -l my_scr[ai]pt

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrapt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_script

ls -l my_scr[a-i]pt

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrapt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrept
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_script

```

También puedes especificar qué no debe incluirse en la coincidencia de patrones utilizando el signo de exclamación (!):

```
ls -l my_scr[!i]pt

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrapt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrept
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scropt
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:32 my_scrupt

```
## Manejo de archivos

De vez en cuando, es necesario crear un archivo vacío. Por ejemplo, a veces las aplicaciones esperan que exista un archivo de registro antes de poder escribir en él. En estas situaciones, se puede usar el comando *`touch`* para crear fácilmente un archivo vacío:

```
touch test_one
ls -l test_one

## --rw-r--r--. 1 lab13 lab13 0 Aug 11 00:51 test_one

```
## Copiando archivos

Copiar archivos y directorios de una ubicación a otra en el sistema de archivos es una práctica común para los administradores de sistemas. El comando *_cp_* proporciona esta función.

En su forma más básica, el comando cp utiliza dos parámetros: el objeto de origen y el objeto de destino: *_cp fuente destino_*  

```
cp test_one test_two
ls -lh test*

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 00:51 test_one
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:26 test_two

```

El parámetro -R es una potente opción del comando cp. Permite copiar recursivamente el contenido de un directorio completo con un solo comando: *_cp -R Scripts/ Mod_Scripts_*

## Renombrando archivos

En Linux, renombrar archivos se llama mover archivos. El comando *_mv_* permite mover archivos y directorios a otra ubicación o a un nuevo nombre:

```
ls -lh f?ll

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:33 fall
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:33 fell
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:33 fill

mv fall fzll
ls -lh f?ll

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:33 fell
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:33 fill
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:33 fzll

```

## Eliminando archivos

Lo más probable es que en algún momento quieras poder eliminar archivos existentes. Ya sea para limpiar un sistema de archivos o para eliminar un paquete de software, siempre tienes la oportunidad de eliminar archivos.

En Linux, eliminar se llama remover. El comando para eliminar archivos en la shell bash es **rm**. La forma básica del comando **rm** es simple:


```
rm fzll 

ls -lh f?ll 

## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:33 fell
## -rw-r--r--. 1 lab13 lab13 0 Aug 11 07:33 fill

rm f?ll 
```

## Visualización del archivo

Si tiene un archivo de texto grande, quizás quiera ver su contenido. Linux cuenta con tres comandos diferentes que pueden ayudarle

El comando **cat** es una herramienta útil para mostrar todos los datos dentro de un archivo de texto

```
wget https://raw.githubusercontent.com/Martinez-Gregorio-Hector/AnalisisGenomico-EcologiaFESIztacala/refs/heads/main/Unidad1/Datos/flights.csv

##
cat flights.csv

## 2011-12-11 12:00:00,10,22,1022,1342,-3,-4,"US",1174,"CLT","N433US",0,117,912
## 2011-12-11 12:00:00,8,48,848,1201,-3,-15,"US",1220,"CLT","N458UW",0,112,912
## 2011-12-11 12:00:00,17,35,1735,2045,-5,-20,"US",1679,"CLT","N445US",0,113,912
## 2011-12-11 12:00:00,6,55,655,1003,-5,-22,"US",1696,"CLT","N405US",0,109,912
## 2011-12-11 12:00:00,12,8,1208,1527,8,5,"US",1702,"CLT","N451UW",0,122,912
## 2011-12-11 12:00:00,7,59,759,1152,-1,-21,"US",1820,"PHL","N953UW",0,160,1325

```

Con _*cat*_ solo observamos el contenido del archivo de texto. Sin embargo, el comando cat tiene algunos parámetros que puede ayudar. El parámetro -n numera todas las líneas automáticamente:

```
cat -n flights.csv

## 227492	2011-12-06 12:00:00,13,7,1307,1600,7,0,"WN",471,"TPA","N632SW",0,98,781
## 227493	2011-12-06 12:00:00,18,18,1818,2111,8,-9,"WN",1191,"TPA","N284WN",0,97,781
## 227494	2011-12-06 12:00:00,20,47,2047,2334,7,4,"WN",1674,"TPA","N366SW",0,94,781
## 227495	2011-12-06 12:00:00,9,12,912,1031,-3,-4,"WN",127,"TUL","N777QC",0,61,453
## 227496	2011-12-06 12:00:00,6,56,656,812,-4,-13,"WN",621,"TUL","N727SW",0,64,453
## 227497	2011-12-06 12:00:00,16,0,1600,1713,0,-12,"WN",1597,"TUL","N745SW",0,59,453
```
Esta función será útil al examinar scripts. Si solo desea numerar las líneas que contienen texto, el parámetro -b es ideal.

Por último, si no desea que aparezcan caracteres de tabulación, utilice el parámetro -T.



## Una alternative de cat es more, less, tail, head

Con **head** y **tail** puedes especificar con -n para ver cuantas líneas quieres ver en tu terminal

```
head -n 8 flights.csv 

##"date","hour","minute","dep","arr","dep_delay","arr_delay","carrier","flight","dest","plane","cancelled","time","dist"
## 2011-01-01 12:00:00,14,0,1400,1500,0,-10,"AA",428,"DFW","N576AA",0,40,224
## 2011-01-02 12:00:00,14,1,1401,1501,1,-9,"AA",428,"DFW","N557AA",0,45,224
## 2011-01-03 12:00:00,13,52,1352,1502,-8,-8,"AA",428,"DFW","N541AA",0,48,224
## 2011-01-04 12:00:00,14,3,1403,1513,3,3,"AA",428,"DFW","N403AA",0,39,224
## 2011-01-05 12:00:00,14,5,1405,1507,5,-3,"AA",428,"DFW","N492AA",0,44,224
## 2011-01-06 12:00:00,13,59,1359,1503,-1,-7,"AA",428,"DFW","N262AA",0,45,224
## 2011-01-07 12:00:00,13,59,1359,1509,-1,-1,"AA",428,"DFW","N493AA",0,43,224
```

## Uso de variables

El shell bash utiliza una función llamada variables de entorno para almacenar información sobre la sesión del shell y el entorno de trabajo (de ahí el nombre de variables de entorno). Esta función también permite almacenar datos en memoria a los que cualquier programa o script que se ejecute desde el shell puede acceder fácilmente. Es una forma práctica de almacenar datos persistentes necesarios.

Existen dos tipos de variables de entorno en el shell bash:

* Variables globales

* Variables locales

Para ver las variables de entorno globales, utilice el comando **env** o **printenv**

```
env | head -n 7

## TERM_PROGRAM=Apple_Terminal
## SHELL=/bin/zsh
## TERM=xterm-256color
## TMPDIR=/var/folders/lz/_pw1ngjd2b5gs47g9x2sy6pr0000gn/T/
## TERM_PROGRAM_VERSION=453
## TERM_SESSION_ID=04F1D001-5AF4-4EB5-9F0E-7A5CFF702EF7
## USER=magh

echo $USER

## magh
```
## Variables locales


Tras iniciar bash (o generar un script), se pueden crear variables locales definidas por el usuario, visibles en el proceso de shell. Se puede asignar un valor numérico o de cadena a una variable de entorno, asignándola a un valor con el signo igual:

```
my_variable=Hello 
echo $my_variable
```

## Permisos

## Usuario, grupo y resto del mundo (User, Group, Others …) y permisos 

En sistemas UNIX y GNU/Linux cada archivo y directorio tiene unos permisos determinados de 

*lectura=𝑟

*escritura=𝑤

*ejecución=𝑥

para el usuario, grupo y resto del mundo, asignados en ese orden (UGO). Un archivo regular, escrito por el usuario tiene los siguientes permisos por defecto, como muestra el comando 𝑙𝑠−𝑙

```
ls -l | grep odp
-rw-r--r-- 1 vinuesa vinuesa 2993606 sep 30 10:52 intro_biocomputo_Linux_LCG.odp

```

Veamos lo que quiere decir. Para ello necesitamos separar la cadena de caracteres en los siguientes componentes

```
   U   G   O       usuario grupo
1  2   3   4  5    6       7
-|rw-|r--|r-- 1 vinuesa vinuesa

donde:

1. la posición 1 (-) indica que se trata de un archivo regular. Un directorio se indica con "d" y una liga simbólica con "l"
2. El grupo 2,3 y 4 de caraceres indican el "modo" del archivo (permisos) para el usuario (U), grupo (G) y otros (resto del mundo O), 
   separados por "|" para facilitar su visualización.
   En este caso el usuario tiene permisos de lectura (r) y escritura (w) sobre el archivo que no es ejecutable (-)
   El grupo y el resto del mundo sólo pueden leer el archivo, pero no modificarlo.
```

## Tabla de atributos de los permisos

La siguiente tabla resume los atributos que tienen los permisos 𝑟, 𝑤, 𝑥 sobre archivos regulares y directorios:

```
| Atributo | Archivos                                       | Directorios                                  |
|:--------:|------------------------------------------------|----------------------------------------------|
| r        | abrir y leer                                   | listar contenidos si tiene +x                |
| w        | editar pero no renombrar/borrar (atributo dir) | permite generar archivos en dir, si tiene +x |
| x        | permite ejecutra archivo (programa) si +r      | permite entrar al directorio                 |
```

## chmod - cambiar el modo (permisos) de un archivo o directorio

Hay dos maneras de hacerlo:

### 1 Usando notación simbólica para U|G|O y todos (a)


```
| Símbolo | Significado                                |
|:-------:|--------------------------------------------|
| u       | usuario, el dueño del archivo o directorio |
| g       | dueño del gruop                            |
| o       | otros (resto del mundo)                    |
| a       | todos (all); combinación de u,g,o          |

```

Ejemplos: 𝑐ℎ𝑚𝑜𝑑 𝑛𝑜𝑡𝑎𝑐𝑖ó𝑛 𝑎𝑟𝑐ℎ𝑖𝑣𝑜|𝑑𝑖𝑟

```
|  Notación  | Significado                                |
|:----------:|--------------------------------------------|
| u+x        | da permiso de ejecución a usuario          |
| u-x        | revoca permiso de ejecución a usuario      |
| o-r        | otros (resto del mundo) no puede leer      |
| +x         | equivale a a+x                             |
| o-rw       | quitar a otros permisos de rw              |
| u+x,go=-rx | asignar +x a U, revocar a O permisos de rx |
```

𝑐ℎ𝑚𝑜𝑑 𝑎+𝑟𝑥 𝑠𝑐𝑟𝑖𝑝𝑡.𝑠ℎ hace el archivo script.sh leíble y ejecutable para todos


### 2 Usando representación octal

Los sistemas de numeración 𝑜𝑐𝑡𝑎𝑙 (base 8) y su primo el ℎ𝑒𝑥𝑎𝑑𝑒𝑐𝑖𝑚𝑎𝑙 (base 16) se usan frecuentemente para expresar números en computadoras.

Los humanos usamos el sistama 𝑑𝑒𝑐𝑖𝑚𝑎𝑙 ya que (la mayoría) tenemos 10 dedos. Las computadoras en cambio “nacieron con un solo dedo”, por lo que cuentan usando el sistema 𝑏𝑖𝑛𝑎𝑟𝑖𝑜 (base 2) usando sólo 1s y 0s. Por tanto en binario, contamos así: 0,1, 10,11, 100,101, 110,111 …

En 𝑜𝑐𝑡𝑎𝑙, contamos así: 0,1,2,3,4,5,6,7, 10,11,12,13,14,15,16,17, 20,21 …

Usando una cadena de tres dígitos octales, podemos de manera muy conveniente definir el modo de un archivo para U|G|O acorde a la siguiente tabla

```
| octal | binario | modo del archivo |
|:-----:|---------|------------------|
| 0     | 000     | —                |
| 1     | 001     | –x               |
| 2     | 010     | -w-              |
| 3     | 011     | -wx              |
| 4     | 100     | r–               |
| 5     | 101     | r-x              |
| 6     | 110     | rw-              |
| 7     | 111     | rwx              |
```

De modo que combinando los octales

READ = 4

WRITE = 2

EXECUTE = 1

con las posiciones U|G|O, define los modos:

```
| USER  | GROUP | OTHERS | MODE |
|-------|-------|--------|------|
| r w x | r w x | r w x  | UGO  |
| 4 2 0 | 0 0 0 | 0 0 0  | 600  |
| 4 2 1 | 4 0 1 | 4 0 1  | 755  |
```

```
𝑐ℎ𝑚𝑜𝑑 755 𝑠𝑐𝑟𝑖𝑝𝑡.𝑠ℎ
𝑐ℎ𝑚𝑜𝑑 700 𝑠𝑐𝑟𝑖𝑝𝑡.𝑠ℎ
𝑐ℎ𝑚𝑜𝑑 644 𝑠𝑐𝑟𝑖𝑝𝑡.𝑠ℎ
```
## Editor de script

* [Visual Studio Code](https://code.visualstudio.com/)
* [Atom](https://atom-editor.cc/)

# Editor de texto vim

El editor **vi** fue el editor original utilizado en sistemas Unix. Utilizaba el modo gráfico de consola para emular una ventana de edición de texto, lo que permitía ver las líneas de un archivo, navegar por él e insertar, editar y reemplazar texto.

Aunque posiblemente fuera el editor más complejo del mundo, ofrece numerosas funciones que lo han convertido en un elemento básico para los administradores de Unix durante décadas.

Cuando el Proyecto GNU adaptó el editor **vi** al mundo del código abierto, decidió realizar algunas mejoras. Dado que ya no se parecía al editor **vi** original disponible en Unix, los desarrolladores también lo renombraron como **vi** mejorado o **vim**.

## Explorando vim basico

El editor **vim** trabaja con datos en un búfer de memoria. Para iniciarlo, simplemente escriba el comando **vim** (o vi si hay un alias o un archivo vinculado) y el nombre del archivo que desea editar:

```
vim test1.sh
```

Si inicia **vim** sin un nombre de archivo, o si el archivo no existe, vim abre un nuevo búfer para su edición. Si especifica un archivo existente en la línea de comandos, **vim** lee todo el contenido del archivo en un búfer, donde está listo para su edición.

El editor vim tiene dos modos de funcionamiento:

■ Modo normal

■ Modo de inserción

Al abrir un archivo por primera vez (o crear uno nuevo) para editarlo, el editor **vim** entra en modo normal. En modo normal, el editor **vim** interpreta las pulsaciones de teclas como comandos (más información más adelante). 

En el modo de inserción, **vim** inserta cada tecla que pulsas en la posición actual del cursor en el búfer. Para entrar en el modo de inserción, pulsa la tecla **i**. Para salir del modo de inserción y volver al modo normal, pulsa la tecla **escape**.

Dentro del modo de línea de comandos -inserición- hay varios comandos para guardar el búfer en el archivo y salir de vim:

■ q para salir si no se han realizado cambios en los datos del búfer

■ q! Para salir y descartar cualquier cambio realizado en los datos del búfer.

■ w nombre_archivo para guardar el archivo con un nombre diferente.

■ wq para guardar los datos del búfer en el archivo y salir.

```
## Después de que hayas hecho un script, para salir presione **scape** y después **:wq**

Script


:wq
```

[Tutorial para principantes vim](https://www.freecodecamp.org/espanol/news/como-usar-vim-tutorial-para-principiantes/)

# Editor de texto nano

Aunque **vim** es un editor muy complejo con muchas funciones potentes, **nano** es un editor muy sencillo. Para quienes necesitan un editor de texto en modo consola sencillo y fácil de usar, **nano** es la herramienta ideal. También es un excelente editor de texto para jóvenes que se inician en la línea de comandos de Linux.

El editor de texto **nano** es un clon del editor Pico de Unix. Aunque Pico también es un editor de texto ligero y sencillo, no tiene licencia GPL. El editor de texto nano no solo tiene licencia GPL, sino que también forma parte del proyecto GNU.

El editor de texto nano viene instalado por defecto en la mayoría de las distribuciones de Linux. Todo en el editor de texto nano es sencillo. Para abrir un archivo en la línea de comandos con nano:

```
nano test2.sh
```

Una vez que se termine de redactar el script o los comandos que se utilicen para cierta actividad o análisis se tiene que guardar. Observe que en la parte inferior de la ventana del editor nano se muestran varios comandos con una breve descripción. Estos comandos son los comandos de control nano. El símbolo de intercalación (^) representa la tecla Ctrl. Por lo tanto, ^X representa la secuencia de teclado Ctrl+X. Para salir ejecutamos estas secuencias.


<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/AnalisisGenomico-EcologiaFESIztacala/blob/main/Unidad1/Figuras/nano1.png? raw=true" alt="shell" >
</p>

Posteriormente, nos va a salir otro menú y guardamos los cambios con la letra **Y**  para guardar el script o documentación que acabamos de realizar.

<p align="center">  
  <img src="https://github.com/Martinez-Gregorio-Hector/AnalisisGenomico-EcologiaFESIztacala/blob/main/Unidad1/Figuras/nano2.png? raw=true" alt="shell" >
</p>

# bash scripting básico

## Usando comandos múltiples

Hasta ahora has visto cómo usar la interfaz de línea de comandos (CLI) del shell para introducir comandos y ver sus resultados. La clave de los scripts de shell reside en la capacidad de introducir múltiples comandos y procesar los resultados de cada uno, incluso pudiendo pasar los resultados de un comando a otro. El shell permite encadenar comandos en un solo paso.

Si quieres ejecutar dos comandos a la vez, puedes introducirlos en la misma línea del prompt, separados com un **punto y coma**

```
date ; who 
```

Este sencillo script usa solo dos comandos de shell bash. El comando "date" se ejecuta primero, mostrando la fecha y hora actuales, seguido del comando "who", que muestra quién está conectado al sistema. Con esta técnica, puedes encadenar tantos comandos como desees, hasta el límite máximo de 255 caracteres de la línea de comandos.

Esta técnica es adecuada para scripts pequeños, pero tiene una desventaja importante: debes ingresar el comando completo en el símbolo del sistema cada vez que quieras ejecutarlo. En lugar de tener que ingresar manualmente los comandos en una línea de comandos, puedes combinarlos en un simple archivo de texto. Cuando necesites ejecutar los comandos, simplemente ejecuta el archivo de texto.

## Creando un bash scripting

Para colocar comandos de shell en un archivo de texto, primero debe usar un **editor de texto** para crear un archivo y luego ingresar los comandos.

Al crear un archivo de script de shell, debe especificar el shell que está usando en la primera línea del archivo. El formato es el siguiente:

```
#!/bin/bash
```

En una línea de shell scripting, el signo de almohadilla (#) se usa como línea de comentario. El shell no procesa una línea de comentario en un shell scripting. Sin embargo, la primera línea de un archivo de shell scripting es un caso especial, y el signo de almohadilla seguido del signo de exclamación le indica al shell en qué shell ejecutar el script. Haz un shell scripting usando la siguiente información, puedes guardarlo en una sesión que se llama **test3.sh** y **cambia el permiso del archivo creado: chmod u+x test3.sh**

```
#!/bin/bash

# Este script muestra la fecha y la fecha de inicio de sesión.

date
who
```


## Variables

Además de las variables de entorno, un script de shell permite configurar y usar variables propias dentro del script. Configurar variables permite almacenar datos temporalmente y usarlos en todo el script, lo que lo hace más similar a un programa real.

Las variables de usuario pueden ser cualquier cadena de texto de hasta 20 letras, dígitos o un guion bajo. Las variables de usuario distinguen entre mayúsculas y minúsculas, por lo que la variable **Var1** es diferente de la variable **var1**. Esta pequeña regla suele causar problemas a los programadores de scripts principiantes.

Los valores se asignan a las variables de usuario mediante el signo igual. No se permiten espacios entre la variable, el signo igual y el valor (otro problema para principiantes). A continuación, se muestran algunos ejemplos de asignación de valores a variables de usuario:

```
var1=10
var2=-57
var3=testing
var4="still more testing"
```

El script de shell determina automáticamente el tipo de dato utilizado para el valor de la variable. Las variables definidas dentro del script de shell mantienen sus valores durante toda su vida útil, pero se eliminan al finalizar.

Al igual que las variables de sistema, las variables de usuario pueden referenciarse mediante el símbolo de dólar:

Crear un shell scripting **test5.sh**

```
#!/bin/bash

# testing variables

days=10
guest="Katie"
echo "$guest checked in $days days ago"

days=5
guest="Jessica"
echo "$guest checked in $days days ago"
```

## Redireccionando input y output

A veces, es necesario guardar la salida de un comando en lugar de simplemente mostrarla en el monitor. El shell bash ofrece varios operadores que permiten redirigir la salida de un comando a una ubicación alternativa (como un archivo). La redirección se puede usar tanto para la entrada como para la salida, redirigiendo un archivo a un comando para la entrada. Esta sección describe cómo usar la redirección en los scripts de shell.

### redireccionando output

El tipo más básico de redirección consiste en enviar la salida de un comando a un archivo. El shell bash utiliza el símbolo mayor que (**>**) para ello:

```
command > outputfile
```

Todo lo que aparecería en el monitor a partir del comando se almacena en el archivo de salida especificado:

```
who > test8
```

A veces, en lugar de sobrescribir el contenido del archivo, puede que necesite añadir la salida de un comando a un archivo existente; por ejemplo, si está creando un archivo de registro para documentar una acción en el sistema. En este caso, puede usar el símbolo de mayor que (>>) para añadir datos:

```
who >> test8
```

## Comando for

Iterar una serie de comandos es una práctica común en programación. A menudo, es necesario repetir un conjunto de comandos hasta que se cumpla una condición específica, como procesar todos los archivos de un directorio, todos los usuarios de un sistema o todas las líneas de un archivo de texto.

La shell  proporciona el comando for para crear un bucle que itera sobre una serie de valores. Cada iteración ejecuta un conjunto definido de comandos utilizando uno de los valores de la serie. Este es el formato básico del comando for de la shell bash:

```
for var in list
do
commands
done
```
La serie de valores utilizados en las iteraciones se proporciona en el parámetro de lista. Puede especificar los valores de la lista de varias maneras.

En cada iteración, la variable **var** contiene el valor actual de la lista. La primera iteración utiliza el primer elemento de la lista, la segunda, el segundo, y así sucesivamente hasta que se hayan utilizado todos los elementos de la lista.
Los comandos introducidos entre las sentencias **do** y **done** pueden ser uno o más comandos estándar de la shell bash. Dentro de los comandos, la variable $var contiene el valor actual del elemento de la lista para la iteración.

## Leyendo valores en una lista

El uso más básico del comando **for** es iterar a través de una lista de valores definidos dentro del propio comando for:

```
#!/bin/bash

for test in Alabama Alaska Arizona Arkansas California Colorado
do 
echo The next state is $test
done

```

Otro ejemplo

```
#!/bin/bash

maullido=miau

for i in gato gatito gatón
do
echo El $i hace $maullido
done

```

# Evaluación de la calidad

## Archivos fasta o formato de Pearson
Antes de entender y analizar los archivos de la secuenciación masiva, vamos a revisar primero el formato **[fasta o Person](https://www.bioinformatics.nl/tools/crab_fasta.html)**

<p align="center">  
  <img src="Figuras/fasta.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Características del archivo fastq

<p align="center">  
  <img src="Figuras/Fastq1.png? raw=true" alt="shell" width="1000" height="600">
</p>

<p align="center">  
  <img src="Figuras/Fastq2.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Encabezado del archivo fastq

<p align="center">  
  <img src="Figuras/EncabezadoFastq.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Información de la calidad de las lecturas crudas

<p align="center">  
  <img src="Figuras/ASCII.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Nivel de calidad Phred 

<p align="center">  
  <img src="Figuras/Phred.png? raw=true" alt="shell" width="1000" height="600">
</p>

## Diagrama de cajas y bigotes

<p align="center">  
  <img src="Figuras/BoxPlot.svg? raw=true" alt="shell" width="600" height="600">
</p>

## Revisión de resultado FastQC y multiQC

**[FastQC](https://www.bioinformatics.babraham.ac.uk/projects/fastqc/)**

* **[FastQC_bueno](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/good_sequence_short_fastqc.html)**
* **[FastQC_malo](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/bad_sequence_fastqc.html)**

**[MultiQC](https://github.com/MultiQC/MultiQC)**

* **[MultiQC](https://github.com/Martinez-Gregorio-Hector/MetodosDeInvestigacionLabII_EcologiaFESIztacalaUNAM_2026/tree/main/PresentacionesEnClase_Bioinformatica/FastQC_MultiQC/multiqc_report_despues.html)**
