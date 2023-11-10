#!/bin/bash

programaNom=''
programaExec=''
comprobarPrograma(){
	comprobar=$(which $programaExec)
	
	if [ $comprobar ]; then
		echo "$programaNom		----> Instalado en $comprobar"
	else
		echo "Se necesita instalar $programaNom"
		sudo apt install $programaNom
	fi
}

url=''
abrirEnNavegador(){
	navegador=$(echo -e "Firefox\nLibreWolf\nChrome" | fzf)
	case $navegador in
		"Firefox")
			firefox --new-tab $url
		;;
		"LibreWolf")
			if [ $(which librewolf)]; then
				librewolf --new-tab $url
			else
				~/Applications/$(ls ~/Applications | grep LibreWolf) --new-tab $url
			fi
		;;
		"Chrome")
			chrome --new-tab $url
		;;
		*)
			echo "Opción inválida"
		;;
	esac
}
