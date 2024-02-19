#!/bin/bash
mkdir "Ahorcado"
cd "Ahorcado"
mkdir "Niveles"
cd "Niveles"
mkdir "Nivel 1"
cat << 'EOF' >> Nivel_1.sh
#!/bin/bash
# Nivel 1
declare -a palabra=( 'l' 'i' 'n' 'u' 'x' )
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
                echo "Felicidades! Has adivinado la palabra"
                cd ..
                break
            fi

            if [ $oportunidades == 0 ]; then
                clear
                echo -e "Has perdido\n"
                cd ..
                break
            fi
    done
}

ahorcado "${palabra[@]}"
EOF
mv Nivel_1.sh "Nivel 1/"


mkdir "Nivel 2"
touch Nivel_2.sh
cat << 'EOF' >> Nivel_2.sh
#!/bin/bash
# Nivel 2
declare -a palabra=( 'p' 'y' 't' 'h' 'o' 'n' )
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
                cd ..
                break
            fi

            if [ $oportunidades == 0 ]; then
                clear
                echo -e "Has perdido\n"
                cd ..
                break
            fi
    done
}

ahorcado "${palabra[@]}"
EOF
mv Nivel_2.sh "Nivel 2/"


mkdir "Nivel 3"
touch Nivel_3.sh
cat << 'EOF' >> Nivel_3.sh
#!/bin/bash
# Nivel 3
declare -a palabra=( 'c' 'i' 'b' 'e' 'r' 's' 'e' 'g' 'u' 'r' 'i' 'd' 'a' 'd')
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
                cd ..
                break
            fi

            if [ $oportunidades == 0 ]; then
                clear
                echo -e "Has perdido\n"
                cd ..
                break
            fi
    done
}

ahorcado "${palabra[@]}"
EOF
mv Nivel_3.sh "Nivel 3/"


mkdir "Nivel 4"
touch Nivel_4.sh
cat << 'EOF' >> Nivel_4.sh
#!/bin/bash
# Nivel 2
declare -a palabra=( 'p' 'y' 't' 'h' 'o' 'n' )
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
                cd ..
                break
            fi

            if [ $oportunidades == 0 ]; then
                clear
                echo -e "Has perdido\n"
                cd ..
                break
            fi
    done
}

ahorcado "${palabra[@]}"
EOF
mv Nivel_4.sh "Nivel 4/"


mkdir "Nivel 5"
touch Nivel_5.sh
cat << 'EOF' >> Nivel_5.sh
#!/bin/bash
# Nivel 5
declare -a palabra=( 'm' 'a' 'c' 'h' 'i' 'n' 'e' 'l' 'e' 'a' 'r' 'n' 'i' 'n' 'g' )
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
                cd ..
                break
            fi

            if [ $oportunidades == 0 ]; then
                clear
                echo -e "Has perdido\n"
                cd ..
                break
            fi
    done
}

ahorcado "${palabra[@]}"
EOF
mv Nivel_5.sh "Nivel 5/"