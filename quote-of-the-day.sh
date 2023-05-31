#!/bin/bash

cyan=$'\e[36m'
magenta=$'\e[35m'
reset=$'\e[0m'

curl -s https://www.brainyquote.com/link/quotebr.js \
    | sed -n 3,4p \
    | sed -e '1s/.*("\(.*\)<br>.*/"\1"/g' \
          -e '2s/.*>\(.*\)<.*/\t\t--\1/g' \
          -e "1s/.*/$cyan&$reset/" \
          -e "2s/.*/$magenta&$reset/"
