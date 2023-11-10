#!/bin/bash

#####################################################################################################################
#	 __  __ _                           __ _      ___  ____  ____   ____   _  _   ____       _     _                #
#	|  \/  (_) ___ _ __ ___  ___  ___  / _| |_   / _ \|  _ \| __ ) / ___| | || | |  _ \  ___| |__ (_) __ _ _ __     #
#	| |\/| | |/ __| '__/ _ \/ __|/ _ \| |_| __| | | | | | | |  _ \| |     | || |_| | | |/ _ \ '_ \| |/ _` | '_ \    #
#	| |  | | | (__| | | (_) \__ \ (_) |  _| |_  | |_| | |_| | |_) | |___  |__   _| |_| |  __/ |_) | | (_| | | | |   #
#	|_|  |_|_|\___|_|  \___/|___/\___/|_|  \__|  \___/|____/|____/ \____|    |_| |____/ \___|_.__/|_|\__,_|_| |_|   #
#	                                                                                                                #
#####################################################################################################################
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

