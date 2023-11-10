#!/bin/bash

echo ""
echo ""
echo "===================================================================================================================="
echo "=                       _                                         _       _                           _            ="
echo "=  _ __  _ __ _____   _(_) _____      __     _ __ ___   __ _ _ __| | ____|   _____      ___ __ __   _(_)_ __ ___   ="
echo "= | '_ \| '__/ _ \ \ / / |/ _ \ \ /\ / /____| '_ ' _ \ / _' | '__| |/ / _'  / _ \ \ /\ / / '_ \  \ / / | '_ ' _ \  ="
echo "= | |_) | | |  __/\ V /| |  __/\ V  V /_____| | | | | | (_| | |  |   < (_| | (_) \ V  V /| | | |\ V /| | | | | | | ="
echo "= | .__/|_|  \___| \_/ |_|\___| \_/\_/      |_| |_| |_|\__,_|_|  |_|\_\__,_ \___/ \_/\_/ |_| |_(_)_/ |_|_| |_| |_| ="
echo "= |_|                                                                                                              ="
echo "===================================================================================================================="
echo ""
echo ""

# mdr
programa=mdr
comprobar=$(which $programa)

if [ $comprobar ]; then
	echo "$programa		----> Instalado en $comprobar"
else
	echo "Se necesita instalar $programa"

	wget 'https://github.com/MichaelMure/mdr/releases/download/v0.2.5/mdr_linux_amd64'
	sudo mv mdr_linux_amd64 /usr/local/bin/mdr
	sudo chmod 777 /usr/local/bin/mdr
fi
