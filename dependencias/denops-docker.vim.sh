#!/bin/bash

echo ""
echo ""
echo "==================================================================================================="
echo "=         _                                      _            _                   _               ="
echo "=      __| | ___ _ __   ___  _ __  ___        __| | ___   ___| | _____ _ ____   _(_ _ __ ___      ="
echo "=     / _' |/ _ \ '_ \ / _ \| '_ \/ __|_____ / _' |/ _ \ / __| |/ / _ \ '__\ \ / / | '_ ' _ \     ="
echo "=    | (_| |  __/ | | | (_) | |_) \__ \_____| (_| | (_) | (__|   <  __/ | _ \ V /| | | | | | |    ="
echo "=     \__,_|\___|_| |_|\___/| .__/|___/      \__,_|\___/ \___|_|\_\___|_|(_) \_/ |_|_| |_| |_|    ="
echo "=                           |_|                                                                   ="
echo "==================================================================================================="
echo ""
echo ""

# deno
programa=deno
comprobar=$(which $programa)

if [ $comprobar ]; then
	echo "$programa		----> Instalado en $comprobar"
else
	curl -fsSL https://deno.land/install.sh | sh

	echo "---->	Creando enlace simbólico"
	sudo ln -s ~/.deno/bin/deno /usr/local/bin/deno
fi

# docker
programa=docker
comprobar=$(which $programa)

if [ $comprobar ]; then
	echo "$programa		----> Instalado en $comprobar"
else
	echo " "
	echo "Se abrirá el manual de Instalación de docker en el navegador"
	echo " "

	echo "Se necesita instalar $programa"

	source ~/.config/nvim/dependencias/funciones.sh
	
	url='https://docs.docker.com/engine/install/ubuntu/'
	abrirEnNavegador
fi
