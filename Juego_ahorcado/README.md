# Juego Ahorcado

*Juego de ahorcado para terminal Bash*

Para ejecutar:

`Bash Juego.sh`

## Indice
- [Iniciar Nueva Partida](#iniciar-nueva-partida)
- [Crear ahorcado](#crear-ahorcado)
- [Mas detalles](#mas-detalles)



En este script es un juego de hangman o el ahorcado que tiene un menu donde te permite tomar diferentes las siguientes opciones:

[1. Iniciar Nueva Partida](#iniciar-nueva-partida)
[2. Crear ahorcado](#crear-ahorcado)
3. Salir


### Iniciar Nueva Partida

Cuando Inicias una nueva partida se va a crear un directorio llamado `Ahorcado` donde habra otra carpeta llamado `Niveles/`. En `Niveles/` estan los demas niveles que serian la dificultad del juego, ya despues comienzas a jugar el hangman en el nivel que elijas. Cuando termines, volvera al menu principal.

### Crear ahorcado

Cuando le das a `Crear ahorcado`, te preguntara por una palabra secreta y luego iniciara el juego de hangman


### Mas detalles

En este repositorio tenemos tres ficheros que son `Crear.sh`, `Inicio.sh`, `Juego.sh`.

- **`Crear.sh`**: Este script se encarga de crear el juego de hangman o el ahorcado para cuando tu vayas a crear el ahorcado en el menu principal.

- **`Inicio.sh`**: Este script se encarga de crear las carpetas de los niveles y el juego de hangman en cada niveles.

- **`Juego.sh`**: Este script se encarga de ejecutar todo, es el main del programa donde esta el menu principal.
