#!/bin/bash

echo 'Copie des fichiers'
cp hands-on/ios/62\ -\ Design/src/Prefix.pch ios/myexpenses/src/Prefix.pch
cp -R hands-on/ios/62\ -\ Design/src/style/ ios/myexpenses/src/style/
cp -R hands-on/ios/62\ -\ Design/src/utils/ ios/myexpenses/src/utils/
cp -R hands-on/ios/62\ -\ Design/src/controls/ ios/myexpenses/src/controls/
cp -R hands-on/ios/62\ -\ Design/src/application/ ios/myexpenses/src/application/
cp -R hands-on/ios/62\ -\ Design/src/controller/ ios/myexpenses/src/controller/
cp -R hands-on/ios/62\ -\ Design/src/cells/ ios/myexpenses/src/cells/
cp -R hands-on/ios/62\ -\ Design/src/delegate/ ios/myexpenses/src/delegate/
cp -R hands-on/ios/62\ -\ Design/resources/storyboard/ ios/myexpenses/resources/storyboard/
cp -R hands-on/ios/62\ -\ Design/resources/xib/ ios/myexpenses/resources/xib/
cp -R hands-on/ios/62\ -\ Design/resources/img/ ios/myexpenses/resources/img/

currentPath=$PWD
echo "Une nouvelle fenêtre va s'ouvrir. Merci d'y saisir la commande :\n\t sh ${currentPath}/hands-on/ios/62\ -\ Design/mdkshell.sh ${currentPath}\n\nAppuyer sur une touche pour continuer..."
mdk shell ios