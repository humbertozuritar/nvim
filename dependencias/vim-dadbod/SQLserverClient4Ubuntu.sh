#!/bin/bash

########################################################################################################################
#	 __  __ _                           __ _      ___  ____  ____   ____   _  _   _   _ _                 _            #
#	|  \/  (_) ___ _ __ ___  ___  ___  / _| |_   / _ \|  _ \| __ ) / ___| | || | | | | | |__  _   _ _ __ | |_ _   _    #
#	| |\/| | |/ __| '__/ _ \/ __|/ _ \| |_| __| | | | | | | |  _ \| |     | || |_| | | | '_ \| | | | '_ \| __| | | |   #
#	| |  | | | (__| | | (_) \__ \ (_) |  _| |_  | |_| | |_| | |_) | |___  |__   _| |_| | |_) | |_| | | | | |_| |_| |   #
#	|_|  |_|_|\___|_|  \___/|___/\___/|_|  \__|  \___/|____/|____/ \____|    |_|  \___/|_.__/ \__,_|_| |_|\__|\__,_|   #
#	                                                                                                                   #
########################################################################################################################
# ODBC:
# https://learn.microsoft.com/es-es/sql/connect/odbc/linux-mac/installing-the-microsoft-odbc-driver-for-sql-server?view=sql-server-ver16&tabs=alpine18-install%2Calpine17-install%2Cdebian8-install%2Credhat7-13-install%2Crhel7-offline

seleccionarMicrosoft(){
	microsoft=$(echo -e "ODBC18\nODBC17\nODBC13.1" | fzf)
	
	case $microsoft in
		"ODBC18")
			microsoftODBC18
		;;
		"ODBC17")
			microsoftODBC17
		;;
		"ODBC13.1")
			microsoftODBC13-1
		;;
	esac
}

microsoftODBC18(){
	if ! [[ "18.04 20.04 22.04" == *"$(lsb_release -rs)"* ]];
	then
	    echo "Microsoft ODBC 18 -->	Ubuntu $(lsb_release -rs) actualmente no es compatible.";
	    exit;
	fi
	
	sudo su
	curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
	curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/prod.list > /etc/apt/sources.list.d/mssql-release.list
	exit

	sudo apt-get update
	sudo ACCEPT_EULA=Y apt-get install -y msodbcsql18

	# Opcional: para bcp y sqlcmd
	sudo ACCEPT_EULA=Y apt-get install -y mssql-tools18
	echo 'export PATH="$PATH:/opt/mssql-tools18/bin"' >> ~/.bashrc
	source ~/.bashrc
	
	# Opcional: para encabezados de desarrollo unixodbc
	#sudo apt-get install -y unixodbc-dev
}

microsoftODBC17(){
	if ! [[ "16.04 18.04 20.04 22.04" == *"$(lsb_release -rs)"* ]];
	then
	    echo "Microsoft ODBC 17 -->	Ubuntu $(lsb_release -rs) actualmente no es compatible.";
	    exit;
	fi
	
	sudo su
	curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
	curl https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/prod.list > /etc/apt/sources.list.d/mssql-release.list
	exit

	sudo apt-get update
	sudo ACCEPT_EULA=Y apt-get install -y msodbcsql17
	
	# Opcional: para bcp y sqlcmd
	sudo ACCEPT_EULA=Y apt-get install -y mssql-tools
	echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
	source ~/.bashrc

	# Opcional: para encabezados de desarrollo unixodbc
	#sudo apt-get install -y unixodbc-dev
}

microsoftODBC13-1(){
	if ! [[ "16.04" == *"$(lsb_release -rs)"* ]];
	then
	    echo "Microsoft ODBC 13.1 -->	Ubuntu $(lsb_release -rs) no es compatible.";
	    exit;
	fi
	
	sudo su
	curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add -
	curl https://packages.microsoft.com/config/ubuntu/16.04/prod.list > /etc/apt/sources.list.d/mssql-release.list
	exit

	sudo apt-get update
	sudo ACCEPT_EULA=Y apt-get install msodbcsql

	# Opcional: para bcp y sqlcmd
	sudo ACCEPT_EULA=Y apt-get install mssql-tools
	echo 'export PATH="$PATH:/opt/mssql-tools/bin"' >> ~/.bashrc
	source ~/.bashrc

	# Opcional: para encabezados de desarrollo unixodbc
	#sudo apt-get install unixodbc-dev
}

# Ejecutar script
if [[ "Ubuntu" == *"$(lsb_release -is)"* ]];
then
	seleccionarMicrosoft
fi
