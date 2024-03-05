# Terminal para estudiantes



Este es un programa realizado en python que permite simular una terminal de linux con comandos especiales que resultan útiles para los estudiantes.

Se implementa la libreria tkinter para poder hacer una interfaz gráfica y archivos multimedia para tener un diseño digno de los amantes de Star Wars. 

***
### Tabla de contenidos 
1. [Pasos previos](#Pasos-previos)
2. [Contenido descargable](#Contenido)
3. [Pasos para ejecutar](#Para-ejecutar)
4. [Instrucciones de uso](#Instrucciones-de-uso)
5. [Referencias](#Referencias)

***
### Pasos previos
Para poder utilizar el programa debes de verificar que haz realizado los siguientes pasos de instalación: 

1. Instalar la última versión de python en: 
   [python.com](https://www.python.org/downloads/): version 3.12.2
3. En la terminal shell ejecutar los siguientes comandos:
   - Para instalar tkinter:
     `sudo apt install python3-tk`  
   - Para instalar pip:
     `sudo apt install python3-pip`
   - Para instalar PIL:
     `sudo apt-get install python3-pil python3-pil.imagetk`
   - Para instalar pygame: 
     `python3 -m pip install pygame`
     `python -m venv venv`

***
### Contenido 
Al descargar este proyecto se tendrá acceso a los siguientes archivos: 
  - `Launcher.sh`
  - `terminal.py`
  - `Audio.mp3`
  - `STIV.gif`

***
### Para ejecutar
Escribe el siguiente comando en tu terminal Shell: 

`Bash launcher.sh`
    
***
### Instrucciones de uso
Dentro de la terminal se puede observar una interfaz gráfica que cuenta de 3 partes que funcionan por medio de comandos específicos.  

#### Comando Instrucciones
Si dentro de la terminal hay alguna duda sobre los comandos especiales o el funcionamiento de la terminal se puede llamar al comando `Instrucciones` para mostrar en pantalla
un resumen de estas instrucciones. 

#### Comando Temporizador
En la esquina superior izquierda el estudiante tiene a su disposición un temporizador para establecer tiempos de estudio. 
Para poder utilizarlo se debe de escribir el comando `temporizador segundos` en segundos se debe de colocar la cantidad de segundos que se desean utilizar. 
Si se desea detener el temporizador antes de que el tiempo se acabe se puede utilizar el comando `parar`.

Cuando el temporizador se detiene se puede escuchar la Marcha Imperial de Star Wars como alerta de que es momento de un descanso. 

#### To Do List
Este es un cuadro de texto en el cual se pueden escribir todas las tareas o actividades importantes que el estudiante tenga que realizar. 
Para poder utilizarlo únicamente se debe de colocar en el recuadro la tarea que se desee anotar y presionar en el botón para actualizar la lista. 

#### Comando Clear
Si se desea limpiar la pantalla de la terminal se puede llamar al comando `clear` y se actualizará una pantalla nueva sin comandos. 

#### Comandos de la Shell 
En esta terminal se pueden utilizar los comandos comúnes de la terminal de linux como Top, mkdir, touch, etc. 

***
### Referencias
Para este proyecto se han utilizado fuentes, como audio o vídeos externos de las siguientes páginas: 

[Marcha imperial, Star Wars](https://www.youtube.com/watch?v=yXIQHWzkXn4)

[Gif Star Wars](https://giphy.com/gifs/3o7qDIDCrq16W9d78c)

