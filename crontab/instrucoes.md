# Ponto extra Crontab
Para executar o script abra o terminal no diretório atual e execute:
```
$ chmod +x *
```
O comando acima irá criar um o executável de todos os arquivos .sh no diretório atual. Em seguida digite o seguinte comando:
```
$ ./criar_cronTab.sh
```
Certifique-se de que o cronTab foi criado, para isso basta executar:
```
$ crontab -l
```
Agora acompanhe o arquivo de logs a cada 5 minutos e veja as atualizações. Caso queira tirar a rotina do cronTab da sua máquina digite:
```
$ crontab -r
```
Dessa forma o script não será mais executado.
