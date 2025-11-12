#!/bin/bash

UPGRADE_CMD="apt upgrade -y"
AUTOREMOVE_CMD="apt autoremove -y"
UPDATE_CMD="apt update"
OUTPUT=$(apt update > update_log.txt 2> update_error.log)

EXIT_CODE=$(echo $?)
echo $EXIT_CODE
echo "Mise à jour de la liste des paquets:"| $UPDATE_CMD
echo "MISE A JOUR TOUS LES PAQUETS:"|$UPGRADE_CMD
echo "Nettoyer ceux inutiles:" | $AUTOREMOVE_CMD

if [ $EXIT_CODE -eq "0" ]; then
	
	echo "Erreur pendant le apt update"

fi;

#echo $OUTPUT(j'ai pu lire l_output) 



echo $OUTPUT2
