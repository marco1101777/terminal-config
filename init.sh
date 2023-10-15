#!/bin/bash

echo -ne "\tHola $USER  :D " 
#sleep 2 ; 
echo -e "\r\tInstalando algunos paquetes necesarios para el entorno de linux :D" 
#sleep 2 ; 
clear ; 




#programas necesarios 
programs=(curl wget fim git) 

echo 
for program in "${programs[@]}"  ; do
    echo -en "\tInstalando $program" ;
    test -f  /bin/$program
    if [ "$(echo $?)" != "0" ] ; then 
        apt-get install $program -y > /dev/null 2>&1
    else  
        echo " -> [Listo]"
    fi ; 
done ;
echo 


#instalacion de nvim 
test -f /bin/nvim 
if [ "$(echo $?)" != "0" ] ; then 
    echo -e "\rInstalar nvim Y/N : " ; read ans 
    if [  "$(echo $ans)" == "Y" ] ;  then 
        curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
        chmod u+x nvim.appimage
        ./nvim.appimage --appimage-extract
        ./squashfs-root/AppRun --version
    fi ; 
fi ; 

# Agregar carpeta .config  

test -f ~/.config 
if [ "$(echo $?)" != "0" ] ; then 
    echo "Creando carpeta config..." ;  
    mkdir -p ~/.config/miconfig  
fi ;





