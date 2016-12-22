#!/bin/bash

if [ -z $1 ] 
then
    echo "USO: ./otimizar_imagens.sh caminho";
    exit 1;
fi

for file in $(find $1 -type f -name "*.jpg")
do
        jpegoptim --strip-all -m75 -o $file
done


for file in $(find $1 -type f -name "*.png")
do
        zopflipng -y $file $file
done
