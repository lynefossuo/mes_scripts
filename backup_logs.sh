
#!/bin/bash

REP_SYS="/var/log/*"
REP_DESTINATION="/backup/logs/"
FILENAME="backup_$(date +%Y-%m-%d_%H-%M-%S).tar.gz"


tar -czvf $FILENAME $REP_SYS
echo "Sauvegarde des logs terminée:"$FILENAME
mv $FILENAME $REP_DESTINATION


mkdir -p $REP_DESTINATION

#utilisation de la boucle for
for f in $REP_SYS; do
	echo $f
done 



