#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Inget argument angivet. Vänligen ange namnet på COBOL-filen."
  exit 1
fi

filename=$1
extension="${filename##*.}"
filename_no_ext="${filename%.*}"
output_filename="$filename_no_ext.ex"

cobc -x -o "$output_filename" "$filename"

if [ $? -eq 0 ]; then
  echo "Kompileringen lyckades. Den kompilerade filen heter $output_filename."
else
  echo "Kompileringen misslyckades."
fi
