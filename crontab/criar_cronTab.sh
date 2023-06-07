#!/bin/bash

# Adicione as configurações do crontab
caminhoSH=$(realpath "scriptCron.sh")
caminhoLOG=$(realpath "crontab.log")
echo $caminhoSH
echo $caminhoLOG
echo "*/5 * * * * $caminhoSH >> $caminhoLOG " > cron_temp.txt

# Carregue o arquivo de crontab
crontab cron_temp.txt

# Remova o arquivo temporário
rm cron_temp.txt

echo "Crontab criado com sucesso!"
