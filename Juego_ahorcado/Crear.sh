#!/bin/bash
declare -a palabra=(  )
echo -n "Introduce la palabra secreta: "
read palabras
clear
echo "Iniciando partida"
for ((i=0; i<${#palabras}; i++)); do
    caracter="${palabras:$i:1}"
    palabra[$i]+="$caracter"
done

function imagenes () {
    case $oportunidades in
                    "7")
                        echo "  _______"
                        echo " |/   |  "
                        echo " |       "
                        echo " |       "
                        echo " |       "
                        echo " |       "
                        echo " |_______"
                        ;;
                    "6")
                        echo "  _______"
                        echo " |/   |  "
                        echo " |   O   "
                        echo " |       "
                        echo " |       "
                        echo " |       "
                        echo " |_______"
                        ;;
                    "5")
                        echo "  _______"
                        echo " |/   |  "
                        echo " |   O   "
                        echo " |   |   "
                        echo " |       "
                        echo " |       "
                        echo " |_______"
                        ;;
                    "4")
                        echo "  _______"
                        echo " |/   |  "
                        echo " |   O   "
                        echo " |  /|   "
                        echo " |       "
                        echo " |       "
                        echo " |_______"
                        ;;
                    "3")
                        echo "  _______"
                        echo " |/   |  "
                        echo " |   O   "
                        echo " |  /|\  "
                        echo " |       "
                        echo " |       "
                        echo " |_______"
                        ;;
                    "2")
                        echo "  _______"
                        echo " |/   |  "
                        echo " |   O   "
                        echo " |  /|\  "
                        echo " |  /    "
                        echo " |       "
                        echo " |_______"
                        ;;
                    "1")
                        echo "  _______"
                        echo " |/   |  "
                        echo " |   O   "
                        echo " |  /|\  "
                        echo " |  / \  "
                        echo " |       "
                        echo " |_______"
                        ;;
                esac

}
function posicion () {
    array=("$@")
    busqueda=$1
    for ((i=0; i<${#palabra[@]}; i++))
    do
        if [ "${palabra[i]}" == "$busqueda" ]; then
            echo $i
            return
        fi 
    done
}

function ahorcado () {
    oportunidades=8
    longitud=${#palabra[@]}
    declare -a adivinado=()
    for ((i=0; i<longitud; i++))
        do
            adivinado[i]='_'
        done
    while [ $oportunidades -ge 1 ];
    do
        read -p "Ingresa una letra: " letra
        aciertos=false
            for ((i=0; i<longitud; i++));do
                if [ "${palabra[i]}" == "$letra" ]; then
                    echo "Letra correcta"
                    adivinado[i]=$letra
                    aciertos=true
                fi
            done
            if ! $aciertos; then
                clear
                echo "Te has equivocado"
                ((oportunidades--))
                imagenes
            fi

             echo ${adivinado[@]}

            if [[ "${adivinado[*]}" == "${palabra[*]}" ]]; then
                echo "Felicidades! has adivinado la palabra"
                break
            fi

            if [ $oportunidades == 0 ]; then
                clear
                echo -e "Has perdido\n"
                break
            fi
    done
}

ahorcado "${palabra[@]}"