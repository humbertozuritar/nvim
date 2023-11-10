#!/bin/bash

echo ""
echo ""
echo "====================================================================================================================="
echo "=        _             _                   _                            _                              _            ="
echo "=  _ __ | | __ _ _ __ | |_ _   _ _ __ ___ | |      _ __  _ __ _____   _(_) _____      _____ _ ____   _(_)_ __ ___   ="
echo "= | '_ \| |/ _' | '_ \| __| | | | '_ ' _ \| |_____| '_ \| '__/ _ \ \ / / |/ _ \ \ /\ / / _ \ '__\ \ / / | '_ ' _ \  ="
echo "= | |_) | | (_| | | | | |_| |_| | | | | | | |_____| |_) | | |  __/\ V /| |  __ \ V  V /  __/ | _ \ V /| | | | | | | ="
echo "= | .__/|_|\__,_|_| |_|\__|\__,_|_| |_| |_|_|     | .__/|_|  \___| \_/ |_|\___  \_/\_/ \___|_|(_) \_/ |_|_| |_| |_| ="
echo "= |_|                                             |_|                                                               ="
echo "====================================================================================================================="
echo ""
echo ""

source ~/.config/nvim/dependencias/funciones.sh

programaNom=graphviz
programaExec=graphviz
comprobarPrograma

# java
programa=java
comprobar=$(which $programa)

if [ $comprobar ]; then
	echo "$programa		----> Instalado en $comprobar"
else
	echo "Se necesita instalar $programa"

	url='https://javahelps.com/install-oracle-jdk-8-on-linux'
	abrirEnNavegador
fi
