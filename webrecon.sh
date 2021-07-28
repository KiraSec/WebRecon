#!/bin/bash

figlet Web Recon
echo "   }---{+} Coded By Kira Security {+}---{"
echo " }-----{+}      28 Jul 2021       {+}-----{"
echo "   }---{+}    Albania Security    {+}---{"
echo

echo -n "Digite seu ALVO: " && read site

for palavra in $(cat lista2.txt)
do
resposta=$(curl -s -H "User-Agent: KiraTool" -o /dev/null -w "%{http_code}" http://$site/$palavra/)
if [ $resposta == 200 ]
then
echo "Diretório encontrado => $site/$palavra"
fi
done
