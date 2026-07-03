#!/usr/bin/env bash

set -uo pipefail

echo "Buscando imagens PNG no diretório atual..."
echo "Diretório: $(pwd)"
echo "----------------------------------------"

# Aceita .png, .PNG, .PnG, etc.
shopt -s nocaseglob nullglob

# Verifica ImageMagick
if command -v magick >/dev/null 2>&1; then
    IM_CMD="magick"
elif command -v convert >/dev/null 2>&1; then
    IM_CMD="convert"
else
    echo "Erro: ImageMagick não encontrado."
    echo "Instale com:"
    echo "sudo apt install imagemagick"
    exit 1
fi

sucessos=0
erros=0

arquivos=( *.png )

if (( ${#arquivos[@]} == 0 )); then
    echo "Nenhum arquivo PNG encontrado."
    exit 0
fi

for arquivo_png in "${arquivos[@]}"; do
    arquivo_jpg="${arquivo_png%.*}.jpg"

    echo -n "Convertendo: $arquivo_png ... "

    if $IM_CMD "$arquivo_png" \
        -background white \
        -flatten \
        -quality 90 \
        "$arquivo_jpg" >/dev/null 2>&1
    then
        echo "OK"
        ((sucessos+=1))
    else
        echo "ERRO"
        ((erros+=1))
    fi
done

shopt -u nocaseglob nullglob

echo "----------------------------------------"
echo "Processo concluído!"
echo "Total convertido: $sucessos | Erros: $erros"
