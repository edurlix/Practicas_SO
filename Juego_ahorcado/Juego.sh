#!/bin/bash
nombre=""
edad=""
pais=""
echo "                                             AHORCADO                                                     "
echo "----------------------------------------------------------------------------------------------------------"
echo "                                               _______"
echo "                                              |/   |  "
echo "                                              |   O   "
echo "                                              |  /|\  "
echo "                                              |  / \  "
echo "                                              |       "
echo "                                              |_______"
echo -n "Introduce tu nombre de usuario: "
read nombre
echo -n "Introduce tu edad: "
read edad
echo -n "Introduce tu país: "
read pais
clear

while true;
do
echo "Bienvenid@" $nombre
echo -e "Selecciona una opción para comenzar\n\n"
echo "                                      Menú                                        "
echo "=================================================================================="
opciones=("Iniciar Nueva Partida" "Crear ahorcado" "Salir")

select opt in "${opciones[@]}"

do
case $opt in
    "Iniciar Nueva Partida")
        if [ -e "$(pwd)/Ahorcado/" ]; then
			rm -rf "Ahorcado/"
            source Inicio.sh
            
        else
			source Inicio.sh
		fi
        
        while true;
        do
        clear
        echo "Selecciona un nivel para jugar"
        niveles=("Nivel 1" "Nivel 2" "Nivel 3" "Nivel 4" "Nivel 5" "Salir")
            select niv in "${niveles[@]}"
            do
            case $niv in
                "Nivel 1")
                    clear
                    echo "Iniciando Nivel 1"
                    cd "$(pwd)/Nivel 1"
                    source Nivel_1.sh
                    break 3
                ;;
                "Nivel 2")
                    clear
                    echo "Iniciando Nivel 2"
                    cd "$(pwd)/Nivel 2"
                    source Nivel_2.sh
                    break 3
                ;;
                "Nivel 3")
                    clear
                    echo "Iniciando Nivel 3"
                    cd "$(pwd)/Nivel 3"
                    source Nivel_3.sh
                    break 3
                ;;
                "Nivel 4")
                    clear
                    echo "Iniciando Nivel 4"
                    cd "$(pwd)/Nivel 4"
                    source Nivel_4.sh
                    break 3
                ;;
                "Nivel 5")
                    clear
                    echo "Iniciando Nivel 5"
                    cd "$(pwd)/Nivel 5"
                    source Nivel_5.sh
                    break 3
                ;;
                "Salir")
                    exit
                ;;
                *) 
                    echo "Opcion no válida"
            esac
            done
        done
        ;;
    "Crear ahorcado")
        if [[ $PWD =~ /Niveles$ ]]; then
            cd ../..
            source Crear.sh
            break
        else
            source Crear.sh
            break
        fi
        
    ;;
    "Salir")
        exit
    ;;
    *)
        echo "opción invalida"
        ;;
esac
done
done