#!/bin/bash
#script by th3cross, es mi primer scrpit, gracias por tus sugerencias
#Colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"


# encender o apagar
echo -e "\n${greenColour}hola, escriba ${endColour}${purpleColour}encender${endColour}${greenColour} para encender${endColour}${redColour} o${endColour}${purpleColour} apagar${endColour}${greenColour} para apagar el, bluetooth: ${endColour}"
read bluetooth

if [ "$bluetooth" = "apagar" ]; then
  echo -e 'power off\nquit' |
    bluetoothctl 
      echo -e "\n${grayColour}bluetooth apagado.${endColour}"
elif [ "$bluetooth" = "encender" ]; then
  echo -e 'power on\nquit' | 
    bluetoothctl 
      echo -e "\n${blueColour}bluetooth encendido.${endColour}"

else
  echo -e "\n${redColour}entrada no valida favor lea bien${endColour}"

fi
echo -e "\n${yellowColour}favor esperar 5 segundo para que el programa cierre de manera automatica...${endColour}"
sleep 5
