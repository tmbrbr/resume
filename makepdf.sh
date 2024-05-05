#!/bin/bash

docker run \
       -e INPUT_INPUT_PATH="./" \
       -e INPUT_OUTPUT_DIR="./" \
       -e INPUT_IMAGES_DIR="./assets/img" \
       -e INPUT_TEMPLATE="template.html" \
       -e INPUT_IMAGE_IMPORT="./assets/img" \
       -e INPUT_THEME="pdf.css" \
       -v ${PWD}:"/github/workspace" \
       ghcr.io/baileyjm02/markdown-to-pdf/markdown-to-pdf:latest

mv README.pdf thomas-barber.pdf
