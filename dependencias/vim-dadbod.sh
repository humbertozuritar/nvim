#!/bin/bash

echo ""
echo ""
echo "======================================================================="
echo "=           _                     _           _ _               _     ="
echo "=    __   _(_)_ __ ___         __| | __ _  __| | |__   ___   __| |    ="
echo "=    \ \ / / | '_ ' _ \ _____ / _' |/ _' |/ _' | '_ \ / _ \ / _' |    ="
echo "=     \ V /| | | | | | |_____| (_| | (_| | (_| | |_) | (_) | (_| |    ="
echo "=      \_/ |_|_| |_| |_|      \__,_|\__,_|\__,_|_.__/ \___/ \__,_|    ="
echo "=                                                                     ="
echo "======================================================================="
echo ""
echo ""

seleccionarCliente(){
	opcion=$(echo -e "Oracle\nMySQL\nMariaDB\nSQLServer" | fzf)
	
	case $opcion in
		"Oracle")
			echo "--------	Cliente para Oracle DB	--------"
		;;
		"MySQL")
			echo "--------	Cliente para MySQL	--------"
		;;
		"MariaDB")
			echo "--------	Cliente para MariaDB	--------"
		;;
		"SQLServer")
			echo "--------	Cliente para SQLServer	--------"

			SQLServerDistribucionesDisponibles
		;;
		"*")
			echo "-->	Cancelado"
		;;
	esac
}

SQLServerDistribucionesDisponibles(){
	distro=$(lsb_release -is)

	case $distro in
		"Ubuntu")
			~/.config/nvim/dependencias/vim-dadbod/SQLserverClient4Ubuntu.sh
		;;
		"Debian")
			~/.config/nvim/dependencias/vim-dadbod/SQLserverClient4Debian.sh
		;;
		"Centos")
		;;
		"*")
		;;
	esac
}

seleccionarCliente
