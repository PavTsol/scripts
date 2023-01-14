#!/bin/bash

echo "Enter the name of the markdown file: "
read file_name

echo "Enter the desired output format (pdf or docx): "
read output_format

if [ -f $file_name ]; then
  if [ $output_format == "pdf" ]; then
    pandoc $file_name -o $file_name.pdf
  elif [ $output_format == "docx" ]; then
    pandoc $file_name -o $file_name.docx
  else
    echo "Invalid output format. Please enter either pdf or docx."
  fi
else
  echo "File not found. Please enter a valid file name."
fi
