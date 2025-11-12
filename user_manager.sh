#!/bin/bash



menu(){
echo "=============================="
echo "=============================="
echo "Voici vos trois options"
echo "a) ajouter un utilisateur avec :-a utilisateur"
echo "b) supprimer un utilisateur avec: -d utilisateur"
echo "c) lister les utilisateurs avec: -l"
echo "=============================="
echo "=============================="
}

if [ $? -eq 0 ]; then

	menu

fi


while getopts ":a:d:l:" option; do

	case $option in 

	 a)

		user=$OPTARG	 
		echo "ajouter un utilisateur :" $user
		;;

	 b)

		user=$OPTARG
		echo "supprimer un utilisateur :" $user
		;;

         c)

		user=$OPTARG
		echo "listerles utilisateurs :" $user
		;;

	esac
done

