#!/bin/bash

echo ""
echo ""
echo "=============================================================="
echo "=         _                                  _               ="
echo "=      __| | ___ _ __   ___  _ __  _____   _(_)_ __ ___      ="
echo "=     / _' |/ _ \ '_ \ / _ \| '_ \/ __\ \ / / | '_ ' _ \     ="
echo "=    | (_| |  __/ | | | (_) | |_) \__ \  V /| | | | | | |    ="
echo "=     \__,_|\___|_| |_|\___/| .__/|___(_)_/ |_|_| |_| |_|    ="
echo "=                           |_|                              ="
echo "=============================================================="
echo ""
echo ""

echo "----	GitHub de Deno: https://github.com/denoland/deno	----"
echo " "

programa=deno
comprobar=$(which $programa)

if [ $comprobar ]; then
	echo "$programa		----> Instalado en $comprobar"
else
	curl -fsSL https://deno.land/install.sh | sh

	echo "---->	Creando enlace simbólico"
	sudo ln -s ~/.deno/bin/deno /usr/local/bin/deno
fi
