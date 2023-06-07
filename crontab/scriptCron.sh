#!/bin/bash
echo "DATA e HORA: $(date +"%d/%m/%Y %H:%M:%S")"
echo "==============================================="
echo "Mensagem Aleatoria:"
#Captura o exato caminho em que o arquivo das frases está
caminho=$(realpath "frases.txt")
shuf -n 1 "$caminho"
echo "==============================================="
echo "STATUS DISCO RIGIDO"
df -h / | tail -n 1 | awk '{ print "Espaço livre(GB): " $4 " | Espaço ocupado(GB): " $3 }'
echo "==============================================="
echo "RAM"
free -h
echo "==============================================="
echo "Arquivos na pasta de dowload"
ls $HOME/Downloads
echo "==============================================="
echo "Quantidades"
echo "N° imagens: $(find "$HOME" -type f \( -iname "*.jpg" -o -iname "*.png" -o -iname "*.gif" \) | wc -l)"
echo "N° videos: $(find "$HOME" -type f \( -iname "*.mp4" -o -iname "*.avi" -o -iname "*.mkv" \) | wc -l)"
echo "N° musica: $(find "$HOME" -type f \( -iname "*.mp3" -o -iname "*.wav" -o -iname "*.flac" \) | wc -l)"

echo ""
echo "====================X=========================="



