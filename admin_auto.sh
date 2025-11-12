
#!/bin/bash

UPDATE=update_system_modifié.sh
BACKUP=backup_logs.sh
NETWORK=network_diag.sh


echo "Choisissez le script à exécuter: "
echo "1)  mise à jour des paquets"
echo "2)  sauvegarde des paquets"
echo "3)  analyse du réseau"


read -p "Votre choix:" choice

case $choice in

	1)

	   	./$UPDATE ;;

	2)

		 ./$BACKUP ;;


	3)

		./$NETWORK ;;

esac
