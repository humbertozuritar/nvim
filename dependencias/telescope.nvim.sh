#!/bin/bash

echo ""
echo ""
echo "============================================================================="
echo "=     _       _                                             _               ="
echo "=    | |_ ___| | ___  ___  ___ ___  _ __   ___   _ ____   _(_)_ __ ___      ="
echo "=    | __/ _ \ |/ _ \/ __|/ __/ _ \| '_ \ / _ \ | '_ \ \ / / | '_ ' _ \     ="
echo "=    | ||  __/ |  __/\__ \ (_| (_) | |_) |  __/_| | | \ V /| | | | | | |    ="
echo "=     \__\___|_|\___||___/\___\___/| .__/ \___(_)_| |_|\_/ |_|_| |_| |_|    ="
echo "=                                  |_|                                      ="
echo "============================================================================="
echo ""
echo ""

source ~/.config/nvim/dependencias/funciones.sh

echo " "
echo "------------- Dependencias sugeridas -------------"
echo " "

programaNom=ripgrep
programaExec=rg
comprobarPrograma

echo " "
echo "------------- Dependencias opcionales -------------"
echo " "

programaNom=fd-find
programaExec=fdfind
comprobarPrograma
