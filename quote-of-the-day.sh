#!/bin/sh

cyan=$'\e[36m'
magenta=$'\e[35m'
reset=$'\e[0m'

wget -q http://www.brainyquote.com/link/quotebr.js -O - \
    | sed -n 3,4p \
    | sed -e "1s/.*(\"\(.*\)<br>.*/\"\1\"/g" \
          -e "2s/.*>\(.*\)<.*/\t\t--\1/g" \
          -e "1s/.*/$cyan&$reset/" \
          -e "2s/.*/$magenta&$reset/"
