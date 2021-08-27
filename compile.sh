#!/bin/bash

##
SCRIPT_NAME="$0"

fail() {

     if [ -z "$1" ]
     then
        echo "$SCRIPT_NAME failed"
     else
        echo "$@"
     fi

     exit 1
}

set -e  # enable exit on failure of any command executed by the script
trap fail ERR
set -o pipefail #  If set, the return value of a pipeline is the value of the last (right‐
#  most) command to exit with a non-zero status, or zero if all commands
#  in the pipeline exit successfully. (see: man bash)
##


for i in main.tex; do
    
    pdflatex --interaction nonstopmode $i &> /dev/null || true

    pdflatex --interaction nonstopmode $i &> /dev/null && \
        pdflatex $i &> /dev/null && \
        echo PDF compiled

done
